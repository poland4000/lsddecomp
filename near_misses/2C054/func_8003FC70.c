// NEAR MISS: 7 attempts. Remaining diff: ONE insn — target starts `addu a1,a0`
// (switch index in a1 as a separate pseudo from the parm), mine uses a0 directly
// (index CSE-merged with the parm). Everything else byte-matches.
// KEY discoveries: (1) switch tree root comes from the cost-table balance —
// case values 0-3 are CONTROL chars (cost_table=-1) making the cumulative-cost
// bisect land after node 0 → root = case 1 (NOT the first-listed case);
// (2) case bodies must have SEPARATE breaks (adjacent same-body cases merge
// into a range by the frontend, changing the tree); (3) case 0 must be FIRST
// in the source so its body precedes the 1/2/3 store (parse order → layout),
// which also prevents the jump-pass from inverting the case-3 beq into a bne.
void func_8003FC70(s32 arg0) {
    switch (arg0) {
    case 0:
        D_800902E0 = 0;
        break;
    case 1:
        D_800902E0 = arg0;
        break;
    case 2:
        D_800902E0 = arg0;
        break;
    case 3:
        D_800902E0 = arg0;
        break;
    default:
        func_80012C20(&D_80011194);
        break;
    }
}
