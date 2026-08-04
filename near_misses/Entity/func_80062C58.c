/*
 * func_80062C58 (Entity) — PARKED. Best state: 136 region diffs, build 8 bytes short.
 *
 * Semantics FULLY decoded and verified against the original:
 *   - head: `if (*(s32*)(arg1+4) == 0) { D_8008ACCC = 0; s1 = rand()%3;
 *     if (s1==1) 0x44=0xB; if (s1==2) 0x44=0xC; }`  [MATCHES byte-for-byte]
 *   - [0x52](arg0) -> arg1+0x10                       [MATCHES]
 *   - 0x90/&3 check, 0x1C=0x1C store                  [MATCHES]
 *   - `if (a1 == v1-1) { 0xFC = -1; goto L62DE4; }` then BIG section:
 *     a2 = v1; a0 = (v1 + ((u32)v1>>31)) >> 1; if (v1<0) a2 = v1+3; a2 >>= 2;
 *     [0x4B]/[0x4C]/[0x31](±0x6E, 0) chain with the 0x1C=0x10 store
 *     [MATCHES instruction-for-instruction]
 *   - 0xB section: [0x33](arg0,-0x17C,0); [0x11](arg0,0,&D_80089D0C); [0x5B](arg0);
 *     0x44=1; D_8008ACCC=1; then explicit `j 0x62F50` (orig keeps the jump;
 *     our cc1 folds the redundant >=0xC check — see blocker 2)
 *   - >=0xC section: `v0 = a0 / 60; v1 = v0 * 60; if (v1 == a0 - 0x1E)`
 *     NOTE: division is BY 60 (magic 0x88888889, mfhi+addu+sra5+subu), NOT /9
 *     (0x38E38E39)! `v0 = a0/60; v1 = v0*60` two-statement form required.
 *   - rand section: `[0x12](arg0, 1, a2)` — the a2 = &D_80089E50/E14 assignments
 *     are LIVE (fed to [0x12]); `[0x33](arg0, s1, 0)` passes 0 (a2=0 in its
 *     jalr delay slot). This is why the lui/addiu a2 survive in the original.
 *   - 0x208 tail: [0x5B](arg0); 0x44=1 when D_8008ACCC != 0  [MATCHES]
 *
 * Current diff state (136 region diffs, build 505848 = 8 short):
 *   RUN 0x62D18-0x62DC0 etc: the 0x80 value allocates to a2 and the 0xFC to v1
 *   (original: 0x80->v1, 0xFC->a1, a2-var->a2, /2->a0). The `a2 = v1` copy
 *   becomes a no-op and vanishes, and everything downstream shifts registers.
 *   greg shows 75(0x80)->3 and 77(0xFC)->3 SHARED (flow says they don't
 *   conflict because 77's first range dies at the head bne), but the FINAL
 *   output has 0x80 in a2 — i.e. reload/final moved 75 v1->a2. The trigger:
 *   making a2 live across the rand section ([0x12] 3rd arg) lengthens the
 *   a2-var qty and flips the allocation order vs the original.
 *   With the 2-arg [0x12] (dead a2) the middle matched perfectly (106 diffs,
 *   only /9-vs-/60 + missing j + missing lui differed) — so the allocator
 *   behavior for the live-a2 form needs the right qty birth/order, e.g.:
 *   - try `register s32 a2 __asm__("a2")` binding
 *   - try moving `a2 = v1` (the copy) after the /2 chain again WITH the live
 *     [0x12] arg
 *   - try `v1 = *(s32*)(arg0+0x44)` in the 0xB section as a separate variable
 *     name (v1-var spans whole function in current C)
 *   - if the gp store 0x4C4 vs 0x4AC persists it follows from the 8-byte
 *     size shortfall (data layout shift), not from this function's code.
 */
void func_80062C58(void *arg0, void *arg1) {
    s32 v;
    s32 v0;
    s32 v1;
    s32 a0;
    s32 a1;
    s32 a2;
    s32 s1;

    if (*(s32 *)((char *)arg1 + 0x4) == 0) {
        D_8008ACCC = 0;
        s1 = rand() % 3;
        if (s1 == 1) {
            *(s32 *)((char *)arg0 + 0x44) = 0xB;
        }
        if (s1 == 2) {
            *(s32 *)((char *)arg0 + 0x44) = 0xC;
        }
    }
    v = ((s32 (**)(void *))*(s32 **)arg0)[0x52](arg0);
    *(s32 *)((char *)arg1 + 0x10) = v;
    if (*(s32 *)((char *)arg0 + 0x90) != 0) {
        if ((*(s32 *)((char *)arg1 + 0x4) & 3) == 0) {
            *(s32 *)((char *)arg1 + 0x1C) = 0x1C;
        }
    }
    v1 = *(s32 *)((char *)arg0 + 0x80);
    a1 = *(s32 *)((char *)arg0 + 0xFC);
    a2 = v1;
    if (a1 == v1 - 1) {
        *(s32 *)((char *)arg0 + 0xFC) = -1;
        goto L62DE4;
    }
    a0 = (v1 + (s32)((u32)v1 >> 31)) >> 1;
    if (v1 < 0) {
        a2 = v1 + 3;
    }
    a2 = a2 >> 2;
    if (a1 >= a0 + a2) {
        ((void (**)(void *))*(s32 **)arg0)[0x4B](arg0);
    } else {
        if (a1 >= a0) {
            if (a1 == a0) {
                *(s32 *)((char *)arg1 + 0x1C) = 0x10;
            }
            ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x31](arg0, 0x6E, 0);
        } else {
            if (a1 >= a2) {
                ((void (**)(void *))*(s32 **)arg0)[0x4C](arg0);
                ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x31](arg0, -0x6E, 0);
            }
        }
    }
L62DE4:
    v1 = *(s32 *)((char *)arg0 + 0x44);
    if (v1 == 0xB) {
        if (*(s32 *)((char *)arg1 + 0x4) == 0x1FE) {
            ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x33](arg0, -0x17C, 0);
            ((void (**)(void *, s32, void *))*(s32 **)arg0)[0x11](arg0, 0, &D_80089D0C);
            ((void (**)(void *))*(s32 **)arg0)[0x5B](arg0);
            *(s32 *)((char *)arg0 + 0x44) = 1;
            D_8008ACCC = 1;
        }
    }
    if (*(s32 *)((char *)arg0 + 0x44) >= 0xC) {
        a0 = *(s32 *)((char *)arg1 + 0x4);
        if (a0 >= 0x14A) {
            v0 = a0 / 60;
            v1 = v0 * 60;
            if (v1 == a0 - 0x1E) {
                s1 = 0;
                v = rand();
                if ((v & 1) != 0) {
                    a2 = (s32)&D_80089E50;
                    s1 = (*(s32 *)((char *)arg0 + 0x44) == 0xC) ? 0x190 : 0;
                    *(s32 *)((char *)arg0 + 0x44) = 0xD;
                } else {
                    a2 = (s32)&D_80089E14;
                    v1 = *(s32 *)((char *)arg0 + 0x44);
                    if (v1 == 0xD) {
                        s1 = -0x190;
                    }
                    *(s32 *)((char *)arg0 + 0x44) = 0xC;
                }
                ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x12](arg0, 1, a2);
                ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x33](arg0, s1, 0);
            }
        }
    }
    if (*(s32 *)((char *)arg1 + 0x4) == 0x208) {
        if (D_8008ACCC != 0) {
            ((void (**)(void *))*(s32 **)arg0)[0x5B](arg0);
            *(s32 *)((char *)arg0 + 0x44) = 1;
        }
    }
}
