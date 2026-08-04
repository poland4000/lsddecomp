// NEAR MISS: -8 bytes, byte-decode loop scheduling
// c<0x80: c==0x40?c-0x1F:c ; c>=0x80: c-0x20. Write until 0 terminator.
// 4 attempts: while, dst-1, v-temp, do-while - load order differs
u8 *func_80040FC0(u8 *arg0, u8 *arg1) {
    s32 c;
    u8 *dst = arg0;
    u8 *src = arg1;
    s32 v;
    c = *(u8*)src++;
    if (c == 0) { *arg0 = 0; return arg0; }
    do {
        dst++;
        if (c < 0x80) {
            if (c != 0x40) { v = c; } else { v = c - 0x1F; }
        } else { v = c - 0x20; }
        *dst = v;
        c = *(u8*)src++;
    } while (c != 0);
    *arg0 = 0;
    return arg0;
}
