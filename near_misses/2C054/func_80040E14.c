// NEAR MISS: 1 attempt. Diffs (42): (1) frame -0x28 vs target -0x30 (outgoing
// args area 8 vs 16); (2) s-reg roles swapped (mine s0=arg0/s1=arg1, target
// s1=arg0/s2=arg1); (3) the local[0..1] loads: target batches [lw v0;lw v1;
// sw;sw], mine reuses v0 with a load-delay nop; (4) setup ordering.
void func_80040E14(void *arg0, void *arg1) {
    s32 local[2];
    s32 s0;
    void *s2;
    if (*(s32*)((char*)arg0 + 0xC) == 0) {
        return;
    }
    (*(void(**)(void*, void*))((char*)func_80041C3C() + 0xBC))(arg0, arg1);
    local[0] = *(s32*)arg1;
    local[1] = *(s32*)((char*)arg1 + 4);
    s2 = *(void**)((char*)arg0 + 0xB4);
    s0 = 0;
    if (*(u8*)((char*)arg0 + 0xA9) > 0) {
        do {
            (*(void(**)(void*, void*))((char*)*(void**)*(void**)((char*)s2) + 0xBC))(*(void**)((char*)s2), local);
            local[0] += *(s32*)((char*)arg0 + 0xB0);
            s0++;
            s2 = (char*)s2 + 4;
        } while (s0 < *(u8*)((char*)arg0 + 0xA9));
    }
}
