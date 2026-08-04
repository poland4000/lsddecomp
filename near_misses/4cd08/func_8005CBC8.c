/* func_8005CBC8 — PARKED (head threading + cross-jumping blockers).
 * Structure fully decoded: jump-table switch on a1 with cases 2-4, 5, 6, 7,
 * 8-9, 20, 21 (table indices 0-2, 3, 4, 5, 6-7, 18, 19 — 20 entries) and a
 * shared tail (*arg1 = 1; return 1) reached from all paths with v0 = 1.
 * The C-compiled switch now generates the 20-entry table that lands at
 * jtbl_8001188C (the extracted table was removed from 206C.rodata.s).
 * Remaining diffs (all compiler-behavior):
 * 1. head: orig [bgez] [nop] [lb] [beqz→L] [nor delay] [j ret0] [L_CC0C:
 *    j switch; addu a1,a0 delay] [L_CC14: addiu a1,~a0+1] — the a0>=0 path is
 *    an out-of-line j-block; ours threads it into the bgez delay (addu a1,a0)
 *    and negates with subu a1,zero,a0 (orig: nor+addiu, 2 insns).
 * 2. cases 2/5/8/default: orig shares one L_CD30 beqz-check across cases
 *    (cross-jumping); ours inlines the check per case (+2 insns each).
 * The switch case VALUES are the key finding (2-4/5/6/7/8-9/20/21 — the
 * original table layout proves it). */
s32 func_8005CBC8(void *arg0, s8 *arg1) {
    s32 a0 = arg1[1];
    s32 a1;
    s32 v0;

    if (a0 == 1) {
        v0 = 1;
        goto tail;
    }
    if (a0 >= 0) {
        a1 = a0;
    } else if (arg1[0] == 0) {
        a1 = -a0;
    } else {
        return 0;
    }
    switch (a1) {
    case 2:
    case 3:
    case 4:
        if (func_8005CDA8(arg0, a1 - 1) == 0) {
            return 0;
        }
        v0 = 1;
        break;
    case 5:
        if ((s32)arg0 % 3 == 0) {
            v0 = 1;
            break;
        }
        return 0;
    case 6:
        if ((s32)arg0 % 3 != 0) {
            v0 = 1;
            break;
        }
        return 0;
    case 7:
        if (func_8005630C() == 0) {
            return 0;
        }
        v0 = 1;
        break;
    case 8:
    case 9:
        if ((s32)arg0 % 3 == a1 - 7) {
            v0 = 1;
            break;
        }
        return 0;
    case 20:
        if ((s32)arg0 % 2 == 0) {
            v0 = 1;
            break;
        }
        return 0;
    case 21:
        if (((s32)arg0 & 1) == 0) {
            return 0;
        }
        v0 = 1;
        break;
    default:
        if (a1 >= 10) {
            if (func_8005CD58(a1) == 0) {
                return 0;
            }
            v0 = 1;
            break;
        }
        v0 = 1;
        break;
    }
tail:
    *(s8 *)arg1 = (s8)v0;
    return 1;
}

