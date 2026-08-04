// NEAR MISS: -228 bytes, structure collapsed
// Division with break checks, table lookups (D_800873DC/D8/C8), GP globals
void *func_80054758(void) {
    s32 sum = D_8008AC74 + D_8008AC6C;
    s32 idx = *(s8*)((char*)D_800873DC + (sum & 0xF));
    void *result;
    D_8008AC80 = idx;
    s32 rem = sum % *(s8*)((char*)D_800873D8 + idx);
    D_8008AC84 = rem;
    result = *(void**)((char*)D_800873C8 + idx * 4);
    s32 offset = rem * 4 + (s32)result;
    if (idx == 0) {
        s32 v3 = *(s8*)((char*)offset + 3);
        D_8008AC90 = (void*)((char*)D_800872C4 + v3 * 3);
        s32 v1 = *(s8*)((char*)offset + 2);
        if (v1 == 0x12) { D_8008AC8C = D_80087234; }
        else { D_8008AC8C = D_8008726C; }
        if (rem < 4) { D_8008AB50 = 1; }
        else if (rem < 6) { D_8008AB50 = 2; }
    }
    return (void*)offset;
}
