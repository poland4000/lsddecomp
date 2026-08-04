/* func_80065FD8 - BEST ATTEMPT (1 attempt) - NOT MATCHED
 *
 * REMAINING ~42 DIFFS:
 *  1. The *(0x78) fn call: ours emits an extra `lw v0,0(v0)` (spurious
 *     deref of the loaded fn pointer); orig does [lw v0,0x78(s0); jalr].
 *  2. The first beqz offset differs (the 0x78 block is 8 bytes longer
 *     in ours because of the extra load).
 *  3. The 0x90/0x80 checks and the vtable[0x134] block, the 0x84
 *     increment/compare, the 0x88 chain (same pointer+8 as 66214) all
 *     match structurally.
 *
 * The 0x78 call should probably be the no-deref form: the value AT 0x78
 * IS the function pointer (like func_80057C84 calls).
 */
#include "common.h"

void func_80065FD8(void *arg0) {
    *((s32 *)((char *)arg0 + 0x24)) = *((s32 *)((char *)arg0 + 0x24)) + 1;
    if (*((s32 *)((char *)arg0 + 0x8C)) != 0) {
        (*(void(**)(void *))(*(s32 *)((char *)arg0 + 0x78)))(arg0);
    }
    if (*((s32 *)((char *)arg0 + 0x90)) != 0 && *((s32 *)((char *)arg0 + 0x80)) >= 2) {
        *((s32 *)((char *)arg0 + 0x88)) = (*(s32(**)(void *, void *, s32))((char *)*(void **)arg0 + 0x134))(arg0, *((s32 *)((char *)arg0 + 0x88)), 0);
        *((s32 *)((char *)arg0 + 0x84)) = *((s32 *)((char *)arg0 + 0x84)) + 1;
        if (*((s32 *)((char *)arg0 + 0x84)) >= *((s32 *)((char *)arg0 + 0x80))) {
            *((s32 *)((char *)arg0 + 0x84)) = 0;
            *((s32 *)((char *)arg0 + 0x88)) = ((s32)((char *)*((s32 *)((char *)*((s32 *)((char *)*((s32 *)((char *)*((s32 *)((char *)arg0 + 0x5C)) + 0x30)) + 0x10)) + *((s32 *)((char *)arg0 + 0x7C)) * 4 + 8)) + 0x10)) + 8));
        }
    }
    *(s32 *)(*(s32 *)((char *)arg0 + 0x14)) = 0;
}
