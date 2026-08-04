// NEAR MISS: 7 attempts. Best = ret-variable form. Remaining diffs (2 insns):
//  0x8003F098/0x8003F0A0: delay-slot tiebreak — target [beqz; sw v0,0x74(delay);
//  jal func_80020C74; ori a0,1(delay)], mine swaps: [beqz; ori(delay); jal; sw(delay)].
//  Root: sched pass reorders [sw;ori] to [ori;sw] (ori feeds call -> higher pri);
//  target's pre-sched2 order kept [sw;ori].
// KEY findings: (1) vtable->0x54 call result used -> needs s32(**)() type (void(**)()
//  causes 'void value not ignored' error which silently drops the call!); (2) idx
//  must NOT be a variable (forces s1/save, target re-reads *(0x74) inline);
//  (3) func_80023DA0/func_8003FBF4 calls are INSIDE the 0xB8!=0 block; (4) the
//  toggle 0x74=!0x74 is unconditional after the 0x70 check.
void func_8003F04C(void *arg0) {
    s32 ret;
    if (*(s32*)((char*)arg0 + 0x70) == 0) {
        return;
    }
    ret = (*(s32(**)())(*(void**)*(void**)((char*)arg0 + 0xC) + 0x54))(*(void**)((char*)arg0 + 0xC));
    if (*(s32*)((char*)arg0 + 0xB8) != 0) {
        *(s32*)((char*)arg0 + 0x74) = ret;
        func_80020C74(1);
        (*(void(**)())(*(void**)*(void**)((char*)arg0 + 0xC) + 0x50))(*(void**)((char*)arg0 + 0xC));
        if (*(s32*)((char*)arg0 + 0xB4) != 0 && *(s32*)((char*)arg0 + 0x74) == 0) {
            (*(void(**)())(*(void**)*(void**)((char*)arg0 + 0xC) + 0x50))(*(void**)((char*)arg0 + 0xC));
        }
        func_80023DA0(*(u8*)((char*)arg0 + 0x58), *(u8*)((char*)arg0 + 0x59), *(u8*)((char*)arg0 + 0x5A), *(s32*)((char*)arg0 + *(s32*)((char*)arg0 + 0x74) * 4 + 0x78));
        func_8003FBF4(*(s32*)((char*)arg0 + *(s32*)((char*)arg0 + 0x74) * 4 + 0x78));
        if (*(s32*)((char*)arg0 + 0xB4) != 0 && *(s32*)((char*)arg0 + 0x74) == 0) {
            (*(void(**)())(*(void**)*(void**)((char*)arg0 + 0xC) + 0x50))(*(void**)((char*)arg0 + 0xC));
        }
    }
    *(s32*)((char*)arg0 + 0x74) = (*(s32*)((char*)arg0 + 0x74) == 0);
}
