// NEAR MISS: 0 diff but 14 instructions differ (stack frame 0x40 vs 0x28)
// arg0 goes to $v0 in target but $s0 in ours
// sp_val struct needs larger stack allocation
s32 func_8004EA38(void *arg0, s32 arg1, u8 *arg2) {
    s32 sp_val;
    s32 s1;
    s32 s0;
    func_8004F32C(&sp_val, *(s32*)((char*)arg0 + 0xC));
    s1 = func_80050938(arg0, 1);
    if (s1 == -1) {
        return 0;
    }
    if (arg1 != 0) {
        s0 = func_80017B34(0x80);
        func_80050928(s1, s0, 0x80);
        func_80028B78(arg1, s0 + 4);
        func_80017CFC(s0);
    }
    func_800508F8(s1);
    return 1;
}
