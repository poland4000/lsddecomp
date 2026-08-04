// NEAR MISS: 1 attempt. Same copy-loop load-batching issue as func_8005B904
// (target batches 4x lw; mine per-element with nops). 35 diffs.
void func_8005B990(void *arg0) {
    s32 *base = *(s32**)((char*)arg0 + 0x14);
    s32 *src = (s32*)((char*)arg0 + 0x890);
    s32 *dst = base;
    do {
        dst[0] = src[0];
        dst[1] = src[1];
        dst[2] = src[2];
        dst[3] = src[3];
        src += 4;
        dst += 4;
    } while (src != (s32*)((char*)arg0 + 0x8E0));
    src = *(s32**)((char*)base + 0x44);
    dst = (s32*)((char*)arg0 + 0x8E0);
    {
        s32 *end = (s32*)((char*)arg0 + 0x900);
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
    *base = 0;
}
