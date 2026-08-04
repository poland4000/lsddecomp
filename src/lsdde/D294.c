#include "common.h"
typedef struct { s8 b[8]; } S8Copy;
typedef struct { s8 b[4]; s16 c; } S42Copy;

extern s32 gSceneStateFlag;
extern s32 D_8006B684;
extern s32 D_8006B690;
extern s32 gVtable_SceneNode;

extern s32 gSceneStateFlag;
void *BMemAlloc(s32);                               /* extern */
void *Get_vtable_SceneNode(void);                               /* extern */
void BMemFree(void *);                              /* extern */
void SceneNode__ClearParent(void);                                /* extern */
void *Get_vtable_BasicClass(void);                               /* extern */
void func_80012838(s32, s32 *);                          /* extern */
extern s32 D_8006B684;
extern s32 D_8006B690;
s32 FixedDiv(s16 *);                                /* extern */
void ListIterNext(void*, void*);                         /* extern */
s32 SetBitField(s32 *,s32,s32, s32);                /* extern */
void func_800160B0(s16*, s16*);                           /* extern */
s32 func_8001F3A4(void);                                 /* extern */
void func_8001F51C(s32);                               /* extern */
void func_80015BFC(s8*, s8*);                             /* extern */
void func_8001EE04(s8*, s8*, s32, void*);                 /* extern */
void BasicClass__NextChildB(void*, s32*, s32*);            /* extern */
extern s32 gVtable_SceneNode;
void CopyTripleArray(u32, s32, s32, s32);                  /* extern */
void func_8001EF70(s32, void *,s32);                    /* extern */
void func_80015D58(void*, void*, void*);                  /* extern */
void *New_SceneNode(void) {
    void *s0 = BMemAlloc(0x44);

    if (s0 != 0) {
        if ((*(s32(**)(void *))((char *)Get_vtable_SceneNode() + 0x8))(s0) != 0) {
            return s0;
        }
        BMemFree(s0);
    }
    return 0;
}
void *SceneNode__Constructor(void *arg0) {
    void *temp_v0;
    void *temp_v0_2;

    temp_v0 = BMemAlloc(0x50);
    *(s32 *)((char *)arg0 + 0x14) = (s32)temp_v0;
    if (temp_v0 != NULL) {
        temp_v0_2 = BMemAlloc(0x28);
        *(s32 *)((char *)*(s32 *)((char *)arg0 + 0x14) + 0x44) = (s32)temp_v0_2;
        if (temp_v0_2 != NULL) {
            (*(void(**)(void *))((char *)Get_vtable_BasicClass() + 0x8))(arg0);
            *(s32 *)((char *)arg0) = (s32)Get_vtable_SceneNode();
            *(s32 *)((char *)arg0 + 0x20) = 0;
            *(s32 *)((char *)arg0 + 0x18) = 0;
            *(s32 *)((char *)arg0 + 0xc) = 0;
            *(s32 *)((char *)*(s32 *)((char *)arg0 + 0x14) + 0x48) = 0;
            (*(void(**)(void *))((char *)*(void **)arg0 + 0x40))(arg0);
            return arg0;
        }
        BMemFree(*(void **)((char *)arg0 + 0x14));
    }
    return NULL;
}
void SceneNode__Destructor(void *arg0) {
    (*(void(**)(void))((char *)*(void **)arg0 + 0x50))();
    (*(void(**)(void *))((char *)*(void **)arg0 + 0x54))(arg0);
    (*(void(**)(void *, s32))((char *)*(void **)arg0 + 0x5C))(arg0, 0);
    BMemFree(*(void **)((char *)*(s32 *)((char *)arg0 + 0x14) + 0x44));
    BMemFree(*(void **)((char *)arg0 + 0x14));
    (*(void(**)(void *))((char *)Get_vtable_BasicClass() + 0xC))(arg0);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/D294", SceneNode__HandleMessage);
INCLUDE_ASM("asm/lsdde/nonmatchings/D294", func_8001CCB4);
INCLUDE_ASM("asm/lsdde/nonmatchings/D294", SceneNode__Reset);
void SceneNode__DispatchMessage(void *arg0, void *arg1, s32 arg2) {
    void *p = Get_vtable_BasicClass();
    (*(void(**)(void*, void*, s32))((char*)p + 0x38))(arg0, arg1, arg2);
    {
        s32 type = *(s32*)(*(s32*)arg1) & 0xF;
        if (type == 2) {
            (*(void(**)(void*, void*, s32))(*(s32*)arg0 + 0x94))(arg0, arg1, arg2);
        } else if (type == 5) {
            (*(void(**)(void*, void*, s32))(*(s32*)arg0 + 0x98))(arg0, arg1, arg2);
        } else if (type == 4) {
            (*(void(**)(void*, void*, s32))(*(s32*)arg0 + 0x9C))(arg0, arg1, arg2);
        }
    }
}
void SceneNode__InitDraw(void *arg0) {
    *(s32*)((char*)(arg0) + 0x24) = 0;
    *(s32*)((char*)(arg0) + 0x10) = 0;
    func_80012838(0, *(s32*)((char*)(arg0) + 0x14));
    (*(void(**)())(*(void**)(arg0) + 0x44))(arg0, 1, &D_8006B684);
    (*(void(**)())(*(void**)(arg0) + 0x48))(arg0, 1, &D_8006B690);
    **(s32**)((char*)(arg0) + 0x14) = 1;
};
INCLUDE_ASM("asm/lsdde/nonmatchings/D294", func_8001CEB4);
INCLUDE_ASM("asm/lsdde/nonmatchings/D294", func_8001D008);
void *SceneNode__AttachChild(void *arg0, void *arg1, s32 *arg2) {
    if (*(s32*)((char*)arg0 + 0xC) == 0) {
        s32 *v1;
        *(void**)((char*)arg0 + 0xC) = arg1;
        v1 = *(s32**)((char*)arg0 + 0x14);
        v1[0x48 / 4] = *(s32*)((char*)arg1 + 0x14);
        (*(void(**)(void*, void*))(*(s32*)arg1 + 0x10))(arg1, arg0);
        v1 = *(s32**)((char*)arg0 + 0x14);
        if (arg2 != NULL) {
            v1[0x18 / 4] = arg2[0];
            v1[0x1C / 4] = arg2[1];
            v1[0x20 / 4] = arg2[2];
        } else {
            v1[0x18 / 4] = 0;
            v1[0x1C / 4] = 0;
            v1[0x20 / 4] = 0;
        }
        *(s32*)(*(s32**)((char*)arg0 + 0x14)) = 0;
    }
    return arg0;
}
void *SceneNode__DetachChild(void *arg0) {
    void **temp_a0;

    temp_a0 = *(s32*)((char*)(arg0) + 0xc);
    if (temp_a0 != NULL) {
        (*(void(**)())(*(void**)(temp_a0) + 0x14))(temp_a0, arg0);
        *(s32*)((char*)*(s32**)((char*)(arg0) + 0x14) + 0x48) = 0;
        *(s32*)((char*)(arg0) + 0xc) = NULL;
    }
    return arg0;
};
void SceneNode__UpdateChildren(void **arg0) {
    void **sp10;
    s32 sp14;

    sp10 = NULL;
    do {
        (*(void(**)())(*(void**)(arg0) + 0x58))(arg0, &sp10, &sp14);
        if (sp10 != NULL) {
            (*(void(**)())(*(void**)(sp10) + 0x50))(sp10);
        }
    } while (sp14 != 0);
};
void SceneNode__FindChild(void *arg0, s32 *arg1, s32 *arg2) {
    while (1) {
        if (*arg1 == 0) {
            *arg2 = *(s32*)((char*)arg0 + 0x4);
        }
        ListIterNext(arg1, arg2);
        {
            s32 *v1 = *(s32**)arg1;
            if (v1 != NULL && (*(s32*)*(s32*)v1 & 0xF) == 4) {
                if (v1[0xC / 4] == (s32)arg0) {
                    return;
                }
            }
        }
        if (*arg2 == 0) {
            *arg1 = 0;
            return;
        }
    }
}
void func_8001D33C(void) {
}
s32 SceneNode__SetInvisible(s32 arg0, s32 arg1) {
    return SetBitField(arg0 + 0x10, 0x1F, 1, arg1 == 0) == 0;
}
void SceneNode__SetAttrBit30(s32 arg0, s32 arg1) {
    SetBitField(arg0 + 0x10, 0x1E, 1, arg1 != 0);
}
void SceneNode__SetDrawMode(s32 arg0, s32 arg1) {
    SetBitField(arg0 + 0x10, 0x1C, 2, arg1);
}
void SceneNode__SetAttrBit6(s32 arg0, s32 arg1) {
    SetBitField(arg0 + 0x10, 6, 1, arg1 == 0);
}
void SceneNode__SetAttrField3(s32 arg0, s32 arg1) {
    SetBitField(arg0 + 0x10, 3, 3, arg1);
}
void SceneNode__SetAttrField0(s32 arg0, s32 arg1) {
    SetBitField(arg0 + 0x10, 0, 3, arg1);
}
s32 SceneNode__SetAttrBit7(s32 arg0, s32 arg1) {
    return SetBitField(arg0 + 0x10, 7, 1, arg1 == 0) == 0;
}
void SceneNode__SetAttrField9(s32 arg0, s32 arg1) {
    SetBitField(arg0 + 0x10, 9, 3, arg1);
}
s32 SceneNode__SetAttrBit8(s32 arg0, s32 arg1) {
    return SetBitField(arg0 + 0x10, 8, 1, arg1 == 0) == 0;
}
void func_8001D4DC(void *arg0, void *arg1, s32 arg2) {
    s16 sp10[4];
    s32 *a3;
    a3 = *(s32 **)((char *)*(s32 *)((char *)arg0 + 0x14) + 0x44);
    if (arg2) {
        sp10[0] = (s16)-(*(u16 *)((char *)a3 + 0x10));
        sp10[1] = (s16)-(*(u16 *)((char *)a3 + 0x12));
        sp10[2] = (s16)-(*(u16 *)((char *)a3 + 0x14));
    } else {
        *(S8Copy *)&sp10[0] = *(S8Copy *)((char *)a3 + 0x10);
    }
    func_800160B0(&sp10[0], arg1);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/D294", func_8001D568);
void func_8001D600(void *arg0) {
    func_8001F51C(*(s32*)((char*)(arg0) + 0x20));
}
void SceneNode__LoadVerts(void *arg0, s32 *arg1, s32 arg2) {
    void *s0;
    s32 *s1;
    s32 s2;
    s32 temp_a0;

    s0 = arg0;
    s1 = arg1;
    s2 = arg2;
    temp_a0 = (s32)((char *)s1 + 4);
    func_8001EE04(temp_a0, temp_a0, *s1 * 8, *(s32 *)((char *)s0 + 0x14) + 0x24);
    *(s32 *)((char *)s0 + 0x28) = 0;
    *(s32 *)((char *)s0 + 0x2c) = 0;
    *(s32 *)((char *)s0 + 0x30) = s1;
    (*(void(**)(void *, s32))(*(void **)s0 + 0x30))(s0, s2);
    *(s32 *)((char *)s0 + 0x30) = NULL;
}
void func_8001D6A4(void) {
}
void func_8001D6AC(void) {
}
void func_8001D6B4(void *arg0, void *arg1, s32 arg2) {
    if (arg2 >= 2) {
        if (arg2 < 4) {
            goto vbody;
        }
        if (arg2 == 4) {
            goto sbody;
        }
        return;
    vbody:
        (*(void(**)(void *))((char *)*(void **)arg0 + 0xA0))(arg0);
        return;
    sbody:
        *(s32 *)((char *)arg0 + 0x28) = arg1;
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/D294", func_8001D714);
INCLUDE_ASM("asm/lsdde/nonmatchings/D294", func_8001D950);
INCLUDE_ASM("asm/lsdde/nonmatchings/D294", func_8001DA28);
INCLUDE_ASM("asm/lsdde/nonmatchings/D294", func_8001DDF4);
INCLUDE_ASM("asm/lsdde/nonmatchings/D294", func_8001E110);
void func_8001E2E8(s16 *arg0, s16 *arg1, s16 *arg2, s16 *arg3) {
    s16 sp0[3];
    s16 sp8[3];
    s32 flag;
    s16 *t0;
    do {
        arg0[0] = (arg2[0] + arg3[0]) >> 1;
        arg0[1] = (arg2[1] + arg3[1]) >> 1;
        arg0[2] = (arg2[2] + arg3[2]) >> 1;
        if (arg0[0] == arg2[0] && arg0[1] == arg2[1] && arg0[2] == arg2[2]) {
            return;
        }
        if (arg0[0] == arg3[0] && arg0[1] == arg3[1] && arg0[2] == arg3[2]) {
            return;
        }
        flag = 0;
        if (arg1[3] < arg0[0]) {
            flag = 8;
        } else if (arg0[0] < arg1[0]) {
            flag = 4;
        }
        if (arg1[4] < arg0[1]) {
            flag |= 2;
        } else if (arg0[1] < arg1[1]) {
            flag |= 1;
        }
        if (arg1[5] < arg0[2]) {
            flag |= 0x20;
        } else if (arg0[2] < arg1[2]) {
            flag |= 0x10;
        }
        if (flag & 0xFF) {
            t0 = sp8;
            arg3 = t0;
        } else {
            t0 = sp0;
            arg2 = t0;
        }
        *(S42Copy *)t0 = *(S42Copy *)arg0;
    } while (1);
}
void func_8001E49C(void) {
}
INCLUDE_ASM("asm/lsdde/nonmatchings/D294", func_8001E4A4);
void *Get_vtable_SceneNode(void) {
    return &gVtable_SceneNode;
};
void func_8001E58C(void *arg0, void *arg1, s32 *arg2) {
    s32 sp10[8];
    (*(void(**)(void *, void *, s32))((char *)*(void **)arg0 + 0x84))(arg0, &sp10[0], 0);
    *(s32 *)((char *)arg1 + 0) = *(s16 *)arg2;
    *(s32 *)((char *)arg1 + 4) = *(s16 *)((char *)arg2 + 2);
    *(s32 *)((char *)arg1 + 8) = *(s16 *)((char *)arg2 + 4);
    CopyTripleArray(arg1, arg1, 1, &sp10[0]);
}
void func_8001E600(void *arg0, void *arg1, void *arg2) {
    s32 sp10[8];
    s32 *p;
    (*(void(**)(void *, void *, s32))((char *)*(void **)arg0 + 0x84))(arg0, &sp10[0], 0);
    CopyTripleArray(arg1, arg2, 1, &sp10[0]);
    if (*(s32 *)((char *)arg0 + 0xC) != 0) {
        p = *(s32 **)((char *)arg0 + 0x14) + 0xE;
    } else {
        p = 0;
    }
    *(s32 *)((char *)arg1 + 0) += *(s32 *)((char *)p + 0);
    if (*(s32 *)((char *)arg0 + 0xC) != 0) {
        p = *(s32 **)((char *)arg0 + 0x14) + 0xE;
    } else {
        p = 0;
    }
    *(s32 *)((char *)arg1 + 4) += *(s32 *)((char *)p + 4);
    if (*(s32 *)((char *)arg0 + 0xC) != 0) {
        p = *(s32 **)((char *)arg0 + 0x14) + 0xE;
    } else {
        p = 0;
    }
    *(s32 *)((char *)arg1 + 8) += *(s32 *)((char *)p + 8);
}
void GetPlayerPosition(void *arg0, void *arg1) {
    s32 *a2;
    s32 v0;
    a2 = *(s32 **)((char *)*(s32 *)((char *)arg0 + 0x14) + 0x44);
    v0 = *(s16 *)((char *)a2 + 0x10);
    *(s16 *)((char *)arg1 + 2) = 1;
    *(s16 *)((char *)arg1 + 0) = (s16)((v0 * 45) >> 9);
    v0 = *(s16 *)((char *)a2 + 0x12);
    *(s16 *)((char *)arg1 + 6) = 1;
    *(s16 *)((char *)arg1 + 4) = (s16)((v0 * 45) >> 9);
    v0 = *(s16 *)((char *)a2 + 0x14);
    *(s16 *)((char *)arg1 + 10) = 1;
    *(s16 *)((char *)arg1 + 8) = (s16)((v0 * 45) >> 9);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/D294", SceneNode__SetParent);
INCLUDE_ASM("asm/lsdde/nonmatchings/D294", SceneNode__ClearParent);
INCLUDE_ASM("asm/lsdde/nonmatchings/D294", SceneNode_IsType);
void Vec3Sub16(s32 *arg0, s16 *arg1, s16 *arg2) {
    arg0[0] = arg2[0] - arg1[0];
    arg0[1] = arg2[1] - arg1[1];
    arg0[2] = arg2[2] - arg1[2];
}
INCLUDE_ASM("asm/lsdde/nonmatchings/D294", FaceTowards);
s32 FixedDiv(s16 *arg0) {
    s16 dividend = arg0[0];
    s16 divisor = arg0[1];
    s32 quot = dividend / divisor;
    s32 rem = dividend % divisor;
    return (quot << 12) + ((rem << 12) / divisor);
}
s32 CalcBoxOutcode(s16 *arg0, s16 *arg1) {
    s32 var_v1 = 0;
    s16 temp_a2;
    s16 temp_a1;

    temp_a2 = arg1[0];
    if (arg0[3] < temp_a2) {
        var_v1 = 8;
    } else if (temp_a2 < arg0[0]) {
        var_v1 = 4;
    }

    temp_a2 = arg1[1];
    if (arg0[4] < temp_a2) {
        var_v1 |= 2;
    } else if (temp_a2 < arg0[1]) {
        var_v1 |= 1;
    }

    temp_a1 = arg1[2];
    if (arg0[5] < temp_a1) {
        var_v1 |= 0x20;
    } else if (temp_a1 < arg0[2]) {
        var_v1 |= 0x10;
    }

    return var_v1;
}
s32 SetBitField(s32 *arg0, s32 a1, s32 a2, s32 a3) {
    s32 t0;
    s32 a0 = 0;

    t0 = 1;
    while (a0 < a2) {
        a0++;
        t0 <<= 1;
    }
    t0 -= 1;
    t0 <<= a1;
    {
        u32 old = *arg0;
        s32 cleared = ~t0 & old;
        s32 result = ((u32)a3 << a1) | cleared;
        u32 extracted = (t0 & (u32)old) >> a1;

        *arg0 = result;
        return extracted;
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/D294", func_8001EE04);
void CopyTripleArray(u32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 pad[2];
    u32 s0;
    s32 s1;
    u32 s2;
    s32 s3;

    s0 = arg0;
    s1 = arg1;
    s3 = arg3;
    s2 = s0 + arg2 * 12;

    if (s0 < s2) {
        do {
            func_80015618(s3, s1, s0);
            s0 += 12;
            s1 += 12;
        } while (s0 < s2);
    }
}
s32 Vec3InRange(s32 *arg0, s32 arg1, s32 *arg2) {
    s32 t0 = 0;
    do {
        s32 v1 = *arg0;
        s32 a3 = *arg2;
        if (a3 < v1 - arg1) return 0;
        if (arg1 + v1 < a3) return 0;
        t0++;
        arg0++;
        arg2++;
    } while (t0 < 3);
    return 1;
}
s32 SetSceneStateFlag(s32 arg0) {
    s32 temp = gSceneStateFlag;
    gSceneStateFlag = arg0;
    return temp;
}
