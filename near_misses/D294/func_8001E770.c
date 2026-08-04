void func_8001E770(void *arg0, void *arg1) {
    *(s32*)((char*)(arg0) + 0x20) = arg1;
    *(s32*)((char*)(arg0) + 0x18) = (s32) *(s32*)((char*)(arg1) + 0x10);
    func_8001EF70(*(s32*)((char*)*(s32**)((char*)(arg0) + 0x20) + 0xc) + 0xC, arg0 + 0x10, 0);
}
