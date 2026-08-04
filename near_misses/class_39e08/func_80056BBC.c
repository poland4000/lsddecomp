// NEAR MISS: -68 bytes, 3-s-reg save order + rand parity reg alloc
// rand()%2 selects a3 arg and D_8008785C/74 selection
void func_80056BBC(void *arg0, s32 arg1) {
    s32 parity = rand() % 2;
    s32 a3;
    void *s0;
    if (parity == 0) { a3 = (s32)D_80087868; } else { a3 = 0; }
    func_80056D18(arg0, 0, 0, a3);
    if (*(s32*)((char*)arg0 + 0x70) >= 2) {
        s0 = *(void**)((char*)arg0 + 0x88);
        D_80087880 = *(s32*)((char*)D_80087844 + *(s32*)((char*)arg0 + 0x70) * 4);
        func_800573A8(s0, D_80087880);
        (*(void(**)(void*))((char*)*(void**)s0 + 0xB8))(s0);
    } else {
        s0 = *(void**)((char*)arg0 + 0x88);
        (*(void(**)(void*))((char*)*(void**)s0 + 0x64))(s0);
        (*(void(**)(void*, s32))((char*)*(void**)s0 + 0x68))(s0, 0);
        if (parity == 0) {
            (*(void(**)(void*, s32, s32))((char*)*(void**)s0 + 0x48))(s0, 1, (s32)D_80087874);
        } else {
            (*(void(**)(void*, s32, s32))((char*)*(void**)s0 + 0x48))(s0, 1, (s32)D_8008785C);
        }
    }
    (*(void(**)(void*, s32))((char*)*(void**)*(void**)((char*)arg0 + 0x8C) + 0x60))(*(void**)((char*)arg0 + 0x8C), 0);
}
