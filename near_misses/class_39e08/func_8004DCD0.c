// PARKED: func_8004DCD0 (0x138 bytes) - best attempt 505852 (-4).
// Root cause: scheduling. (1) The three arg1 byte loads: target batches
// lb,lb,lb then sb,sb,sb with no load-use nops; our gcc emits lbu+nop+sb per
// byte (extra nops, -4 net). (2) On the 0x3C!=0 path the target emits
// [lbu D_8008AA28][ori v0,0x80][sb 0 x3][j; addu p (delay)] while ours emits
// [lbu][sb x3][addu p][j; li v0,0x80]. (3) The prologue saves differ
// (target: sw s2,sw s0,sw ra, jal;sw s1 with arg0->s2; ours: arg0->s1).
// Fixed: call-target form ((char*)v + 0xE4, single load) and the
// AA28/AA2C counters with a local (matches the andi/sltiu sequence).
void func_8004DCD0(void *arg0, s8 *arg1) {
    u8 sp10[3];
    s8 *p;
    s8 *sp = (s8 *)&sp10[0];
    s32 v;
    void *v0;

    v0 = func_8003DFBC();
    (*(void (**)(void *, void *))((char *)v0 + 0xE4))(arg0, arg1);
    if (*(s32 *)((char *)arg0 + 0x3C) != 0) {
        sp10[0] = 0;
        sp10[1] = 0;
        sp10[2] = 0;
        p = sp + D_8008AA28;
        *(u8 *)p = 0x80;
    } else {
        sp10[0] = arg1[0];
        sp10[1] = arg1[1];
        sp10[2] = arg1[2];
        if (D_8008AA2C < 0x80) {
            sp10[0] = sp10[0] + 0x80;
        } else {
            p = sp + D_8008AA28;
            *(u8 *)p = *(u8 *)p + 0x80;
        }
    }
    v = D_8008AA28 + 1;
    D_8008AA28 = v;
    if ((v & 0xFF) >= 3) {
        D_8008AA28 = 0;
    }
    v = D_8008AA2C + 1;
    D_8008AA2C = v;
    if (v >= 0x101) {
        D_8008AA2C = 0;
    }
    (*(void (**)(void *, void *))(*(void **)(*(void **)((char *)arg0 + 0xB0)) + 0xB8))(
        *(void **)((char *)arg0 + 0xB0), sp);
}
