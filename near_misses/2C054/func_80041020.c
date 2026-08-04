// NEAR MISS: 5 attempts. Remaining diffs (19): (1) the c==0x20 branch's c+0x1F
// gets CONSTANT-FOLDED to 0x3F by my CSE (target keeps addiu v0,v1,0x1F for
// both == and != cases, merged into one insn); (2) loop rotation: target's
// back-edge goes to the top (addiu a0,1 at 0x41034), mine rotates to 0x4103C
// with the increment in the back-edge delay (and an a0-- correction before the
// final sb); (3) the a2=dst move position (target right after sb v1, mine in
// the beqz delay).
// KEY: 0x81/0x82 must go through a v1 variable (flipped >=0x30 if — else-first
// layout) not direct stores; the c value must be loaded into a variable for
// the second check.
char *func_80041020(char *dst, char *src) {
    char *a2 = dst;
    s32 v0;
    s32 v1;
    s32 c;
    if (*src != 0) {
        do {
            dst++;
            if (*src >= 0x30) {
                v1 = 0x82;
            } else {
                v1 = 0x81;
            }
            *a2 = v1;
            a2 = dst;
            c = *src;
            if (c < 0x60) {
                if (c == 0x20) {
                    v0 = c + 0x1F;
                } else {
                    v0 = c + 0x1F;
                }
            } else {
                v0 = c + 0x20;
            }
            *a2 = v0;
            src++;
        } while (*src != 0);
    }
    *dst = 0;
    return dst;
}
