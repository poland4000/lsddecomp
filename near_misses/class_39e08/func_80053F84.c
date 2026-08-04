// NEAR MISS: -40 bytes (best attempt 2) - arg2==5/6 switch + vtable chain
// Target pre-loads s2=5 in prologue, compares arg2 against it
// 3 attempts: early return, else-if, goto - none match s2 pre-load pattern
void func_80053F84(void *arg0, void *arg1, s32 arg2) {
    void *temp;
    if (arg2 == 5) {
        (*(void(**)(void*, void*))((char*)*(void**)arg0 + 0x14))(arg0, arg1);
        temp = *(void**)((char*)arg0 + 0x3C);
        (*(void(**)(void*, s32))((char*)*(void**)temp + 0xF4))(temp, 0);
        *(s32*)((char*)arg0 + 0x20) = 0;
    } else if (arg2 == 6) {
        (*(void(**)(void*, void*))((char*)*(void**)arg0 + 0x14))(arg0, arg1);
        (*(void(**)(void*))((char*)*(void**)*(void**)((char*)arg1) + 0xE4))(arg1);
        temp = *(void**)((char*)arg0 + 0x18);
        (*(void(**)(void*))((char*)*(void**)temp + 0x64))(temp);
        s32 v1 = *(s32*)((char*)arg0 + 0x20);
        if (v1 == 5 || v1 == 8 || v1 == 0xA) {
            temp = *(void**)((char*)arg0 + 0x3C);
            (*(void(**)(void*, s32))((char*)*(void**)temp + 0x17C))(temp, 1);
            temp = *(void**)((char*)arg0 + 0x3C);
            (*(void(**)(void*, s32))((char*)*(void**)temp + 0xF4))(temp, 0);
            *(s32*)((char*)arg0 + 0x20) = 4;
            (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x30))(arg0, *(s32*)((char*)arg0 + 0x20));
        }
    }
}
