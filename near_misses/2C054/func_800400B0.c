// NEAR MISS: 1 attempt + analysis. Blocker: the arg2-derived t0 is live ACROSS
// the vtable->0xDC call (used later at sll a2,t0,1) — the potato cc1 correctly
// allocates it to a saved reg (s1, frame -0x20), but the target keeps it in t0
// (register 8, a call-clobbered reg per mips.h CALL_USED_REGISTERS) with frame
// -0x18. Unfixable from C — the target's allocator placed a call-crossing value
// in a temp reg.
void func_800400B0(void *arg0, void *arg1, s32 arg2) {
    s32 ret;
    s32 t0;
    if (*(s32*)((char*)arg0 + 0x6C) != 0) {
        return;
    }
    t0 = arg2;
    ret = (*(s32(**)())(*(void**)arg0 + 0xDC))();
    if (*(s32*)((char*)arg0 + 0x98) == 0) {
        (*(void(**)(void*, s32, void*))((char*)*(void**)arg0 + 0xB8))(arg0, 1, &D_8006EAA8[t0 * 3]);
    } else {
        t0 = ret;
        *(s32*)((char*)arg0 + 0x80) -= 1;
    }
    *(s32*)((char*)arg0 + 0x6C) = 2;
}
