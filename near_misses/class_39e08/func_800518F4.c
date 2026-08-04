// NEAR MISS: -8 bytes, GP-relative global addresses differ
// Stack struct layout (sp_val1 at 0x14, sp_val2 at 0x10) not matching
void func_800518F4(void *arg0, s32 arg1, s32 arg2) {
    if (*(s32*)((char*)arg0 + 0x48) != 0) {
        s32 sp_val1 = D_8008AAE0;
        s32 sp_val2 = D_8008AADC + arg1 * 7;
        void *temp = *(void**)((char*)arg0 + 0x40);
        (*(void(**)(void*, s32*))((char*)*(void**)temp + 0xBC))(temp, &sp_val2);
        *(s32*)((char*)arg0 + 0x18) = arg1;
        if (arg2 != 0) {
            (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x60))(arg0, 0);
        }
    }
}
