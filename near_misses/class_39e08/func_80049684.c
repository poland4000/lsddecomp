// NEAR MISS: -76 bytes, save order + C structure both wrong
// Huge function with 7 calls, s0-s4+ra, zero branches
// Needs exact C to produce s1,s3,s2,s4,ra,s0 save order
void func_80049684(void *arg0, void *arg1, void *arg2, s32 arg3) {
    s32 sp_val1; s32 sp_val2;
    func_80048E08(0);
    void *obj = func_8004A4B8();
    (*(void(**)(void*, void*, s32))((char*)obj + 0x8))(arg0, obj, 0);
    func_8004A060();
    func_8005C508();
    *(s32*)((char*)arg0) = (s32)func_8005C508();
    *(s32*)((char*)arg0 + 0x44) = (s32)func_8003B39C(D_800113EC);
    void *temp44 = *(void**)((char*)arg0 + 0x44);
    (*(void(**)(void*))((char*)*(void**)temp44 + 0x78))(temp44);
    (*(void(**)(void*))((char*)*(void**)temp44 + 0x5C))(temp44);
    sp_val1 = 0; sp_val2 = (s32)D_800113F8;
    func_80043840(&sp_val1, sp_val2);
    *(s32*)((char*)arg0 + 0x48) = (s32)func_80048D74(0);
    func_800398E0(*(void**)((char*)arg0 + 0x48), 0, 1);
    *(s32*)((char*)arg0 + 0x40) = (s32)func_8004A070(1);
    func_80026F34((s32)(arg3 < 1), 1, 1);
    func_8004D254(arg0, arg1);
    *(s32*)((char*)arg0 + 0xC) = (s32)arg1;
    *(s32*)((char*)arg1 + 0x10) = (s32)func_80042400(arg0);
    *(s32*)((char*)arg1 + 0x8) = (s32)func_8004A4C8(0, 1);
    *(s32*)((char*)arg1 + 0xC) = *(s32*)((char*)arg1 + 0x8);
    *(s32*)((char*)arg0 + 0x38) = (s32)arg2;
    (*(void(**)(void*, void*))((char*)*(void**)arg0 + 0x10))(arg0, arg2);
    (*(void(**)(void*, s32, void*))((char*)*(void**)arg2 + 0x10C))(arg2, *(s32*)((char*)arg0 + 0x34), arg2);
    (*(void(**)(void*, void*))((char*)*(void**)arg2 + 0x114))(arg2, *(void**)((char*)arg0 + 0x44), arg2);
    (*(void(**)(void*))((char*)*(void**)arg0 + 0x40))(arg0);
}
