#include "common.h"

typedef enum DreamColors {
    DREAM_COLOR_BLACK, DREAM_COLOR_BLUE,
    DREAM_COLOR_GREEN, DREAM_COLOR_CYAN,
    DREAM_COLOR_RED, DREAM_COLOR_PINK,
    DREAM_COLOR_YELLOW, DREAM_COLOR_WHITE,
} DreamColors;
typedef struct { s8 b[10]; } S10Copy;
typedef struct { s8 b[8]; s16 c; } S82Copy;
typedef struct { s16 bank; s16 entry; } CinematicCall;

extern s32 gDefaultSpawnAngles;
extern s32 gLinkAngleBlocks;
extern s32 gLinkExitDelta;
extern u8 gStageLinkAngles[];
extern u8 gStageLinkAngleBlocks[];
extern s32 gStageStaticLinkHeadings[];
extern s32 D_80088858[];
extern s32 gStageTunnelLinkHeadings[];
extern s32 D_80088BDC[];
extern s32 gTunnelSpawnTable;
extern s32 gTunnelTriggerTable;
extern s32 gTunnelTableLengths;
extern s32 gTunnelLinkStartPos1;
extern s32 gTunnelLinkStartPos2;
extern s32 gTunnelLinkStartPos3;
extern s32 gTunnelLinkStartPos4;
extern s32 gInitialField178;
extern s32 gInstantTeleportersEnabled;
extern s32 gLinkAngleBlockFallback;
extern s32 gSpecialDayMood;
extern s32 gLinkSourceStage;
extern s32 gLinkDestStage;
extern s32 *gpNavChallengesComplete;
extern s32 *gpDinamicLinkPenalty;
struct vtable_DreamSys *Get_vtable_DreamSys(void);
s32 TestForStaticLink(void *, s32, s32);
s32 IsFacingLinkDirection(u8 *a0, s32 a1);
void GetPlayerPosition(void *arg0, void *arg1);
s32 TestStaticLinkByStage(s32 *a0, s32 *a1, u8 *a2);
void *BMemAlloc(s32 size);
void func_8001E600(s32, s32*, s32, s32);               /* extern */
void Vec3InRange(s32*, s32, s32);                     /* extern */
extern s32 D_80087EE0;
extern s32 D_80087EE8;
extern s32 gCameraDriftRates[];
extern s32 gCameraDriftLimits[];
void SlotAlloc__Release(s32, void *);                       /* extern */
s32 Test4FallingLink(void *, s32,s32, s32);             /* extern */
void *GetLinkAngleBlockPtr(void);                          /* extern */
void DreamSys__ApplyPositionDelta(void*, s32*, void*);                       /* extern */
extern s32 gTunnelAnglesA;
extern s32 gTunnelAnglesB;
extern s8 gDreamColorTable[][3];
extern s32 gFallingLinkChunkId;
s32 GetRandomSpawnFromStage(s32, s32, s32);               /* extern */
s32 GenerateInitialSpawn(void*, s32*, s32*, s32);          /* extern */
extern s32 gTeleporterTriggerTable;
extern s32 gTeleporterSpawnTable;
extern s32 gTeleporterTableLengths;
extern s32 gStaircaseTriggerTable;
extern s32 gStaircaseSpawnTable;
extern s32 gStaircaseTableLengths;
s32 rand(void);
s32 *IsDaySpecial(CinematicCall *, s32);
extern s16 SPECIAL_DAYS[];
void *New_DreamSys(s32 arg0, s32 arg1, s32 arg2) {
    void *s0 = BMemAlloc(0x928);

    if (s0 != 0) {
        (*(void(**)(void*, s32, s32, s32))((char *)Get_vtable_DreamSys() + 0x8))(s0, arg0, arg1, arg2);
        return s0;
    }
    return 0;
}
void DreamSys__DreamSys(void *arg0, void *arg1, s32 arg2, s32 arg3) {
    (*(void(**)(void*))((char*)Get_vtable_ActorBase() + 0x8))(arg0);
    *(s32*)arg0 = (s32)Get_vtable_DreamSys();
    *(s32*)((char*)arg0 + 0x58) = arg2;
    *(s32*)((char*)arg0 + 0x5C) = arg3;
    *(s32*)((char*)arg0 + 0x64) = 0;
    *(s32*)((char*)arg0 + 0x60) = (s32)arg1;
    {
        s32 r = ((s32(**)(void*, s32))*(s32**)arg1)[0x20](arg1, 0);

        ((void(**)(void*, s32))*(s32**)arg0)[0x4](arg0, r);
    }
    ((void(**)(void*, s32))*(s32**)arg0)[0x41](arg0, -1);
    *(s32*)((char*)arg0 + 0x70) = 1;
    *(s32*)((char*)arg0 + 0x6C) = 0;
    *(s32*)((char*)arg0 + 0x878) = 1;
    ((void(**)(void*))*(s32**)arg0)[0x66](arg0);
    ((void(**)(void*))*(s32**)arg0)[0x10](arg0);
}
void DreamSys__ResetDreamState(void *arg0) {
    (*(void(**)(void*, s32))(*(void**)(arg0) + 0x60))(arg0, 0);
    (*(void(**)())(*(void**)(arg0) + 0x44))(arg0, 1, &gDefaultSpawnAngles);
    *(s32*)((char*)(arg0) + 0x80) = 0;
    *(s32*)((char*)(arg0) + 0x98) = 0;
    *(s32*)((char*)(arg0) + 0xcc) = 0;
    *(s32*)((char*)(arg0) + 0x908) = 0;
    *(s32*)((char*)(arg0) + 0x90c) = 0;
    *(s32*)((char*)(arg0) + 0x910) = 0;
    *(s32*)((char*)(arg0) + 0x78) = 0;
    *(s32*)((char*)(arg0) + 0x924) = 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", DreamSys__OnLinkArrive);
void DreamSys__Destructor(void *arg0) {
    void **temp_a0 = *(void ***)((char *)arg0 + 0x4c);
    (*(void(**)(void *))((char *)*(void **)temp_a0 + 0xf0))(temp_a0);
    (*(void(**)(void *, void *))((char *)*(void **)arg0 + 0x14))(arg0, *(void **)((char *)arg0 + 0x4c));
    (*(void(**)(void *))((char *)Get_vtable_ActorBase() + 0x50))(arg0);
}
void func_80058B08(void *arg0, s32 arg1) {
    s32 v0;
    s32 *a0;
    s32 r;
    (*(void(**)(void *, s32))((char *)Get_vtable_ActorBase() + 0x88))(arg0, arg1);
    if (arg1 != -2) {
        if (arg1 == -1) {
            v0 = *(u16 *)(*(s32 *)((char *)arg0 + 0x28) + 0x36) & 0x7F;
            *(s32 *)((char *)arg0 + 0xB8) = v0;
            if (v0 >= 0x18) {
                *(s32 *)((char *)arg0 + 0xB8) = 0;
            }
            if (*(s32 *)((char *)arg0 + 0x44) == 0xF && *(s32 *)((char *)arg0 + 0xB8) == 0) {
                *(s32 *)((char *)arg0 + 0xB8) = 2;
            }
            if (*(s32 *)((char *)arg0 + 0x164) == 9) {
                goto be8;
            }
        }
        return;
    }
    a0 = *(s32 **)((char *)arg0 + 0x4C);
    r = (*(s32 *(**)(s32 *, s32))((char *)*(void **)a0 + 0x11C))(a0, *(s32 *)((char *)arg0 + 0x14) + 0x18);
    v0 = *(s32 *)((char *)r + 4);
    if (*(s16 *)((char *)v0 + 0x2C) != 2) {
        goto c28;
    }
be8:
    a0 = *(s32 **)((char *)arg0 + 0x4C);
    r = (*(s32 *(**)(s32 *, s32, s32))((char *)*(void **)a0 + 0x10C))(a0, 0, 0);
    (*(void(**)(void *, s32))((char *)*(void **)arg0 + 0x1D4))(arg0, r);
    return;
c28:
    (*(void(**)(void *))((char *)*(void **)arg0 + 0x224))(arg0);
}
void DreamSys__HandleTriggerEvent(s32 *a0, s32 a1, s32 a2) {
    if (*(s32*)((s8*)a0 + 0x6C) != 0) {
        return;
    }
    if (*(s32*)((s8*)a0 + 0x70) != 0) {
        return;
    }
    if (*(s32*)((s8*)a0 + 0x908) != 0) {
        return;
    }
    switch (a2 - 2) {
    case 0: *(s32*)((s8*)a0 + 0xA0) = 1; break;
    case 1: *(s32*)((s8*)a0 + 0xA0) = 2; break;
    case 2: *(s32*)((s8*)a0 + 0xA4) = 1; break;
    case 3: *(s32*)((s8*)a0 + 0xA4) = 2; break;
    case 4: *(s32*)((s8*)a0 + 0x88) = 1; break;
    case 5:
        if (*(s32*)((s8*)a0 + 0xA0) == 1) {
            ((void(**)(void*, s32))*(s32**)a0)[0x61](a0, 4);
        }
        break;
    case 6: *(s32*)((s8*)a0 + 0x88) = 2; break;
    case 7: case 8: case 9: case 10:
        break;
    case 11: *(s32*)((s8*)a0 + 0x90) = 2; break;
    case 12: *(s32*)((s8*)a0 + 0xA0) = 4; break;
    case 13: *(s32*)((s8*)a0 + 0x90) = 1; break;
    case 14: *(s32*)((s8*)a0 + 0xA0) = 3; break;
    case 15: case 16: case 17: case 18: case 19: case 20: case 21:
        break;
    case 23: *(s32*)((s8*)a0 + 0x74) = 1; break;
    case 23: case 24: case 25: case 26: case 27: case 28: case 29:
    case 30: case 31:
        break;
    case 32:
        ((void(**)(void*, s32))*(s32**)a0)[0x62](a0);
        break;
    case 33: case 34: case 35: case 36: case 37: case 38: case 39:
    case 40: case 41: case 42: case 43: case 44: case 45: case 46:
    case 47:
        break;
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", DreamSys__TimerTick);
void DreamSys__OnChunkCommand(void **arg0, s32 **arg1, s32 arg2) {
    (*(void(**)(void**, s32**, s32))((char*)Get_vtable_ActorBase() + 0x9C))(arg0, arg1, arg2);
    if ((**arg1 & 0xFFF) == 0x114) {
        (*(void(**)(void**, s32**, s32))(*(void**)arg0 + 0x1E4))(arg0, arg1, arg2);
    }
}
void DreamSys__OnInstanceCommand(void **arg0, s32 **arg1, s32 arg2) {
    (*(void(**)(void**, s32**, s32))((char*)Get_vtable_ActorBase() + 0xDC))(arg0, arg1, arg2);
    if ((**arg1 & 0xFFFFF) == 0x1F234) {
        (*(void(**)(void**, s32**, s32))(*(void**)arg0 + 0x1E8))(arg0, arg1, arg2);
    }
}
void DreamSys__WallLink(void *arg0, void *arg1, s32 arg2) {
    s32 v0;
    s32 *a0;
    (*(void(**)(void *, void *, s32))((char *)Get_vtable_ActorBase() + 0xE0))(arg0, arg1, arg2);
    if (arg2 == 4 && *(s32 *)((char *)arg0 + 0x44) == 0) {
        a0 = *(s32 **)((char *)arg0 + 0x4C);
        v0 = (*(s32 *(**)(s32 *, void *))((char *)*(void **)a0 + 0xD4))(a0, arg1);
        *(S82Copy *)((char *)arg0 + 0x16C) = *(S82Copy *)v0;
        v0 = (*(s32(**)(void *, void *))((char *)*(void **)arg0 + 0x1C8))(arg0, (char *)arg0 + 0x16C);
        if (v0 == 0 && *(s32 *)((char *)arg0 + 0x124) != 0) {
            (*(void(**)(void *))((char *)*(void **)arg0 + 0x1C4))(arg0);
        }
        (*(void(**)(void *))((char *)*(void **)arg0 + 0x224))(arg0);
        (*(void(**)(void *))((char *)*(void **)arg0 + 0xE8))(arg0);
    }
}
void DreamSys__NullVirtualA(void) {
}
s32 DreamSys__GetSetFlashbackMode(void *arg0, s32 *arg1, s32 arg2) {
    s32 temp_s1;

    temp_s1 = *(s32*)((char*)(arg0) + 0x68);
    if (arg2 < 0) {
        *arg1 = CalcDreamColor(arg0 + ((*(s32*)((char*)(arg0) + 0x180) * 2) + 0x190));
    } else {
        *(s32*)((char*)(arg0) + 0x68) = arg2;
    }
    return temp_s1;
};
void DreamSys__SetTunnelLinkPause(void *arg0, s32 arg1) {
    s32 temp_a2;

    *(s32 *)((char *)arg0 + 0x6c) = arg1;
    if (arg1 != 0) {
        (*(void(**)(void *, s32))((char *)*(void **)arg0 + 0x180))(arg0, 1);
        temp_a2 = *(s32 *)((char *)arg0 + 0x884);
        if (temp_a2 != 0) {
            (*(void(**)(void *, s32, s32))((char *)*(void **)arg0 + 0x44))(arg0, 1, temp_a2);
        }
    }
}

void DreamSys__BeginDream(void *arg0, void *arg1, void *arg2) {
    s32 sp18[4];
    (*(void(**)(void *, void *))((char *)*(void **)arg0 + 0x1F4))(arg0, (char *)arg0 + 0x16C);
    (*(void(**)(void *, s32))((char *)*(void **)arg0 + 0x138))(arg0, 1);
    (*(void(**)(void *, s32))((char *)*(void **)arg0 + 0x13C))(arg0, 1);
    (*(void(**)(void *, void *))((char *)*(void **)arg0 + 0x180))(arg0, arg1);
    *(s32 *)((char *)arg0 + 0xBC) = -1;
    *(s32 *)((char *)arg0 + 0xB4) = 0;
    *(s32 *)((char *)arg0 + 0xB8) = 0;
    *(s32 *)((char *)arg0 + 0xA0) = 0;
    *(s32 *)((char *)arg0 + 0xA4) = 0;
    *(s32 *)((char *)arg0 + 0x88) = 0;
    *(s32 *)((char *)arg0 + 0x90) = 0;
    *(s32 *)((char *)arg0 + 0x8C) = 0;
    *(s32 *)((char *)arg0 + 0x94) = 0;
    (*(void(**)(void *, s32, s32, s32, s32))((char *)*(void **)arg0 + 0x18C))(arg0, 0, 1, 1, 1);
    (*(void(**)(void *, void *))((char *)*(void **)arg0 + 0x190))(arg0, arg2);
    *(s16 *)((char *)arg0 + 0x16A) = -1;
    *(s32 *)((char *)arg0 + 0x70) = 0;
    *(s32 *)((char *)arg0 + 0x44) = 0;
    *(s32 *)((char *)arg0 + 0x74) = 0;
    *(s32 *)((char *)arg0 + 0x908) = 0;
    *(s32 *)((char *)arg0 + 0x90C) = 0;
    *(s32 *)((char *)arg0 + 0x910) = 0;
    *(s32 *)((char *)arg0 + 0x78) = 0;
    GetPlayerPosition(arg0, &sp18[0]);
    *(s16 *)((char *)&sp18[0] + 8) = 0;
    *(s16 *)((char *)&sp18[0] + 10) = 1;
    (*(void(**)(void *, s32, void *))((char *)*(void **)arg0 + 0x44))(arg0, 1, &sp18[0]);
}
void DreamSys__SetLinkBlock(void *arg0) {
    *(s32*)((char*)(arg0) + 0x70) = 1;
};
s32 DreamSys__GetLinkRequest(void *arg0) {
    return *(s32*)((char*)(arg0) + 0x74);
};
s32 DreamSys__GetSetDreamTimeLimit(void *arg0, s32 arg1) {
    s32 old;
    if (arg1 >= 0) {
        arg1 = arg1 * 15;
    }
    old = *(s32 *)((char *)arg0 + 0x134);
    *(s32 *)((char *)arg0 + 0x134) = arg1;
    if (old >= 0) {
        old = (u32)old / 15;
    }
    return old;
}
s32 DreamSys__GetDreamTimerSeconds(void *arg0) {
    return (s32)((u32)*(s32*)((char*)(arg0) + 0x24) / 15);
}
void DreamSys__SetAudioMgr(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x58) = arg1;
};
void DreamSys__SetCameraObj(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x5c) = arg1;
};
void DreamSys__SetField64(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x64) = arg1;
};
void DreamSys__UpdateLinkTimerFlag(void *arg0) {
    if (*(s32*)((char*)(arg0) + 0x70) == 0) {
        *(s32*)((char*)(arg0) + 0x74) = 0;
        *(s32*)((char*)(arg0) + 0x124) = (s32) (((u32) *(s32*)((char*)(arg0) + 0x24) % (u32) *(s32*)((char*)(arg0) + 0x120)) == 0);
    }
};
void DreamSys__RunPendingCallbacks(void *arg0) {
    void (*temp_v0)();
    void (*temp_v0_2)(void *);

    temp_v0 = *(s32*)((char*)(arg0) + 0x80);
    if (temp_v0 != NULL) {
        temp_v0();
    }
    temp_v0_2 = *(s32*)((char*)(arg0) + 0x98);
    if (temp_v0_2 != NULL) {
        temp_v0_2(arg0);
    }
};
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", DreamSys__UpdateLinkCamera);
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", LerpFixed);
void DreamSys__ClearFlag7C(void *arg0) {
    *(s32*)((char*)(arg0) + 0x7c) = 0;
};
void DreamSys__ClearFlag78(void *arg0) {
    *(s32*)((char*)(arg0) + 0x78) = 0;
};
s32 DreamSys__VirtualReturn0(void) {
    return 0;
};
void DreamSys__SuspendEffects(void **arg0, s32 arg1) {
    (*(void(**)(void*, s32))(*(void**)(arg0) + 0x13c))(arg0, 0);
    if (arg1 != 0) {
        (*(void(**)())(*(void**)(arg0) + 0x138))(arg0, 0);
    }
}
void DreamSys__ResumeEffects(void *arg0, s32 arg1, s32 arg2) {
    (*(void(**)())(*(void **)arg0 + 0x13c))();
    (*(void(**)(void *, s32))((char *)*(void **)arg0 + 0x138))(arg0, arg2);
}
void DreamSys__SelectCallback(void *arg0, s32 arg1) {
    void *temp_v1;

    temp_v1 = *(s32*)((char*)(arg0));
    *(s32*)((char*)(arg0) + 0x84) = arg1;
    switch (arg1) {                                 /* irregular */
    case 0:
        *(s32*)((char*)(arg0) + 0x80) = 0;
        return;
    case 1:
        *(s32*)((char*)(arg0) + 0x80) = (s32) *(s32*)((char*)(temp_v1) + 0x140);
        return;
    case 2:
        *(s32*)((char*)(arg0) + 0x80) = (s32) *(s32*)((char*)(temp_v1) + 0x14c);
        return;
    case 3:
        *(s32*)((char*)(arg0) + 0x80) = (s32) *(s32*)((char*)(temp_v1) + 0x150);
        return;
    }
};
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", DreamSys__SetJournalMode);
void DreamSys__RunPairCallback(void **arg0) {
    (*(void(**)())(*(void**)(arg0) + 0x144))();
    (*(void(**)())(*(void**)(arg0) + 0x148))(arg0);
};
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", DreamSys__UpdateCameraDrift);
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", DreamSys__UpdateSwayAngle);
void DreamSys__StepBlinkState(void *arg0) {
    s32 temp_v1;
    temp_v1 = *(s32*)((char*)(arg0) + 0xa0);
    *(s32*)((char*)(arg0) + 0xa8) = 0;
    if (temp_v1 != 0) {
        if (temp_v1 & 1) {
            *(s32*)((char*)(arg0) + 0xa0) = temp_v1 + 1;
        } else {
            *(s32*)((char*)(arg0) + 0xa0) = temp_v1 - 1;
        }
    }
}
void DreamSys__NullVirtualB(void) {
}
void DreamSys__NullVirtualC(void) {
}
void DreamSys__UpdateLinkState(void *arg0) {
    void (*var_v0)(void *);
    s32 temp_v1;

    temp_v1 = *(s32*)((char*)(arg0) + 0x6c);
    if (temp_v1 == 0) {
        (*(void(**)())(*(void**)(arg0) + 0x174))();
        var_v0 = *(s32*)((char*)(*(void**)(arg0)) + 0x158);
    } else if (temp_v1 == 2) {
        var_v0 = *(s32*)((char*)(*(void**)(arg0)) + 0x160);
    } else {
        var_v0 = *(s32*)((char*)(*(void**)(arg0)) + 0x15c);
    }
    var_v0(arg0);
};
void DreamSys__RequestLinkA(void *arg0) {
    if (*(s32*)((char*)(arg0) + 0x70) == 0) {
        (*(void(**)())(*(void**)(arg0) + 0x170))(arg0, (*(s32(**)(void*, s32))(*(void**)(arg0) + 0x164))(arg0, 1));
    }
}
void DreamSys__RequestLinkB(void *arg0) {
    *(s32*)((char*)(arg0) + 0xa0) = 1;
    if (*(s32*)((char*)(arg0) + 0x70) == 0) {
        (*(void(**)())(*(void**)(arg0) + 0x170))(arg0, (*(s32(**)(void*, s32))(*(void**)(arg0) + 0x164))(arg0, 1));
        return;
    }
    (*(void(**)())(*(void**)(arg0) + 0x164))(arg0, 0);
}
void DreamSys__SetBlinkFlag(void *arg0) {
    *(s32*)((char*)(arg0) + 0xa0) = 1;
};
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", DreamSys__UpdateDreamEffects);
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", DreamSys__PlayLinkSound);
void DreamSys__FlushQueuedSound(void *arg0) {
    s32 temp_a1;
    void **temp_a0;

    temp_a1 = *(s32*)((char*)(arg0) + 0xbc);
    if (temp_a1 >= 0) {
        temp_a0 = *(s32*)((char*)(arg0) + 0x58);
        (*(void(**)())(*(void**)(temp_a0) + 0x84))(temp_a0, temp_a1);
        *(s32*)((char*)(arg0) + 0xbc) = -1;
    }
};
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", DreamSys__TestEnvironmentLinks);
void DreamSys__ApplyQueuedAngleChange(void *arg0) {
    s32 temp_v0;

    temp_v0 = *(s32*)((char*)(arg0) + 0xa4);
    if (temp_v0 != 0) {
        (*(void(**)(void*, s32, void*))(*(void**)(arg0) + 0x44))(arg0, 0, (char*)&gLinkAngleBlocks + (temp_v0 * 0xC));
        *(s32*)((char*)(arg0) + 0xa4) = 0;
    }
}
void DreamSys__EndLinkTransition(void *arg0) {
    void *temp_v1;

    if (*(s32*)((char*)(arg0) + 0xc4) != 0) {
        (*(void(**)(void*, s32*))(*(void**)(arg0) + 0xbc))(arg0, &gLinkExitDelta);
        temp_v1 = *(void**)((char*)(arg0) + 0x5c);
        *(s32*)((char*)(temp_v1) + 0x24) = (s32)(*(s32*)((char*)(temp_v1) + 0x24) - 0x258);
    }
    if (*(s32*)((char*)(arg0) + 0xc8) != 0) {
        SlotAlloc__Update(*(s32*)((char*)(arg0) + 0x58), arg0 + 0xCC);
    }
}
void DreamSys__BeginJournalEntry(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0xc4) = 0;
    *(s32*)((char*)(arg0) + 0xc8) = arg1;
    if (arg1 != 0) {
        SlotAlloc__Release(*(s32*)((char*)(arg0) + 0x58), arg0 + 0xCC);
    }
}
s32 DreamSys__GetSetLinkMode(void *arg0, s32 arg1) {
    s32 orig = *(s32*)((char*)arg0 + 0xAC);
    if (arg1 >= 0) {
        *(s32*)((char*)arg0 + 0xAC) = arg1;
        *(s32*)((char*)arg0 + 0xB0) = arg1;
    }
    return orig;
}
void DreamSys__SetLinkMode(void *arg0, s32 arg1) {
    s32 temp_v0;

    temp_v0 = *(s32*)((char*)(arg0) + 0xac);
    if (temp_v0 != arg1) {
        *(s32*)((char*)(arg0) + 0xb0) = temp_v0;
        *(s32*)((char*)(arg0) + 0xac) = arg1;
    }
}
void DreamSys__RestoreLinkMode(void *arg0) {
    *(s32*)((char*)(arg0) + 0xac) = (s32) *(s32*)((char*)(arg0) + 0xb0);
};
void DreamSys__SetLinkParams(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    if (arg1 >= 0) {
        *(s32*)((char*)(arg0) + 0x124) = arg1;
    }
    if (arg2 >= 0) {
        *(s32*)((char*)(arg0) + 0x128) = arg2;
    }
    if (arg3 >= 0) {
        *(s32*)((char*)(arg0) + 0x12c) = arg3;
    }
    if (arg4 >= 0) {
        *(s32*)((char*)(arg0) + 0x130) = arg4;
    }
}
void DreamSys__SetLinkInterval(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x120) = arg1;
};
void DreamSys__MarkGraphEntity(void *arg0, void *arg1) {
    if (*(s32*)arg1 == 1) {
        s32 v = *(s32*)((char*)arg1 + 0x4);
        s32 rem = v % 20;

        if (rem == 0) {
            *(s32*)((char*)arg1 + 0x1C) = 9;
            *(s32*)((char*)arg1 + 0x20) = -1;
        } else {
            *(s32*)((char*)arg1 + 0x30) = 9;
            *(s32*)((char*)arg1 + 0x34) = -1;
        }
    }
}
void DreamSys__InitNewGame(void *arg0) {
    volatile s8 *p1 = (volatile s8*)((char*)arg0 + 0x5DF);
    volatile s8 *p2 = (volatile s8*)((char*)arg0 + 0x5D8);
    s32 d = gInitialField178;

    *(s32*)((char*)arg0 + 0x17C) = 0;
    *(s32*)((char*)arg0 + 0x180) = 0;
    *(s32*)((char*)arg0 + 0x184) = 0;
    *(s32*)((char*)arg0 + 0x188) = 0;
    *(s32*)((char*)arg0 + 0x18C) = 0;
    *(s32*)((char*)arg0 + 0x46C) = 0;
    *p1 = 0;
    *p2 = 0;
    *(s32*)((char*)arg0 + 0x678) = 1;
    *(s32*)((char*)arg0 + 0x67C) = 0;
    *(s32*)((char*)arg0 + 0x680) = 0;
    *(s32*)((char*)arg0 + 0x178) = d;
    InitNavChallengesArray((char*)arg0 + 0x5E0, (char*)arg0 + 0x600);
    memset((char*)arg0 + 0x684, 0, 0x1F4);
}
void DreamSys__GetSetScreenShake(void *arg0, s32 *arg1) {
    s32 old = *(s32 *)((char *)arg0 + 0x678);
    *(s32 *)((char *)arg0 + 0x678) = *arg1;
    *arg1 = old;
}
s32 DreamSys__GetDayAndYear(void *arg0, s32 *arg1) {
    if (arg1 != NULL) {
        *arg1 = *(s32*)((char*)(arg0) + 0x17c);
    }
    return *(s32*)((char*)(arg0) + 0x180) + 1;
}
s32 DreamSys__AdvanceDay(void *arg0) {
    *(s32 *)((char *)arg0 + 0x180) += 1;
    if (*(s32 *)((char *)arg0 + 0x180) >= 0x16D) {
        *(s32 *)((char *)arg0 + 0x180) = 0;
        *(s32 *)((char *)arg0 + 0x17C) += 1;
    }
    return *(s32 *)((char *)arg0 + 0x180);
}
void DreamSys__ClearResetFlag(void *arg0) {
    *(s32*)((char*)(arg0) + 0x878) = 0;
};
s32 DreamSys__GetResetFlag(void *arg0) {
    return *(s32*)((char*)(arg0) + 0x878);
};
s32 DreamSys__GetDefaultTimeLimitPtr(s32 arg0, s32 *arg1) {
    if (arg1 != NULL) {
        *arg1 = 0x700;
    }
    return arg0 + 0x178;
}
s32 DreamSys__StartDay(void *arg0) {
    s32 v0 = *(s32*)((char*)arg0 + 0x180);
    s32 v1 = *(s32*)((char*)arg0 + 0x68);

    *(s32*)((char*)arg0 + 0x87C) = 0;
    *(s32*)((char*)arg0 + 0x24) = 0;
    *(s32*)((char*)arg0 + 0x88C) = v0;
    if (v1 != 0) {
        ((void(**)(void*, s32))*(s32**)arg0)[0x73](arg0, 1);
        goto ret;
    }
    {
        s32 s0 = IsDaySpecial((char*)arg0 + 0x168, *(s32*)((char*)arg0 + 0x180) + 1);

        ((void(**)(void*, s32))*(s32**)arg0)[0x7C](arg0, s0);
        if (s0 != 0) {
            return -1;
        }
        ((void(**)(void*))*(s32**)arg0)[0x70](arg0);
    }
ret:
    return *(s32*)((char*)arg0 + 0x164);
}
s32 DreamSys__EndDay(void *arg0, s32 arg1) {
    s32 v0 = *(s32*)((char*)arg0 + 0x88C);

    *(s32*)((char*)arg0 + 0x180) = v0;
    if (*(s32*)((char*)arg0 + 0x68) == 0) {
        if (arg1 == 0) {
            ((void(**)(void*))*(s32**)arg0)[0x84](arg0);
            ((void(**)(void*, void*))*(s32**)arg0)[0x7F](arg0, (char*)arg0 + (*(s32*)((char*)arg0 + 0x180) * 2 + 0x190));
            ((void(**)(void*))*(s32**)arg0)[0x69](arg0);
            goto end;
        }
    }
    if (arg1 == 2) {
        ((void(**)(void*))*(s32**)arg0)[0x66](arg0);
        *(s32*)((char*)arg0 + 0x878) = 1;
    }
end:
    return *(s32*)((char*)arg0 + 0x68);
}
CinematicCall DreamSys__GetCinematic(void *this) {
    return *(CinematicCall *)((char *)this + 0x168);
}
void DreamSys__InitSpawnLoc(void *arg0) {
    s32 local_14;
    s32 local_10;
    s32 r;
    s32 a1v;

    ((void(**)(void*, s32*, s32))*(s32**)arg0)[0x7B](arg0, &local_10, 1);
    r = GenerateInitialSpawn((s8*)arg0 + 0x16C, &local_14, &local_10, *(s32*)((s8*)arg0 + 0x180));
    a1v = local_14;
    *(s32*)((s8*)arg0 + 0x164) = r;
    local_14 = ((s32(**)(void*, s32))*(s32**)arg0)[0x41](arg0, a1v);
    *(s32*)((s8*)arg0 + 0x44) = 0xB;
}
void DreamSys__DynamicLink(void *arg0) {
    if (*(s32*)((char*)arg0 + 0x44) == 0) {
        ExecuteLink(arg0, GetRandomSpawnFromStage((s32)((char*)arg0 + 0x16C), *(s32*)((char*)arg0 + 0x164), *(s32*)((char*)arg0 + 0x24)), 0xC, 1);
    }
}
s32 DreamSys__StaticWallLink(void *arg0, s32 arg1) {
    if (*(s32*)((char*)arg0 + 0x44) == 0) {
        s32 r = TestForStaticLink((char*)arg0 + 0x16C, arg1, *(s32*)((char*)arg0 + 0x164));

        if (r >= 0) {
            ExecuteLink(arg0, r, 0xD, 1);
            return 1;
        }
    }
    return 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", DreamSys__LoadNextFlashback);
s32 DreamSys__ExecuteTunnelLink(void *arg0, s32 arg1) {
    if (*(s32*)((char*)arg0 + 0x44) == 0) {
        s32 s1 = Test4TunnelLinks((char*)arg0 + 0x16C, arg1, *(s32*)((char*)arg0 + 0x164));

        if (s1 >= 0) {
            s32 local[4];

            GetPlayerPosition(arg0, &local[0]);
            if (TestStaticLinkByStage((char*)arg0 + 0x888, (char*)arg0 + 0x884, &local[0]) != 0) {
                if (*(s32*)((char*)arg0 + 0xA8) != 0) {
                    ExecuteLink(arg0, s1, 0xF, 0);
                    return 1;
                }
                return 0;
            }
        }
    }
    return 0;
}
s32 DreamSys__FallingLink(void *arg0, s32 arg1) {
    s32 temp_v0;

    if (*(s32*)((char*)(arg0) + 0x44) == 0) {
        temp_v0 = Test4FallingLink(arg0 + 0x16C, *(s32*)((char*)(arg0) + 0x164), arg1, *(s32*)((char*)(arg0) + 0x24));
        if (temp_v0 >= 0) {
            *(s32*)((char*)(arg0) + 0x880) = GetLinkAngleBlockPtr();
            *(s32*)((char*)(arg0) + 0x884) = 0;
            *(s32*)((char*)(arg0) + 0x888) = 0;
            ExecuteLink(arg0, temp_v0, 0x10, 0);
            return 1;
        }
    }
    return 0;
};
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", DreamSys__InstantTeleportLink);
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", ExecuteLink);
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", DreamSys__StaircaseLink);
s32 DreamSys__TunnelLinkStep1(void *arg0) {
    s32 temp_v1;
    s32 temp_v1_2;

    if (*(s32*)((char*)(arg0) + 0x914) == 0) {
        DreamSys__ApplyPositionDelta(arg0, &gTunnelLinkStartPos1, arg0 + 0x91C);
    }
    if (*(s32*)((char*)(arg0) + 0xac) != 4) {
        temp_v1 = *(s32*)((char*)(arg0) + 0x914);
        if (temp_v1 < 0x85) {
            if (((u32) (temp_v1 - 0x2B) < 0xFU) || ((u32) (temp_v1 - 0x4B) < 0xFU)) {
                *(s32*)((char*)(arg0) + 0xa4) = 2;
            }
            goto block_12;
        }
        goto block_8;
    }
    temp_v1_2 = *(s32*)((char*)(arg0) + 0x914);
    if (temp_v1_2 >= 0x13) {
block_8:
        return 1;
    }
    if (((u32) (temp_v1_2 - 8) < 2U) || ((u32) (temp_v1_2 - 0xD) < 2U)) {
        (*(void(**)())(*(void**)(arg0) + 0x44))(arg0, 0, &gTunnelAnglesA);
block_12:
    }
    *(s32*)((char*)(arg0) + 0xa0) = 1;
    *(s32*)((char*)(arg0) + 0x914) = (s32) (*(s32*)((char*)(arg0) + 0x914) + 1);
    return 0;
}
s32 DreamSys__TunnelLinkStep2(void *arg0) {
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_v0;

    if (*(s32*)((char*)(arg0) + 0x914) == 0) {
        DreamSys__ApplyPositionDelta(arg0, &gTunnelLinkStartPos2, arg0 + 0x91C);
    }
    if (*(s32*)((char*)(arg0) + 0xac) != 4) {
        temp_v1 = *(s32*)((char*)(arg0) + 0x914);
        if (temp_v1 < 0x95) {
            if (((u32) (temp_v1 - 0x16) >= 0xFU) && ((u32) (temp_v1 - 0x39) >= 0x10U)) {
                if ((u32) (temp_v1 - 0x6E) < 0xFU) {
                    goto block_8;
                }
            } else {
block_8:
                *(s32*)((char*)(arg0) + 0xa4) = 1;
            }
            var_v0 = (u32) (*(s32*)((char*)(arg0) + 0x914) - 0x39) < 0x35U;
            goto block_17;
        }
        goto block_11;
    }
    temp_v1_2 = *(s32*)((char*)(arg0) + 0x914);
    if (temp_v1_2 >= 0x19) {
block_11:
        return 1;
    }
    if (((u32) (temp_v1_2 - 6) < 2U) || ((u32) (temp_v1_2 - 0xB) < 2U) || ((u32) (temp_v1_2 - 0x14) < 2U)) {
        (*(void(**)())(*(void**)(arg0) + 0x44))(arg0, 0, &gTunnelAnglesB);
    }
    var_v0 = (u32) (*(s32*)((char*)(arg0) + 0x914) - 3) < 0xEU;
block_17:
    if (var_v0 != 0) {
        *(s32*)((char*)(arg0) + 0x88) = 2;
    }
    *(s32*)((char*)(arg0) + 0xa0) = 1;
    *(s32*)((char*)(arg0) + 0x914) = (s32) (*(s32*)((char*)(arg0) + 0x914) + 1);
    return 0;
}
s32 DreamSys__TunnelLinkStep3(void *arg0) {
    s32 temp_v1;
    s32 temp_v1_2;

    if (*(s32*)((char*)(arg0) + 0x914) == 0) {
        DreamSys__ApplyPositionDelta(arg0, &gTunnelLinkStartPos3, arg0 + 0x91C);
    }
    if (*(s32*)((char*)(arg0) + 0xac) != 4) {
        temp_v1 = *(s32*)((char*)(arg0) + 0x914);
        if (temp_v1 < 0x65) {
            if ((u32) (temp_v1 - 0x2B) < 0xFU) {
                *(s32*)((char*)(arg0) + 0xa4) = 2;
            }
            goto block_10;
        }
        goto block_7;
    }
    temp_v1_2 = *(s32*)((char*)(arg0) + 0x914);
    if (temp_v1_2 >= 0xF) {
block_7:
        return 1;
    }
    if ((u32) (temp_v1_2 - 8) < 2U) {
        (*(void(**)())(*(void**)(arg0) + 0x44))(arg0, 0, &gTunnelAnglesA);
    }
block_10:
    *(s32*)((char*)(arg0) + 0xa0) = 1;
    *(s32*)((char*)(arg0) + 0x914) = (s32) (*(s32*)((char*)(arg0) + 0x914) + 1);
    return 0;
}
s32 DreamSys__TunnelLinkStep4(void *arg0) {
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_v0;

    if (*(s32*)((char*)(arg0) + 0x914) == 0) {
        DreamSys__ApplyPositionDelta(arg0, &gTunnelLinkStartPos4, arg0 + 0x91C);
    }
    if (*(s32*)((char*)(arg0) + 0xac) != 4) {
        temp_v1 = *(s32*)((char*)(arg0) + 0x914);
        if (temp_v1 < 0x71) {
            if ((u32) (temp_v1 - 0x1E) >= 0xFU) {
                if ((u32) (temp_v1 - 0x52) < 0xFU) {
                    goto block_7;
                }
            } else {
block_7:
                *(s32*)((char*)(arg0) + 0xa4) = 1;
            }
            var_v0 = (u32) (*(s32*)((char*)(arg0) + 0x914) - 0x1E) < 0x34U;
            goto block_15;
        }
        goto block_10;
    }
    temp_v1_2 = *(s32*)((char*)(arg0) + 0x914);
    if (temp_v1_2 >= 0x13) {
block_10:
        return 1;
    }
    if (((u32) (temp_v1_2 - 6) < 2U) || ((u32) (temp_v1_2 - 0xF) < 2U)) {
        (*(void(**)())(*(void**)(arg0) + 0x44))(arg0, 0, &gTunnelAnglesB);
    }
    var_v0 = (u32) *(s32*)((char*)(arg0) + 0x914) < 9U;
block_15:
    if (var_v0 != 0) {
        *(s32*)((char*)(arg0) + 0x88) = 2;
    }
    *(s32*)((char*)(arg0) + 0xa0) = 1;
    *(s32*)((char*)(arg0) + 0x914) = (s32) (*(s32*)((char*)(arg0) + 0x914) + 1);
    return 0;
}
void DreamSys__ApplyPositionDelta(void *arg0, s16 *arg1, s16 *arg2) {
    s32 diff[3];

    diff[0] = arg1[0] - arg2[0];
    diff[1] = arg1[1] - arg2[1];
    diff[2] = arg1[2] - arg2[2];
    diff[1] = 0;

    (*(void(**)(void*, s32*))(*(s32*)arg0 + 0xBC))(arg0, diff);
}
s32 DreamSys__GetCurrentStage(void *arg0) {
    return *(s32*)((char*)(arg0) + 0x164);
};
void DreamSys__ProcessChunkChange(void **arg0, void **arg1, s32 arg2) {
    if (arg2 == 5) {
        (*(void(**)())(*(void**)(arg0) + 0x1f4))(arg0, (*(s32(**)())(*(void**)(arg1) + 0x10c))(arg1, 0, 0));
    }
};
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", DreamSys__InstanceEffectsOnJournal);
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", DreamSys__GetPreviousDayMood);
void DreamSys__InitMoodContibutors(void *arg0, void *arg1) {
    ((void(**)(void*, void*))*(s32**)arg0)[0x81](arg0, (char*)arg0 + 0x144);
    ((void(**)(void*, void*))*(s32**)arg0)[0x81](arg0, (char*)arg0 + 0x154);
    if (arg1 != 0) {
        ((void(**)(void*, void*, void*))*(s32**)arg0)[0x82](arg0, (char*)arg0 + 0x144, arg1);
        ((void(**)(void*, void*, void*))*(s32**)arg0)[0x82](arg0, (char*)arg0 + 0x154, arg1);
    }
}
extern void *GetMoodFromStageChunk(s32, void *);
void DreamSys__LogChunkMood(void *arg0, void *arg1) {
    (*(void (**)(void *, void *, void *))(*(s32 *)arg0 + 0x208))(arg0, (char *)arg0 + 0x144, GetMoodFromStageChunk(*(s32 *)((char *)arg0 + 0x164), arg1));
}
void DreamSys__LogInstanceMood(void *arg0, void *arg1) {
    (*(void (**)(void *, void *, void *))(*(s32 *)arg0 + 0x208))(arg0, (char *)arg0 + 0x154, arg1);
}
void DreamSys__UpdateDreamChart(void *arg0, void *arg1) {
    s8 local[4];

    ((void(**)(void*, void*, s8*))*(s32**)arg0)[0x83](arg0, (char*)arg0 + 0x144, &local[0]);
    ((void(**)(void*, void*, s8*))*(s32**)arg0)[0x83](arg0, (char*)arg0 + 0x154, &local[2]);
    if (*(s32*)((char*)arg0 + 0x160) == 0) {
        *(u16*)(local + 2) = *(u16*)(local + 0);
    }
    *(s8*)arg1 = (local[0] + local[2]) / 2;
    *(s8*)((char*)arg1 + 1) = (local[1] + local[3]) / 2;
}
s32 DreamSys__GetDreamColor(void *arg0) {
    MoodGraphPoint local;
    (*(void (**)(void *, MoodGraphPoint *))(*(s32 *)arg0 + 0x1FC))(arg0, &local);
    return CalcDreamColor(&local);
}
DreamColors CalcDreamColor(MoodGraphPoint *mood) {
    s8 colorPoint[2];
    s8 *ptr;
    s32 i;

    *(s16 *)colorPoint = mood->value;

    ptr = colorPoint;
    for (i = 0; i < 2; i++) {
        if (*ptr >= 4) {
            *ptr = 2;
        } else if (*ptr < -3) {
            *ptr = 0;
        } else {
            *ptr = 1;
        }
        ptr++;
    }
    return (DreamColors)gDreamColorTable[colorPoint[0]][colorPoint[1]];
}
void DreamSys__ClearMoodGraph(void *arg0, void *arg1) {
    *(s16 *)((char *)arg1 + 0x0) = 0;
    *(s32 *)((char *)arg1 + 0x8) = 0;
    *(s32 *)((char *)arg1 + 0x4) = 0;
    *(s32 *)((char *)arg1 + 0xC) = 0;
}
void DreamSys__LogMood(void *arg0, s32 *arg1, s8 *arg2) {
    *(u16 *)arg1 = *(u16 *)arg2;
    arg1[1] += arg2[0];
    arg1[2] += arg2[1];
    arg1[3] += 1;
}
void DreamSys__GetMoodAverage(void *arg0, void *arg1, void *arg2) {
    s8 *s0 = (s8*)arg1;
    s8 *s1 = (s8*)arg2;

    if (*(s32*)(s0 + 0xC) != 0) {
        *(s8*)s1 = (s8)CalcMoodAxis(*(s8*)s0, *(s32*)(s0 + 4), *(s32*)(s0 + 0xC));
        *(s8*)(s1 + 1) = (s8)CalcMoodAxis(*(s8*)(s0 + 1), *(s32*)(s0 + 8), *(s32*)(s0 + 0xC));
    } else {
        *(u16*)s1 = *(u16*)s0;
    }
}
s32 CalcMoodAxis(s32 lank, s32 sum, s32 amount) {
    s32 average;

    average = (sum / amount) + (lank / 3);
    
    if (average > 9) {
        average = -9;
    } else if (average < -9) {
        average = 9;
    }
    return average;
}
void DreamSys__CalcUnlockScore(void *arg0) {
    s32 navScore = CalcNavigationScore();
    s32 v = *(s32*)((char*)arg0 + 0x18C);

    *(s32*)((char*)arg0 + 0x188) = navScore;
    if (v < 0) {
        *(s32*)((char*)arg0 + 0x18C) = 0;
    } else if (v > 0x2FAF080) {
        *(s32*)((char*)arg0 + 0x18C) = 0x2FAF080;
    }
    *(s32*)((char*)arg0 + 0x184) = *(s32*)((char*)arg0 + 0x188) + *(s32*)((char*)arg0 + 0x18C);
}
typedef struct { u8 b[8]; s16 c; } ang10_afb;
typedef struct { u8 b[12]; } ang12_afb;

void DreamSys__AddFlashback(void *a0, s32 a1, ang10_afb *a2, ang12_afb *a3, s32 a4, s32 a5, s32 a6) {
    s32 count = *(s32*)((char*)a0 + 0x46C);
    s32 v9;
    s8 *t0 = (s8*)a0 + 0x470;

    if (count < 10) {
        *(s32*)((char*)a0 + 0x46C) = count + 1;
        v9 = count * 9;
    } else {
        v9 = ((u32)*(s32*)((char*)a0 + 0x24) % 9) * 9;
    }
    t0 += v9 * 4;
    *(s32*)t0 = a1;
    *(ang10_afb*)(t0 + 4) = *a2;
    *(ang12_afb*)(t0 + 0xE) = *a3;
    *(s16*)(t0 + 0x1C) = a4;
    *(s16*)(t0 + 0x1A) = a5;
    *(s32*)(t0 + 0x20) = a6;
}
void DreamSys__FlashbackSaving(void *arg0, void *arg1, void *arg2) {
    s8 *s1 = (s8*)arg0;
    void *s2 = arg1;
    void *s3 = arg2;
    s32 local[4];
    s32 r;
    s32 s0;

    if (*(s32*)(s1 + 0x4C) == 0) {
        return;
    }
    r = rand();
    if (r % 3 != 0) {
        return;
    }
    s0 = ((s32(**)(void*, s32, s32))*(s32**)*(s32**)(s1 + 0x4C))[0x43](*(s32**)(s1 + 0x4C), 0, 0);
    GetPlayerPosition(s1, local);
    ((void(**)(void*, s32, s32, void*, void*, void*, s32))*(s32**)s1)[0x85](
        s1, *(s32*)(s1 + 0x164), s0, local, s2, s3, *(s32*)(s1 + 0x180));
}
void DreamSys__ResetFlashbackList(void *arg0) {
    *(s32 *)((char *)arg0 + 0x46C) = 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", DreamSys__SnapshotEntityState);
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", DreamSys__RestoreEntityState);
s32 DreamSys__GetSetField924(void *arg0, s32 arg1) {
    s32 temp_v0;

    if (arg1 < 0) {
        return *(s32*)((char*)(arg0) + 0x924);
    }
    temp_v0 = *(s32*)((char*)(arg0) + 0x924);
    *(s32*)((char*)(arg0) + 0x924) = arg1;
    return temp_v0;
}
extern s32 DREAMSYS_METHODS[];
void *Get_vtable_DreamSys(void) {
    return DREAMSYS_METHODS;
}
void InitNavChallengesArray(s8 *arg0, s32 *arg1) {
    s32 i;
    for (i = 0x1D; i >= 0; i--) {
        arg0[i] = 0;
    }
    gpNavChallengesComplete = (s32 *)arg0;
    *arg1 = 0;
    gpDinamicLinkPenalty = arg1;
}
s32 CalcNavigationScore(void) {
    s32 a0 = 0;
    s32 inc = 0xF4240;
    s32 v1 = (s32)gpNavChallengesComplete;
    s32 a1 = v1 + 0x1E;
    do {
        if (*(s8*)v1 != 0) {
            a0 += inc;
        }
        v1++;
    } while (v1 < a1);
    if (0x1C9C37F < a0) {
        a0 = 0x2FAF080;
    }
    a0 -= *gpDinamicLinkPenalty * 11024;
    if (a0 < 0) {
        a0 = 0;
    }
    return a0;
}
extern s16 STAGE_TIME_LIMITS[];
s16 GetStageTimeLimit(s32 index) {
    return STAGE_TIME_LIMITS[index];
}
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", GetRandomSpawnFromStage);
extern s8 LEN_STAGE_PERMALINK_TRIGGERS[];
extern void *STAGE_PERMALINK_TRIGGERS[];
extern void *STAGE_PERMALINK_SPAWNS[];
s32 TestForStaticLink(void *arg0, s32 arg1, s32 arg2) {
    GetStaticSpawn(arg0, arg1, arg2, LEN_STAGE_PERMALINK_TRIGGERS, STAGE_PERMALINK_TRIGGERS, STAGE_PERMALINK_SPAWNS, 1);
}
s32 Test4TunnelLinks(void *arg0, s32 arg1, s32 arg2) {
    GetStaticSpawn(arg0, arg1, arg2, &gTunnelTableLengths, &gTunnelTriggerTable, &gTunnelSpawnTable, 1);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", TestStaticLinkByStage);
s32 IsFacingLinkDirection(u8 *a0, s32 a1) {
    s32 t, diff, v1, res, result;

    t = a1 & 0xFF;
    v1 = *(u16*)(a0 + 4) - *(u16*)(gStageLinkAngles + t * 12);
    diff = (s16)v1;
    res = v1;
    if (diff >= 0xB5) {
        res = v1 - 0x168;
    } else {
        if (diff < -0xB4) {
            res = v1 + 0x168;
        }
    }
    result = (u16)(res + 0x2C) < 0x59;
    __asm__("" : : "r"(v1));
    return result;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", Test4FallingLink);
extern s32 gLinkDestStage;
extern s32 gLinkAngleBlockFallback;
void *GetLinkAngleBlockPtr(void) {
    void *p = 0;
    if (gLinkDestStage != 0xC) {
        p = &gLinkAngleBlockFallback;
    }
    return p;
}
void EnableInstantTeleporters(s32 arg0) {
    gInstantTeleportersEnabled = arg0;
}
s32 Test4InstantTeleporters(void *arg0, s32 arg1, s32 arg2) {
    if (gInstantTeleportersEnabled == 0) {
        return -1;
    }
    GetStaticSpawn(arg0, arg1, arg2, &gTeleporterTableLengths, &gTeleporterTriggerTable, &gTeleporterSpawnTable, 0);
}
s32 GetTeleporterTimeBonus(void) {
    return (gLinkSourceStage == 0) ? 0xA : 0;
}
s32 Test4StaircaseNodes(void *arg0, s32 arg1, s32 arg2) {
    if (arg2 != 0) {
        return -1;
    }
    GetStaticSpawn(arg0, arg1, 0, &gStaircaseTableLengths, &gStaircaseTriggerTable, &gStaircaseSpawnTable, 0);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", TestTunnelLinkByStage);
extern s32 gLinkSpawnIndex;
s8 GetStageLinkByte(void) {
    return *(s8 *)((&gStaircaseSpawnTable)[gLinkDestStage] + gLinkSpawnIndex * 6 + 5);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/DreamSys", GetStaticSpawn);
typedef struct { s8 b[4]; } S4Copy;
typedef struct { s8 b[4]; s16 c; } S42Copy;
extern u8 LEN_STAGE_SPAWNPOINTS[];
extern void *STAGE_SPAWNPOINTS[];
extern s8 SPAWN_POS_ADJUST[];
s32 GetStageChunkFromMood(void *, s16 *);
s32 GenerateInitialSpawn(void *arg0, s32 *arg1, s32 *arg2, s32 arg3) {
    s16 sp10[8];
    s32 stage;
    s32 count;
    s32 idx;
    s16 *sp;

    stage = GetStageChunkFromMood(&sp10, (s16 *)arg2);
    if (stage >= 0) {
        *arg1 = STAGE_TIME_LIMITS[stage];
        count = LEN_STAGE_SPAWNPOINTS[stage];
        sp = (s16 *)STAGE_SPAWNPOINTS[stage];
        if (count != 0) {
            idx = 0;
            do {
                if (sp10[0] == sp[0]) {
                    goto found;
                }
                idx++;
                sp += 3;
            } while (idx < count);
        }
        sp = (s16 *)((char *)STAGE_SPAWNPOINTS[stage] + (sp10[0] % count) * 6);
found:
        *(S4Copy *)arg0 = *(S4Copy *)sp;
        *(S42Copy *)((char *)arg0 + 4) = *(S42Copy *)((char *)SPAWN_POS_ADJUST + *(u8 *)((char *)sp + 4) * 6);
        return stage;
    }
    stage = GetRandomSpawnFromStage(arg0, stage, arg3);
    *arg1 = STAGE_TIME_LIMITS[stage];
    return stage;
}
s32 *IsDaySpecial(CinematicCall *cinematic, s32 day) {
    s16 *daysTable;
    s32 i;

    daysTable = SPECIAL_DAYS;

    for (i = 0; i < 42U; i++) {
        if (day == daysTable[i]) {
            cinematic->entry = rand() % 6;
            cinematic->bank = i % 12;
            return &gSpecialDayMood;
        }
    }

    return NULL;
}
