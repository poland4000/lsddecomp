// NEAR MISS: same size, completely different instruction layout
// Leaf function comparison logic. Target moves arg0 to $a2 first,
// uses different register allocation throughout.
// Logic appears correct but C structure produces different codegen.

s32 func_8004CD38(s16 *arg0, u8 *arg1) {
    if (arg0 == 0) {
        return 1;
    }
    if ((s8)arg1[0] < arg0[0]) {
        return 1;
    }
    if (arg0[1] < (s8)arg1[0]) {
        return 1;
    }
    if ((s8)arg1[1] < arg0[1]) {
        return 1;
    }
    return (arg0[2] < (s8)arg1[1]);
}
