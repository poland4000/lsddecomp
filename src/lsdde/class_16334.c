#include "common.h"

extern s32 gPadInstanceCount;
extern s32 D_8008B388[];
extern s32 D_80010764;
extern s32 gVtable_Pad;

void *BMemAlloc(s32);                               /* extern */
void *Get_vtable_BasicClass(void);                              /* extern */
void *Get_vtable_Pad(void);                              /* extern */
void func_80025EAC(void *);                             /* extern */
void PadShutdownAll(void);                               /* extern */
extern s32 gPadInstanceCount;
extern s32 D_8008B388[];

void *New_Pad(s32 arg0, s32 arg1) {
    void *s0 = BMemAlloc(0x20);

    if (s0 != 0) {
        (*(void(**)(void*, s32, s32))((char *)Get_vtable_Pad() + 0x8))(s0, arg0, arg1);
        return s0;
    }
    return 0;
}

INCLUDE_ASM("asm/lsdde/nonmatchings/class_16334", func_80025BA0);

void Pad__Destructor(void *arg0) {
    gPadInstanceCount--;
    if (gPadInstanceCount == 0) {
        PadShutdownAll();
    }
    (*(void(**)(void*))((char*)Get_vtable_BasicClass() + 0xC))(arg0);
}

void Pad__Init(void *arg0, s32 arg1) {
    s16 temp_a1;

    temp_a1 = arg1 != 0;
    *(s16*)((char*)(arg0) + 0xc) = temp_a1;
    *(s32*)((char*)(arg0) + 0x10) = 0;
    *(s32*)((char*)(arg0) + 0x14) = 0;
    *(s32*)((char*)(arg0) + 0x18) = 0;
    (*(void(**)())(*(void**)(arg0) + 0x50))(arg0, temp_a1);
}

s32 PadRead(u16);                             /* extern */

void Pad__Update(void *arg0) {
    s32 temp_a0;
    s32 temp_v0;
    s32 temp_v1;

    temp_v0 = PadRead(*(s32*)((char*)(arg0) + 0xc));
    temp_a0 = *(s32*)((char*)(arg0) + 0x10);
    *(s32*)((char*)(arg0) + 0x10) = temp_v0;
    temp_v1 = temp_v0 ^ temp_a0;
    *(s32*)((char*)(arg0) + 0x14) = (s32) (temp_v1 & temp_a0);
    *(s32*)((char*)(arg0) + 0x18) = (s32) (temp_v1 & temp_v0);
};

extern s32 D_8008B388[];

INCLUDE_ASM("asm/lsdde/nonmatchings/class_16334", func_80025D10);

void Pad__NopA(void) {
}

extern s32 D_80010764;

INCLUDE_ASM("asm/lsdde/nonmatchings/class_16334", func_80025E1C);

void Pad__NopB(void) {
}

extern s32 gVtable_Pad;

void *Get_vtable_Pad(void) {
    return &gVtable_Pad;
};
