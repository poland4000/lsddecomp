// NEAR MISS: 6 bytes diff (3 sw saves reordered)
// Target: s0, ra(0x1C), s2(0x18), s1(0x14)
// Ours:   s0, s1(0x14), ra(0x1C), s2(0x18)
// Root cause: register allocation order differs

void func_800567D4(void *arg0, void *arg1, void *arg2, void *arg3, void *arg4) {
    void *s1 = arg3;
    void *s2 = arg4;
    (*(void(**)(void*))((char*)*(void**)arg0 + 0x4C))(arg0);
    (*(void(**)(void*, s32, void*))((char*)*(void**)arg0 + 0x44))(arg0, 1, s1);
    (*(void(**)(void*, s32, void*))((char*)*(void**)arg0 + 0x48))(arg0, 1, s2);
}
