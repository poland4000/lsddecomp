// NEAR MISS: 4 attempts. Best = batched s32-temp form (lh's, correct permutation).
// Remaining diffs: (1) target pipelines [lh;lh;sh;lh;sh;...] with t1/t2/t3 cycling,
// mine batches [9x lh; 9x sh] into 9 registers (sched2 hoists all loads); (2) the
// dead `addu v0,a1` at the top (target) — a surviving copy of arg1.
// KEY: direct s16 reads give lhu + per-copy nops (one reused reg); s32 temps give
// lh. The target's 3-register cycle comes from the pipelined pre-sched2 order.
typedef short s16;
typedef int s32;
void func_8003FCFC(s16 *arg0, s16 *arg1) {
    s32 v0 = *(s16*)((char*)arg0 + 0x0);
    s32 v1 = *(s16*)((char*)arg0 + 0x6);
    s32 v2 = *(s16*)((char*)arg0 + 0xC);
    s32 v3 = *(s16*)((char*)arg0 + 0x2);
    s32 v4 = *(s16*)((char*)arg0 + 0x8);
    s32 v5 = *(s16*)((char*)arg0 + 0xE);
    s32 v6 = *(s16*)((char*)arg0 + 0x4);
    s32 v7 = *(s16*)((char*)arg0 + 0xA);
    s32 v8 = *(s16*)((char*)arg0 + 0x10);
    *(s16*)((char*)arg1 + 0x0) = v0;
    *(s16*)((char*)arg1 + 0x2) = v1;
    *(s16*)((char*)arg1 + 0x4) = v2;
    *(s16*)((char*)arg1 + 0x6) = v3;
    *(s16*)((char*)arg1 + 0x8) = v4;
    *(s16*)((char*)arg1 + 0xA) = v5;
    *(s16*)((char*)arg1 + 0xC) = v6;
    *(s16*)((char*)arg1 + 0xE) = v7;
    *(s16*)((char*)arg1 + 0x10) = v8;
}
