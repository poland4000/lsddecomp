// NEAR MISS: 1 attempt. Diverged (39 diffs) — the abs(a1) comparison's codegen
// and the if-else structure didn't match; also my attempt was 4 bytes short
// (shifting the data region). The condition is abs(a1) < D_80087E5C[idx] with
// the updates; both the a1<0 and a1>=0 paths share the update block.
void func_80059814(void *arg0) {
    s32 idx = *(s32*)((char*)arg0 + 0x88);
    if (idx != 0) {
        s32 a2 = D_80087E50[idx];
        s32 a1 = a2 + *(s32*)((char*)arg0 + 0x8C);
        s32 v1 = D_80087E5C[idx];
        if (a1 < 0) {
            if (-a1 < v1) {
                *(s32*)((char*)*(void**)((char*)arg0 + 0x5C) + 0x24) += a2;
                *(s32*)((char*)arg0 + 0x8C) = a1;
            }
        } else {
            if (a1 < v1) {
                *(s32*)((char*)*(void**)((char*)arg0 + 0x5C) + 0x24) += a2;
                *(s32*)((char*)arg0 + 0x8C) = a1;
            }
        }
        *(s32*)((char*)arg0 + 0x88) = 0;
    } else {
        s32 v0 = *(s32*)((char*)arg0 + 0x8C);
        if (v0 != 0) {
            s32 a2 = v0 >= 0 ? 0x258 : -0x258;
            *(s32*)((char*)*(void**)((char*)arg0 + 0x5C) + 0x24) += a2;
            *(s32*)((char*)arg0 + 0x8C) += a2;
        }
    }
}
