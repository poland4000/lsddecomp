#include "common.h"

extern s32 gVtable_class_65650;

void *Get_vtable_ActorBase();                              /* extern */
void *Get_vtable_class_65650();                              /* extern */
s32 func_80065C5C(void);                                /* extern */
void func_80065CEC();                                  /* extern */
s32 func_8004468C(void *);                               /* extern */
s32 func_80065E1C(void);                                /* extern */
void func_80065F2C();                                  /* extern */
void *BMemAlloc(s32);                               /* extern */
void *ActorBase__Create(void);                               /* extern */
void BMemFree(void *);                              /* extern */
extern s32 gVtable_class_65650;
void *New_class_65650(s32 arg0, s32 arg1) {
    void *s0 = BMemAlloc(0x98);

    if (s0 != 0) {
        if ((*(s32(**)(void*, s32, s32))((char *)Get_vtable_class_65650() + 0x8))(s0, arg0, arg1) != 0) {
            return s0;
        }
        BMemFree(s0);
    }
    return 0;
}
void *class_65650__Constructor(void *arg0, s32 arg1, s32 arg2) {
    if ((*(s32(**)())((char*)Get_vtable_ActorBase() + 0x8))(arg0) != 0) {
        *(s32*)((char*)(arg0)) = Get_vtable_class_65650();
        *(s32*)((char*)(arg0) + 0x58) = arg2;
        *(s32*)((char*)(arg0) + 0x5c) = 0;
        *(s32*)((char*)(arg0) + 0x68) = 0;
        *(s32*)((char*)(arg0) + 0x70) = 0;
        *(s32*)((char*)(arg0) + 0x94) = 0;
        if ((*(s32(**)())(*(void**)(arg0) + 0xf4))(arg0, arg1) == 0) {
            (*(void(**)())(*(void**)(arg0) + 0x10))(arg0, *(s32*)((char*)(arg0) + 0x5c));
            (*(void(**)())(*(void**)(arg0) + 0x40))(arg0);
            return arg0;
        }
        (*(void(**)())((char*)Get_vtable_ActorBase() + 0xc))(arg0);
        /* Duplicate return node #4. Try simplifying control flow for better match */
        return NULL;
    }
    return NULL;
}
void class_65650__Destructor(void *arg0) {
    (*(void(**)(void*))(*(s32*)arg0 + 0xF8))(arg0);
    (*(void(**)(void*))((char*)Get_vtable_ActorBase() + 0xC))(arg0);
}
void class_65650__HandleMessage(void *arg0, u16 **arg1, s32 arg2) {
    (*(void(**)(void*, u16**, s32))((char*)Get_vtable_ActorBase() + 0x38))(arg0, arg1, arg2);
    if ((**arg1 == 0x5F03) && (arg2 == 1) && (*(s32*)((char*)(arg0) + 0x60) == 0)) {
        (*(void(**)(void*))(*(void**)arg0 + 0x4))(arg0);
    }
}
void class_65650__InitState(void *arg0) {
    void *temp_v0;
    (*(void(**)(void*, s32))((char*)Get_vtable_ActorBase() + 0x60))(arg0, 0);
    (*(void(**)(void*, s32))(*(void**)arg0 + 0xf0))(arg0, 1);
    (*(void(**)(void*, s32))(*(void**)arg0 + 0xe4))(arg0, 0x12C);
    (*(void(**)(void*))(*(void**)arg0 + 0x114))(arg0);
    (*(void(**)(void*, s32))(*(void**)arg0 + 0x10c))(arg0, 0x41);
    (*(void(**)(void*))(*(void**)arg0 + 0x130))(arg0);
    (*(void(**)(void*, s32))(*(void**)arg0 + 0x128))(arg0, 0);
    temp_v0 = *(s32*)((char*)(arg0) + 0x68);
    if (temp_v0 != NULL) {
        SceneNode__SetParent(arg0, *(s32*)((char*)(temp_v0) + 0x20));
    }
}
void class_65650__Spawn(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    if (*(s32*)((char*)arg0 + 0xC) == 0) {
        void *p = Get_vtable_ActorBase();
        (*(void(**)(void*, s32, s32))((char*)p + 0x4C))(arg0, arg3, arg4);
        if (arg2 != 0 && *(s32*)((char*)arg0 + 0x50) == 0) {
            (*(void(**)(void*, s32))(*(s32*)arg0 + 0x10))(arg0, arg2);
        }
        (*(void(**)(void*, s32))(*(s32*)arg0 + 0x13C))(arg0, arg1);
    }
}
void class_65650__Despawn(void *arg0)
{
    void *tmp;
    s32 a1;

    if (*(s32 *)((char *)arg0 + 0xc) != 0) {
        (*(void (**)(void *))((char *)*(void **)arg0 + 0x140))(arg0);
        a1 = *(s32 *)((char *)arg0 + 0x50);
        if (a1 != 0) {
            (*(void (**)(void *, s32))((char *)*(void **)arg0 + 0x14))(arg0, a1);
        }
        tmp = Get_vtable_ActorBase();
        (*(void (**)(void *))((char *)tmp + 0x50))(arg0);
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/55DD4", func_80065A5C);
INCLUDE_ASM("asm/lsdde/nonmatchings/55DD4", func_80065AE0);
void class_65650__OnEvent(void *arg0, s32 arg1, s32 arg2) {
    if (arg2 == 2) {
        (*(void(**)())(*(void **)arg0 + 0x108))();
    }
    if (arg2 == 4) {
        (*(void(**)(void *))((char *)*(void **)arg0 + 0x4))(arg0);
    }
}
void class_65650__SetField64(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x64) = arg1;
};
s32 class_65650__TryStartA(void *arg0) {
    if (*(s32 *)((char *)arg0 + 0x5C) != 0) {
        return 0;
    }
    return func_80065C5C();
}
void class_65650__TryStopA(void *arg0) {
    if (*(s32*)((char*)(arg0) + 0x5c) != 0) {
        func_80065CEC();
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/55DD4", func_80065C5C);
INCLUDE_ASM("asm/lsdde/nonmatchings/55DD4", func_80065CEC);
INCLUDE_ASM("asm/lsdde/nonmatchings/55DD4", func_80065D64);
s32 class_65650__TryStartB(void *arg0) {
    if (*(s32 *)((char *)arg0 + 0x70) != 0) {
        return 0;
    }
    return func_80065E1C();
}
void class_65650__TryStopB(void *arg0) {
    if (*(s32*)((char*)(arg0) + 0x70) != 0) {
        func_80065F2C();
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/55DD4", func_80065E1C);
INCLUDE_ASM("asm/lsdde/nonmatchings/55DD4", func_80065F2C);
INCLUDE_ASM("asm/lsdde/nonmatchings/55DD4", func_80065FD8);
void class_65650__SelectTickHandler(void *arg0, s32 arg1) {
    s32 temp_a1;

    temp_a1 = arg1 & 0xFF;
    switch (temp_a1) {                              /* irregular */
    case 0x41:
        *(s32*)((char*)(arg0) + 0x78) = (s32) *(s32*)((char*)(*(void**)(arg0)) + 0x118);
        return;
    case 0x42:
        *(s32*)((char*)(arg0) + 0x78) = (s32) *(s32*)((char*)(*(void**)(arg0)) + 0x11c);
        return;
    case 0x43:
        *(s32*)((char*)(arg0) + 0x78) = (s32) *(s32*)((char*)(*(void**)(arg0)) + 0x120);
        return;
    }
};
void class_65650__SetFlag8C(void *arg0) {
    *(s32*)((char*)(arg0) + 0x8c) = 1;
};
void class_65650__ClearFlag8C(void *arg0) {
    *(s32*)((char*)(arg0) + 0x8c) = 0;
};
void func_80066150(void *arg0) {
    void **temp_a0;

    (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xc4))(arg0, -0x1E, 0);
    if (*(s32*)((char*)(arg0) + 0x64) == 1) {
        temp_a0 = *(void***)((char*)(arg0) + 0x68);
        if (temp_a0 != NULL) {
            (*(void(**)())(*(void**)(temp_a0) + 0x88))(temp_a0, 6);
        }
    }
}
void class_65650__NopA(void) {
}
void class_65650__NopB(void) {
}
void class_65650__PlayCmd6E(void *arg0, s32 arg1) {
    void **temp_a0;

    temp_a0 = *(s32*)((char*)(arg0) + 0x58);
    if (temp_a0 != NULL) {
        (*(void(**)())(*(void**)(temp_a0) + 0x80))(temp_a0, arg1, 0x6E, 0x6E);
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/55DD4", func_80066214);
void class_65650__SetFlag90(void *arg0) {
    *(s32*)((char*)(arg0) + 0x90) = 1;
};
void class_65650__ClearFlag90(void *arg0) {
    *(s32*)((char*)(arg0) + 0x90) = 0;
};
INCLUDE_ASM("asm/lsdde/nonmatchings/55DD4", func_800662BC);
INCLUDE_ASM("asm/lsdde/nonmatchings/55DD4", func_80066340);
void class_65650__AttachPair(void *arg0, void **arg1) {
    if (arg1 != NULL) {
        (*(void(**)())(*(void**)(arg1) + 0x10))(arg1, arg0);
        (*(void(**)())(*(void**)(arg0) + 0x10))(arg0, arg1);
        *(s32*)((char*)(arg0) + 0x94) = arg1;
    }
};
void class_65650__DetachPair(void *arg0) {
    void **temp_a0;

    temp_a0 = *(s32*)((char*)(arg0) + 0x94);
    if (temp_a0 != NULL) {
        (*(void(**)())(*(void**)(temp_a0) + 0x14))(temp_a0, arg0);
        (*(void(**)())(*(void**)(arg0) + 0x14))(arg0, *(s32*)((char*)(arg0) + 0x94));
        *(s32*)((char*)(arg0) + 0x94) = NULL;
    }
};
void *Get_vtable_class_65650(void) {
    return &gVtable_class_65650;
};
INCLUDE_ASM("asm/lsdde/nonmatchings/55DD4", func_80066828);
