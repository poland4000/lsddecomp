// NEAR MISS: -52 bytes, cross-jumping structure not reproduced
// Both paths (negative and positive) jump to a SHARED jalr
// Negative: arg0->vtable->0x9C(arg0)
// Positive: arg0->0x20=5, arg0->0x3C->vtable->0x200 call,
//           func_80053EB4(arg0,result,0,0xA,1), then vtable->0xFC
void func_80053BE8(void *arg0) {
    void (*fn)(void*);
    if (*(s32*)((char*)*(void**)((char*)arg0 + 0x3C) + 0x164) < 0) {
        fn = (void (*)(void*))((char*)*(void**)arg0 + 0x9C);
    } else {
        *(s32*)((char*)arg0 + 0x20) = 5;
        void *temp = *(void**)((char*)arg0 + 0x3C);
        s32 result = (*(s32(**)(void*))((char*)*(void**)temp + 0x200))(temp);
        func_80053EB4(arg0, result, 0, 0xA, 1);
        temp = *(void**)((char*)arg0 + 0x3C);
        fn = (void (*)(void*))((char*)*(void**)temp + 0xFC);
    }
    fn(arg0);
}
