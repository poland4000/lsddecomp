/* func_8005A82C - BEST ATTEMPT (5 attempts) - NOT MATCHED
 *
 * Attempts 1-4: signature (arg0,arg1) + r1/r2 vars + shared return-1.
 * Attempt 5 (void *sp10p = &sp10[0]): worse - added an s-reg (s3), 60 diffs.
 *
 * REMAINING 5 DIFFS (all dbr delay-slot tiebreaks, unfixable from C):
 *  1. 0x5A884: the ExecuteLink-beqz delay - orig fills with
 *     `addiu a1,sp,0x10` (the &sp10 body arg); ours fills with
 *     `ori v0,1` (the return-1 constant).
 *  2. 0x5A894: orig has nop there (a1 setup was hoisted into the delay);
 *     ours emits the addiu a1 at that slot.
 *  3. 0x5A8D4: the bnez(0x68) delay - orig leaves nop; ours fills with
 *     `ori v0,1`.
 *  4-5. The two branch offsets (+0x84 vs +0x88, +0x34 vs +0x38) - cascade
 *     from the delay choices.
 *
 * Everything else matches: the r1->s1/r2->s1 register reuse, the s1 in the
 * jal delay (addu s1,v0), the ExecuteLink using the OLD r1, the 16-byte
 * sp10 local (frame 0x30), the vtable[0xE8]/[0xB8]/[0x108]/[0x104] calls.
 *
 * Note: the jal targets (Test4InstantTeleporters, func_8005BFC4) are 4
 * bytes off in the build due to the pre-existing mismatched funcs in
 * [0x5AB2C-0x5BF74] (func_8005AB2C etc. - 4 bytes short collectively) -
 * that region must be fixed before this function's jal bytes can match.
 */
#include "common.h"

s32 func_8005A82C(void *arg0, s32 arg1) {
    s32 r1;
    s32 r2;
    s32 sp10[4];
    r1 = Test4InstantTeleporters((char *)arg0 + 0x16C, arg1, *(s32 *)((char *)arg0 + 0x164));
    if (r1 < 0) {
        return 0;
    }
    r2 = func_8005BFC4();
    if (ExecuteLink(arg0, r1, 0x11, 0) != 0) {
        s32 *a0 = *(s32 **)((char *)arg0 + 0x4C);
        *(s32 *)((char *)arg0 + 0x44) = 0;
        (*(void(**)(s32 *, void *, void *))((char *)*(void **)a0 + 0xE8))(a0, &sp10[0], (char *)arg0 + 0x16C);
        (*(void(**)(void *, void *))((char *)*(void **)arg0 + 0xB8))(arg0, &sp10[0]);
        if (r2 != 0 && *(s32 *)((char *)arg0 + 0x68) == 0) {
            (*(void(**)(void *, s32))((char *)*(void **)arg0 + 0x104))(arg0, (*(s32(**)(void *))((char *)*(void **)arg0 + 0x108))(arg0) + r2);
        }
    }
    return 1;
}
