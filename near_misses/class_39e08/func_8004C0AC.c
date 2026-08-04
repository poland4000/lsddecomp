// NEAR MISS: -100 bytes, structure completely wrong
// Linked list traversal with flag setting and vtable call
void func_8004C0AC(void *arg0, void *arg1) {
    void *temp = *(void**)((char*)arg1 + 0x4);
    if (*(s16*)((char*)temp + 0x30) >= 0) {
        (*(void(**)(void*))((char*)*(void**)temp + 0x7C))(temp);
        void *ptr = *(void**)((char*)arg1 + 0x10);
        void *end = (void*)((char*)ptr + 0x668);
        while (ptr < end) {
            void *obj = *(void**)ptr;
            *(s32*)((char*)obj + 0x10) = (*(s32**)((char*)obj + 0x10)) | 0x80000000;
            *(s32*)((char*)*(void**)ptr + 0x20) = 0;
            *(s32*)((char*)*(void**)ptr + 0x18) = 0;
            ptr = (void*)((s32*)ptr + 1);
        }
    }
}
