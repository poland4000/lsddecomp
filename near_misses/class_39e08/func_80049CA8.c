// NEAR MISS: 0 diff but 68 insn diffs - switch structure + func_80049E20 wrong
// Switch on arg0->0x3C (1/2/3) with vtable chains, ends with func_80049E20
void func_80049CA8(void *arg0, void *arg1, s32 arg2) {
    (*(void(**)(void*, void*, s32))((char*)*(void**)func_8004A4B8() + 0x54))(arg0, arg1, arg2);
    if (arg2 == 2) {
        s32 v1 = *(s32*)((char*)arg0 + 0x3C);
        if (v1 != 2) {
            if (v1 < 3) {
                if (v1 == 1) {
                    void *temp = *(void**)((char*)arg0 + 0x38);
                    if ((*(s32(**)(void*))((char*)*(void**)temp + 0x1B4))(temp) < 0) {
                        temp = *(void**)((char*)arg0 + 0x38);
                        (*(void(**)(void*, s32))((char*)*(void**)temp + 0x1B8))(temp, 0);
                        *(s32*)((char*)arg0 + 0x28) = arg2;
                        (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x60))(arg0, 3);
                    }
                }
            } else if (v1 == 3) {
                void *temp = *(void**)((char*)arg0 + 0x4C);
                (*(void(**)(void*))((char*)*(void**)temp + 0x48))(temp);
                temp = *(void**)((char*)arg0 + 0x4C);
                (*(void(**)(void*))((char*)*(void**)temp + 0x4))(temp);
                temp = *(void**)((char*)arg0 + 0x38);
                (*(void(**)(void*))((char*)*(void**)temp + 0x1E0))(temp);
                func_80049E20(arg0, (s32)func_80049E20(arg0, 0));
            }
        }
    }
}
