// NEAR MISS: -68 bytes, C structure completely wrong
// Target calls func_80018390 once, uses return->0x10 for vtable call
// Switch on (val & 0xF/0xFF) with cross-jumping to shared epilogue
// Needs proper if/else chain structure
void func_8004E444(void *arg0, void *arg1) {
    if (arg1 != 0) {
        func_80018390();
        (*(void(**)(void*, void*))((char*)*(void**)func_80018390() + 0x10))(arg0, arg1);
        s32 val = *(s32*)((char*)*(void**)arg1);
        if ((val & 0xF) == 2) {
            *(s32*)((char*)arg0 + 0x60) = (s32)arg1;
        } else if ((val & 0xFF) == 5) {
            *(s32*)((char*)arg0 + 0x64) = (s32)arg1;
        } else if ((val & 0xFF) == 0x10) {
            *(s32*)((char*)arg0 + 0x78) = (s32)arg1;
        } else if ((val & 0xFF) == 0x20) {
            *(s32*)((char*)arg0 + 0x7C) = (s32)arg1;
        }
    }
}
