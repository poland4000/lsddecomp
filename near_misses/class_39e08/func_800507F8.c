// NEAR MISS: -232 bytes, unaligned struct copy (lwl/lwr) + GP-relative
// D_8008AAC4 12-byte struct copy at 0x1E + func_80050948 call
// 2 attempts: byte loads, S3 struct - compiler didn't generate lwl/lwr
void *func_800507F8(void *arg0, void *arg1) {
    s32 t0;
    if (arg1 != 0) {
        t0 = 0xD;
        if (*(u8*)((char*)arg1 + 0xE) - 0x38 < 2) { t0 = 0xE; }
        *(s8*)((char*)arg0 + 0x18) = *(s8*)((char*)D_8008AAC4 + 0x1E);
        *(s8*)((char*)arg0 + 0x19) = *(s8*)((char*)D_8008AAC4 + 0x1F);
        *(S3*)((char*)arg0 + 0x6) = *(S3*)((char*)D_8008AAC4 + 0x1E);
        s32 result = func_80050948((char*)arg1 + t0);
        s32 idx = (result - 1) * 2;
        *(s8*)((char*)arg0 + 0x8) = *(s8*)((char*)D_8008AAC4 + idx);
        *(s8*)((char*)arg0 + 0x9) = *(s8*)((char*)D_8008AAC4 + idx + 1);
    } else {
        *(S3*)((char*)arg0 + 0x6) = *(S3*)((char*)D_8008AAC4 + 0x1E);
        *(s8*)((char*)arg0 + 0xA) = *(s8*)((char*)D_8008AAC4 + 0x22);
        *(s8*)((char*)arg0 + 0xB) = *(s8*)((char*)D_8008AAC4 + 0x23);
    }
    return arg0;
}
