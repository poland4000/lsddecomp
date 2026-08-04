/* func_80066214 - BEST ATTEMPT (3 attempts) - NOT MATCHED
 *
 * REMAINING ~15 DIFFS:
 *  1. The `*(0x84) = 0` store placement: ours emits it right after the
 *     first chain's last load (before the 0x80 store); orig places it
 *     after the second chain's [lw v0,0x10(v0)].
 *  2. Registers for the 0x88 chain: ours uses a1 (lw a1,0x10(v0);
 *     addiu a1,a1,8; sw a1,0x88); orig uses v0.
 *
 * KEY INSIGHT: the 0x88 value is a POINTER + 8 (addiu, no deref) - the
 * final expression must be `(s32)((char *)... + 8)` not a load.
 * Also the compiler does NOT CSE the 0x5C/0x30/0x10 chain if the two
 * uses are written as FULL nested expressions (a shared `s32 *p`
 * variable gets CSE'd into a register, which also differs).
 */
#include "common.h"

void func_80066214(void *arg0, s32 arg1) {
    *((s32 *)((char *)arg0 + 0x7C)) = arg1;
    *((s32 *)((char *)arg0 + 0x80)) = *((s32 *)((char *)*((s32 *)((char *)*((s32 *)((char *)*((s32 *)((char *)*((s32 *)((char *)arg0 + 0x5C)) + 0x30)) + 0x10)) + arg1 * 4 + 8)) + 0x10)) + 4));
    *((s32 *)((char *)arg0 + 0x84)) = 0;
    *((s32 *)((char *)arg0 + 0x88)) = ((s32)((char *)*((s32 *)((char *)*((s32 *)((char *)*((s32 *)((char *)*((s32 *)((char *)arg0 + 0x5C)) + 0x30)) + 0x10)) + *((s32 *)((char *)arg0 + 0x7C)) * 4 + 8)) + 0x10)) + 8));
    (*(void(**)(void *, void *, s32))((char *)*(void **)arg0 + 0x134))(arg0, *((s32 *)((char *)arg0 + 0x88)), 0);
}
