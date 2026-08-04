// NEAR MISS: -4 bytes but 48 insn diffs - save order (s0-s4) cascades
// Byte arithmetic on arg1[2],arg1[3] with 0x13 checks, 4 shorts stored
void func_8004B030(void *arg0, void *arg1, s32 arg2) {
    s32 b0 = *(s8*)((char*)arg1 + 0x2);
    s32 b1 = *(s8*)((char*)arg1 + 0x3);
    s32 v3 = b0;
    s32 v1 = 1;
    s32 v4 = arg2;
    s32 v5 = arg2;
    if (b0 != 0) { b0 = b0 - 1; } else { v4 = arg2 - 1; }
    if (v3 == 0x13) { v4 = v4 - 1; }
    if (b1 != 0) { b1 = b1 - 1; } else { v5 = arg2 - 1; }
    if (b1 == 0x13) { v5 = v5 - 1; }
    *(s32*)((char*)arg0 + 0x88) = 1;
    *(s32*)((char*)arg0 + 0x8C) = (*(s32(**)(void*, s32))((char*)*(void**)arg0 + 0x124))(arg0, *(s32*)((char*)arg1 + 0x28));
    *(s16*)((char*)arg0 + 0x90) = b0;
    *(s16*)((char*)arg0 + 0x92) = b1;
    *(s16*)((char*)arg0 + 0x94) = v4;
    *(s16*)((char*)arg0 + 0x96) = v5;
}
