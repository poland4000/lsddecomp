// NEAR MISS: 1 attempt. Same blocker as func_80040AE8: the 0xAC value — target
// loads into v1 temp (sll from v1, `addu s0,v1` copy kept), mine CSE-merges it
// into s0 directly. Also the setup ordering: target [sll; addu s2; lbu 0xAB;
// addu s0,v1; addu; slt; beqz] vs mine [lbu s0; lbu 0xAB; sll; addu; slt; beqz;
// addu s2(delay)]. The loop body and the final field call (+0x50) match.
void func_80040C00(void *arg0) {
    s32 s0;
    void *s2;
    if (*(s32*)((char*)arg0 + 0xC) == 0) {
        return;
    }
    if (*(s32*)((char*)arg0 + 0xB4) != 0) {
        s0 = *(u8*)((char*)arg0 + 0xAC);
        s2 = (char*)*(void**)((char*)arg0 + 0xB4) + s0 * 4;
        if (s0 < s0 + *(u8*)((char*)arg0 + 0xAB)) {
            do {
                (*(void(**)())(*(void**)*(void**)((char*)s2) + 0x50))(*(void**)((char*)s2));
                s2 = (char*)s2 + 4;
                s0++;
            } while (s0 < *(u8*)((char*)arg0 + 0xAC) + *(u8*)((char*)arg0 + 0xAB));
        }
    }
    (*(void(**)())((char*)func_80041C3C() + 0x50))(arg0);
}
