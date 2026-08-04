# LSD: Dream Emulator — Decompilation

A byte-identical decompilation of **LSD: Dream Emulator** (PlayStation, SLPS-01556, 1998).

The compiled binary matches the original release byte-for-byte:

```
SHA1: 76322eeade5ebb22dca57fdeac7d68c30f06308d
```

> Based on the decompilation scaffold from
> [FirecatFG/lsddecomp](https://github.com/FirecatFG/lsddecomp).

## Status

- **~74% of functions decompiled** (1066 of 1441)
- CI builds the binary from source and verifies the checksum on every push
- Build status: [![Build & Verify](https://github.com/poland4000/lsddecomp/actions/workflows/build-verify.yml/badge.svg)](https://github.com/poland4000/lsddecomp/actions/workflows/build-verify.yml)

## Module Status

The game code is split into modules (named after their original binary
address range). Each is decompiled independently; unmatched functions are
compiled from assembly until their C is byte-perfect.

| Module | Matched | Stubs | Total | % | What it does |
|---|---|---|---|---|---|
| **StageGrid** | 5 | 0 | 5 | 100% | Stage chunk grid lookup |
| **1677C** | 40 | 1 | 41 | 97.6% | Scene manager, actor allocation |
| **Entity** | 141 | 5 | 146 | 96.6% | The entity system: spawn/despawn, AI states, behavior scripts, player interaction |
| **4cd08** | 20 | 2 | 22 | 90.9% | Stream/load helpers |
| **171E0** | 35 | 4 | 39 | 89.7% | CD file base, string utilities |
| **DreamSys** | 102 | 23 | 125 | 81.6% | The dream engine: day cycle, link/warp transitions, dream spawn selection, flashbacks, mood system |
| **main** | 4 | 1 | 5 | 80.0% | Boot: memory manager init, scene manager, pads |
| **class_39e08** | 307 | 109 | 416 | 73.8% | Core game world: DreamScene/SceneObj, StageRenderer (chunk+tile streaming), DreamWorld (link/event logic), Spawner, Actor/ActorBase, TextPanel/TextSys (text engine), ListMenu/GridMenu, TitleScreen |
| **2C054** | 141 | 42 | 183 | 77.0% | Presentation layer: WorldEffect/AnimEffect, ModelObj, SpriteSet, texture/matrix math |
| **class_16334** | 10 | 3 | 13 | 76.9% | Pad/input handling |
| **D294** | 42 | 17 | 59 | 71.2% | SceneNode hierarchy |
| **55DD4** | 29 | 12 | 41 | 70.7% | class_65650: helper object system |
| **8220** | 39 | 30 | 69 | 56.5% | Memory manager (BMem alloc/free), BasicClass list ops |
| **179D8** | 151 | 126 | 277 | 54.5% | CD-ROM driver + SPU sound driver (Cd*/Snd*) |
| **TOTAL** | **1066** | **375** | **1441** | **74.0%** | |

## Quick Start

```bash
# Install dependencies (Ubuntu/Debian)
sudo apt-get install -y cpp python3

# Build the binary and verify the checksum
./ci_build.sh
```

The build requires **no host toolchain** — the PSYQ gcc 2.6.3 compiler and
mipsel binutils 2.42 are committed under `tools/ci/`. Only a C preprocessor
(`cpp`) and Python 3 (for maspsx) are needed, and GitHub Actions installs
those automatically.

## Build System

```
cpp → gcc263/cc1 (gcc 2.6.3) → maspsx.py → mipsel-linux-gnu-as → ld → objcopy
```

- **Compiler**: GCC 2.6.3 (PSYQ SDK), static i386 binary at `tools/ci/bin/cc1`
- **Assembler/Linker**: mipsel binutils 2.42 (`tools/ci/bin/`)
- **maspsx**: GNU-as → PSYQ/ASPSX translation layer (`tools/maspsx/`)
- **Flags**: `-mips1 -mcpu=3000 -O2 -G0 -funsigned-char`

## Project Structure

```
├── src/lsdde/     # Decompiled C sources (one file per module)
├── asm/lsdde/     # Assembly for not-yet-decompiled functions + data
│   └── nonmatchings/
├── include/       # Headers (incl. PsyQ SDK)
├── config/        # Symbol tables, linker script, checksum
├── near_misses/   # Decompilation work-in-progress: near-match C attempts
│                  # per module (structure correct, 1–8 instructions off)
├── tools/
│   ├── ci/        # Committed toolchain (gcc 2.6.3 + binutils 2.42)
│   └── maspsx/    # Assembly post-processor
├── ci_build.sh    # Self-contained build + verify
└── Makefile
```

## How It Works

The original binary was split into per-function assembly (`asm/lsdde/nonmatchings/`)
and data sections. Functions are progressively rewritten in C
(`src/lsdde/*.c`) and compiled with the original PSYQ toolchain. A function is
"matched" when its compiled output is byte-identical to the original assembly.

Unmatched functions are still compiled — from their assembly via the
`INCLUDE_ASM` macro — so the binary always links and can be verified against
the target checksum at any point in the process.

## Symbol Names

Function and data symbol names are **inferred** (the game's original symbols
were never leaked). Most names come from automated analysis of the assembly
with a curated rename table; confidence is noted per-symbol. They are best
effort and may be adjusted as the decompilation progresses.

## Credits

- **[FirecatFG](https://github.com/FirecatFG)** — original decompilation
  scaffold and initial work
- This project's contributors — decompilation of the game's modules
- The [decomp community](https://github.com/ethteck) tooling: maspsx,
  splat, m2c, asm-differ
