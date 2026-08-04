// PARKED: func_80052598 (0xAC bytes)
// Root cause: gcc combine reassociates the second condition
// a2-(a1-1)<4 into (a2+1)-a1<4 (CSE with the first condition's a2+1),
// producing `subu v0,v1,a1` (1 insn) instead of the target's
// `addiu v0,a1,-1; subu v0,a2,v0` (2 insns) -> function 1 instruction short.
// Explicit temp `s32 t = a1-1;` preserves the shape but gcc then allocates
// a callee-saved s1 for a1 (target keeps it in caller-saved a1), adding a
// saved reg and growing the frame. m2c's structure (temp_a1_2 = a1+1 early)
// also reassociates. -4 bytes in all variants.
void func_80052598(void *arg0) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a3;

    if (*(s32 *)((char *)arg0 + 0x50) != 0) {
        temp_a2 = *(s32 *)((char *)arg0 + 0x28);
        if (temp_a2 + 1 < *(s32 *)((char *)arg0 + 0x10)) {
            temp_a1 = *(s32 *)((char *)arg0 + 0x20);
            temp_a1_2 = temp_a1 + 1;
            if (temp_a2 - (temp_a1 - 1) < 4) {
                (*(void (**)(void *, s32, s32))(*(void **)arg0 + 0x98))(arg0, 1, 1);
                return;
            }
            *(s32 *)((char *)arg0 + 0x20) = temp_a1_2;
            temp_a3 = *(s32 *)((char *)arg0 + 0x28) + 1;
            *(s32 *)((char *)arg0 + 0x28) = temp_a3;
            (*(void (**)(void *, s32, s32, s32, s32))(*(void **)arg0 + 0x94))(
                arg0, temp_a1_2, *(s32 *)((char *)arg0 + 0x24), temp_a3, 1);
        }
    }
}
