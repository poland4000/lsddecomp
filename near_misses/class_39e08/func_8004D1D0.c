// NEAR MISS: -4 bytes, register alloc: target uses $v0 then $s0, ours uses $s0 directly
void func_8004D1D0(void *arg0, void (*arg1)(void*, s32), void *arg2) {
    s32 *ptr = *(s32**)((char*)arg2 + 0x10);
    s32 *end = (s32*)((char*)ptr + 0x668);
    while (ptr < end) {
        arg1(arg0, *ptr);
        ptr++;
    }
}
