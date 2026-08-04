// NEAR MISS: 0 diff but 64 insn diffs - fixed-point div structure differs
// 4 divisions with break checks, fixed-point 0x1000 shifts
void func_80057DF4(void *arg0, void *arg1, s16 *arg2) {
    s32 a3 = *(s16*)((char*)arg2 + 0);
    s32 v0 = *(s16*)((char*)arg2 + 2);
    s32 a0, a1, v1;
    a3 = a3 / v0;
    a0 = (a3 * 0x1000) / v0;
    a1 = *(s16*)((char*)arg2 + 4);
    v0 = *(s16*)((char*)arg2 + 6);
    a1 = a1 / v0;
    v1 = (a1 * 0x1000) / v0;
    a3 = a3 * 0x1000 + a0;
    a0 = a3;
    a1 = a1 * 0x1000 + v1;
    v1 = a1;
    if (*(s32*)((char*)arg0 + 0x58) != 0) {
        *(s32*)((char*)arg0 + 0x5C) = (s16)(a3 * 0x10000 >> 16) * *(s32*)((char*)arg0 + 0x5C) >> 12;
        *(s32*)((char*)arg0 + 0x60) = (s16)(a1 * 0x10000 >> 16) * *(s32*)((char*)arg0 + 0x60) >> 12;
    } else {
        *(s16*)((char*)arg0 + 0x80) = a0;
        *(s16*)((char*)arg0 + 0x82) = v1;
    }
}
