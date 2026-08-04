/* func_8005A9CC - BEST ATTEMPT (1 attempt) - NOT MATCHED - BLOCKED BY DATA SHIFT
 *
 * The 10-byte unaligned copy idiom (S10Copy via movstrsi) works and most of
 * the structure matches, but the match is blocked by a BUILD-WIDE data shift:
 *
 * DATA-SHIFT ROOT CAUSE (pre-existing, affects ALL data-symbol references
 * from 0x80066870 onward):
 *   The build's .text is 0x10 SHORT. The region [0x4CD08-0x4CDE8] in the
 *   original = [IsDaySpecial tail 0x30] + [func_8004CD38 0x6C] +
 *   [func_8004CDA4 0x44] = 0xE0, but the build has 4cd08.c's func_8005C508
 *   (a wrong reconstruction of the IsDaySpecial tail, 0xD0) - 0x10 short.
 *   Additionally the splat TRUNCATED DreamSys's IsDaySpecial.s at the module
 *   boundary 0x4CD08 (the real function is 0x4CC74-0x4CD38, 0xC4, and crosses
 *   the boundary; the asm file has only the 0x1C-byte epilogue tail).
 *   => every symbol in the 57070.data region links 0x10 early, so references
 *   like D_80087EEC emit %lo(0x7EDC) instead of %lo(0x7EEC).
 *
 * Remaining diffs in this function (77 total, all cascading):
 *  1. D_80087EEC reference resolves to 0x80087EDC (data shift) - 4-byte diff.
 *  2. beqz delay: ours fills the 0x910-check beqz delay with the AA44 block's
 *     `addiu a0,s0,0x16C`, clobbering a0 -> forces `move a0,s0` before the
 *     jalr; orig has nop there and reuses the parm a0 -> whole first section
 *     shifts (t5/t6 register allocation also flips).
 *  3. Frame: ours 0x28 (local 4 bytes at 0x10), orig 0x30 (local is 16 bytes
 *     at 0x10 - the func_8001E6F8 output buffer) - offsets of saved regs
 *     differ (s0@0x18 vs 0x20 etc.).
 *  4. S10Copy chunking: ours [lwl;lwr;lwl;lwr;lb;lb] (align 1), orig
 *     [lwl;lwr;lwl;lwr;lh] (align 2) - need a struct with a s16 tail member.
 *
 * FIX PATH (not attempted): reconstruct IsDaySpecial (0x4CC74-0x4CD38),
 * func_8004CD38 (day-range check) and func_8004CDA4 (copy+call) to restore
 * the text size, then re-test this function.
 */
#include "common.h"

s32 func_8005A9CC(void *arg0, void *arg1) {
    s32 sp10;
    s32 idx;
    s32 v0;
    if (*(s32 *)((char *)arg0 + 0x44) != 0) {
        return 0;
    }
    v0 = *(s32 *)((char *)arg0 + 0x910);
    if (v0 != 0) {
        if (((s32(*)(void *))v0)(arg0) != 0) {
            *(s32 *)((char *)arg0 + 0x908) = 0;
            *(s32 *)((char *)arg0 + 0x910) = 0;
            if (*(s32 *)((char *)arg0 + 0xAC) != 4) {
                return 0;
            }
            *(s32 *)((char *)arg0 + 0x90C) = 0;
            (*(void(**)(void *))((char *)*(void **)arg0 + 0x188))(arg0);
        }
        return 0;
    }
    if (Test4StaircaseNodes((char *)arg0 + 0x16C, arg1, *(s32 *)((char *)arg0 + 0x164)) < 0) {
        return 0;
    }
    func_8001E6F8(arg0, &sp10);
    if (TestTunnelLinkByStage((char *)arg0 + 0x888, (char *)arg0 + 0x884, &sp10) == 0) {
        return 0;
    }
    if (*(s32 *)((char *)arg0 + 0xA8) == 0) {
        return 0;
    }
    *(S10Copy *)((char *)arg0 + 0x918) = *(S10Copy *)arg1;
    *(s32 *)((char *)arg0 + 0x908) = 1;
    *(s32 *)((char *)arg0 + 0x90C) = 1;
    idx = GetStageLinkByte();
    *(s32 *)((char *)arg0 + 0x914) = 0;
    v0 = D_80087EEC[idx];
    *(s32 *)((char *)arg0 + 0x910) = v0;
    (*(void(**)(void *, s32))((char *)*(void **)arg0 + 0x44))(arg0, 1);
    (*(void(**)(void *))((char *)arg0 + 0x910))(arg0);
    return 0;
}
