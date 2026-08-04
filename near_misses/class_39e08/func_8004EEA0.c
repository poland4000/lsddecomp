// NEAR MISS: uses $fp as data register + s0-s7 (10 saved regs!)
// Extreme register pressure - needs exact original C to match
// Retry loop calling func_8004EF6C with 7+ args
void func_8004EEA0(void) {
    // Too complex - 10 saved registers, $fp as data reg
    // func_800507F8(arg2, 0) init, then retry loop up to 10x
    // calling func_8004EF6C(fp, s3, s2, s7&0xFF, s6, s5, s4)
}
