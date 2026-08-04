// NEAR MISS (blocked, parked): func_8004E6B8
// The C needs `a1 = func_8004E77C(...)` (the return value drives the retry loop),
// but func_8004E77C is declared/defined VOID in this file (line ~187 extern, ~1152
// definition, both void). Changing either to s32 breaks the build: the s32 definition
// changes func_8004E77C's own codegen (21 diffs, size -128 collapse). The void call
// assigned to a1 makes the cc1 emit a broken 13-word function. Needs the 4E77C
// conversion fixed to s32 FIRST (its original does fall through with v0 as the return).
s32 func_8004E6B8(void *arg0, void *arg1, s32 *arg2, void *arg3) {
    s32 sp10[2];
    s32 s2 = 10;
    s32 a1;

    *arg2 = 0;
    a1 = func_8004E77C((s32)arg0, (s32)arg1, &sp10[0], (s32)arg3);
    while (a1 == 0 || *arg1 != 0 || *arg3 == 0) {
        if (s2 == 0) {
            break;
        }
        s2--;
        a1 = func_8004E77C((s32)arg0, (s32)arg1, arg2, (s32)arg3);
    }
    *arg2 |= sp10[0];
    return a1;
}
