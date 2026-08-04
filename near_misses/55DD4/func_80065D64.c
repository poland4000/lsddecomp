/* func_80065D64 - BEST ATTEMPT (2 attempts) - NOT MATCHED
 *
 * REMAINING 21 DIFFS:
 *  1. Frame: orig has a sp-8 frame (addiu sp,-8 in the beqz delay) for
 *     this leaf function; ours compiles frameless.
 *  2. Register allocation: orig p->a2, i->v1; ours p->v1, i->a2 (and the
 *     i=0 lands in the beqz delay vs the blez delay).
 *
 * The loop structure matches (lbu/beq/addu-i/slt/bnez with the p++
 * in the delay, the return-i in the beq delay, the shared -1 return).
 */
#include "common.h"

s32 func_80065D64(void *arg0, u8 arg1) {
    void *p = *(void **)((char *)arg0 + 0x74);
    s32 i = 0;
    if (p != 0) {
        s32 count = *(s32 *)((char *)arg0 + 0x6C);
        if (count > 0) {
            do {
                if (*(u8 *)p == arg1) {
                    return i;
                }
                i++;
                p++;
            } while (i < count);
        }
    }
    return -1;
}
