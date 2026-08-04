// NEAR MISS: -292 bytes, 488-byte function only partially traced
// Magic div by 3 (0x55555556), D_8008AB34/8715C/87168 globals
// Multiple vtable calls + func_8005C650. Too long to trace fully.
void func_800534C8(void *arg0) {
    void *s0 = *(void**)((char*)arg0 + 0x18);
    void *s2 = *(void**)((char*)arg0 + 0x50);
    (*(void(**)(void*))((char*)*(void**)s0 + 0x74))(s0);
    void *v = (*(void(**)(void*))((char*)*(void**)*(void**)((char*)arg0 + 0xC) + 0x7C))(*(void**)((char*)arg0 + 0xC));
    s32 val = *(s32*)v / 3;
    (*(void(**)(void*, s32))((char*)*(void**)s0 + 0x54))(s0, val + D_8008AB34);
    (*(void(**)(void*, s32, void*, void*, s32))((char*)*(void**)s0 + 0x70))(s0, *(s32*)((char*)arg0 + 0x3C), D_8008715C, D_80087168, 0);
    func_8005C650(*(void**)((char*)arg0 + 0x38), *(s32*)((char*)arg0 + 0x14), *(s32*)((char*)arg0 + 0x3C), *(s32*)((char*)arg0 + 0x34), *(s32*)((char*)arg0 + 0x10));
    (*(void(**)(void*, void*))((char*)*(void**)arg0 + 0x10))(arg0, *(void**)((char*)arg0 + 0x14));
    void *s0_2 = *(void**)((char*)arg0 + 0x14);
    (*(void(**)(void*, s32))((char*)*(void**)s0_2 + 0xBC))(s0_2, *(s32*)((char*)s2 + 0x8));
}
