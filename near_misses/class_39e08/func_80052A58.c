// NEAR MISS: 4 s-regs save order will fail
// Pointer arithmetic: s1 = s0 + (0x28-0x20)*4 + 0x40, vtable->0xB8 calls
// arg1 selects +4/-4 index, arg2 triggers final vtable->0x60 call
void func_80052A58(void) {
    // Too complex: s0-s3, vtable->0xB8 twice with D_8008AB0C/AB10,
    // conditional s1 index move, final vtable->0x60
}
