// NEAR MISS: jump table (jtbl_80011594) - rodata link issue
// 15-case switch on state-2, s0-s1, vtable calls
void func_80050034(void) {
    // Jump table switch, can't link without regenerating rodata
}
