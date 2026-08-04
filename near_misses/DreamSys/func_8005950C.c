// NEAR MISS: 1 attempt. 14 diffs — all from the temp-register allocation swap
// (mine: arg2-derived in a2, target: in a3, etc). Structure (rounding shifts,
// signed div with guards, return sum) correct.
s32 func_8005950C(void *arg0, void *arg1, s32 arg2) {
    s32 a3 = arg2;
    s32 v1;
    s32 a2;
    if (arg2 < 0) {
        a3 = arg2 + 0x3FF;
    }
    a2 = a3 >> 10;
    v1 = *(s32*)((char*)arg1 + 8) - *(s32*)((char*)arg0 + 8);
    if (v1 < 0) {
        v1 += 0x3FF;
    }
    a3 = v1 >> 10;
    if (a3 == 0) {
        a3 = 1;
    }
    return (*(s32*)((char*)arg1 + 4) - *(s32*)((char*)arg0 + 4)) * a2 / a3 + v1;
}
