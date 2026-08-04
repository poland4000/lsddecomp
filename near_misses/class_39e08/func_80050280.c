// Attempt with if/else if chain for state dispatch + counter + vtable call
// Previously: body matched instruction-for-instruction with vanilla cc1
// but was 12 bytes larger due to scheduling differences
// Testing now with real CC1PSX

void func_80050280(void *arg0) {
    s32 v1;
    s32 counter;
    v1 = *(s32*)((char*)arg0 + 0x28);
    if (v1 == 7) {
        counter = *(s32*)((char*)arg0 + 0x5C);
        *(s32*)((char*)arg0 + 0x5C) = counter + 1;
        if (counter >= 6) {
            (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x7C))(arg0, 0x13);
        }
    } else if (v1 == 0xB) {
        counter = *(s32*)((char*)arg0 + 0x5C);
        *(s32*)((char*)arg0 + 0x5C) = counter + 1;
        if (counter >= 6) {
            (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x7C))(arg0, 0x14);
        }
    } else if (v1 == 0xF) {
        counter = *(s32*)((char*)arg0 + 0x5C);
        *(s32*)((char*)arg0 + 0x5C) = counter + 1;
        if (counter >= 6) {
            (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x7C))(arg0, 0x15);
        }
    }
}
