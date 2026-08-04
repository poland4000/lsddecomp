// NEAR MISS: -24 bytes, save order cascade + fn-pointer approach wrong
// Switch on val&0xF/0xFF selecting vtable method from *arg0, shared call
void func_8004FB04(void *arg0, void *arg1, s32 arg2) {
    s32 val;
    void *vtable = *(void**)arg0;
    void (*fn)(void*, void*, s32);
    (*(void(**)(void*, void*, s32))((char*)*(void**)func_80018390() + 0x38))(arg0, arg1, arg2);
    val = *(s32*)((char*)*(void**)arg1);
    if ((val & 0xF) == 2) {
        fn = (void (*)(void*, void*, s32))((char*)vtable + 0x88);
    } else if ((val & 0xFF) == 5) {
        fn = (void (*)(void*, void*, s32))((char*)vtable + 0x98);
    } else if ((val & 0xFF) == 0x10) {
        fn = (void (*)(void*, void*, s32))((char*)vtable + 0xA4);
    } else if ((val & 0xFF) == 0x20) {
        fn = (void (*)(void*, void*, s32))((char*)vtable + 0xB0);
    } else {
        return;
    }
    fn(arg0, arg1, arg2);
}
