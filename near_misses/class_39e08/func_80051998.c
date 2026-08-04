// NEAR MISS: -80 bytes, structure completely wrong
// GP-relative loads for D_8008AAE4, byte copy, vtable call
// Needs different C structure for the byte copy and array access
void func_80051998(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    if (*(s32*)((char*)arg0 + 0x48) != 0) {
        *(u8*)(*(s32*)((char*)arg0 + 0x28) + arg1) = *(u8*)(D_8008AAE4 + arg2);
        void *temp = *(void**)((char*)arg0 + 0x44);
        (*(void(**)(void*, s32))((char*)*(void**)temp + 0xC4))(temp, arg1);
        *(s32*)((char*)arg0 + 0x18) = arg1;
        *(s32*)((char*)arg0 + 0x1C) = arg2;
        if (arg3 != 0) {
            (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x60))(arg0, 0);
        }
    }
}
