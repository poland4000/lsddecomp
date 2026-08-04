// NEAR MISS: -64 bytes, completely different structure
// Bit manipulation: (arg2+0x21FF)>>13<<16 | 0x200
// Target has 0x38 stack frame, call sequence is different

s32 func_8004ECCC(void *arg0, u8 arg1, s32 arg2) {
    s32 sp_val;
    s32 temp = ((arg2 + 0x21FF) >> 13) << 16;
    func_8004F32C(&sp_val, *(s32*)((char*)arg0 + 0xC), D_8008AAAC);
    s32 result = func_80050938(arg0, temp | 0x200);
    if (result == -1) {
        return 0;
    }
    func_800508F8();
    func_80050908(&sp_val);
    return 1;
}
