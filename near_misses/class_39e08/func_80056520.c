// NEAR MISS: -28 bytes, call args + global access differ
// Has GP-relative D_8008ACA4/ACB0/ACA4/AB98 globals, switch on state
void func_80056520(void *arg0, void *arg1, void *arg2) {
    s32 sp_val;
    s32 state;
    func_80056794(&sp_val, arg2, (char*)arg0 + 0x58);
    func_800567D4(arg0, arg1, &sp_val, *(s32*)((char*)arg0 + 0x64), *(s32*)((char*)arg0 + 0x68));
    state = *(s32*)((char*)arg0 + 0x54);
    if (state < 2) {
        void *obj = *(void**)D_8008ACA4;
        (*(void(**)(void*, s32))((char*)obj + 0x80))(D_8008AB98[state], *(s32*)((char*)obj + 0x80));
        func_8001E770(arg0, (s32)func_8001E770(arg0, 0));
        state = *(s32*)((char*)arg0 + 0x54);
    }
    if (state == 0) {
        func_80056858(arg0, 0);
    } else if (state == 2) {
        func_80056BBC(arg0, 0);
    } else if (state == 3) {
        func_80056E1C(arg0, 0);
    }
}
