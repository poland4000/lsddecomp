// NEAR MISS: +12 bytes (3 extra lui/lw pairs for D_80086990)
// Target loads D_80086990 base once via lui/addiu, then 3 loads
// Our output re-evaluates D_80086990 address 3 times
// Also: ra saved after s0 computation, before loads (interleaved prologue)

s32 func_8004CDA4(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    void *s0 = (void*)((char*)arg0 + (arg2 * 12 + 0x8C));
    void *s1 = (void*)arg2;
    *(s32*)((char*)s0 + 0x0) = D_80086990[0];
    *(s32*)((char*)s0 + 0x4) = D_80086990[1];
    *(s32*)((char*)s0 + 0x8) = D_80086990[2];
    *(s32*)((char*)s0 + 0x0) = (*(s32(**)(void*, s32))((char*)*(void**)arg0 + 0x124))(arg0, arg3);
    return s1 + 1;
}
