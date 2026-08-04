// NEAR MISS: +8 bytes, GP-relative addresses resolve differently
// Loop over D_8008E0C8 array calling vtable->0xEC
void func_80054C74(void *arg0) {
    s32 i;
    if (D_8008AC80 >= 0) {
        if (D_8008AC88 > 0) {
            for (i = 0; i < D_8008AC88; i++) {
                void *obj = *(void**)((s32*)D_8008E0C8 + i);
                (*(void(**)(void*, void*))((char*)*(void**)obj + 0xEC))(obj, arg0);
            }
        }
    }
}
