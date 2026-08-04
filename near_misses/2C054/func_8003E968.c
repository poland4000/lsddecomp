// NEAR MISS: 4 attempts. Best = struct-copy form. Remaining diffs vs target:
//  (1) sw 0x38 (D_8008A900 store) sunk to position ~26 (target: position 6)
//  (2) base lui/addiu hoisted above the 0x54 store (target: at byte-group position)
//  (3) 0x60 store emitted before 0x54 (target: 0x54 first)
//  (4) byte-group base reused for group 2 (target: reloads lui a2/addiu a2 per group)
//  (5) regs: mine base=v0,bytes=v1/a1/a2; target base=a2,bytes=v0/v1/a1
// KEY findings: s8->s32 temp reads give lb (not lbu); S8Triple struct copy gives
// the batched lb 0/1/2(base) + sb x3 pattern with no load-delay nops.
typedef struct { s8 a, b, c; } S8Triple;
void func_8003E968(void *arg0) {
    *(s32*)((char*)arg0 + 0x90) = 0;
    *(s32*)((char*)arg0 + 0x70) = 0;
    *(s32*)((char*)arg0 + 0x34) = D_8008A8FC;
    *(s32*)((char*)arg0 + 0x38) = D_8008A900;
    *(s32*)((char*)arg0 + 0x3C) = 0xD;
    *(s32*)((char*)arg0 + 0x44) = 0x7D0;
    *(s32*)((char*)arg0 + 0x48) = 0x40;
    *(s32*)((char*)arg0 + 0x40) = 0x100;
    *(s32*)((char*)arg0 + 0x4C) = 0xA;
    *(s32*)((char*)arg0 + 0x50) = 0x10000;
    *(s32*)((char*)arg0 + 0x54) = 0;
    *(s32*)((char*)arg0 + 0x60) = 0x4E20;
    *(S8Triple*)((char*)arg0 + 0x5B) = *(S8Triple*)D_8008A8F8;
    *(S8Triple*)((char*)arg0 + 0x58) = *(S8Triple*)D_8008A8F8;
    *(s32*)((char*)arg0 + 0xB4) = 0;
    *(s32*)((char*)arg0 + 0xB8) = 1;
}
