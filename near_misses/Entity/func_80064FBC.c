/* func_80064FBC — PARKED (7 region diffs @ 80064FCC-80064FE4, size matches).
 * 63/70 instructions byte-perfect. The only remaining difference:
 *   orig: [sw s1,0x14] [addu s1,a3] [sw ra] ... [bne] [delay: sw zero,0x10(a1)]
 *   build: [sw s1,0x14] [sw ra] ... [bne] [delay: addu s1,a3] ... [ori v0,4] [sw zero]
 * The sched2 defers the arg3->s1 param move to the bne's delay slot and
 * hoists the ori v0,4 above the first store — the Session 11 save-
 * interleaving blocker (same as func_800567D4). NOT expressible from C:
 * register s32 a3v __asm__("s1") binding gives identical output.
 * Structure fully decoded: arg1[4]==6 -> arg1[0x10]=0, arg1[0x1C/0x30/0x44]=4;
 * FC in [a2, a2+0x5B] U [a2+0x155, a2+0x1B1] U [a2+0x2BA, a2+0x317] ->
 * [0x11](s0,0,&D_80089D18); [0x31](s0, arg4, 0); FC==arg3 -> [0x58](s0), state=1. */
void func_80064FBC(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 v1;

    if (*(s32 *)((char *)arg1 + 4) == 6) {
        *(s32 *)((char *)arg1 + 0x10) = 0;
        *(s32 *)((char *)arg1 + 0x1C) = 4;
        *(s32 *)((char *)arg1 + 0x30) = 4;
        *(s32 *)((char *)arg1 + 0x44) = 4;
    }
    v1 = *(s32 *)((char *)arg0 + 0xFC);
    if ((v1 >= arg2 && v1 <= arg2 + 0x5B) ||
        (v1 >= arg2 + 0x155 && v1 <= arg2 + 0x1B1) ||
        (v1 >= arg2 + 0x2BA && v1 <= arg2 + 0x317)) {
        ((void (**)(void *, s32, void *))*(s32 **)arg0)[0x11](arg0, 0, &D_80089D18);
    }
    ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x31](arg0, arg4, 0);
    if (*(s32 *)((char *)arg0 + 0xFC) == arg3) {
        ((void (**)(void *))*(s32 **)arg0)[0x58](arg0);
        *(s32 *)((char *)arg0 + 0x44) = 1;
    }
}

