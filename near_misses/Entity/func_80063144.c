/*
 * func_80063144 (Entity, 0x364 — the big one) — PARKED. Best state: 152 region
 * diffs, build 505844 (12 bytes short; 3 instructions).
 *
 * Semantics FULLY decoded; the whole control flow matches instruction-for-
 * instruction except scheduling/allocation differences:
 *   - head: if (arg0->0xFC == 0) { if (rand()&1) arg0->0x44 = rand()%3; }
 *     [MATCHES byte-for-byte]
 *   - if (0x44 != 0 && 0xF4 != 0) { ... } else { L63380 } — layout matches.
 *   - `if (arg1->4 >= 61) arg1->4 = 0;` then `a0 = arg1->4 % 20;`
 *     (magic 0x66666667, mfhi>>3 = /20 — NOT /10!) then the 0x17-store body
 *     (arg1->0x1C/0x30/0x44 = 0x17, 0x10 = 0, 0x20/0x34 = -1, 0x48 = -2)
 *     and the 0xE body (0x1C/0x30/0x44 = -2). [structure matches]
 *   - func_8001EACC(arg0, arg0->0x94, 1, 0, 0) (5 args, 0x10(sp) slot).
 *   - s2 = 0x44 dispatch:
 *     s2 == 1: s1 = -0x176; [0x12](arg0, 0, &D_80089E08) — NOTE: symbol is
 *       D_80089E08 (lui 0x8009; addiu -25080 = 0x9E08), extern added.
 *       [0x51](arg0, arg0->0x94); if (result < 512) { [0x58](arg0);
 *       arg0->0x44 = s2; goto L63448; } goto L6344C;
 *     else: [0x4C](arg0->0x94, 1); func_8001EACC(arg0->0x94, arg0, 1, 1, 0);
 *       s1 = 0; if (0x44 == 2) { [0x51](...); s1 = -0x60;
 *       if (result < 2400) { 0x44 = 0xB; [0xC](arg0, 0xC); } goto L6344C; }
 *       goto L63448;
 *   - L63380 (else): v0 = [0x52](arg0); arg1->0x10 = v0;
 *     if (arg1->4 % 22 == 0) arg1->0x1C = 0x1C;   (magic 0x2E8BA2E9, mfhi>>2)
 *     if (arg0->0xFC >= 501) func_8001EACC(arg0, arg0->0x94, 1, 0, 0);
 *     [0x51](...); s1 = -0x14; if (result < 2048) { [0x31](arg0->0x94,
 *     -2048, 0); } goto L63448;
 *   - tail: [0x34](arg0, s1, 1); if (arg0->0x28) [0x33](arg0, -200, 0);
 *     [MATCHES]
 *
 * Remaining diffs (all scheduling/allocation, no semantic gaps):
 *   1. The ==2 path: original keeps `beq → 0x63378 (a shared j → L6344C,
 *      delay: a0=s0)` — a jump-to-jump; our cc1's jump2/final THREADS it
 *      (beq → the tail's a0-entry directly, a0=s0 moved into the beq's
 *      delay). This is the 8-byte (2-insn) size difference. The RTL has the
 *      j-to-j (verified in .rtl: jump 287 → label 309 → jump 311 → 433); the
 *      threading happens after the -dr dump. C-level goto/label restructures
 *      (explicit L63378 double-goto, s1 inside/outside the if) do NOT change
 *      it — it's the threader/scheduler tiebreak (same class as the plan's
 *      documented cc1 schedule_select difference).
 *   2. [0x12] call setup: orig bne-delay = `addu a0,s0`, a1=0 before the
 *      jalr, s1=-374 in the jalr's delay; build hoists the else-path's
 *      `ori a1,1` into the bne-delay and puts a1=0 in the jalr's delay.
 *   3. % 20 chain register swap: orig mfhi->v1/sign->v0/remainder->a0;
 *      build mfhi->v0/sign->v1/remainder->v1.
 *   4. 0x17-store body: orig hoists `addiu v1,-1` before the 0x17 stores.
 *   Once the ==2 threading is solved the 8-byte shift resolves the
 *   downstream addiu-immediate diffs (D_80089E08 references 0x9DFC vs
 *   0x9E08 — data-layout shift, not a symbol error).
 */
void func_80063144(void *arg0, void *arg1) {
    s32 v;
    s32 v0;
    s32 a0;
    s32 s1;
    s32 s2;

    if (*(s32 *)((char *)arg0 + 0xFC) == 0) {
        v = rand();
        if ((v & 1) != 0) {
            *(s32 *)((char *)arg0 + 0x44) = rand() % 3;
        }
    }
    if (*(s32 *)((char *)arg0 + 0x44) != 0 && *(s32 *)((char *)arg0 + 0xF4) != 0) {
        if (*(s32 *)((char *)arg1 + 0x4) >= 61) {
            *(s32 *)((char *)arg1 + 0x4) = 0;
        }
        a0 = *(s32 *)((char *)arg1 + 0x4) % 20;
        if (a0 == 0) {
            *(s32 *)((char *)arg1 + 0x1C) = 0x17;
            *(s32 *)((char *)arg1 + 0x30) = 0x17;
            *(s32 *)((char *)arg1 + 0x44) = 0x17;
            *(s32 *)((char *)arg1 + 0x10) = 0;
            *(s32 *)((char *)arg1 + 0x20) = -1;
            *(s32 *)((char *)arg1 + 0x34) = -1;
            *(s32 *)((char *)arg1 + 0x48) = -2;
        } else if (a0 == 0xE) {
            *(s32 *)((char *)arg1 + 0x1C) = -2;
            *(s32 *)((char *)arg1 + 0x30) = -2;
            *(s32 *)((char *)arg1 + 0x44) = -2;
        }
        func_8001EACC(arg0, *(s32*)((s8*)arg0 + 0x94), 1, 0, 0);
        s2 = *(s32 *)((char *)arg0 + 0x44);
        if (s2 == 1) {
            s1 = -0x176;
            ((void (**)(void *, s32, void *))*(s32 **)arg0)[0x12](arg0, 0, &D_80089E08);
            v0 = ((s32 (**)(void *, s32))*(s32 **)arg0)[0x51](arg0, *(s32 *)((char *)arg0 + 0x94));
            if (v0 < 512) {
                ((void (**)(void *))*(s32 **)arg0)[0x58](arg0);
                *(s32 *)((char *)arg0 + 0x44) = s2;
                goto L63448;
            }
            goto L6344C;
        } else {
            ((void (**)(void *, s32))*(s32 **)arg0)[0x4C](*(void **)((char *)arg0 + 0x94), 1);
            func_8001EACC(*(s32*)((s8*)arg0 + 0x94), arg0, 1, 1, 0);
            s1 = 0;
            if (*(s32 *)((char *)arg0 + 0x44) == 2) {
                v0 = ((s32 (**)(void *, s32))*(s32 **)arg0)[0x51](arg0, *(s32 *)((char *)arg0 + 0x94));
                s1 = -0x60;
                if (v0 < 2400) {
                    *(s32 *)((char *)arg0 + 0x44) = 0xB;
                    ((void (**)(void *, s32))*(s32 **)arg0)[0xC](arg0, 0xC);
                }
                goto L6344C;
            }
            goto L63448;
        }
    } else {
        v0 = ((s32 (**)(void *))*(s32 **)arg0)[0x52](arg0);
        *(s32 *)((char *)arg1 + 0x10) = v0;
        if (*(s32 *)((char *)arg1 + 0x4) % 22 == 0) {
            *(s32 *)((char *)arg1 + 0x1C) = 0x1C;
        }
        if (*(s32 *)((char *)arg0 + 0xFC) >= 501) {
            func_8001EACC(arg0, *(s32*)((s8*)arg0 + 0x94), 1, 0, 0);
        }
        v0 = ((s32 (**)(void *, s32))*(s32 **)arg0)[0x51](arg0, *(s32 *)((char *)arg0 + 0x94));
        s1 = -0x14;
        if (v0 < 2048) {
            ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x31](*(void **)((char *)arg0 + 0x94), -2048, 0);
        }
        goto L63448;
    }
L6344C:
L63448:
    ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x34](arg0, s1, 1);
    if (*(s32 *)((char *)arg0 + 0x28) != 0) {
        ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x33](arg0, -200, 0);
    }
}
