void func_8003D444(void *arg0) {
    s32 a1;
    if (*(s32*)((char*)arg0 + 0x4C) == 0) {
        return;
    }
    a1 = *(s32*)((char*)arg0 + 0x58) - 1;
    for (;;) {
        if (a1 < 0) {
            a1 = *(s32*)((char*)arg0 + 0x50) - 1;
        }
        if (a1 == *(s32*)((char*)arg0 + 0x58)) {
            break;
        }
        if (*(s32*)((char*)*(void**)((char*)arg0 + 0x4C) + 0x18 + a1 * 4) != 0) {
            a1--;
        } else {
            a1++;
            break;
        }
    }
    (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0xF0))(arg0, 1);
}
