/* func_8005FC58 - PARKED (attempt 2, 2026-08-04) - 322 diff bytes, build 12 short
 *
 * Structure fully decoded and matching in intent:
 *   s1 = x % 500  (0x10624DD3 /500 magic, shift 37)
 *   [0x33](arg0, (x % 6) < 3 ? 0x40 : -0x40, 0)
 *   [0x32](arg0, (x % 12) < 6 ? 0x40 : -0x40, 0)
 *   [0x31](arg0, (x - ((x + (x<0 ? 63 : 0)) >> 6 << 6)) < 0x20 ? 0x80 : -0x80, 0)
 *   if (s1 < 0x20) [0x2F](arg0, &D_80089D78); else if (s1 < 0x40) [0x2F](arg0, &D_80089D60);
 *
 * BLOCKERS (the orig vs build):
 * 1. Register pressure: our build spills to 5 saved regs (s1-s4 frame -40)
 *    vs the original's s0/s1/s2 (-32). The orig keeps x in a0 and the
 *    0x2AAAAAAB const in s2 (a single saved reg reused by both the /6 and
 *    /12 magics); our allocator hoists the /500 hi-chain into s3/s4.
 * 2. The orig RE-MULTIPLIES for the /12 after the [0xCC] call (mult a0, s2
 *    at 50500); our cse keeps the /6 mfhi value alive in a saved reg (s4)
 *    across the call and shifts it (sra v1, s4, 1). The mfhi value is
 *    call-clobbered in the orig (hi/lo not preserved), so the orig recomputes.
 *    Our allocator picks saved regs for the mfhi -> CSE survives -> different
 *    code shape (saved-reg pressure drives the -40 frame).
 * 3. Even with identical shapes, the orig's `addu a1, a2` / `addu v0, v1`
 *    copy placement differs (jump2 threading / local-alloc order).
 *
 * Attempts: (1) s1 = x - (x/100)*500  -> 324 diffs (/100 magic 0x51EB851F
 * instead of /500 0x10624DD3).
 *           (2) s1 = x % 500 -> 322 diffs (best; /500 magic correct, rest
 *           of the allocation still diverges).
 */
void func_8005FC58(void *arg0) {
    s32 x;
    s32 s1;
    s32 v0;
    s32 a2;

    x = *(s32 *)((char *)arg0 + 0xFC);
    s1 = x % 500;
    if ((x % 6) < 3) {
        a2 = 0x40;
    } else {
        a2 = -0x40;
    }
    ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x33](arg0, a2, 0);
    if ((x % 12) < 6) {
        a2 = 0x40;
    } else {
        a2 = -0x40;
    }
    ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x32](arg0, a2, 0);
    v0 = x;
    if (x < 0) {
        v0 = x + 0x3F;
    }
    if (x - ((v0 >> 6) << 6) < 0x20) {
        a2 = 0x80;
    } else {
        a2 = -0x80;
    }
    ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x31](arg0, a2, 0);
    if (s1 < 0x20) {
        ((void (**)(void *, void *))*(s32 **)arg0)[0x2F](arg0, &D_80089D78);
    } else if (s1 < 0x40) {
        ((void (**)(void *, void *))*(s32 **)arg0)[0x2F](arg0, &D_80089D60);
    }
}