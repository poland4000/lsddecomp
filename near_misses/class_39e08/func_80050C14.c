// PARKED: func_80050C14 (0xC4 bytes)
// Root cause: scheduler ordering. Best attempt (correct semantics, m2c-
// confirmed): frame 0x20, all but ONE instruction match. The target emits
// `lw v1,D_8008AAE4; sw v0,0x28(s0); lbu v0,0(v1); nop; beqz` (store fills the
// load-use slot, 1 nop). Our gcc emits `sw v0,0x28(s0); lw v1; nop; lbu; nop`
// (2 nops, function 1 instruction longer -> shifts the next func by 4).
// Moving the D_8008AAE4 load before the func_80017B34 call (m2c's order)
// makes var_v1 live across the call -> extra callee-saved reg s3, frame 0x28.
// register hints didn't change either outcome. 1-instruction scheduling
// difference unfixable from C.
void func_80050C14(void *arg0, s32 arg1, void *arg2) {
    s32 temp_v0;
    s32 var_a1;
    s32 var_v1;

    (*(void (**)(void *))((char *)func_80018390() + 8))(arg0);
    *(s32 *)arg0 = func_80051A4C();
    temp_v0 = func_80013348(arg1);
    *(s32 *)((char *)arg0 + 0x10) = temp_v0;
    *(s32 *)((char *)arg0 + 0x28) = func_80017B34(temp_v0 + 4);
    var_v1 = D_8008AAE4;
    var_a1 = 0;
    if (*(s8 *)var_v1 != 0) {
        do {
            var_v1 += 1;
            var_a1 += 1;
        } while (*(s8 *)var_v1 != 0);
    }
    *(s32 *)((char *)arg0 + 0x14) = var_a1;
    func_80050CD8(arg0);
    (*(void (**)(void *, s32, void *))(*(void **)arg0 + 0x40))(arg0, arg1, arg2);
}
