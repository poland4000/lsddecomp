// NEAR MISS: -96 bytes, save order (s0,ra,s1) + reg alloc
// vtable state machine: arg1->0x80/0x3C branches, arg0->0x60 gate
void func_800531CC(void *arg0, void *arg1) {
    s32 sp_val;
    if (*(s32*)((char*)arg0 + 0x60) != 0) {
        if (*(s32*)((char*)arg1 + 0x80) != 0) {
            (*(void(**)(void*))((char*)*(void**)*(void**)((char*)arg1) + 0x4))(arg1);
            *(s32*)((char*)arg0 + 0x60) = 0;
            (*(void(**)(void*))((char*)*(void**)arg0 + 0x80))(arg0);
            void *temp = *(void**)((char*)arg0 + 0x3C);
            sp_val = (*(s32(**)(void*))((char*)*(void**)temp + 0x108))(temp);
            temp = *(void**)((char*)arg0 + 0x3C);
            (*(void(**)(void*, s32))((char*)*(void**)temp + 0x104))(temp, sp_val + 0x1E);
        } else {
            if (*(s32*)((char*)arg1 + 0x3C) != 0) {
                void *sub = *(void**)((char*)arg0 + 0x50);
                void *a5;
                if (*(s32*)((char*)sub + 0x14) == 2) { a5 = *(void**)((char*)sub + 0xC); }
                else { a5 = *(void**)((char*)sub + 0x18); }
                (*(void(**)(void*, void*))((char*)*(void**)*(void**)((char*)arg1) + 0x7C))(arg1, a5);
                (*(void(**)(void*))((char*)*(void**)*(void**)((char*)arg1) + 0x4))(arg1);
                *(s32*)((char*)arg0 + 0x60) = 0;
                (*(void(**)(void*))((char*)*(void**)arg0 + 0x80))(arg0);
            }
        }
    }
    if (*(s32*)((char*)arg0 + 0x60) == 0) {
        if (*(u16*)((char*)*(void**)((char*)arg0 + 0x14) + 0x1B4) == 0) {
            if (*(s32*)((char*)arg0 + 0x68) == 0) {
                *(s32*)((char*)arg0 + 0x64) = 1;
                (*(void(**)(void*))((char*)*(void**)arg0 + 0x88))(arg0);
            }
        }
    }
}
