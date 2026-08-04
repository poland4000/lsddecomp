void func_8003C238(void *arg0) {
    void *s2;
    void *s3;
    void *s0;
    void *obj;

    s2 = *(void **)((char *)arg0 + 0x18);
    s3 = *(void **)s2;
    (*(void(**)(void*, s32))((char *)*(void **)arg0 + 0xE0))(arg0, *(s32 *)((char *)arg0 + 0x14));
    obj = *(void **)((char *)arg0 + 0x78);
    (*(void(**)(void*, s32, s32))((char *)*(void **)obj + 0x4C))(obj, *(s32 *)((char *)arg0 + 0x14), 0);
    if (*(s32 *)((char *)arg0 + 0x88) != 0) {
        s0 = (char *)arg0 + 0x90;
        (*(void(**)(void*, void*))((char *)*(void **)arg0 + 0xE4))(arg0, s0);
        obj = *(void **)((char *)arg0 + 0x78);
        (*(void(**)(void*, s32, void*))((char *)*(void **)obj + 0xB8))(obj, 1, s0);
    }
    if (*(s32 *)((char *)arg0 + 0x74) == 0) {
        obj = *(void **)*(void **)((char *)arg0 + 0xC);
        (*(void(**)(void*, void*, s32))((char *)*(void **)obj + 0x78))(obj, (char *)arg0 + 0x90, &D_8006E854);
    }
    obj = *(void **)*(void **)((char *)arg0 + 0xC);
    (*(void(**)(void*, void*, s32))((char *)*(void **)obj + 0x78))(obj, (char *)arg0 + 0x90, 0);
    (*(void(**)(void*, s32))((char *)s3 + 0x48))(s2, *(s32 *)((char *)arg0 + 0x28));
    (*(void(**)(void*, s32))((char *)s3 + 0x4C))(s2, *(s32 *)((char *)arg0 + 0x2C));
    (*(void(**)(void*, s32))((char *)s3 + 0x50))(s2, *(s32 *)((char *)arg0 + 0x30));
    (*(void(**)(void*, s32, u8*, u8*, s32))((char *)s3 + 0x70))(s2, *(s32 *)((char *)arg0 + 0x14), D_8006E86C, D_8006E86C, 0);
    (*(void(**)(void*))((char *)s3 + 0x8C))(s2);
    *(s32 *)((char *)arg0 + 0x38) = 0;
}
