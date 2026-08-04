// NEAR MISS: 2 attempts. 44 diffs both times — the arg1 dispatch (values
// 1/3/5/9/0xC with the {3,1,9} group re-testing 5 and 9) compiles to a
// different test order/register allocation than the target's linear chain
// [3,1,5,9,C]. Also the call's a1 (-0xC if arg3&1 else arg1) allocation.
s32 func_8005BE90(s32 arg0, s32 arg1, void *arg2, s32 arg3) {
    s32 a1 = arg1;
    if (arg1 == 5) {
        if (*(s16*)((char*)arg2 + 6) >= -0xFFF && *(s32*)arg2 != D_8008ABE8) {
            return -1;
        }
    } else if (arg1 == 9) {
        if (*(s16*)((char*)arg2 + 6) < 0x800) {
            return -1;
        }
    } else if (arg1 != 1 && arg1 != 3 && arg1 != 0xC) {
        return -1;
    }
    if (arg3 & 1) {
        a1 = -0xC;
    }
    return D_8008ACC4 = GetRandomSpawnFromStage(arg0, a1, arg3);
}
