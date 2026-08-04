// NEAR MISS: 2 attempts. Diffs (23): (1) a1 setup — target [lw a1,0x58; addiu
// a1,a1,1] in-place, mine [lw v0,0x58; addiu a1,v0,1]; (2) slot address
// reassociation — target (mem (plus (plus base 0x18) (mult a1 4))) with the
// 0x18 load before the sll, mine (mem (plus (plus base (mult a1 4)) 0x18))
// — parens don't stop the fold; (3) resulting branch offsets.
void func_8003D3B0(void *arg0) {
    s32 a1;
    s32 a2;
    if (*(s32*)((char*)arg0 + 0x4C) == 0) {
        return;
    }
    a1 = *(s32*)((char*)arg0 + 0x58) + 1;
    a2 = *(s32*)((char*)arg0 + 0x50);
    for (;;) {
        if (a1 >= a2) {
            a1 = 0;
        }
        if (a1 == *(s32*)((char*)arg0 + 0x58)) {
            break;
        }
        if (*(s32*)((char*)*(void**)((char*)arg0 + 0x4C) + 0x18 + a1 * 4) != 0) {
            a1++;
        } else {
            a1--;
            break;
        }
    }
    (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0xF0))(arg0, 1);
}
