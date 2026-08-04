// NEAR MISS: 1 attempt. 5 diffs — register allocation: target loads 0x58 into
// v0 (idx) and 0x5C into a1 (the 2nd call arg — allocator honored the arg-reg
// preference), mine swaps (idx->a1, 0x5C->v0). Structure otherwise correct.
void func_8003D6D4(void *arg0) {
    s32 idx = *(s32*)((char*)arg0 + 0x58) * 4;
    func_800183DC(*(s32*)((char*)*(void**)((char*)arg0 + 0x64) + idx), *(s32*)((char*)*(void**)((char*)arg0 + 0x5C) + idx));
    func_80017CFC(*(s32*)((char*)*(void**)((char*)arg0 + 0x64) + *(s32*)((char*)arg0 + 0x58) * 4));
}
