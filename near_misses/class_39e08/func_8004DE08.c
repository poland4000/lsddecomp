// NEAR MISS: -4 bytes but 66 insn diffs - scheduling + s2 load order
// 3 s-regs, GP-relative D_8008AA18, call chain with sp_val struct
// Target loads s2 BEFORE func_80017B34 call
void func_8004DE08(void *arg0) {
    s32 s1, s2, sp_val;
    void *temp;
    s1 = func_80017B34(*(u8*)((char*)*(void**)((char*)arg0 + 0xB0) + 0xA9));
    s2 = *(s32*)((char*)arg0 + 0x58);
    func_80040FC0(s1, D_8008AA18);
    temp = *(void**)((char*)arg0 + 0xB0);
    (*(void(**)(void*, s32))((char*)*(void**)temp + 0xCC))(temp, s1);
    func_80017CFC(s1);
    func_8004D678(arg0, *(s32*)((char*)arg0 + 0x4C), *(s32*)((char*)arg0 + 0xA4));
    (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0xE0))(arg0, *(s32*)((char*)arg0 + 0x14));
    temp = *(void**)((char*)arg0 + 0xA4);
    (*(void(**)(void*, s32*))((char*)*(void**)temp + 0x19C))(temp, &sp_val);
    *(s32*)((char*)arg0 + 0x58) = 5;
    (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x60))(arg0, 0xB);
    (*(void(**)(void*, s32, s32))((char*)*(void**)arg0 + 0x11C))(arg0, sp_val, 1);
    (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x60))(arg0, 0xF);
    (*(void(**)(void*, s32, s32))((char*)*(void**)arg0 + 0xF0))(arg0, s2, 0);
    temp = *(void**)((char*)arg0 + 0xA4);
    (*(void(**)(void*, s32*))((char*)*(void**)temp + 0x19C))(temp, &sp_val);
}
