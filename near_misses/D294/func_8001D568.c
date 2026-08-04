/* func_8001D568 - BEST ATTEMPT (3 attempts) - NOT MATCHED
 *
 * REMAINING 2 DIFFS - temp register choice for the 0x20 check:
 *  orig loads into a0 (`lw a0,0x20(s0); beqz a0,...`); ours into v0
 *  (`lw v0,0x20(s0); beqz v0,...`). The value is used only for the
 *  check. Tried: direct expression, s32 t variable - same result.
 *
 * Everything else matches: the nested `if (arg1 < 4) { if (arg1 >= 2)`
 * (the && form makes the compiler combine into an unsigned range check
 * addiu/sltiu - must use NESTED ifs), the func_8001F3A4 result check,
 * the vtable[0x8C]/[0x90] calls with the 56-byte sp10[14] local
 * (frame 0x58), the shared end.
 */
#include "common.h"

void func_8001D568(void *arg0, s32 arg1) {
    s32 sp10[14];
    if (arg1 < 4) {
        if (arg1 >= 2) {
            if (*(s32 *)((char *)arg0 + 0x20) != 0) {
                if (func_8001F3A4() != 0) {
                    (*(void(**)(void *, void *))((char *)*(void **)arg0 + 0x8C))(arg0, &sp10[0]);
                    (*(void(**)(void *, void *, s32))((char *)*(void **)arg0 + 0x90))(arg0, &sp10[0], arg1);
                }
            }
        }
    }
}
