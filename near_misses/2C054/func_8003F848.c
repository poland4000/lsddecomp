// NEAR MISS: 6 structural attempts. Blocker: gcc 2.6.3 loop pass strength-reduces
// the D_80090260[i] address giv (loop dump: "giv at 30 combined with giv at 34,
// reduced to reg 120") — the reduced pointer then gets CSE-substituted into the
// loop-top store (sw a2,0(a1) with a1+=4 at the back-edge) and the .LF9A0 load
// gets store-forwarded into the a2-copy (merging .LF9A0 with .LF9F8). The target
// recomputes sll v0,s1,2; addu v0,v0,a3 per iteration (no reduction).
// Attempted: D_80090260[i], (char*)D_80090260+i*4, (D_80090260+i), &D_80090260[i]
// via temp, goto-loop, while(1), do-while — ALL reduce (benefit 4 - add_cost > 0,
// lifetime*threshold*benefit >= insn_count always).
// Threshold ~2*(3+n_non_fixed_regs) ~ 60+, insn_count ~36 — any positive benefit
// reduces. Only a <=0 benefit or non-recognized giv would skip it.
// Structure otherwise correct: 8-field S32x8 struct copies (4-load batches),
// prev==0x64 sentinel path with i=prev+1/i=0, toggle-free loop with breaks.
typedef struct { s32 x[8]; } S32x8;
void func_8003F848(void *arg0, void *arg1) {
    s32 i = 0;
    s32 prev = 0x64;
    void *a2 = arg0;
    void *v0;
    for (;;) {
        D_80090260[i] = a2;
        if (*(s32*)((char*)a2 + 0x48) == 0) {
            if (*(s32*)a2 == D_80090B74 || *(s32*)a2 == 0) {
                *(S32x8*)((char*)a2 + 0x24) = *(S32x8*)((char*)a2 + 0x4);
                *(S32x8*)arg1 = *(S32x8*)((char*)a2 + 0x24);
                *(s32*)a2 = D_80090B74;
                break;
            }
            if (prev == 0x64) {
                i = prev + 1;
                *(S32x8*)arg1 = *(S32x8*)((char*)D_80090260[0] + 0x24);
                i = 0;
                break;
            }
            *(S32x8*)arg1 = *(S32x8*)((char*)D_80090260[i] + 0x24);
            break;
        }
        if (*(s32*)a2 == D_80090B74) {
            *(S32x8*)arg1 = *(S32x8*)((char*)a2 + 0x24);
            break;
        }
        if (*(s32*)a2 == 0) {
            a2 = *(void**)((char*)a2 + 0x48);
            prev = i;
        }
        i++;
    }
    if (i > 0) {
        s32 *s0 = &D_8009025C[i];
        do {
            func_80012AF8(arg1, *(s32*)s0 + 4);
            v0 = *(void**)s0;
            i--;
            *(S32x8*)((char*)v0 + 0x24) = *(S32x8*)arg1;
            *(s32*)*(void**)s0 = D_80090B74;
            s0--;
        } while (i > 0);
    }
}
