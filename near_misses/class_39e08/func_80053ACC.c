// NEAR MISS: -228 bytes, switch produces different cross-jumping
// (val & 3) switch with cases 0-3, shared epilogue via func_80053EB4
// Target uses cross-jumping (j to shared call), ours doesn't
void func_80053ACC(void *arg0) {
    void *temp = *(void**)((char*)arg0 + 0x3C);
    *(s32*)((char*)arg0 + 0x20) = 4;
    s32 result = (*(s32(**)(void*, s32))((char*)*(void**)temp + 0xF0))(temp, -1);
    if (result != 0) {
        func_80053EB4(arg0, 0, 0, 5, 1);
        return;
    }
    s32 val = (*(s32*)((char*)arg0 + 0x1C) + *(s32*)((char*)arg0 + 0x38)) & 3;
    if (val == 0) {
        (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x30))(arg0, 4);
        return;
    }
    if (val == 1) {
        func_80053EB4(arg0, 0, 0, 0xA, 1);
        return;
    }
    if (val == 2) {
        func_80053EB4(arg0, 4, 0, 0xA, 1);
        return;
    }
    if (val == 3) {
        func_80053EB4(arg0, 7, 0, 5, 1);
        return;
    }
}
