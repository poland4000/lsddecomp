#include "common.h"

extern s32 gBMemPoolSelect;
extern s32 gBMemLock;
extern s32 gDisplayMode;
extern s32 gDisplayParam;
extern s32 gVtable_BasicClass;
extern s32 D_8008E248;
extern s32 D_8008ACD0;

extern s32 gBMemPoolSelect;
extern s32 gBMemLock;
extern s32 gDisplayMode;
extern s32 gDisplayParam;

void *func_80011D34(s32);                                 /* extern */
extern u8 D_8001028C[];
void func_80017AC8(void *, s32);                          /* extern */
void DebugPrintf(s32, void*, s32);                      /* extern */
void CopyPrimTriple(s32 *, s32 *, u8 *, u8 *, u8 *);       /* extern */
void CopyPrimTriple(s32 *, s32 *, u8 *, u8 *, u8 *);       /* extern */

void *BMemPMgrInit(u32 arg0) {
    void *p;

    if (arg0 < 0x400) {
        arg0 = 0x400;
    }
    p = func_80011D34(arg0 + 0x20);
    if (p != NULL) {
        *(s32*)p = (s32)p + 0x1C;
        ((s32*)p)[1] = arg0;
        func_80017AC8(p);
    } else {
        DebugPrintf((s32)D_8001028C, 0, arg0);
    }
    return p;
}

void BMemSetPoolSelect(s32 arg0) {
    gBMemPoolSelect = arg0;
}

void func_80011F68();                                  /* extern */

void func_80017AA8(void) {
    func_80011F68();
}

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_80017AC8);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", BMemAlloc);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", BMemFree);

void func_80017EA8(void) {
}

void BMemFree(void **);                           /* extern */

s32 BasicClass__Delete(void **arg0) {
    (*(void(**)())(*(void**)(arg0) + 0xc))();
    BMemFree(arg0);
    return 0;
};

void *Get_vtable_BasicClass(void);                                /* extern */

void BasicClass__BasicClass(void *arg0) {
    *(s32*)((char*)(arg0)) = Get_vtable_BasicClass();
    *(s32*)((char*)(arg0) + 0x8) = 0;
    *(s32*)((char*)(arg0) + 0x4) = 0;
}

void BasicClass__Shutdown(void **arg0) {
    (*(void(**)(void*, s32))(*(void**)(arg0) + 0x30))(arg0, 1);
    (*(void(**)())(*(void**)(arg0) + 0x18))(arg0);
    (*(void(**)())(*(void**)(arg0) + 0x28))(arg0);
}

s32 ListInsert(s32);                             /* extern */

void BasicClass__AdoptChild(s32 arg0, void **arg1) {
    if (ListInsert(arg0 + 4) != 0) {
        (*(void(**)())(*(void**)(arg1) + 0x20))(arg1, arg0);
    }
};

void ListRemove(s32 *, s32);                          /* extern */

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", BasicClass__func_17ff0);

void ListIterNext(s32 *, void **);                      /* extern */

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", BasicClass__func_18040);

void BasicClass__NextChildA(void *arg0, s32 *arg1, s32 *arg2) {
    if (*arg1 == 0) {
        *arg2 = *(s32*)((char*)(arg0) + 0x4);
    }
    ListIterNext(arg1, arg2);
}

s32 ListInsert(s32);                               /* extern */

void BasicClass__AddChildB(s32 arg0) {
    ListInsert(arg0 + 8);
}

void ListRemove(s32 *, s32);                          /* extern */

void BasicClass__RemoveChildB(void *arg0) {
    ListRemove((char *)arg0 + 0x8);
}

void ListClear(s32 **);                               /* extern */

void BasicClass__ClearChildrenB(void *arg0) {
    ListClear(arg0 + 8);
    *(s32*)((char*)(arg0) + 0x8) = 0;
}

void ListIterNext(s32 *, void **);                      /* extern */

void BasicClass__NextChildB(void *arg0, s32 *arg1, s32 *arg2) {
    if (*arg1 == 0) {
        *arg2 = *(s32*)((char*)(arg0) + 0x8);
    }
    ListIterNext(arg1, arg2);
}

void *BMemAlloc(s32);                              /* extern */

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", ListInsert);

void BMemFree(void **);                               /* extern */

void ListRemove(s32 *arg0, s32 arg1) {
    s32 *node = (s32*)*arg0;
    s32 *prev = NULL;
    while (node != NULL) {
        if (node[1] == arg1) {
            if (prev != NULL) {
                prev[0] = node[0];
            } else {
                *arg0 = node[0];
            }
            BMemFree((void**)node);
            return;
        }
        prev = node;
        node = (s32*)node[0];
    }
}

void ListClear(s32 **arg0) {
    void *var_a0;
    void *var_s0;

    var_s0 = *arg0;
    var_a0 = var_s0;
    if (var_s0 != NULL) {
        do {
            var_s0 = *(void**)var_s0;
            BMemFree(var_a0);
            var_a0 = var_s0;
        } while (var_s0 != NULL);
    }
}

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", BasicClass__func_182cc);

void BasicClass__Nop(void) {
}

void BasicClass__OnEvent(void *arg0, s32 arg1, s32 arg2) {
    if (arg2 == 1) {
        (*(void(**)())(*(void **)arg0 + 0x14))();
    }
}

extern s32 gVtable_BasicClass;

void *Get_vtable_BasicClass(void) {
    return &gVtable_BasicClass;
};

void ListIterNext(s32 *arg0, void **arg1) {
    void *temp_v0;

    temp_v0 = *arg1;
    if (temp_v0 != NULL) {
        *arg0 = *(s32*)((char*)(temp_v0) + 0x4);
        *arg1 = *(s32*)((char*)((*arg1)));
        return;
    }
    *arg0 = 0;
}

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", ReleaseObjectArray);

void BMemLock(s32 arg0) {
    gBMemLock = arg0;
}

s32 BMemGetLock(void) {
    return gBMemLock;
}

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_80018464);

extern s32 D_8008E248;

void SetPrimFlags(u8 *arg0, u8 *arg1) {
    if (*(s32*)(arg1 + 0x1C) != 0) {
        arg0[7] |= 2;
    } else {
        arg0[7] &= ~2;
    }
    if (D_8008E248 != 0) {
        arg0[7] |= 1;
    } else {
        arg0[7] &= ~1;
    }
    arg1[0x14] = arg0[3];
    arg1[0x15] = arg0[7];
}

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_800193C0);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_800194A4);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_800195EC);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_800196D4);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_800196E8);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_800196FC);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_80019710);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_80019724);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_8001974C);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_80019774);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_8001979C);

extern s32 D_8008ACD0;
void func_8001A380(s32, s32, s32, s32, s32, s32);       /* extern */
void func_8001A564(void*, s32*);                          /* extern */

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_800197C4);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_8001989C);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_800199EC);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_80019B24);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_80019C04);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_80019D84);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_80019EE4);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_8001A064);

void InitPrimArray(s32 **arg0, s32 **arg1, s32 arg2) {
    s32 *p = (s32 *)((char *)arg1 + 0x18);
    if (arg2 == 4) {
        arg1 = (s32 **)((char *)arg1 + 0xF0);
    } else {
        arg1 = (s32 **)((char *)arg1 + 0xA8);
    }
    while (arg2-- > 0) {
        *arg1 = p;
        *arg0 = p;
        p = (s32 *)((char *)p + 0x18);
        arg1++;
        arg0++;
    }
}

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_8001A268);

INCLUDE_ASM("asm/lsdde/nonmatchings/8220", func_8001A380);

typedef struct { u8 b[8]; } unaligned8_8001A3EC;
typedef struct { u8 b[4]; } unaligned4_8001A3EC;

void CopyPrimTriple(s32 *a0, s32 *a1, unaligned4_8001A3EC *a2, unaligned4_8001A3EC *a3, unaligned4_8001A3EC *a4) {
    *(unaligned8_8001A3EC*)a0[0] = *(unaligned8_8001A3EC*)a1[0];
    *(unaligned8_8001A3EC*)a0[1] = *(unaligned8_8001A3EC*)a1[1];
    *(unaligned8_8001A3EC*)a0[2] = *(unaligned8_8001A3EC*)a1[2];
    *(unaligned4_8001A3EC*)((char*)a0[0] + 0x10) = *a2;
    *(unaligned4_8001A3EC*)((char*)a0[1] + 0x10) = *a3;
    *(unaligned4_8001A3EC*)((char*)a0[2] + 0x10) = *a4;
}

typedef struct { u8 b[8]; } un8_8001A4C0;
typedef struct { u8 b[4]; } un4_8001A4C0;

void CopyPrimQuad(s32 *s0, s32 *s1, un4_8001A4C0 *a2, un4_8001A4C0 *a3, un4_8001A4C0 *a4, un4_8001A4C0 *a5) {
    CopyPrimTriple(s0, s1, a2, a3, a4);
    *(un8_8001A4C0*)(*(s32*)((char*)s0 + 0xC)) = *(un8_8001A4C0*)(*(s32*)((char*)s1 + 0xC));
    *(un4_8001A4C0*)(*(s32*)((char*)s0 + 0xC) + 0x10) = *a5;
}

void SetDisplayMode(s32 arg0, s32 arg1) {
    gDisplayMode = arg0;
    if (arg0 != 0) {
        gDisplayParam = arg1;
    }
}
