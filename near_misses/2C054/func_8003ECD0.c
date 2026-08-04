// NEAR MISS: 6 attempts. Size correct (0x124) with reload form. Remaining diffs:
//  (1) shift/product v0/v1 swap (sllv+mflo+addiu regs)
//  (2) 0x78/0x80 store order swapped (scheduler tiebreak)
//  (3) 0x88 computed as ((4<<x)+alloc)+0x14, target reuses alloc+0x14 (reassociation)
//  (4) 0x7C/0x84 store order swapped
//  (5) alloc held in a0 vs target's v1
//  (6) a1=0 move placement (mine in sw-delay, target in beqz delay)
// KEY: gcc 2.6.3 has NO store-to-load forwarding — reading arg0->0x78/0x80 back
// from memory (instead of keeping alloc in a reg) adds the required reload insns;
// without them the function is 12 bytes short and shifts the whole binary.
void func_8003ECD0(void *arg0) {
    s32 prod;
    s32 s1;
    s32 alloc;
    if (*(s32*)((char*)arg0 + 0x70) != 0) {
        return;
    }
    prod = *(s32*)((char*)arg0 + 0x48) * *(s32*)((char*)arg0 + 0x44) + 0x14;
    s1 = prod + (4 << *(s32*)((char*)arg0 + 0x3C));
    alloc = (s32)func_80017B34(s1 << 1);
    if (alloc == 0) {
        return;
    }
    *(s32*)((char*)arg0 + 0x78) = alloc;
    *(s32*)((char*)arg0 + 0x80) = alloc + 0x14;
    *(s32*)((char*)arg0 + 0x88) = (4 << *(s32*)((char*)arg0 + 0x3C)) + (alloc + 0x14);
    *(s32*)((char*)arg0 + 0x7C) = s1 + *(s32*)((char*)arg0 + 0x78);
    *(s32*)((char*)arg0 + 0x84) = s1 + *(s32*)((char*)arg0 + 0x80);
    *(s32*)((char*)arg0 + 0x8C) = s1 + *(s32*)((char*)arg0 + 0x88);
    *(s32*)*(s32*)((char*)arg0 + 0x78) = *(s32*)((char*)arg0 + 0x3C);
    *(s32*)(*(s32*)((char*)arg0 + 0x78) + 4) = *(s32*)((char*)arg0 + 0x80);
    *(s32*)*(s32*)((char*)arg0 + 0x7C) = *(s32*)((char*)arg0 + 0x3C);
    *(s32*)(*(s32*)((char*)arg0 + 0x7C) + 4) = *(s32*)((char*)arg0 + 0x84);
    func_8003FC18(0, 0, *(s32*)((char*)arg0 + 0x78));
    func_8003FC18(0, 0, *(s32*)((char*)arg0 + 0x7C));
    *(s32*)((char*)arg0 + 0x70) = 1;
    *(s32*)((char*)arg0 + 0x74) = 0;
}
