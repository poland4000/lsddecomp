/* func_80025BA0 — PARKED (1 real diff + cascade: sched2 keeps [sw v0,0(s0)]
 * before the gp load -> load-use nop; orig orders [lw v1,gp] [sw] [addiu] with
 * the sw filling the load gap. C order [store] [load] gives ours;
 * [load] [store] makes the load live across the func_80025E9C call (s0
 * allocation — worse). Same sched2 class. */
void func_80025BA0(void *arg0, void *arg1, void *arg2) {
    s32 v1;

    (*(void (**)(void *))(func_80018390() + 8))(arg0);
    *(void **)arg0 = func_80025E9C();
    v1 = D_8008A848;
    D_8008A848 = v1 + 1;
    if (v1 == 0) {
        func_80025EAC(arg1);
    }
    (*(void (**)(void *, void *))(*(void **)arg0 + 0x40))(arg0, arg2);
}

