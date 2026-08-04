/* func_8001CEB4 - BEST ATTEMPT (4 attempts) - NOT MATCHED
 *
 * Attempts: (1) sp10/sp14/sp18 + wrong v1 cast (73 diffs - missing deref);
 * (2) sp10[4] + v1 deref fix (37); (3) s16 *d induction var (20 - best);
 * (4) d-first declaration order (22 - worse).
 *
 * REMAINING ~20 DIFFS (scheduler placements + regs):
 *  1. The loop's dst-induction: orig emits `addiu a3,a0,2` INSIDE the loop
 *     right after the lw (filling the lw->addu load-use delay); ours emits
 *     the d++ at the loop tail + a nop - making the loop (and function)
 *     4 bytes longer, which shifts the func_8001EC84 jal targets +4 and
 *     the final j target +4.
 *  2. The d-base: orig computes `addiu a3,v1,0x10` in the beqz s1 delay
 *     slot; ours computes it at the else-block start.
 *  3. The loaded pointer register: orig keeps it in v1; ours in t0.
 *
 * Everything else matches: the /360 magic division (0xB60B60B7), the
 * three func_8001EC84 calls with the sp10 stores in the jal delays, the
 * lhu/sh store block, the rounding loop (bgez/sra/sll/subu), the final
 * sw zero,0(v0).
 */
#include "common.h"

void func_8001CEB4(void *arg0, void *arg1, s16 *arg2) {
    s32 sp10[4];
    s32 *v1;
    sp10[0] = func_8001EC84(arg2);
    sp10[1] = func_8001EC84(arg2 + 2);
    sp10[2] = func_8001EC84(arg2 + 4);
    sp10[0] /= 360;
    sp10[1] /= 360;
    sp10[2] /= 360;
    v1 = *(s32 **)((char *)*(s32 *)((char *)arg0 + 0x14) + 0x44);
    if (arg1) {
        *(s16 *)((char *)v1 + 0x10) = (s16)sp10[0];
        *(s16 *)((char *)v1 + 0x12) = (s16)sp10[1];
        *(s16 *)((char *)v1 + 0x14) = (s16)sp10[2];
    } else {
        s32 i = 0;
        s32 *src = &sp10[0];
        s16 *d = (s16 *)((char *)v1 + 0x10);
        do {
            s32 sum = *(s16 *)d + *src;
            s32 r = sum;
            if (sum < 0) {
                r = sum + 0xFFF;
            }
            *(s16 *)d = sum - ((r >> 12) << 12);
            i++;
            src++;
            d++;
        } while (i < 3);
    }
    *(s32 *)(*(s32 *)((char *)arg0 + 0x14)) = 0;
}
