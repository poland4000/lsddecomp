// NEAR MISS: -108 bytes (best index version) - nested pointer-chasing loops
// 3-level loop: idx table at 0x8C+i*0xC, bounds at 0x90/92/94/96+i*0xC
// vtable chains via ->0x38 linked list, bitmask 0x7FFFFFFF/0x80000000
// 3 attempts: index loops, pointer advancing - t-reg codegen differs
void func_8004CE24(void *arg0, s32 arg1) {
    s32 i, j, k;
    for (i = 0; i < *(s32*)((char*)arg0 + 0x88); i++) {
        s32 idx = *(s32*)((char*)arg0 + 0x8C + i * 0xC);
        void *obj = *(void**)((char*)arg0 + idx * 0x1C + 0xF0);
        if (*(s16*)((char*)obj + 0x2C) != 0) {
            for (j = 0; j < *(s16*)((char*)arg0 + 0x96 + i * 0xC); j++) {
                void *list = *(void**)((char*)obj + 0x10);
                for (k = 0; k < *(s16*)((char*)arg0 + 0x94 + i * 0xC); k++) {
                    void *v = *(void**)((char*)list + *(s16*)((char*)arg0 + 0x90 + i * 0xC) * 4 + *(s16*)((char*)arg0 + 0x92 + i * 0xC) * 5 * 16 + k * 4);
                    s32 val = *(s32*)((char*)*(void**)v + 0x10);
                    if (arg1) { val = val & 0x7FFFFFFF; } else { val = val | 0x80000000; }
                    *(s32*)((char*)*(void**)v + 0x10) = val;
                    void *next = *(void**)((char*)*(void**)v + 0x38);
                    while (next != 0) {
                        val = *(s32*)((char*)next + 0x10);
                        if (arg1) { val = val & 0x7FFFFFFF; } else { val = val | 0x80000000; }
                        *(s32*)((char*)next + 0x10) = val;
                        next = *(void**)((char*)next + 0x38);
                    }
                }
            }
        }
    }
}
