// NEAR MISS: +8 bytes (best else-if version)
// Target chains bne compares loading next value in delay slot
// Ours re-masks with 0xFF too early
// Call site: target loads func_80018390()->0x14 directly
// Best version uses inline func call in the vtable dispatch
void func_8004E4E8(void *arg0, void *arg1) {
    if (arg1 != 0) {
        s32 val = *(s32*)((char*)*(void**)arg1);
        if ((val & 0xF) == 2) {
            *(s32*)((char*)arg0 + 0x60) = 0;
        } else if ((val & 0xFF) == 5) {
            *(s32*)((char*)arg0 + 0x64) = 0;
        } else if ((val & 0xFF) == 0x10) {
            *(s32*)((char*)arg0 + 0x78) = 0;
        } else if ((val & 0xFF) == 0x20) {
            *(s32*)((char*)arg0 + 0x7C) = 0;
        }
        (*(void(**)(void*, void*))((char*)*(void**)func_80018390() + 0x14))(arg0, arg1);
    }
}
