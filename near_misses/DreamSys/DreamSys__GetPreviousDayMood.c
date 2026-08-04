void DreamSys__GetPreviousDayMood(void *arg0, void *arg1, s32 arg2) {
    s32 t0 = 0;
    s32 t1 = 0;
    if (arg2 != 0) {
        if (*(s32*)((char*)arg0 + 0x17C) != 0 || *(s32*)((char*)arg0 + 0x180) != 0) {
            s32 v0 = (*(s32*)((char*)arg0 + 0x180) - 1) * 2;
            t1 = *(s8*)((char*)arg0 + v0 + 0x190);
            t0 = *(s8*)((char*)arg0 + v0 + 0x191);
            *(s8*)arg1 = t1;
            *(s8*)((char*)arg1 + 1) = t0;
            return;
        }
    } else {
        if (*(s32*)((char*)arg0 + 0x17C) != 0) {
            arg2 = 0x16D;
        } else {
            arg2 = *(s32*)((char*)arg0 + 0x180);
        }
        if (arg2 != 0) {
            s32 i = 0;
            char *p;
            p = (char*)arg0 + 0x190;
            if (t0 < arg2) {
                do {
                    i++;
                    t1 += *(s8*)p;
                    t0 += *(s8*)(p + 1);
                    p += 2;
                } while (i < arg2);
            }
            t1 = t1 / arg2;
            t0 = t0 / arg2;
        }
    }
    *(s8*)arg1 = t1;
    *(s8*)((char*)arg1 + 1) = t0;
}
