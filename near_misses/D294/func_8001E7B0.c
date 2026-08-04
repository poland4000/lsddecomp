void func_8001E7B0(void *arg0) {
    *(s32*)((char*)(arg0) + 0x18) = 0;
    *(s32*)((char*)(arg0) + 0x20) = 0;
};
void func_8001EA8C(s32 *arg0, s16 *arg1, s16 *arg2) {
    arg0[0] = arg2[0] - arg1[0];
    arg0[1] = arg2[1] - arg1[1];
    arg0[2] = arg2[2] - arg1[2];
}
