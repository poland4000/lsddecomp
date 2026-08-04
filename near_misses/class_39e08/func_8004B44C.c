// NEAR MISS: +4 bytes (best) - 3D math, t-reg allocation + delay-slot store
// Target: lw arg2->0x4 FIRST, then 5th arg, check, then compute
// sw v1->arg1->0x0 is in delay slot of beqz (always executes)
// 4 attempts: load order, arg4 direct, split stores - t-reg alloc persists
void *func_8004B44C(void *arg0, void *arg1, void *arg2, void *arg3, void *arg4) {
    s32 t0, t1, t2, t3, t4, v1;
    if (*(s32*)((char*)arg2 + 0x4) == 0) {
        t0 = *(s8*)((char*)arg4 + 0x1);
        t1 = *(s16*)((char*)arg2 + 0x2);
        v1 = *(s8*)((char*)arg4 + 0x0);
        t4 = v1 + *(s16*)((char*)arg2 + 0x0) * t0;
    } else {
        t1 = 1; t0 = 0; t4 = 0;
    }
    t2 = (s32)arg4; t3 = (s32)arg0;
    v1 = *(s32*)((char*)arg3 + 0x0) - ((*(s16*)((char*)arg2 + 0x0) * 5) << 12);
    v1 = v1 + ((*(s8*)((char*)t2 + 0x0) * 5) << 13);
    *(s32*)((char*)arg1 + 0x0) = v1;
    if ((t0 & 1) != 0) { *(s32*)((char*)arg1 + 0x0) = v1 - 0x5000; }
    *(s32*)((char*)arg1 + 0x8) = *(s32*)((char*)arg3 + 0x8) - ((t1 * 5) << 12) + ((t0 * 5) << 13);
    *(s32*)((char*)arg1 + 0x4) = *(s32*)((char*)arg3 + 0x4);
    *(s32*)((char*)arg0 + 0x0) = (*(s8*)((char*)t2 + 0x2) << 11) + *(s32*)((char*)arg1 + 0x0) + (*(s16*)((char*)t2 + 0x4) + 0x400);
    *(s32*)((char*)arg0 + 0x4) = *(s16*)((char*)t2 + 0x6) + *(s32*)((char*)arg1 + 0x4);
    *(s32*)((char*)arg0 + 0x8) = (*(s8*)((char*)t2 + 0x3) << 11) + *(s32*)((char*)arg1 + 0x8) + (*(s16*)((char*)t2 + 0x8) + 0x400);
    *(s32*)((char*)arg1 + 0x0) = *(s32*)((char*)arg1 + 0x0) + 0x5000;
    *(s32*)((char*)arg1 + 0x8) = *(s32*)((char*)arg1 + 0x8) + 0x5000;
    return (void*)t4;
}
