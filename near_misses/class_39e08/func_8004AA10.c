// NEAR MISS: same size, 4 instructions reordered
// Target loads D_8008A980 (lw $a1) BEFORE the zero stores
// CC1PSX loads it AFTER the stores
// Load hoisting: target hoists lw into delay slot of lw $v0,0($s0)
// CC1PSX does NOT do this load hoisting

void func_8004AA10(void *arg0) {
    *(s32*)((char*)arg0 + 0x68) = 0;
    *(s32*)((char*)arg0 + 0xE8) = 0;
    *(s32*)((char*)arg0 + 0x88) = 0;
    (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0xDC))(arg0, D_8008A980);
    *(s32*)((char*)arg0 + 0x1CC) = -1;
    *(s32*)((char*)arg0 + 0x1D0) = -1;
    *(s32*)((char*)arg0 + 0x1D4) = -1;
    *(s32*)((char*)arg0 + 0x1D8) = -1;
}
