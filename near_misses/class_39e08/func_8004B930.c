// PARKED: func_8004B930 (0x110 bytes) - 2/68 words differ.
// Root cause: loop-path prologue ordering. Target: `addiu a0,-1; blez a3;
// addu v1,zero (delay)`. Our gcc schedules `li a0,-1` into the blez's delay
// and emits the i=0 move after (or vice versa with reversed C order) in every
// variant tried (do-while with i inside/outside, i declared first, for-loop
// [grows frame to 0x10], early-return [restructures the 2nd div section]).
// Achieved via two address-taken dummy locals (sp10/sp14 with foldable
// &sp10==0 checks) which reproduce the target's unusual 8-byte frame with
// `addiu sp,-8` in the first bnez's delay slot. Everything else matches.
s32 func_8004B930(void *arg0, s32 arg1, s32 arg2) {
    s32 *p = *(s32 *)((char *)arg0 + 0x68);
    s32 t0 = *(s16 *)p;
    s32 v1 = *(s32 *)(p + 1);
    s32 a3 = *(s16 *)((char *)p + 2);
    s32 a0;
    s32 r;
    s32 r2;
    s32 sp10;
    s32 sp14;

    if ((s32)&sp10 == 0) return 0;
    if ((s32)&sp14 == 0) return 0;
    if (v1 == 0) {
        a0 = (arg1 < t0) ? 3 : 0;
        if (arg1 >= t0 * (a3 - 1)) {
            a0 |= 0x60;
        }
        r = arg1 % t0;
        if (r == 0) {
            if (arg2 != 0) {
                a0 |= 0x25;
            } else {
                a0 |= 0x4;
            }
        }
        r2 = (arg1 + 1) % t0;
        if (r2 != 0) {
            return ~a0;
        }
        if (arg2 != 0) {
            a0 |= 0x10;
        } else {
            a0 |= 0x52;
        }
        return ~a0;
    }
    a0 = -1;
    if (a3 > 0) {
        s32 i = 0;
        do {
            i++;
            a0 <<= 1;
        } while (i < a3);
    }
    return ~a0;
}
