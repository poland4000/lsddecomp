// NEAR MISS: +4 bytes (best attempt 2) - struct copy loop + tables
// D_800868FC/86974 lookups, 16-byte unrolled copy, vtable calls
// 3 attempts: sp[8], sp[12]&sp[4], loop - unroll pattern differs
s32 func_8004B5BC(void *arg0, void *arg1, void *arg2, void *arg3, void *arg4) {
    s32 sp[12];
    s32 s1;
    s32 result;
    result = (*(s32(**)(void*, s32*, s32))((char*)*(void**)arg0 + 0x10C))(arg0, &sp[4], 0);
    if (result == 0) { return 0; }
    s1 = *(s8*)((char*)D_800868FC + *(s16*)((char*)*(void**)((char*)arg4 + 0x4) + 0x32));
    if (*(s32*)((char*)*(void**)((char*)arg0 + 0x68) + 0x4) == 0) {
        (*(void(**)(void*, void*, void*))((char*)*(void**)arg0 + 0xF8))(arg0, arg4, *(void**)((char*)D_80086974 + s1 * 4));
    }
    (*(void(**)(void*))((char*)*(void**)arg0 + 0x128))(arg0);
    {
        s32 i;
        s32 *src = &sp[4];
        s32 *dst = (s32*)((char*)arg0 + 0xBC);
        for (i = 0; i < 2; i++) {
            dst[0] = src[0]; dst[1] = src[1]; dst[2] = src[2]; dst[3] = src[3];
            src += 4; dst += 4;
        }
        dst[0] = src[0]; dst[1] = src[1]; dst[2] = src[2];
    }
    if ((s16)((u16)*(s16*)((char*)arg0 + 0xBC) << 16 >> 16) != *(s16*)((char*)&sp[4])) {
        (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x30))(arg0, 5);
    }
    return s1;
}
