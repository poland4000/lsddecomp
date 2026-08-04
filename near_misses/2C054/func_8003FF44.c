// NEAR MISS: 2 attempts. Remaining diff: 1 insn position — target hoists
// `addiu v0,v1,-1` ABOVE the blez (store in the blez delay); mine emits
// [blez; addiu(delay); sw]. Consequence of the load pseudo landing in v1
// (target) vs v0 (mine): target's addiu-dest reuses the constant's v0, the
// load takes v1; mine's load reuses v0 and the addiu is in-place.
// Everything else (flag gates, lbu increments, vtable->0xE0 call) matches.
void func_8003FF44(void *arg0, void *arg1, s32 arg2) {
    s32 v;
    if (arg2 == 2) {
        v = *(s32*)((char*)arg0 + 0x80);
        if (v > 0) {
            *(s32*)((char*)arg0 + 0x80) = v - 1;
            if (*(s32*)((char*)arg0 + 0x7C) != 9) {
                if (*(s32*)((char*)arg0 + 0x78) & 4) {
                    *(u8*)((char*)arg0 + 0x64) += *(u8*)((char*)arg0 + 0x74);
                }
                if (*(s32*)((char*)arg0 + 0x78) & 2) {
                    *(u8*)((char*)arg0 + 0x65) += *(u8*)((char*)arg0 + 0x74);
                }
                if (*(s32*)((char*)arg0 + 0x78) & 1) {
                    *(u8*)((char*)arg0 + 0x66) += *(u8*)((char*)arg0 + 0x74);
                }
            }
        } else {
            (*(void(**)())(*(void**)arg0 + 0xE0))();
        }
    }
}
