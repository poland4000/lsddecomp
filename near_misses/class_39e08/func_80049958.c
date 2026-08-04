// NEAR MISS: 4 bytes larger (1 extra instruction), cascades shift everything
// The function body is correct but has 1 extra nop/insn that shifts all addresses
// Root cause: C structure produces slightly different control flow

void func_80049958(void *arg0, void *arg1, s32 arg2) {
    void *s0;
    void *s1;
    void *s2;
    s32 temp;
    void *vtable;

    s0 = arg0;
    s1 = arg1;
    s2 = (void*)arg2;
    vtable = func_8004A4B8();
    (*(void(**)(void*, void*, void*))((char*)*(void**)vtable + 0x38))(s0, s1, s2);
    temp = *(s32*)((char*)*(void**)s1);
    if ((temp & 0xFFFF) == 0x1F34) {
        vtable = *(void**)s0;
        (*(void(**)(void*, void*, void*))((char*)vtable + 0x80))(s0, s1, s2);
        return;
    }
    if ((temp & 0xFFFFF) == 0x2F230) {
        vtable = *(void**)s0;
        (*(void(**)(void*, void*, void*))((char*)vtable + 0x84))(s0, s1, s2);
    }
}
