// NEAR MISS: 1 attempt. All 18 diffs stem from the parm s-reg allocation swap:
// target arg0->s0/arg1->s1, mine arg0->s1/arg1->s0 (same family as func_8003E4B8).
// Structure otherwise correct: switch tree (root=7 via cost-table balance,
// slti<8 split, then 5/8/0x12), the 0xD8 stores, the guarded 0x4C call, the
// 0x94 call with shared jalr (.F3BCD0).
void func_8003BC14(void *arg0, s32 arg1) {
    (*(void(**)(void*, s32))((char*)func_8003DFBC() + 0x60))(arg0, arg1);
    switch (arg1) {
    case 5:
        *(s32*)((char*)arg0 + 0xD8) = 0;
        break;
    case 7:
        *(s32*)((char*)arg0 + 0xD8) = 1;
        break;
    case 8:
        if (*(s32*)((char*)arg0 + 0xD4) == 0) {
            (*(void(**)())(*(void**)*(void**)((char*)arg0 + 0xB4) + 0x4C))();
        }
        break;
    case 0x12:
        (*(void(**)())(*(void**)arg0 + 0x94))();
        break;
    }
}
