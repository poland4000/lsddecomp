#!/usr/bin/env bash
# ci_build.sh — self-contained build for CI.
#
# Uses the committed toolchain under tools/ci/ (gcc 2.6.3 cc1 + mipsel
# binutils 2.42 + bundled .so files), so no host toolchain install is needed
# beyond a C preprocessor (cpp) and python3, which the runner apt-installs.
#
# Usage: bash ci_build.sh           # build, then sha1-compare
#        bash ci_build.sh build     # build only
#        bash ci_build.sh check     # build + sha1 compare (default)
set -u

# Resolve the script's directory (robust to symlinks and being called from
# anywhere — e.g. CI where working-directory may or may not be applied).
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" && pwd)"
cd "$SCRIPT_DIR" || exit 1
ROOT="$PWD"

# --- committed toolchain (tools/ci) ---------------------------------------
CI_BIN="$ROOT/tools/ci/bin"
CI_LIB="$ROOT/tools/ci/lib"

if [ ! -x "$CI_BIN/cc1" ] || [ ! -x "$CI_BIN/mipsel-linux-gnu-as" ]; then
    echo "=== ERROR: committed toolchain missing under tools/ci/ ===" >&2
    echo "    looked in: $CI_BIN" >&2
    echo "    ROOT=$ROOT" >&2
    ls -la "$ROOT/tools" 2>&1 | head -20 >&2
    exit 1
fi

export LD_LIBRARY_PATH="$CI_LIB${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"

# Preflight: cc1 is a static i386 binary. It needs no libraries, but the host
# kernel must support executing 32-bit ELF (CONFIG_IA32_EMULATION, default on
# Ubuntu). Fail clearly if it can't run.
if ! "$CI_BIN/cc1" -quiet </dev/null >/dev/null 2>&1; then
    echo "=== ERROR: cannot execute 32-bit cc1 ($CI_BIN/cc1) ===" >&2
    echo "    The runner kernel likely lacks IA32 emulation support." >&2
    exit 1
fi

MODE="${1:-check}"

# --- clean build ----------------------------------------------------------
rm -rf build

make dirs >/dev/null

# Build, pointing every tool at the committed toolchain. PSX_CC overrides
# the gcc-2.6.3 cc1; SYS_CPP uses the system preprocessor (cpp), which only
# preprocesses and does not affect output bytes.
make build \
    MIPS_TOOLS="$CI_BIN" \
    CROSS="$CI_BIN/mipsel-linux-gnu-" \
    PSX_CC="$CI_BIN/cc1" \
    SYS_CPP="cpp" \
    2>&1
MAKE_EXIT=$?
echo "=== make exit: ${MAKE_EXIT} ==="

if [ ! -f build/SLPS_015.56 ]; then
    echo "=== BUILD FAILED: no binary produced ===" >&2
    exit 1
fi
if [ "$MAKE_EXIT" -ne 0 ]; then
    echo "=== WARNING: make exited ${MAKE_EXIT} but binary exists; treating as failure ===" >&2
    exit 1
fi

echo "--- built binary ---"
sha1sum build/SLPS_015.56

if [ "$MODE" = "build" ]; then
    echo "=== BUILD OK (check skipped) ==="
    exit 0
fi

# --- sha1 compare against the committed target hash -----------------------
EXPECTED="76322eeade5ebb22dca57fdeac7d68c30f06308d"
echo "Expected: ${EXPECTED}"

ACTUAL=$(sha1sum build/SLPS_015.56 | awk '{print $1}')
if [ "$ACTUAL" = "$EXPECTED" ]; then
    echo "=== MATCH: byte-identical ==="
    exit 0
else
    echo "=== MISMATCH ==="
    echo "expected ${EXPECTED}"
    echo "actual   ${ACTUAL}"
    exit 2
fi
