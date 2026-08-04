/* func_80065CEC - BEST ATTEMPT (3 attempts) - NOT MATCHED
 *
 * REMAINING 2 DIFFS - constant materialization:
 *  orig: beqz delay = `addu v0,0`, else-store = `sw v0,0x5C(s0)`
 *  ours: beqz delay = nop,       else-store = `sw zero,0x5C(s0)`
 *  (our compiler folds the else's zero into the store and DCEs the
 *  v0=0; orig keeps the materialized register).
 *
 * Tried: shared store, v0=0 before the if, two stores - same 2 diffs.
 */
#include "common.h"

void func_80065CEC(void *arg0) {
    s32 v0;
    (*(void(**)(void *))((char *)*(void **)arg0 + 0x104))(arg0);
    v0 = 0;
    if (*(s32 *)((char *)arg0 + 0x60) != 0) {
        v0 = (*(s32(**)(void *))((char *)*(void **)*(void **)((char *)arg0 + 0x5C) + 0x4))(*(void **)((char *)arg0 + 0x5C));
        *(s32 *)((char *)arg0 + 0x5C) = v0;
    } else {
        *(s32 *)((char *)arg0 + 0x5C) = v0;
    }
}
