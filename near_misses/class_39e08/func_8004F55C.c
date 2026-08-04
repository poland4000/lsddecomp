// NEAR MISS: +4 bytes (1 extra instruction), cascade shifts
// Prologue saves come before stack arg loads in target
// Our output interleaves saves and arg loads differently

void func_8004F55C(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    void *s0 = arg0;
    void *s1 = (void*)arg3;
    *(s32*)((char*)s0 + 0x30) = arg1;
    *(s32*)((char*)s0 + 0x34) = arg2;
    *(s32*)((char*)s0 + 0x38) = 0;
    *(s32*)((char*)s0 + 0x68) = arg4;
    *(s32*)((char*)s0 + 0x6C) = arg5;
    (*(void(**)(void*, void*))((char*)*(void**)s0 + 0x10))(s0, s1);
    (*(void(**)(void*, void*))((char*)*(void**)s0 + 0x10))(s0, s1);
    *(s32*)((char*)s0 + 0x70) = 0;
    *(s32*)((char*)s0 + 0x28) = 0;
    *(s32*)((char*)s0 + 0x24) = 0;
}
