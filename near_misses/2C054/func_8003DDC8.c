// NEAR MISS: +12 bytes, load ordering (0x58/0x60/0x5C sequence)
// idx=arg0->0x58*4, a1=*(arg0->0x60+idx)+1, obj=*(arg0->0x5C+idx)
// if a1<obj: call arg0->0x11C(arg0,0,1) else call obj->0x11C(obj,a1,1)
void func_8003DDC8(void *arg0) {
    s32 idx = *(s32*)((char*)arg0 + 0x58) * 4;
    if ((*(s32*)((char*)*(void**)((char*)arg0 + 0x60) + idx) + 1) < *(s32*)((char*)*(void**)((char*)arg0 + 0x5C) + idx)) {
        (*(void(**)(void*, s32, s32))((char*)*(void**)arg0 + 0x11C))(arg0, 0, 1);
    } else {
        (*(void(**)(void*, s32, s32))((char*)*(void**)*(void**)((char*)arg0 + 0x5C) + idx + 0x11C))(*(void**)((char*)*(void**)((char*)arg0 + 0x5C) + idx), *(s32*)((char*)*(void**)((char*)arg0 + 0x60) + idx) + 1, 1);
    }
}
