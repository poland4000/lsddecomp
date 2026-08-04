// NEAR MISS: +8 bytes, load scheduling - target loads a4 BEFORE v60
// and computes sp_val after vtable loads. Compiler reorders regardless.
// s0+ra only, 4 vtable calls, D_8008AA10/AA18 globals
void func_8004E0E4(void *arg0) {
    s32 sp_val;
    void *a4 = *(void**)((char*)arg0 + 0xA4);
    void *v60 = *(void**)((char*)arg0 + 0x60);
    void *v1;
    sp_val = *(s32*)((char*)v60 + 0x14);
    v1 = *(void**)a4;
    (*(void(**)(void*, s32*))((char*)v1 + 0x19C))(a4, &sp_val);
    (*(void(**)(void*))((char*)*(void**)arg0 + 0x128))(arg0);
    a4 = *(void**)((char*)arg0 + 0xA4);
    if ((*(s32(**)(void*))((char*)*(void**)a4 + 0x1AC))(a4) != 0) {
        *(s8*)D_8008AA10 = 0;
    }
    a4 = *(void**)((char*)arg0 + 0xAC);
    (*(void(**)(void*, s32, s32, s32, s32, s32, s32, s32))((char*)*(void**)a4 + 0x78))(
        a4, D_8008AA10, D_8008AA18, 0xD, 3,
        *(s32*)((char*)arg0 + 0xA8), *(s32*)((char*)arg0 + 0xBC), *(s32*)((char*)arg0 + 0xC0));
}
