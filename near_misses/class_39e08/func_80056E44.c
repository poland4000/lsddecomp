// PARKED: func_80056E44 (0xE4 bytes)
// Root cause: loop-invariant code motion. Our gcc 2.6.3 (all cc1 variants:
// cc1, cc1.orig, cc1.prev, cc1.potato, cc1.slink272) hoists the divmod magic
// constants (0xAAAAAAAB for %6, 0xB60B60B7 for %360) and the D_8008788C base
// out of the do-while loop into callee-saved regs (s3/s4), growing the frame
// to 0x28 and adding 24 bytes. The original re-materializes them inside the
// loop (lui/ori after each rand() call) with frame 0x20 and only s0/s1 saved.
// Tried: do-while/for/while(1) loop shapes, signed/unsigned casts - all hoist.
void func_80056E44(void *arg0) {
    s32 s1 = 0;
    s32 *s0 = (s32 *)((char *)arg0 + 0x88);

    do {
        s1++;
        (*(void (**)(void *, s32, s32 *))(*(void **)*s0 + 0x48))(
            (void *)*s0, 1, (s32 *)&D_8008788C[(u32)rand() % 6 * 3]);
        *(s32 *)(*s0 + 0x21) = (rand() % 360) << 12;
        s0++;
    } while (s1 < 4);
}
