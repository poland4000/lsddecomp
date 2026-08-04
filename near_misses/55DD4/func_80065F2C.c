/* func_80065F2C - BEST ATTEMPT (2 attempts) - NOT MATCHED
 *
 * REMAINING ~30 DIFFS - the loop pre-test:
 *  orig: [lw v1,0x6C; j 0xF90; addu s1,a0] - the count load then a JUMP
 *  to the bottom test (while structure); ours emits the loop body
 *  directly after the count load (no pre-test j) for both while and
 *  do-while C forms.
 *
 * The loop body, the count reload after the call, the [addiu v0,v1,-1;
 * bgtz v1; sw v0,0x6C] tail, the final func_80017CFC double call with
 * the sw results all match structurally. Note: the extern
 * func_80017CFC must return s32 (the result is stored).
 */
#include "common.h"

void func_80065F2C(void *arg0) {
    s32 count;
    void **p;
    if (*(s32 *)((char *)arg0 + 0x70) != 0) {
        if (*(s32 *)((char *)arg0 + 0x74) != 0) {
            p = *(void ***)((char *)arg0 + 0x70);
            count = *(s32 *)((char *)arg0 + 0x6C);
            while (count > 0) {
                (*(void(**)(void *))((char *)*(void **)*p + 0x4))(*p);
                p++;
                count = *(s32 *)((char *)arg0 + 0x6C);
                *(s32 *)((char *)arg0 + 0x6C) = count - 1;
            }
            *(s32 *)((char *)arg0 + 0x68) = 0;
        }
    }
    *(s32 *)((char *)arg0 + 0x74) = func_80017CFC(*(void **)((char *)arg0 + 0x74));
    *(s32 *)((char *)arg0 + 0x70) = func_80017CFC(*(void **)((char *)arg0 + 0x70));
}
