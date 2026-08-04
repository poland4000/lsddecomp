// NEAR MISS: -204 bytes, cross-jumping state machine structure
// vtable 0x44/0x4C/0x48 calls filling 3 stack vals, then conditional s2
void func_8004F9D8(void *arg0) {
    s32 sp_val1, sp_val2, sp_val3, s2;
    (*(void(**)(void*))((char*)*(void**)arg0 + 0x44))(arg0);
    (*(void(**)(void*, s32*, s32*, s32*))((char*)*(void**)arg0 + 0x4C))(arg0, &sp_val1, &sp_val2, &sp_val3);
    s32 s1 = (*(s32(**)(void*))((char*)*(void**)arg0 + 0x48))(arg0);
    if (s1 == 0) { s2 = 2; }
    else {
        if (sp_val2 != 0) { s2 = 1; }
        else {
            if (sp_val3 != 0) { s2 = 1; }
            else if (s1 == 0) { s2 = 2; }
            else if (sp_val1 != 0) { s2 = 3; }
            else if (sp_val2 != 0) { s2 = 4; }
            else if (sp_val3 != 0) { s2 = 1; }
            else if (*(s32*)((char*)arg0 + 0x24) != 1) { s2 = 0; }
            else { s2 = 1; }
        }
    }
    return s2;
}
