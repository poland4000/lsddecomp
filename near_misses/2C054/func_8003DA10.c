// NEAR MISS: 1 attempt. All 42 diffs stem from the s-reg role swap: target
// s1=arg0/s0=idx, mine s0=arg0/s1=idx (same parm-allocation family as
// func_8003BC14). Structure otherwise correct.
void func_8003DA10(void *arg0) {
    s32 s0;
    void *a0;
    if (*(s32*)((char*)arg0 + 0x3C) == 1) {
        s0 = *(s32*)((char*)arg0 + 0x58);
        (*(void(**)(void*, s32, s32))((char*)*(void**)arg0 + 0x100))(arg0, *(s32*)((char*)arg0 + 0x14), 1);
        s0 *= 4;
        a0 = *(void**)((char*)(*(s32*)((char*)*(void**)((char*)arg0 + 0x60) + s0) * 4 + *(s32*)((char*)*(void**)((char*)arg0 + 0x64) + s0)));
        s0 += *(s32*)((char*)*(void**)((char*)arg0 + 0x4C) + 0x24);
        (*(void(**)(void*, s32))((char*)*(void**)a0 + 0xB8))(a0, *(s32*)((char*)s0) + 8);
        *(s32*)((char*)arg0 + 0x3C) = 2;
        (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x60))(arg0, 0xE);
    }
}
