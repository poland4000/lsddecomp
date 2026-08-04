// PARKED: func_8004F8A4 (0x134 bytes) - best attempt 505864 (+8).
// Root cause: register allocation. Target: s0=arg0, s2=arg1, s1=arg6(u8@0x38),
// s3=arg9, all stack loads hoisted after the saved-reg saves. Our gcc
// allocates arg1->s1, arg6->s2 (swapped), interleaves the 0x3C/0x40/0x44/0x38
// loads into the prologue and adds an extra instruction (+8). Reordering the
// 0x4C store to the top of the function did not change the allocation.
void func_8004F8A4(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 p4, s32 p5, u8 arg6, s32 arg7, s32 arg8, s32 arg9) {
    s32 a1;

    *(s32 *)((char *)arg0 + 0x40) = arg1;
    *(s32 *)((char *)arg0 + 0x44) = arg2;
    *(s32 *)((char *)arg0 + 0x48) = arg3;
    *(s32 *)((char *)arg0 + 0x24) = 2;
    *(u8 *)((char *)arg0 + 0x4C) = arg6;
    *(s32 *)((char *)arg0 + 0x50) = arg7;
    *(s32 *)((char *)arg0 + 0x54) = arg8;
    *(s32 *)((char *)arg0 + 0x58) = arg9;
    if (func_8004F9D8(arg0) != 0) {
        if ((*(s32 (**)(void *, s32, s32))(*(s32 *)arg0 + 0x54))(arg0, 0, arg1) != 0) {
            a1 = 0xA;
            if (*(s32 *)((char *)arg0 + 0x28) == 0xA) {
                a1 = 0x11;
            } else if (*(s32 *)((char *)arg0 + 0x28) == 0x11) {
                a1 = 0xB;
            }
            (*(void (**)(void *, s32))(*(s32 *)arg0 + 0x7C))(arg0, a1);
        } else {
            if ((*(s32 (**)(void *, u8, s32))(*(s32 *)arg0 + 0x60))(arg0, arg6, arg9) != 0) {
                a1 = 0x11;
                if (*(s32 *)((char *)arg0 + 0x28) == 0x11) {
                    a1 = 0xB;
                }
                (*(void (**)(void *, s32))(*(s32 *)arg0 + 0x7C))(arg0, a1);
            } else {
                (*(void (**)(void *, s32))(*(s32 *)arg0 + 0x7C))(arg0, 0x9);
            }
        }
    }
}
