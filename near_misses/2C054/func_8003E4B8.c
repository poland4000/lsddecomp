// NEAR MISS: prologue save order only (sw s0/addu s0 vs sw ra/sw s2/lw s2 positions)
// All instructions identical, allocation matches (s1=arg0, s0=arg1, s2=obj).
// KEY: first call takes NO explicit arg (a0 still = arg0 from entry) — this gives
// arg0's pseudo 5 refs instead of 6, flipping the global-alloc priority sort
// (floor_log2(refs)*refs/live_length) so arg1 wins s0. With (arg0) passed,
// arg0->s0 and arg1->s1 (wrong).
void func_8003E4B8(void *arg0, s32 arg1) {
    void *obj = *(void**)arg0;
    *(s32*)((char*)arg0 + 0x20) = arg1;
    (*(void(**)())((char*)obj + 0x30))();
    if (arg1 == 2) {
        (*(void(**)())((char*)obj + 0x64))(arg0);
    } else if (arg1 == 3) {
        (*(void(**)())((char*)obj + 0x68))(arg0);
    }
}
