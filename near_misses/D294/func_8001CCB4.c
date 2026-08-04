/* func_8001CCB4 - BEST ATTEMPT (3 attempts) - NOT MATCHED
 *
 * REMAINING DIFFS (17) - ALL from the parm s-reg swap:
 *  orig allocates s0=arg0, s1=arg1; ours s0=arg1, s1=arg0. The swap
 *  cascades: prologue order, the bne delay (move s1,a0 vs move s0,a0),
 *  the a0 setup position in the vtable[0x14] call, and a MISSING NOP
 *  (ours fills the lw->jalr load-use delay with the a0 move; orig has
 *  [addu a0,s0; lw v0,0x14(v0); nop; jalr]) making ours 4 bytes short -
 *  which shifts the func_8001E7B0 jal target -4 (not a pre-existing
 *  region issue; the baseline is clean).
 *
 * The no-deref cast-call idiom works: (char*)func_80018390() + 0x14.
 */
#include "common.h"

void func_8001CCB4(void *arg0, void *arg1) {
    s32 t = *(s32 *)*(void **)arg1 & 0xF;
    if (t == 9) {
        func_8001E7B0();
    }
    (*(void(**)(void *, void *))((char *)func_80018390() + 0x14))(arg0, arg1);
}
