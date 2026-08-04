#include "common.h"

void EntityBehavior_OrbitHelper(void *, void *, s32, s32, s32);
extern s32 D_80089EA2;
extern s32 gEntityTypeTable;
extern s32 D_80089EA6;
extern s32 D_80089EAF;
extern s32 D_80089EAB;
extern s32 D_80089EAC;
extern s32 D_80089DF0;
extern s32 D_80089C70;
extern s32 D_80089CAC;
extern s32 D_80089CB8;
extern s32 D_80089D00;
extern s32 D_80089D78;
extern s32 D_80089DCC;
extern s32 D_80089E08;
extern s32 D_80089E14;
extern s32 D_8008ACCC;
extern s32 D_80089D0C;
extern s32 D_80089E20;
extern s32 D_80089E80;
extern s32 D_8008AC1C;
extern s32 D_80089DD8;
extern s32 D_80089E38;
extern s32 D_80089E5C;
extern s32 D_80089E44;
extern s32 D_80089DE4;
void *BMemAlloc(s32);                                /* extern */
void BMemFree(void*);                                /* extern */
void *Get_vtable_Entity(void);                              /* extern */
void *New_Texture(s32, s32, s32);                     /* extern */
extern s32 D_8008AC14;
extern s32 D_8008AC0C;
void *Get_vtable_class_65650(void);                               /* extern */
void SlotAlloc__Update(s32, void *);                       /* extern */
extern s32 gEntityBehaviorTable[];
void SlotAlloc__Init(s32, s32*, s32, s32, s32);                /* extern */
void SlotAlloc__Release(s32, void *);                       /* extern */
s32 Entity__IsPlayerInRange(void*, s32, s32, s32);                    /* extern */
extern s32 gVtable_Entity;
void FaceTowards(void *, void **,s32,s32, s32);        /* extern */
extern s32 D_80089E50;
extern s32 D_80089CA0;
extern s32 D_80089C58;
extern s32 D_80089DB4;
extern s32 D_80089D18;
extern s32 D_80089E74;
extern s32 D_80089C64;
void EntityBehavior_RandomSfxHelper(void*);
extern s32 D_80089DC0;
extern s32 D_80089E8C;
extern s32 D_80089C7C;
extern s32 D_80089C88;
extern s32 D_80089C94;
extern s32 D_80089D54;
extern s32 D_80089D24;
extern s32 D_80089CC4;
extern s32 D_80089CD0;
extern s32 D_80089CDC;
extern s32 D_80089D6C;
extern s32 D_80089DFC;
void EntityMotion_SetCrouch(void *);                                 /* extern */
s32 Entity__InitWithArgs(void*, s32, s32, s32, s32);              /* extern */
void EntityBehavior_SfxPrereq();                                  /* extern */
void func_80060D80();                                  /* extern */
void *New_Entity(s32 arg0, s32 arg1, s32 arg2) {
    void *s0 = BMemAlloc(0x108);

    if (s0 != 0) {
        if ((*(s32(**)(void*, s32, s32, s32))((char *)Get_vtable_Entity() + 0x8))(s0, arg0, arg1, arg2) != 0) {
            return s0;
        }
        BMemFree(s0);
    }
    return 0;
}
void *Entity__Entity(void *arg0, s32 arg1, void *arg2, void *arg3, s32 arg4) {
    void *v0 = Get_vtable_class_65650();
    s32 result = (*(s32 (**)(void*, void*, void*))((char*)v0 + 0x8))(arg0, arg2, arg3);
    if (result != 0) {
        *(s32*)arg0 = (s32)Get_vtable_Entity();
        *(s32*)((char*)arg0 + 0x98) = arg1;
        *(s32*)((char*)arg0 + 0x9C) = 0;
        *(s32*)((char*)arg0 + 0x100) = 0;
        *(s32*)((char*)arg0 + 0x104) = 0;
        (*(void (**)(void*))(*(s32*)arg0 + 0x40))(arg0);
        return arg0;
    }
    return NULL;
}
void *Entity__InitWithArgs(void *s1, void *a0, void *s2, s32 s3, s32 arg5) {
    void *s0;

    if (*(s32 *)((char *)s1 + 0x100) == 0) {
        if (a0 == 0) {
            a0 = (void *)&D_8008AC14;
        }
        s0 = New_Texture((s32)a0, 0, arg5);
        if (s0 == 0) {
            return 0;
        }
        *(s32 *)((char *)s1 + 0x100) = (s32)s0;
    } else {
        s0 = *(void **)((char *)s1 + 0x100);
    }
    (*(void (**)(void *))(*(s32 *)s0 + 0x50))(s0);
    (*(void (**)(void *, void *, void *))(*(s32 *)s0 + 0x4C))(s0, s1, s2 != 0 ? s2 : (void *)&D_8008AC0C);
    (*(void (**)(void *, s32))(*(s32 *)s0 + 0xD0))(s0, s3);
    return s0;
}
void Entity__Destructor(void *arg0) {
    void **ta = *(void ***)((char *)arg0 + 0x100);
    if (ta != NULL) { (*(void(**)(void *))((char *)*(void **)ta + 0x4))(ta); }
    ta = *(void ***)((char *)arg0 + 0x104);
    if (ta != NULL) { (*(void(**)(void *))((char *)*(void **)ta + 0x4))(ta); }
    (*(void(**)(void *))((char *)Get_vtable_class_65650() + 0xC))(arg0);
}
void Entity__Init(void *arg0) {
    s32 idx = *(s32*)((char*)arg0 + 0x98);
    s32 b = *(u8*)((char*)&D_80089EA6 + idx * 0x10);

    if (b - 1 < 9U) {
        ((void(**)(void*, s32))*(s32**)arg0)[0x1C](arg0, 1);
    }
    ((void(**)(void*, s32))*(s32**)arg0)[0x43](arg0, 0x42);
    ((void(**)(void*))*(s32**)arg0)[0x58](arg0);
}
void Entity__VFunc4C(void *s0, void *s1, void *s2, s32 s3, s32 s4) {
    s32 idx;

    if (*(s32 *)((char *)s0 + 0xC) == 0) {
        (*(void (**)(void *, void *, void *, s32, s32))((char *)Get_vtable_class_65650() + 0x4C))(s0, s1, s2, s3, s4);
        idx = *(s32 *)((char *)s0 + 0x98);
        *(s32 *)((char *)s0 + 0x4C) = s3;
        if (*(s8 *)((char *)&D_80089EA6 + 1 + idx * 0x10) == 0) {
            (*(void (**)(void *))(*(s32 *)s0 + 0x15C))(s0);
            if (*(s8 *)((char *)&D_80089EAF + *(s32 *)((char *)s0 + 0x98) * 0x10) == 0) {
                (*(void (**)(void *))(*(s32 *)s0 + 0x168))(s0);
            }
        }
    }
}
void Entity__Despawn(void *arg0) {
    if (*(s32 *)((char *)arg0 + 0xc) != 0) {
        (*(void(**)())(*(void **)arg0 + 0x160))();
        (*(void(**)(void *))((char *)Get_vtable_class_65650() + 0x50))(arg0);
        *(s32 *)((char *)arg0 + 0x4c) = 0;
    }
}
void Entity__Update(void **arg0, s32 arg1, s32 arg2) {
    if ((*(s32(**)())(*(void**)(arg0) + 0x170))(arg0) != 0) {
        (*(void(**)())(*(void**)(arg0) + 0x174))(arg0);
    }
    if ((*(s32(**)())(*(void**)(arg0) + 0x17c))(arg0) != 0) {
        (*(void(**)())(*(void**)(arg0) + 0x180))(arg0);
    }
    (*(void(**)())(*(void**)(arg0) + 0x178))(arg0);
    (*(void(**)())((char*)Get_vtable_class_65650() + 0x98))(arg0, arg1, arg2);
}
void Entity__VFuncDC(void *s2, void *s3, s32 s0) {
    s32 s1;

    s1 = *(s8 *)((char *)&D_80089EAB + *(s32 *)((char *)s2 + 0x98) * 0x10);
    if ((u32)(s0 - 2) >= 7U || s1 > 0) {
        (*(void (**)(void *, void *, s32))((char *)Get_vtable_class_65650() + 0xDC))(s2, s3, s0);
        if (s0 == 4 && s1 > 0) {
            if (s1 != 0x7F) {
                s0 = 10;
            } else {
                if (*(s8 *)((char *)&D_80089EAC + *(s32 *)((char *)s2 + 0x98) * 0x10) != 0) {
                    s0 = 11;
                } else {
                    s0 = 12;
                }
            }
            (*(void (**)(void *, s32))(*(s32 *)s2 + 0x30))(s2, s0);
        }
    }
}
void Entity__OnEvent(void **arg0, s32 arg1, s32 arg2) {
    (*(void(**)(void*, s32, s32))((char*)Get_vtable_class_65650() + 0xE0))(arg0, arg1, arg2);
    if (arg2 == 4) {
        (*(void(**)(void*))(*(void**)arg0 + 0x160))(arg0);
    }
}
void Entity__TickState(void *arg0) {
    SlotAlloc__Update(*(s32*)((char*)(arg0) + 0x58), arg0 + 0x9C);
    *(s32*)((char*)(arg0) + 0xfc) = (s32) (*(s32*)((char*)(arg0) + 0xfc) + 1);
}
typedef struct { s32 x, y, z; } LStruct_8005D714;
s32 Entity__IsPlayerInRange(void *t1, LStruct_8005D714 *a1, s32 a2, s32 a3) {
    LStruct_8005D714 local;
    s32 b;

    local = *a1;
    b = *(u8 *)((char *)&D_80089EA6 + *(s32 *)((char *)t1 + 0x98) * 0x10);
    if ((u8)(b + 9) < 9U) {
        local.y += (s8)b << 10;
    }
    if (a3 < 0) {
        a3 = 0x800 / (~a3 + 1);
    } else {
        a3 = a3 << 11;
    }
    return (*(s32 (**)(void *, s32, s32, LStruct_8005D714 *, s32))(*(s32 *)(*(s32 *)((char *)t1 + 0x94)) + 0x120))(
        *(void **)((char *)t1 + 0x94), 0, a2 << 11, &local, a3);
}
s32 Entity__GetDistanceToPlayer(void *arg0, void *arg1) {
    void *a2;
    s32 a1, dy, v0;

    if (*(s32 *)((char *)arg1 + 0xC) != 0) {
        a2 = (void *)(*(s32 *)((char *)arg1 + 0x14) + 0x38);
    } else {
        a2 = 0;
    }
    arg0 = *(void **)((char *)arg0 + 0x14);
    a1 = *(s32 *)((char *)arg0 + 0x18) - *(s32 *)a2;
    if (a1 < 0) a1 = ~a1 + 1;
    dy = *(s32 *)((char *)arg0 + 0x20) - *(s32 *)((char *)a2 + 8);
    if (dy >= 0) {
        v0 = a1 + dy;
    } else {
        v0 = a1 - dy;
    }
    return v0;
}
s32 Entity__GetPlayerProximity(void *arg0) {
    if (*(s32*)((char*)arg0 + 0x94) != 0) {
        s32 dist = (*(s32(**)(void*, void*))(*(s32*)arg0 + 0x144))(arg0, *(void**)((char*)arg0 + 0x94));
        s32 idx = *(s32*)((char*)arg0 + 0x98);
        s32 limit = *(s8*)((char*)&D_80089EAC + idx * 0x10 + 2) << 11;
        if (limit >= dist) {
            return dist / (limit / *(s32*)((char*)arg0 + 0xB0));
        }
    }
    return -1;
}
void *Entity__GetTypeRow(void *arg0) {
    return (char*)&gEntityTypeTable + (*(s32*)((char*)(arg0) + 0x98) * 0x10);
}
s32 Entity__GetUnlockEffect(void *arg0) {
    s32 index = *(s32*)((s32)arg0 + 0x98);
    s32 value = *(s8*)(&D_80089EA6 + index * 4);
    return value * 1000;
}
s32 Entity__GetLinkStage(void *arg0) {
    s32 index = *(s32*)((s32)arg0 + 0x98);
    s32 value = *(s8*)(&D_80089EAB + index * 4);

    if (value < 0) {
        return ~value;
    }
    return value - 1;
}
s32 Entity__GetEventVideo(void *arg0) {
    s32 index = *(s32*)((s32)arg0 + 0x98);
    return *(s8*)(&D_80089EAC + index * 4) - 1;
}
void Entity__Activate(void *arg0) {
    (*(void(**)(void *, s32))((char *)*(void **)arg0 + 0x60))(arg0, 1);
    *(s32 *)((char *)arg0 + 0xf0) = 1;
    *(s32 *)((char *)arg0 + 0x24) = 0;
}
void Entity__Deactivate(void *arg0) {
    (*(void(**)(void*, int))((char*)*(void**)arg0 + 0x60))(arg0, 0);
    (*(void(**)(void*))((char*)*(void**)arg0 + 0x16c))(arg0);
    (*(void(**)(void*, int))((char*)*(void**)arg0 + 0x164))(arg0, 0);
    *(s32*)((char*)arg0 + 0xf0) = 0;
}
void Entity__SetAlerted(void *arg0, s32 arg1) {
    if (arg1 != 0) {
        (*(void(**)(void *, s32))((char *)*(void **)arg0 + 0x30))(arg0, 9);
    }
    *(s32 *)((char *)arg0 + 0xf4) = arg1;
}
void Entity__ArmLink(void *arg0) {
    s32 idx = *(s32*)((char*)arg0 + 0x98);
    s32 entry = *(s32*)((char*)gEntityBehaviorTable + idx * 0x10);

    SlotAlloc__Init(*(s32*)((char*)arg0 + 0x58), (s32*)((char*)arg0 + 0x9C), idx + 1, (s32)arg0, entry);
    (*(void(**)(void*))(*(s32*)arg0 + 0x12C))(arg0);
    (*(void(**)(void*))(*(s32*)arg0 + 0x110))(arg0);
    *(s32*)((char*)arg0 + 0xFC) = 0;
    *(s32*)((char*)arg0 + 0xF8) = 1;
}
void Entity__DisarmLink(void *arg0) {
    SlotAlloc__Release(*(s32*)((char*)(arg0) + 0x58), arg0 + 0x9C);
    (*(void(**)())(*(void**)(arg0) + 0x130))(arg0);
    (*(void(**)())(*(void**)(arg0) + 0x114))(arg0);
    *(s32*)((char*)(arg0) + 0xf8) = 0;
};
s32 Entity__TryActivate(void *arg0) {
    s32 var_s2;
    s8 temp_a2;
    s8 temp_v1;
    char *temp_s0;

    if (*(s32*)((char*)(arg0) + 0xf0) == 0) {
        if (*(s32*)((char*)(arg0) + 0x44) != 1) {
            temp_s0 = (char*)&gEntityTypeTable + (*(s32*)((char*)(arg0) + 0x98) * 0x10);
            temp_v1 = *(s8*)(temp_s0 + 0x3);
            var_s2 = 0;
            if (temp_v1 != 0) {
                if (temp_v1 != 4) {
                    temp_a2 = *(s8*)(temp_s0 + 0x5);
                    if (temp_a2 != 0) {
                        if (Entity__IsPlayerInRange(arg0, *(s32*)((char*)(arg0) + 0x14) + 0x18, temp_a2, *(s8*)(temp_s0 + 0x9)) != 0) {
                            temp_v1 = *(s8*)(temp_s0 + 0x3);
                            switch (temp_v1) {
                            case 1:
                                var_s2 = 1;
                                break;
                            case 3:
                                if (!(rand() & 0x7F)) {
                                    var_s2 = 1;
                                }
                                break;
                            }
                        } else if (*(s8*)(temp_s0 + 0x3) == 2) {
                            var_s2 = 1;
                        }
                    }
                } else {
                    if (!(rand() & 0x7F)) {
                        var_s2 = 1;
                    }
                }
            }
            if (var_s2 != 0) {
                (*(void(**)())(*(void**)(arg0) + 0x15c))(arg0);
            }
        }
    }
    return *(s32*)((char*)(arg0) + 0xf0);
}
s32 Entity__UpdateBehavior(void *s0) {
    s8 *s1;
    s32 s2, b, l;

    if (*(s32 *)((char *)s0 + 0xF0) != 0) {
        s1 = (s8 *)&gEntityTypeTable + *(s32 *)((char *)s0 + 0x98) * 0x10;
        Entity__TryStartFlashback(s0, 0);
        s2 = 0;
        b = *(u8 *)(s1 + 4);
        if (b == 0 || b == 3) {
        } else if (b >= 10U) {
            l = *(s32 *)((char *)s0 + 0x24);
            if ((l ^ (b * 15)) == 0) {
                s2 = 1;
            }
        } else {
            if (*(s8 *)(s1 + 5) != 0) {
                if (Entity__IsPlayerInRange(s0, *(s32 *)((char *)s0 + 0x14) + 0x18, *(s8 *)(s1 + 5), *(s8 *)(s1 + 9)) != 0) {
                    if (*(u8 *)(s1 + 4) == 1) {
                        s2 = 1;
                    }
                } else {
                    if (*(u8 *)(s1 + 4) == 2) {
                        s2 = 1;
                    }
                }
            }
        }
        if (s2 != 0) {
            (*(void (**)(void *))(*(s32 *)s0 + 0x160))(s0);
        }
    }
    return *(s32 *)((char *)s0 + 0xF0);
}
s32 Entity__UpdateChase(void *s0) {
    s32 idx;
    s32 a2;
    s32 a1v;
    s8 *tbl;

    idx = *(s32*)((s8*)s0 + 0x98);
    tbl = (s8*)&gEntityTypeTable + idx * 0x10;
    if (*(s32*)((s8*)s0 + 0xF0) == 0) {
        goto end;
    }
    if (*(s32*)((s8*)s0 + 0xF4) == 0) {
        a2 = tbl[0x6];
        a1v = *(s32*)((s8*)s0 + 0x14) + 0x18;
        if (a2 < 0) {
            a2 = ~a2 + 1;
        }
        if (Entity__IsPlayerInRange(s0, a1v, a2, tbl[0x9]) != 0) {
            ((void(**)(void*, s32))*(s32**)s0)[0x59](s0, 1);
        }
    }
    if (tbl[0x6] >= 0) {
        goto end;
    }
    FaceTowards(s0, *(s32*)((s8*)s0 + 0x94), 1, 0, 0);
end:
    return *(s32*)((s8*)s0 + 0xF4);
}
s32 Entity__TryArmLink(void *s0) {
    s32 idx;
    s32 a2;
    s32 a1v;
    s8 *tbl;

    if (*(s32*)((s8*)s0 + 0xF0) == 0) {
        goto end;
    }
    if (*(s32*)((s8*)s0 + 0xF8) != 0) {
        return *(s32*)((s8*)s0 + 0xF8);
    }
    if (*(s32*)((s8*)s0 + 0x44) == 1) {
        goto end;
    }
    idx = *(s32*)((s8*)s0 + 0x98);
    tbl = (s8*)&gEntityTypeTable + idx * 0x10;
    a2 = tbl[0xB];
    if (a2 == 0) {
        goto end;
    }
    a1v = *(s32*)((s8*)s0 + 0x14) + 0x18;
    if (a2 < 0) {
        a2 = ~a2 + 1;
    }
    if (Entity__IsPlayerInRange(s0, a1v, a2, tbl[0x9]) == 0) {
        goto end;
    }
    ((void(**)(void*))*(s32**)s0)[0x5A](s0);
end:
    return *(s32*)((s8*)s0 + 0xF8);
}
void Entity__TryStartFlashback(void *arg0, s32 arg1) {
    s32 idx = *(s32*)((char*)arg0 + 0x98);
    if (*(s8*)(&D_80089EAB + idx * 4) < 0) {
        if (*(s8*)(&D_80089EAC + idx * 4) != 0) {
            s32 a1 = *(s8*)(&D_80089EAC + idx * 4) << 9;
            if (Entity__PlayEventVideo(arg0, a1) != 0) {
                (*(void (**)(void*, s32))(*(s32*)arg0 + 0x30))(arg0, 0xA);
            }
        }
    }
}
s32 Entity__PlayEventVideo(void *arg0, s32 arg1) {
    s32 v0 = 0;
    register s32 a1v __asm__("a1");
    register s32 a2v __asm__("a2");
    register s32 t __asm__("v0");
    s32 v1;
    s32 r;

    a1v = *(s32 *)((char *)arg0 + 0x94);
    a2v = *(s32 *)((char *)*(s32 *)((char *)a1v + 0x14) + 0x1C);
    v1 = *(s32 *)((char *)*(s32 *)((char *)arg0 + 0x14) + 0x1C);
    if (a2v + 0x200 < v1) {
        return 0;
    }
    t = a2v - 0x200;
    if (v1 < t) {
        return 0;
    }
    r = ((s32 (**)(void *))*(s32 **)arg0)[0x51](arg0);
    v0 = r < arg1;
    if (v0 != 0) {
        v0 = 1;
    } else {
        v0 = 0;
    }
    return v0;
}

s32 Entity__UpdateLink(void *s0) {
    s32 idx;
    s32 a2;
    s32 a1v;
    s8 *tbl;

    if (*(s32*)((s8*)s0 + 0xF0) == 0) {
        goto end;
    }
    if (*(s32*)((s8*)s0 + 0xF8) == 0) {
        goto end;
    }
    idx = *(s32*)((s8*)s0 + 0x98);
    tbl = (s8*)&gEntityTypeTable + idx * 0x10;
    a2 = tbl[0xB];
    if (a2 >= 0) {
        goto end;
    }
    a2 = ~a2 + 1;
    a1v = *(s32*)((s8*)s0 + 0x14) + 0x18;
    if (Entity__IsPlayerInRange(s0, a1v, a2, tbl[0x9]) != 0) {
        goto end;
    }
    ((void(**)(void*))*(s32**)s0)[0x5B](s0);
end:
    return *(s32*)((s8*)s0 + 0xF8);
}
void *Get_vtable_Entity(void) {
    return &gVtable_Entity;
};
extern s32 D_80089DA8;
extern s32 D_80089CE8;
extern s32 D_80089CF4;
void EntityBehavior_00(void *a0, void *s1) {
    void *s0 = a0;
    if (*(s32 *)((char *)s1 + 0x4) == 0) {
        if ((*(s32 (**)(void *))(*(s32 *)(*(s32 *)((char *)s0 + 0x94)) + 0x200))(*(void **)((char *)s0 + 0x94)) == 5) {
            *(s32 *)((char *)s0 + 0x44) = 100;
        }
    }
    *(s32 *)((char *)s1 + 0x10) = (*(s32 (**)(void *))(*(s32 *)s0 + 0x148))(s0);
    if (*(s32 *)((char *)s0 + 0x44) == 0) {
        if (*(s32 *)((char *)s1 + 0x4) % 10 == 0) {
            *(s32 *)((char *)s1 + 0x1C) = 5;
            *(s32 *)((char *)s1 + 0x20) = -2;
        }
        if (*(s32 *)((char *)s0 + 0xFC) == 2400) {
            *(s32 *)((char *)s0 + 0xFC) = -1;
        } else if (*(s32 *)((char *)s0 + 0xFC) < 1200) {
            (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0xC4))(s0, 50, 0);
        } else {
            (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0xC4))(s0, -50, 0);
        }
    } else {
        if (*(s32 *)((char *)s0 + 0xFC) < 250) {
            if (*(s32 *)((char *)s1 + 0x4) % 10 == 0) {
                *(s32 *)((char *)s1 + 0x1C) = 5;
                *(s32 *)((char *)s1 + 0x20) = -2;
            }
            if (*(s32 *)((char *)s0 + 0xFC) < 100) {
                (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0xC4))(s0, 50, 0);
            } else if (*(s32 *)((char *)s0 + 0xFC) < 250) {
                (*(void (**)(void *, s32))(*(s32 *)s0 + 0xBC))(s0, (s32)&D_80089DA8);
            }
        } else if (*(s32 *)((char *)s0 + 0xFC) == 250) {
            (*(void (**)(void *))(*(s32 *)s0 + 0x130))(s0);
            *(s32 *)((char *)s1 + 0x1C) = -2;
        } else if ((u32)(*(s32 *)((char *)s0 + 0xFC) - 261) < 307) {
            (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0xC4))(s0, -50, 0);
            (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0x44))(s0, 1, (s32)&D_80089CE8);
        } else if (*(s32 *)((char *)s0 + 0xFC) >= 569) {
            (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0x44))(s0, 1, (s32)&D_80089CF4);
        }
    }
}
void EntityBehavior_ApproachDespawn_5E3C4(void *arg0, void *arg1) {
    void **temp_a0;

    *(s32*)((char*)(arg1) + 0x10) = 0;
    if (*(s32*)((char*)(arg1) + 0x4) == 0) {
        *(s32*)((char*)(arg1) + 0x1c) = 0x14;
        *(s32*)((char*)(arg1) + 0x30) = 0x14;
        *(s32*)((char*)(arg1) + 0x44) = 0x14;
        temp_a0 = *(s32*)((char*)(arg0) + 0x94);
        (*(void(**)())(*(void**)(temp_a0) + 0x130))(temp_a0, 1);
    }
    FaceTowards(arg0, *(s32*)((char*)(arg0) + 0x94), 1, 0, 0);
    (*(void(**)())(*(void**)(arg0) + 0xc4))(arg0, -0x5A, 0);
    if (*(s32*)((char*)(arg0) + 0xfc) == 0x1E) {
        (*(void(**)())(*(void**)(arg0) + 0x30))(arg0, 0xA);
    }
}
void EntityBehavior_PeriodicAnim_5E480(void **arg0, void *arg1) {
    *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))();
    if (*(s32*)((char*)(arg1) + 0x4) == 0) {
        *(s32*)((char*)(arg1) + 0x1c) = 0x17;
    }
};
void func_8005E4D0(void *arg0, void *arg1) {
    register s32 cv __asm__("v0");
    register s32 cmp __asm__("v1");
    s32 v0;
    s32 v1;

    v0 = ((s32 (**)(void *))*(s32 **)arg0)[0x52](arg0);
    *(s32 *)((char *)arg1 + 0x10) = v0;
    cv = *(s32 *)((char *)arg0 + 0x80);
    cv = cv + (s32)((u32)cv >> 31);
    cmp = *(s32 *)((char *)arg0 + 0x84);
    cv = cv >> 1;
    if (cmp == cv) {
        *(s32 *)((char *)arg1 + 0x1C) = 7;
        *(s32 *)((char *)arg1 + 0x20) = -2;
        *(s32 *)((char *)arg1 + 0x30) = 3;
        *(s32 *)((char *)arg1 + 0x34) = -2;
    }
    if (*(s32 *)((char *)arg1 + 0x4) % 90 < 3) {
        *(s32 *)((char *)arg1 + 0x44) = 6;
        *(s32 *)((char *)arg1 + 0x48) = -1;
    }
    v1 = *(s32 *)((char *)arg0 + 0xFC);
    if (v1 < 0x79) {
        goto L5D4;
    }
    ((void (**)(void *, s32, void *))*(s32 **)arg0)[0x11](arg0, 0, &D_80089CA0);
    ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x31](arg0, -0x140, 0);
    goto L67C;
L5D4:
    if (v1 >= 0x38) {
        goto L5F8;
    }
    if (Entity__IsPlayerInRange(arg0, *(s32 *)((char *)arg0 + 0x14) + 0x18, 1, 1) == 0) {
        goto L61C;
    }
L5F8:
    ((void (**)(void *, void *))*(s32 **)arg0)[0x2F](arg0, &D_80089D78);
    goto L67C;
L61C:
    if (*(s32 *)((char *)arg0 + 0xFC) < 0xA) {
        goto L668;
    }
    FaceTowards(arg0, *(s32 *)((char *)arg0 + 0x94), 1, 0, 0);
    ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x31](arg0, -0x100, 0);
    goto L67C;
L668:
    FaceTowards(arg0, *(s32 *)((char *)arg0 + 0x94), 1, 0, 0);
L67C:
    return;
}

void EntityBehavior_PlaySfx_5E694(void **arg0) {
    (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089DF0);
    (*(void(**)())(*(void**)(arg0) + 0xbc))(arg0, &D_80089D78);
}
void func_8005E6F0(void *arg0, void *arg1) {
    register s32 dv __asm__("v0");
    register s32 dd __asm__("v1");
    register s32 rem __asm__("v0");
    s32 v0;

    v0 = ((s32 (**)(void *))*(s32 **)arg0)[0x52](arg0);
    *(s32 *)((char *)arg1 + 0x10) = v0;
    dv = *(s32 *)((char *)arg0 + 0x80);
    dv = dv + (s32)((u32)dv >> 31);
    dd = *(s32 *)((char *)arg1 + 0x4);
    dv = dv >> 1;
    rem = dd % dv;
    if (rem != 0) {
        goto L778;
    }
    *(s32 *)((char *)arg1 + 0x1C) = 0xA;
L778:
    ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x31](arg0, -30, 0);
}

void func_8005E7A8(void **arg0, void *arg1) {
    *(s32*)((char*)(arg1) + 0x10) = 0;
    if (*(s32*)((char*)(arg1) + 0x4) == 0) {
        *(s32*)((char*)(arg1) + 0x1c) = 0xB;
        *(s32*)((char*)(arg1) + 0x30) = 0xB;
        *(s32*)((char*)(arg1) + 0x44) = 0xB;
    }
    (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xc4))(arg0, -0x1E, 0);
}
void func_8005E7F8(void *arg0, void *arg1) {
    register s32 dv __asm__("v0");
    register s32 dd __asm__("v1");
    s32 v0;
    s32 v1;
    s32 a0;
    register s32 r __asm__("v0");
    s32 *s2v = 0;

    *(s16 *)((char *)arg0 + 0x48) = -0x14;
    *(s32 *)((char *)arg1 + 0x10) = ((s32 (**)(void *))*(s32 **)arg0)[0x52](arg0);
    dv = *(s32 *)((char *)arg0 + 0x80);
    dv = dv + (s32)((u32)dv >> 31);
    dd = *(s32 *)((char *)arg1 + 0x4);
    dv = dv >> 1;
    r = dd % dv;
    if (r == 0) {
        *(s32 *)((char *)arg1 + 0x1C) = 0xA;
        *(s32 *)((char *)arg1 + 0x20) = 1;
    }
    v1 = *(s32 *)((char *)arg0 + 0x44);
    if (v1 == 0xB) {
        v1 = *(s32 *)((char *)arg0 + 0xFC);
        if (v1 == 0xA8C) {
            s2v = &D_80089C94;
        }
        if (v1 == 0xC6C) {
            s2v = &D_80089C88;
        }
        if (v1 == 0xE10) {
            s2v = &D_80089C94;
        }
        if ((u32)(v1 - 0xD5D) < 0x78) {
            a0 = *(s32 *)((char *)arg0 + 0x94);
            if (((s32 (**)(void *))*(s32 **)a0)[0x40](a0) != 0) {
                *(s32 *)((char *)arg0 + 0xFC) = 0;
                *(s32 *)((char *)arg0 + 0x44) = 0xD;
            }
        }
        goto L9C0;
    }
    if (v1 == 0xC) {
        v1 = *(s32 *)((char *)arg0 + 0xFC);
        if (v1 == 0x7BC) {
            s2v = &D_80089C94;
        }
        v0 = 0x618;
        goto L9C8;
    }
    if (v1 == 0xD) {
        *(s16 *)((char *)arg0 + 0x48) = -0x78;
        FaceTowards(arg0, *(s32 *)((char *)arg0 + 0x94), 1, 0, 0);
        ((void (**)(void *, s32, void *))*(s32 **)arg0)[0x12](arg0, 1, &D_80089DD8);
        v0 = ((s32 (**)(void *, s32))*(s32 **)arg0)[0x51](arg0, *(s32 *)((char *)arg0 + 0x94));
        if (v0 < 0x400) {
            ((void (**)(void *, s32))*(s32 **)arg0)[0xC](arg0, 0xB);
        }
    }
L9C0:
    v1 = *(s32 *)((char *)arg0 + 0xFC);
    v0 = 0x618;
L9C8:
    if (v1 == v0) {
        v0 = rand();
        if ((v0 & 1) != 0) {
            s2v = &D_80089C88;
            *(s32 *)((char *)arg0 + 0x44) = 0xB;
            goto LA04;
        }
        s2v = &D_80089C94;
        *(s32 *)((char *)arg0 + 0x44) = 0xC;
    }
LA04:
    if (s2v != 0) {
        ((void (**)(void *, s32, void *))*(s32 **)arg0)[0x11](arg0, 0, s2v);
    }
    ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x34](arg0, *(s16 *)((char *)arg0 + 0x48), 0);
    if (*(s32 *)((char *)arg0 + 0x44) != 0xC) {
        if (*(s32 *)((char *)arg0 + 0x28) != 0) {
            ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x33](arg0, -0xC8, 0);
        }
    }
}

void func_8005EA94(void *s0) {
    if (*(s32 *)((char *)s0 + 0xFC) == 0 && (rand() & 1) == 0) {
        *(s32 *)((char *)s0 + 0x44) = 11;
    }
    if (*(s32 *)((char *)*(s32 *)((char *)s0 + 0x14) + 0x1C) < 2000) {
        FaceTowards(s0, (void **)*(s32 *)((char *)s0 + 0x94), 1, 0, 0);
    }
    if (*(s32 *)((char *)s0 + 0x44) == 11) {
        if ((*(s32 (**)(void *, void *))(*(s32 *)s0 + 0x144))(s0, *(void **)((char *)s0 + 0x94)) < 2560) {
            (*(void (**)(void *, s32, s32))(*(s32 *)(*(s32 *)((char *)s0 + 0x4C)) + 0x138))(*(void **)((char *)s0 + 0x4C), 1, 1);
            *(s32 *)((char *)s0 + 0xFC) = 1;
            *(s32 *)((char *)s0 + 0x44) = 12;
        }
    } else if (*(s32 *)((char *)s0 + 0x44) == 12) {
        s32 v0 = *(s32 *)((char *)s0 + 0xFC);
        *(s32 *)((char *)s0 + 0xFC) = v0 + 1;
        if (v0 == 300) {
            (*(void (**)(void *, s32))(*(s32 *)s0 + 0x30))(s0, 12);
        }
    }
}
void EntityBehavior_HopWander(void *arg0, s32 *arg1) {
    s32 ret = (*(s32(**)(void*))(*(s32*)arg0 + 0x148))(arg0);
    arg1[0x10 / 4] = ret;
    if (arg1[1] == 0) {
        arg1[0x1C / 4] = 0xC;
        *(s32*)((char*)arg0 + 0x44) += 1;
    } else {
        s32 v0 = *(s32*)((char*)arg0 + 0x80) - 1;
        if (arg1[1] >= v0) {
            arg1[1] = -1;
        }
    }
    if (*(s32*)((char*)arg0 + 0x44) == 0x24) {
        s32 r = rand();
        if (r - (r / 3) * 3 == 0) {
            (*(void(**)(void*, s32))(*(s32*)arg0 + 0x30))(arg0, 0xB);
        }
    }
}
void EntityBehavior_PeriodicAnim_5EC98(void *arg0, void *arg1) {
    *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))();
    if (*(s32*)((char*)(arg0) + 0x84) == 0xA) {
        *(s32*)((char*)(arg1) + 0x1c) = 0xD;
    }
    (*(void(**)())(*(void**)(arg0) + 0xc4))(arg0, -0xA, 0);
};
void func_8005ED10(void *arg0, void *arg1) {
    if (*(s32*)((char*)(arg0) + 0xfc) == 0) {
        *(s32*)((char*)(arg1) + 0x10) = 0;
        *(s32*)((char*)(arg1) + 0x1c) = 0xF;
    }
}
extern s32 D_80089D3C;
void func_8005ED30(void *s0) {
    if (*(s32 *)((char *)s0 + 0xFC) == 0 && (rand() & 1) != 0) {
        *(s32 *)((char *)s0 + 0x44) = 11;
    }
    if (*(s32 *)((char *)s0 + 0x44) == 0) {
        s32 v1 = *(s32 *)((char *)s0 + 0xFC);
        if (v1 < 64) {
            (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0xC4))(s0, -90, 0);
        } else if (v1 == 64) {
            (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0x44))(s0, 0, (rand() & 1) ? (s32)&D_80089C88 : (s32)&D_80089C94);
            (*(void (**)(void *, s32))(*(s32 *)s0 + 0xBC))(s0, (s32)&D_80089D3C);
        } else {
            (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0xD0))(s0, -374, rand() % 2);
        }
    } else if (*(s32 *)((char *)s0 + 0x44) == 11) {
        if (*(s32 *)((char *)s0 + 0xFC) % 5 == 0) {
            (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0x44))(s0, 0, (s32)&D_80089C88);
        }
        (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0xC4))(s0, -2048, 0);
        (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0x60))(s0, rand() % 7 < 1U);
    }
}
void EntityBehavior_PlaySfx_5EF20(void **arg0) {
    (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089DD8);
}
void EntityBehavior_PeriodicAnim_5EF54(void **arg0, void *arg1) {
    *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))();
    if (*(s32*)((char*)(arg1) + 0x4) == ((*(s32*)((char*)(arg1) + 0x4) / 10) * 0xA)) {
        *(s32*)((char*)(arg1) + 0x1c) = 0x11;
    }
    (*(void(**)())(*(void**)(arg0) + 0xc4))(arg0, -0x100, 0);
};
void EntityBehavior_FleeFast_5EFF4(void **arg0, void *arg1) {
    s32 temp_ret;

    if (*(s32*)((char*)(arg0) + 0xfc) == 0) {
        temp_ret = rand();
        if (temp_ret == ((temp_ret / 7) * 7)) {
            (*(void(**)())(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089E50);
        }
    }
    if (!(*(s32*)((char*)(arg1) + 0x4) & 3)) {
        *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))(arg0);
        *(s32*)((char*)(arg1) + 0x1c) = 0x1C;
    }
    (*(void(**)())(*(void**)(arg0) + 0xc4))(arg0, -0x64, 0);
};
void EntityBehavior_PeriodicAnim_5F0D8(void **arg0, void *arg1) {
    s32 temp_hi;
    u32 temp_v0;

    *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))();
    temp_v0 = *(s32*)((char*)(arg0) + 0x80);
    temp_hi = (s32) *(s32*)((char*)(arg1) + 0x4) % (s32) ((s32) (temp_v0 + (temp_v0 >> 0x1F)) >> 1);
    if (temp_hi == 0) {
        *(s32*)((char*)(arg1) + 0x1c) = 0xA;
    } else if (temp_hi == 3) {
        *(s32*)((char*)(arg1) + 0x30) = 0xD;
    }
    (*(void(**)())(*(void**)(arg0) + 0xc4))(arg0, -0x1E, 1);
};
void func_8005F1A8(void *arg0) {
    FaceTowards(arg0, *(s32*)((char*)(arg0) + 0x94), 1, 0, 0);
}
extern s32 D_80089D9C;
extern s32 D_80089D48;
extern s32 D_80089D60;
void func_8005F1D4(void *s0) {
    FaceTowards(s0, (void **)*(s32 *)((char *)s0 + 0x94), 1, 0, 0);
    if (*(s32 *)((char *)s0 + 0xF4) != 0) {
        if (*(s32 *)((char *)s0 + 0xFC) >= 65) {
            *(s32 *)((char *)s0 + 0xFC) = 0;
        }
        if (*(s32 *)((char *)s0 + 0xFC) >= 7) {
            (*(void (**)(void *, s32))(*(s32 *)s0 + 0xBC))(s0, (s32)&D_80089D78);
            (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0xC4))(s0, 10, 0);
        } else {
            (*(void (**)(void *, s32))(*(s32 *)s0 + 0xBC))(s0, (s32)&D_80089D9C);
        }
    } else {
        s32 v1 = *(s32 *)((char *)s0 + 0xFC);
        if (v1 == 0) {
            (*(void (**)(void *, s32))(*(s32 *)s0 + 0xBC))(s0, (s32)&D_80089D48);
        } else if (v1 < 65) {
            (*(void (**)(void *, s32))(*(s32 *)s0 + 0xBC))(s0, (s32)&D_80089D60);
        } else if (v1 < 71) {
            (*(void (**)(void *, s32))(*(s32 *)s0 + 0xBC))(s0, (s32)&D_80089D78);
            (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0xC4))(s0, -30, 0);
        } else {
            void *vt = *(void **)((char *)s0 + 0);
            s32 a1 = (v1 < 256) ? (-v1 - 65) : 255;
            (*(void (**)(void *, s32, s32))((char *)vt + 0xC4))(s0, a1, 0);
        }
    }
}
void EntityBehavior_FleeFast_5F368(void **arg0, void *arg1) {
    if (*(s32*)((char*)(arg1) + 0x4) == ((*(s32*)((char*)(arg1) + 0x4) / 15) * 0xF)) {
        *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))(arg0);
        *(s32*)((char*)(arg1) + 0x1c) = 7;
        *(s32*)((char*)(arg1) + 0x20) = -2;
    }
    (*(void(**)())(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089DF0);
    (*(void(**)())(*(void**)(arg0) + 0x44))(arg0, 0, &D_80089CA0);
    (*(void(**)())(*(void**)(arg0) + 0xc4))(arg0, -0x200, 0);
};
void EntityBehavior_AccelDecel_5F454(void *arg0, void *arg1) {
    s32 a0;
    s32 q;
    s32 v1;

    *(s32*)((char*)(arg1) + 0x10) = 0;
    v1 = *(s32*)((char*)(arg0) + 0xfc);
    if (v1 < 0x64) {
        a0 = *(s32*)((char*)(arg1) + 0x4);
        q = a0 / 3;
        if (a0 == q * 3) {
            *(s32*)((char*)(arg1) + 0x1c) = 0x16;
            *(s32*)((char*)(arg1) + 0x20) = 1;
        }
        (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xcc))(arg0, -0x40, 0);
    } else if (v1 < 0x12c) {
        *(s32*)((char*)(arg1) + 0x1c) = 0xc;
        *(s32*)((char*)(arg1) + 0x20) = -1;
        *(s32*)((char*)(arg1) + 0x30) = 0xc;
        *(s32*)((char*)(arg1) + 0x34) = -1;
        *(s32*)((char*)(arg1) + 0x44) = 0xc;
        *(s32*)((char*)(arg1) + 0x48) = -1;
        (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xcc))(arg0, -0x100, 0);
    } else {
        (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0x44))(arg0, 0, &D_80089C58);
        (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xcc))(arg0, -0x200, 0);
    }
}
void func_8005F544(void *arg0, void *arg1) {
    s32 a1v;
    void **vt;

    if (*(s32*)((char*)(arg1) + 0x4) % *(s32*)((char*)(arg0) + 0x80) == 0) {
        *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))(arg0);
        *(s32*)((char*)(arg1) + 0x1C) = 0x1A;
    }
    vt = *(void**)arg0;
    if (*(s32*)((char*)(arg0) + 0xFC) == 0x6E) {
        a1v = -0x2D00;
    } else {
        a1v = -0x180;
    }
    (*(void(**)(void*, s32, s32))((char*)vt + 0xd0))(arg0, a1v, 0);
}
void EntityBehavior_AccelDecel_5F608(void *arg0, void *arg1) {
    s32 a0;
    s32 q;
    s32 v1;

    a0 = *(s32*)((char*)(arg1) + 0x4);
    q = a0 / 0x46;
    if (a0 == q * 0x46) {
        *(s32*)((char*)(arg1) + 0x10) = 0;
        *(s32*)((char*)(arg1) + 0x1C) = 0x1B;
    }
    (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xc4))(arg0, -0x80, 0);
    v1 = *(s32*)((char*)(arg0) + 0xfc);
    if (v1 < 0x64) {
        (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xcc))(arg0, 0x20, 0);
    } else if (v1 >= 0x12D) {
        (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xcc))(arg0, -0x20, 0);
    }
}
void EntityBehavior_PlaySfx_5F6D4(void **arg0) {
    (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089E38);
}
void EntityBehavior_PlayerStateReact_5F708(void *arg0) {
    void **temp_a0;

    if (*(s32*)((char*)(arg0) + 0xfc) == 0) {
        temp_a0 = *(s32*)((char*)(arg0) + 0x94);
        if ((*(s32(**)())(*(void**)(temp_a0) + 0x200))(temp_a0) == 7) {
            (*(void(**)())(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089E74);
            (*(void(**)())(*(void**)(arg0) + 0xcc))(arg0, -0x7800, 0);
        }
        *(s32*)((char*)(arg0) + 0x44) = (s32) (rand() % 5);
    }
    if (*(s32*)((char*)(arg0) + 0x44) == 0) {
        (*(void(**)())(*(void**)(arg0) + 0x44))(arg0, 0, &D_80089D18);
    }
};
void EntityBehavior_PlayerStateReact_5F800(void *arg0) {
    if (*(s32*)((char*)(arg0) + 0x44) == 0) {
        if ((*(s32(**)())(*(void**)(*(s32*)((char*)(arg0) + 0x94)) + 0x200))(*(s32*)((char*)(arg0) + 0x94)) == 1) {
            *(s32*)((char*)(arg0) + 0x44) = 0xb;
        } else {
            *(s32*)((char*)(arg0) + 0x44) = 0xc;
        }
    }
    if (*(s32*)((char*)(arg0) + 0x44) == 0xc) {
        (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089DF0);
        (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xcc))(arg0, -0x1e, 0);
    } else {
        FaceTowards(arg0, *(s32*)((char*)(arg0) + 0x94), 1, 0, 0);
        if (*(s32*)((char*)(arg0) + 0x44) == 0xb) {
            (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xc4))(arg0, -0x64, 0);
            if ((u32)(*(s32*)((char*)(arg0) + 0xFC) - 0x55) < 0x1e) {
                (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xcc))(arg0, 0x50, 0);
            } else if (*(s32*)((char*)(arg0) + 0xFC) == 0x78) {
                *(s32*)((char*)(arg0) + 0x44) = 0xd;
            }
        } else if (*(s32*)((char*)(arg0) + 0x44) == 0xd) {
            (*(void(**)(void*, s32))(*(void**)(arg0) + 0xb8))(arg0, *(s32*)((char*)*(s32*)((char*)(arg0) + 0x94) + 0x14) + 0x18);
            (*(void(**)(void*, s32))(*(void**)(arg0) + 0xbc))(arg0, &D_80089DB4);
        }
    }
}
void EntityBehavior_ApproachDespawn_5F970(void *arg0, void *arg1) {
    void **temp_a0;

    FaceTowards(arg0, *(s32*)((char*)(arg0) + 0x94), 1, 0, 0);
    temp_a0 = *(void***)((char*)(arg0) + 0x94);
    (*(void(**)())(*(void**)(temp_a0) + 0x130))(temp_a0, 1);
    if ((*(s32*)((char*)(arg1) + 0x4) % 10) < 3) {
        *(s32*)((char*)(arg1) + 0x10) = 0;
        *(s32*)((char*)(arg1) + 0x1c) = 0xD;
        *(s32*)((char*)(arg1) + 0x30) = 0xD;
        *(s32*)((char*)(arg1) + 0x44) = 0xD;
    }
    if (*(s32*)((char*)(arg0) + 0xfc) == *(s32*)((char*)(arg0) + 0x80)) {
        (*(void(**)())(*(void**)(arg0) + 0x130))(arg0);
        (*(void(**)())(*(void**)(arg0) + 0x30))(arg0, 0xA);
    }
}
void func_8005FA64(void **arg0) {
    (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xc4))(arg0, -0x1E, 0);
}
void EntityBehavior_WanderSfx_5FA94(void *arg0, void *arg1) {
    if (*(s32*)((char*)(arg0) + 0xf4) != 0) {
        (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089DCC);
    } else if (*(s32*)((char*)(arg1) + 0x4) == (*(s32*)((char*)(arg1) + 0x4) / 30) * 30) {
        *(s32*)((char*)(arg1) + 0x10) = 0;
        *(s32*)((char*)(arg1) + 0x1c) = 3;
    }
    (*(void(**)())(*(void**)(arg0) + 0xd0))(arg0, -0x1E, 0);
    if (*(s32*)((char*)(arg0) + 0x28) != 0) {
        (*(void(**)())(*(void**)(arg0) + 0xcc))(arg0, -0xC8, 0);
    }
}
void EntityBehavior_ScriptedPath_5FB6C(void *arg0) {
    s32 v1;
    s32 a1v;
    void **vt;

    v1 = *(s32*)((char*)(arg0) + 0xFC);
    if ((u32)(v1 - 0x190) < 0xA) {
        (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x44))(arg0, 0, &D_80089C64);
    } else if ((u32)(v1 - 0x2BC) < 0xA || (u32)(v1 - 0x33E) < 0x4) {
        (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x44))(arg0, 0, &D_80089C70);
    } else if (v1 >= 0x353) {
        (*(void(**)(void*))(*(void**)(arg0) + 0x160))(arg0);
    }
    vt = *(void**)arg0;
    if (*(s32*)((char*)(arg0) + 0xFC) < 0x320) {
        a1v = -0x3C;
    } else {
        a1v = -0x200;
    }
    (*(void(**)(void*, s32, s32))((char*)vt + 0xc4))(arg0, a1v, 1);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/Entity", func_8005FC58);

void EntityBehavior_SpawnSubObject_5FDFC(void *arg0) {
    if (*(s32*)((char*)arg0 + 0x44) == 0) {
        s32 r = rand();
        s32 a2 = (s32)&D_80089E38;

        if (r & 1) {
            a2 = (s32)&D_80089DF0;
        }
        ((void(**)(void*, s32, s32))*(s32**)arg0)[0x12](arg0, 1, a2);
        *(s32*)((char*)arg0 + 0x44) = 0xB;
    }
    FaceTowards(arg0, *(s32*)((char*)arg0 + 0x94), 1, 0, 0);
    {
        s32 r = ((s32(**)(void*, s32))*(s32**)arg0)[0x51](arg0, *(s32*)((char*)arg0 + 0x94));

        if (r < 0x7000) {
            ((void(**)(void*, s32, s32))*(s32**)arg0)[0x31](arg0, 0x100, 0);
        }
    }
}
void func_8005FEC8(void **arg0) {
    (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xcc))(arg0, -0x5A, 0);
}
void EntityBehavior_PeriodicAnim_5FEF8(void **arg0, void *arg1) {
    if (*(s32*)((char*)(arg1) + 0x4) == (*(s32*)((char*)(arg1) + 0x4) / 120) * 120) {
        *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)(void*))(*(void**)(arg0) + 0x148))(arg0);
        *(s32*)((char*)(arg1) + 0x1c) = 1;
    }
}
void func_8005FF7C(void *arg0, void *arg1) {
    s32 r1;
    s32 r2;
    s32 rem;

    if (*(s32*)((char*)(arg0) + 0xFC) == 0) {
        r1 = (*(s32(**)(void*, s32))(*(void**)(*(s32*)((char*)(arg0) + 0x94)) + 0x1a0))(*(s32*)((char*)(arg0) + 0x94), 0);
        rem = r1 % 3;
        if (rem == 0) {
            r2 = rand();
            if (r2 % 3 == 0) {
                (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089E5C);
            }
        } else if (rem == 2) {
            (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089E5C);
        }
    }
    if (*(s32*)((char*)(arg1) + 0x4) % 22 == 0) {
        *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))(arg0);
        *(s32*)((char*)(arg1) + 0x1C) = 2;
    }
    if (rand() % 12 == 0) {
        (*(void(**)(void*))(*(void**)(arg0) + 0x130))(arg0);
    } else if (rand() % 6 == 0) {
        (*(void(**)(void*))(*(void**)(arg0) + 0x12c))(arg0);
    }
}
void EntityBehavior_WanderSfx_60148(void *arg0, void *arg1) {
    s32 v1;
    void **s2;

    s2 = 0;
    if (*(s32*)((char*)(arg1) + 0x4) % 7 == 0) {
        *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))(arg0);
        *(s32*)((char*)(arg1) + 0x1C) = 3;
        *(s32*)((char*)(arg1) + 0x24) = 0x40;
        *(s32*)((char*)(arg1) + 0x28) = 0x40;
    }
    v1 = *(s32*)((char*)(arg0) + 0xFC);
    if (v1 == 0xC8) {
        s2 = (void**)&D_80089C94;
    } else if (v1 == 0x190) {
        s2 = (void**)&D_80089C7C;
    } else if (v1 == 0x258) {
        s2 = (void**)&D_80089C88;
    } else if (v1 == 0x320) {
        s2 = (void**)&D_80089C7C;
        *(s32*)((char*)(arg0) + 0xFC) = -1;
    }
    if (s2 != 0) {
        (*(void(**)(void*, s32, void**))(*(void**)(arg0) + 0x44))(arg0, 0, s2);
    }
    (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xd0))(arg0, -0x1e, 0);
    if (*(s32*)((char*)(arg0) + 0x28) != 0) {
        (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xcc))(arg0, -0xc8, 0);
    }
}
void EntityBehavior_MutateTypeRow(void *arg0, void *arg1) {
    s32 a0;
    s32 v1;

    if (*(s32*)((char*)(arg0) + 0xFC) == 0) {
        *(s32*)((char*)(arg0) + 0x44) = rand() % 5 + 10;
    }
    a0 = *(s32*)((char*)(arg0) + 0x44);
    if (a0 < 0xE || (v1 = *(s32*)((char*)(arg0) + 0xFC)) < 0x140) {
        EntityBehavior_OrbitHelper(arg0, arg1, 0xBB8, 0x1F4, -0x100);
    } else if (a0 == 0xE && (v1 & 3) == 0) {
        v1 = rand();
        *(u16*)&D_80089EA2 = (u16)(v1 - (v1 / 32) * 32 + 1);
        (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x48))(arg0, 1, (char*)&D_80089EA2 - 0xA);
    }
}
void EntityBehavior_Swing(void *arg0, void *arg1) {
    s32 temp_a0;
    s32 var_v0;

    temp_a0 = *(s32*)((char*)(arg0) + 0xfc);
    if (temp_a0 < 0x14) {
        (*(void(**)())(*(void**)(arg0) + 0x130))(arg0);
        (*(void(**)())(*(void**)(arg0) + 0xc4))(arg0, -0x1E, 0);
        return;
    }
    if (temp_a0 == 0x14) {
        (*(void(**)())(*(void**)(arg0) + 0x12c))(arg0);
        var_v0 = 5;
        *(s32*)((char*)(arg1) + 0x10) = 0;
        goto block_6;
    }
    if ((temp_a0 % (s32) ((*(s32*)((char*)(arg0) + 0x80) * 3) + 0x14)) == 0) {
        (*(void(**)())(*(void**)(arg0) + 0x130))(arg0);
        var_v0 = -2;
block_6:
        *(s32*)((char*)(arg1) + 0x1c) = var_v0;
    }
};
void EntityBehavior_FlyWander_604DC(void *arg0, s32 *arg1) {
    EntityBehavior_RandomSfxHelper(arg0);
    arg1[0x10 / 4] = (*(s32(**)(void*))(*(s32*)arg0 + 0x148))(arg0);
    if (*(s32*)((char*)arg0 + 0x84) == 0 || *(s32*)((char*)arg0 + 0x84) == 0xF) {
        arg1[0x1C / 4] = 0x12;
        arg1[0x30 / 4] = 0x12;
    }
    if (*(s32*)((char*)arg0 + 0xFC) >= 0x141) {
        s32 a1 = (rand() & 1) ? -0x3C : 0x3C;
        (*(void(**)(void*, s32, s32))(*(s32*)arg0 + 0xC8))(arg0, a1, 0);
        {
            s32 a2;
            if ((rand() & 3) != 0) {
                a2 = (s32)&D_80089C70;
            } else {
                a2 = (s32)&D_80089C64;
            }
            (*(void(**)(void*, s32, s32))(*(s32*)arg0 + 0x44))(arg0, 0, a2);
        }
    }
}
void EntityBehavior_FlyWander_605D0(void *arg0, void *arg1) {
    s32 v1;
    s32 a1v;
    void **a2v;

    EntityBehavior_RandomSfxHelper(arg0);
    *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))(arg0);
    v1 = *(s32*)((char*)(arg0) + 0x84);
    if (v1 == 7 || v1 == 0x16) {
        *(s32*)((char*)(arg1) + 0x1C) = 3;
    }
    v1 = *(s32*)((char*)(arg0) + 0xFC);
    if ((u32)(v1 - 0x12C) < 0x14) {
        (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xc4))(arg0, -0x3C, 0);
    } else if ((u32)(v1 - 0x141) < 0x13) {
        (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x44))(arg0, 0, &D_80089C70);
    } else if (v1 >= 0x141) {
        if (rand() & 1) {
            a1v = 0x80;
        } else {
            a1v = -0x80;
        }
        (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xc8))(arg0, a1v, 1);
        if (rand() & 3) {
            a2v = (void**)&D_80089C70;
        } else {
            a2v = (void**)&D_80089C64;
        }
        (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x44))(arg0, 0, a2v);
    }
}
void EntityBehavior_RandomSfxHelper(void *arg0) {
    s32 temp_a0;

    if (*(s32*)((char*)(arg0) + 0xfc) == 0) {
        temp_a0 = rand() % 10;
        if (temp_a0 >= 8) {
            (*(void(**)())(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089E8C);
        } else if (temp_a0 >= 5) {
            *(s32*)((char*)(arg0) + 0x44) = 0xA;
        }
    }
    if ((*(s32*)((char*)(arg0) + 0x44) == 0xA) && (*(s32*)((char*)(arg0) + 0xfc) >= 0xC9)) {
        (*(void(**)())(*(void**)(arg0) + 0xbc))(arg0, &D_80089DC0);
    }
};
void EntityBehavior_Nop(void) {
}
void EntityBehavior_AmbientIdle_60800(void *arg0, void *arg1) {
    void **temp_a0;

    if (*(s32*)((char*)(arg0) + 0xfc) == 0) {
        s32 r;
        temp_a0 = *(void***)((char*)(arg0) + 0x94);
        r = (*(s32(**)())(*(void**)(temp_a0) + 0x1a0))(temp_a0, 0) % 3;
        if (r == 0) {
            s32 rr = rand();
            s32 qq = rr / 3;
            if (rr == qq * 3) {
                (*(void(**)())(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089E38);
            }
        } else if (r == 1) {
            (*(void(**)())(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089E38);
        }
    }
    if (*(s32*)((char*)(arg1) + 0x4) == 0) {
        *(s32*)((char*)(arg1) + 0x10) = 0;
        *(s32*)((char*)(arg1) + 0x1c) = 0x12;
    }
    FaceTowards(arg0, *(s32*)((char*)(arg0) + 0x94), 1, 0, 0);
}
void EntityBehavior_OnPlayerClose_6090C(void *arg0) {
    s32 temp_v1;
    void **temp_a0;

    if (*(s32 *)((char *)arg0 + 0xf4) != 0) {
        temp_v1 = *(s32 *)((char *)arg0 + 0x44);
        if (temp_v1 == 0) {
            *(s32 *)((char *)arg0 + 0x44) = 0xC;
            *(s32 *)((char *)arg0 + 0xfc) = 0;
        } else if (temp_v1 == 0xC) {
            if (*(s32 *)((char *)arg0 + 0xfc) < 0x1E) {
                temp_a0 = *(void ***)((char *)arg0 + 0x94);
                if ((*(s32 (**)())(*(void **)temp_a0 + 0x100))(temp_a0) != 0) {
                    temp_a0 = *(void ***)((char *)arg0 + 0x94);
                    (*(void (**)())(*(void **)temp_a0 + 0x130))(temp_a0, 0);
                    *(s32 *)((char *)arg0 + 0xfc) = 0;
                    *(s32 *)((char *)arg0 + 0x44) = 0xB;
                }
            } else {
                (*(void (**)())(*(void **)arg0 + 0x30))(arg0, 0xB);
                *(s32 *)((char *)arg0 + 0x44) = 0xA;
            }
        } else if (temp_v1 == 0xB) {
            if (*(s32 *)((char *)arg0 + 0xfc) == 0x64) {
                (*(void (**)())(*(void **)arg0 + 0x30))(arg0, 0xC);
            } else {
                temp_a0 = *(void ***)((char *)arg0 + 0x94);
                (*(void (**)())(*(void **)temp_a0 + 0xcc))(temp_a0, -0x64, 0);
            }
        }
    }
}
void EntityBehavior_JitterMove_60A4C(void *arg0, void *arg1) {
    s32 a0;
    s32 a1v;
    void **vt;

    if (*(s32*)((char*)arg0 + 0x84) == 0x26) {
        FaceTowards(arg0, *(s32*)((char*)arg0 + 0x94), 1, 0, 0);
        *(s32*)((char*)arg1 + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))(arg0);
        *(s32*)((char*)arg1 + 0x1C) = 6;
    }
    a0 = *(s32*)((char*)arg0 + 0xFC);
    vt = *(void**)arg0;
    if ((a0 % 10) < 5) {
        a1v = -0x1E;
    } else {
        a1v = 0x1E;
    }
    (*(void(**)(void*, s32, s32))((char*)vt + 0xcc))(arg0, a1v, 0);
    (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xc4))(arg0, -0x1E, 1);
}
void EntityBehavior_OnPlayerClose_60B34(void *arg0, void *arg1) {
    s32 v1;
    s32 a1v;
    void **a2v;

    v1 = *(s32*)((char*)arg1 + 0x4);
    if (v1 == 6) {
        *(s32*)((char*)arg1 + 0x10) = 0;
        *(s32*)((char*)arg1 + 0x1C) = 4;
        *(s32*)((char*)arg1 + 0x30) = 4;
        *(s32*)((char*)arg1 + 0x44) = 4;
    }
    if (*(s32*)((char*)arg0 + 0xF4) != 0) {
        v1 = *(s32*)((char*)arg0 + 0x44);
        if (v1 == 0) {
            *(s32*)((char*)arg0 + 0x44) = 0xA;
            *(s32*)((char*)arg0 + 0xFC) = 0;
        } else if (v1 == 0xA) {
            if (*(s32*)((char*)arg0 + 0xFC) == 0xA) {
                (*(void(**)(void*, s32))(*(void**)(arg0) + 0x30))(arg0, 0xA);
            } else if ((*(s32(**)())(*(void**)(*(s32*)((char*)arg0 + 0x94)) + 0x100))(*(s32*)((char*)arg0 + 0x94)) != 0) {
                a2v = (void**)*(s32**)*(s32*)((char*)arg0 + 0x94);
                if (*(s32*)((char*)arg0 + 0xC) != 0) {
                    a1v = *(s32*)((char*)arg0 + 0x14) + 0x38;
                } else {
                    a1v = 0;
                }
                (*(void(**)(void*, s32))((char*)a2v + 0xb8))(*(s32*)((char*)arg0 + 0x94), a1v);
                (*(void(**)(void*, s32, s32*))(*(void**)(*(s32*)((char*)arg0 + 0x94)) + 0x44))(*(s32*)((char*)arg0 + 0x94), 1, &D_80089C94);
                (*(void(**)(void*, s32))(*(void**)(*(s32*)((char*)arg0 + 0x94)) + 0x130))(*(s32*)((char*)arg0 + 0x94), 0);
                *(s32*)((char*)arg0 + 0xFC) = 0;
                *(s32*)((char*)arg0 + 0x44) = 0xB;
            }
        } else if (v1 == 0xB) {
            a2v = (void**)*(s32**)*(s32*)((char*)arg0 + 0x94);
            if (*(s32*)((char*)arg0 + 0xC) == 0) {
                a1v = 0;
            } else {
                a1v = *(s32*)((char*)arg0 + 0x14) + 0x38;
            }
            (*(void(**)(void*, s32))((char*)a2v + 0xb8))(*(s32*)((char*)arg0 + 0x94), a1v);
            if (*(s32*)((char*)arg0 + 0xFC) == 0x64) {
                (*(void(**)(void*, s32))(*(void**)(arg0) + 0x30))(arg0, 0xA);
            }
        }
    }
    (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xc4))(arg0, -0x100, 0);
}
void EntityBehavior_ScriptedPath_60CF0(void *arg0, void *arg1) {
    s32 temp_a0;

    if (*(s32*)((char*)(arg0) + 0xfc) < (*(s32*)((char*)(arg0) + 0x80) * 5)) {
        temp_a0 = *(s32*)((char*)(arg0) + 0x84);
        if ((temp_a0 == 0xF) || (temp_a0 == 0x46)) {
            *(s32*)((char*)(arg1) + 0x10) = 0;
            *(s32*)((char*)(arg1) + 0x1c) = 7;
            *(s32*)((char*)(arg1) + 0x30) = 7;
            *(s32*)((char*)(arg1) + 0x44) = 7;
        }
    } else {
        (*(void(**)())(*(void**)(arg0) + 0x160))(arg0);
        *(s32*)((char*)(arg0) + 0x44) = 1;
    }
};
void func_80060D80(void *arg0, void *arg1) {
    s32 v1;
    void **s1v;

    if (*(s32*)((char*)arg0 + 0xFC) == 0) {
        if (rand() % 5 == 0) {
            if (*(s32*)((char*)arg0 + 0x44) == 0) {
                (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089E38);
                (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xcc))(arg0, 0x320, 0);
                *(s32*)((char*)arg0 + 0x44) = 0xB;
            }
        }
    }
    s1v = 0;
    if (*(s32*)((char*)arg1 + 0x4) % 5 == 0) {
        *(s32*)((char*)arg1 + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))(arg0);
        *(s32*)((char*)arg1 + 0x1C) = 8;
    }
    v1 = *(s32*)((char*)arg0 + 0xFC);
    if (v1 == 0x5A) {
        s1v = (void**)&D_80089C94;
    } else if (v1 == 0xA0) {
        s1v = (void**)&D_80089C88;
    } else if (v1 == 0xDC) {
        if (rand() & 1) {
            s1v = (void**)&D_80089C7C;
        }
    }
    if (s1v != 0) {
        (*(void(**)(void*, s32, void**))(*(void**)(arg0) + 0x44))(arg0, 0, s1v);
    }
    (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xc4))(arg0, -0x50, 1);
}
void EntityBehavior_ScriptedPath_60F38(void **arg0, void *arg1) {
    s32 temp_v1;

    *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))();
    temp_v1 = *(s32*)((char*)(arg0) + 0xfc);
    if (temp_v1 < 0xBC) {
        if (temp_v1 == 0x54) {
            (*(void(**)())(*(void**)(arg0) + 0x44))(arg0, 0, &D_80089C7C);
        }
        if (*(s32*)((char*)(arg1) + 0x4) == ((*(s32*)((char*)(arg1) + 0x4) / 20) * 0x14)) {
            *(s32*)((char*)(arg1) + 0x1c) = 9;
        }
    } else if (temp_v1 < 0xC8) {
        (*(void(**)())(*(void**)(arg0) + 0x44))(arg0, 0, &D_80089C64);
    } else {
        (*(void(**)())(*(void**)(arg0) + 0x160))(arg0);
        *(s32*)((char*)(arg1) + 0x30) = 0x1E;
        *(s32*)((char*)(arg0) + 0x44) = 1;
    }
    (*(void(**)())(*(void**)(arg0) + 0xd0))(arg0, -0x200, 0);
};
void EntityBehavior_AmbientIdle_61070(void *arg0, void *arg1) {
    s32 temp_ret;
    s32 var_s0;

    var_s0 = *(s32*)((char*)(arg0) + 0x84);
    if (*(s32*)((char*)(arg0) + 0xfc) == 0) {
        temp_ret = rand();
        if (temp_ret == ((temp_ret / 3) * 3)) {
            (*(void(**)())(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089E50);
        }
    }
    *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))(arg0);
    if (var_s0 >= 0x20) {
        var_s0 -= 0x20;
    }
    if ((var_s0 == 9) || (var_s0 == 0x11) || (var_s0 == 0x17)) {
        *(s32*)((char*)(arg1) + 0x1c) = 0x13;
        if (var_s0 == 0x17) {
            *(s32*)((char*)(arg1) + 0x30) = 0x13;
        }
    }
};
void EntityBehavior_AnimPoker_61158(void *arg0) {
    if (*(s32*)((char*)(arg0) + 0xfc) == 0) {
        (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0xcc))(arg0, -0xC8, 0);
    }
}
void func_80061198(void *arg0, void *arg1) {
    s32 x;
    register s32 v __asm__("v0");
    register s32 r __asm__("v0");
    s32 v1;

    x = *(s32 *)((char *)arg0 + 0xFC);
    if (x != 0) {
        goto L61224;
    }
    v = rand();
    r = v % 3;
    *(s32 *)((char *)arg0 + 0x44) = r;
    if (r != 0) {
        goto L61224;
    }
    ((void (**)(void *))*(s32 **)arg0)[0x4C](arg0);
    ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x33](arg0, 0x1800, 0);
L61224:
    v = ((s32 (**)(void *))*(s32 **)arg0)[0x52](arg0);
    *(s32 *)((char *)arg1 + 0x10) = v;
    if (*(s32 *)((char *)arg0 + 0x44) != 0) {
        v1 = *(s32 *)((char *)arg0 + 0x84);
        if (v1 < 0x1E) {
            *(s32 *)((char *)arg1 + 0x1C) = 0xC;
            *(s32 *)((char *)arg1 + 0x20) = -1;
        } else if (v1 == 0x1E) {
            *(s32 *)((char *)arg1 + 0x1C) = -2;
        } else if (v1 == 0x23) {
            *(s32 *)((char *)arg1 + 0x44) = 0x16;
            *(s32 *)((char *)arg1 + 0x48) = -2;
        } else if (v1 == 0x30) {
            if (Entity__IsPlayerInRange(arg0, *(s32 *)((char *)arg0 + 0x14) + 0x18, 0xF, 0xA) != 0) {
                if (Entity__InitWithArgs(arg0, 0, 0, 0xA, 0) != 0) {
                    void *p = *(void **)((char *)arg0 + 0x100);
                    ((void (**)(void *, s32, s32, s32))*(s32 **)p)[0x35](p, *(s32 *)((char *)arg0 + 0x50), 4, 0);
                }
                if ((rand() & 1) != 0) {
                    ((void (**)(void *, s32))*(s32 **)arg0)[0xC](arg0, 0xB);
                }
            }
        } else if (v1 == 0x3B) {
            ((void (**)(void *))*(s32 **)arg0)[0x58](arg0);
            *(s32 *)((char *)arg0 + 0x44) = 1;
        }
    } else {
        *(s32 *)((char *)arg1 + 0x1C) = 0xC;
        *(s32 *)((char *)arg1 + 0x20) = -1;
        ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x31](arg0, -0x200, 0);
        v1 = *(s32 *)((char *)arg0 + 0xFC);
        if ((u32)(v1 - 0x80) < 0xC2) {
            ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x33](arg0, -0x80, 0);
        } else if (v1 == 0x142) {
            ((void (**)(void *))*(s32 **)arg0)[0x4B](arg0);
            *(s32 *)((char *)arg0 + 0x44) = 1;
        }
    }
}
void func_80061400(void *arg0, void *arg1) {
    s32 a0;
    s32 v1;
    s32 a1v;
    s32 v1e;
    void **vt;

    if (*(s32*)((char*)arg0 + 0xFC) == 0) {
        *(s32*)((char*)arg1 + 0x10) = 0;
        *(s32*)((char*)arg1 + 0x1C) = 0xC;
        a0 = *(s32*)((char*)arg0 + 0x94);
        if ((*(s32(**)())(*(void**)(a0) + 0x200))(a0) == 6) {
            *(s32*)((char*)arg0 + 0x44) = 0xB;
        } else if (rand() % 3 == 0) {
            *(s32*)((char*)arg0 + 0x44) = 0xC;
        }
    }
    if (*(s32*)((char*)arg1 + 0x4) == (*(s32*)((char*)arg1 + 0x4) / 100) * 100) {
        *(s32*)((char*)arg1 + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))(arg0);
        *(s32*)((char*)arg1 + 0x1C) = 0xC;
        *(s32*)((char*)arg1 + 0x20) = -1;
    }
    v1 = *(s32*)((char*)arg0 + 0x44);
    if (v1 == 0xB) {
        if ((*(s32(**)(void*, void*))(*(void**)(arg0) + 0x144))(arg0, *(s32*)((char*)arg0 + 0x94)) < 0x400) {
            (*(void(**)(void*, s32))(*(void**)(*(s32*)((char*)arg0 + 0x94)) + 0x130))(*(s32*)((char*)arg0 + 0x94), 0);
            *(s32*)((char*)arg0 + 0x44) = 0xD;
            *(s32*)((char*)arg0 + 0xFC) = 0;
        }
    } else if (v1 == 0xC) {
        if ((*(s32(**)(void*, void*))(*(void**)(arg0) + 0x144))(arg0, *(s32*)((char*)arg0 + 0x94)) < 0x400) {
            (*(void(**)(void*))(*(void**)(arg0) + 0x130))(arg0);
            *(s32*)((char*)arg0 + 0x44) = 0xE;
            *(s32*)((char*)arg0 + 0xFC) = 0;
        }
    }
    v1 = *(s32*)((char*)arg0 + 0x44);
    if (v1 == 0xD) {
        a0 = *(s32*)((char*)arg0 + 0xFC);
        if (a0 < 0x32) {
            (*(void(**)(void*, s32, s32))(*(void**)(*(s32*)((char*)arg0 + 0x94)) + 0xcc))(*(s32*)((char*)arg0 + 0x94), -0x14, 0);
        } else if (a0 < 0x1F4) {
            vt = *(void**)*(s32*)((char*)arg0 + 0x94);
            a1v = 5;
            if (a0 % 40 < 0x14) {
                a1v = -5;
            }
            (*(void(**)(void*, s32, s32))((char*)vt + 0xc8))(*(s32*)((char*)arg0 + 0x94), a1v, 0);
        } else if (a0 == 0x1F4) {
            (*(void(**)(void*, s32))(*(void**)(arg0) + 0x30))(arg0, 0xC);
        }
    }
    v1 = *(s32*)((char*)arg0 + 0x44);
    if (v1 == 0xE) {
        v1e = *(s32*)((char*)arg0 + 0xFC);
        if (v1e < 0xA) {
            (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xcc))(arg0, 0xC8, 0);
        } else if (v1e == 0xA) {
            *(s32*)((char*)arg1 + 0x1C) = 0x12;
            *(s32*)((char*)arg1 + 0x10) = 0;
            *(s32*)((char*)arg1 + 0x30) = 3;
            (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x44))(arg0, 1, &D_80089D24);
            (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xc8))(arg0, 0x960, 0);
            (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xcc))(arg0, 0x5DC, 0);
            (*(void(**)(void*, s32))(*(void**)(*(s32*)((char*)*(s32*)((char*)arg0 + 0x70) + 0x4)) + 0x60))(*(s32*)((char*)*(s32*)((char*)arg0 + 0x70) + 0x4), 0);
            *(s32*)((char*)arg0 + 0x44) = 1;
        }
    }
}
void func_80061778(void *arg0, void *arg1) {
    s32 v1;
    s32 a1v;
    void **vt;

    if (*(s32*)((char*)arg0 + 0x44) == 0) {
        if (Entity__PlayEventVideo(arg0, 0x800) != 0) {
            *(s32*)((char*)arg0 + 0x44) = 0xB;
            FaceTowards(arg0, *(s32*)((char*)arg0 + 0x94), 1, 0, 0);
            FaceTowards(*(s32*)((char*)arg0 + 0x94), arg0, 1, 1, 0);
            ((void(**)(void*))*(s32**)arg0)[0x57](arg0);
            ((void(**)(void*))*(s32**)arg0)[0x5A](arg0);
            ((void(**)(void*, s32))*(s32**)*(s32*)((char*)arg0 + 0x94))[0x4C](*(s32*)((char*)arg0 + 0x94), 1);
            *(s32*)((char*)arg1 + 0x10) = 0;
            *(s32*)((char*)arg1 + 0x1C) = 0xC;
            *(s32*)((char*)arg0 + 0xFC) = 0;
        }
        if (*(s32*)((char*)arg0 + 0x44) == 0) {
            ((void(**)(void*))*(s32**)arg0)[0x58](arg0);
            ((void(**)(void*))*(s32**)arg0)[0x5B](arg0);
            goto tail;
        }
    }
    if (*(s32*)((char*)arg1 + 0x4) == (*(s32*)((char*)arg1 + 0x4) / 100) * 100) {
        *(s32*)((char*)arg1 + 0x10) = ((s32(**)(void*))*(s32**)arg0)[0x52](arg0);
        *(s32*)((char*)arg1 + 0x1C) = 0xC;
        *(s32*)((char*)arg1 + 0x20) = -1;
    }
    v1 = *(s32*)((char*)arg0 + 0xFC);
    if (v1 < 3) {
        ((void(**)(void*, s32, s32))*(s32**)arg0)[0x33](arg0, 0x96, 0);
    } else if (v1 < 7) {
        vt = *(void**)arg0;
        a1v = 0x32;
        if (v1 & 1) {
            a1v = -0x32;
        }
        (*(void(**)(void*, s32, s32))((char*)vt + 0xcc))(arg0, a1v, 0);
    } else if (v1 == 0x64) {
        if (rand() & 1) {
            *(s32*)((char*)arg0 + 0x44) = 0xC;
            ((void(**)(void*))*(s32**)arg0)[0x4C](arg0);
        }
    } else if (v1 == 0xF0) {
        ((void(**)(void*, s32, s32))*(s32**)*(s32*)((char*)arg0 + 0x94))[0x4D](*(s32*)((char*)arg0 + 0x94), 1, 1);
    }
    if (*(s32*)((char*)arg0 + 0x44) == 0xC) {
        v1 = *(s32*)((char*)arg0 + 0xFC);
        if (v1 < 0x82) {
            ((void(**)(void*, s32, s32))*(s32**)arg0)[0x33](arg0, 0xA, 0);
        } else if (v1 < 0xA0) {
            ((void(**)(void*, s32, s32))*(s32**)arg0)[0x31](arg0, -0x1E, 0);
        } else if (v1 < 0x12D) {
        } else {
            FaceTowards(arg0, *(s32*)((char*)arg0 + 0x94), 1, 0, 0);
            ((void(**)(void*, s32, s32))*(s32**)arg0)[0x31](arg0, -0x1E, 0);
        }
    }
tail:
    if (((s32(**)(void*, void*))*(s32**)arg0)[0x51](arg0, *(s32*)((char*)arg0 + 0x94)) < 0x200) {
        ((void(**)(void*))*(s32**)arg0)[0x58](arg0);
        ((void(**)(void*, s32))*(s32**)arg0)[0xC](arg0, 0xA);
    }
}
void EntityBehavior_SpawnSubObject_61A90(void *arg0, void *arg1) {
    s32 temp_ret;
    void **temp_a0;

    if (*(s32*)((char*)(arg0) + 0xfc) == 0) {
        temp_ret = rand();
        if (temp_ret == (temp_ret / 10) * 10) {
            *(s32*)((char*)(arg0) + 0x44) = 0xC;
        }
    }
    if (*(s32*)((char*)(arg1) + 0x4) == (*(s32*)((char*)(arg1) + 0x4) / 10) * 10) {
        *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))(arg0);
        *(s32*)((char*)(arg1) + 0x1c) = 0xC;
        *(s32*)((char*)(arg1) + 0x20) = -1;
    }
    if (*(s32*)((char*)(arg0) + 0xfc) == 0) {
        if (rand() & 1) {
            (*(void(**)())(*(void**)(arg0) + 0xcc))(arg0, 0x800, 0);
        }
    }
    (*(void(**)())(*(void**)(arg0) + 0xc4))(arg0, -0x80, 0);
    if ((*(s32*)((char*)(arg0) + 0x44) == 0xC) && (*(s32*)((char*)(arg0) + 0xfc) == 0x12C)) {
        temp_a0 = *(void***)((char*)(arg0) + 0x4c);
        (*(void(**)())(*(void**)(temp_a0) + 0x138))(temp_a0, 1, 1);
    }
}
void EntityBehavior_AnimPoker_61C04(void *arg0, void *arg1) {
    if (*(s32*)((char*)(arg0) + 0x84) == 0x1E) {
        *(s32*)((char*)(arg1) + 0x1c) = 0x12;
        *(s32*)((char*)(arg1) + 0x10) = 0;
        *(s32*)((char*)(arg1) + 0x20) = -1;
    }
}
void func_80061C2C(void *arg0, void *arg1) {
    s32 a0;
    s32 v1;
    s32 a1v;
    s32 v1b;

    a0 = *(s32*)((char*)arg0 + 0x84);
    if (a0 == (a0 / 30) * 30) {
        *(s32*)((char*)arg1 + 0x1C) = 3;
        *(s32*)((char*)arg1 + 0x10) = 0;
        *(s32*)((char*)arg1 + 0x20) = -2;
    }
    if (*(s32*)((char*)arg0 + 0xFC) >= 0x65) {
        FaceTowards(arg0, *(s32*)((char*)arg0 + 0x94), 1, 0, 0);
    }
    ((void(**)(void*, s32, s32))*(s32**)arg0)[0x31](arg0, -0x5, 0);
    v1 = *(s32*)((char*)arg0 + 0xFC);
    if (v1 == 0x12C) {
        if (((s32(**)(void*, void*))*(s32**)arg0)[0x51](arg0, *(s32*)((char*)arg0 + 0x94)) < 0x1000) {
            ((void(**)(void*, s32))*(s32**)*(s32*)((char*)arg0 + 0x94))[0x4C](*(s32*)((char*)arg0 + 0x94), 0);
            goto next;
        }
        v1 = *(s32*)((char*)arg0 + 0xFC);
    }
    if (v1 == 0x1F4) {
        ((void(**)(void*, s32, s32))*(s32**)*(s32*)((char*)arg0 + 0x94))[0x4D](*(s32*)((char*)arg0 + 0x94), 1, 1);
    }
next:
    if (*(s32*)((char*)arg0 + 0x44) == 0) {
        if (((s32(**)(void*, void*))*(s32**)arg0)[0x51](arg0, *(s32*)((char*)arg0 + 0x94)) < 0x400) {
            if (rand() & 1) {
                *(s32*)((char*)arg1 + 0x30) = 6;
                *(s32*)((char*)arg1 + 0x10) = 0;
                *(s32*)((char*)arg1 + 0x34) = -1;
                if (rand() & 1) {
                    ((void(**)(void*, s32, s32))*(s32**)*(s32*)((char*)arg0 + 0x4C))[0x4E](*(s32*)((char*)arg0 + 0x4C), -1, 0);
                }
                *(s32*)((char*)arg0 + 0xFC) = 0;
                *(s32*)((char*)arg0 + 0x44) = 0xA;
            } else {
                *(s32*)((char*)arg0 + 0x44) = 0xB;
            }
        }
    }
    if (*(s32*)((char*)arg0 + 0x44) == 0xA) {
        v1b = *(s32*)((char*)arg0 + 0xFC);
        if (v1b == 0x46) {
            s32 r = rand();
            a1v = 0xB;
            if (r & 1) {
                a1v = 0xC;
            }
            ((void(**)(void*, s32))*(s32**)arg0)[0xC](arg0, a1v);
        }
    }
}
void EntityBehavior_LoopRandomHeading_61E60(void **arg0, void *arg1) {
    s32 temp_s0;

    temp_s0 = *(s32*)((char*)(arg1) + 0x4) % 300;
    *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)(void*))(*(void**)(arg0) + 0x148))(arg0);
    if (temp_s0 < 0x14) {
        *(s32*)((char*)(arg1) + 0x1c) = 5;
        *(s32*)((char*)(arg1) + 0x20) = -2;
    } else if (temp_s0 == 0x16) {
        *(s32*)((char*)(arg1) + 0x1c) = -2;
    }
    (*(void(**)())(*(void**)(arg0) + 0xc4))(arg0, -0xA, 0);
}
void func_80061F30(void **arg0) {
    s32 temp_ret;

    if (*(s32*)((char*)(arg0) + 0xfc) == 0) {
        temp_ret = rand();
        if (temp_ret == ((temp_ret / 3) * 3)) {
            (*(void(**)())(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089DD8);
            (*(void(**)())(*(void**)(arg0) + 0xcc))(arg0, -0x12C, 0);
            (*(void(**)())(*(void**)(arg0) + 0x44))(arg0, 1, &D_80089C88);
            *(s32*)((char*)(arg0) + 0x44) = 0xB;
        }
    }
    if (*(s32*)((char*)(arg0) + 0x44) == 0xB) {
        if (*(s32*)((char*)(arg0) + 0xfc) == 0x7D0) {
            (*(void(**)())(*(void**)(arg0) + 0x44))(arg0, 0, &D_80089C94);
        }
        (*(void(**)())(*(void**)(arg0) + 0xc4))(arg0, -0x14, 0);
    }
};
void EntityBehavior_PeriodicAnim_6204C(void **arg0, void *arg1) {
    *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))();
    if (*(s32*)((char*)(arg1) + 0x4) == ((*(s32*)((char*)(arg1) + 0x4) / 30) * 0x1E)) {
        *(s32*)((char*)(arg1) + 0x1c) = 0xD;
    }
};
void func_800620C4(void *arg0) {
    s32 temp_ret;

    if (*(s32*)((char*)(arg0) + 0xfc) == 0) {
        temp_ret = rand();
        if (temp_ret == ((temp_ret / 3) * 3)) {
            *(s32*)((char*)(arg0) + 0x44) = 0xB;
        }
    }
    if (*(s32*)((char*)(arg0) + 0x44) == 0xB) {
        if (*(s32*)((char*)(arg0) + 0xfc) == 0x1F6) {
            (*(void(**)())(*(void**)(arg0) + 0xcc))(arg0, 0x800, 0);
            FaceTowards(arg0, *(s32*)((char*)(arg0) + 0x94), 1, 0, 0);
        }
        if (*(s32*)((char*)(arg0) + 0xfc) >= 0x1F5) {
            (*(void(**)())(*(void**)(arg0) + 0xc4))(arg0, -0x200, 0);
        }
    }
};
void func_800621A8(void *arg0, void *arg1) {
    s32 a0;
    s32 q;
    s32 rem;
    s32 st;
    s32 s16v;
    s32 v;

    *(s32*)((char*)arg1 + 0x10) = ((s32(**)(void*))*(s32**)arg0)[0x52](arg0);
    if (*(s32*)((char*)arg1 + 0x4) == 0) {
        s32 r = rand();
        s16v = -0xC0;
        if (r & 1) {
            s16v = -0x176;
        }
        *(s16*)((char*)arg0 + 0x48) = s16v;
    }
    st = *(s32*)((char*)arg0 + 0x44);
    if (st == 0) {
        if (*(s32*)((char*)arg1 + 0x4) == (*(s32*)((char*)arg1 + 0x4) / 10) * 10) {
            *(s32*)((char*)arg1 + 0x1C) = 0x1C;
        }
        a0 = *(s32*)((char*)arg1 + 0x4);
        q = a0 / 20;
        rem = a0 - q * 20;
        if (rem == 0) {
            *(s32*)((char*)arg1 + 0x30) = 0x17;
            *(s32*)((char*)arg1 + 0x34) = -1;
            *(s32*)((char*)arg1 + 0x44) = 0x17;
            *(s32*)((char*)arg1 + 0x48) = -1;
        } else if (rem == 0xE) {
            *(s32*)((char*)arg1 + 0x30) = -2;
            *(s32*)((char*)arg1 + 0x44) = -2;
        }
        if ((*(s32*)((char*)arg0 + 0xFC) & 1) == 0) {
            if (((s32(**)(void*))*(s32**)*(s32*)((char*)arg0 + 0x94))[0x40](*(s32*)((char*)arg0 + 0x94)) != 0) {
                *(s32*)((char*)arg0 + 0xFC) = -1;
                *(s32*)((char*)arg0 + 0x44) = 0xA;
                *(s32*)((char*)arg1 + 0x1C) = 0x12;
            }
        }
        FaceTowards(arg0, *(s32*)((char*)arg0 + 0x94), 1, 0, 0);
        ((void(**)(void*, s32, s32))*(s32**)arg0)[0x31](arg0, *(s16*)((char*)arg0 + 0x48), 1);
    } else if (st == 0xA) {
        if (*(s32*)((char*)arg0 + 0xFC) < 8) {
            ((void(**)(void*, s32, s32*))*(s32**)arg0)[0x11](arg0, 0, &D_80089CC4);
            ((void(**)(void*, s32*))*(s32**)arg0)[0x2F](arg0, &D_80089D6C);
        } else {
            *(s32*)((char*)arg1 + 0x1C) = 0x12;
            *(s32*)((char*)arg1 + 0x30) = 3;
            ((void(**)(void*))*(s32**)arg0)[0x5B](arg0);
            v = rand() & 1;
            *(s32*)((char*)arg0 + 0x44) = v == 0;
        }
    }
}
void EntityBehavior_LoopRandomHeading_623E8(void *arg0, void *arg1) {
    *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))();
    if (*(s32*)((char*)(arg0) + 0x84) == (*(s32*)((char*)(arg0) + 0x80) - 1)) {
        *(s32*)((char*)(arg1) + 0x1c) = 0x19;
        *(s32*)((char*)(arg1) + 0x20) = -2;
    }
    if (!(*(s32*)((char*)(arg1) + 0x4) & 3)) {
        *(s32*)((char*)(arg1) + 0x30) = 0x15;
        *(s32*)((char*)(arg1) + 0x34) = -1;
    }
    if (*(s32*)((char*)(arg1) + 0x4) == ((*(s32*)((char*)(arg1) + 0x4) / 200) * 0xC8)) {
        *(s32*)((char*)(arg1) + 0x44) = 0xD;
        *(s32*)((char*)(arg1) + 0x48) = 1;
    }
};
void func_800624BC(void *arg0) {
    s32 a1v;
    void **vt;

    if (*(s32*)((char*)arg0 + 0xFC) == 0) {
        if (rand() & 1) {
            *(s32*)((char*)arg0 + 0x44) = 0xB;
        }
    }
    if (*(s32*)((char*)arg0 + 0xFC) == 0x12C) {
        ((void(**)(void*, s32, s32*))*(s32**)arg0)[0x11](arg0, 0, &D_80089C7C);
    }
    if (*(s32*)((char*)arg0 + 0xFC) < 0x258) {
        vt = *(void**)arg0;
        a1v = 0x100;
        if (*(s32*)((char*)arg0 + 0x44) == 0) {
            a1v = -0x100;
        }
        (*(void(**)(void*, s32, s32))((char*)vt + 0xc4))(arg0, a1v, 0);
    }
}
void EntityBehavior_SfxPrereq(void *arg0, void *arg1) {
    s32 r;
    s32 rem;

    *(s32*)((char*)arg1 + 0x10) = ((s32(**)(void*))*(s32**)arg0)[0x52](arg0);
    if (*(s32*)((char*)arg1 + 0x4) == 0) {
        *(s32*)((char*)arg1 + 0x1C) = 0;
        r = rand();
        rem = r % 3;
        ((void(**)(void*, s32, s32))*(s32**)arg0)[0x32](arg0, rem * 25 << 11, 0);
    }
    if (*(s32*)((char*)arg0 + 0xFC) >= 0x961) {
        FaceTowards(arg0, *(s32*)((char*)arg0 + 0x94), 1, 0, 0);
    }
    ((void(**)(void*, s32, s32))*(s32**)arg0)[0x31](arg0, -0x1E, 0);
}
void func_80062660(void *arg0, void *arg1) {
    s32 temp_v1;
    void **temp_a0;
    void **temp_a0_2;

    temp_v1 = *(s32*)((char*)(arg1) + 0x4);
    *(s32*)((char*)(arg1) + 0x10) = 0;
    if (temp_v1 == 0) {
        temp_a0 = *(s32*)((char*)(arg0) + 0x94);
        (*(void(**)())(*(void**)(temp_a0) + 0x44))(temp_a0, 1, &D_80089C88);
        temp_a0_2 = *(s32*)((char*)(arg0) + 0x94);
        (*(void(**)())(*(void**)(temp_a0_2) + 0x130))(temp_a0_2, 1);
        *(s32*)((char*)(arg1) + 0x1c) = 0x19;
        *(s32*)((char*)(arg1) + 0x30) = 0x19;
        *(s32*)((char*)(arg1) + 0x44) = 0x19;
    } else if (temp_v1 == 0x14) {
        *(s32*)((char*)(arg1) + 0x30) = 0xD;
    }
    if (*(s32*)((char*)(arg0) + 0xfc) == (*(s32*)((char*)(arg0) + 0x80) - 1)) {
        (*(void(**)())(*(void**)(arg0) + 0x160))(arg0);
    }
};
void EntityBehavior_ScriptedSequence_62730(void *arg0) {
    void *s0 = arg0;
    s32 temp_a1;
    u32 temp_v0;

    if (*(s32 *)((char *)s0 + 0xfc) == 0) {
        void **ta = *(void ***)((char *)*(s32 *)((char *)s0 + 0x94) + 0x5c);
        (*(void(**)(void *, s32 *))((char *)*(void **)ta + 0x64))(ta, &D_8008AC1C);
        *(s32 *)((char *)s0 + 0x44) = (s32)(rand() % 3);
        {
            s32 t = *(s32 *)((char *)*(s32 *)((char *)s0 + 0x94) + 0x14);
            if (*(s32 *)((char *)t + 0x20) < 0x262) {
                *(s32 *)((char *)s0 + 0x44) = 0;
            }
        }
    }
    if (*(s32 *)((char *)s0 + 0x44) != 0) {
        temp_v0 = *(s32 *)((char *)s0 + 0x80);
        if (((s32)(temp_v0 + (temp_v0 >> 0x1F)) >> 1) < *(s32 *)((char *)s0 + 0xfc)) {
            void *ta2 = *(void **)((char *)s0 + 0x94);
            (*(void(**)(void *, s32, s32))((char *)*(void **)ta2 + 0xc4))(ta2, 0x80, 0);
        }
        if (*(s32 *)((char *)s0 + 0xfc) == (*(s32 *)((char *)s0 + 0x80) - 0x1E)) {
            (*(void(**)(void *, s32))((char *)*(void **)s0 + 0x30))(s0, 0xA);
        }
    } else {
        temp_a1 = *(s32 *)((char *)s0 + 0xfc);
        if ((u32)(temp_a1 - 0x14) < 0x64U) {
            void *ta3 = *(void **)((char *)s0 + 0x94);
            (*(void(**)(void *, s32, s32))((char *)*(void **)ta3 + 0xc4))(ta3, -((temp_a1 - 0x13) << 5), 1);
            if (*(s32 *)((char *)s0 + 0xfc) == 0x55) {
                void *ta4 = *(void **)((char *)s0 + 0x94);
                (*(void(**)(void *, s32, s32))((char *)*(void **)ta4 + 0x134))(ta4, 1, 1);
            }
        }
    }
}
void EntityBehavior_ApproachDespawn_628D4(void *arg0, void *arg1) {
    if (*(s32*)((char*)(arg1) + 0x4) == 0) {
        *(s32*)((char*)(arg1) + 0x10) = 0;
        *(s32*)((char*)(arg1) + 0x1c) = 0x19;
        *(s32*)((char*)(arg1) + 0x30) = 0x19;
        *(s32*)((char*)(arg1) + 0x44) = 0x19;
        FaceTowards(arg0, *(s32*)((char*)(arg0) + 0x94), 1, 0, 0);
    }
    if (*(s32*)((char*)(arg0) + 0xfc) == *(s32*)((char*)(arg0) + 0x80)) {
        (*(void(**)())(*(void**)(arg0) + 0x130))(arg0);
        (*(void(**)())(*(void**)(arg0) + 0x30))(arg0, 0xA);
    }
}
void func_80062970(void *arg0) {
    if (*(s32*)((char*)arg0 + 0xF4) != 0) {
        ((void(**)(void*))*(s32**)arg0)[0x4B](arg0);
        if (*(s32*)((char*)arg0 + 0x84) == *(s32*)((char*)arg0 + 0x80) - 1) {
            ((void(**)(void*))*(s32**)arg0)[0x4C](arg0);
            ((void(**)(void*, s32, s32*))*(s32**)arg0)[0x12](arg0, 0, &D_80089DFC);
        }
    } else {
        ((void(**)(void*))*(s32**)arg0)[0x4C](arg0);
        ((void(**)(void*, s32, s32*))*(s32**)arg0)[0x11](arg0, 0, &D_80089C64);
    }
}
void EntityBehavior_ScriptedPath_62A40(void **arg0, void *arg1) {
    s32 temp_v1;
    s32 temp_v1_2;

    *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))();
    if (*(s32*)((char*)(arg1) + 0x4) == ((*(s32*)((char*)(arg1) + 0x4) / 5) * 5)) {
        *(s32*)((char*)(arg1) + 0x1c) = 0x11;
        *(s32*)((char*)(arg1) + 0x20) = -2;
    }
    if (*(s32*)((char*)(arg0) + 0x7c) == 0) {
        if (*(s32*)((char*)(arg0) + 0xfc) == *(s32*)((char*)(arg0) + 0x80)) {
            (*(void(**)())(*(void**)(arg0) + 0x128))(arg0, 1);
            if (rand() & 1) {
                *(s32*)((char*)(arg0) + 0x44) = 0xB;
            }
        }
    } else {
        if (*(s32*)((char*)(arg0) + 0x44) == 0) {
            temp_v1 = *(s32*)((char*)(arg0) + 0xfc);
            if ((temp_v1 == 0x3C) || (temp_v1 == 0xD4) || (temp_v1 == 0x122) || (temp_v1 == 0x140)) {
                (*(void(**)())(*(void**)(arg0) + 0x44))(arg0, 0, &D_80089C88);
            }
            if (*(s32*)((char*)(arg0) + 0xfc) == 0x18E) {
                (*(void(**)())(*(void**)(arg0) + 0x44))(arg0, 0, &D_80089C94);
            }
            (*(void(**)())(*(void**)(arg0) + 0xd0))(arg0, -0x32, 0);
            return;
        }
        temp_v1_2 = *(s32*)((char*)(arg0) + 0xfc);
        if ((temp_v1_2 == 0x3C) || (temp_v1_2 == 0x8C)) {
            (*(void(**)())(*(void**)(arg0) + 0x44))(arg0, 0, &D_80089C88);
        }
        if (*(s32*)((char*)(arg0) + 0xfc) < 0xAE) {
            (*(void(**)())(*(void**)(arg0) + 0xd0))(arg0, -0x32, 0);
        }
        if (*(s32*)((char*)(arg0) + 0xfc) == 0xAE) {
            (*(void(**)())(*(void**)(arg0) + 0x16c))(arg0);
            *(s32*)((char*)(arg0) + 0x44) = 1;
        }
    }
};
INCLUDE_ASM("asm/lsdde/nonmatchings/Entity", func_80062C58);
void EntityBehavior_LoopRandomHeading_62FAC(void *arg0, void *arg1) {
    *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))();
    if (*(s32*)((char*)(arg1) + 0x4) == ((*(s32*)((char*)(arg1) + 0x4) / 10) * 0xA)) {
        *(s32*)((char*)(arg1) + 0x1c) = 0x19;
        *(s32*)((char*)(arg1) + 0x20) = 2;
    }
    (*(void(**)())(*(void**)(arg0) + 0x44))(arg0, 0, &D_80089CA0);
    if ((*(s32*)((char*)(arg0) + 0x44) == 0) && (*(s32*)((char*)(arg0) + 0xf4) != 0)) {
        (*(void(**)())(*(void**)(arg0) + 0x30))(arg0, 0xB);
        *(s32*)((char*)(arg0) + 0x44) = 0xB;
    }
};
void EntityBehavior_ScriptedSequence_63094(void *arg0, void *arg1) {
    s32 temp_v1;

    if (*(s32*)((char*)(arg0) + 0xfc) < *(s32*)((char*)(arg0) + 0x80)) {
        temp_v1 = *(s32*)((char*)(arg0) + 0x84);
        if (temp_v1 != 0) {
            if (temp_v1 == 0x14) {
                *(s32*)((char*)(arg1) + 0x10) = 0;
                *(s32*)((char*)(arg1) + 0x1c) = 0x10;
            }
        }
    } else {
        (*(void(**)())(*(void**)(arg0) + 0x130))(arg0);
        (*(void(**)())(*(void**)(arg0) + 0xbc))(arg0, &D_80089D54);
    }
    FaceTowards(arg0, *(s32*)((char*)(arg0) + 0x94), 1, 0, 0);
};
INCLUDE_ASM("asm/lsdde/nonmatchings/Entity", func_80063144);
void func_800634A8(void *s0, void *s1) {
    if (*(s32 *)((char *)s0 + 0x44) == 0 && *(s32 *)((char *)s0 + 0xFC) == 0) {
        if (rand() % 3 != 0) {
            *(s32 *)((char *)s0 + 0x44) = (rand() & 1) ? 11 : 12;
        } else {
            (*(void (**)(void *))(*(s32 *)s0 + 0x16C))(s0);
            (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0xC4))(s0, -20480, 0);
            rand();
        }
    }
    if (*(s32 *)((char *)s0 + 0x44) == 12) {
        FaceTowards(s0, (void **)*(s32 *)((char *)s0 + 0x94), 1, 0, 0);
        if (*(s32 *)((char *)s0 + 0xFC) == 20) {
            *(s32 *)((char *)s1 + 0x1C) = 18;
            *(s32 *)((char *)s1 + 0x10) = 0;
            *(s32 *)((char *)s1 + 0x30) = 3;
            (*(void (**)(void *, s32))(*(s32 *)(*(s32 *)((char *)s0 + 0x94)) + 0x130))(*(void **)((char *)s0 + 0x94), 1);
        }
        if (*(s32 *)((char *)s0 + 0xFC) >= 21) {
            (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0xC4))(s0, -40, 0);
        }
        if (*(s32 *)((char *)s0 + 0xFC) == 40) {
            (*(void (**)(void *, s32))(*(s32 *)s0 + 0x30))(s0, 10);
        }
    } else if (*(s32 *)((char *)s0 + 0x44) == 11) {
        (*(void (**)(void *))(*(s32 *)s0 + 0x130))(s0);
        if ((*(s32 (**)(void *, void *))(*(s32 *)s0 + 0x144))(s0, *(void **)((char *)s0 + 0x94)) < 512) {
            if (rand() % 3 != 0) {
                (*(void (**)(void *))(*(s32 *)s0 + 0x160))(s0);
            } else {
                (*(void (**)(void *))(*(s32 *)s0 + 0x16C))(s0);
            }
        }
    }
}
void EntityBehavior_ScriptedPath_636E4(void *arg0, void *arg1) {
    if (*(s32*)((char*)(arg0) + 0x84) == ((*(s32*)((char*)(arg0) + 0x84) / 15) * 0xF)) {
        *(s32*)((char*)(arg1) + 0x1c) = 0xC;
        *(s32*)((char*)(arg1) + 0x10) = 0;
        *(s32*)((char*)(arg1) + 0x20) = 2;
    }
    if (*(s32*)((char*)(arg0) + 0xfc) == *(s32*)((char*)(arg0) + 0x80)) {
        *(s32*)((char*)(arg1) + 0x1c) = -2;
        (*(void(**)())(*(void**)(arg0) + 0x16c))(arg0);
        *(s32*)((char*)(arg0) + 0x44) = 1;
    }
};
void EntityBehavior_ScriptedPath_63784(void *arg0, s32 *arg1) {
    arg1[0x10 / 4] = (*(s32(**)(void*))(*(s32*)arg0 + 0x148))(arg0);
    {
        s32 v1 = *(s32*)((char*)arg0 + 0x84);
        if (v1 < 0x28) {
            arg1[0x1C / 4] = 0xC;
            arg1[0x20 / 4] = -2;
            arg1[0x44 / 4] = 5;
            arg1[0x48 / 4] = -1;
        } else if (v1 == 0x28) {
            arg1[0x1C / 4] = -2;
            arg1[0x44 / 4] = -2;
        } else if (v1 == 0x2D) {
            arg1[0x30 / 4] = 0x12;
            arg1[0x34 / 4] = 1;
        } else if (v1 == 0x40) {
            arg1[0x1C / 4] = 7;
        } else if (v1 == 0x59) {
            (*(void(**)(void*))(*(s32*)arg0 + 0x16C))(arg0);
            *(s32*)((char*)arg0 + 0x44) = 1;
        }
    }
}
void func_80063874(void *arg0, void *arg1) {
    register s32 v0 __asm__("v0");
    s32 v1;
    s32 a1;

    v1 = *(s32 *)((char *)arg0 + 0x44);
    if (v1 == 0) {
        if (*(s32 *)((char *)arg0 + 0x84) == 5) {
            EntityMotion_SetLeap(arg1);
        }
        if (*(s32 *)((char *)arg0 + 0xFC) == *(s32 *)((char *)arg0 + 0x80)) {
            ((void (**)(void *))*(s32 **)arg0)[0x4C](arg0);
            v0 = 0xA;
            goto L63A20;
        }
        goto L63BA8;
    }
    v0 = 0xA;
    if (v1 == 0xA) {
        if (*(s32 *)((char *)arg0 + 0xFC) < 10) {
            ((void (**)(void *, s32, void *))*(s32 **)arg0)[0x11](arg0, 0, &D_80089C64);
            if ((*(s32 (**)(void *))(*(void **)*(void **)((char *)arg0 + 0x94) + 0x100))(*(void **)((char *)arg0 + 0x94)) != 0) {
                EntityMotion_SetLeap(arg1);
                v0 = 0xC;
                goto L63A20;
            }
            goto L63BA8;
        } else {
            (*(void (**)(void *, s32))(*(void **)*(void **)((char *)arg0 + 0x94) + 0x130))(*(void **)((char *)arg0 + 0x94), 1);
            v0 = 0xB;
            goto L63A20;
        }
    }
    v0 = 0xB;
    if (v1 != 0xB) {
        goto L63A30;
    }
    FaceTowards(arg0, *(s32*)((s8*)arg0 + 0x94), 1, 0, 0);
    if (*(s32 *)((char *)arg0 + 0xFC) < 30) {
        ((void (**)(void *, s32, s32))*(s32 **)arg0)[0x31](arg0, -10, 0);
        goto L63BA8;
    }
    EntityMotion_SetLeap(arg1);
    if (Entity__InitWithArgs(arg0, 0, 0, 30, 0) != 0) {
        (*(void (**)(void *, s32, s32, s32))(*(void **)*(void **)((char *)arg0 + 0x100) + 0xD4))(*(void **)((char *)arg0 + 0x100), *(s32 *)((char *)arg0 + 0x50), 7, 0);
    }
    v0 = 0xD;
L63A20:
    *(s32 *)((char *)arg0 + 0x44) = v0;
    *(s32 *)((char *)arg0 + 0xFC) = -1;
    goto L63BA8;
L63A30:
    v0 = 0xC;
    if (v1 != 0xD) {
        goto L63B40;
    }
    if (*(s32 *)((char *)arg0 + 0xFC) < 90) {
        if (*(s32 *)((char *)arg0 + 0xFC) == 30) {
            if (Entity__InitWithArgs(arg0, 0, 0, 10, 0) != 0) {
                (*(void (**)(void *, s32, s32, s32))(*(void **)*(void **)((char *)arg0 + 0x100) + 0xD8))(*(void **)((char *)arg0 + 0x100), *(s32 *)((char *)arg0 + 0x50), 0, 0);
            }
        }
        (*(void (**)(void *, s32, void *))(*(void **)*(void **)((char *)arg0 + 0x94) + 0x44))(*(void **)((char *)arg0 + 0x94), 0, &D_80089CD0);
        goto L63BA8;
    } else {
        EntityMotion_SetCrouch(arg1);
        (*(void (**)(void *, s32, void *))(*(void **)*(void **)((char *)arg0 + 0x94) + 0x44))(*(void **)((char *)arg0 + 0x94), 1, &D_80089C7C);
        v0 = rand();
        if (v0 % 5 != 0) {
            a1 = 0xA;
        } else {
            a1 = 0xC;
        }
        ((void (**)(void *, s32))*(s32 **)arg0)[0xC](arg0, a1);
        v0 = 0xE;
        goto L63BA4;
    }
L63B40:
    if (v1 != 0xC) {
        goto L63BA8;
    }
    if (*(s32 *)((char *)arg0 + 0xFC) < 10) {
        ((void (**)(void *, s32, void *))*(s32 **)arg0)[0x11](arg0, 0, &D_80089CDC);
        goto L63BA8;
    }
    EntityMotion_SetCrouch(arg1);
    ((void (**)(void *))*(s32 **)arg0)[0x5B](arg0);
    v0 = 1;
L63BA4:
    *(s32 *)((char *)arg0 + 0x44) = v0;
L63BA8:
    return;
}
void EntityBehavior_ScriptedPath_63BC0(void *arg0, s32 arg1) {
    void (*var_v0)(void *);
    s32 temp_v1;

    temp_v1 = *(s32*)((char*)(arg0) + 0xfc);
    if (temp_v1 < 0xA) {
        var_v0 = *(s32*)((char*)(*(void**)(arg0)) + 0x130);
        var_v0(arg0);
    } else if (temp_v1 == 0xA) {
        var_v0 = *(s32*)((char*)(*(void**)(arg0)) + 0x12c);
        var_v0(arg0);
    }
    if (*(s32*)((char*)(arg0) + 0x84) == 0xA) {
        EntityMotion_SetCrouch(arg1);
    }
    if (*(s32*)((char*)(arg0) + 0xfc) == (*(s32*)((char*)(arg0) + 0x80) + 0xA)) {
        (*(void(**)())(*(void**)(arg0) + 0x16c))(arg0);
        *(s32*)((char*)(arg0) + 0x44) = 1;
    }
}
void EntityMotion_SetLeap(void *arg0) {
    *(s32*)((char*)(arg0) + 0x10) = 0;
    *(s32*)((char*)(arg0) + 0x1c) = 7;
    *(s32*)((char*)(arg0) + 0x20) = -2;
    *(s32*)((char*)(arg0) + 0x30) = 7;
    *(s32*)((char*)(arg0) + 0x34) = -2;
    *(s32*)((char*)(arg0) + 0x44) = 7;
    *(s32*)((char*)(arg0) + 0x48) = -2;
}
void EntityMotion_SetCrouch(void *arg0) {
    *(s32*)((char*)(arg0) + 0x1c) = 0x12;
    *(s32*)((char*)(arg0) + 0x10) = 0;
    *(s32*)((char*)(arg0) + 0x30) = 3;
    *(s32*)((char*)(arg0) + 0x44) = 3;
}
void EntityBehavior_ScriptedPath_63CC8(void *arg0, void *arg1) {
    *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))(arg0);
    if (*(s32*)((char*)(arg1) + 0x4) == 0) {
        *(s32*)((char*)(arg1) + 0x1c) = 0x12;
    }
    if (*(s32*)((char*)(arg1) + 0x4) >= (*(s32*)((char*)(arg0) + 0x80) - 1)) {
        *(s32*)((char*)(arg1) + 0x4) = -1;
    }
}
void EntityBehavior_ScriptedPath_63D40(void *arg0, void *arg1) {
    u32 temp_v0;

    *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))(arg0);
    temp_v0 = *(s32*)((char*)(arg0) + 0x80);
    if (*(s32*)((char*)(arg1) + 0x4) == ((s32) (temp_v0 + (temp_v0 >> 0x1F)) >> 1)) {
        *(s32*)((char*)(arg1) + 0x1c) = 0x12;
    }
    if (*(s32*)((char*)(arg1) + 0x4) >= (*(s32*)((char*)(arg0) + 0x80) - 1)) {
        *(s32*)((char*)(arg1) + 0x4) = -1;
    }
}
void EntityBehavior_ScriptedPath_63DC8(void *arg0, void *arg1) {
    s32 temp_v1;

    temp_v1 = *(s32*)((char*)(arg0) + 0xfc);
    if (temp_v1 == 0x14) {
        *(s32*)((char*)(arg1) + 0x1c) = 0x12;
        *(s32*)((char*)(arg1) + 0x10) = 0;
        *(s32*)((char*)(arg1) + 0x30) = 3;
        return;
    }
    if (temp_v1 == *(s32*)((char*)(arg0) + 0x80)) {
        (*(void(**)())(*(void**)(arg0) + 0x16c))(arg0);
        *(s32*)((char*)(arg0) + 0x44) = 1;
        if (rand() & 1) {
            (*(void(**)())(*(void**)(arg0) + 0x30))(arg0, 0xB);
        }
    }
};
void EntityBehavior_ScriptedPath_63E68(void **arg0, void *arg1) {
    *(s32*)((char*)arg1 + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))(arg0);
    if (*(s32*)((char*)arg1 + 0x4) == 0) {
        *(s32*)((char*)arg1 + 0x1c) = (rand() & 1) ? 2 : 1;
        *(s32*)((char*)arg1 + 0x20) = 2;
    }
}
extern s32 D_80089D90;
void func_80063ED4(void *s0, void *s1) {
    if (*(s32 *)((char *)s0 + 0xFC) == 0) {
        if (Entity__InitWithArgs(s0, 0, 0, 5, 0) != 0) {
            if ((rand() & 1) != 0) {
                (*(void (**)(void *, s32))(*(s32 *)s0 + 0xBC))(s0, (s32)&D_80089D90);
            }
            (*(void (**)(void *, s32, s32, s32))(*(s32 *)(*(s32 *)((char *)s0 + 0x100)) + 0xD4))(*(void **)((char *)s0 + 0x100), *(s32 *)((char *)s0 + 0x50), 0, 0);
        }
    } else {
        if (*(s32 *)((char *)s0 + 0x84) == 0) {
            do {
                *(s32 *)((char *)s0 + 0x88) = (*(s32 (**)(void *, s32, s32))(*(s32 *)s0 + 0x134))(s0, *(s32 *)((char *)s0 + 0x88), 0);
            } while (++*(s32 *)((char *)s0 + 0x84) < 24);
        }
    }
    if (*(s32 *)((char *)s0 + 0x84) >= 25) {
        (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0xC4))(s0, -20, 0);
        (*(void (**)(void *, s32))(*(s32 *)(*(s32 *)((char *)s0 + 0x94)) + 0x130))(*(void **)((char *)s0 + 0x94), 1);
    }
    if (*(s32 *)((char *)s0 + 0xFC) == 50) {
        (*(void (**)(void *, s32))(*(s32 *)s0 + 0x30))(s0, 10);
    } else if (*(s32 *)((char *)s0 + 0xFC) == 12) {
        *(s32 *)((char *)s1 + 0x10) = 0;
        *(s32 *)((char *)s1 + 0x1C) = 21;
    }
    (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0x48))(s0, 1, (s32)&D_80089DE4);
}
void func_80064078(void *s0, void *a1) {
    if (*(s32 *)((char *)s0 + 0x7C) == 0) {
        if (*(s32 *)((char *)s0 + 0xF4) != 0) {
            FaceTowards(s0, (void **)*(s32 *)((char *)s0 + 0x94), 1, 0, 0);
            (*(void (**)(void *, s32))(*(s32 *)s0 + 0x128))(s0, 1);
            (*(void (**)(void *, s32))(*(s32 *)(*(s32 *)((char *)s0 + 0x94)) + 0x130))(*(void **)((char *)s0 + 0x94), 1);
        } else {
            if (*(s32 *)((char *)s0 + 0x84) == 0) {
                do {
                    *(s32 *)((char *)s0 + 0x88) = (*(s32 (**)(void *, s32, s32))(*(s32 *)s0 + 0x134))(s0, *(s32 *)((char *)s0 + 0x88), 0);
                } while (++*(s32 *)((char *)s0 + 0x84) < 24);
            }
        }
    } else {
        if (*(s32 *)((char *)s0 + 0x84) == 0) {
            *(s32 *)((char *)a1 + 0x10) = 0;
            *(s32 *)((char *)a1 + 0x1C) = 22;
        } else if (*(s32 *)((char *)s0 + 0x84) == *(s32 *)((char *)s0 + 0x80) - 1) {
            *(s32 *)((char *)a1 + 0x10) = 0;
            *(s32 *)((char *)a1 + 0x30) = 18;
            (*(void (**)(void *, s32))(*(s32 *)s0 + 0x30))(s0, 10);
        }
    }
    (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0x48))(s0, 1, (s32)&D_80089DE4);
}
void EntityBehavior_ScriptedPath_641C0(void *arg0, void *arg1) {
    *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))();
    if (*(s32*)((char*)(arg1) + 0x4) == ((*(s32*)((char*)(arg1) + 0x4) / 10) * 0xA)) {
        *(s32*)((char*)(arg1) + 0x1c) = 3;
    }
    if (*(s32*)((char*)(arg0) + 0xfc) == *(s32*)((char*)(arg0) + 0x80)) {
        (*(void(**)())(*(void**)(arg0) + 0x128))(arg0, 1);
    }
    if (*(s32*)((char*)(arg0) + 0x7c) == 1) {
        (*(void(**)())(*(void**)(arg0) + 0xc4))(arg0, -0x80, 1);
    }
};
void EntityBehavior_PlayerStateReact_64294(void *arg0, void *arg1) {
    s32 temp_ret;
    void **temp_a0;

    if (*(s32*)((char*)(arg0) + 0xfc) == 0) {
        temp_a0 = *(s32*)((char*)(arg0) + 0x94);
        if ((*(s32(**)())(*(void**)(temp_a0) + 0x200))(temp_a0) != 7) {
            *(s32*)((char*)(arg0) + 0x44) = 0xB;
        }
    }
    *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))(arg0);
    if (*(s32*)((char*)(arg1) + 0x4) == ((*(s32*)((char*)(arg1) + 0x4) / 10) * 0xA)) {
        *(s32*)((char*)(arg1) + 0x1c) = 0xE;
    }
    if (*(s32*)((char*)(arg0) + 0xfc) == *(s32*)((char*)(arg0) + 0x80)) {
        (*(void(**)())(*(void**)(arg0) + 0x128))(arg0, 1);
        if ((*(s32*)((char*)(arg0) + 0x44) != 0) && !(rand() & 1)) {
            (*(void(**)())(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089E38);
            (*(void(**)())(*(void**)(arg0) + 0xcc))(arg0, 0x800, 0);
        }
        temp_ret = rand();
        if (temp_ret == ((temp_ret / 3) * 3)) {
            (*(void(**)())(*(void**)(arg0) + 0x44))(arg0, 0, &D_80089C7C);
        }
    }
    if (*(s32*)((char*)(arg0) + 0x7c) != 0) {
        (*(void(**)())(*(void**)(arg0) + 0xc4))(arg0, -0x80, 1);
    }
};
void EntityBehavior_LoopRandomHeading_64450(void *arg0) {
    s32 fc = *(s32*)((char*)arg0 + 0xFC);
    if (fc == 0) {
        (*(void(**)(void*, s32))(*(s32*)arg0 + 0x128))(arg0, 3);
    } else if (fc == *(s32*)((char*)arg0 + 0x80)) {
        (*(void(**)(void*, s32))(*(s32*)arg0 + 0x128))(arg0, 1);
    }
    if (*(s32*)((char*)arg0 + 0x7C) == 1) {
        (*(void(**)(void*, s32, s32))(*(s32*)arg0 + 0xC4))(arg0, -0x80, 0);
    }
}
void EntityBehavior_ScriptedPath_644E8(void *arg0, void *arg1) {
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 var_a1;
    s32 var_a1_2;

    temp_v1 = *(s32*)((char*)(arg0) + 0xfc);
    if (temp_v1 == 0) {
        temp_v0 = rand();
        var_a1 = temp_v0;
        if (temp_v0 < 0) {
            var_a1 = temp_v0 + 3;
        }
        (*(void(**)())(*(void**)(arg0) + 0x128))(arg0, temp_v0 - ((var_a1 >> 2) * 4));
        return;
    }
    if ((temp_v1 % (s32) *(s32*)((char*)(arg0) + 0x80)) == 0) {
        temp_v0_2 = rand();
        var_a1_2 = temp_v0_2;
        if (temp_v0_2 < 0) {
            var_a1_2 = temp_v0_2 + 3;
        }
        (*(void(**)())(*(void**)(arg0) + 0x128))(arg0, temp_v0_2 - ((var_a1_2 >> 2) * 4));
        *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))(arg0);
        *(s32*)((char*)(arg1) + 0x1c) = 0x16;
        *(s32*)((char*)(arg1) + 0x20) = 2;
        *(s32*)((char*)(arg1) + 0x24) = 0x40;
        *(s32*)((char*)(arg1) + 0x28) = 0x20;
    }
};
void func_80064618(void *s0) {
    if (*(s32 *)((char *)s0 + 0xF4) != 0) {
        if (Entity__InitWithArgs(s0, 0, 0, 10, 0) != 0) {
            (*(void (**)(void *, s32, s32, s32))(*(s32 *)(*(s32 *)((char *)s0 + 0x100)) + 0xD4))(*(void **)((char *)s0 + 0x100), *(s32 *)((char *)s0 + 0x50), 7, 0);
            (*(void (**)(void *))(*(s32 *)s0 + 0x160))(s0);
            (*(void (**)(void *))(*(s32 *)(*(s32 *)((char *)s0 + 0x94)) + 0x21C))(*(void **)((char *)s0 + 0x94));
        }
    }
    (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0xC4))(s0, -30, 1);
}
void EntityBehavior_FleeFast_646D8(void *arg0, void *arg1) {
    void *var_a2;
    s32 var_a1;
    s32 temp_v1;
    u32 temp_v0;
    void **temp_a0;
    void **temp_a0_2;

    if (*(s32*)((char*)(arg0) + 0xfc) == 0) {
        (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0xcc))(arg0, -0x200, 0);
    }
    *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))(arg0);
    temp_v0 = *(s32*)((char*)(arg0) + 0x80);
    if (*(s32*)((char*)(arg0) + 0x84) == ((s32)(temp_v0 + (temp_v0 >> 0x1F)) >> 1)) {
        *(s32*)((char*)(arg1) + 0x1c) = 7;
        *(s32*)((char*)(arg1) + 0x20) = -2;
        *(s32*)((char*)(arg1) + 0x30) = 3;
        *(s32*)((char*)(arg1) + 0x34) = -2;
    }
    if (*(s32*)((char*)(arg0) + 0xfc) >= 0x33) {
        (*(void(**)())(*(void**)(arg0) + 0x44))(arg0, 0, &D_80089CAC);
    }
    if (*(s32*)((char*)(arg0) + 0xfc) >= 0x30D) {
        FaceTowards(arg0, *(s32*)((char*)(arg0) + 0x94), 1, 0, 0);
        temp_v1 = *(s32*)((char*)(arg0) + 0xfc);
        if (temp_v1 >= 0x790) {
            var_a2 = &D_80089E14;
        } else if (temp_v1 >= 0x78B) {
            var_a2 = &D_80089DE4;
        } else if (temp_v1 >= 0x786) {
            var_a2 = &D_80089DD8;
        } else {
            var_a2 = &D_80089E20;
            if (temp_v1 >= 0x781) {
                var_a2 = &D_80089DCC;
            }
        }
        (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x48))(arg0, 1, var_a2);
        if (*(s32*)((char*)(arg0) + 0xfc) < 0x7D0) {
            var_a1 = -0x40;
            (*(void(**)())(*(void**)(arg0) + 0xc4))(arg0, var_a1, 0);
        } else {
            *(s32*)((char*)(arg0) + 0x44) = 1;
        }
    } else {
        var_a1 = -0x100;
        (*(void(**)())(*(void**)(arg0) + 0xc4))(arg0, var_a1, 0);
    }
    if ((*(s32*)((char*)(arg0) + 0xf4) != 0) && (*(s32*)((char*)(arg0) + 0x44) == 0)) {
        temp_a0 = *(void***)((char*)(arg0) + 0x94);
        *(s32*)((char*)(arg0) + 0x44) = 0xC;
        (*(void(**)())(*(void**)(temp_a0) + 0x130))(temp_a0, 1);
        (*(void(**)())(*(void**)(arg0) + 0x30))(arg0, 0xA);
    }
    if (*(s32*)((char*)(arg0) + 0x44) == 0xC) {
        temp_a0_2 = *(void***)((char*)(arg0) + 0x94);
        (*(void(**)())(*(void**)(temp_a0_2) + 0xc4))(temp_a0_2, 0x100, 0);
    }
}
void EntityBehavior_SpawnSubObject_64928(void **s0) {
    if (*(s32*)((char*)s0 + 0xfc) == 0x2BC) {
        s32 r = rand();
        s32 q = r / 3;
        if (r == q * 3) {
            *(s32*)((char*)s0 + 0x44) = 0xB;
        }
    }
    if (*(s32*)((char*)s0 + 0x44) == 0xB) {
        if (*(s32*)((char*)s0 + 0xfc) < 0x3FC) {
            (*(void(**)())(*(void**)(s0) + 0x44))(s0, 0, &D_80089CB8);
            (*(void(**)())(*(void**)(s0) + 0xcc))(s0, 0x1E, 0);
        }
        if (*(s32*)((char*)s0 + 0xfc) == 0x3A2) {
            (*(void(**)())(*(void**)(s0) + 0x30))(s0, 0xA);
        }
    } else {
        s32 v = *(s32*)((char*)s0 + 0xfc);
        if (v == 0x64 || v == 0x320) {
            s32 r = rand();
            s32 q = r / 5;
            if (r == q * 5) {
                void **a0 = *(void***)((char*)s0 + 0x4c);
                (*(void(**)())(*(void**)(a0) + 0x138))(a0, 4, 0);
            }
        }
    }
    (*(void(**)())(*(void**)(s0) + 0xc4))(s0, -0x1E, 0);
}
void EntityBehavior_PlaySfx_64AA4(void *arg0) {
    (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089DCC);
    if ((u32) (*(s32*)((char*)(arg0) + 0xfc) - 0xC9) < 0x63U) {
        (*(void(**)())(*(void**)(arg0) + 0xcc))(arg0, -0x20, 0);
    }
}
void EntityBehavior_BlinkVisible(void **arg0) {
    (*(void(**)())(*(void**)(arg0) + 0x60))(arg0, (rand() % 20) == 0);
};
INCLUDE_ASM("asm/lsdde/nonmatchings/Entity", func_80064B80);
void EntityBehavior_PlaySfx_64CA4(void **arg0) {
    EntityBehavior_SfxPrereq();
    (*(void(**)())(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089E38);
};
void EntityBehavior_PlaySfx_64CEC(void **arg0) {
    (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089DD8);
    (*(void(**)())(*(void**)(arg0) + 0xc4))(arg0, -0xA, 0);
}
void EntityBehavior_OnPlayerClose_64D48(void *arg0) {
    (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089E44);
    (*(void(**)())(*(void**)(arg0) + 0x130))(arg0);
    if ((*(s32*)((char*)(arg0) + 0x44) == 0) && ((*(s32(**)())(*(void**)(arg0) + 0x144))(arg0, *(s32*)((char*)(arg0) + 0x94)) < 0x800)) {
        *(s32*)((char*)(arg0) + 0x44) = 0xA;
        *(s32*)((char*)(arg0) + 0xfc) = 0;
    }
    if (*(s32*)((char*)(arg0) + 0x44) == 0xA) {
        if (*(s32*)((char*)(arg0) + 0xfc) < 0x2D) {
            (*(void(**)())(*(void**)(arg0) + 0x44))(arg0, 0, &D_80089D00);
        }
        if (*(s32*)((char*)(arg0) + 0xfc) >= 0x1F5) {
            *(s32*)((char*)(arg0) + 0x44) = 0;
        }
    }
}
void func_80064E34(void *s0, void *s1) {
    if (*(s32 *)((char *)s0 + 0xFC) == 0) {
        if ((*(s32 (**)(void *))(*(s32 *)(*(s32 *)((char *)s0 + 0x94)) + 0x200))(*(void **)((char *)s0 + 0x94)) == 5) {
            *(s32 *)((char *)s0 + 0x44) = 11;
        }
    }
    if (*(s32 *)((char *)s0 + 0x44) != 0 && *(s32 *)((char *)s0 + 0xFC) >= 2160) {
        s32 v1 = *(s32 *)((char *)s0 + 0xFC);
        if ((u32)(v1 - 2160) < 401) {
            if (v1 == 2160) {
                (*(void (**)(void *))(*(s32 *)s0 + 0x130))(s0);
                *(s32 *)((char *)s1 + 0x1C) = -2;
                *(s32 *)((char *)s1 + 0x30) = -2;
                *(s32 *)((char *)s1 + 0x44) = -2;
            } else if ((u32)(v1 - 2550) < 10) {
                *(s32 *)((char *)s1 + 0x1C) = 5;
                *(s32 *)((char *)s1 + 0x20) = -2;
            } else if (v1 == 2560) {
                (*(void (**)(void *))(*(s32 *)s0 + 0x12C))(s0);
                *(s32 *)((char *)s1 + 0x4) = 1;
            }
        } else if (v1 >= 2563) {
            if (v1 >= 2801) {
                (*(void (**)(void *, s32, s32))(*(s32 *)s0 + 0xCC))(s0, -32, 0);
            }
            EntityBehavior_OrbitHelper(s0, s1, 481, 4000, -60);
        }
    } else {
        EntityBehavior_OrbitHelper(s0, s1, 481, 2180, -60);
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/Entity", EntityBehavior_OrbitHelper);
void EntityBehavior_Thunk_60D80(void) {
    func_80060D80();
}
void EntityBehavior_AmbientIdle_650F4(void **arg0) {
    s32 r00 = rand();
    s32 r01 = r00 / 3;
    if (r00 != r01 * 3) {
        s32 r10 = rand();
        s32 r11 = r10 / 3;
        s32 *var_a2 = &D_80089C70;
        if (r10 != r11 * 3) {
            var_a2 = &D_80089C64;
        }
        (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x44))(arg0, 0, var_a2);
    }
}
void EntityBehavior_PlaySfx_6519C(void **arg0) {
    (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089E38);
}
void EntityBehavior_PlaySfx_651D0(void **arg0) {
    (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089E38);
}
void EntityBehavior_PlaySfx_65204(void **arg0) {
    (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089DCC);
}
void EntityBehavior_RisingMove_65238(void *arg0) {
    s32 temp_ret;
    void **temp_a0;
    void **temp_a0_2;

    if (*(s32*)((char*)(arg0) + 0xfc) == 0) {
        temp_ret = rand();
        if (temp_ret == ((temp_ret / 5) * 5)) {
            *(s32*)((char*)(arg0) + 0x44) = 0xB;
        }
    }
    (*(void(**)())(*(void**)(arg0) + 0x130))(arg0);
    (*(void(**)())(*(void**)(arg0) + 0xc4))(arg0, 0x64, 0);
    if (*(s32*)((char*)(arg0) + 0xfc) == 0x3E8) {
        (*(void(**)())(*(void**)(arg0) + 0x16c))(arg0);
        *(s32*)((char*)(arg0) + 0x44) = 1;
    }
    if ((*(s32*)((char*)(arg0) + 0x44) == 0xB) && (*(s32*)((char*)(arg0) + 0xfc) >= 0x12D)) {
        temp_a0 = *(s32*)((char*)(arg0) + 0x94);
        (*(void(**)())(*(void**)(temp_a0) + 0x94))(temp_a0, 0, 2);
        temp_a0_2 = *(s32*)((char*)(arg0) + 0x94);
        (*(void(**)())(*(void**)(temp_a0_2) + 0x94))(temp_a0_2, 0, 7);
    }
};
void EntityBehavior_FleeFast_6536C(void *arg0, void *arg1) {
    u32 temp_v0;

    if (((*(s32*)((char*)(arg0) + 0xfc) == 0) && !(rand() & 3)) || (*(s32*)((char*)(arg0) + 0xfc) == 0xE10)) {
        (*(void(**)())(*(void**)(arg0) + 0x160))(arg0);
        *(s32*)((char*)(arg0) + 0x44) = 1;
    }
    (*(void(**)())(*(void**)(arg0) + 0x48))(arg0, 1, &D_80089E44);
    *(s32*)((char*)(arg1) + 0x10) = (*(s32(**)())(*(void**)(arg0) + 0x148))(arg0);
    temp_v0 = *(s32*)((char*)(arg0) + 0x80);
    if (((s32) *(s32*)((char*)(arg1) + 0x4) % (s32) ((s32) (temp_v0 + (temp_v0 >> 0x1F)) >> 1)) == 0) {
        *(s32*)((char*)(arg1) + 0x1c) = 0xA;
        *(s32*)((char*)(arg1) + 0x20) = 1;
    }
    (*(void(**)())(*(void**)(arg0) + 0xc4))(arg0, -0xA, 0);
};
void EntityBehavior_AmbientIdle_654A0(void *arg0) {
    s32 *ptr = &D_80089E80;

    FaceTowards(arg0, *(s32*)((char*)(arg0) + 0x94), 1, 0, 0);
    (*(void(**)(void*, s32, s32*))(*(void**)(arg0) + 0x48))(arg0, 1, ptr);
    (*(void(**)())(*(void**)(arg0) + 0xc4))(arg0, -0x1E, 1);
}
void EntityBehavior_JitterMove_65514(void *arg0) {
    if (*(s32*)((char*)(arg0) + 0xfc) == 0) {
        *(s32*)((char*)(arg0) + 0x44) = (s32) ((rand() % 2) + 0xA);
    }
    (*(void(**)())(*(void**)(arg0) + 0x130))(arg0);
    if (*(s32*)((char*)(arg0) + 0xfc) >= 0xC9) {
        FaceTowards(arg0, *(s32*)((char*)(arg0) + 0x94), 1, 0, 0);
        if (*(s32*)((char*)(arg0) + 0x44) == 0xA) {
            (*(void(**)())(*(void**)(arg0) + 0xd0))(arg0, -0x200, 0);
        }
    }
};
