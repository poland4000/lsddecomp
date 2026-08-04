// PARKED: func_80057534 (0x7C bytes)
// Root cause: register allocation order. Target: s2=arg0, s1=arg1, s0=arg3
// (allocation order arg3, arg1, arg0). Our gcc always produces s1=arg0,
// s2=arg1 (arg0's pseudo allocated before arg1's). Register __asm__ bindings
// are honored for s32/s0 (t0=arg3->s0 works) but the s1/s2 bindings for
// arg0/arg1 are ignored by local-alloc (arg0 keeps s1). Reordering the two
// stores also swaps the emitted store order (target wants arg1 store first).
// Also target's `addu s0,a3` sits in the first jalr's delay slot; our
// scheduler emits `move s0,a3` earlier. 16/31 words differ in best attempt.
void func_80057534(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4) {
    *(s16 *)arg1 = arg2;
    *(s16 *)((char *)arg0 + 0x48) = arg2;
    (*(void (**)(void *, void *))(*(void **)arg0 + 0xC0))(arg0, &D_8008ABA4);
    if (arg3 != 0) {
        *(s16 *)arg1 = 0;
        (*(void (**)(void *, s32))(*(void **)arg0 + 0x88))(arg0, arg4);
    }
}
