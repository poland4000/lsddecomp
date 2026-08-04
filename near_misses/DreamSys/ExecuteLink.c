/* ExecuteLink - BEST ATTEMPT (2 attempts) - NOT MATCHED
 *
 * REMAINING 20 DIFFS - parm s-reg swap + arg2 register choice:
 *  1. s-reg swap: orig allocates s1=arg1, s2=arg3; ours allocates
 *     s2=arg1, s1=arg3 (prologue order, 0x164 store sw s2 vs sw s1,
 *     beqz s2 vs beqz s1, delay addu s1,a3 vs addu s2,a3 all swap).
 *  2. arg2 register: orig copies arg2 to a1 at entry (addu a1,a2) then
 *     stores sw a1,0x44(s0); ours stores sw a2,0x44(s0) directly.
 *  3. Prologue order cascades: sw s1/sw s2/ra order differs.
 *
 * Everything else (the vtable[0x30] call, the 0x68-if with the s1->0x164
 * store in the beqz delay, the arg3 vtable[0x80](a0,0x90,0x6E,0x6E) call,
 * the shared return-1/return-0 epilogue) matches structurally.
 */
#include "common.h"

s32 ExecuteLink(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 *a0;
    *(s32 *)((char *)arg0 + 0x44) = arg2;
    (*(void(**)(void *))((char *)*(void **)arg0 + 0x30))(arg0);
    if (*(s32 *)((char *)arg0 + 0x44) == 0) {
        return 0;
    }
    if (*(s32 *)((char *)arg0 + 0x68) == 0) {
        *(s32 *)((char *)arg0 + 0x164) = arg1;
        *(s32 *)((char *)arg0 + 0x24) = 0;
    }
    if (arg3 != 0) {
        a0 = *(s32 **)((char *)arg0 + 0x58);
        (*(void(**)(s32 *, s32, s32, s32))((char *)*(void **)a0 + 0x80))(a0, 0x90, 0x6E, 0x6E);
    }
    return 1;
}
