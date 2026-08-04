// NEAR MISS: 4 attempts. Best = array-local form (17 diffs). Remaining:
// (1) prologue s-reg assignment: target s1=arg1/s2=arg2, mine s1=arg2/s2=arg0-copy;
// (2) the 0xAC value: target loads into a0 temp then `addu s1,a0` (copy kept),
// mine lbu's directly into s1; (3) the s2 pointer computation order (target
// computes s2 before the 0xAB load, mine after). Allocator choices.
// KEY: the func_80041C3C() call is a DIRECT field call (+0x4C, one load);
// the local must be an ARRAY (s32 local[2]) — separate s32 locals get the
// dead local1 store eliminated (address only taken for local0).
void func_80040AE8(void *arg0, void *arg1, void *arg2) {
    s32 local[2];
    s32 s1;
    void *s2;
    if (*(s32*)((char*)arg0 + 0xC) != 0) {
        return;
    }
    (*(void(**)(void*, void*, void*))((char*)func_80041C3C() + 0x4C))(arg0, arg1, arg2);
    local[0] = *(s32*)arg2;
    local[1] = *(s32*)((char*)arg2 + 4);
    s1 = *(u8*)((char*)arg0 + 0xAC);
    s2 = (char*)*(void**)((char*)arg0 + 0xB4) + s1 * 4;
    if (s1 < s1 + *(u8*)((char*)arg0 + 0xAB)) {
        do {
            if (*(u8*)((char*)arg0 + 0xAA) != 0 && s1 == *(u8*)((char*)arg0 + 0xAA)) {
                local[0] += 0x10;
            }
            (*(void(**)(void*, void*, void*))((char*)*(void**)*(void**)((char*)s2) + 0x4C))(*(void**)((char*)s2), arg0, local);
            local[0] += *(s32*)((char*)arg0 + 0xB0);
            s1++;
            s2 = (char*)s2 + 4;
        } while (s1 < *(u8*)((char*)arg0 + 0xAC) + *(u8*)((char*)arg0 + 0xAB));
    }
}
