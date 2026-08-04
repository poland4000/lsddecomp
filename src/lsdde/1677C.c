#include "common.h"

extern s32 gDayIntroEffectCfgB;
extern s32 D_800107A4;
extern s32 gDayIntroEffectCfgA;

extern s32 gDayIntroEffectCfgB;

void *BMemAlloc(s32);                               /* extern */
void *Get_vtable_ClassD3C8(void);                               /* extern */

INCLUDE_ASM("asm/lsdde/nonmatchings/1677C", New_SceneMgr);

void *func_80048CF0(void);                               /* extern */
void *SetCdPathPrefix(void *);                             /* extern */
extern s32 D_800107A4;
s32 LoadTmdModel(s32 *);                                /* extern */
void *New_DreamSys(s32, s32, s32);                       /* extern */

void func_80025FDC(void *arg0, s32 *arg1) {
    s32 sp10[4];
    void *ds;

    (*(void (**)(void *, void *))(func_8003B20C() + 8))(arg0, *arg1);
    *(void **)arg0 = Get_vtable_ClassD3C8();
    *(s32 **)((char *)arg0 + 0x20) = arg1;
    SetCdPathPrefix(func_80048CF0());
    sp10[0] = 0;
    sp10[1] = (s32)&D_800107A4;
    ds = New_DreamSys(LoadTmdModel(sp10), 0, 0);
    *(void **)((char *)arg0 + 0x28) = ds;
    *(s32 *)((char *)arg0 + 0x24) = 0;
    (*(void (**)(void *, s32))(*(void **)*(void **)((char *)arg0 + 0x28) + 0x228))(
        *(void **)((char *)arg0 + 0x28), *(s32 *)((char *)arg1 + 0x14));
    (*(void (**)(void *))(*(void **)arg0 + 0x40))(arg0);
}

void SetStartDay(s32,s32);                            /* extern */

void SeedRandomDay(void) {
    SetStartDay(*(s32 *)0x1F800000 % 365, 0);
};

void *func_8003B20C();                              /* extern */

void SceneMgr__TryStartScene(void *arg0, s32 arg1, s32 arg2) {
    if (*(s32*)((char*)(arg0) + 0x18) == 0) {
        (*(void(**)())((char*)func_8003B20C() + 0x44))(arg0, arg1, arg2, 0);
    }
}

void SceneMgr__SpawnEffect(void *,s32 *);                       /* extern */
void CdDrvWaitReady(s32,s32,s32);                           /* extern */
void **New_WorldEffect(s32,s32,s32,s32);                   /* extern */
s32 Dreamer__GetPosition(s32 *);                           /* extern */
s32 Dreamer__GetChunkId(s32);                             /* extern */
extern s32 gDayIntroEffectCfgA;
void SceneMgr__ShowDayIntro(void *arg0) {
    s32 sp18;
    s32 temp_s0;
    void **temp_s1;

    if (*(s32*)((char*)*(s32**)((char*)(arg0) + 0x20) + 0xc) != 0) {
        CdDrvWaitReady(0, 0, 0);
        SceneMgr__SpawnEffect(arg0, &gDayIntroEffectCfgA);
        temp_s1 = New_WorldEffect(0, 0, 0, 0);
        temp_s0 = Dreamer__GetPosition(&sp18);
        (*(void(**)())(*(void**)(temp_s1) + 0x44))(temp_s1, *(s32*)((char*)(arg0) + 0x1c), temp_s0, Dreamer__GetChunkId(sp18), 1);
        (*(void(**)())(*(void**)(temp_s1) + 0x4))(temp_s1);
        SceneMgr__SpawnEffect(arg0, &gDayIntroEffectCfgB);
    }
}

void **New_AnimEffect(s32,s32,s32);                      /* extern */
void SceneMgr__OnEffectDone(void);

void SceneMgr__SpawnEffect(void *arg0, s32 *arg1) {
    void **temp_v0;

    temp_v0 = New_AnimEffect(0, 0, 0);
    (*(void(**)())(*(void**)(temp_v0) + 0x98))(temp_v0, &SceneMgr__OnEffectDone, arg0);
    (*(void(**)())(*(void**)(temp_v0) + 0x6c))(temp_v0, 0);
    (*(void(**)())(*(void**)(temp_v0) + 0xd4))(temp_v0, arg1, 0);
    (*(void(**)())(*(void**)(temp_v0) + 0x44))(temp_v0, *(s32*)((char*)(arg0) + 0x1c), 0);
    (*(void(**)())(*(void**)(temp_v0) + 0x4))(temp_v0);
};

void SceneObj__ResetStatic(s32);                                 /* extern */

void SceneMgr__OnEffectDone(void) {
    SceneObj__ResetStatic(0);
}

void CdDrvWaitReady(s32,s32,s32);                           /* extern */
void **New_WorldEffect(s32,s32,s32,s32);                   /* extern */
s32 Dreamer__GetSpawnPos(s32 *,s32);                        /* extern */
s32 Dreamer__GetChunkId(s32);                             /* extern */
s32 func_80049334(s32 *, s32);                       /* extern */

void SceneMgr__ShowDayIntro2(void *arg0) {
    s32 sp18;
    s32 temp_s0;
    void **temp_s1;

    if (*(s32*)((char*)*(s32**)((char*)(arg0) + 0x20) + 0x8) != 0) {
        CdDrvWaitReady(0, 0, 0);
        temp_s1 = New_WorldEffect(0, 0, 0, 0);
        temp_s0 = Dreamer__GetSpawnPos(&sp18, 0);
        (*(void(**)())(*(void**)(temp_s1) + 0x44))(temp_s1, *(s32*)((char*)(arg0) + 0x1c), temp_s0, Dreamer__GetChunkId(sp18), 1);
        (*(void(**)())(*(void**)(temp_s1) + 0x4))(temp_s1);
    }
};

void func_8002658C(void *);                               /* extern */
void GraphScreen__Create(void);                                 /* extern */
void TitleScreen__Create(void);                                 /* extern */

s32 func_80026518(void *(*)(s32), s32, s32);              /* extern */

s32 func_80026410(void *arg0) {
    s32 r;

    if (*(s32 *)((char *)*(void **)((char *)arg0 + 0x20) + 0x10) != 0) {
        CdDrvWaitReady(0, 0, 0);
        r = (*(s32 (**)(void *, s32))(*(void **)*(void **)((char *)arg0 + 0x28) + 0x1A0))(
                *(void **)((char *)arg0 + 0x28), 0);
        if (r != 1) {
            if (*(s32 *)((char *)arg0 + 0x24) == 0) {
                if ((s32)func_80026518((void *(*)(s32))&GraphScreen__Create, *(void **)((char *)arg0 + 0x28),
                                       *(s32 *)((char *)arg0 + 0x1C)) == 2) {
                    func_8002658C(arg0);
                }
            }
        }
        do {
            r = (s32)func_80026518((void *(*)(s32))&TitleScreen__Create, *(void **)((char *)arg0 + 0x28),
                                   *(s32 *)((char *)arg0 + 0x1C));
            if (r == 2) {
                func_80026518((void *(*)(s32))&GraphScreen__Create, *(void **)((char *)arg0 + 0x28),
                              *(s32 *)((char *)arg0 + 0x1C));
            }
        } while (r == 2);
        *(s32 *)((char *)arg0 + 0x24) = 0;
        return ((u32)r < 1) << 1;
    }
    return 2;
}

s32 func_80026518(void *(*fn)(s32), s32 a1, s32 a2) {
    void *s0 = fn(a1);
    s32 r = (*(s32 (**)(void *, s32, s32))(*(void **)s0 + 0x44))(s0, a2, 0);
    (*(void (**)(void *))(*(void **)s0 + 0x4))(s0);
    return r;
}

s32 func_800493E4(s32*, s32, s32);                        /* extern */

void func_8002658C(void *arg0) {
    s32 sp20[4];
    void *s0;
    s32 s1;

    if (*(s32 *)((char *)*(void **)((char *)arg0 + 0x20) + 8) != 0) {
        CdDrvWaitReady(0, 0, 0);
        s0 = New_WorldEffect(0, 0, 0, 0);
        s1 = func_800493E4(&sp20[2], 0, 0xA);
        (*(void (**)(void *, u32))(*(void **)s0 + 0x6C))(s0, (u32)sp20[2] / 15);
        (*(void (**)(void *, s32))(*(void **)s0 + 0x12C))(s0, 0);
        (*(void (**)(void *, s32, s32, s32, s32))(*(void **)s0 + 0x44))(s0, *(s32 *)((char *)arg0 + 0x1C), s1, -1, 1);
        (*(void (**)(void *))(*(void **)s0 + 0x4))(s0);
    }
}

void SceneMgr__Nop(void) {
}

void func_8002677C(void *);                            /* extern */
void **DreamScene__Create(s32, void **, s32);            /* extern */

s32 SceneMgr__RunDreamScene(void *arg0) {
    s32 sp10;
    s32 temp_s0;
    s32 temp_v0_2;
    s32 var_a0;
    void **temp_a0;
    void **temp_v0;

    temp_v0 = DreamScene__Create(*(s32*)((char*)(arg0) + 0x1c), *(s32*)((char*)(arg0) + 0x28), *(s32*)((char*)*(s32**)((char*)(arg0) + 0x20) + 0x4));
    temp_s0 = (*(s32(**)())(*(void**)(temp_v0) + 0x44))(temp_v0);
    (*(void(**)())(*(void**)(temp_v0) + 0x4))(temp_v0);
    switch (temp_s0) {                              /* irregular */
    case 2:
        func_8002677C(arg0);
        break;
    case 3:
        *(s32*)((char*)(arg0) + 0x24) = 1;
        break;
    }
    temp_a0 = *(s32*)((char*)(arg0) + 0x28);
    temp_v0_2 = (*(s32(**)())(*(void**)(temp_a0) + 0x1a0))(temp_a0, &sp10);
    var_a0 = 0;
    if (sp10 != 0) {
        var_a0 = temp_v0_2 == 1;
    }
    return var_a0;
};

void func_8002677C(void *arg0) {
    u16 sp18[2];
    s32 sp20[4];
    void *s0;
    s32 s2;

    (*(void (**)(void *, void *))(*(void **)*(void **)((char *)arg0 + 0x28) + 0x1BC))(
        sp18, *(void **)((char *)arg0 + 0x28));
    s2 = func_80049334(sp20, (u32)sp18[0] | ((u32)sp18[1] << 16));
    CdDrvWaitReady(0, 0, 0);
    if (sp20[0] != -1) {
        if (*(s32 *)((char *)*(void **)((char *)arg0 + 0x20) + 8) != 0) {
            s0 = New_WorldEffect(0, 0, 0, 0);
            (*(void (**)(void *, s32))(*(void **)s0 + 0x12C))(s0, 0);
            (*(void (**)(void *, s32, s32, s32, s32))(*(void **)s0 + 0x44))(
                s0, *(s32 *)((char *)arg0 + 0x1C), s2, Dreamer__GetChunkId(sp20[0]), 1);
            (*(void (**)(void *))(*(void **)s0 + 0x4))(s0);
        }
    } else {
        s0 = New_AnimEffect(0, 0, 0);
        (*(void (**)(void *, s32))(*(void **)s0 + 0x6C))(s0, 0xA);
        (*(void (**)(void *, s32, s32))(*(void **)s0 + 0xD4))(s0, s2, 0);
        (*(void (**)(void *, s32, s32))(*(void **)s0 + 0x44))(s0, *(s32 *)((char *)arg0 + 0x1C), 0);
        (*(void (**)(void *))(*(void **)s0 + 0x4))(s0);
    }
}

void CdDrvWaitReady(s32,s32,s32);                           /* extern */
void **New_WorldEffect(s32,s32,s32,s32);                   /* extern */
s32 Dreamer__GetSpawnPos2(s32 *,s32);                        /* extern */
s32 Dreamer__GetChunkId(s32);                             /* extern */

void SceneMgr__ShowDayIntro3(void *arg0) {
    s32 sp18;
    s32 temp_s0;
    void **temp_v0;

    if (*(s32*)((char*)*(s32**)((char*)(arg0) + 0x20) + 0x8) != 0) {
        CdDrvWaitReady(0, 0, 0);
        temp_v0 = New_WorldEffect(0, 0, 0, 0);
        (*(void(**)())(*(void**)(temp_v0) + 0x12c))(temp_v0, 0);
        temp_s0 = Dreamer__GetSpawnPos2(&sp18, 0);
        (*(void(**)())(*(void**)(temp_v0) + 0x44))(temp_v0, *(s32*)((char*)(arg0) + 0x1c), temp_s0, Dreamer__GetChunkId(sp18), 1);
        (*(void(**)())(*(void**)(temp_v0) + 0x4))(temp_v0);
    }
};
