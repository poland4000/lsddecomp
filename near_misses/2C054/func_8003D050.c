// NEAR MISS: 1 attempt. Diffs: (1) frame -0x28 vs target -0x30 (outgoing args
// area 8 vs 16); (2) loop's array check ordering: mine [lw 0x4C; sll s1,2;
// addu; lw 0x24(v1)], target [lw 0x4C; lw 0x24(v0); sll; addu; lw 0(v0)] —
// the +0x24 load before the sll. Scheduler ordering; everything else
// (guarded calls, loop, 4x func_80017CFC) structurally matches.
void func_8003D050(void *arg0) {
    void *obj = *(void**)((char*)arg0 + 0x4C);
    s32 s1;
    void *s2;
    if (obj != 0) {
        if (*(s32*)obj != 0) {
            (*(void(**)())(*(void**)*(void**)((char*)obj + 4) + 4))(*(void**)((char*)obj + 4));
        }
        (*(void(**)())(*(void**)*(void**)((char*)arg0 + 0x68) + 4))(*(void**)((char*)arg0 + 0x68));
        s2 = *(void**)((char*)arg0 + 0x54);
        s1 = 0;
        if (*(s32*)((char*)arg0 + 0x50) > 0) {
            do {
                if (*(s32*)((char*)*(void**)((char*)arg0 + 0x4C) + 0x24 + s1 * 4) != 0) {
                    *(s32*)((char*)arg0 + 0x58) = s1;
                    (*(void(**)())(*(void**)arg0 + 0xFC))(arg0);
                }
                (*(void(**)())(*(void**)*(void**)s2 + 4))(*(void**)s2);
                s1++;
                s2 = (char*)s2 + 4;
            } while (s1 < *(s32*)((char*)arg0 + 0x50));
        }
        func_80017CFC(*(s32*)((char*)arg0 + 0x64));
        func_80017CFC(*(s32*)((char*)arg0 + 0x60));
        func_80017CFC(*(s32*)((char*)arg0 + 0x5C));
        func_80017CFC(*(s32*)((char*)arg0 + 0x54));
    }
}
