// NEAR MISS: +28 bytes, arg4 load ordering differs
// Target: stores a1,a2,a3 THEN loads arg4 from stack
// Ours: loads arg4 first
void func_8004F638(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    *(s32*)((char*)arg0 + 0x40) = arg1;
    *(s32*)((char*)arg0 + 0x44) = arg2;
    *(s32*)((char*)arg0 + 0x54) = arg3;
    *(s32*)((char*)arg0 + 0x58) = arg4;
    *(s32*)((char*)arg0 + 0x24) = 1;
    if (func_8004F9D8() != 0) {
        func_8004F810(arg0);
        func_8004F704(arg0);
        if ((*(s32(**)(void*, s32, s32, s32, s32, s32))((char*)*(void**)arg0 + 0x5C))(
                arg0, *(s32*)((char*)arg0 + 0x38), *(s32*)((char*)arg0 + 0x3C), *(s32*)((char*)arg0 + 0x30), *(s32*)((char*)arg0 + 0x34)) != 0) {
            *(s32*)((char*)arg0 + 0x2C) = (s32)func_8004F784(arg0);
            if (*(s32*)((char*)arg0 + 0x28) != 0xE) {
                (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x7C))(arg0, 0x12);
            } else {
                (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x7C))(arg0, 0xF);
            }
        } else {
            *(s32*)((char*)arg0 + 0x2C) = 0xF;
            (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x7C))(arg0, 0xD);
        }
    }
}
