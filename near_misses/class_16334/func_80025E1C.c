/* func_80025E1C — PARKED (29 diffs; loop-opt/scheduler blockers).
 * Decoded: 16-word copy D_80010764 -> sp10 (4 iterations x 4 words), then
 * sp10 -> D_8008B388 (16 iterations). Original's first loop batches the 4
 * loads then the 4 stores and walks pointers (bne a2,t1); ours interleaves
 * lw/sw and uses a counter (slti i,4). Pointer-based C source produced a
 * pre-decremented induction mess (+16). Frame: s32 sp10[16]. */
void func_80025E1C(void) {
    s32 sp10[16];
    s32 *src;
    s32 *dst;
    s32 *end;
    s32 i;

    src = &D_80010764;
    dst = sp10;
    end = &D_80010764 + 0x10;
    while (src < end) {
        dst[0] = src[0];
        dst[1] = src[1];
        dst[2] = src[2];
        dst[3] = src[3];
        src += 4;
        dst += 4;
    }
    dst = D_8008B388;
    src = sp10;
    i = 0;
    do {
        *dst = *src;
        dst++;
        src++;
        i++;
    } while (i < 0x10);
}

