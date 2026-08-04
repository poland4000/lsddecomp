#include "common.h"

extern s32 gEntityMgrSlots;
extern s32 D_80088D2C;
extern s32 gEntityStageId;
extern s32 gpStageContextObj;
extern s16 SPECIAL_DAYS[];
extern s8 gStageEntityCounts;
extern s32 gStageEntityTables[];
extern s32 D_8001186C;
extern s32 D_8001187C;
extern s32 gEntityStageArg1;
extern s32 gEntityStageArg3;
extern s32 gEntityStageArg4;
extern s32 gNavChallengeTables[];
extern s8 gNavChallengeCounts[];

extern s32 gEntityMgrSlots;
extern s32 D_80088D2C;
extern s32 gEntityStageId;
extern s32 gpStageContextObj;
extern s16 SPECIAL_DAYS[];
extern s8 gStageEntityCounts;
extern s32 gStageEntityTables[];
extern s32 D_8001186C;
extern s32 D_8001187C;
extern s32 gEntityStageArg1;
extern s32 gEntityStageArg3;
extern s32 gEntityStageArg4;
extern s32 gNavChallengeTables[];
extern s8 gNavChallengeCounts[];

extern s32 gEntityMgrSlots;
extern s32 D_80088D2C;
extern s32 gEntityStageId;
extern s32 gpStageContextObj;
extern s16 SPECIAL_DAYS[];
extern s8 gStageEntityCounts;
extern s32 gStageEntityTables[];
extern s32 D_8001186C;
extern s32 D_8001187C;
void InitTriple(s32*, s32, s32, s32);               /* extern */
s32 func_8004468C(s32*);                                 /* extern */
extern s32 gEntityStageArg1;
extern s32 gEntityStageArg3;
extern s32 gEntityStageArg4;
void *New_Entity(s32, void*, s32);                        /* extern */
extern s32 D_80088F48;
extern s32 D_80088D3C;
extern s32 D_80088D40;
extern s32 D_80088F18;void EnableInstantTeleporters(s32);                                 /* extern */
s32 func_8005C9DC(s32, s32, s32);                           /* extern */
extern s32 gNavChallengeTables[];
extern s8 gNavChallengeCounts[];
void *func_80044A0C(void*);                              /* extern */
s32 func_8005CAB4(void *, void *, void *, void *);          /* extern */
s32 func_8005CBC8(void *, void *);                       /* extern */
s32 func_8005CDF8(s32, u16 *, void *, s32);              /* extern */
s32 Spawner__GetParity(void);                                     /* extern */void func_8001E600(s32, s32*, void*, s32);               /* extern */
void FaceTowards(void *, void **, s32, s32, s32);     /* extern */
void EntityMgr__Init(void) {
    s32 local[6];
    s32 s1 = 0;
    s8 *a1 = (s8*)&gStageEntityCounts;
    s32 *a3 = gStageEntityTables;
    s32 s0;
    s32 *s2;

    for (; (u32)s1 < 0xE; s1++) {
        s32 count = *a1;
        s32 a0 = 0;
        if (count > 0) {
            s32 *a2 = a3;
            do {
                *(s8*)(a2[0] + a0 * 8) = 0;
                a0++;
            } while (a0 < *a1);
        }
        a1++;
        a3++;
    }
    InitTriple(&local[0], 0, &D_8001186C, 1);
    s1 = 0;
    s2 = &D_8001187C;
    s0 = 0;
    do {
        *(s32*)((s32)&gEntityMgrSlots + s0) = func_8004468C(&local[0]);
        s0 += 0x14;
        s1++;
        local[1] = (s32)s2;
    } while (s1 == 0);
}
void EntityMgr__Shutdown(void) {
    s32 var_s1;
    void ***var_s0;
    void **temp_a0;

    var_s0 = &gEntityMgrSlots;
    var_s1 = 0;
    do {
        temp_a0 = *var_s0;
        var_s1 = (__typeof__(var_s1))((char*)var_s1 + 1);
        if (temp_a0 != NULL) {
            *var_s0 = (*(s32(**)())(*(void**)(temp_a0) + 0x4))(temp_a0);
        }
        var_s0 = (__typeof__(var_s0))((char*)var_s0 + 0x14);
    } while (var_s1 == 0);
}
void EntityMgr__SetStage(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 local[4];
    s32 *s1 = &gEntityMgrSlots;
    s32 s0 = 0;

    gEntityStageId = arg0;
    gEntityStageArg1 = arg1;
    gpStageContextObj = arg2;
    gEntityStageArg3 = arg3;
    gEntityStageArg4 = arg4;
    do {
        local[3] = *s1;
        *(s32*)((char*)s1 + 4) = (s32)New_Entity(s0 + 0x62, &local[0], gEntityStageArg3);
        s0++;
        s1 += 5;
    } while (s0 == 0);
    SetTeleportsEnabled(arg0);
}
void SetTeleportsEnabled(s32 arg0) {
    s32 var_v1;

    var_v1 = 0;
    if ((arg0 == 0xB) || (arg0 == 3)) {
        var_v1 = 1;
    }
    EnableInstantTeleporters(var_v1);
}
void TriggerDayEvent(s32 stage) {
    switch (stage) {
        case 0x4E:
        case 0xB:
        case 0x38:
        case 0x5D:
            EnableInstantTeleporters(1);
            break;
    }
}
void EntityMgr__ShutdownB(void) {
    s32 var_s1;
    void ***var_s0;
    void **temp_a0;

    var_s1 = 0;
    var_s0 = &D_80088D2C;
    do {
        temp_a0 = *var_s0;
        var_s1 += 1;
        if (temp_a0 != NULL) {
            *var_s0 = (*(s32(**)())(*(void**)(temp_a0) + 0x4))(temp_a0);
        }
        var_s0 = (void***)((char*)var_s0 + 0x14);
    } while (var_s1 == 0);
}
s32 EntityMgr__CheckNavChallenge(s32 arg0, s32 arg1, s32 arg2) {
    s32 s2 = arg0;
    s32 s1 = arg2;
    s32 s0;

    s0 = EntityMgr__FindNavEntry(arg1);
    if (s0 != 0) {
        if (CheckChunkParity(s1, (void*)s0) != 0) {
            return func_8005C9DC(s1, s0, s2);
        }
        if (gEntityStageId != 0) {
            if (rand() % 12 == 0 && (s1 & 1) == 0) {
                EntityMgr__SpawnRandomEncounter(&gEntityMgrSlots);
            }
        }
    }
    return 0;
}
s32 EntityMgr__FindNavEntry(s32 arg0) {
    s8 *entries;
    s32 count;
    s32 i;

    count = ((s8*)&gNavChallengeCounts)[gEntityStageId];
    entries = *(s8**)((s32)&gNavChallengeTables + gEntityStageId * 4);
    for (i = 0; i < count; i++) {
        if (*(s16*)arg0 == *(s16*)(entries + i * 6)) {
            return func_8005C930((s32)(entries + i * 6), i);
        }
    }
    return 0;
}
s32 GetNavArrayOffset(s32 arg0, s32 arg1) {
    if (gEntityStageId == 4 && arg1 == 0x10) {
        s32 obj = gpStageContextObj;
        if (((s32(**)(s32))*(s32*)obj)[0x80](obj) == 4) {
            arg0 += 0x1E;
        }
    }
    return arg0;
}
s32 CheckChunkParity(s32 arg0, void *arg1) {
    s32 byte2;
    s32 result;

    byte2 = *(s8*)((s32)arg1 + 2);
    result = 1;
    if (byte2 != 0) {
        arg0 = arg0 % 2 + 1;
        result = (byte2 ^ arg0) != 0;
    }
    return result;
}
s32 func_8005C9DC(void *arg0, s8 *arg1, s32 arg2) {
    s32 sp10[4];
    void *s2;
    s8 *s0;
    s8 *s1;
    void *s4;

    sp10[0] = arg2;
    s2 = func_80044A0C(sp10);
    if (s2 != 0) {
        s0 = arg1 + 3;
        s1 = arg1 + 6;
        s4 = (void *)gStageEntityTables[gEntityStageId];
        while (s0 < s1) {
            if (*s0 == -1) {
                break;
            }
            func_8005CAB4(arg0, arg1, (void *)((s8 *)s4 + (*s0 << 3)), s2);
            s0++;
        }
        return (s32)s2;
    }
    return 0;
}
s32 func_8005CAB4(void *arg0, void *arg1, s8 *arg2, void *arg3) {
    s32 sp10[4];
    s8 *s0;
    s8 *s2;

    if (func_8005CBC8(arg0, arg2) != 0) {
        TriggerDayEvent((u8)arg2[3]);
        s0 = arg2 + 4;
        s2 = arg2 + 8;
        sp10[3] = (*(s32 (**)(void *, s32))(*(void **)arg3 + 0x88))(arg3, (s8)arg2[2]);
        if (sp10[3] != 0) {
            while (s0 < s2) {
                if (*s0 == -1) {
                    break;
                }
                if (func_8005CDF8((u8)arg2[3], sp10, arg1, (u8)*s0) != 0) {
                    return 1;
                }
                s0++;
            }
        }
        if ((u8)arg2[3] == 2) {
            return func_8005CAB4(arg0, arg1, (s8 *)arg2 + 0x38, arg3);
        }
    }
    return 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/4cd08", func_8005CBC8);
s32 EntityMgr__IsSpecialDay(s32 arg0) {
    s32 obj = gpStageContextObj;
    s32 day = ((s8*)SPECIAL_DAYS)[0x4A + arg0];
    if (day == ((s32(**)(s32))*(s32*)obj)[0x80](obj)) {
        return 1;
    }
    return 0;
}
s32 EntityMgr__IsDayInCycle(s32 arg0, s32 arg1) {
    s32 i;
    for (i = 0; i < 4; i++) {
        if ((arg0 - 1) / 30 + 1 == arg1) {
            return 1;
        }
        arg1 += 3;
    }
    return 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/4cd08", func_8005CDF8);
void EntityMgr__SpawnRandomEncounter(void *arg0) {
    s8 *s0 = (s8*)arg0;
    s32 local[4];
    void *p;

    p = *(void**)(s0 + 4);
    if (p == NULL) {
        return;
    }
    ((void(**)(void*))*(s32**)p)[0x14](p);
    func_8001E600(gpStageContextObj, &local[0], s0 + 8, 0);
    ((void(**)(void*, s32, s32, s32, void*))*(s32**)*(s32**)(s0 + 4))[0x13](
        *(void**)(s0 + 4), gpStageContextObj, gEntityStageArg4, gEntityStageArg1, &local[0]);
    FaceTowards(*(void**)(s0 + 4), (void**)gpStageContextObj, 1, 0, 0);
}
