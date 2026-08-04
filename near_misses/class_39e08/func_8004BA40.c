// PARKED: func_8004BA40 (0xFC bytes) - best attempt 505860 (+4, 1 extra insn).
// Root cause: the result variable lands in a1 in our build (with a final
// `move v0,a1` before jr ra) while the target keeps it in v0. register
// __asm__("v0") binding instead forces `move t0,a0` for arg0 (+4) plus
// reshuffled allocation. Declaration-order and m2c-structure variants
// (var_v0_2 = arg4+arg6 hoisted, mult inside else) match everything else
// including the two address-taken-free prologue. Prologue save order also
// differs ([sw s1,lw s1,lw v1] first in target vs [sw s0,move s0] first).
s32 func_8004BA40(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    s32 var_v0;
    s32 temp_lo;
    s32 temp_v1;
    s32 var_v0_2;
    s32 var_v1;

    var_v0 = 0;
    if (arg5 & D_8008688C[arg6]) {
        var_v0_2 = arg4 + arg6;
        if (*(s32 *)(*(s32 *)((char *)arg0 + 0x68) + 4) == 0) {
            s32 *temp_v0 = (s32 *)(arg6 * 0xC + (s32)D_800868A8);
            temp_v1 = temp_v0[0];
            if (temp_v1 == 0) {
                var_v0_2 = arg4 + temp_v0[1];
            } else {
                temp_lo = arg2 * temp_v1;
                if (arg3 != 0) {
                    var_v1 = temp_lo + temp_v0[1];
                } else {
                    var_v1 = temp_lo + temp_v0[2];
                }
                var_v0_2 = arg4 + var_v1;
            }
        }
        *(s32 *)((char *)arg1 + 4) = var_v0_2;
        *(s32 *)arg1 = (*(s32 (**)(void *, s32, s32, s32, s32))(*(s32 *)((char *)arg0 + 0x60)))(
            *(void **)((char *)arg0 + 0x64), *(s32 *)((char *)arg1 + 4), 0, 0);
        var_v0 = 1;
    } else {
        *(s32 *)arg1 = 0;
    }
    *(s32 *)((char *)arg1 + 8) = arg6;
    return var_v0;
}
