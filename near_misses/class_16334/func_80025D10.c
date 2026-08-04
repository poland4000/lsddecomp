/* func_80025D10 — PARKED (bitmask-walk decoded fully; blockers are
 * compiler-behavior: orig keeps the table value in v1 and the 0x22/0x12/2/-1
 * selector in a0 (ours swaps them); orig's if/else-if chain uses
 * beq-to-next with the else (-1) in the delay + j-with-the-value (ours uses
 * bne-to-store with then-in-delay — also -1 instruction, the orig's t1-check
 * beq has a nop); s0/a1 delay-slot swap in the head. Structure:
 * if (t1||t0||a3) { walk D_8008B388 (16 entries): bit-tests t0->0x22,
 * a3->0x12, t1->0x2, none->-1; store a0+a1 into sp10[16] if a0>=0;
 * then walk the collected values backwards calling vtable[0x30](arg0, v). }
 * Frame: s32 sp10[16] (0x40 bytes, saves at 0x50, frame 0x68). */
void func_80025D10(void *arg0) {
    s32 sp10[16];
    s32 t1 = *(s32 *)((char *)arg0 + 0x10);
    s32 t0 = *(s32 *)((char *)arg0 + 0x14);
    s32 a3 = *(s32 *)((char *)arg0 + 0x18);
    s32 a1;
    s32 a0;
    s32 *s0;
    s32 *s2;
    s32 *a2;
    void (*fn)(void *, s32);

    if (t1 != 0 || t0 != 0 || a3 != 0) {
        s0 = sp10;
        a1 = 0;
        a2 = D_8008B388;
        do {
            if ((t0 & *a2) == 0) {
                if ((a3 & *a2) == 0) {
                    if ((t1 & *a2) == 0) {
                        a0 = -1;
                    } else {
                        a0 = 0x2;
                    }
                } else {
                    a0 = 0x12;
                }
            } else {
                a0 = 0x22;
            }
            if (a0 >= 0) {
                *s0 = a0 + a1;
                s0++;
            }
            a1++;
            a2++;
        } while (a1 < 0x10);
        s0--;
        fn = (void (*)(void *, s32))(*(void **)*(void **)((char *)arg0 + 0) + 0x30);
        if (s0 >= sp10) {
            s2 = sp10;
            do {
                fn(arg0, *s0);
                s0--;
            } while (s0 >= s2);
        }
    }
}

