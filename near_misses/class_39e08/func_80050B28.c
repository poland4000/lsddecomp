// PARKED: func_80050B28 (0x30 bytes)
// Root cause: gcc 2.6.3 (our build) allocates s0 to hold arg0 across the first
// call -> frame 0x18, `ori a1,zero,0x3f` for the constant arg.
// Target: spills arg0 to its home slot at 0x20(sp) with frame 0x20 (ra at
// 0x1C), and loads the 0x3F constant via literal `addiu a1,zero,0x3f`.
// Best attempt (&arg0 address-taken trick) gives the correct spill pattern
// (home at sp+frame in first jal's delay slot) but frame 0x18/offsets shifted
// by 8, and li->ori instead of addiu for the constant. Tried: plain call,
// f1(arg0), volatile local, struct-by-value param (stores all 3 words),
// arr[2]/arr[3] locals (visible stores or wrong slot), 5/6/7-arg prototypes
// (no effect on outgoing size). The original's frame implies 12 bytes of
// invisible stack vars which no C shape reproduces; the addiu-vs-ori constant
// load also never reproduced (gcc always emits `li` for argument constants).
// NOTE: build size stays 505856 with the &arg0 attempt (same instruction
// count) but 7 of 12 words differ in the VMA range.
void func_80050B28(s32 arg0) {
    s32 *p = &arg0;
    func_80050B98();
    func_80050B58(*p, 0x3F, 0);
}
