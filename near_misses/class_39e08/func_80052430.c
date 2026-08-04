// NEAR MISS: -8 bytes (2 fewer instructions, too small)
// Target uses $a2 for val, has stack arg (sw $v0,0x10($sp)) = 5th call arg
// Our register allocation and call args don't match

void func_80052430(void *arg0) {
    if (*(s32*)((char*)arg0 + 0x50) != 0) {
        s32 val = *(s32*)((char*)arg0 + 0x24);
        if (val + 0x1A < *(s32*)((char*)arg0 + 0x14)) {
            val = val + 1;
            *(s32*)((char*)arg0 + 0x24) = val;
            (*(void(**)(void*, s32, s32, s32, s32))((char*)*(void**)arg0 + 0x94))(
                arg0, *(s32*)((char*)arg0 + 0x20), *(s32*)((char*)arg0 + 0x28), 1);
        }
    }
}
