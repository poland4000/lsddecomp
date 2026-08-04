// NEAR MISS: -40 bytes, GP-relative globals + call ordering differ
// rand()+D_80087324 table lookup, D_8008AC80 state machine
void func_80054B84(void *arg0) {
    s32 val;
    s32 s0 = 0;
    if (D_8008AC80 < 0) { return; }
    func_80056F5C(*(s32*)((char*)D_8008AC7C + 0x4), *(s32*)((char*)D_8008AC7C + 0x8), *(s32*)((char*)D_8008AC7C + 0xC));
    val = *(s8*)((char*)D_80087324 + (rand() & 3));
    if (D_8008AC80 == 2) { s0 = 0x10 - val; }
    D_8008AC88 = val + s0;
    s32 result = func_80054F30(func_80054DA4(D_8008E0C8, arg0), s0, arg0);
    if (D_8008AC80 == 0) {
        func_80054FD8(result, arg0);
    } else if (D_8008AC80 == 2) {
        func_8005511C(result, arg0);
    }
    D_8008AC88 = D_8008AC88 + 1;
}
