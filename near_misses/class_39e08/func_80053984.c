// NEAR MISS: jump table switch - rodata jump table references .s labels
// The jtbl_8001174C in rodata is a separate data file that references
// the asm labels, so C compilation breaks the link.
// Would need the rodata jump table regenerated too.
void func_80053984(void *arg0, void *arg1, s32 arg2) {
    if (*(s32*)((char*)arg0 + 0x20) == 0) {
        switch (arg2) {
        case 0xA: (*(void(**)(void*))((char*)*(void**)arg0 + 0x94))(arg0); break;
        case 0xB: (*(void(**)(void*))((char*)*(void**)arg0 + 0x98))(arg0); break;
        case 0xC: (*(void(**)(void*))((char*)*(void**)arg0 + 0x9C))(arg0); break;
        case 0xD: (*(void(**)(void*))((char*)*(void**)arg0 + 0xA0))(arg0); break;
        case 0xE: (*(void(**)(void*))((char*)*(void**)arg0 + 0xA4))(arg0); break;
        case 0xF: (*(void(**)(void*))((char*)*(void**)arg0 + 0xA8))(arg0); break;
        case 0x10: (*(void(**)(void*))((char*)*(void**)arg0 + 0xAC))(arg0); break;
        case 0x11: (*(void(**)(void*))((char*)*(void**)arg0 + 0xB0))(arg0); break;
        }
    } else if (arg2 >= 9) {
        *(s32*)((char*)*(void**)((char*)arg0 + 0x3C) + 0x44) = 0;
    }
}
