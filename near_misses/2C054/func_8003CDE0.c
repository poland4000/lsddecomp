// NEAR MISS: 4 attempts. Remaining diff: ONE insn — the else path's
// `*(0x70) = arg1` — mine folds to `sw zero` (arg1==0 known from the beqz),
// target keeps `sw s1`. CSE constant-propagation fold (same family as the
// func_8003CCDC return-fold; the ||-with-assignment trick didn't apply here).
// KEY: the result's vtable->0x78 call must be the plain cast-call form
// ((void(*)())(...)) — the deref-call (*(void(**)())(X)) adds a third load;
// and the slot load needs explicit parens: *(void**)((char*)*(void**)result + 0x78).
void func_8003CDE0(void *arg0, void *arg1, void *arg2) {
    void *result;
    if (arg1 != 0) {
        if (*(s32*)((char*)arg0 + 0x70) != 0) {
            (*(void(**)())(*(void**)*(void**)((char*)arg0 + 0x74) + 4))(*(void**)((char*)arg0 + 0x74));
        }
        result = func_8003B39C(arg1);
        *(void**)((char*)arg0 + 0x74) = result;
        ((void(*)())(*(void**)((char*)*(void**)result + 0x78)))(result);
        (*(void(**)())(*(void**)*(void**)((char*)arg0 + 0x74) + 0x5C))(*(void**)((char*)arg0 + 0x74));
        *(void**)((char*)arg0 + 0x70) = arg1;
    } else {
        *(void**)((char*)arg0 + 0x74) = arg2;
        *(void**)((char*)arg0 + 0x70) = arg1;
    }
}
