void DreamSys__func_58968(void *arg0, void *arg1) {
    s32 local[4];
    (*(void(**)(void*, void*, void*, void*))((char*)*(void**)arg1 + 0xE4))(arg1, local, arg0, (char*)arg0 + 0x16C);
    (*(void(**)(void*, void*, void*))((char*)func_80057C84() + 0x4C))(arg0, arg1, local);
    (*(void(**)(void*, void*))((char*)*(void**)arg0 + 0x10))(arg0, arg1);
    if (*(s32*)((char*)arg0 + 0x44) == 0xE) {
        void *s0 = (char*)arg0 + *(s32*)((char*)arg0 + 0x87C) * 36 + 0x470;
        (*(void(**)(void*, s32, void*))((char*)*(void**)arg0 + 0x44))(arg0, 1, (char*)s0 + 0xE);
        (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x104))(arg0, *(s16*)((char*)s0 + 0x1A) + 4);
        *(s32*)((char*)arg0 + 0x87C) += 1;
    }
    if (*(s32*)((char*)arg0 + 0x6C) != 0 && *(s32*)((char*)arg0 + 0x888) != 0) {
        (*(void(**)(void*, s32, void*))((char*)*(void**)arg0 + 0x44))(arg0, 1, *(void**)((char*)arg0 + 0x888));
    }
}
