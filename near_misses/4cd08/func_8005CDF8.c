/* func_8005CDF8 — PARKED (head allocator/sched2 blockers).
 * Structure fully decoded: New_Entity(D_8008AC04) gate (return 1 if null);
 * u16 copies from a2 and D_80088F48[a3*4]; unaligned 32-bit load from
 * D_80088D3C + lb(s0[3])*6 (lwl/lwr) + s16 from D_80088D40 + same, stored
 * into the sp18 local (swl/swr/sh); [0x3A](D_8008ABFC, a2, &sp18);
 * [0x11](s2, 1, &D_80088F18 + lb(s0[2])*12); 5-arg
 * [0x13](s2, D_8008AC00, D_8008AC08, D_8008ABFC, a2); return 0.
 * Frame solved: s32 sp18[8] (32-byte local, saves at 0x38, frame 0x48).
 * Remaining diffs (compiler-behavior): orig keeps the New_Entity return in
 * s2 and the a2-arg in s1 (ours swaps them); orig loads D_8008AC04 after the
 * s1 save (ours hoists the arg load before the prologue); save order
 * [sw s1][sw s0][sw s2] vs [sw s2][sw s0][sw s1]; orig bne + j-return-1
 * (ours beq to the epilogue). */
s32 func_8005CDF8(s32 a0, void *a1, void *a2, s32 a3) {
    s32 sp18[8];
    void *s2;
    void *s0;
    s32 v1;

    s2 = New_Entity(D_8008AC04);
    if (s2 == 0) {
        return 1;
    }
    s0 = (s8 *)D_80088F48 + a3 * 4;
    *(u16 *)((char *)sp18 + 0) = *(u16 *)a2;
    *(u16 *)((char *)sp18 + 2) = *(u16 *)s0;
    v1 = *(s32 *)((char *)D_80088D3C + (s8)((s8 *)s0)[3] * 6);
    *(u32 *)((char *)sp18 + 4) = v1;
    *(s16 *)((char *)sp18 + 8) = *(s16 *)((char *)D_80088D40 + (s8)((s8 *)s0)[3] * 6);
    (*(void (**)(void *, void *, void *))(*(void **)D_8008ABFC + 0xE8))(D_8008ABFC, a2, sp18);
    (*(void (**)(void *, s32, void *))(*(void **)s2 + 0x44))(s2, 1, (s8 *)D_80088F18 + (s8)((s8 *)s0)[2] * 12);
    (*(void (**)(void *, void *, void *, void *, void *))(*(void **)s2 + 0x4C))(
        s2, D_8008AC00, D_8008AC08, D_8008ABFC, a2);
    return 0;
}

