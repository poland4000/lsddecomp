// NEAR MISS: -8 bytes, GP-relative vs absolute addressing for D_8008ABAC etc
// Target uses lui/addiu (absolute), ours uses GP-relative
// Loop with 3-byte stack struct modified each iteration
void func_80058228(void *arg0) {
    s8 bytes[3];
    s32 i;
    s32 sub;
    *(s32*)((char*)arg0 + 0xA8) = func_800404D0(D_8008ABAC, D_8008ABB4, 0);
    bytes[0] = *(s8*)((char*)D_8008ABB8 + 0);
    bytes[1] = *(s8*)((char*)D_8008ABB8 + 1);
    bytes[2] = *(s8*)((char*)D_8008ABB8 + 2);
    for (i = 1; i < 0x64; i++) {
        *(s32*)((char*)arg0 + 0xA8 + i * 4) = func_800404D0(D_8008ABAC, bytes, 0);
        if (i < 7) { sub = 1; } else { sub = 0x14; }
        bytes[0] = bytes[0] - sub;
        bytes[1] = bytes[1] - sub;
        bytes[2] = bytes[2] - sub;
    }
    *(s32*)((char*)arg0 + 0x240) = func_80017B34(4);
}
