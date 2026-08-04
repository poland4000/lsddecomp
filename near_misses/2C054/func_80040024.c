// NEAR MISS: 2 attempts. Remaining diffs (7 insns, all one region): the arg-move
// ordering — target [addu a0,s0; ori a1,1; sll v1; addu v1; lw vtable; lui a2;
// addiu a2; lw slot; jalr; addu a2(delay)], mine [sll; v1; lui a2; addiu a2;
// a0; lw vtable; a1; lw slot; jalr; a2(delay)] — the a0/a1 moves deferred and
// the a2 base hoisted early; the vtable-load delay filled with lui a2 (target)
// vs ori a1 (mine). Scheduler ready-list tiebreak.
void func_80040024(void *arg0) {
    s32 ret;
    if (*(s32*)((char*)arg0 + 0x6C) != 0) {
        return;
    }
    ret = (*(s32(**)())(*(void**)arg0 + 0xDC))();
    (*(void(**)(void*, s32, void*))((char*)*(void**)arg0 + 0xB8))(arg0, 1, &D_8006EA90[ret * 3]);
    *(s32*)((char*)arg0 + 0x6C) = 1;
    *(s32*)((char*)arg0 + 0x74) = -*(s32*)((char*)arg0 + 0x74);
}
