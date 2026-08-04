void func_8003C51C(void *arg0, void *arg1, void *arg2) {
    s32 s3;

    s3 = *(s32 *)arg0;
    (*(void(**)(void*, void*, void*))((char *)func_8003E5C8() + 0x5C))(arg0, arg1, arg2);
    if ((*(s32 *)((char *)arg0 + 0x3C) != 0) && ((u32)*(s32 *)((char *)arg0 + 0x40) < (u32)*(s32 *)((char *)arg0 + 0x1C))) {
        (*(void(**)(void*, s32))((char *)s3 + 0x60))(arg0, 6);
    }
    switch (*(s32 *)((char *)arg0 + 0x20)) {
    case 2:
        (*(void(**)(void*, s32))((char *)s3 + 0x60))(arg0, 4);
        break;
    case 4:
        (*(void(**)(void*))((char *)s3 + 0xAC))(arg0);
        break;
    case 7:
        (*(void(**)(void*))((char *)s3 + 0xC0))(arg0);
        break;
    case 8:
        (*(void(**)(void*, s32))((char *)s3 + 0x60))(arg0, 3);
        break;
    }
}
