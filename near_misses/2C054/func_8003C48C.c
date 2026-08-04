void func_8003C48C(void *arg0, s32 arg1, s32 arg2) {
    s32 v0;
    s32 vt;

    vt = *(s32 *)arg0;
    if (*(s32 *)((char *)arg0 + 0x3C) != 0) {
        switch (arg2) {
        case 0x12:
            v0 = *(s32 *)(vt + 0x80);
            break;
        case 0x13:
            v0 = *(s32 *)(vt + 0x84);
            break;
        case 0x17:
            v0 = *(s32 *)(vt + 0x7C);
            break;
        case 0x19:
            v0 = *(s32 *)(vt + 0x78);
            break;
        case 0x20:
            v0 = *(s32 *)(vt + 0x74);
            break;
        case 0x21:
            break;
        default:
            return;
        }
        (*(void(**)(void))v0)();
    }
}
