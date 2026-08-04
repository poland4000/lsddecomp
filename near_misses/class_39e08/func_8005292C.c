// NEAR MISS: -20 bytes, save order (s0-s4) + arg loading order differ
// String builder: func_80013348 + func_800238A8 + space fill loop
char *func_8005292C(void *arg0, char *arg1, s32 arg2, s32 arg3, void *arg4) {
    s32 idx = (arg3 + arg2) * 4;
    s32 count;
    count = func_80013348(*(void**)((char*)arg0 + 0x18 + idx) + (s32)arg4);
    if (count >= 0x1B) {
        count = 0x1A;
    }
    func_800238A8(arg1, *(void**)((char*)arg0 + 0x18 + idx) + (s32)arg4, count);
    if (count < 0x1A) {
        char *dst = arg1 + count;
        char *end = arg1 + 0x1A;
        while (dst < end) {
            *dst = ' ';
            dst++;
        }
    }
    arg1[0x1A] = 0;
    return arg1;
}
