// NEAR MISS: -52 bytes, s0 reassignment creates register pressure
// Target: s0 starts as arg0, then gets reassigned to call1 result
// s0->0x4 and s0->0x14 refer to call1 result's fields
// Our C with separate s0 var allocates differently
s32 func_80054120(void *arg0) {
    s32 sp_val;
    s32 result2;
    (*(void(**)(void*, s32*))((char*)*(void**)*(void**)((char*)arg0 + 0x14) + 0x114))(*(void**)((char*)arg0 + 0x14), &sp_val);
    void *s0 = *(void**)((char*)arg0 + 0x14);
    result2 = (*(s32(**)(void*, s32))((char*)*(void**)*(void**)((char*)arg0 + 0x3C) + 0x1A0))(*(void**)((char*)arg0 + 0x3C), 0);
    if (func_8005C7D4(*(void**)((char*)*(void**)((char*)s0 + 0x4) + 0x34), &sp_val, result2) != 0) {
        return 0;
    }
    *(s32*)((char*)s0 + 0x14) = result2;
    void *temp = *(void**)((char*)s0 + 0x4);
    (*(void(**)(void*))((char*)*(void**)temp + 0x84))(temp);
    return 1;
}
