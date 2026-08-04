// NEAR MISS: -152 bytes, 3 magic divisions (/3,/6,/12) + globals
// rand()%3, D_8008AC74/6, rand()%12 - magic constants don't match
void func_8005511C(s32 arg0, void *arg1) {
    s32 rand_val = rand();
    s32 v = rand_val % 3;
    s32 a5 = D_8008AC74;
    s32 v2 = a5 / 6;
    s32 s0, a2, v3, a6;
    D_8008E0C0 = (s32)D_80087228 + v * 3;
    v3 = v2 * 5 * 4;
    if (a5 == v3) { D_8008E0C0[1] = 0; } else { D_8008E0C0[1] = D_80087430; }
    func_80055258(arg1, D_80087330);
    s0 = (s32)D_8008E0B0;
    D_80087174 = (s32)D_8008E0B0;
    rand_val = rand();
    a6 = rand_val % 12;
    D_8008E0BC = rand_val - a6 * 6;
    a2 = D_8008AB4C;
    *(s32*)arg0 = func_80056320(2, s0 - 0xC, D_8008AB4C, a6, arg1);
    *(void**)((char*)arg0 + 0x4) = (void*)((char*)arg0 + 0x4);
}
