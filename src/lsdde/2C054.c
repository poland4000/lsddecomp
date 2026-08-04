#include "common.h"

typedef struct { s8 a, b, c; } S8Triple;
typedef struct { s32 x, y; } S32Pair;
typedef struct { s32 x, y, z; } S32Triple;
typedef struct { s32 x[8]; } S32x8;

extern s32 D_8008A904;
extern s32 D_8008A90C;
extern s32 gVtable_WorldEffect;
extern u8 gAnimEffectDefaultColors[];
extern s32 gVtable_AnimEffect;
extern s32 gAnimEffectDefaults;
extern s32 gVtable_Effect;
extern s8 D_8008A8F8[];
extern s32 D_8008A8FC;
extern s32 D_8008A900;
extern s32 D_8008A8F4;
extern s32 gVtable_ModelObj;
extern s32 D_800902E4;
extern s32 D_8008E98C[];
extern s32 D_8008E794;
extern s32 D_800902E0;
extern s32 D_80011194;
extern u8 gTextureEntries[];
extern u8 gDefaultTextureEntry[];
extern s32 gVtable_Texture;
extern u8 D_8008A924[];
extern s32 gVtable_Sprite;
extern s32 gVtable_SpriteSet;

extern s32 D_8008A904;
extern s32 D_8008A90C;
extern s32 gVtable_WorldEffect;
extern u8 gAnimEffectDefaultColors[];
void *LoadFileObj(void*);                              /* extern */
extern u8 D_8006E86C[];                         /* extern */
void *func_800441B4(s32, s32);                         /* extern */
void *func_80044CD4(s32, s32);                         /* extern */
void *func_80044F30(s32);                         /* extern */
void *New_SoundPlayer(void*);                         /* extern */
void *func_80045438(void*, s32, s32);                         /* extern */
s32 BMemFree(s32);                               /* extern */
void ReleaseObjectArray(s32, u8);                           /* extern */
extern s32 gVtable_AnimEffect;
extern s32 gAnimEffectDefaults;
extern s32 gVtable_Effect;
void *BMemAlloc(s32);                              /* extern */
extern s8 D_8008A8F8[];
extern s32 D_8008A8FC;
extern s32 D_8008A900;
extern s32 D_8008A8F4;
void CalcLookAtAngles(void*);                                /* extern */
void func_80021114(s32);                                 /* extern */
extern s32 gVtable_ModelObj;
void func_80024B90();                                  /* extern */
extern s32 D_800902E4;
extern void *D_80090260[];
extern s32 D_8009025C[];
extern s32 D_80090B74;
extern s32 D_8008E98C[];
extern s32 D_8008E794;
void func_80021678(s32);                               /* extern */
void func_80021580(s32, s32);                          /* extern */
extern s32 D_800902E0;
void DebugPrintf(s32);                              /* extern */
extern s32 D_80011194;
void func_80024B9C(s32);                               /* extern */
void func_80024BA8(s32);                                 /* extern */
extern u8 gTextureEntries[];
extern u8 gDefaultTextureEntry[];
extern s32 gVtable_Texture;
void *Get_vtable_Sprite(void);                              /* extern */
extern u8 D_8008A924[];
s32 SetBitField(s32,s32,s32, s32);                    /* extern */
extern s32 gVtable_Sprite;
void *Get_vtable_SpriteSet(void);                              /* extern */
void *func_80041C3C(void);                                /* extern */
extern s32 gVtable_SpriteSet;
void *New_WorldEffect(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    void *s0 = BMemAlloc(0xDC);

    if (s0 != 0) {
        (*(void(**)(void*, s32, s32, s32, s32))((char *)Get_vtable_WorldEffect() + 0x8))(s0, arg0, arg1, arg2, arg3);
        return s0;
    }
    return 0;
}
void WorldEffect__Init(void *arg0, s32 arg1, s32 arg2, s32 arg3, void *arg4) {
    void *vtable;
    s32 i;

    (*(void(**)(void*, s32, s32, s32))((char *)Get_vtable_AnimEffect() + 0x8))(arg0, arg1, arg2, arg3);
    *(void **)arg0 = Get_vtable_WorldEffect();
    if (arg4 != 0) {
        *(S32Triple *)((char *)arg0 + 0xA8) = *(S32Triple *)arg4;
    } else {
        vtable = Get_AnimEffectDefaults();
        *(S32Triple *)((char *)arg0 + 0xA8) = *(S32Triple *)vtable;
    }
    *(s32 *)((char *)arg0 + 0xB4) = (s32)func_80045438(Get_AnimEffectDefaults(), 0, 0);
    *(s32 *)((char *)arg0 + 0xB8) = 0;
    (*(void(**)(void *))((char *)*(void **)arg0 + 0x40))(arg0);
}
void WorldEffect__Destroy(void *arg0) {
    s32 obj = *(s32 *)((char *)arg0 + 0xB4);

    ((void(**)(s32))*(s32**)obj)[1](obj);
    (*(void(**)(void *))((char *)Get_vtable_AnimEffect() + 0xC))(arg0);
}
void WorldEffect__ResetFlags(void *arg0) {
    *(s32*)((char*)(arg0) + 0xc8) = -1;
    *(s32*)((char*)(arg0) + 0xc4) = 0;
    *(s32*)((char*)(arg0) + 0xcc) = 1;
    *(s32*)((char*)(arg0) + 0xd0) = 0;
    *(s32*)((char*)(arg0) + 0xd4) = 1;
}
void WorldEffect__Start(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    *(s32*)((char*)(arg0) + 0xb8) = arg2;
    *(s32*)((char*)(arg0) + 0xbc) = arg3;
    *(s32*)((char*)(arg0) + 0xc0) = arg4;
    (*(void(**)(void*, s32, s32))((char*)Get_vtable_AnimEffect() + 0x44))(arg0, arg1, 0);
}
void func_8003BAB4(void *arg0) {
    s32 ret;
    (*(void(**)())((char*)Get_vtable_AnimEffect() + 0x4C))(arg0);
    *(s32*)((char*)arg0 + 0xA4) = 0;
    (*(void(**)(void*, s32))((char*)*(void**)*(void**)((char*)arg0 + 0xB4) + 0x6C))(*(void**)((char*)arg0 + 0xB4), *(s32*)((char*)arg0 + 0xC0));
    ret = (*(s32(**)(void*, s32, s32, s32, s32))((char*)*(void**)*(void**)((char*)arg0 + 0xB4) + 0x40))(*(void**)((char*)arg0 + 0xB4), *(s32*)((char*)arg0 + 0xB8), *(s32*)((char*)arg0 + 0xBC), *(s32*)((char*)arg0 + 0xC4), *(s32*)((char*)arg0 + 0xC8));
    if (ret != 0) {
        (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x6C))(arg0, 0);
    }
}
void WorldEffect__Setup(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_v0;
    void **temp_a0;
    (*(void(**)(void*, s32, s32))((char*)Get_vtable_AnimEffect() + 0x5c))(arg0, arg1, arg2);
    if (*(s32*)((char*)(arg0) + 0xa4) == 0) {
        temp_a0 = *(s32*)((char*)(arg0) + 0xb4);
        temp_v0 = (*(s32(**)(void**))(*(void**)(temp_a0) + 0x48))(temp_a0);
        *(s32*)((char*)(arg0) + 0xa4) = temp_v0;
        if ((temp_v0 != 0) && (*(s32*)((char*)(arg0) + 0xd8) == 0)) {
            (*(void(**)(void*, s32))(*(void**)arg0 + 0x60))(arg0, 7);
        }
    }
}
void func_8003BC14(void *arg0, s32 arg1) {
    (*(void (**)(void*, s32))((char *)Get_vtable_AnimEffect() + 0x60))(arg0, arg1);
    switch (arg1) {
    case 5:
        *(s32 *)((char *)arg0 + 0xD8) = 0;
        break;
    case 7:
        *(s32 *)((char *)arg0 + 0xD8) = 1;
        break;
    case 8:
        if (*(s32 *)((char *)arg0 + 0xD4) == 0) {
            void *obj = *(void **)((char *)arg0 + 0xB4);
            (*(void (**)(void *))((char *)*(void **)obj + 0x4C))(obj);
        }
        break;
    case 0x12:
        (*(void (**)(void *))((char *)*(void **)arg0 + 0x94))(arg0);
        break;
    }
}
void WorldEffect__SetFrameDuration(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x40) = arg1;
    if (arg1 >= 0) {
        *(s32*)((char*)(arg0) + 0x40) = (s32) (arg1 * 0xF);
    }
}
void WorldEffect__EndStep(void *arg0) {
    (*(void(**)(void *))((char *)Get_vtable_AnimEffect() + 0x78))(arg0);
    if (*(s32*)((char*)arg0 + 0xCC) != 0) {
        *(s32*)((char*)arg0 + 0x38) = 2;
        ((void(**)(void*, s32))*(s32**)arg0)[0x18](arg0, 0x12);
    }
}
void WorldEffect__ParentCall78(void *arg0) {
    (*(void(**)(void *))((char *)Get_vtable_AnimEffect() + 0x80))(arg0);
}
void WorldEffect__ParentCall84(void *arg0) {
    (*(void(**)(void *))((char *)Get_vtable_AnimEffect() + 0x84))(arg0);
}
void WorldEffect__Null1(void) {
}
void WorldEffect__Null2(void) {
}
void WorldEffect__StopOrFinish(void *arg0) {
    void **temp_a0;

    if (*(s32*)((char*)(arg0) + 0xd4) != 0) {
        temp_a0 = *(void***)((char*)(arg0) + 0xb4);
        (*(void(**)())(*(void**)(temp_a0) + 0x4c))(temp_a0);
        return;
    }
    (*(void(**)(void*, s32))(*(void**)(arg0) + 0x60))(arg0, 7);
}
void WorldEffect__SetFlagC4(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0xc4) = arg1;
};
void WorldEffect__SetFlagC8(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0xc8) = arg1;
};
void WorldEffect__SetFlagCC(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0xcc) = arg1;
};
void WorldEffect__SetFlagD0(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0xd0) = arg1;
};
void WorldEffect__SetFlagD4(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0xd4) = arg1;
};
void *Get_vtable_WorldEffect(void) {
    return &gVtable_WorldEffect;
};
void *New_AnimEffect(s32 arg0, s32 arg1, s32 arg2) {
    void *s0 = BMemAlloc(0xA4);

    if (s0 != 0) {
        (*(void(**)(void*, s32, s32, s32))((char *)Get_vtable_AnimEffect() + 0x8))(s0, arg0, arg1, arg2);
        return s0;
    }
    return 0;
}
void AnimEffect__Init(void *arg0, void *arg1, void *arg2, void *arg3) {
    void *vtable;
    s32 t1, t2;

    (*(void(**)(void*))((char *)Get_vtable_Effect() + 0x8))(arg0);
    vtable = Get_vtable_AnimEffect();
    *(void **)arg0 = vtable;
    (*(void(**)(void*, void*))((char *)vtable + 0xD8))(arg0, arg1);
    if (arg2 != 0) {
        *(s32 *)((char *)arg0 + 0x48) = (s32)New_SoundPlayer(arg2);
    } else {
        *(s32 *)((char *)arg0 + 0x48) = (s32)arg3;
    }
    *(s32 *)((char *)arg0 + 0x44) = (s32)arg2;
    (*(void(**)(void*, s32, s32))((char *)*(void **)arg0 + 0xD4))(arg0, 0, 0);
    t1 = (s32)func_80044F30(0);
    *(s32 *)((char *)arg0 + 0x80) = t1;
    t2 = (s32)func_80044CD4(0, t1);
    *(s32 *)((char *)arg0 + 0x7C) = t2;
    *(s32 *)((char *)arg0 + 0x78) = (s32)func_800441B4(t2, 1);
    (*(void(**)(void*))((char *)*(void **)arg0 + 0x40))(arg0);
}
void AnimEffect__Destroy(void *arg0) {
    (*(void(**)())(*(void**)*(void**)((char*)arg0 + 0x78) + 4))(*(void**)((char*)arg0 + 0x78));
    (*(void(**)())(*(void**)*(void**)((char*)arg0 + 0x7C) + 4))(*(void**)((char*)arg0 + 0x7C));
    (*(void(**)())(*(void**)*(void**)((char*)arg0 + 0x80) + 4))(*(void**)((char*)arg0 + 0x80));
    if (*(s32*)((char*)arg0 + 0x44) != 0) {
        (*(void(**)())(*(void**)*(void**)((char*)arg0 + 0x48) + 4))(*(void**)((char*)arg0 + 0x48));
    }
    if (*(s32*)((char*)arg0 + 0x70) != 0) {
        (*(void(**)())(*(void**)*(void**)((char*)arg0 + 0x74) + 4))(*(void**)((char*)arg0 + 0x74));
    }
    (*(void(**)())(*(void**)arg0 + 0xDC))(arg0);
    (*(void(**)())((char*)Get_vtable_Effect() + 0xC))(arg0);
}
void AnimEffect__Reset(void *arg0) {
    void *obj = *(void**)arg0;
    (*(void(**)(void*, s32))((char*)obj + 0x6C))(arg0, -1);
    (*(void(**)(void*, void*, void*, void*))((char*)obj + 0xA4))(arg0, gAnimEffectDefaultColors, (char*)gAnimEffectDefaultColors + 3, (char*)gAnimEffectDefaultColors + 6);
    (*(void(**)(void*, s32))((char*)obj + 0x9C))(arg0, 1);
    (*(void(**)(void*, s32))((char*)obj + 0xA0))(arg0, 1);
    *(s32*)((char*)arg0 + 0x84) = 9;
    *(s32*)((char*)arg0 + 0x28) = 3;
    *(s32*)((char*)arg0 + 0x2C) = 0x12C;
    *(s32*)((char*)arg0 + 0x30) = 0x40;
    *(s32*)((char*)arg0 + 0x9C) = 0;
    *(s32*)((char*)arg0 + 0xA0) = 0;
    *(s32*)((char*)arg0 + 0x34) = 1;
    *(s32*)((char*)arg0 + 0x3C) = 0;
}
s32 AnimEffect__StartGetState(void *arg0, s32 arg1, s32 arg2) {
    (*(s32(**)(void*, s32, s32))((char*)Get_vtable_Effect() + 0x44))(arg0, arg1, arg2);
    return *(s32*)((char*)(arg0) + 0x38);
}
void func_8003C238(void *arg0) {
    void *s2;
    void *s3;
    void *s0;
    void *obj;

    s2 = *(void **)((char *)arg0 + 0x18);
    s3 = *(void **)s2;
    (*(void(**)(void*, s32))((char *)*(void **)arg0 + 0xE0))(arg0, *(s32 *)((char *)arg0 + 0x14));
    obj = *(void **)((char *)arg0 + 0x78);
    (*(void(**)(void*, s32, s32))((char *)*(void **)obj + 0x4C))(obj, *(s32 *)((char *)arg0 + 0x14), 0);
    if (*(s32 *)((char *)arg0 + 0x88) != 0) {
        s0 = (char *)arg0 + 0x90;
        (*(void(**)(void*, void*))((char *)*(void **)arg0 + 0xE4))(arg0, s0);
        obj = *(void **)((char *)arg0 + 0x78);
        (*(void(**)(void*, s32, void*))((char *)*(void **)obj + 0xB8))(obj, 1, s0);
    }
    if (*(s32 *)((char *)arg0 + 0x74) == 0) {
        obj = *(void **)*(void **)((char *)arg0 + 0xC);
        (*(void(**)(void*, void*, s32))((char *)*(void **)obj + 0x78))(obj, (char *)arg0 + 0x90, &gAnimEffectDefaults);
    }
    obj = *(void **)*(void **)((char *)arg0 + 0xC);
    (*(void(**)(void*, void*, s32))((char *)*(void **)obj + 0x78))(obj, (char *)arg0 + 0x90, 0);
    (*(void(**)(void*, s32))((char *)s3 + 0x48))(s2, *(s32 *)((char *)arg0 + 0x28));
    (*(void(**)(void*, s32))((char *)s3 + 0x4C))(s2, *(s32 *)((char *)arg0 + 0x2C));
    (*(void(**)(void*, s32))((char *)s3 + 0x50))(s2, *(s32 *)((char *)arg0 + 0x30));
    (*(void(**)(void*, s32, u8*, u8*, s32))((char *)s3 + 0x70))(s2, *(s32 *)((char *)arg0 + 0x14), D_8006E86C, D_8006E86C, 0);
    (*(void(**)(void*))((char *)s3 + 0x8C))(s2);
    *(s32 *)((char *)arg0 + 0x38) = 0;
}
void AnimEffect__Render(void *arg0) {
    void **temp_a0;
    void **temp_a0_2;
    void **temp_s0;

    temp_s0 = *(s32*)((char*)(arg0) + 0x18);
    (*(void(**)())(*(void**)(temp_s0) + 0x90))(temp_s0);
    (*(void(**)())(*(void**)(temp_s0) + 0x74))(temp_s0);
    temp_a0 = *(s32*)((char*)(arg0) + 0x78);
    (*(void(**)())(*(void**)(temp_a0) + 0x50))(temp_a0);
    if (*(s32*)((char*)(arg0) + 0x34) != 0) {
        temp_a0_2 = **(s32**)((char*)(arg0) + 0xc);
        (*(void(**)())(*(void**)(temp_a0_2) + 0x78))(temp_a0_2, arg0 + 0x93, 0);
    }
};
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", AnimEffect__HandleMessage);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_8003C51C);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_8003C63C);
void AnimEffect__SetFrameDuration(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x40) = arg1;
    if (arg1 >= 0) {
        *(s32*)((char*)(arg0) + 0x40) = (s32) (arg1 * 0x14);
    }
}
void AnimEffect__SetScale(void *arg0, s32 arg1) {
    void **temp_a0;

    temp_a0 = *(s32*)((char*)(arg0) + 0x48);
    if (temp_a0 != NULL) {
        (*(void(**)())(*(void**)(temp_a0) + 0x80))(temp_a0, arg1, 0x60, 0x60);
    }
}
void AnimEffect__TriggerAnimA(void *arg0) {
    if (*(s32*)((char*)(arg0) + 0x4c) != 0) {
        (*(void(**)(void*, s32))(*(void**)(arg0) + 0x70))(arg0, 0x10);
        (*(void(**)())(*(void**)(arg0) + 0x60))(arg0, 0xA);
    }
}
void AnimEffect__TriggerAnimB(void *arg0) {
    s32 var_a1;

    if (*(s32*)((char*)(arg0) + 0x4c) != 0) {
        (*(void(**)(void*, s32))(*(void**)(arg0) + 0x70))(arg0, 0x10);
        var_a1 = 0xF;
        if (*(s32*)((char*)(arg0) + 0x3c) == 1) {
            var_a1 = 0xB;
        }
        (*(void(**)())(*(void**)(arg0) + 0x60))(arg0, var_a1);
    }
}
void AnimEffect__TriggerAnimC(void *arg0) {
    if ((*(s32*)((char*)(arg0) + 0x4c) != 0) && (*(s32*)((char*)(arg0) + 0x3c) != 1)) {
        (*(void(**)(void*, s32))(*(void**)(arg0) + 0x70))(arg0, 0x10);
        (*(void(**)())(*(void**)(arg0) + 0x60))(arg0, 0x11);
    }
}
void AnimEffect__DoModeAction1(void *arg0) {
    void (*var_v0)();
    s32 temp_v1;

    if (*(s32*)((char*)(arg0) + 0x4c) != 0) {
        temp_v1 = *(s32*)((char*)(arg0) + 0x3c);
        if (temp_v1 == 1) {
            var_v0 = *(s32*)((char*)(*(void**)(arg0)) + 0xec);
            goto block_5;
        }
        if (temp_v1 == 2) {
            var_v0 = *(s32*)((char*)(*(void**)(arg0)) + 0x118);
block_5:
            var_v0();
        }
    }
};
void AnimEffect__DoModeAction2(void *arg0) {
    void (*var_v0)();
    s32 temp_v1;

    if (*(s32*)((char*)(arg0) + 0x4c) != 0) {
        temp_v1 = *(s32*)((char*)(arg0) + 0x3c);
        if (temp_v1 == 1) {
            var_v0 = *(s32*)((char*)(*(void**)(arg0)) + 0xe8);
            goto block_5;
        }
        if (temp_v1 == 2) {
            var_v0 = *(s32*)((char*)(*(void**)(arg0)) + 0x114);
block_5:
            var_v0();
        }
    }
};
void AnimEffect__CheckFrameEntry(void *arg0) {
    s32 sub = *(s32*)((char*)arg0 + 0x4C);
    s32 idx = *(s32*)((char*)arg0 + 0x58);
    s32 entry = *(s32*)(*(s32*)((char*)sub + 0x24) + idx * 4);
    if (entry != 0) {
        (*(void (**)(void*))(*(s32*)arg0 + 0x108))(arg0);
    } else if (idx == *(s32*)((char*)sub + 0xC)) {
        (*(void (**)(void*))(*(s32*)arg0 + 0x94))(arg0);
    }
}
void AnimEffect__RunCallback(void *arg0) {
    void (*temp_v0)(s32);

    temp_v0 = *(s32*)((char*)(arg0) + 0x9c);
    if (temp_v0 != NULL) {
        temp_v0(*(s32*)((char*)(arg0) + 0xa0));
    }
    (*(void(**)())(*(void**)(arg0) + 0x60))(arg0, 7);
};
void AnimEffect__SetCallback(void *arg0, s32 arg1, s32 arg2) {
    *(s32*)((char*)(arg0) + 0x9c) = arg1;
    *(s32*)((char*)(arg0) + 0xa0) = arg2;
};
void AnimEffect__SetModeA(s32 *arg0, s32 arg1) {
    s32 vtable = arg0[0];
    switch (arg1) {
    case 0:
        arg0[0x22] = 0;
        break;
    case 1:
        arg0[0x22] = *(s32 *)(vtable + 0xB0);
        break;
    }
}
void AnimEffect__SetModeB(s32 *arg0, s32 arg1) {
    s32 vtable = arg0[0];
    switch (arg1) {
    case 0:
        arg0[0x23] = 0;
        break;
    case 1:
        arg0[0x23] = *(s32 *)(vtable + 0xC4);
        break;
    }
}
void AnimEffect__SetColors(void *arg0, S8Triple *arg1, S8Triple *arg2, S8Triple *arg3) {
    *(S8Triple *)((char *)arg0 + 0x90) = *arg1;
    *(S8Triple *)((char *)arg0 + 0x93) = *arg2;
    *(S8Triple *)((char *)arg0 + 0x96) = *arg3;
}
void AnimEffect__SetFadeSpeed(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x84) = arg1;
};
s32 AnimEffect__RunCondition(void *arg0) {
    s32 (*temp_v0)();
    s32 var_s1;

    temp_v0 = *(s32*)((char*)(arg0) + 0x88);
    var_s1 = 1;
    if (temp_v0 != NULL) {
        var_s1 = temp_v0();
    }
    if (var_s1 != 0) {
        (*(void(**)())(*(void**)(arg0) + 0x60))(arg0, 5);
    }
    return var_s1;
};
s32 AnimEffect__FadeInStep(void *arg0) {
    s32 val = *(s32*)((char*)arg0 + 0x1C) * *(s32*)((char*)arg0 + 0x84);
    u8 buf[4];
    buf[0] = (u8)(val + *(u8*)((char*)arg0 + 0x90));
    buf[1] = (u8)(val + *(u8*)((char*)arg0 + 0x91));
    buf[2] = (u8)(val + *(u8*)((char*)arg0 + 0x92));
    (*(void(**)(void*, u8*))(*(s32*)arg0 + 0xE4))(arg0, buf);
    {
        void *obj = *(void**)((char*)arg0 + 0x78);
        (*(void(**)(void*, s32, u8*))(*(s32*)obj + 0xB8))(obj, 1, buf);
    }
    return (((u8)val) < 0x81) ^ 1;
}
s32 func_8003CCDC(void *arg0) {
    s32 s1 = 1;
    if (*(s32*)((char*)arg0 + 0x8C) == 0 || ((s1 = ((s32(*)())(*(s32*)((char*)arg0 + 0x8C)))()) != 0)) {
        (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x60))(arg0, 8);
    }
    return s1;
}
s32 AnimEffect__FadeOutStep(void *arg0) {
    s32 val = 0x80 - *(s32*)((char*)arg0 + 0x1C) * *(s32*)((char*)arg0 + 0x84);
    u8 buf[4];
    buf[0] = (u8)val;
    buf[1] = (u8)val;
    buf[2] = (u8)val;
    (*(void(**)(void*, u8*))(*(s32*)arg0 + 0xE4))(arg0, buf);
    {
        void *obj = *(void**)((char*)arg0 + 0x78);
        (*(void(**)(void*, s32, u8*))(*(s32*)obj + 0xB8))(obj, 1, buf);
    }
    return (((u8)val) < 0x81) ^ 1;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_8003CDE0);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", AnimEffect__LoadFrames);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", AnimEffect__FreeFrames);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_8003D194);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_8003D2CC);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_8003D3B0);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_8003D444);
void AnimEffect__SetFrame(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a2;
    void **temp_a0_2;
    void **temp_s1;

    temp_a2 = *(s32*)((char*)(arg0) + 0x4c);
    if (temp_a2 != 0) {
        temp_a1 = *(s32*)((char*)(arg0) + 0x58);
        temp_a0 = *(s32*)((char*)(arg0) + 0x54);
        temp_a0_2 = *(s32*)((temp_a1 * 4) + temp_a0);
        temp_s1 = *(s32*)((arg1 * 4) + temp_a0);
        if (temp_a1 >= 0) {
            (*(void(**)())(*(void**)(temp_a0_2) + 0xb8))(temp_a0_2, temp_a2 + 0x10, temp_a2);
        }
        (*(void(**)())(*(void**)(temp_s1) + 0xb8))(temp_s1, *(s32*)((char*)(arg0) + 0x4c) + 0x13);
        *(s32*)((char*)(arg0) + 0x58) = arg1;
        if (arg2 != 0) {
            (*(void(**)())(*(void**)(arg0) + 0x70))(arg0, 0);
        }
        (*(void(**)())(*(void**)(arg0) + 0x60))(arg0, 9);
    }
};
s32 AnimEffect__GetFrame(void *arg0) {
    return *(s32*)((char*)(arg0) + 0x58);
};
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", AnimEffect__AddFrameSet);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", AnimEffect__FreeFrameSet);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", AnimEffect__RenderFrame);
void AnimEffect__ForEachFrameSprite(void *arg0, void *arg1) {
    s32 idx = *(s32*)((char*)arg0 + 0x58);
    s32 *arr64 = *(s32**)((char*)arg0 + 0x64);
    s32 *arr5c = *(s32**)((char*)arg0 + 0x5C);
    s32 *entries = (s32*)arr64[idx];
    s32 count = arr5c[idx];
    s32 i;
    for (i = 0; i < count; i++) {
        s32 obj = *entries;
        (*(void (**)(s32, void*))(*(s32*)obj + 0xB8))(obj, arg1);
        entries++;
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_8003DA10);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_8003DAD4);
void AnimEffect__AdvanceFrame(void *arg0) {
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_v0;
    void **temp_a0;
    void **temp_a0_2;

    if (*(s32*)((char*)(arg0) + 0x3c) == 2) {
        temp_s1 = *(s32*)((char*)(arg0) + 0x58) * 4;
        temp_s0 = *(s32*)(temp_s1 + *(s32*)((char*)(arg0) + 0x60));
        (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0x100))(arg0, *(s32*)((char*)(arg0) + 0x14), 0);
        temp_s2 = *(s32*)(temp_s1 + *(s32*)((char*)(arg0) + 0x64));
        temp_a0 = *(void***)((temp_s0 * 4) + temp_s2);
        (*(void(**)())(*(void**)(temp_a0) + 0xb8))(temp_a0, *(s32*)((char*)(arg0) + 0x4c) + 0x10);
        temp_v0 = *(s32*)((char*)((*(s32*)(temp_s1 + *(s32*)((char*)*(s32**)((char*)(arg0) + 0x4c) + 0x24)))) + 0x4);
        *(s32*)(temp_s1 + *(s32*)((char*)(arg0) + 0x60)) = temp_v0;
        temp_a0_2 = *(void***)((temp_v0 * 4) + temp_s2);
        (*(void(**)())(*(void**)(temp_a0_2) + 0x60))(temp_a0_2, 1);
        *(s32*)((char*)(arg0) + 0x3c) = 1;
        (*(void(**)())(*(void**)(arg0) + 0x60))(arg0, 0x11);
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_8003DDC8);
void func_8003DE30(void *arg0) {
    s32 idx = *(s32*)((char*)arg0 + 0x58);
    s32 a1 = *(*(s32**)((char*)arg0 + 0x60) + idx);
    a1--;
    if (a1 < 0) {
        a1 = *(*(s32**)((char*)arg0 + 0x5C) + idx) - 1;
    }
    (*(void(**)(void*, s32, s32))(*(void**)arg0 + 0x11C))(arg0, a1, 1);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_8003DE9C);
s32 AnimEffect__GetFrameEntryId(void *arg0) {
    return *(s32*)((*(s32*)((char*)(arg0) + 0x58) * 4) + *(s32*)((char*)(arg0) + 0x60));
}
void *Get_vtable_AnimEffect(void) {
    return &gVtable_AnimEffect;
};
void *Get_AnimEffectDefaults(void) {
    return &gAnimEffectDefaults;
};
void Effect__Init(void *arg0) {
    (*(void (**)(void *))((char *)Get_vtable_BasicClass() + 0x8))(arg0);
    *(s32*)((char*)arg0) = (s32)Get_vtable_Effect();
    (*(void (**)(void *))(*(s32*)arg0 + 0x40))(arg0);
}
void Effect__Destroy(void *arg0, void *arg1, void *arg2) {
    (*(void(**)(void*, void*, void*))((char*)Get_vtable_BasicClass(arg0, arg1, arg2) + 0x38))(arg0, arg1, arg2);
    if ((*(s32*)(*(void**)arg1) & 0xF) == 1) {
        (*(void(**)(void*, void*, void*))(*(void**)arg0 + 0x54))(arg0, arg1, arg2);
    } else if ((*(s32*)(*(void**)arg1) & 0xF) == 2) {
        (*(void(**)(void*, void*, void*))(*(void**)arg0 + 0x58))(arg0, arg1, arg2);
    } else if ((*(s32*)(*(void**)arg1) & 0xF) == 5) {
        (*(void(**)(void*, void*, void*))(*(void**)arg0 + 0x5C))(arg0, arg1, arg2);
    }
}
void Effect__ResetCounters(void *arg0) {    *(s32*)((char*)(arg0) + 0x1c) = 0;
    *(s32*)((char*)(arg0) + 0x20) = 0;
};
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", Effect__CreateObjects);
void func_8003E280(void *arg0) {
    void *obj = *(void**)arg0;
    s32 cond;
    void *s1;
    (*(void(**)())((char*)obj + 0x50))(arg0);
    cond = *(s32*)((char*)arg0 + 0x24);
    s1 = *(void**)((char*)arg0 + 0x18);
    if (cond == 0) {
        (*(void(**)())(*(void**)*(void**)((char*)arg0 + 0x14) + 0x14))(*(void**)((char*)arg0 + 0x14), *(void**)((char*)arg0 + 0x10));
        (*(void(**)())(*(void**)s1 + 0x14))(s1, *(void**)((char*)arg0 + 0x10));
        (*(void(**)())(*(void**)s1 + 0x14))(s1, *(s32*)*(void**)((char*)arg0 + 0xC));
    }
    (*(void(**)())((char*)obj + 0x14))(arg0, *(void**)((char*)arg0 + 0x10));
    (*(void(**)())((char*)obj + 0x14))(arg0, *(s32*)((char*)*(void**)((char*)arg0 + 0xC) + 4));
    (*(void(**)())((char*)obj + 0x14))(arg0, *(s32*)*(void**)((char*)arg0 + 0xC));
    if (*(s32*)((char*)*(void**)((char*)arg0 + 0xC) + 0x10) != (s32)s1) {
        *(void**)((char*)arg0 + 0x18) = (*(void*(**)())(*(void**)s1 + 4))(s1);
    }
    if (*(s32*)((char*)*(void**)((char*)arg0 + 0xC) + 0xC) != *(s32*)((char*)arg0 + 0x14)) {
        *(void**)((char*)arg0 + 0x14) = (*(void*(**)())(*(void**)*(void**)((char*)arg0 + 0x14) + 4))(*(void**)((char*)arg0 + 0x14));
    }
    if (*(s32*)((char*)*(void**)((char*)arg0 + 0xC) + 8) != *(s32*)((char*)arg0 + 0x10)) {
        *(void**)((char*)arg0 + 0x10) = (*(void*(**)())(*(void**)*(void**)((char*)arg0 + 0x10) + 4))(*(void**)((char*)arg0 + 0x10));
    }
}
void Effect__HandleChildMsg(void *arg0, s32 arg1, s32 arg2) {
    void **temp_a0;
    void **temp_s0;

    if (arg2 == 2) {
        temp_a0 = *(s32*)((char*)(arg0) + 0x10);
        (*(void(**)())(*(void**)(temp_a0) + 0x44))(temp_a0);
        temp_s0 = *(s32*)((char*)*(s32**)((char*)(arg0) + 0xc) + 0x4);
        (*(void(**)())(*(void**)(temp_s0) + 0x44))(temp_s0);
        (*(void(**)())(*(void**)(temp_s0) + 0x48))(temp_s0);
    }
}
void Effect__IncCounter(void *arg0) {
    *(s32*)((char*)(arg0) + 0x1c) = (s32) (*(s32*)((char*)(arg0) + 0x1c) + 1);
};
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_8003E4B8);void Effect__ResetAndPause(void *arg0) {    void **temp_a0;

    *(s32*)((char*)(arg0) + 0x1c) = 0;
    temp_a0 = **(s32**)((char*)(arg0) + 0xc);
    (*(void(**)())(*(void**)(temp_a0) + 0x48))(temp_a0);
}
void Effect__ResetAndResume(void *arg0) {
    void **temp_a0;

    temp_a0 = **(s32**)((char*)(arg0) + 0xc);
    (*(void(**)())(*(void**)(temp_a0) + 0x4c))(temp_a0);
    *(s32*)((char*)(arg0) + 0x1c) = 0;
};
void *Get_vtable_Effect(void) {
    return &gVtable_Effect;
};
void *New_ModelObj(void) {
    void *s0 = BMemAlloc(0xBC);
    if (s0 != 0) {
        (*(void(**)(void *))((char *)Get_vtable_ModelObj() + 0x8))(s0);
        return s0;
    }
    return 0;
}
void ModelObj__Init(void *arg0) {
    void *s0 = arg0;
    void **temp_v0;

    (*(void(**)(void *))((char *)Get_vtable_BasicClass() + 0x8))(s0);
    *(s32 *)((char *)s0) = (s32)Get_vtable_ModelObj();
    *(s32 *)((char *)s0 + 0xc) = 0;
    *(s32 *)((char *)s0 + 0x10) = 0;
    *(s32 *)((char *)s0 + 0xac) = New_SceneNode();
    temp_v0 = New_Texture(&D_8008A90C, 0, 0);
    *(s32 *)((char *)s0 + 0xb0) = (s32)temp_v0;
    (*(void(**)(void *, s32, s32 *))((char *)*(void **)temp_v0 + 0x4c))(temp_v0, *(s32 *)((char *)s0 + 0xac), &D_8008A904);
    (*(void(**)(void *))((char *)*(void **)s0 + 0x40))(s0);
}
void ModelObj__Destroy(void *arg0) {
    void **temp_a0;

    (*(void(**)())(*(void**)(arg0) + 0x90))();
    (*(void(**)(void *))((char *)*(void **)arg0 + 0x74))(arg0);
    temp_a0 = *(void ***)((char *)arg0 + 0xac);
    (*(void(**)(void *))((char *)*(void **)temp_a0 + 0x4))(temp_a0);
    (*(void(**)(void *, s32))((char *)*(void **)arg0 + 0xa8))(arg0, 0);
    (*(void(**)(void *))((char *)Get_vtable_BasicClass() + 0xc))(arg0);
}
void ModelObj__HandleMessage(void *arg0, s32 *arg1) {
    (*(void (**)(void*, s32*))((char*)Get_vtable_BasicClass() + 0x10))(arg0, arg1);
    {
        s32 flags = *(s32*)(*(s32*)arg1) & 0xF;
        if (flags == 4) {
            *(s32*)((char*)arg0 + 0x10) = (s32)arg1;
            *(s32*)((char*)arg0 + 0x30) = *(s32*)((char*)arg1 + 0x14);
        } else if (flags == 1) {
            *(s32*)((char*)arg0 + 0xC) = (s32)arg1;
        }
    }
}
void func_8003E7F4(void *arg0, void *arg1) {
    s32 flags = *(s32*)(*(void**)arg1) & 0xF;
    if (flags == 4) {
        *(s32*)((char*)arg0 + 0x30) = 0;
        *(s32*)((char*)arg0 + 0x10) = 0;
    } else if (flags == 1) {
        *(s32*)((char*)arg0 + 0xC) = 0;
    }
    (*(void(**)(void*, void*))((char*)Get_vtable_BasicClass() + 0x14))(arg0, arg1);
}
void ModelObj__ResetLinks(void *arg0) {
    *(s32 *)((char *)arg0 + 0x30) = 0;
    *(s32 *)((char *)arg0 + 0x10) = 0;
    *(s32 *)((char *)arg0 + 0xC) = 0;
    (*(void(**)(void *))((char *)Get_vtable_BasicClass() + 0x18))(arg0);
}
void func_8003E8B8(void *arg0, void *arg1, void *arg2) {
    (*(void(**)(void*, void*, void*))((char*)Get_vtable_BasicClass(arg0, arg1, arg2) + 0x38))(arg0, arg1, arg2);
    if ((*(s32*)(*(void**)arg1) & 0xF) == 5) {
        (*(void(**)(void*, void*, void*))(*(void**)arg0 + 0x94))(arg0, arg1, arg2);
    } else if ((*(s32*)(*(void**)arg1) & 0xF) == 1) {
        (*(void(**)(void*, void*, void*))(*(void**)arg0 + 0x98))(arg0, arg1, arg2);
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_8003E968);
void func_8003EA0C(void *arg0, s32 *arg1) {
    s32 v0 = arg1[0];
    s32 v1 = arg1[1];
    *(volatile s32 *)((char *)arg0 + 0x34) = v0;
    *(volatile s32 *)((char *)arg0 + 0x38) = v1;
}
void ModelObj__Set3C(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x3c) = arg1;
};
void func_8003EA2C(void *arg0, s32 arg1) {
    if (*(s32*)((char*)(arg0) + 0x70) == 0) {
        *(s32*)((char*)(arg0) + 0x44) = arg1;
    }
}
void func_8003EA48(void *arg0, s32 arg1) {
    if (*(s32*)((char*)(arg0) + 0x70) == 0) {
        *(s32*)((char*)(arg0) + 0x48) = arg1;
    }
}
void ModelObj__Set40(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x40) = arg1;
};
void ModelObj__Null1(void) {
}
void ModelObj__Null2(void) {
}
void ModelObj__Set54(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x54) = arg1;
};
void ModelObj__SetColorA(void *arg0, S8Triple *arg1) {
    *(S8Triple *)((char *)arg0 + 0x58) = *arg1;
}
void ModelObj__SetColorB(void *arg0, S8Triple *arg1) {
    *(S8Triple *)((char *)arg0 + 0x5B) = *arg1;
}
void ModelObj__Set60(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x60) = arg1;
};
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", ModelObj__LookAt);
void ModelObj__ApplyStoredMsg(void *arg0) {
    s32 temp_a1;

    temp_a1 = *(s32*)((char*)(arg0) + 0x10);
    if (temp_a1 != 0) {
        (*(void(**)(void*, s32))(*(void**)(arg0) + 0x14))(arg0, temp_a1);
    }
}
void ModelObj__SetPosition(void *arg0, S32Triple *arg1) {
    if (*(s32 *)((char *)arg0 + 0x10) != 0) {
        *(S32Triple *)((char *)arg0 + 0x14) = *arg1;
    }
}
void ModelObj__SetRotation(void *arg0, S32Triple *arg1) {
    if (*(s32 *)((char *)arg0 + 0x10) != 0) {
        *(S32Triple *)((char *)arg0 + 0x20) = *arg1;
    }
}
void ModelObj__SetAspect(void *arg0, s16 *arg1) {
    if (*(s32*)((char*)arg0 + 0x10) != 0) {
        s16 w = arg1[0];
        s16 h = arg1[1];
        *(s32*)((char*)arg0 + 0x2C) = ((w / h) << 12) + (((w % h) << 12) / h);
    }
}
void ModelObj__Null3(void) {
}
void ModelObj__Null4(void) {
}
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", ModelObj__CreateTexWindow);
void ModelObj__FreeTexWindow(void *arg0) {
    if (*(s32*)((char*)(arg0) + 0x70) != 0) {
        func_80021114(0);
        BMemFree(*(s32*)((char*)(arg0) + 0x78));
        *(s32*)((char*)(arg0) + 0x70) = 0;
    }
};
void ModelObj__TickCounter90(void *arg0, s32 arg1, s32 arg2) {
    s32 v = *(s32*)((char*)arg0 + 0x90) + 1;
    s32 temp_a2 = (u32)(arg2 - 2) < 2U;
    *(s32*)((char*)arg0 + 0x90) = v;
    if (temp_a2 != 0) {
        (*(void(**)(void*, s32, s32))(*(void**)arg0 + 0x9c))(arg0, arg1, temp_a2);
    }
}
void ModelObj__OnMsg2CallA4(void *arg0, s32 arg1, s32 arg2) {
    if (arg2 == 2) {
        (*(void(**)())(*(void **)arg0 + 0xA4))();
    }
}
void ModelObj__Render(void *arg0) {
    s32 v1;
    s32 v0;
    if (*(s32*)((char*)arg0 + 0x70) == 0) {
        return;
    }
    if (*(s32*)((char*)*(void**)((char*)arg0 + 0x10) + 0xC) != 0) {
        (*(void(**)())(*(void**)arg0 + 0xA0))(arg0, *(void**)((char*)arg0 + 0x10));
    }
    SetupRenderContext(*(s32*)((char*)arg0 + 0x40));
    SetRenderStateA(*(s32*)((char*)arg0 + 0x4C));
    func_8003FC70(*(s32*)((char*)arg0 + 0x54));
    if (*(s32*)((char*)arg0 + 0x54) == 1 || *(s32*)((char*)arg0 + 0x54) == 3) {
        func_80024AE4(*(u8*)((char*)arg0 + 0x5B), *(u8*)((char*)arg0 + 0x5C), *(u8*)((char*)arg0 + 0x5D));
        SetPerspective(*(s32*)((char*)arg0 + 0x60), *(s32*)((char*)arg0 + 0x40));
    }
    CalcLookAtAngles((char*)arg0 + 0x14);
    *(s32*)*(void**)((char*)arg0 + 0x30) = 0;
    v1 = *(s32*)((char*)arg0 + 0x50) - *(s32*)((char*)arg0 + 0x4C);
    v0 = 1 << *(s32*)((char*)arg0 + 0x3C);
    *(s32*)((char*)arg0 + 0x98) = (u32)v1 / (u32)v0 + 1;
    SetRenderStateB(*(s32*)((char*)arg0 + *(s32*)((char*)arg0 + 0x74) * 4 + 0x88));
    CalcTexWindowUV(0, 0, *(void**)((char*)arg0 + *(s32*)((char*)arg0 + 0x74) * 4 + 0x78));
    (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0xA0))(arg0, *(s32*)((char*)arg0 + 0xAC));
    if (*(void**)((char*)arg0 + 0x10) != 0) {
        (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0xA0))(arg0, (s32)ModelObj__GetRoot(*(void**)((char*)arg0 + 0x10)));
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", ModelObj__Draw);
void ModelObj__SetTexture(void *arg0, void **arg1) {
    void **temp_a0;

    if (*(s32*)((char*)(arg0) + 0x10) == 0) {
        temp_a0 = *(s32*)((char*)(arg0) + 0xb0);
        if (temp_a0 != NULL) {
            (*(void(**)())(*(void**)(temp_a0) + 0x4))(temp_a0);
        }
        *(s32*)((char*)(arg0) + 0xb0) = arg1;
        if (arg1 != NULL) {
            (*(void(**)())(*(void**)(arg1) + 0x4c))(arg1, *(s32*)((char*)(arg0) + 0xac), &D_8008A904);
        }
    }
};
s32 ModelObj__GetTexture(void *arg0) {
    return *(s32*)((char*)(arg0) + 0xb0);
};
void ModelObj__SetB4(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0xb4) = arg1;
};
void ModelObj__SetB8(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0xb8) = arg1;
};
void *Get_vtable_ModelObj(void) {
    return &gVtable_ModelObj;
};
void *ModelObj__GetRoot(void *arg0) {
    void *var_a0;

    var_a0 = arg0;
    if (*(s32*)((char*)(var_a0) + 0xc) != 0) {
        do {
            var_a0 = *(s32*)((char*)(var_a0) + 0xc);
        } while (*(s32*)((char*)(var_a0) + 0xc) != 0);
    }
    return var_a0;
}
void SetupRenderContext(void) {
    func_80024B90();
}
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", CalcLookAtAngles);
void NormalizeBounds(void *arg0, void *arg1) {
    s32 shift = IntLog2(MaxAbs6(arg0));
    if (shift >= 0x10) {
        shift -= 15;
        *(s32*)((char*)arg1 + 0x0) = *(s32*)((char*)arg0 + 0x0) >> shift;
        *(s32*)((char*)arg1 + 0x4) = *(s32*)((char*)arg0 + 0x4) >> shift;
        *(s32*)((char*)arg1 + 0x8) = *(s32*)((char*)arg0 + 0x8) >> shift;
        *(s32*)((char*)arg1 + 0xC) = *(s32*)((char*)arg0 + 0xC) >> shift;
        *(s32*)((char*)arg1 + 0x10) = *(s32*)((char*)arg0 + 0x10) >> shift;
        *(s32*)((char*)arg1 + 0x14) = *(s32*)((char*)arg0 + 0x14) >> shift;
    } else {
        *(s32*)((char*)arg1 + 0x0) = *(s32*)((char*)arg0 + 0x0);
        *(s32*)((char*)arg1 + 0x4) = *(s32*)((char*)arg0 + 0x4);
        *(s32*)((char*)arg1 + 0x8) = *(s32*)((char*)arg0 + 0x8);
        *(s32*)((char*)arg1 + 0xC) = *(s32*)((char*)arg0 + 0xC);
        *(s32*)((char*)arg1 + 0x10) = *(s32*)((char*)arg0 + 0x10);
        *(s32*)((char*)arg1 + 0x14) = *(s32*)((char*)arg0 + 0x14);
    }
}
s32 MaxAbs6(s32 *arg0) {
    s32 max;
    s32 v0 = arg0[0];
    s32 v1 = arg0[1];
    max = (v0 >= 0) ? v0 : -v0;
    v1 = (v1 >= 0) ? v1 : -v1;
    if (max < v1) max = v1;
    v0 = arg0[2];
    v1 = (v0 >= 0) ? v0 : -v0;
    if (max < v1) max = v1;
    v0 = arg0[3];
    v1 = (v0 >= 0) ? v0 : -v0;
    if (max < v1) max = v1;
    v0 = arg0[4];
    v1 = (v0 >= 0) ? v0 : -v0;
    if (max < v1) max = v1;
    v0 = arg0[5];
    v1 = (v0 >= 0) ? v0 : -v0;
    if (max < v1) max = v1;
    return max;
}
s32 IntLog2(s32 arg0) {
    s32 v0 = 0;
    if (arg0 > 0) {
        do {
            arg0 >>= 1;
            v0++;
        } while (arg0 > 0);
    }
    return v0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_8003F848);
void SetRenderStateA(s32 arg0) {
    D_800902E4 = arg0;
};
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", BuildOrientMatrix);
void SetRenderStateB(s32 arg0) {
    D_8008E794 = arg0;
};
void ModelObj__SubmitPrim(void *arg0) {
    func_80021678(*(s32*)((char*)(arg0) + 0x10));
}
void CalcTexWindowUV(s32 arg0, s32 arg1, void *arg2) {
    *(s32*)((char*)(arg2) + 0x8) = (s32) (arg0 & 0xFFFF);
    *(s32*)((char*)(arg2) + 0xc) = (s32) (arg1 & 0xFFFF);
    *(s32*)((char*)(arg2) + 0x10) = (s32) (((4 << *(s32*)((char*)(arg2))) + *(s32*)((char*)(arg2) + 0x4)) - 4);
    func_80021580(*(s32*)((char*)(arg2) + 0x4), 1 << *(s32*)((char*)(arg2)));
};
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_8003FC70);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", TransposeRotMatrix);
void SetPerspective(s32 arg0, s32 arg1) {
    func_80024B9C((s32) -(arg0 * 0x140) / arg1);
    func_80024BA8(0x01400000);
};
void *New_Texture(s32 arg0, s32 arg1, s32 arg2) {
    void *s0 = BMemAlloc(0xA0);

    if (s0 != 0) {
        (*(void(**)(void*, s32, s32, s32))((char *)Get_vtable_Texture() + 0x8))(s0, arg0, arg1, arg2);
        return s0;
    }
    return 0;
}
void Texture__Init(void *arg0, void *arg1, s32 arg2, s32 arg3) {
    void *vtable = Get_vtable_Sprite();
    void *texEntry;
    if (arg2 != 0) {
        texEntry = gTextureEntries + arg2 * 3;
    } else {
        texEntry = gDefaultTextureEntry;
    }
    (*(void(**)(void*, void*, void*, s32))((char*)vtable + 0x8))(arg0, arg1, texEntry, arg3);
    *(s32*)arg0 = (s32)Get_vtable_Texture();
    (*(void(**)(void*, s32))(*(s32*)arg0 + 0x40))(arg0, arg2);
}
void Texture__Reset(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x70) = arg1;
    *(s32*)((char*)(arg0) + 0x6c) = 0;
    *(s32*)((char*)(arg0) + 0x74) = 0xA;
    *(s32*)((char*)(arg0) + 0x78) = 0;
    *(s32*)((char*)(arg0) + 0x7c) = 0;
    (*(void(**)(void*, s32))(*(void**)(arg0) + 0x60))(arg0, 0);
    (*(void(**)())(*(void**)(arg0) + 0x64))(arg0, 0);
    *(s32*)((char*)(arg0) + 0x98) = 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_8003FF44);
void Texture__SetFrameDelay(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x74) = arg1;
};
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_80040024);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_800400B0);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_80040154);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_800402F0);
u8 *Texture__GetEntry(void *arg0) {
    s32 idx = *(s32 *)((char *)arg0 + 0x78);
    if (idx == 0xF) {
        return gDefaultTextureEntry;
    }
    return gTextureEntries + idx * 3;
}
void Texture__SetRegion(void *arg0, u16 *arg1, S32Pair *arg2) {
    if (*(s32 *)((char *)arg0 + 0xC) != 0) {
        *(s32 *)((char *)arg0 + 0x88) = *(u16 *)((char *)arg0 + 0x60);
        *(s32 *)((char *)arg0 + 0x8C) = *(u16 *)((char *)arg0 + 0x62);
        *(S32Pair *)((char *)arg0 + 0x90) = *(S32Pair *)((char *)arg0 + 0x50);
        *(u16 *)((char *)arg0 + 0x60) = arg1[0];
        *(u16 *)((char *)arg0 + 0x62) = arg1[2];
        *(S32Pair *)((char *)arg0 + 0x50) = *arg2;
    }
}
void Texture__RestoreRegion(void *arg0) {
    s32 v0 = *(s32 *)((char *)arg0 + 0x90);
    s32 v1 = *(s32 *)((char *)arg0 + 0x94);
    u16 h0, h1;
    *(volatile s32 *)((char *)arg0 + 0x50) = v0;
    *(volatile s32 *)((char *)arg0 + 0x54) = v1;
    h0 = *(volatile u16 *)((char *)arg0 + 0x88);
    h1 = *(volatile u16 *)((char *)arg0 + 0x8C);
    *(volatile u16 *)((char *)arg0 + 0x60) = h0;
    *(u16 *)((char *)arg0 + 0x62) = h1;
}
void Texture__SetExtra(void *arg0, s32 arg1, s32 arg2) {
    *(s32*)((char*)(arg0) + 0x98) = arg1;
    *(s32*)((char*)(arg0) + 0x9c) = arg2;
};
void *Get_vtable_Texture(void) {
    return &gVtable_Texture;
};
void *New_Sprite(s32 arg0, s32 arg1, s32 arg2) {
    void *s0 = BMemAlloc(0x6C);

    if (s0 != 0) {
        (*(void(**)(void*, s32, s32, s32))((char *)Get_vtable_Sprite() + 0x8))(s0, arg0, arg1, arg2);
        return s0;
    }
    return 0;
}
void Sprite__Init(void *arg0, void *arg1, void *arg2, void *arg3) {
    (*(void (**)(void*))((char*)Get_vtable_SceneNode() + 0x8))(arg0);
    *(s32*)arg0 = (s32)Get_vtable_Sprite();
    (*(void (**)(void*, void*, void*, void*))(*(s32*)arg0 + 0x40))(arg0, arg1, arg2, arg3);
}
void func_800405D0(void *arg0, void *arg1, void *arg2, s32 arg3) {
    *(s32*)((char*)arg0 + 0x44) = arg3;
    *(s32*)((char*)arg0 + 0x48) = 1;
    *(s32*)((char*)arg0 + 0x4C) = 0;
    *(s32*)((char*)arg0 + 0x58) = 0;
    *(s16*)((char*)arg0 + 0x5C) = 0;
    *(s16*)((char*)arg0 + 0x5E) = 0;
    *(s16*)((char*)arg0 + 0x60) = *(u16*)arg1;
    *(s16*)((char*)arg0 + 0x62) = *(u16*)((char*)arg1 + 4);
    (*(void(**)(void*, s32, void*))((char*)*(void**)arg0 + 0xB8))(arg0, 1, arg2 ? arg2 : (void*)D_8008A924);
    (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0xCC))(arg0, 0xD);
}
void Sprite__AttachIfFree(void *arg0, s32 arg1, s32 arg2) {
    if (*(s32*)((char*)(arg0) + 0xc) == 0) {
        (*(void(**)(void*, s32, s32))((char*)Get_vtable_SceneNode() + 0x4c))(arg0, arg1, 0);
        (*(void(**)(void*, s32))(*(void**)arg0 + 0xbc))(arg0, arg2);
    }
}
s32 Sprite__SetInvisibleFlag(s32 arg0, s32 arg1) {
    return SetBitField(arg0 + 0x58, 0x1F, 1, arg1 == 0) == 0;
}
void Sprite__SetAttrBit30(s32 arg0, s32 arg1) {
    SetBitField(arg0 + 0x58, 0x1E, 1, arg1 != 0);
}
void Sprite__SetDrawMode(s32 arg0, s32 arg1) {
    SetBitField(arg0 + 0x58, 0x1C, 2, arg1);
}
void Sprite__ModulateColor(s32 arg0, s32 arg1, s32 arg2) {
    Sprite__ApplyColor(arg0, arg0 + 0x64, arg2, arg1);
}
void Sprite__ApplyColor(void *arg0, S8Triple *arg1, S8Triple *arg2, s32 arg3) {
    if (arg3 != 0) {
        *arg1 = *arg2;
    } else {
        ((u8 *)arg1)[0] += ((u8 *)arg2)[0];
        ((u8 *)arg1)[1] += ((u8 *)arg2)[1];
        ((u8 *)arg1)[2] += ((u8 *)arg2)[2];
    }
}
void Sprite__SetPosition(void *arg0, S32Pair *arg1) {
    if (*(s32 *)((char *)arg0 + 0xC) != 0) {
        *(S32Pair *)((char *)arg0 + 0x50) = *arg1;
    }
}
void Sprite__SetUV(void *arg0, void *arg1) {
    if (*(s32*)((char*)(arg0) + 0xc) != 0) {
        *(u16*)((char*)(arg0) + 0x60) = *(u16*)((char*)(arg1));
        *(u16*)((char*)(arg0) + 0x62) = *(u16*)((char*)(arg1) + 0x4);
    }
}
void Sprite__SetChildData(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    (*(void(**)())(*(void **)arg0 + 0x4C))();
    *(s32 *)((char *)arg0 + 0x48) = 0;
    *(s32 *)((char *)arg0 + 0x4C) = arg3;
}
void Sprite__Set44(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x44) = arg1;
};
void Sprite__SetFrameMask(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x68) = (s32) ((1 << arg1) - 1);
};
void *Get_vtable_Sprite(void) {
    return &gVtable_Sprite;
};
void *New_SpriteSet(s32 arg0, s32 arg1, s32 arg2) {
    void *s0 = BMemAlloc(0xB8);

    if (s0 != 0) {
        (*(void(**)(void*, s32, s32, s32))((char *)Get_vtable_SpriteSet() + 0x8))(s0, arg0, arg1, arg2);
        return s0;
    }
    return 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", SpriteSet__Init);
void SpriteSet__Destroy(void *arg0) {
    ReleaseObjectArray(*(s32*)((char*)arg0 + 0xB4), *(u8*)((char*)arg0 + 0xA9));
    *(s32*)((char*)arg0 + 0xB4) = BMemFree(*(s32*)((char*)arg0 + 0xB4));
    (*(void(**)(void *))((char*)func_80041C3C() + 0xC))(arg0);
}
void SpriteSet__ResetEntry(void **arg0, s32 arg1) {
    (*(void(**)(void*, s32))(*(void**)(arg0) + 0xd4))(arg0, 7);
    (*(void(**)())(*(void**)(arg0) + 0xcc))(arg0, arg1);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", SpriteSet__InitConfig);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_80040C00);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_80040CD0);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", SpriteSet__PlayAnimation);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", SpriteSet__PlayAnimation2);
void SpriteSet__SetEntryFrame(void *arg0, s32 arg1, s32 arg2) {
    void ***temp_a2;
    void **temp_a0;

    temp_a2 = (arg2 * 4) + *(s32*)((char*)(arg0) + 0xb4);
    temp_a0 = *temp_a2;
    (*(void(**)())(*(void**)(temp_a0) + 0xc4))(temp_a0, arg1 & 0xFF, temp_a2);
}
void SpriteSet__Null1(void) {
}
void SpriteSet__SetFramesFromBytes(void *arg0, u8 *arg1) {
    s32 *list = *(s32**)((char*)arg0 + 0xB4);
    if (arg1 != NULL && *arg1 != 0) {
        while (*arg1 != 0) {
            s32 obj = *(s32*)list;
            (*(void (**)(s32, u8))(*(s32*)obj + 0xC4))(obj, *arg1);
            arg1++;
            list++;
        }
    }
}
void SpriteSet__Null2(void) {
}
void SpriteSet__SetB0(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0xb0) = arg1;
};
void *Get_vtable_SpriteSet(void) {
    return &gVtable_SpriteSet;
};
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_80040FC0);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_80041020);
INCLUDE_ASM("asm/lsdde/nonmatchings/2C054", func_8004109C);
