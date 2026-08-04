// NEAR MISS: -188 bytes, goto structure destroyed the function
// Range check (2<=arg2<4 or 5<=arg2<9) + linked list scan + vtable call
// Needs proper if/else structure, not goto
void func_8004ADD8(void *arg0, void *arg1, s32 arg2) {
    if (arg2 >= 2) {
        if (arg2 < 4) {
            goto body;
        }
        if (arg2 < 9) {
            if (arg2 >= 5) {
                goto body;
            }
        }
        goto end;
    body:;
        void *s0 = *(void**)((char*)arg0 + 0xE8);
        if (s0 != 0) {
            if (*(s32*)s0 != 0) {
                while (*(s32*)s0 != 0) {
                    if (*(s32*)s0 == *(*(s32**)arg1)) {
                        (*(void(**)(void*, void*, s32))((char*)*(void**)arg0 + 0x12C))(arg0, arg1, arg2);
                    }
                    s0 = (void*)((s32*)s0 + 1);
                }
            }
        }
    }
    end:;
}
