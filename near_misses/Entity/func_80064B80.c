/* func_80064B80 — PARKED (47 region diffs, -8 bytes). Byte-perfect except:
 * - orig keeps the object in a0 with THREE addu a0,s0 moves (bne delay @BD4,
 *   jalr delay @BEC = the [0x4C] arg, post-call reload @BF0) and loads the
 *   [0x12] vtable via a0 (lw v0,0x0(a0); nop; lw v0,0x48(v0)).
 *   The potato cc1 eliminates the redundant arg move (a0 already = obj) and
 *   rematerializes from s0 (lw v0,0x0(s0)) — 2 instrs short. Same
 *   scheduler-class blocker as 62C58/63144.
 * - downstream: mod-20 rem lands in v1 (orig: a0), [0x32] tail puts the arg
 *   in the jalr delay (orig: plain + nop delay), vtable load after the beq
 *   (orig: hoisted before).
 * Structure fully decoded: FC==0 && !(rand&1) -> state=0xB; state==0xB ->
 * [0x4C](s0) if FC==0, then [0x12](s0,1,&D_80089E2C); else [0x4A](s0,1) if
 * FC==0, then [0x32](s0, FC%20<10 ? 0x20 : -0x20, 0). Both paths share the
 * tail jalr (fn-variable).
 * register void *obj __asm__("a0") + explicit re-def keeps it correct (the
 * binding alone makes the compiler assume a0 survives the call — a real
 * fall-through bug). */
void func_80064B80(void *arg0) {
    void (*fn)(void *, s32, void *);
    s32 v0;
    s32 v1;
    s32 a0;
    s32 a1;
    void *a2;

    v0 = *(s32 *)((char *)arg0 + 0xFC);
    if (v0 == 0) {
        v0 = rand();
        if ((v0 & 1) == 0) {
            *(s32 *)((char *)arg0 + 0x44) = 0xB;
        }
    }
    v1 = *(s32 *)((char *)arg0 + 0x44);
    if (v1 == 0xB) {
        register void *obj __asm__("a0") = arg0;
        v0 = *(s32 *)((char *)arg0 + 0xFC);
        if (v0 == 0) {
            ((void (**)(void *))*(s32 **)arg0)[0x4C](arg0);
        }
        obj = arg0;
        fn = (void (*)(void *, s32, void *))(*(s32 **)obj)[0x12];
        a1 = 1;
        a2 = &D_80089E2C;
    } else {
        v0 = *(s32 *)((char *)arg0 + 0xFC);
        if (v0 == 0) {
            ((void (**)(void *, s32))*(s32 **)arg0)[0x4A](arg0, 1);
        }
        a0 = *(s32 *)((char *)arg0 + 0xFC) % 20;
        if (a0 < 10) {
            a1 = 0x20;
        } else {
            a1 = -0x20;
        }
        fn = (void (*)(void *, s32, void *))(*(s32 **)arg0)[0x32];
        a2 = 0;
    }
    fn(arg0, a1, a2);
}
