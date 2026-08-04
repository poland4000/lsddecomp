/* func_8001E4A4 - BEST ATTEMPT (3 attempts) - NOT MATCHED
 *
 * REMAINING ~24 DIFFS:
 *  1. Loop-pass hoists the 0x34 check constant into the loop preheader
 *     (`ori s2,0x34` before the loop, allocated a callee-saved s-reg);
 *     orig materializes it in-body (`ori v0,0x34` in the beqz delay).
 *     Same move_movables hoist family as GetStaticSpawn's li hoist.
 *     Consequence: ours needs 4 s-regs (frame 0x30) vs orig's 3 (0x28),
 *     and the whole prologue/loop shifts.
 *  2. Tried: `s32 s1 = 4` variable (s3 in ours), direct `== 4`, `u8 t34`
 *     variable (5 s-regs, worse) - the hoist persists.
 *
 * The do-while + goto e518 + continue structure matches (the loop's
 * double back-edge layout). Blocked by the constant hoist.
 */
#include "common.h"

void func_8001E4A4(void *arg0, void *arg1) {
    s32 sp10;
    s32 sp14;
    sp10 = 0;
    do {
        BasicClass__func_1816c(arg1, &sp10, &sp14);
        if (sp10 != 0) {
            if ((*(s32 *)*(void **)sp10 & 0xF) == 4) {
                goto e518;
            }
        }
        if (sp14 != 0) {
            continue;
        }
        sp10 = 0;
    e518:
        if (sp10 != 0) {
            if (*(u8 *)*(void **)sp10 == 0x34) {
                (*(void(**)(void *, void *))((char *)*(void **)sp10 + 0x10))(sp10, arg0);
            }
        }
    } while (sp14 != 0);
}
