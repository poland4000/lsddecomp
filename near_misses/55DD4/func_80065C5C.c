/* func_80065C5C - BEST ATTEMPT (2 attempts) - NOT MATCHED
 *
 * REMAINING ~33 DIFFS (whole structure):
 *  1. Prologue: orig [sw s0; addu s0,a0; addu a0,a1; sw ra]; ours
 *     [sw ra; sw s0; lw v0,0xC(a1)] with the s0=a0 move in the beqz
 *     delay - the arg1 stays in a1 (orig copies it to a0) and the
 *     prologue order differs.
 *  2. The second if: orig's vtable block is the bnez TARGET at the end
 *     with [j CD8; ori v0,1] for the func_80065CEC path; ours inverts
 *     (the j+li land in the vtable path) - even after flipping the
 *     condition the layout differs.
 *  3. Ours ends 8 bytes short (func_80065CEC jal target -8).
 */
#include "common.h"

s32 func_80065C5C(void *arg0, void *arg1) {
    if (*(s32 *)((char *)arg1 + 0xC) != 0) {
        *(s32 *)((char *)arg0 + 0x5C) = *(s32 *)((char *)arg1 + 0xC);
        *(s32 *)((char *)arg0 + 0x60) = 0;
    } else {
        *(s32 *)((char *)arg0 + 0x5C) = func_8004468C();
        *(s32 *)((char *)arg0 + 0x60) = 1;
    }
    if (*(s32 *)((char *)arg0 + 0x5C) != 0) {
        return (*(s32(**)(void *))((char *)*(void **)arg0 + 0x100))(arg0);
    }
    func_80065CEC(arg0);
    return 1;
}
