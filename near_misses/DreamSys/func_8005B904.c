// NEAR MISS: 1 attempt. 35 diffs — the 16-byte copy loop: target batches
// [4x lw; 4x sw] per iteration, mine emits per-element [lw; nop; sw] (load
// delay nops). Load-batching register/scheduling difference.
void func_8005B904(void *arg0) {
    s32 *base = *(s32**)((char*)arg0 + 0x14);
    s32 *src = base;
    s32 *dst = (s32*)((char*)arg0 + 0x890);
    do {
        dst[0] = src[0];
        dst[1] = src[1];
        dst[2] = src[2];
        dst[3] = src[3];
        src += 4;
        dst += 4;
    } while (src != base + 0x14);
    src = *(s32**)((char*)base + 0x44);
    dst = (s32*)((char*)arg0 + 0x8E0);
    {
        s32 *end = src + 8;
        do {
            dst[0] = src[0];
            dst[1] = src[1];
            dst[2] = src[2];
            dst[3] = src[3];
            src += 4;
            dst += 4;
        } while (src != end);
    }
    dst[0] = src[0];
    dst[1] = src[1];
}
