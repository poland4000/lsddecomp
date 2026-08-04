/* GetStaticSpawn - PARKED (attempt 4, 2026-08-04) - compiler-gate blocker, NOT fixable from C
 *
 * ROOT CAUSE (definitively established via gcc 2.6.3 loop.c/mips.md source):
 * the `ori v0,zero,1` at the store site (4CA54) vs our hoisted `ori t5,zero,1`
 * in the preheader. The chain:
 *
 * 1. movqi expand (config/mips/mips.md) FORCES a nonzero const store value
 *    into a register: `(set (reg) (const_int 1))` inside the loop (no
 *    store-immediate on MIPS; only const 0 takes the "J" constraint).
 * 2. cse CANNOT fold the li back into the store: `(set (mem) (const_int 1))`
 *    is an INVALID movqi_internal2 pattern (store alt needs "dJ"), so
 *    validate_change fails and the li survives cse.
 * 3. loop.c's movable collection admits the li (case 2: temp reg) and
 *    move_movables hoists it: threshold*savings*lifetime >= insn_count with
 *    threshold = 2*(1+n_non_fixed_regs) = 2*(1+57) = 116 (mips.h has
 *    FIRST_PSEUDO_REGISTER 67, 10 fixed -> 57 non-fixed), savings=1,
 *    lifetime=1, insn_count=53. 116 >= 53 -> hoist.
 * 4. The ORIGINAL did NOT hoist -> its compiler had threshold < 53 ->
 *    n_non_fixed_regs <= 24 -> FIRST_PSEUDO_REGISTER = 32 (no FP regs).
 *    A target-configuration difference in the PSYQ cc1, NOT source code.
 *
 * C shapes that DON'T help (all tested this session):
 * - inline `= 1` (variant A): li in the found-body -> hoisted; also the
 *   derived-biv init `addiu a0,t0,5` lands at the loop TOP vs preheader.
 * - `s8 navByte = 1;` at function top, store `= navByte` (variant B): the
 *   li lands in the ENTRY block (before the loop) -> preheader freed and the
 *   biv init moves to the preheader (matching!), but the entry still has a
 *   spurious `ori t6,zero,1` the original lacks (it materializes at the
 *   store site instead).
 * - uservar set inside the if-block: reg_in_basic_block_p (same block as
 *   the sb) -> still a movable; failing all 3 filter cases needs a USE in a
 *   different basic block, but the asm has no second use of the 1 value.
 *
 * NOTE: the real CC1PSX (also FIRST_PSEUDO_REGISTER=67 per the identical-
 * output tests) reproduces the hoist -> the game binary was built with a
 * different cc1 build. Do NOT retry via the DOSBox harness.
 *
 * Attempt 1: S4Copy + s32* gpNav store (sw instead of sb) + direct s16 (lhu)
 * Attempt 2: w->u8 (lbu), s32 h temp (lh), byte store via char* cast,
 *            for(i++;e++) increment order  -> 54 diffs, all in loop body
 * Attempt 3: S42Copy {s8[4]; s16} struct (decomposed field-wise, no change)
 *
 * REMAINING DIFFS (all compiler-pass differences, unfixable from C):
 *  1. Loop pass hoists the store constant: ours emits `li t5,1` in the loop
 *     preheader; orig materializes `ori v0,0,1` inside the found-body branch.
 *     The move_movables gate is threshold*savings*lifetime >= insn_count with
 *     threshold = 2*(1+n_non_fixed_regs). Our cc1 (with FPRs, FIRST_PSEUDO_REGISTER
 *     = 67) has n_non_fixed_regs = 57 -> threshold 116 >= 56 (insn_count) -> hoist.
 *     The orig cc1 must have had fewer non-fixed regs (e.g. no FP regs ->
 *     threshold ~52 < 56) so the li stayed. Cascades: t5/t6 reg swap for arg6,
 *     every loop-body instruction shifts by one, bnez offset -0x3a vs -0x39.
 *  2. Scheduler: orig hoists the independent `lh a0,4(v0)` into the lwr->swl
 *     load-delay nop slot ([lwl;lwr;nop;lh;swl;swr;sh]); ours emits
 *     [lwl;lwr;nop;swl;swr;lh...]. Load-priority tiebreak.
 *  3. Scheduler: orig places `sh` before `beqz t5` with a nop delay slot; ours
 *     sinks the sh into the beqz delay slot.
 *
 * All unaligned copies MATCH via the S4Copy idiom (lwl/lwr+swl/swr) - the
 * lwl/lwr "blocker" is solvable; the loop hoist is the real blocker.
 */
#include "common.h"

s32 GetStaticSpawn(void *arg0, s16 *arg1, s32 arg2, u8 *arg3, void **arg4, void **arg5, void *arg6) {
    s32 count;
    s32 i;
    StaticLinkEntry *e;
    void *p2;
    void *p3;
    s32 z;
    s32 w;
    s32 h;
    count = *(u8 *)(arg3 + arg2);
    if (count == 0) {
        return -1;
    }
    e = ((StaticLinkEntry **)arg4)[arg2];
    for (i = 0; i < count; i++, e++) {
        if (arg1[0] == e->x) {
            if (arg1[1] == e->y || e->y < 0) {
                D_8008ACBC = arg2;
                D_8008ACC0 = i;
                z = e->z;
                D_8008ACC4 = z;
                w = e->w;
                p2 = (char *)arg5[z] + w * 6;
                D_8008ACC8 = w;
                *(S4Copy *)arg0 = *(S4Copy *)p2;
                p3 = (char *)SPAWN_POS_ADJUST + *(u8 *)((char *)p2 + 4) * 6;
                *(S42Copy *)((char *)arg0 + 4) = *(S42Copy *)p3;
                if (arg6 != 0) {
                    *(s8 *)((char *)gpNavChallengesComplete + *(s8 *)((char *)p2 + 5)) = 1;
                }
                return D_8008ACC4;
            }
        }
    }
    return -1;
}
