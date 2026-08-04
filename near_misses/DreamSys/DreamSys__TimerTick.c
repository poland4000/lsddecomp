// NEAR MISS: 1 attempt. 44 diffs — the 0x24/0x134 load registers and the
// sltu/addiu allocation diverged (mine: 0x24->a0, slt operands swapped;
// target: 0x24->v0 with in-place addiu v0/v1). Nested vtable dispatch
// structure otherwise matches.
void DreamSys__TimerTick(void *arg0, void *arg1, s32 arg2) {
    if (arg2 == 2) {
        s32 v0 = *(s32*)((char*)arg0 + 0x24);
        if (v0 < *(s32*)((char*)arg0 + 0x134)) {
            *(s32*)((char*)arg0 + 0x24) = v0 + 1;
            (*(void(**)())(*(void**)arg0 + 0x118))(arg0);
            (*(void(**)())(*(void**)arg0 + 0x11C))(arg0);
        } else {
            *(s32*)((char*)arg0 + 0x24) = v0 + 1;
            if (*(s32*)((char*)arg0 + 0x68) == 0) {
                (*(void(**)(void*, s32, s32))((char*)*(void**)arg0 + 0x218))(arg0, 0, 0x10);
                (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x30))(arg0, 0xA);
                *(s32*)((char*)arg0 + 0x24) = 0;
            } else if (*(s32*)((char*)arg0 + 0x44) == 0 &&
                       (*(s32(**)(void*, s32))((char*)*(void**)arg0 + 0x1CC))(arg0, 0) == 0) {
                (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x30))(arg0, 0xA);
                *(s32*)((char*)arg0 + 0x24) = 0;
            } else {
                *(s32*)((char*)arg0 + 0x24) = 0;
            }
        }
    }
}
