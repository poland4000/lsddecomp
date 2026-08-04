import argparse
import re
import shutil
import subprocess
import sys

from dataclasses import dataclass
from typing import List
from pathlib import Path

from maspsx import MaspsxProcessor


@dataclass
class AspsxVersionConfig:
    div_uses_tge: bool = False
    nop_at_expansion: bool = False
    nop_mflo_mfhi: bool = True
    sltu_at: bool = True
    expand_li: bool = True
    gp_allow_offset: bool = False
    gp_allow_la: bool = False
    addiu_at: bool = False


def config_for_aspsx_version(aspsx_version_arg: str | None) -> AspsxVersionConfig:
    config = AspsxVersionConfig()

    if aspsx_version_arg is None:
        return config

    aspsx_version = tuple(int(x) for x in aspsx_version_arg.split("."))
    if (1, 10) < aspsx_version < (2, 10):
        config.div_uses_tge = True
    if aspsx_version < (2, 30):
        config.nop_at_expansion = True
        config.nop_mflo_mfhi = False
    if aspsx_version >= (2, 10):
        config.addiu_at = True
    if aspsx_version >= (2, 50):
        config.expand_li = False
    if aspsx_version >= (2, 60):
        config.sltu_at = False
    if aspsx_version >= (2, 70):
        config.gp_allow_offset = True
    if aspsx_version >= (2, 80):
        config.gp_allow_la = True

    return config


def _strip_extern_symbols(lines: list, extern_set: set) -> list:
    """Remove .comm directives and .sbss/.bss section label+space definitions
    for symbols in extern_set, so the linker resolves them externally."""
    res = []
    # Track if we're in a .sbss or .bss section that becomes empty
    in_sbss = False
    section_has_content = False
    section_start_idx = -1

    for line in lines:
        s = line.strip()

        # Detect .section .sbss / .section .bss
        if s.startswith(".section .sbss") or s.startswith(".section .bss"):
            in_sbss = True
            section_has_content = False
            section_start_idx = len(res)
            res.append(line)
            continue

        if in_sbss:
            # Check if this is a label for an extern symbol: "symbol:" or "symbol: "
            label_match = re.match(r"^([A-Za-z_][A-Za-z0-9_]*):\s*$", s)
            if label_match and label_match.group(1) in extern_set:
                # Skip this label AND the following .space/.zero line
                continue
            # Check for .space/.zero/.skip following a skipped label
            if s.startswith(".space") or s.startswith(".zero") or s.startswith(".skip"):
                # If previous output line was removed (extern label), skip this too
                # Heuristic: in sbss, .space always follows a label
                if not section_has_content:
                    continue
            if s.startswith(".section") or s.startswith(".text") or s.startswith(".data"):
                # Leaving sbss section — if empty, remove the section header
                if not section_has_content and section_start_idx >= 0:
                    res = res[:section_start_idx]
                in_sbss = False
                section_start_idx = -1
                res.append(line)
                continue
            section_has_content = True
            res.append(line)
            continue

        # Filter .comm directives
        if s.startswith(".comm"):
            parts = s.split()
            if len(parts) >= 2:
                sym = parts[1].split(",")[0]
                if sym in extern_set:
                    continue

        res.append(line)

    # Handle case where sbss section is last and empty
    if in_sbss and not section_has_content and section_start_idx >= 0:
        res = res[:section_start_idx]

    return res


_LOAD_STORE_OPS = {
    "lw", "lwl", "lwr", "sw", "swl", "swr",
    "lh", "lhu", "sh",
    "lb", "lbu", "sb",
}


def _apply_gp_hints(lines: list, hints: dict) -> list:
    """Post-process maspsx output: convert symbol-only loads/stores of
    known small-data symbols to %gp_rel(symbol)($gp) syntax.

    Only affects instructions like 'sw $4,D_8008A818' (no register indirect)
    where the symbol is in the hints dict.
    """
    import re as _re
    res = []
    # Match: op<TAB>$reg,symbol   or   op<SP>$reg,symbol
    pat = _re.compile(
        r'^(\s*(?:lw|lwl|lwr|sw|swl|swr|lh|lhu|sh|lb|lbu|sb)\s+)'
        r'(\$[a-z0-9]+),\s*([A-Za-z_][A-Za-z0-9_]*)\s*$'
    )
    for line in lines:
        m = pat.match(line)
        if m and m.group(3) in hints:
            prefix, reg, sym = m.group(1), m.group(2), m.group(3)
            res.append(f"{prefix}{reg},%gp_rel({sym})($gp)")
        else:
            res.append(line)
    return res


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--aspsx-version", type=str)
    parser.add_argument("--run-assembler", action="store_true")
    parser.add_argument("--gnu-as-path", default="mipsel-linux-gnu-as")
    parser.add_argument("--dont-force-G0", action="store_true")
    parser.add_argument("--expand-div", action="store_true")
    parser.add_argument("--macro-inc", action="store_true")
    parser.add_argument("--dont-expand-li", action="store_true")
    parser.add_argument("--force-stdin", action="store_true")
    parser.add_argument("--use-comm-section", action="store_true")
    parser.add_argument("--use-comm-for-lcomm", action="store_true")
    parser.add_argument("--gp-symbols", type=str, default=None,
                        help="Path to a file of 'symbol,size' lines to treat as GP-relative (small data)")
    parser.add_argument("--extern-symbols", type=str, default=None,
                        help="Path to a file of symbol names (one per line) that should NOT get .comm (resolved externally)")
    # decomp.me debugging
    parser.add_argument("--print-output", action="store_true")
    parser.add_argument("--print-input", action="store_true")
    # deprecated
    parser.add_argument("--no-macro-inc", action="store_true")
    parser.add_argument("--expand-li", action="store_true")

    args, as_args = parser.parse_known_args()

    if args.no_macro_inc:
        sys.stderr.write(
            "MASPSX: --no-macro-inc is no longer required and will be removed in a future update\n"
        )

    if args.expand_li:
        sys.stderr.write(
            "MASPSX: --expand-li is enabled automatically if --aspsx-version is below 2.56\n"
        )

    read_from_file = sys.stdin.isatty()

    if not read_from_file:
        in_lines = sys.stdin.readlines()
        if len(in_lines) == 0:
            if args.force_stdin:
                sys.stderr.write("MASPSX: --force-stdin but no input from stdin!\n")
                sys.exit(1)
            else:
                sys.stderr.write(
                    "MASPSX: Warning, no input from stdin, will try to read from a file\n"
                )
                read_from_file = True

    if read_from_file:
        try:
            input_file = as_args.pop()
        except IndexError:
            sys.stderr.write("MASPSX: Error, no input file found!\n")
            sys.exit(1)

        with open(input_file, "r", encoding="utf") as f:
            in_lines = f.readlines()

    if args.print_input:
        sys.stderr.write("".join(in_lines))

    preamble = [
        '.include "macro.inc"' if args.macro_inc else "",
    ]

    sdata_limit = 0
    filtered_as_args: List[str] = []
    for arg in as_args:
        # Can we stop gcc from passing us this flag?
        if arg == "-KPIC":
            continue

        # GNU as does not support -mcpu flag
        if arg.startswith("-mcpu="):
            arg = arg.replace("-mcpu=", "-mtune=")

        elif arg.startswith("-G") and len(arg) > 2:
            sdata_limit = int(arg[2:])

        filtered_as_args.append(arg)

    version_config = config_for_aspsx_version(args.aspsx_version)

    if args.dont_expand_li and version_config.expand_li:
        version_config.expand_li = False

    maspsx_processor = MaspsxProcessor(
        in_lines,
        sdata_limit=sdata_limit,
        expand_div=args.expand_div,
        expand_li=version_config.expand_li,
        nop_at_expansion=version_config.nop_at_expansion,
        nop_mflo_mfhi=version_config.nop_mflo_mfhi,
        sltu_at=version_config.sltu_at,
        addiu_at=version_config.addiu_at,
        div_uses_tge=version_config.div_uses_tge,
        gp_allow_offset=version_config.gp_allow_offset,
        gp_allow_la=version_config.gp_allow_la,
        use_comm_section=args.use_comm_section,
        use_comm_for_lcomm=args.use_comm_for_lcomm,
    )
    try:
        out_lines = maspsx_processor.process_lines()
    except Exception as err:
        sys.stderr.write(f"MASPSX: An exception occurred: {err}\n")
        sys.exit(1)

    # Apply GP-symbol hints: mark known small-data symbols as sbss so
    # load/store instructions use %gp_rel addressing. This runs after
    # process_lines() and re-processes the output to apply gp_rel.
    if args.gp_symbols:
        import os as _os
        if _os.path.exists(args.gp_symbols):
            hints = {}
            with open(args.gp_symbols) as gf:
                for gline in gf:
                    gline = gline.strip()
                    if not gline or gline.startswith("#") or gline.startswith("/*"):
                        continue
                    if "," in gline:
                        sym, sz = gline.rsplit(",", 1)
                        try:
                            hints[sym.strip()] = int(sz.strip())
                        except ValueError:
                            pass
            if hints:
                out_lines = _apply_gp_hints(out_lines, hints)

    # Remove .comm directives and .sbss section definitions for symbols that
    # are resolved externally (prevents local sbss definitions that conflict
    # with linker-provided addresses and ordering).
    if args.extern_symbols:
        import os as _os
        if _os.path.exists(args.extern_symbols):
            extern_set = set()
            with open(args.extern_symbols) as ef:
                for eline in ef:
                    s = eline.strip()
                    if s and not s.startswith("#"):
                        extern_set.add(s)
            if extern_set:
                out_lines = _strip_extern_symbols(out_lines, extern_set)

    out_text = "\n".join(preamble + out_lines)

    # avoid "Warning: end of file not at end of a line; newline inserted"
    out_text += "\n"

    if args.print_output:
        sys.stderr.write(out_text)

    if args.run_assembler:
        gnu_as_path = Path(args.gnu_as_path)
        if not gnu_as_path.is_file() and not shutil.which(args.gnu_as_path):
            sys.stderr.write(f"MASPSX: {args.gnu_as_path} not found")
            sys.exit(1)

        cmd = [
            args.gnu_as_path,
            *filtered_as_args,
            "-",  # read from stdin
        ]
        if not args.dont_force_G0:
            cmd.insert(-1, "-G0")

        with subprocess.Popen(
            cmd, stdout=subprocess.PIPE, stdin=subprocess.PIPE, stderr=subprocess.PIPE
        ) as process:
            out_bytes = out_text.encode("utf")
            stdout, stderr = process.communicate(input=out_bytes)
            if len(stdout):
                sys.stdout.write(stdout.decode("utf"))
            if len(stderr):
                sys.stderr.write(stderr.decode("utf"))
            if process.returncode != 0:
                sys.exit(process.returncode)
    else:
        sys.stdout.write(out_text)


if __name__ == "__main__":
    main()
