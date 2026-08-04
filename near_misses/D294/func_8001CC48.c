void func_8001CC48(s32 arg0, s32 **arg1) {
    void *class = func_80018390();
    (*(void(**)(s32, s32**))(class + 0x10))(arg0, arg1);
    if ((**arg1 & 0xF) == 9) {
        func_8001E770(arg0, arg1);
    }
}
