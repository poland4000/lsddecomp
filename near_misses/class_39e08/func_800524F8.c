// NEAR MISS: -4 bytes (1 instruction), register allocation $v0 vs $v1
// Very close! Just the state variable lands in wrong register
void func_800524F8(void *arg0) {
    if (*(s32*)((char*)arg0 + 0x50) != 0) {
        s32 state = *(s32*)((char*)arg0 + 0x28);
        if (state - 1 >= 0) {
            s32 val = *(s32*)((char*)arg0 + 0x20);
            if (state - val > 0) {
                (*(void(**)(void*, s32, s32))((char*)*(void**)arg0 + 0x98))(arg0, 0, 1);
                return;
            }
            val = val - 1;
            *(s32*)((char*)arg0 + 0x20) = val;
            *(s32*)((char*)arg0 + 0x28) = state - 1;
            (*(void(**)(void*, s32, s32, s32, s32, s32))((char*)*(void**)arg0 + 0x94))(
                arg0, val, *(s32*)((char*)arg0 + 0x24), *(s32*)((char*)arg0 + 0x28), 1);
        }
    }
}
