/* func_80025F7C — PARKED (1 diff: the beqz delay slot @80025FA0).
 * orig: [beq s0,zero,L] [nop] — PSYQ dbr leaves the delay empty.
 * ours: [beq s0,zero,L] [addu v0,{s0|zero}] — our dbr fills the delay with
 * the return-value move (duplicated from the L block). Same dbr-behavior
 * class as 62C58/63144 — NOT expressible from C (single-return and
 * two-return forms both fill it; 23/24 instructions byte-perfect). */
void *func_80025F7C(void *arg0) {
    void *s0 = func_80017B34(0x2C);
    if (s0 != 0) {
        (*(void (**)(void *, void *))(func_800269E0() + 8))(s0, arg0);
        return s0;
    }
    return s0;
}

