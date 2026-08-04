#include "common.h"

typedef struct { s8 b[8]; s16 c; } S10;

typedef struct { s32 x, y, z; } S32Triple;

extern s32 strHgraphTim;
extern s32 gActorSpriteConfig;
extern s32 gSpawnObj1Active;
extern s32 gAnimSetTable7;
extern s32 gAnimSetTable6;
extern s32 gSpawnCounter;
extern s32 gSpawnObj1;
extern s32 D_80086650;
extern s32 D_8008665C;
extern s32 gVtable_DreamScene;
extern s32 D_8008A978;
extern s32 D_8008A97C;
extern s32 gVtable_SceneObj;
extern s32 D_8008A980;
extern s32 D_80086904;
extern s32 D_80086990[];
extern u8 D_8008699C[];
extern u8 D_800869A8[];
extern u8 D_800869B4[];
extern u8 D_800869C0[];
extern s32 gVectorOne;
extern s32 gVtable_StageRenderer;
extern s32 gVtable_Camera;
extern s32 gVtable_CoordSys;
extern s32 D_80086D44;
extern s32 strEtcSe;
extern s32 D_8008AA24;
extern s32 strTitleTim;
extern s32 D_80086DAC;
extern s32 D_8008AA14;
extern s32 D_8008A9B4;
extern s32 D_8008AA18;
extern s32 strFileIcn1Tim;
extern s32 D_8008A9D0;
extern s32 D_80086D6C;
extern s32 D_8008AA10;
extern s32 gVtable_TitleScreen;
extern s32 D_8008AA30;
extern s32 D_80086E78[];
extern u8 D_8008AAA4[];
extern u8 D_8008AA9C[];
extern u8 D_8008AAAC[];
extern s32 func_80038F6C;
extern s32 func_8003903C;
extern s32 gVtable_TextPanel;
extern u8 gCtypeTable[];
extern s32 D_8008AAE4;
extern s32 D_8008AADC;
extern s32 D_8008AAE0;
extern s32 gVtable_ListMenu;
extern s32 D_8008AB10;
extern s32 D_8008AB0C;
extern s32 gVtable_GridMenu;
extern s32 D_8008AB38;
extern s32 D_8008AB40;
extern s32 D_8008AB44;
extern s32 gVtable_DreamWorld;
extern s32 D_8008AB4C;
extern s32 gLinkTypeId;
extern s32 gSpawnListHead;
extern s32 D_8008AC74;
extern s32 D_8008AC78;
extern s32 D_8008AC70;
extern s32 D_8008ACA0[];
extern s32 D_800873EC[];
extern s32 D_80087424;
extern u8 gSpawnRecordTable[];
extern s32 gSpawnScaleTable[];
extern s32 D_8008AB58;
extern s32 D_8008AB60;
extern s32 D_8008AB50;
extern s32 gSpawnCounterBufSize;
extern u8 gSpawnFlagsBuf[];
extern u8 gSpawnCounterBuf[];
extern s8 D_80087324[];
extern s32 D_8008AC9C[];
extern s32 D_80087330;
extern s32 D_80087204;
extern s32 D_8008E0A4;
extern s32 D_8008E0B4;
extern s32 gSpawnBehaviorTable[];
extern s32 D_80087474[];
extern u8 D_80087444[];
extern u8 D_80087450[];
extern u8 D_8008745C[];
extern u8 D_80087468[];
extern s32 D_8008ACAC;
extern s32 D_8008ACB0;
extern s32 D_8008ACA8;
extern s32 gVtable_Actor;
extern s32 D_8008AB98[];
extern s32 D_8008AB94;
extern s32 D_8008ACA4;
extern s32 gVtable_ActorBase;
extern u16 gActorSpriteTexIds[][2];
extern s32 gVtable_ActorSprite;
extern s32 D_8001176C;
extern s32 D_8008ABAC;
extern s32 D_8008ABB4;
extern s8 D_8008ABB8;
extern s32 D_8008ABBC;
extern s32 gVtable_GraphScreen;

extern s32 strHgraphTim;
extern s32 gActorSpriteConfig;
extern s32 gSpawnObj1Active;
extern s32 gAnimSetTable7;
extern s32 gAnimSetTable6;
extern s32 gSpawnCounter;
extern s32 gSpawnObj1;
void *DreamScene__GetVtable(void);                              /* extern */
void *SceneObj__GetVtable();                              /* extern */
extern s32 D_80086650;
extern s32 D_8008665C;
extern s32 gVtable_DreamScene;
extern s32 D_8008A978;
extern s32 D_8008A97C;
s32 Dreamer__Release(s32*);                              /* extern */
s32 func_80027024(s32, s32);                           /* extern */
void *Get_vtable_Effect();                              /* extern */
extern s32 gVtable_SceneObj;
extern s32 D_8008A980;
void StageRenderer__InitTileGrid(void);                              /* extern */
extern s32 D_80086904;
void *StageRenderer__LookupTile();                                       /* extern */
void StageRenderer__SetTileBusy(void*, s32);                            /* extern */
void StageRenderer__CopyScrollRegion(void*, s32, s16);                       /* extern */
void StageRenderer__RebuildTiles(void*);                                 /* extern */
extern s32 D_80086990[];
extern u8 D_8008699C[];
extern u8 D_800869A8[];
extern u8 D_800869B4[];
extern u8 D_800869C0[];
void StageRenderer__ForEachSubRenderer(s32, s32, void (*)(s32, s32));                            /* extern */
extern s32 StageRenderer__CountdownStepCb;
extern s32 StageRenderer__CountdownResetCb;
extern s32 gVectorOne;
void StageRenderer__UpdateSubRenderer(s32,s32, s32);                       /* extern */
extern s32 gVtable_StageRenderer;
void *BMemAlloc(s32);                              /* extern */
void *Get_vtable_ModelObj(void);                              /* extern */
extern s32 gVtable_Camera;
void *Get_vtable_SceneNode(void);                              /* extern */
extern s32 gVtable_CoordSys;
void *TitleScreen__GetVtable(void);                               /* extern */
void TitleScreen__SetupAudio(void *);                              /* extern */
extern s32 D_80086D44;
extern s32 strEtcSe;
void func_8004109C(void*, s32, s32, s32);                       /* extern */
extern s32 D_8008AA24;
extern s32 strTitleTim;
extern s32 D_80086DAC;
void Str_Copy(s32, void*);                          /* extern */
void func_80040FC0(s32, s32);                            /* extern */
s32 New_SpriteSet(s32, s32, s32);                        /* extern */
extern s32 D_8008AA14;
void *Get_vtable_AnimEffect(void);                              /* extern */
extern s32 D_8008A9B4;
s32 BMemFree(s32);                               /* extern */
void TitleScreen__CapPlayCounter(void *, void *);              /* extern */
extern s32 D_8008AA18;
s32 LoadFileObj(s32 *);                             /* extern */
extern s32 strFileIcn1Tim;
extern s32 D_8008A9D0;
extern s32 D_80086D6C;
extern s32 D_8008AA10;
extern s32 gVtable_TitleScreen;
extern s32 D_8008AA30;
void TextSys__InitA(s32);                                 /* extern */
void TextSys__InitB(void);                                /* extern */
void TextSys__InitC(void);                                /* extern */
void TextPanel__ClearFields(void*);                                /* extern */
void *Get_vtable_BasicClass(void);                               /* extern */
extern s32 D_80086E78[];
void EnterCriticalSection(void);                                 /* extern */
void ExitCriticalSection(void);                                 /* extern */
s32 func_80038F7C(s32, s32, s32, s32);                    /* extern */
void TextPanel__FontOpB();                                  /* extern */
void TextPanel__RunFontOp(s32,s32 *,s32);                       /* extern */
void func_8003902C(s32);                                 /* extern */
void TextPanel__PrintGuarded(s32, s32, s32*, s32);                 /* extern */
s32 TextSys__GetFlag(s32);                              /* extern */
void TextSys__SetState(s32);                              /* extern */
s32 TextSys__GetState(s32);                              /* extern */
s32 TextPanel__FontOp4(s32);                              /* extern */
extern u8 D_8008AAA4[];
extern u8 D_8008AA9C[];
s32 StrLen(u8*);                              /* extern */
s32 TextPanel__StoreString(void*, s32, u8*);                         /* extern */
u8 *TextStrAppend(u8*, s32, u8*);                         /* extern */
s32 StrCompare(s32, s32);                           /* extern */
void StrCopyN(s32, void*, s32);                      /* extern */
void TextBuf__WriteStr(s32);                              /* extern */
s32 TextPanel__FormatInto(void*, u8, void*);                   /* extern */
void TextBuf__Rewind(s32*);                              /* extern */
extern u8 D_8008AAAC[];
s32 TextPanel__FormatString(s32, s32, s32, s32);                       /* extern */
void TextBuf__WriteByte(s32, s32, s32);                          /* extern */
void *TextBuf__Init(void*, s32);                        /* extern */
s32 TextPanel__FormatStringEx(void*, void*, void*, s32, s32, s32, s32); /* extern */
u8 *Str_Concat(u8*, u8*);                            /* extern */
extern s32 func_80038F6C;
extern s32 func_8003903C;
s32 func_800390F4(s32);                                 /* extern */
void TextPanel__FontOpEx(s32,s32);                            /* extern */
s32 TextPanel__TrimLines(void*);                              /* extern */
void TextPanel__FreeLineBuffersEx(void*);                              /* extern */
void TextPanel__AllocLineBuffers(void*);                              /* extern */
extern s32 gVtable_TextPanel;
void ParseNumber();                                  /* extern */
extern u8 gCtypeTable[];
u8 func_800133AC(s32);                                  /* extern */
void TextSys__Flush(void);                              /* extern */
void TextSys__SetField(void*, s32, s32);                    /* extern */
void *ListMenu__GetVtable(void);                                /* extern */
void *func_80013348(s32);                                /* extern */
extern s32 D_8008AAE4;
extern s32 D_8008AADC;
extern s32 D_8008AAE0;
extern s32 gVtable_ListMenu;
void func_800238A8(s32, s32, s32);                          /* extern */
extern s32 D_8008AB10;
extern s32 D_8008AB0C;
extern s32 gVtable_GridMenu;
void *DreamWorld__GetVtable(void);
void DreamWorld__CollisionCallback(void *arg0, s32 arg1, s32 arg2, s32 arg3);
void Dreamer__OnMoveClear(s32);                               /* extern */
void Dreamer__OnWallSlide(s32,s32,s32);                         /* extern */
void Spawner__Reset();                                  /* extern */
void EntityMgr__ShutdownB();                                  /* extern */
void Spawner__Update(s32,s32,s32);                         /* extern */
void DreamWorld__ScheduleAction(void *, s32,s32,s32, s32);            /* extern */
s32 EntityMgr__CheckNavChallenge(s32, s32*, s32);                       /* extern */
extern s32 D_8008AB38;
extern s32 D_8008AB40;
extern s32 D_8008AB44;
extern s32 gVtable_DreamWorld;
extern s32 D_8008AB4C;
extern s32 gLinkTypeId;
extern s32 gSpawnListHead;
extern s32 D_8008AC74;
extern s32 D_8008AC78;
extern s32 D_8008AC70;
extern s32 D_8008ACA0[];
s32 Spawner__LoadRecords(void);                              /* extern */
extern s32 D_800873EC[];
extern s32 D_80087424;
void *Spawner__CreateStateObj(void);                                /* extern */
void Spawner__DecodeRecord(s32*, void*);                          /* extern */
extern u8 gSpawnRecordTable[];
extern s32 gSpawnScaleTable[];
extern s32 D_8008AB58;
extern s32 D_8008AB60;
void *New_Sprite(s32, s32, s32);                       /* extern */
extern s32 D_8008AB50;
extern s32 gSpawnCounterBufSize;
extern u8 gSpawnFlagsBuf[];
extern u8 gSpawnCounterBuf[];
void ReleaseObjectArray(void*, s32);                           /* extern */
void Spawner__SpawnEffect(s32, s32, s32, s32);                   /* extern */
void *Spawner__SpawnGroupA(s32, s32, void*);                     /* extern */
void *Spawner__SpawnGroupB(void*, s32, void*);                   /* extern */
void Spawner__SpawnGroupC(void*, void*);                         /* extern */
void Spawner__SpawnGroupD(s32, void*);                           /* extern */
extern s8 D_80087324[];
extern s32 D_8008AC9C[];
s32 Spawner__UnregisterActor(void *);                             /* extern */
extern s32 D_80087330;
extern s32 D_80087204;
extern s32 D_8008E0A4;
extern s32 D_8008E0B4;
void Spawner__RandomCoord(s32, s32);                             /* extern */
void *Actor__Create(s32, s32, s32, s32);                  /* extern */
extern s32 gSpawnBehaviorTable[];
void *Spawner__AllocNode(s32*, s32*);                          /* extern */
void SlotAlloc__Init(s32, s32*, s32, s32, s32);              /* extern */
void SlotAlloc__Release(s32, s32*);                          /* extern */
s32 Spawner__IsActorDone(void*);                               /* extern */
void SlotAlloc__Update(s32, s32*);                          /* extern */
extern s32 D_80087474[];
extern u8 D_80087444[];
extern u8 D_80087450[];
extern u8 D_8008745C[];
extern u8 D_80087468[];
void func_8003B624(void*, s32, void*);                   /* extern */
s32 Spawner__NextParam();                                /* extern */
void *Actor__GetVtable(void);                                /* extern */
void Actor__InitMotion(void*, s32, s32);                      /* extern */
void Actor__UpdateMotion();                                  /* extern */
extern s32 D_8008ACAC;
extern s32 D_8008ACB0;
void Actor__Method569A8(void*, s32);                          /* extern */
void Actor__Nop(void*, s32);                          /* extern */
void Actor__RandomizeHeading(void*, s32);                          /* extern */
void Actor__ClearState0();                                  /* extern */
void Actor__ClearState2();                                  /* extern */
void Actor__ClearState3();                                  /* extern */
extern s32 D_8008ACA8;
void *ActorSprite__Create(s32, s32, s32);                       /* extern */
void Actor__SpawnSprite(void*, s32, s32, s32);                           /* extern */
extern s32 gVtable_Actor;
extern s32 D_8008AB98[];
extern s32 D_8008AB94;
extern s32 D_8008ACA4;
s32 SpawnEffectRaw(s32, s32);                           /* extern */
void *Get_vtable_ActorBase(void);                              /* extern */
void func_8001E58C(void*, s32*, s32);                          /* extern */
void ActorBase__LoadAnimSet(void*, void*, s32, s32, s32);                  /* extern */
void ActorBase__TryPlayAnim(void*, void(*)(void*, s32, s32), s32, s32);
s32 ActorBase__FindChildOfType(void*, s32, s32, s32, s32);             /* extern */
s32 SceneNode_IsType(void*);                               /* extern */
extern s32 gVtable_ActorBase;
void *func_800422BC();                              /* extern */
void *ActorSprite__GetVtable();                              /* extern */
extern u16 gActorSpriteTexIds[][2];
extern s32 gVtable_ActorSprite;
extern s32 D_8001176C;
void *GraphScreen__GetVtable(void);                               /* extern */
extern s32 D_8008ABAC;
extern s32 D_8008ABB4;
extern s8 D_8008ABB8;
extern s32 D_8008ABBC;
extern s32 gVtable_GraphScreen;
void *DreamScene__Create(s32 arg0, s32 arg1, s32 arg2) {
    void *s0 = BMemAlloc(0x50);

    if (s0 != 0) {
        (*(void(**)(void*, s32, s32, s32))((char *)DreamScene__GetVtable() + 0x8))(s0, arg0, arg1, arg2);
        return s0;
    }
    return 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", DreamScene__Constructor);
void DreamScene__Destructor(void *arg0) {
    void *s0;
    void *temp;

    s0 = *(void**)((char*)arg0 + 0xC);
    (*(void(**)(void*, void*))((char*)*(void**)arg0 + 0x14))(arg0, *(void**)((char*)arg0 + 0x38));

    temp = *(void**)((char*)s0 + 0xC);
    *(void**)((char*)s0 + 0xC) = (*(void*(**)(void*))(*(void**)(temp) + 0x4))(temp);

    temp = *(void**)((char*)s0 + 0x8);
    *(void**)((char*)s0 + 0x8) = (*(void*(**)(void*))(*(void**)(temp) + 0x4))(temp);

    temp = *(void**)((char*)s0 + 0x10);
    *(void**)((char*)s0 + 0x10) = (*(void*(**)(void*))(*(void**)(temp) + 0x4))(temp);

    temp = *(void**)((char*)arg0 + 0x40);
    (*(void(**)(void*))(*(void**)(temp) + 0x4))(temp);

    temp = *(void**)((char*)arg0 + 0x48);
    (*(void(**)(void*))(*(void**)(temp) + 0x4))(temp);

    temp = *(void**)((char*)arg0 + 0x44);
    (*(void(**)(void*))(*(void**)(temp) + 0x4))(temp);

    EntityMgr__Shutdown();
    (*(void(**)(void*))((char*)SceneObj__GetVtable() + 0xC))(arg0);
}
void DreamScene__Cleanup(void *arg0, void *arg1, void *arg2) {
    s32 temp;

    (*(void(**)(void*, void*, void*))((char*)SceneObj__GetVtable() + 0x38))(arg0, arg1, arg2);
    temp = **(s32**)arg1;
    if ((temp & 0xFFFF) == 0x1F34) {
        (*(void(**)(void*, void*, void*))((char*)*(void**)arg0 + 0x80))(arg0, arg1, arg2);
        return;
    }
    if ((temp & 0xFFFFF) == 0x2F230) {
        (*(void(**)(void*, void*, void*))((char*)*(void**)arg0 + 0x84))(arg0, arg1, arg2);
    }
}
void DreamScene__ResetState(void *arg0) {
    *(s32*)((char*)(arg0) + 0x3c) = 0;
};
void DreamScene__Update(void *arg0) {
    void **temp_s0;

    temp_s0 = *(s32*)((char*)(arg0) + 0x38);
    (*(void(**)())(*(void**)(temp_s0) + 0x10))(temp_s0, *(s32*)((char*)*(s32**)((char*)(arg0) + 0xc) + 0x4));
    (*(void(**)())(*(void**)(temp_s0) + 0x10))(temp_s0, *(s32*)((char*)*(s32**)((char*)(arg0) + 0xc) + 0x8));
    (*(void(**)())(*(void**)(temp_s0) + 0x110))(temp_s0, *(s32*)((char*)*(s32**)((char*)(arg0) + 0xc) + 0x10));
    (*(void(**)())((char*)SceneObj__GetVtable() + 0x44))(arg0, *(s32*)((char*)(arg0) + 0xc), 0);
}
void DreamScene__UpdateCamera(void *arg0) {
    void *s0;
    s0 = *(void **)((char *)arg0 + 0x38);
    (*(void (**)(void *))((char *)SceneObj__GetVtable() + 0x48))(arg0);
    (*(void (**)(void *, s32))((char *)*(void **)s0 + 0x110))(s0, 0);
    (*(void (**)(void *, void *))((char *)*(void **)s0 + 0x14))(s0, *(void **)((char *)*(void **)((char *)arg0 + 0xC) + 4));
    (*(void (**)(void *, void *))((char *)*(void **)s0 + 0x14))(s0, *(void **)((char *)arg0 + 0x10));
}
void DreamScene__BeginLoad(void *arg0) {
    void **temp_a0;
    void **temp_s0;
    void **temp_v0;

    temp_a0 = **(s32**)((char*)(arg0) + 0xc);
    temp_s0 = *(s32*)((char*)(arg0) + 0x18);
    (*(void(**)())(*(void**)(temp_s0) + 0x44))(temp_s0, (*(s32(**)())(*(void**)(temp_a0) + 0x7c))(temp_a0, 0));
    temp_v0 = (*(s32(**)())(*(void**)(temp_s0) + 0xac))(temp_s0);
    (*(void(**)())(*(void**)(temp_v0) + 0x60))(temp_v0, 1);
    (*(void(**)())(*(void**)(temp_s0) + 0x4c))(temp_s0, 0x4B0);
    (*(void(**)())(*(void**)(temp_s0) + 0x70))(temp_s0, *(s32*)((char*)(arg0) + 0x38), &D_80086650, &D_8008665C, 0);
    (*(void(**)())(*(void**)(temp_s0) + 0x8c))(temp_s0);
    *(s32*)((char*)(arg0) + 0x3c) = 1;
};
void DreamScene__EndLoad(void *arg0) {
    void **temp_s0;

    temp_s0 = *(s32*)((char*)(arg0) + 0x18);
    (*(void(**)())(*(void**)(temp_s0) + 0x90))(temp_s0);
    (*(void(**)())(*(void**)(temp_s0) + 0x74))(temp_s0);
};
void DreamScene__TryEnterWorld(void *arg0, void *arg1, s32 arg2) {
    void *temp;
    s32 ret;
    s32 v1;

    (*(void(**)(void*, void*, s32))((char*)SceneObj__GetVtable() + 0x54))(arg0, arg1, arg2);
    if (arg2 == 2) {
        v1 = *(s32*)((char*)arg0 + 0x3c);
        if (v1 != arg2) {
            switch (v1) {
            case 1:
                temp = *(void**)((char*)arg0 + 0x38);
                ret = (*(s32(**)(void*))(*(void**)(temp) + 0x1B4))(temp);
                if (ret >= 0) {
                    DreamScene__EnterWorld(arg0, ret);
                } else {
                    temp = *(void**)((char*)arg0 + 0x38);
                    (*(void(**)(void*, s32))(*(void**)(temp) + 0x1B8))(temp, 0);
                    *(s32*)((char*)arg0 + 0x28) = arg2;
                    (*(void(**)(void*, s32))((char*)*(void**)arg0 + 0x60))(arg0, 3);
                }
                break;
            case 2:
                break;
            case 3:
                temp = *(void**)((char*)arg0 + 0x4C);
                (*(void(**)(void*))(*(void**)(temp) + 0x48))(temp);
                temp = *(void**)((char*)arg0 + 0x4C);
                (*(void(**)(void*))(*(void**)(temp) + 0x4))(temp);
                temp = *(void**)((char*)arg0 + 0x38);
                ret = (*(s32(**)(void*))(*(void**)(temp) + 0x1E0))(temp);
                DreamScene__EnterWorld(arg0, ret);
                break;
            }
        }
    }
}
void DreamScene__EnterWorld(void *arg0, s32 arg1) {
    void **temp_a0;
    void **temp_v0;

    temp_v0 = DreamWorld__Create(*(s32*)((char*)(arg0) + 0x34), *(s32*)((char*)(arg0) + 0x40), *(s32*)((char*)(arg0) + 0x44), *(s32*)((char*)(arg0) + 0x48), arg1);
    *(s32*)((char*)(arg0) + 0x4c) = temp_v0;
    (*(void(**)())(*(void**)(arg0) + 0x10))(arg0, temp_v0);
    temp_a0 = *(s32*)((char*)(arg0) + 0x4c);
    (*(void(**)())(*(void**)(temp_a0) + 0x44))(temp_a0, *(s32*)((char*)(arg0) + 0xc), *(s32*)((char*)(arg0) + 0x38));
    *(s32*)((char*)(arg0) + 0x3c) = 2;
};
void DreamScene__Nop7C(void) {
}
void DreamScene__Nop80(void) {
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", DreamScene__Method84);
void *DreamScene__GetVtable(void) {
    return &gVtable_DreamScene;
};
void SceneObj__ResetStatic(void *arg0) {
    s32 sp10;
    s32 s1 = Dreamer__Release(&sp10);
    s32 t = D_8008A978;
    s32 v1 = t + 1;

    D_8008A978 = v1;
    switch (v1) {
    case 1:
        if (arg0 != 0) {
            D_8008A978 = t + 2;
        } else {
            sp10 = sp10 / 2;
            D_8008A97C = sp10;
        }
        break;
    case 2:
        sp10 = sp10 - D_8008A97C;
        break;
    default:
        sp10 = 0;
    }
    while (func_80027024(s1, sp10) == 0) {
    }
}
void *SceneObj__Create(s32 arg0, s32 arg1) {
    void *s0 = BMemAlloc(0x38);

    if (s0 != 0) {
        (*(void(**)(void*, s32, s32))((char *)SceneObj__GetVtable() + 0x8))(s0, arg0, arg1);
        return s0;
    }
    return 0;
}
void SceneObj__Constructor(void *arg0, s32 arg1, s32 arg2)
{
    (*(void (**)(void *))((char *)Get_vtable_Effect() + 8))(arg0);
    *(s32 *)arg0 = SceneObj__GetVtable();
    if (arg1 != 0) {
        *(s32 *)((char *)arg0 + 0x34) = New_SoundPlayer(arg1);
    } else {
        *(s32 *)((char *)arg0 + 0x34) = arg2;
    }
    *(s32 *)((char *)arg0 + 0x30) = arg1;
    (*(void (**)(void *))((char *)*(s32 *)arg0 + 0x40))(arg0);
}
void SceneObj__Destructor(void *arg0) {
    if (*(s32*)((char*)arg0 + 0x30) != 0) {
        void *subobj = *(void**)((char*)arg0 + 0x34);
        (*(void(**)())(*(void**)subobj + 0x4))(subobj);
    }
    (*(void (**)(void *))((char *)Get_vtable_Effect() + 0xC))(arg0);
}
void SceneObj__ClearTimeout(void **arg0) {
    (*(void(**)(void*, s32))(*(void**)(arg0) + 0x6c))(arg0, -1);
}
s32 SceneObj__Process(void *arg0, s32 arg1, s32 arg2) {
    *(s32*)((char*)(arg0) + 0x28) = 0;
    (*(s32(**)(void*, s32, s32))((char*)Get_vtable_Effect() + 0x44))(arg0, arg1, arg2);
    return *(s32*)((char*)(arg0) + 0x28);
}
void SceneObj__Method48(s32 arg0) {
    void *obj = Get_vtable_Effect();
    ((void (*)(s32))*(void **)((u8 *)obj + 0x48))(arg0);
}
void SceneObj__Nop(void) {
}
void SceneObj__TickTimeout(void *arg0, s32 arg1, s32 arg2) {
    (*(void(**)())((char*)Get_vtable_Effect() + 0x5c))(arg0, arg1, arg2);
    if ((u32) *(s32*)((char*)(arg0) + 0x1c) > (u32) *(s32*)((char*)(arg0) + 0x2c)) {
        (*(void(**)())(*(void**)(arg0) + 0x60))(arg0, 4);
    }
}
void SceneObj__SetState(void *arg0, s32 arg1) {
    (*(void(**)(void*, s32))((char*)Get_vtable_Effect() + 0x60))(arg0, arg1);
    if (arg1 == 4) {
        *(s32*)((char*)(arg0) + 0x28) = 1;
        (*(void(**)(void*))(*(void**)arg0 + 0x7c))(arg0);
    }
}
void SceneObj__SetTimeout(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x2c) = arg1;
    if (arg1 >= 0) {
        *(s32*)((char*)(arg0) + 0x2c) = (s32) (arg1 * 0x14);
    }
}
void SceneObj__PlaySfx(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    void *a0 = *(void **)((char *)arg0 + 0x34);
    if (a0 != NULL) {
        (*(void(**)(void *, s32, s32, s32))((char *)*(void **)a0 + 0x80))(a0, arg1, 0x7F, 0x7F);
    }
}
void *SceneObj__GetVtable(void) {
    return &gVtable_SceneObj;
};
void *StageRenderer__Create(s32 arg0, s32 arg1) {
    void *s0 = BMemAlloc(0x1E8);

    if (s0 != 0) {
        (*(void(**)(void*, s32, s32))((char *)StageRenderer__GetVtable() + 0x8))(s0, arg0, arg1);
        return s0;
    }
    return 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__Constructor);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__Destructor);
void StageRenderer__HandleEvent(void **arg0, s32 **arg1, s32 arg2) {
    (*(void(**)(void**, s32**, s32))((char*)Get_vtable_SceneNode() + 0x38))(arg0, arg1, arg2);
    if ((**arg1 & 0xF) == 1) {
        (*(void(**)(void**, s32**, s32))(*(void**)arg0 + 0x100))(arg0, arg1, arg2);
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__PostInit);
void StageRenderer__SetCallbackEntity(void *arg0, s32 arg1, void *arg2) {
    void **temp_a0;
    (*(void(**)(void*, s32))((char*)Get_vtable_SceneNode() + 0x88))(arg0, arg1);
    switch (arg1) {
    case 6:
        temp_a0 = *(s32*)((char*)(arg2) + 0x14);
        if (temp_a0 != NULL) {
            *(s32*)((char*)(arg2) + 0x14) = (*(s32(**)(void**))(*(void**)(temp_a0) + 0x4))(temp_a0);
        }
    case 7:
        *(s32*)((char*)(arg0) + 0x1bc) = arg2;
        (*(void(**)(void*, s32))(*(void**)arg0 + 0x30))(arg0, arg1);
        return;
    }
}
void StageRenderer__FlushPending(void *arg0) {
    if (*(s32*)((char*)(arg0) + 0x70) != 0) {
        (*(void(**)())(*(void**)(arg0) + 0xf4))();
        (*(void(**)())(*(void**)(arg0) + 0x13c))(arg0);
    }
};
void StageRenderer__HandleCommand(void **arg0, u8 **arg1) {
    if (**arg1 == 0x34) {
        (*(void(**)())(*(void**)(arg0) + 0xd0))();
    }
};
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__MethodC0);
void StageRenderer__MethodC4(void *arg0, s32 arg1, void *arg2, void *arg3) {
    s32 i;
    void *result;
    void *(*fn)(void *, s32);
    void (*fn2)(void *, s32, void *);
    for (i = 0; i < arg1; i++) {
        fn = (void *(*)(void *, s32))*(void **)((char *)*(void **)arg0 + 0xB8);
        result = fn(arg0, i);
        fn2 = (void (*)(void *, s32, void *))*(void **)((char *)*(void **)result + 0x44);
        fn2(result, 1, arg3);
        arg3 = (char *)arg3 + 3;
        fn2 = (void (*)(void *, s32, void *))*(void **)((char *)*(void **)result + 0x48);
        fn2(result, 1, arg2);
        arg2 = (char *)arg2 + 6;
    }
}
void StageRenderer__SetValues60(void *arg0, s32 arg1, s32 arg2) {
    *(s32*)((char*)(arg0) + 0x60) = arg1;
    *(s32*)((char*)(arg0) + 0x64) = arg2;
};
void StageRenderer__SetFieldE8(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0xe8) = arg1;
};
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__MethodD0);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__SetupScroll);
void StageRenderer__InitScroll(void *arg0, s8 *arg1, s32 arg2) {
    s8 b;
    *(s16 *)((char *)arg0 + 0x7C) = arg1[2] - 1;
    b = arg1[3];
    *(s32 *)((char *)arg0 + 0x80) = arg2;
    *(s32 *)((char *)arg0 + 0x84) = arg2;
    *(s16 *)((char *)arg0 + 0x7E) = b - 1;
    StageRenderer__InitTileGrid();
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__CalcScrollBounds);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__ApplyScroll);
void StageRenderer__TeardownIfFlagged(void *arg0) {
    if ((arg0 != NULL) && (*(u16*)((char*)(arg0) + 0x36) & 0x80)) {
        (*(void(**)(void*))(*(void**)arg0 + 0x38))(arg0);
    }
}
s32 StageRenderer__GetField1C0(s32 arg0) {
    return arg0 + 0x1C0;
};
void StageRenderer__Nop(void) {
}
void StageRenderer__SetTexturePageSize(void *arg0, s32 arg1) {
    *(s32*)((s32)arg0 + 0x74) = arg1;
    *(s16*)((s32)arg0 + 0x7A) = arg1 >> 11;
    *(s16*)((s32)arg0 + 0x78) = arg1 >> 12;
}
void StageRenderer__SetTileScale(void *arg0, s32 arg1) {
    (*(void(**)())(*(void**)(arg0) + 0x40))();
    *(s32*)((char*)(arg0) + 0x68) = arg1;
};
void StageRenderer__MethodE4(void *arg0, void *arg1, s32 arg2, void *arg3) {
    S10 local;
    void *ret;
    *(s32 *)((char *)arg0 + 0x6C) = arg2;
    *(S10 *)((char *)arg0 + 0xBC) = *(S10 *)arg3;
    ret = StageRenderer__LookupTile(arg1, &local, *(s32 *)((char *)arg0 + 0x68), (char *)arg0 + 0x54, arg3);
    (*(void (**)(void *, void *, void *, void *))((char *)*(void **)arg0 + 0xF8))(arg0, ret, &local, &D_80086904);
}
void StageRenderer__GetTileAt(void *arg0, void *arg1, s32 arg2) {
    s32 local[4];

    StageRenderer__LookupTile(arg1, local, *(s32 *)((char *)arg0 + 0x68), (s32 *)((char *)arg0 + 0x54), arg2);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__LookupTile);
void StageRenderer__Activate(void *arg0) {
    *(s32*)((char*)(arg0) + 0x70) = 1;
};
void StageRenderer__Deactivate(void *arg0) {
    (*(void(**)())(*(void**)(arg0) + 0xc0))();
    *(s32*)((char*)(arg0) + 0x70) = 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__MethodF4);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__UpdateChunks);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__StreamChunks);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__LoadChunk);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__RefreshChunkSet);
s32 StageRenderer__CountActiveSubRenderers(u16 *arg0) {
    s32 count = 0;
    s32 i;
    for (i = 0; i < 7; i++) {
        if (arg0[i * 0xE + 0x76] != 0) {
            count++;
        }
    }
    return count;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__Method100);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__LoadModel);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__Method108);
void *StageRenderer__Method10C(void *arg0, void *arg1, void **arg2) {
    void *v1 = *(void **)(*(s32 *)((char *)arg0 + 0x6C) + 0x14) + 0x18;
    if (arg2 != 0) {
        *arg2 = v1;
    }
    if (arg1 != 0) {
        if ((*(s32 (**)(void *, void *, void *))(*(s32 *)arg0 + 0x110))(arg0, arg1, v1) != 0) {
            return 0;
        }
    }
    return (char *)arg0 + 0xBC;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__Method110);
void StageRenderer__IndexToTileXY(s32 *a0, s8 *a1, s32 a2) {
    *a1 = a2 % *(s16*)*(s32*)((char*)a0 + 0x68);
    a1[1] = a2 / *(s16*)*(s32*)((char*)a0 + 0x68);
}
void *StageRenderer__GetCallbackEntityTile(void *arg0, s32 arg1) {
    StageRenderer__IndexToTileXY(arg0, arg1, *(s16*)(*(s32*)(*(s32*)((char*)arg0 + 0x1bc) + 4) + 0x30));
    return *(s32*)((char*)arg0 + 0x1bc);
}
void *StageRenderer__FindSubRendererById(char *arg0, s32 arg1) {
    s32 i;
    char *entry;
    for (i = 0; i < 7; i++) {
        entry = arg0 + 0xEC + i * 0x1C;
        if (*(s16 *)(*(s32 *)(entry + 4) + 0x32) == arg1) {
            return entry;
        }
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__Method11C);
s32 StageRenderer__FindSubRendererIndex(char *arg0, s32 arg1) {
    s32 result = 0;
    s32 i;
    char *entry;
    for (i = 0; i < 7; i++) {
        entry = arg0 + 0xEC + i * 0x1C;
        if (*(s16 *)(*(s32 *)(entry + 4) + 0x32) == arg1) {
            result = i;
            break;
        }
    }
    return result;
}
s32 StageRenderer__FindActiveSubRenderer(char *arg0, s32 arg1) {
    s32 i;
    char *entry;
    for (i = 0; i < 7; i++) {
        entry = arg0 + 0xEC + i * 0x1C;
        if (*(s16 *)(*(s32 *)(entry + 4) + 0x30) == arg1) {
            if (*(s16 *)(*(s32 *)(entry + 4) + 0x2C) != 0) {
                return i;
            }
        }
    }
    return -1;
}
void StageRenderer__RefreshScroll(void *arg0) {
    if (*(s32*)((char*)arg0 + 0x1B8) != 0) {
        s32 val = *(s16*)((char*)arg0 + 0x78) * 2;
        StageRenderer__SetTileBusy(arg0, 0);
        if (*((s32*)(*(s32*)((char*)arg0 + 0x68)) + 1) == 0) {
            StageRenderer__CopyScrollRegion(arg0, val, *(s16*)((char*)arg0 + 0x7A));
        } else {
            StageRenderer__RebuildTiles(arg0);
        }
        StageRenderer__SetTileBusy(arg0, 1);
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__CopyScrollRegion);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__InitTileGrid);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__FillTileGrid);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__RebuildTiles);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__MethodCD38);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__MethodCDA4);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__SetTileBusy);
s32 StageRenderer__GetField1CC(s32 arg0) {
    return arg0 + 0x1CC;
};
void StageRenderer__SetField1DC(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x1dc) = arg1;
};
s32 StageRenderer__Method138(void *arg0, s32 arg1, s32 arg2) {
    s32 v0;
    s32 v1;
    if (arg1 > 0) {
        v0 = (s32)&D_8008699C;
        if (arg2 != 0) {
            v0 = (s32)&D_800869A8;
            *(s32 *)((char *)arg0 + 0x1E4) = v0;
            goto skip;
        }
    } else {
        v0 = (s32)&D_800869B4;
        if (arg2 != 0) {
            v0 = (s32)&D_800869C0;
        }
    }
    *(s32 *)((char *)arg0 + 0x1E4) = v0;
skip:
    v0 = *(s32 *)((char *)arg0 + 0x1E4);
    v1 = *(s16 *)((char *)v0 + 6);
    v0 = v1 * (arg1 < 0 ? ~arg1 + 1 : arg1);
    *(s32 *)((char *)arg0 + 0x1E0) = v0;
    return v0;
}
void StageRenderer__TickCountdown(void *arg0) {
    s32 temp_v0;

    if (*(s32*)((char*)(arg0) + 0x1e0) > 0) {
        StageRenderer__ForEachSubRenderer(arg0, &StageRenderer__CountdownStepCb, 0);
        temp_v0 = *(s32*)((char*)(arg0) + 0x1e0) - 1;
        *(s32*)((char*)(arg0) + 0x1e0) = temp_v0;
        if (temp_v0 == 0) {
            *(s32*)((char*)(arg0) + 0x1e0) = -1;
        }
    }
}
void StageRenderer__CancelCountdown(void *arg0) {
    if (*(s32*)((char*)(arg0) + 0x1e0) != 0) {
        StageRenderer__ForEachSubRenderer(arg0, &StageRenderer__CountdownResetCb, 0);
        *(s32*)((char*)(arg0) + 0x1e0) = 0;
    }
}
void StageRenderer__CountdownStepCb(void *arg0, void **arg1) {
    (*(void(**)())(*(void**)(arg1) + 0x48))(arg1, 0, *(s32*)((char*)(arg0) + 0x1e4));
}
void StageRenderer__CountdownResetCb(void **arg0, void **arg1) {
    (*(void(**)())(*(void**)(arg1) + 0x48))(arg1, 1, &gVectorOne);
}
void StageRenderer__ForEachSubRenderer(s32 arg0, s32 arg1, void (*arg2)(s32, s32)) {
    s32 temp_s0;
    s32 var_s1;
    s32 var_s3;

    var_s3 = 0;
    var_s1 = 0xEC;
    do {
        temp_s0 = arg0 + var_s1;
        if (arg2 != NULL) {
            arg2(arg0, temp_s0);
        }
        StageRenderer__UpdateSubRenderer(arg0, arg1, temp_s0);
        var_s3 += 1;
        var_s1 += 0x1C;
    } while (var_s3 < 7);
};
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StageRenderer__UpdateSubRenderer);
void *StageRenderer__GetVtable(void) {
    return &gVtable_StageRenderer;
};
void *Camera__Create(void) {
    void *s0 = BMemAlloc(0xDC);

    if (s0 != 0) {
        (*(void(**)(void *))((char *)Camera__GetVtable() + 0x8))(s0);
        return s0;
    }
    return 0;
}
void Camera__Constructor(void *arg0) {
    (*(void (**)(void *))((char *)Get_vtable_ModelObj() + 0x8))(arg0);
    *(s32*)((char*)arg0) = (s32)Camera__GetVtable();
    (*(void (**)(void *))(*(s32*)arg0 + 0x40))(arg0);
}
void Camera__Nop(void) {
}
void Camera__ConditionalUpdate(void *arg0) {
    if (*(s32*)((char*)arg0 + 0x10) != 0 && *(s32*)((char*)arg0 + 0x70) != 0) {
        (*(void (**)(void *))((char *)Get_vtable_ModelObj() + 0x9C))(arg0);
    }
}
void Camera__NopB8(void) {
}
void Camera__NopBC(void) {
}
void Camera__NopC0(void) {
}
void Camera__NopC4(void) {
}
void *Camera__GetVtable(void) {
    return &gVtable_Camera;
};
void *CoordSys__Create(void) {
    void *s0 = BMemAlloc(0x3C);

    if (s0 != 0) {
        (*(void(**)(void *))((char *)CoordSys__GetVtable() + 0x8))(s0);
        return s0;
    }
    return 0;
}
void CoordSys__Constructor(void *arg0) {
    (*(void (**)(void *))((char *)Get_vtable_SceneNode() + 0x8))(arg0);
    *(s32*)((char*)arg0) = (s32)CoordSys__GetVtable();
    *(s16*)((char*)arg0 + 0x34) = 0;
    *(s16*)((char*)arg0 + 0x36) = 0;
    *(s32*)((char*)arg0 + 0x38) = 0;
}
void CoordSys__Nop(void) {
}
void CoordSys__HandleCommand(void **arg0, u8 **arg1) {
    if (**arg1 == 0x34) {
        (*(void(**)())(*(void**)(arg0) + 0xb8))();
    }
};
void CoordSys__MethodC0(void *arg0, void *arg1, s32 arg2) {
    (*(void (**)(void *, void *, s32))((char *)Get_vtable_SceneNode() + 0x9C))(arg0, arg1, arg2);
    if (arg2 < 9) {
        if (arg2 >= 5) {
            (*(void (**)(void *, void *, s32))((char *)*(void **)arg0 + 0xA0))(arg0, arg1, arg2);
        }
    }
}
s32 Identity(s32 arg0) {
    return arg0;
};
void *CoordSys__GetVtable(void) {
    return &gVtable_CoordSys;
};
void *TitleScreen__Create(void *arg0) {
    void *s0 = BMemAlloc(0xC4);

    if (s0 != 0) {
        (*(void(**)(void*, void *))((char *)TitleScreen__GetVtable() + 0x8))(s0, arg0);
        return s0;
    }
    return 0;
}
void TitleScreen__Constructor(void *arg0, void *arg1) {
    void *p = Get_vtable_AnimEffect();
    void *s2 = &D_80086D44;
    (*(void(**)(void*, void*, s32, s32))((char*)p + 0x8))(arg0, s2, (s32)&strEtcSe, 0);
    *(s32*)arg0 = (s32)TitleScreen__GetVtable();
    {
        void *a4 = *(void**)((char*)arg0 + 0x48);
        (*(void(**)(void*, s32))(*(s32*)a4 + 0x9C))(a4, -1);
        *(void**)((char*)arg0 + 0xA4) = arg1;
        *(s32*)((char*)arg0 + 0xAC) = 0;
        *(s32*)((char*)arg0 + 0xBC) = (*(s32(**)(void*, void*))(*(s32*)arg1 + 0x1B0))(arg1, (void*)((char*)arg0 + 0xC0));
        TitleScreen__SetupAudio((void*)(*(s32(**)(void*, s32))(*(s32*)arg1 + 0x1A0))(arg1, 0));
        (*(void(**)(void*, void*))(*(s32*)arg0 + 0xD8))(arg0, s2);
        (*(void(**)(void*, void*))(*(s32*)arg0 + 0x40))(arg0, arg1);
    }
}
void TitleScreen__CapPlayCounter(void *arg0, void *arg1) {
    s32 var_a2;
    void *temp_a0;

    temp_a0 = *(s32*)((char*)(arg0) + 0xbc);
    var_a2 = 1;
    if (*(s32*)((char*)(temp_a0) + 0xc) > 0x98967F) {
        var_a2 = *(s32*)((char*)(temp_a0) + 0x2f4) == 0;
    }
    *(s32*)((char*)*(s32**)((char*)(arg1) + 0x18) + 0x4) = var_a2;
}
typedef struct { s8 b[6]; } S6Copy;
void TitleScreen__SetupAudio(void *arg0) {
    func_8004109C((void *)D_8008AA24, (s32)arg0, 3, 0);
    *(S6Copy *)((char *)D_8008AA18 + 0x12) = *(S6Copy *)D_8008AA24;
}
void TitleScreen__Destructor(void *arg0) {
    if (*(void **)((char *)arg0 + 0xAC) != 0) {
        (*(void (**)(void *))((char *)*(void **)*(void **)((char *)arg0 + 0xAC) + 0x4))(*(void **)((char *)arg0 + 0xAC));
        (*(void (**)(void *))((char *)*(void **)*(void **)((char *)arg0 + 0xA8) + 0x4))(*(void **)((char *)arg0 + 0xA8));
    }
    (*(void (**)(void *))((char *)Get_vtable_AnimEffect() + 0xC))(arg0);
}
void TitleScreen__HandleEvent(void **arg0, s32 **arg1, s32 arg2) {
    (*(void(**)(void**, s32**, s32))((char*)Get_vtable_AnimEffect() + 0x38))(arg0, arg1, arg2);
    if ((**arg1 & 0xF) == 0xB) {
        (*(void(**)(void**, s32**, s32))(*(void**)arg0 + 0x138))(arg0, arg1, arg2);
    }
}
void TitleScreen__LoadTitle(void *arg0) {
    void **temp_a0;

    *(s32*)((char*)(arg0) + 0x34) = 0;
    *(s32*)((char*)(arg0) + 0x2c) = 0x190;
    (*(void(**)(void*, s32*, s32))(*(void**)(arg0) + 0xd4))(arg0, &strTitleTim, 0);
    (*(void(**)())(*(void**)(arg0) + 0x6c))(arg0, 0xA);
    temp_a0 = *(void***)((char*)(arg0) + 0xa4);
    (*(void(**)())(*(void**)(temp_a0) + 0xf0))(temp_a0, 0, 0);
}
void TitleScreen__InitRects(void *arg0) {
    void *temp_a2;
    void *var_s0;
    u32 var_s1;
    void **temp_a0;

    var_s1 = 0;
    var_s0 = &D_80086DAC;
    do {
        temp_a2 = var_s0;
        temp_a0 = **(s32**)((char*)(arg0) + 0xc);
        var_s0 += 0xC;
        var_s1 += 1;
        (*(void(**)())(*(void**)(temp_a0) + 0x78))(temp_a0, arg0 + 0x93, temp_a2);
    } while (var_s1 < 2U);
};
void TitleScreen__SetState(void *arg0, s32 arg1) {
    (*(void(**)(void*, s32))((char*)Get_vtable_AnimEffect() + 0x60))(arg0, arg1);
    if (arg1 == 5) {
        (*(void(**)(void*, s32))(*(void**)arg0 + 0x124))(arg0, 0);
    }
    if (arg1 == 0xA) {
        (*(void(**)(void*))(*(void**)arg0 + 0x7c))(arg0);
        (*(void(**)(void*, s32, s32))(*(void**)arg0 + 0xf0))(arg0, *(s32*)((char*)*(s32**)((char*)(arg0) + 0x4c) + 0x8), 1);
        (*(void(**)(void*))(*(void**)arg0 + 0x78))(arg0);
    }
}
void TitleScreen__Method90(void *arg0) {
    s32 v1;
    void *t;
    void (*v0)(void *);
    (*(void (**)(void *))((char *)Get_vtable_AnimEffect() + 0x90))(arg0);
    v1 = *(s32 *)((char *)arg0 + 0x58);
    if (v1 == 2) {
        goto DA68;
    }
    if (v1 < 3) {
        if (v1 == 1) {
            goto DA3C;
        }
        goto end;
    }
    if (v1 == 3) {
        goto DA7C;
    }
    if (v1 == 4) {
        goto DA90;
    }
    goto end;
DA3C:
    t = *(void **)((char *)arg0 + 0xA4);
    *(s32 *)((char *)arg0 + 0x38) = 0;
    (*(void (**)(void *, s32, s32))((char *)*(void **)t + 0xF0))(t, 0, 1);
    v0 = (void (*)(void *))*(void **)arg0;
    goto DA98;
DA68:
    v0 = (void (*)(void *))*(void **)((char *)*(void **)arg0 + 0x130);
    goto DA9C;
DA7C:
    v0 = (void (*)(void *))*(void **)((char *)*(void **)arg0 + 0x134);
    goto DA9C;
DA90:
    v0 = (void (*)(void *))*(void **)arg0;
    *(s32 *)((char *)arg0 + 0x38) = 2;
DA98:
    v0 = (void (*)(void *))*(void **)((char *)v0 + 0x94);
DA9C:
    v0(arg0);
end:
    return;
}
void TitleScreen__Method94(void *arg0) {
    s32 local;
    void *a0;
    s32 v1;
    (*(void (**)(void *))((char *)Get_vtable_AnimEffect() + 0x94))(arg0);
    a0 = *(void **)((char *)arg0 + 0xA4);
    v1 = *(s32 *)a0;
    local = *(s32 *)(*(s32 *)((char *)arg0 + 0x60) + 0x14);
    (*(void (**)(void *, s32 *))((char *)v1 + 0x19C))(a0, &local);
}
void TitleScreen__BuildMenu(void *arg0, void *arg1) {
    s32 s0;
    s32 s1;
    void *t;
    s32 v0;
    if (arg1 != 0) {
        t = *(void **)((char *)arg0 + 0xA4);
        if ((*(void *(**)(void *))((char *)*(void **)t + 0x1AC))(t) != 0) {
            Str_Copy((s32)((char *)D_8008AA18 + 0x18), (void *)D_8008AA14);
            TextBuf__Init((void *)D_8008AA18, 0);
        }
        s0 = ((u32)func_80013348((s32)D_8008AA18) >> 1) + 4;
        s1 = (s32)BMemAlloc(s0);
        func_80040FC0(s1, (s32)D_8008AA18);
        v0 = New_SpriteSet(*(s32 *)((char *)arg1 + 4), s0, s1);
        *(s32 *)((char *)arg0 + 0xB0) = v0;
        *(u8 *)((char *)v0 + 0xAB) = 8;
        *(u8 *)((char *)*(s32 *)((char *)arg0 + 0xB0) + 0xAC) = 4;
        *(u8 *)((char *)*(s32 *)((char *)arg0 + 0xB0) + 0xAA) = 9;
        BMemFree(s1);
    }
}
void TitleScreen__MethodDC(void *arg0) {
    void *subobj = *(void**)((char*)arg0 + 0xB0);
    (*(void(**)())(*(void**)subobj + 0x4))(subobj);
    (*(void (**)(void *))((char *)Get_vtable_AnimEffect() + 0xDC))(arg0);
}
void TitleScreen__MethodE0(void *arg0, s32 arg1) {
    void **temp_a0;
    (*(void(**)(void*, s32))((char*)Get_vtable_AnimEffect() + 0xE0))(arg0, arg1);
    temp_a0 = *(s32*)((char*)(arg0) + 0xb0);
    (*(void(**)(void*, s32, s32*))(*(void**)(temp_a0) + 0x4c))(temp_a0, arg1, &D_8008A9B4);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TitleScreen__MethodE4);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TitleScreen__Method124);
void TitleScreen__OpenSaveMenu(void *arg0) {
    if (*(s32*)((char*)(arg0) + 0xac) == NULL) {
        *(s32*)((char*)(arg0) + 0xa8) = LoadFileObj(&strFileIcn1Tim);
        *(s32*)((char*)(arg0) + 0xac) = TextPanel__Create(1, 0);
    }
    (*(void(**)())(*(void**)(*(s32*)((char*)(arg0) + 0xac)) + 0x6c))(*(s32*)((char*)(arg0) + 0xac), D_8008A9D0, &D_80086D6C, *(s32*)((char*)*(s32**)((char*)(arg0) + 0xc) + 0x4), *(s32*)((char*)(arg0) + 0x10), *(s32*)((char*)(arg0) + 0x14), *(s32*)((char*)(arg0) + 0x48));
    (*(void(**)())(*(void**)(arg0) + 0x10))(arg0, *(s32*)((char*)(arg0) + 0xac));
    (*(void(**)())(*(void**)(arg0) + 0x14))(arg0, *(s32*)((char*)*(s32**)((char*)(arg0) + 0xc) + 0x4));
    (*(void(**)())(*(void**)(arg0) + 0x14))(arg0, *(s32*)((char*)(arg0) + 0x10));
}
void TitleScreen__CloseSaveMenu(void *arg0) {
    void **temp_a0;

    (*(void(**)(void*, s32))(*(void**)(arg0) + 0x10))(arg0, *(s32*)((char*)*(s32**)((char*)(arg0) + 0xc) + 0x4));
    (*(void(**)())(*(void**)(arg0) + 0x10))(arg0, *(s32*)((char*)(arg0) + 0x10));
    (*(void(**)())(*(void**)(arg0) + 0x14))(arg0, *(s32*)((char*)(arg0) + 0xac));
    temp_a0 = *(void***)((char*)(arg0) + 0xac);
    (*(void(**)())(*(void**)(temp_a0) + 0x70))(temp_a0);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TitleScreen__Method130);
void TitleScreen__Method134(void *arg0) {
    (*(void (**)(void *))(*(s32 *)arg0 + 0x128))(arg0);
    (*(void (**)(void *, s32, s32, s32, s32))(*(s32 *)(*(s32 *)((char *)arg0 + 0xAC)) + 0x74))(
        *(void **)((char *)arg0 + 0xAC), D_8008AA10, D_8008AA18, *(s32 *)((char *)arg0 + 0xBC), *(s32 *)((char *)arg0 + 0xC0));
}
void TitleScreen__Method138(void *arg0, s32 arg1, s32 arg2) {
    if (arg2 < 0x18) {
        if (arg2 >= 0x16) {
            (*(void (**)(void *))((char *)*(void **)arg0 + 0x12C))(arg0);
            if (arg2 == 0x16) {
                (*(void (**)(void *))((char *)*(void **)*(void **)((char *)arg0 + 0xA4) + 0x1A8))(*(void **)((char *)arg0 + 0xA4));
                (*(void (**)(void *, s32))((char *)*(void **)arg0 + 0x124))(arg0, 0x16);
            }
        }
    }
}
void *TitleScreen__GetVtable(void) {
    return &gVtable_TitleScreen;
};
void *TextPanel__Create(s32 arg0, s32 arg1) {
    void *s0 = BMemAlloc(0x84);

    if (s0 != 0) {
        (*(void(**)(void*, s32, s32))((char *)TextPanel__GetVtable() + 0x8))(s0, arg0, arg1);
        return s0;
    }
    return 0;
}
void TextPanel__Constructor(void *arg0, void *arg1, void *arg2) {
    s32 r;
    (*(void (**)(void *))((char *)Get_vtable_BasicClass() + 0x8))(arg0);
    r = TextPanel__GetVtable();
    {
        s32 v1 = D_8008AA30;
        *(s32 *)((char *)arg0 + 0x0) = r;
        D_8008AA30 = v1 + 1;
        if (v1 == 0) {
            TextSys__InitA(arg1);
            TextSys__InitB();
            TextSys__InitC();
        }
    }
    TextPanel__ClearFields(arg0);
    (*(void (**)(void *, void *))((char *)*(void **)arg0 + 0x40))(arg0, arg2);
}
void TextPanel__ClearFields(void *arg0) {
    *(s32*)((char*)(arg0) + 0x60) = 0;
    *(s32*)((char*)(arg0) + 0x64) = 0;
    *(s32*)((char*)(arg0) + 0x68) = 0;
    *(s32*)((char*)(arg0) + 0x78) = 0;
    *(s32*)((char*)(arg0) + 0x7c) = 0;
}
void TextPanel__Destructor(void *arg0) {
    (*(void(**)(void *))((char *)Get_vtable_BasicClass() + 0xC))(arg0);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextPanel__Method10);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextPanel__Method14);
void TextPanel__Reset(void *arg0) {
    *(s32*)((char*)arg0 + 0x60) = 0;
    *(s32*)((char*)arg0 + 0x64) = 0;
    *(s32*)((char*)arg0 + 0x68) = 0;
    *(s32*)((char*)arg0 + 0x78) = 0;
    *(s32*)((char*)arg0 + 0x7C) = 0;
    (*(void(**)(void *))((char *)Get_vtable_BasicClass() + 0x18))(arg0);
}
void TextPanel__SetLineCount(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0xc) = arg1;
    *(s32*)((char*)(arg0) + 0x10) = (s32) (arg1 * 0x10);
};
s32 TextPanel__LoadFont(void *arg0) {
    s32 i;
    void *ptr;
    EnterCriticalSection();
    i = 0;
    ptr = arg0;
    do {
        *(s32 *)((char *)ptr + 0x14) = func_80038F7C(0xF4000001, D_80086E78[i], 0x2000, 0);
        i++;
        ptr += 4;
    } while (i < 4);
    ExitCriticalSection();
    TextPanel__FontOpA(arg0);
    return 1;
}
s32 TextPanel__InitDraw(s32 arg0) {
    TextPanel__FontOpB();
    TextPanel__RunFontOp(arg0, &func_8003902C, 1);
    return 1;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextPanel__Print);
void TextPanel__PrintGuarded(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    if (TextPanel__CanPrint() != 0) {
        TextPanel__DrawText(arg0, arg1, arg3);
    }
}
s32 TextPanel__CanPrint(void *arg0, s32 *arg1, s32 *arg2) {
    s32 s1 = 1;
    s32 v1;
    *arg1 = 0;
    *arg2 = 0;
    TextPanel__FontOpC(arg0);
    while (TextSys__GetFlag(*(void **)((char *)arg0 + 0x10)) == 0) {
    }
    v1 = TextPanel__FontOp4(arg0);
    if (v1 == 0x100) {
        s1 = 0;
    } else if (v1 == 0x8000) {
        s1 = 0;
        *arg1 = 1;
    } else if (v1 == 0x2000) {
        *arg2 = 1;
        TextSys__SetState(*(void **)((char *)arg0 + 0x10));
    }
    return s1;
}
s32 TextPanel__DrawText(void *arg0, s32 *arg1, s32 *arg2) {
    s32 s1 = 1;
    s32 v1;
    *arg1 = 0;
    *arg2 = 1;
    TextPanel__FontOpC(arg0);
    while (TextSys__GetState(*(void **)((char *)arg0 + 0x10)) == 0) {
    }
    v1 = TextPanel__FontOp4(arg0);
    if (v1 == 0x100) {
        s1 = 0;
    } else if (v1 == 0x8000) {
        s1 = 0;
        *arg1 = 1;
    } else if (v1 == 0x2000) {
        *arg2 = 0;
    }
    return s1;
}
s32 TextPanel__SetText(void *arg0) {
    s32 s0 = 10;
    s32 v1;
    do {
        v1 = StrLen(*(s32 *)((char *)arg0 + 0xC) != 0 ? D_8008AA9C : D_8008AAA4);
    } while (v1 == 0 && s0-- != 0);
    return v1;
}
s32 TextPanel__AllocString(void *arg0, void *arg1, void *arg2) {
    s32 s0 = 0;
    s32 v1;
    if (arg2 == 0) {
        return 0;
    }
    if (*(u8 *)arg2 == 0) {
        return 0;
    }
    do {
        v1 = TextPanel__StoreString(arg0, arg1, arg2);
    } while (v1 == 0 && s0-- != 0);
    return v1;
}
s32 TextPanel__StoreString(void *arg0, void *arg1, s32 arg2) {
    s32 sp10[8];
    void *s0;
    s32 s1;

    s1 = StrCompare(TextStrAppend(&sp10[0], *(s32 *)((char *)arg0 + 0xC), arg2), 1);
    if (s1 == -1) {
        return 0;
    }
    if (arg1 != 0) {
        s0 = BMemAlloc(0x80);
        StrCopyN(s1, s0, 0x80);
        Str_Copy(arg1, (char *)s0 + 4);
        BMemFree(s0);
    }
    TextBuf__WriteStr(s1);
    return 1;
}
void *TextPanel__Method58(void *arg0, void *arg1, void *arg2, s32 **arg3) {
    if (*arg3 != 0) {
        while (1) {
            Str_Copy(arg1, arg2);
            Str_Concat(arg1, *arg3);
            if ((*(s32 (**)(void *, s32, void *))((char *)*(void **)arg0 + 0x54))(arg0, 0, arg1) == 0) {
                return arg1;
            }
            arg3++;
            if (*arg3 == 0) {
                break;
            }
        }
    }
    return 0;
}
s32 TextPanel__Method5C(void *arg0, s32 *arg1, s32 *arg2, void *arg3, s32 *arg4) {
    s32 s3 = 0;
    s32 sp10[8];

    if (*arg4 != 0) {
        do {
            Str_Copy(sp10, arg3);
            Str_Concat((u8 *)sp10, (u8 *)*arg4);
            if ((*(s32 (**)(void *, s32, s32 *))(*(s32 *)arg0 + 0x54))(arg0, *arg1, sp10) != 0) {
                s3++;
                *arg2 = *arg4;
                arg1++;
                arg2++;
            }
            arg4++;
        } while (*arg4 != 0);
    }
    return s3;
}
s32 TextPanel__Method60(void *arg0, u8 arg1, void *arg2) {
    s32 s0;
    s32 v1;

    s0 = 0xA;
    do {
        v1 = TextPanel__FormatInto(arg0, arg1, arg2);
        if (v1 != 0) {
            break;
        }
    } while (s0-- != 0);
    return v1;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextPanel__FormatInto);
s32 TextPanel__Method64(void *arg0, void *arg1, void *arg2, void *arg3) {
    s32 s0 = 10;
    s32 v1;
    do {
        v1 = TextPanel__FormatString(arg0, arg1, arg2, arg3);
    } while (v1 == 0 && s0-- != 0);
    return v1;
}
s32 TextPanel__FormatString(void *arg0, void *arg1, void *arg2, void *arg3) {
    s32 tmp[8];
    s32 s2;
    void *s1;
    s32 s0;

    s2 = StrCompare((void *)TextStrAppend(tmp, *(s32 *)((char *)arg0 + 0xC), arg1), 1);
    if (s2 == -1) {
        return 0;
    }
    s1 = BMemAlloc(0x80);
    StrCopyN(s2, s1, 0x80);
    s0 = *(u8 *)((char *)s1 + 2) << 7;
    s0 = s0 - 0x780;
    BMemFree(s1);
    TextBuf__WriteByte(s2, s0, 0);
    StrCopyN(s2, arg2, arg3);
    TextBuf__WriteStr(s2);
    return 1;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextPanel__Method68);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextPanel__FormatStringEx);
void *TextStrAppend(void *arg0, void *arg1, void *arg2) {
    u8 *a3 = D_8008AAA4;
    if (arg1 != 0) {
        a3 = D_8008AA9C;
    }
    *(S6Copy *)arg0 = *(S6Copy *)a3;
    Str_Concat(arg0, arg2);
    return arg0;
}
void TextPanel__FontOpA(void *arg0) {
    TextPanel__RunFontOp(arg0, &func_80038F6C, 1);
}
void TextPanel__FontOpB(void *arg0) {
    TextPanel__RunFontOp(arg0, &func_8003903C, 1);
}
void TextPanel__FontOpC(void *arg0) {
    TextPanel__RunFontOp(arg0, &func_800390F4, 0);
}
s32 TextPanel__RunFontOp(void *arg0, s32 (*fn)(s32), s32 arg2) {
    register void *s0 __asm__("s0");
    register s32 (*s3)(s32) __asm__("s3");
    register s32 s4 __asm__("s4");
    s32 s1;
    s32 s2;

    s0 = arg0;
    s3 = fn;
    s4 = arg2;
    if (s4 != 0) {
        EnterCriticalSection();
    }
    s1 = 0;
    do {
        s2 = s3(*(s32 *)((char *)s0 + 0x14));
        if (s2 == 0) {
            break;
        }
        s1++;
        s0 = (char *)s0 + 4;
    } while (s1 < 4);
    if (s4 != 0) {
        ExitCriticalSection();
    }
    return s2;
}
s32 TextPanel__FontOp4(s32 arg0) {
    TextPanel__FontOpEx(arg0 + 0x14, 4);
}
void *TextPanel__FontOpEx(void *arg0, s32 arg1) {
    s32 i;
    for (;;) {
        for (i = 0; i < arg1; i++) {
            if (func_800390F4(((s32 *)arg0)[i]) != 0) {
                return D_80086E78[i];
            }
        }
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextPanel__Method6C);
void TextPanel__Method70(void *arg0) {
    *(s32*)((char*)(arg0) + 0x6c) = 0;
    *(s32*)((char*)(arg0) + 0x68) = 0;
    (*(void(**)(void*, s32))(*(void**)(arg0) + 0x14))(arg0, *(s32*)((char*)(arg0) + 0x60));
    (*(void(**)())(*(void**)(arg0) + 0x14))(arg0, *(s32*)((char*)(arg0) + 0x64));
}
void TextPanel__ReallocLines(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 r;
    s32 a1;
    s32 *o = (s32 *)arg0;

    o[0x10] = arg1;
    o[0x11] = arg2;
    o[0x15] = arg3;
    o[0x16] = arg4;
    o[0x09] = 1;
    if (TextPanel__TrimLines(arg0) != 0) {
        TextPanel__FreeLineBuffersEx(arg0);
        TextPanel__AllocLineBuffers(arg0);
        r = (*(s32 (**)(void *, s32, s32, s32, s32))(*(s32 *)arg0 + 0x5C))(
            arg0, *(s32 *)((char *)arg0 + 0x38), *(s32 *)((char *)arg0 + 0x3C),
            *(s32 *)((char *)arg0 + 0x30), *(s32 *)((char *)arg0 + 0x34));
        *(s32 *)((char *)arg0 + 0x2C) = r;
        if (r != 0) {
            TextPanel__FreeLineBuffers(arg0);
            if (*(s32 *)((char *)arg0 + 0x28) == 0xE) {
                a1 = 0xF;
            } else {
                a1 = 0x12;
            }
        } else {
            a1 = 0xD;
            *(s32 *)((char *)arg0 + 0x2C) = 0xF;
        }
        (*(void (**)(void *, s32))(*(s32 *)arg0 + 0x7C))(arg0, a1);
    }
}
void TextPanel__AllocLineBuffers(void *arg0) {
    s32 temp_v1;
    s32 var_s0;

    if (*(s32*)((char*)(arg0) + 0x38) == 0) {
        *(s32*)((char*)(arg0) + 0x38) = BMemAlloc(0x40);
        var_s0 = 0;
        do {
            temp_v1 = var_s0 * 4;
            var_s0 += 1;
            *(s32*)(temp_v1 + *(s32*)((char*)(arg0) + 0x38)) = BMemAlloc(0x41);
        } while (var_s0 < 0xF);
        *(s32*)((char*)(arg0) + 0x3c) = BMemAlloc(0x40);
    }
};
void TextPanel__FreeLineBuffers(void *arg0) {
    s32 temp_a0;
    s32 temp_s0;
    s32 var_s1;

    var_s1 = *(s32*)((char*)(arg0) + 0x2c);
    if (var_s1 < 0xF) {
        do {
            temp_s0 = var_s1 * 4;
            temp_a0 = *(s32*)(temp_s0 + *(s32*)((char*)(arg0) + 0x38));
            var_s1 += 1;
            *(s32*)(temp_s0 + *(s32*)((char*)(arg0) + 0x38)) = BMemFree(temp_a0);
        } while (var_s1 < 0xF);
    }
    *(s32*)((var_s1 * 4) + *(s32*)((char*)(arg0) + 0x38)) = 0;
};
void TextPanel__FreeLineBuffersEx(void *arg0) {
    s32 i;
    if (*(s32 *)((char *)arg0 + 0x38) != 0) {
        BMemFree(*(s32 *)((char *)arg0 + 0x3C));
        for (i = 0; i < *(s32 *)((char *)arg0 + 0x2C); i++) {
            BMemFree((*(s32 **)((char *)arg0 + 0x38))[i]);
        }
        BMemFree(*(s32 *)((char *)arg0 + 0x38));
        *(s32 *)((char *)arg0 + 0x38) = 0;
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextPanel__Method78);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextPanel__TrimLines);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextPanel__Method38);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextPanel__Method7C);
extern u8 D_8008AAB4;
extern u8 D_8008AABC;
extern s32 D_80086E80[];
extern s32 D_80086EC4;
extern s32 D_8008AA94;
void *func_80041C9C(void *, void *, s32);
void TextPanel__LoadFontFile(void *arg0, s32 arg1) {
    u8 buf[32];
    void *s0;
    void *s1;
    void (*fn)(void *);
    void (*fn2)(void *, s32, s32);

    if (arg1 < 0x11 && *(s32 *)((char *)arg0 + 0x68) != 0 && *(s32 *)((char *)arg0 + 0x70) == 0) {
        s0 = buf;
        buf[0] = 0;
        s1 = (void *)D_80086E80[arg1];
        Str_Concat(s0, &D_8008AAB4);
        Str_Concat(s0, s1);
        Str_Concat(s0, &D_8008AABC);
        s0 = LoadFileObj(buf);
        fn = (void (*)(void *))* (void **)((char *)*(void **)s0 + 0x78);
        fn(s0);
        s1 = func_80041C9C(s0, &D_80086EC4, 0);
        *(void **)((char *)arg0 + 0x70) = s1;
        fn = (void (*)(void *))* (void **)((char *)*(void **)s0 + 0x4);
        fn(s0);
        fn2 = (void (*)(void *, s32, s32))* (void **)((char *)*(void **)s1 + 0x4C);
        fn2(s1, *(s32 *)((char *)arg0 + 0x68), (s32)&D_8008AA94);
    }
}
void TextPanel__Method84(void *arg0) {
    void **temp_a0;

    temp_a0 = *(s32*)((char*)(arg0) + 0x70);
    if (temp_a0 != NULL) {
        *(s32*)((char*)(arg0) + 0x70) = (*(s32(**)())(*(void**)(temp_a0) + 0x4))(temp_a0);
    }
};
void TextPanel__Method88(void *arg0, s32 arg1, s32 arg2) {
    void (*var_v0)();

    if (*(s32*)((char*)(arg0) + 0x28) != 0) {
        if (arg2 == 0x19) {
            var_v0 = *(s32*)((char*)(*(void**)(arg0)) + 0x90);
            goto block_5;
        }
        if (arg2 == 0x17) {
            var_v0 = *(s32*)((char*)(*(void**)(arg0)) + 0x94);
block_5:
            var_v0();
        }
    }
}
void TextPanel__PlaySfx(void *arg0, void *arg1, s32 arg2, s32 arg3) {
    void *temp_a0 = *(void **)((char *)arg0 + 0x6c);
    if (temp_a0 != NULL) {
        (*(void(**)(void *, void *, s32, s32))((char *)*(void **)temp_a0 + 0x80))(temp_a0, arg1, 0x7F, 0x7F);
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextPanel__Method90);
void TextPanel__Method94(void *arg0) {
    s32 v1;
    v1 = *(s32 *)((char *)arg0 + 0x28);
    if (v1 == 6) {
        goto body;
    }
    if (v1 < 7) {
        if (v1 == 4) {
            goto body;
        }
        goto end;
    }
    if (v1 == 0xA) {
        goto body;
    }
    if (v1 == 0xE) {
        goto body;
    }
    goto end;
body:
    (*(void (**)(void *, s32))((char *)*(void **)arg0 + 0x8C))(arg0, 0x10);
    (*(void (**)(void *, s32))((char *)*(void **)arg0 + 0x7C))(arg0, 0x17);
end:
    return;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextPanel__Method98);
void TextPanel__AttachListMenu(void *arg0) {
    void **temp_a0;
    void **temp_a0_2;

    if ((*(s32*)((char*)(arg0) + 0x68) != 0) && (*(s32*)((char*)(arg0) + 0x60) != 0)) {
        if (*(s32*)((char*)(arg0) + 0x78) == NULL) {
            *(s32*)((char*)(arg0) + 0x78) = ListMenu__Create((*(s32*)((char*)(arg0) + 0x48) * 2) + *(s32*)((char*)(arg0) + 0x44), 1);
            *(s32*)((char*)(arg0) + 0x74) = 1;
        }
        (*(void(**)())(*(void**)(arg0) + 0x10))(arg0, *(s32*)((char*)(arg0) + 0x78));
        temp_a0 = *(s32*)((char*)(arg0) + 0x78);
        (*(void(**)())(*(void**)(temp_a0) + 0x44))(temp_a0, *(s32*)((char*)(arg0) + 0x68));
        temp_a0_2 = *(s32*)((char*)(arg0) + 0x78);
        (*(void(**)())(*(void**)(temp_a0_2) + 0x4c))(temp_a0_2, *(s32*)((char*)(arg0) + 0x60), *(s32*)((char*)(arg0) + 0x64), *(s32*)((char*)(arg0) + 0x6c));
    }
};
void TextPanel__DetachListMenu(void *arg0) {
    void **temp_a0;
    void **temp_a0_2;
    void **temp_a0_3;

    if ((*(s32*)((char*)(arg0) + 0x68) != 0) && (*(s32*)((char*)(arg0) + 0x60) != 0)) {
        temp_a0 = *(s32*)((char*)(arg0) + 0x78);
        if (temp_a0 != NULL) {
            (*(void(**)())(*(void**)(temp_a0) + 0x50))(temp_a0);
            temp_a0_2 = *(s32*)((char*)(arg0) + 0x78);
            (*(void(**)())(*(void**)(temp_a0_2) + 0x48))(temp_a0_2);
            if (*(s32*)((char*)(arg0) + 0x74) != 0) {
                temp_a0_3 = *(s32*)((char*)(arg0) + 0x78);
                (*(void(**)())(*(void**)(temp_a0_3) + 0x4))(temp_a0_3);
                *(s32*)((char*)(arg0) + 0x78) = NULL;
            }
        }
    }
};
void TextPanel__MenuAction(void *arg0, s32 arg1, s32 arg2) {
    void *s0 = arg0;
    switch (arg2) {
    case 2:
        (*(void(**)(void*))(*(void**)s0 + 0xa0))(s0);
        (*(void(**)(void*, s32, s32, s32, s32, s32, s32, s32))(*(void**)s0 + 0x78))(s0, *(s32*)((char*)s0 + 0x40), *(s32*)((char*)s0 + 0x44), *(s32*)((char*)s0 + 0x48), (s32)*(u8*)((char*)s0 + 0x4c), *(s32*)((char*)s0 + 0x50), *(s32*)((char*)s0 + 0x54), *(s32*)((char*)s0 + 0x58));
        return;
    case 3:
        (*(void(**)(void*))(*(void**)s0 + 0xa0))(s0);
        (*(void(**)(void*, s32))(*(void**)s0 + 0x7c))(s0, 0x17);
        return;
    }
}
void TextPanel__AttachGridMenu(void *arg0) {
    void **temp_a0;
    void **temp_a0_2;

    if ((*(s32*)((char*)(arg0) + 0x68) != 0) && (*(s32*)((char*)(arg0) + 0x60) != 0)) {
        if (*(s32*)((char*)(arg0) + 0x7c) == NULL) {
            *(s32*)((char*)(arg0) + 0x7c) = GridMenu__Create(*(s32*)((char*)(arg0) + 0x38), 1);
            *(s32*)((char*)(arg0) + 0x74) = 1;
        }
        (*(void(**)())(*(void**)(arg0) + 0x10))(arg0, *(s32*)((char*)(arg0) + 0x7c));
        temp_a0 = *(s32*)((char*)(arg0) + 0x7c);
        (*(void(**)())(*(void**)(temp_a0) + 0x44))(temp_a0, *(s32*)((char*)(arg0) + 0x68));
        temp_a0_2 = *(s32*)((char*)(arg0) + 0x7c);
        (*(void(**)())(*(void**)(temp_a0_2) + 0x4c))(temp_a0_2, *(s32*)((char*)(arg0) + 0x60), *(s32*)((char*)(arg0) + 0x64), *(s32*)((char*)(arg0) + 0x6c));
    }
};
void TextPanel__DetachGridMenu(void *arg0) {
    void **temp_a0;
    void **temp_a0_2;
    void **temp_a0_3;

    if ((*(s32*)((char*)(arg0) + 0x68) != 0) && (*(s32*)((char*)(arg0) + 0x60) != 0)) {
        temp_a0 = *(s32*)((char*)(arg0) + 0x7c);
        if (temp_a0 != NULL) {
            (*(void(**)())(*(void**)(temp_a0) + 0x50))(temp_a0);
            temp_a0_2 = *(s32*)((char*)(arg0) + 0x7c);
            (*(void(**)())(*(void**)(temp_a0_2) + 0x48))(temp_a0_2);
            if (*(s32*)((char*)(arg0) + 0x74) != 0) {
                temp_a0_3 = *(s32*)((char*)(arg0) + 0x7c);
                (*(void(**)())(*(void**)(temp_a0_3) + 0x4))(temp_a0_3);
                *(s32*)((char*)(arg0) + 0x7c) = NULL;
            }
        }
    }
};
void TextPanel__MethodB0(void *arg0, void *arg1, s32 arg2) {
    void *result;
    void (*fn)(void *);
    void (*fn2)(void *, s32);
    if (arg2 == 2) {
        goto c2;
    }
    if (arg2 == 3) {
        goto c3;
    }
    return;
c2:
    result = (*(void *(*)(void *))*(void **)((char *)*(void **)arg1 + 0x9C))(arg1);
    *(s32 *)((char *)arg0 + 0x80) = (s32)result;
    fn = (void (*)(void *))*(void **)((char *)*(void **)arg0 + 0xAC);
    fn(arg0);
    fn2 = (void (*)(void *, s32))*(void **)((char *)*(void **)arg0 + 0x7C);
    fn2(arg0, 0xE);
    return;
c3:
    fn = (void (*)(void *))*(void **)((char *)*(void **)arg0 + 0xAC);
    fn(arg0);
    fn2 = (void (*)(void *, s32))*(void **)((char *)*(void **)arg0 + 0x7C);
    fn2(arg0, 0x17);
}
void *TextPanel__GetVtable(void) {
    return &gVtable_TextPanel;
};
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextBuf__Init);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextBuf__WriteByte);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextBuf__WriteStr);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextBuf__Rewind);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StrLen);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StrCopyN);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", StrCompare);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", ParseNumber);
void ParseNumberEntry(void) {
    ParseNumber();
}
s32 HexDigitValue(u8 a0) {
    u8 flags = gCtypeTable[a0];
    s32 v0;

    if (flags & 4) {
        v0 = a0 - 0x30;
    } else if (flags & 3) {
        v0 = (func_800133AC() & 0xFF) - 0x57;
    } else {
        v0 = 0x98967F;
    }
    return v0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextSys__GetState);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextSys__GetFlag);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextSys__SetState);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextSys__SetField);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextSys__InitA);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextSys__InitB);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextSys__InitC);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", TextSys__Flush);
void *ListMenu__Create(s32 arg0, s32 arg1) {
    void *s0 = BMemAlloc(0x4C);

    if (s0 != 0) {
        (*(void(**)(void*, s32, s32))((char *)ListMenu__GetVtable() + 0x8))(s0, arg0, arg1);
        return s0;
    }
    return 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", ListMenu__Constructor);
void ListMenu__ClearFields(void *arg0) {
    *(s32*)((char*)(arg0) + 0x34) = 0;
    *(s32*)((char*)(arg0) + 0x38) = 0;
    *(s32*)((char*)(arg0) + 0x48) = 0;
};
void ListMenu__Destructor(void *arg0) {
    BMemFree(*(s32*)((char*)arg0 + 0x28));
    (*(void(**)(void *))((char *)Get_vtable_BasicClass() + 0xC))(arg0);
}
void ListMenu__Method10(void *arg0, void *arg1) {
    s32 v1;
    if (arg1 != 0) {
        (*(void (**)(void *, void *))((char *)Get_vtable_BasicClass() + 0x10))(arg0, arg1);
        v1 = *(s32 *)*(s32 *)arg1 & 0xF;
        if (v1 == 2) {
            *(s32 *)((char *)arg0 + 0x34) = (s32)arg1;
        } else if (v1 == 5) {
            *(s32 *)((char *)arg0 + 0x38) = (s32)arg1;
        }
    }
}
void ListMenu__Method14(void *arg0, void *arg1) {
    s32 v;
    if (arg1 != 0) {
        v = *(s32 *)*(s32 *)arg1 & 0xF;
        if (v == 2) {
            *(s32 *)((char *)arg0 + 0x34) = 0;
        } else if (v == 5) {
            *(s32 *)((char *)arg0 + 0x38) = 0;
        }
        (*(void (**)(void *, void *))((char *)Get_vtable_BasicClass() + 0x14))(arg0, arg1);
    }
}
void ListMenu__Reset(void *arg0) {
    *(s32*)((char*)arg0 + 0x34) = 0;
    *(s32*)((char*)arg0 + 0x38) = 0;
    *(s32*)((char*)arg0 + 0x48) = 0;
    (*(void(**)(void *))((char *)Get_vtable_BasicClass() + 0x18))(arg0);
}
void ListMenu__Method38(void *arg0, void *arg1, void *arg2) {
    s32 v;
    (*(void (**)(void *, void *, void *))((char *)Get_vtable_BasicClass() + 0x38))(arg0, arg1, arg2);
    v = *(s32 *)*(s32 *)arg1 & 0xF;
    if (v == 2) {
        (*(void (**)(void *, void *, void *))((char *)*(void **)arg0 + 0x5C))(arg0, arg1, arg2);
    } else if (v == 5) {
        (*(void (**)(void *, void *, void *))((char *)*(void **)arg0 + 0x58))(arg0, arg1, arg2);
    }
}
void ListMenu__Setup(void *arg0, s32 arg1, s32 arg2) {
    *(s32*)((char*)(arg0) + 0xc) = arg2;
    *(s32*)((char*)(arg0) + 0x24) = arg1;
    *(s32*)((char*)(arg0) + 0x18) = 0;
    *(s32*)((char*)(arg0) + 0x1c) = 0;
    if (arg2 == 1) {
        func_80040FC0(*(s32*)((char*)(arg0) + 0x28));
        *(s32*)((char*)(arg0) + 0x10) = (s32) ((s32) *(s32*)((char*)(arg0) + 0x10) / 2);
        return;
    }
    Str_Copy(*(s32*)((char*)(arg0) + 0x28));
};
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", ListMenu__LoadResources);
void ListMenu__FreeResources(void *arg0) {
    void *obj = *(void**)((char*)arg0 + 0x48);
    if (obj != NULL) {
        *(s32*)((char*)arg0 + 0x48) = (*(s32 (**)(void*))(*(s32*)obj + 0x4))(obj);
        obj = *(void**)((char*)arg0 + 0x44);
        (*(void (**)(void*))(*(s32*)obj + 0x4))(obj);
        obj = *(void**)((char*)arg0 + 0x40);
        (*(void (**)(void*))(*(s32*)obj + 0x4))(obj);
    }
}
void ListMenu__Open(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    (*(void(**)())(*(void**)(arg0) + 0x10))();
    (*(void(**)())(*(void**)(arg0) + 0x10))(arg0, arg2);
    *(s32*)((char*)(arg0) + 0x3c) = arg3;
    *(s32*)((char*)(arg0) + 0x2c) = 0;
    *(s32*)((char*)(arg0) + 0x20) = 0;
}
void ListMenu__Close(void *arg0) {
    (*(void(**)(void*, s32))(*(void**)(arg0) + 0x14))(arg0, *(s32*)((char*)(arg0) + 0x34));
    (*(void(**)())(*(void**)(arg0) + 0x14))(arg0, *(s32*)((char*)(arg0) + 0x38));
    *(s32*)((char*)(arg0) + 0x3c) = 0;
}
void ListMenu__Method54(void *arg0, s32 arg1) {
    *(s32 *)((char *)arg0 + 0x30) = 0;
    if (arg1 < 2) {
        return;
    }
    if (arg1 < 4) {
        goto bodyA;
    }
    if (arg1 == 4) {
        goto bodyB;
    }
    return;
bodyA:
    (*(void (**)(void *, s32))((char *)*(void **)arg0 + 0x14))(arg0, *(s32 *)((char *)arg0 + 0x34));
    (*(void (**)(void *))((char *)*(void **)arg0 + 0x48))(arg0);
    *(s32 *)((char *)arg0 + 0x2C) = arg1;
    return;
bodyB:
    (*(void (**)(void *, s32))((char *)*(void **)arg0 + 0x30))(arg0, *(s32 *)((char *)arg0 + 0x2C));
}
void ListMenu__AutoAdvance(void *arg0) {
    s32 v1 = *(s32*)((char*)arg0 + 0x2C);

    if (v1 < 4) {
        if (v1 >= 2) {
            s32 old = *(s32*)((char*)arg0 + 0x30);

            *(s32*)((char*)arg0 + 0x30) = old + 1;
            if (old != 0) {
                (*(void(**)(void*, s32))(*(s32*)arg0 + 0x54))(arg0, 4);
            }
        }
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", ListMenu__Method5C);
void ListMenu__PlaySfx(void *arg0, void *arg1, s32 arg2, s32 arg3) {
    void *temp_a0 = *(void **)((char *)arg0 + 0x3c);
    if (temp_a0 != NULL) {
        (*(void(**)(void *, void *, s32, s32))((char *)*(void **)temp_a0 + 0x80))(temp_a0, arg1, 0x60, 0x60);
    }
}
void ListMenu__CursorDown(void *arg0) {
    s32 temp_a1;
    s32 temp_v1;

    if (*(s32*)((char*)(arg0) + 0x48) != 0) {
        temp_v1 = *(s32*)((char*)(arg0) + 0x18);
        temp_a1 = temp_v1 + 1;
        *(s32*)((char*)(arg0) + 0x18) = temp_a1;
        if (temp_a1 < *(s32*)((char*)(arg0) + 0x10)) {
            (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xa4))(arg0, temp_a1, 1);
            return;
        }
        *(s32*)((char*)(arg0) + 0x18) = temp_v1;
    }
}
void ListMenu__CursorUp(void *arg0) {
    s32 temp_a1;
    s32 temp_v0;

    if (*(s32*)((char*)(arg0) + 0x48) != 0) {
        temp_v0 = *(s32*)((char*)(arg0) + 0x18);
        temp_a1 = temp_v0 - 1;
        *(s32*)((char*)(arg0) + 0x18) = temp_a1;
        if (temp_a1 >= 0) {
            (*(void(**)(void*, s32, s32))(*(void**)(arg0) + 0xa4))(arg0, temp_a1, 1);
            return;
        }
        *(s32*)((char*)(arg0) + 0x18) = temp_v0;
    }
}
void ListMenu__NextPage(void *arg0) {
    s32 temp_a2;

    if (*(s32*)((char*)(arg0) + 0x48) != 0) {
        temp_a2 = *(s32*)((char*)(arg0) + 0x1c) + 1;
        *(s32*)((char*)(arg0) + 0x1c) = temp_a2;
        if (temp_a2 < *(s32*)((char*)(arg0) + 0x14)) {
            (*(void(**)(void*, s32, s32, s32))(*(void**)(arg0) + 0xa8))(arg0, *(s32*)((char*)(arg0) + 0x18), temp_a2, 1);
            return;
        }
        *(s32*)((char*)(arg0) + 0x1c) = 0;
    }
}
void ListMenu__PrevPage(void *arg0) {
    s32 temp_a2;

    if (*(s32*)((char*)(arg0) + 0x48) != 0) {
        temp_a2 = *(s32*)((char*)(arg0) + 0x1c) - 1;
        *(s32*)((char*)(arg0) + 0x1c) = temp_a2;
        if (temp_a2 > 0) {
            (*(void(**)(void*, s32, s32, s32))(*(void**)(arg0) + 0xa8))(arg0, *(s32*)((char*)(arg0) + 0x18), temp_a2, 1);
            return;
        }
        *(s32*)((char*)(arg0) + 0x1c) = (s32)*(s32*)((char*)(arg0) + 0x14);
    }
}
void ListMenu__ToggleFlag(void *arg0) {
    if (*(s32*)((char*)(arg0) + 0x48) != 0) {
        *(s32*)((char*)(arg0) + 0x20) = (s32) (*(s32*)((char*)(arg0) + 0x20) ^ 1);
    }
};
void ListMenu__CursorHome(void *arg0) {
    if (*(s32*)((char*)(arg0) + 0x48) != 0) {
        *(s32*)((char*)(arg0) + 0x1c) = 0;
        (*(void(**)(void*, s32, s32, s32))(*(void**)(arg0) + 0xa8))(arg0, *(s32*)((char*)(arg0) + 0x18), 0, 1);
    }
}
void ListMenu__RefreshAll(void *arg0) {
    if (*(s32*)((char*)arg0 + 0x48) != 0) {
        s32 count = *(s32*)((char*)arg0 + 0x10);
        s32 i;
        *(s32*)((char*)arg0 + 0x1C) = 0;
        for (i = count - 1; i >= 0; i--) {
            *(s32*)((char*)arg0 + 0x18) = i;
            (*(void (**)(void*, s32, s32, s32))(*(s32*)arg0 + 0xA8))(arg0, i, *(s32*)((char*)arg0 + 0x1C), 0);
        }
        (*(void (**)(void*, s32, s32))(*(s32*)arg0 + 0xA4))(arg0, *(s32*)((char*)arg0 + 0x18), 1);
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", ListMenu__MethodA4);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", ListMenu__MethodA8);
void *ListMenu__GetVtable(void) {
    return &gVtable_ListMenu;
};
void *GridMenu__Create(s32 arg0, s32 arg1) {
    void *s0 = BMemAlloc(0x54);

    if (s0 != 0) {
        (*(void(**)(void*, s32, s32))((char *)GridMenu__GetVtable() + 0x8))(s0, arg0, arg1);
        return s0;
    }
    return 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", GridMenu__Constructor);
void GridMenu__ClearFields(void *arg0) {
    *(s32*)((char*)(arg0) + 0x34) = 0;
    *(s32*)((char*)(arg0) + 0x38) = 0;
    *(s32*)((char*)(arg0) + 0x50) = 0;
};
void GridMenu__Destructor(void *arg0) {
    s32 i;
    for (i = 0; i < *(s32 *)((char *)arg0 + 0x10); i++) {
        BMemFree((*(s32 **)((char *)arg0 + 0x18))[i]);
    }
    BMemFree(*(s32 *)((char *)arg0 + 0x1C));
    BMemFree(*(s32 *)((char *)arg0 + 0x18));
    (*(void (**)(void *))((char *)Get_vtable_BasicClass() + 0xC))(arg0);
}
void GridMenu__Method18(void *arg0, void *arg1) {
    s32 v1;
    if (arg1 != 0) {
        (*(void (**)(void *, void *))((char *)Get_vtable_BasicClass() + 0x10))(arg0, arg1);
        v1 = *(s32 *)*(s32 *)arg1 & 0xF;
        if (v1 == 2) {
            *(s32 *)((char *)arg0 + 0x34) = (s32)arg1;
        } else if (v1 == 5) {
            *(s32 *)((char *)arg0 + 0x38) = (s32)arg1;
        }
    }
}
void GridMenu__Method1C(void *arg0, void *arg1) {
    s32 v1;
    if (arg1 != 0) {
        v1 = *(s32 *)*(s32 *)arg1 & 0xF;
        if (v1 == 2) {
            *(s32 *)((char *)arg0 + 0x34) = 0;
        } else if (v1 == 5) {
            *(s32 *)((char *)arg0 + 0x38) = 0;
        }
        (*(void (**)(void *, void *))((char *)Get_vtable_BasicClass() + 0x14))(arg0, arg1);
    }
}
void GridMenu__Reset(void *arg0) {
    *(s32*)((char*)arg0 + 0x34) = 0;
    *(s32*)((char*)arg0 + 0x38) = 0;
    *(s32*)((char*)arg0 + 0x50) = 0;
    (*(void(**)(void *))((char *)Get_vtable_BasicClass() + 0x18))(arg0);
}
void GridMenu__Method40(void *arg0, void *arg1, void *arg2) {
    s32 v;
    (*(void (**)(void *, void *, void *))((char *)Get_vtable_BasicClass() + 0x38))(arg0, arg1, arg2);
    v = *(s32 *)*(s32 *)arg1 & 0xF;
    if (v == 2) {
        (*(void (**)(void *, void *, void *))((char *)*(void **)arg0 + 0x5C))(arg0, arg1, arg2);
    } else if (v == 5) {
        (*(void (**)(void *, void *, void *))((char *)*(void **)arg0 + 0x58))(arg0, arg1, arg2);
    }
}
void GridMenu__ClearCursor(void *arg0) {
    *(s32*)((char*)(arg0) + 0x20) = 0;
    *(s32*)((char*)(arg0) + 0x24) = 0;
    *(s32*)((char*)(arg0) + 0x28) = 0;
};
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", GridMenu__LoadResources);
void GridMenu__FreeResources(void *arg0) {
    void **temp_a0;

    if (*(s32*)((char*)(arg0) + 0x50) != NULL) {
        (*(void(**)())(*(void**)(arg0) + 0x90))();
        temp_a0 = *(s32*)((char*)(arg0) + 0x50);
        *(s32*)((char*)(arg0) + 0x50) = (*(s32(**)())(*(void**)(temp_a0) + 0x4))(temp_a0);
    }
};
void GridMenu__Open(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    (*(void(**)())(*(void**)(arg0) + 0x10))();
    (*(void(**)())(*(void**)(arg0) + 0x10))(arg0, arg2);
    *(s32*)((char*)(arg0) + 0x3c) = arg3;
    *(s32*)((char*)(arg0) + 0x2c) = 0;
}
void GridMenu__Close(void *arg0) {
    (*(void(**)(void*, s32))(*(void**)(arg0) + 0x14))(arg0, *(s32*)((char*)(arg0) + 0x34));
    (*(void(**)())(*(void**)(arg0) + 0x14))(arg0, *(s32*)((char*)(arg0) + 0x38));
    *(s32*)((char*)(arg0) + 0x3c) = 0;
}
void GridMenu__Method5C(void *arg0, s32 arg1) {
    *(s32 *)((char *)arg0 + 0x30) = 0;
    if (arg1 < 2) {
        return;
    }
    if (arg1 < 4) {
        goto bodyA;
    }
    if (arg1 == 4) {
        goto bodyB;
    }
    return;
bodyA:
    (*(void (**)(void *, s32))((char *)*(void **)arg0 + 0x14))(arg0, *(s32 *)((char *)arg0 + 0x34));
    (*(void (**)(void *))((char *)*(void **)arg0 + 0x48))(arg0);
    *(s32 *)((char *)arg0 + 0x2C) = arg1;
    return;
bodyB:
    (*(void (**)(void *, s32))((char *)*(void **)arg0 + 0x30))(arg0, *(s32 *)((char *)arg0 + 0x2C));
}
void GridMenu__AutoAdvance(void *arg0) {
    s32 v1 = *(s32*)((char*)arg0 + 0x2C);

    if (v1 < 4) {
        if (v1 >= 2) {
            s32 old = *(s32*)((char*)arg0 + 0x30);

            *(s32*)((char*)arg0 + 0x30) = old + 1;
            if (old != 0) {
                (*(void(**)(void*, s32))(*(s32*)arg0 + 0x54))(arg0, 4);
            }
        }
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", GridMenu__HandleInput);
void GridMenu__PlaySfx(void *arg0, void *arg1, s32 arg2, s32 arg3) {
    void *temp_a0 = *(void **)((char *)arg0 + 0x3c);
    if (temp_a0 != NULL) {
        (*(void(**)(void *, void *, s32, s32))((char *)*(void **)temp_a0 + 0x80))(temp_a0, arg1, 0x60, 0x60);
    }
}
void GridMenu__Method84(void *arg0) {
    register void *v1 __asm__("v1");
    s32 a2;

    if (*(s32 *)((char *)arg0 + 0x50) != 0) {
        a2 = *(s32 *)((char *)arg0 + 0x24);
        if (a2 + 26 < *(s32 *)((char *)arg0 + 0x14)) {
            a2++;
            *(s32 *)((char *)arg0 + 0x24) = a2;
            v1 = *(void **)arg0;
            (*(void (**)(void *, s32, s32, s32, s32))((char *)v1 + 0x94))(
                arg0, *(s32 *)((char *)arg0 + 0x20), a2, *(s32 *)((char *)arg0 + 0x28), 1);
        }
    }
}
void GridMenu__CursorPrev(void *arg0) {
    s32 temp_a2;

    if (*(s32*)((char*)(arg0) + 0x50) != 0) {
        temp_a2 = *(s32*)((char*)(arg0) + 0x24) - 1;
        if (temp_a2 >= 0) {
            *(s32*)((char*)(arg0) + 0x24) = temp_a2;
            (*(void(**)(void*, s32, s32, s32, s32))(*(void**)(arg0) + 0x94))(arg0, *(s32*)((char*)(arg0) + 0x20), temp_a2, *(s32*)((char*)(arg0) + 0x28), 1);
        }
    }
}
void GridMenu__Method8C(void *arg0) {
    if (*(s32 *)((char *)arg0 + 0x50) != 0) {
        s32 v1 = *(s32 *)((char *)arg0 + 0x28);
        if (v1 - 1 >= 0) {
            s32 a1 = *(s32 *)((char *)arg0 + 0x20);
            if (v1 - a1 > 0) {
                (*(void (**)(void *, s32, s32))(*(void **)arg0 + 0x98))(arg0, 0, 1);
            } else {
                s32 a3;
                a1 = a1 - 1;
                *(s32 *)((char *)arg0 + 0x20) = a1;
                a3 = *(s32 *)((char *)arg0 + 0x28) - 1;
                *(s32 *)((char *)arg0 + 0x28) = a3;
                (*(void (**)(void *, s32, s32, s32, s32))(*(void **)arg0 + 0x94))(
                    arg0, a1, *(s32 *)((char *)arg0 + 0x24), a3, 1);
            }
        }
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", GridMenu__Method90);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", GridMenu__DoSelect);
void GridMenu__Method98(void *arg0) {
    if (*(s32*)((char*)arg0 + 0x50) != 0) {
        s32 count = *(s32*)((char*)arg0 + 0x10);
        s32 i;
        if (count >= 5) {
            count = 4;
        }
        for (i = 0; i < count; i++) {
            void *obj = *(void**)((char*)arg0 + 0x40 + i * 4);
            (*(void(**)(void*))((char*)*(void**)obj + 0x4))(obj);
            *(s32*)((char*)arg0 + 0x40 + i * 4) = 0;
        }
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", GridMenu__DoAction);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", GridMenu__ActionExec);
void GridMenu__ActionEnd(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    *(s32 *)((char *)arg0 + 0x20) = arg1;
    *(s32 *)((char *)arg0 + 0x24) = arg2;
    *(s32 *)((char *)arg0 + 0x28) = arg3;
    if (arg4 != 0) {
        arg3 -= arg1;
        (*(void (**)(void *, void *))((char *)*(void **)*(void **)((char *)arg0 + arg3 * 4 + 0x40) + 0xB8))(*(void **)((char *)arg0 + arg3 * 4 + 0x40), &D_8008AB10);
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", GridMenu__MethodA0);
s32 GridMenu__GetField28(void *arg0) {
    return *(s32*)((char*)(arg0) + 0x28);
};
void *GridMenu__GetVtable(void) {
    return &gVtable_GridMenu;
};
void *DreamWorld__Create(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    void *s0 = BMemAlloc(0x88);

    if (s0 != 0) {
        (*(void(**)(void*, s32, s32, s32, s32, s32))((char *)DreamWorld__GetVtable() + 0x8))(s0, arg0, arg1, arg2, arg3, arg4);
        return s0;
    }
    return 0;
}
void DreamWorld__Constructor(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    (*(void(**)(void*, s32, s32))((char*)SceneObj__GetVtable() + 0x8))(arg0, 0, arg1);
    *(s32*)((char*)(arg0)) = DreamWorld__GetVtable();
    *(s32*)((char*)(arg0) + 0x64) = 0;
    *(s32*)((char*)(arg0) + 0x68) = 0;
    *(s32*)((char*)(arg0) + 0x60) = 1;
    *(s32*)((char*)(arg0) + 0x54) = arg2;
    *(s32*)((char*)(arg0) + 0x38) = arg5;
    *(s32*)((char*)(arg0) + 0x6c) = arg1;
    *(s32*)((char*)(arg0) + 0x74) = arg3;
    *(s32*)((char*)(arg0) + 0x70) = arg4;
    *(s32*)((char*)(arg0) + 0x80) = 0;
    *(s32*)((char*)(arg0) + 0x84) = 0;
    (*(void(**)(void*))(*(void**)arg0 + 0x40))(arg0);
}
void DreamWorld__Destructor(void *arg0) {
    (*(void(**)(void *))((char *)SceneObj__GetVtable() + 0xC))(arg0);
}
void DreamWorld__Method38(void *arg0, void *arg1, s32 arg2) {
    s32 w;
    void *result;
    void (*fn)(void *, void *, s32);
    result = SceneObj__GetVtable();
    fn = (void (*)(void *, void *, s32))*(void **)((char *)result + 0x38);
    fn(arg0, arg1, arg2);
    w = *(s32 *)*(s32 *)arg1;
    if ((w & 0xFFF) == 0x114) {
        fn = (void (*)(void *, void *, s32))*(void **)((char *)*(void **)arg0 + 0xB4);
        fn(arg0, arg1, arg2);
    } else if ((w & 0xFFF) == 0x164) {
        fn = (void (*)(void *, void *, s32))*(void **)((char *)*(void **)arg0 + 0xB0);
        fn(arg0, arg1, arg2);
    } else if ((w & 0xFFFF) == 0x1F34) {
        fn = (void (*)(void *, void *, s32))*(void **)((char *)*(void **)arg0 + 0x90);
        fn(arg0, arg1, arg2);
    }
}
void DreamWorld__Nop40(void) {
}
void DreamWorld__Start(void *arg0, void *arg1, s32 arg2) {
    void **temp_a0;
    temp_a0 = *(s32*)((char*)(arg1) + 0xc);
    (*(void(**)(void**, s32*, void*))(*(void**)(temp_a0) + 0xc8))(temp_a0, &DreamWorld__CollisionCallback, arg0);
    *(s32*)((char*)(arg0) + 0x3c) = arg2;
    (*(void(**)(void*, void*, s32))((char*)SceneObj__GetVtable() + 0x44))(arg0, arg1, 1);
    (*(void(**)(void*, s32))(*(void**)(arg0) + 0x10))(arg0, arg2);
}
void DreamWorld__CollisionCallback(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    if (arg1 >= 0) {
        Dreamer__OnMoveClear(*(s32*)((char*)(arg0) + 0x38));
        return;
    }
    Dreamer__OnWallSlide(*(s32*)((char*)(arg0) + 0x38), arg2, arg3);
}
void DreamWorld__Stop(void *arg0) {
    (*(void(**)())(*(void**)(arg0) + 0x14))(arg0, *(s32*)((char*)(arg0) + 0x3c));
    (*(void(**)())((char*)SceneObj__GetVtable() + 0x48))(arg0);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", DreamWorld__InitStage);
void DreamWorld__Shutdown(void *arg0) {
    void **temp_a0;

    (*(void(**)())(*(void**)(arg0) + 0x84))();
    EntityMgr__ShutdownB();
    Spawner__Reset();
    temp_a0 = *(s32*)((char*)(arg0) + 0x54);
    (*(void(**)())(*(void**)(temp_a0) + 0x48))(temp_a0);
};
void DreamWorld__OnEvent(void *arg0, s32 arg1, s32 arg2) {
    if (arg2 == 2) {
        DreamWorld__HandleLinkEvent(arg0, *(s32*)((char*)(arg0) + 0x58));
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", DreamWorld__HandleLinkEvent);
void DreamWorld__Method58(void *arg0, void *arg1, s32 arg2) {
    void (*v0)(void *);
    void *v1;
    v1 = *(void **)arg0;
    if (*(s32 *)((char *)arg0 + 0x68) == 0) {
        return;
    }
    if (arg2 == 0x16) {
        goto c4;
    }
    if (arg2 < 0x17) {
        if (arg2 == 0xC) {
            goto b8;
        }
        return;
    }
    if (arg2 == 0x21) {
        goto ac;
    }
    if (arg2 == 0x2C) {
        goto d0;
    }
    return;
ac:
    v0 = (void (*)(void *))*(void **)((char *)v1 + 0x74);
    goto d4;
b8:
    v0 = (void (*)(void *))*(void **)((char *)v1 + 0xC0);
    goto d4;
c4:
    v0 = (void (*)(void *))*(void **)((char *)v1 + 0xC8);
    goto d4;
d0:
    v0 = (void (*)(void *))*(void **)((char *)v1 + 0xC4);
d4:
    v0(arg0);
}
void DreamWorld__Tick(void *arg0) {
    void (*var_v0)();

    if (*(s32*)((char*)(arg0) + 0x68) != 0) {
        *(s32*)((char*)(arg0) + 0x1c) = (s32) (*(s32*)((char*)(arg0) + 0x1c) + 1);
        if (*(s32*)((char*)(arg0) + 0x80) != 0) {
            var_v0 = *(s32*)((char*)(*(void**)(arg0)) + 0xd0);
        } else {
            var_v0 = *(s32*)((char*)(*(void**)(arg0)) + 0x8c);
        }
        var_v0();
    }
};
void DreamWorld__Method74(void *arg0) {
    void *vt = *(void **)arg0;
    if (*(s32 *)((char *)arg0 + 0x80) != 0) {
        (*(void (**)(void *))((char *)vt + 0xC4))(arg0);
        (*(void (**)(void *))((char *)vt + 0xD4))(arg0);
    } else {
        (*(void (**)(void *))((char *)vt + 0xD0))(arg0);
    }
}
void DreamWorld__Nop7C(void) {
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", DreamWorld__ProcessChunkChange);
void DreamWorld__UnloadStage(void *arg0) {
    void **temp_a0;
    void **temp_a0_2;
    void **temp_a0_3;

    (*(void(**)())(*(void**)(arg0) + 0xd4))();
    temp_a0 = *(s32*)((char*)(arg0) + 0x3c);
    (*(void(**)())(*(void**)(temp_a0) + 0xfc))(temp_a0);
    temp_a0_2 = *(s32*)((char*)(arg0) + 0x3c);
    (*(void(**)())(*(void**)(temp_a0_2) + 0x50))(temp_a0_2);
    temp_a0_3 = *(s32*)((char*)(arg0) + 0x18);
    (*(void(**)())(*(void**)(temp_a0_3) + 0x74))(temp_a0_3);
    (*(void(**)())(*(void**)(arg0) + 0x14))(arg0, *(s32*)((char*)(arg0) + 0x14));
};
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", DreamWorld__Method88);
void DreamWorld__UpdateSpawner(void *arg0) {
    void **temp_a0;

    temp_a0 = *(s32*)((char*)(arg0) + 0x14);
    Spawner__Update((*(s32(**)())(*(void**)(temp_a0) + 0x10c))(temp_a0, 0, 0), 0, 0);
};
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", DreamWorld__DispatchEvent);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", DreamWorld__Method94);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", DreamWorld__Method98);
void DreamWorld__BeginLinkSequence(void *arg0) {
    void **temp_a0;
    void **temp_a0_2;

    temp_a0 = *(s32*)((char*)(arg0) + 0x3c);
    *(s32*)((char*)(arg0) + 0x20) = 6;
    DreamWorld__ScheduleAction(arg0, (*(s32(**)())(*(void**)(temp_a0) + 0x200))(temp_a0), 0, 0x1E, 1);
    temp_a0_2 = *(s32*)((char*)(arg0) + 0x3c);
    (*(void(**)())(*(void**)(temp_a0_2) + 0xfc))(temp_a0_2);
};
void DreamWorld__LinkTeleport(void *arg0) {
    s32 sp18;
    void **temp_a0;
    void **temp_a0_2;

    temp_a0 = *(s32*)((char*)(arg0) + 0x3c);
    *(s32*)((char*)(arg0) + 0x20) = 7;
    (*(void(**)())(*(void**)(temp_a0) + 0xf0))(temp_a0, &sp18, -1);
    DreamWorld__ScheduleAction(arg0, sp18, 0, 5, 1);
    temp_a0_2 = *(s32*)((char*)(arg0) + 0x3c);
    (*(void(**)())(*(void**)(temp_a0_2) + 0xfc))(temp_a0_2);
};
void DreamWorld__EndLinkSequence(void *arg0) {
    *(s32*)((char*)arg0 + 0x20) = 8;
    DreamWorld__ScheduleAction(arg0, 0, 0, 6, 1);
    {
        s32 *obj = *(s32**)((char*)arg0 + 0x3C);
        (*(void (**)(void*, s32))(*(s32*)obj + 0xF4))(obj, 1);
    }
}
void DreamWorld__MethodA8(void *arg0) {
    *(s32 *)((char *)arg0 + 0x20) = 10;
    DreamWorld__ScheduleAction(arg0, 0, 0, 6, 1);
    (*(void (**)(void *, s32))((char *)*(void **)*(void **)((char *)arg0 + 0x3C) + 0x13C))(*(void **)((char *)arg0 + 0x3C), 2);
    (*(void (**)(void *, s32))((char *)*(void **)*(void **)((char *)arg0 + 0x3C) + 0xF4))(*(void **)((char *)arg0 + 0x3C), 2);
}
void DreamWorld__MethodAC(void **arg0) {
    (*(void(**)(void*, s32))(*(void**)(arg0) + 0x30))(arg0, 0xB);
}
void DreamWorld__ScheduleAction(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    void **temp_a0;
    void **temp_s0;

    temp_a0 = *(s32*)((char*)(arg0) + 0x18);
    temp_s0 = (*(s32(**)())(*(void**)(temp_a0) + 0xac))(temp_a0);
    if (arg3 != 0) {
        (*(void(**)())(*(void**)(temp_s0) + 0xd0))(temp_s0, arg3);
    }
    if (arg4 != 0) {
        (*(void(**)())(*(void**)(arg0) + 0x10))(arg0, temp_s0);
    }
    (*(void(**)())(*(void**)(temp_s0) + 0xd8))(temp_s0, *(s32*)((char*)(arg0) + 0x10), arg1, arg2);
};
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", DreamWorld__MethodB0);
void DreamWorld__OnEvent7(void *arg0, s32 arg1, s32 arg2) {
    if (arg2 == 7) {
        (*(void(**)())(*(void **)arg0 + 0xB8))();
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", DreamWorld__MethodB8);
void DreamWorld__NopBC(void) {
}
void DreamWorld__ArmLinkRequest(void *arg0) {
    if ((*(s32*)((char*)(arg0) + 0x80) != 0) && (*(s32*)((char*)(arg0) + 0x20) == 0)) {
        *(s32*)((char*)(arg0) + 0x84) = 1;
    }
}
void DreamWorld__ClearLinkRequest(void *arg0) {
    *(s32*)((char*)(arg0) + 0x84) = 0;
};
void DreamWorld__ExecLinkRequestD(void *arg0) {
    if (*(s32*)((char*)(arg0) + 0x84) != 0) {
        (*(void(**)())(*(void**)(arg0) + 0xd4))();
        (*(void(**)())(*(void**)(arg0) + 0x30))(arg0, 0xD);
    }
};
void DreamWorld__ExecLinkRequestC(void *arg0) {
    if (*(s32*)((char*)(arg0) + 0x84) != 0) {
        (*(void(**)())(*(void**)(arg0) + 0xd4))();
        (*(void(**)())(*(void**)(arg0) + 0x30))(arg0, 0xC);
    }
};
void DreamWorld__BeginLinkEffect(void *arg0) {
    s32 temp_v1;
    void **temp_a0;
    void **temp_a0_2;
    void **temp_a0_3;
    void **temp_a0_4;
    void **temp_a0_5;
    void **temp_v0;

    temp_v1 = *(s32*)((char*)(arg0) + 0x80);
    if (temp_v1 == 0) {
        temp_v0 = New_SpriteSet(*(s32*)((char*)(arg0) + 0x74), 5, &D_8008AB44);
        *(s32*)((char*)(arg0) + 0x7c) = temp_v0;
        (*(void(**)())(*(void**)(temp_v0) + 0x4c))(temp_v0, *(s32*)((char*)(arg0) + 0x14), &D_8008AB38);
        temp_a0 = *(s32*)((char*)(arg0) + 0x7c);
        (*(void(**)())(*(void**)(temp_a0) + 0xb8))(temp_a0, &D_8008AB40);
        *(s32*)((char*)(arg0) + 0x80) = 1;
        return;
    }
    *(s32*)((char*)(arg0) + 0x80) = (s32) (temp_v1 + 1);
    if (temp_v1 == 4) {
        temp_a0_2 = *(s32*)((char*)(arg0) + 0x18);
        (*(void(**)())(*(void**)(temp_a0_2) + 0xb4))(temp_a0_2, 0);
        temp_a0_3 = *(s32*)((char*)(arg0) + 0x10);
        (*(void(**)())(*(void**)(temp_a0_3) + 0x4c))(temp_a0_3);
        temp_a0_4 = *(s32*)((char*)(arg0) + 0x54);
        (*(void(**)())(*(void**)(temp_a0_4) + 0x4c))(temp_a0_4);
        temp_a0_5 = *(s32*)((char*)(arg0) + 0x34);
        (*(void(**)())(*(void**)(temp_a0_5) + 0x88))(temp_a0_5);
    }
};
void DreamWorld__EndLinkEffect(void *arg0) {
    void **temp_a0;
    void **temp_a0_2;
    void **temp_a0_3;
    void **temp_a0_4;
    void **temp_a0_5;

    if (*(s32*)((char*)(arg0) + 0x80) != 0) {
        temp_a0 = *(s32*)((char*)(arg0) + 0x7c);
        (*(void(**)())(*(void**)(temp_a0) + 0x4))(temp_a0);
    }
    temp_a0_2 = *(s32*)((char*)(arg0) + 0x34);
    (*(void(**)())(*(void**)(temp_a0_2) + 0x8c))(temp_a0_2);
    temp_a0_3 = *(s32*)((char*)(arg0) + 0x54);
    (*(void(**)())(*(void**)(temp_a0_3) + 0x50))(temp_a0_3);
    temp_a0_4 = *(s32*)((char*)(arg0) + 0x10);
    (*(void(**)())(*(void**)(temp_a0_4) + 0x50))(temp_a0_4);
    temp_a0_5 = *(s32*)((char*)(arg0) + 0x18);
    (*(void(**)())(*(void**)(temp_a0_5) + 0xb4))(temp_a0_5, 1);
    *(s32*)((char*)(arg0) + 0x80) = 0;
};
void *DreamWorld__GetVtable(void) {
    return &gVtable_DreamWorld;
};
s32 Spawner__Init(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 t0;
    s8 *v1;
    if (D_8008AB4C == 0) {
        t0 = 1;
        v1 = (s8 *)&D_8008ACA0;
        D_8008AB4C = (s32)arg0;
        gLinkTypeId = (s32)arg1;
        gSpawnListHead = arg2;
        gSpawnCounter = -1;
        D_8008AC74 = arg3;
        D_8008AC78 = arg4;
        D_8008AC70 = 0;
        do {
            *(s32 *)v1 = 0;
            v1 -= 4;
        } while (--t0 >= 0);
        return Spawner__LoadRecords();
    }
    return 0;
}
void *Spawner__LoadRecords(void) {
    void *s0;
    s0 = (void *)D_800873EC[gLinkTypeId];
    if (s0 == 0) {
        s0 = Spawner__CreateStateObj();
    }
    Spawner__DecodeRecord(&D_80087424, s0);
    if (*(s8 *)((char *)s0 + 1) >= 4) {
        gSpawnObj1Active = (s32)((char *)&gSpawnRecordTable + *(s8 *)((char *)s0 + 2) * 3);
    }
    return &D_80087424;
}
void Spawner__DecodeRecord(void *a0, void *a1) {
    s8 v1 = *(s8*)((char*)a1 + 3);

    *(s32*)((char*)a0 + 0xC) = (s32)&gSpawnRecordTable + v1 * 3;
    v1 = *(s8*)((char*)a1 + 2);
    *(s32*)((char*)a0 + 0x18) = (s32)&gSpawnRecordTable + v1 * 3;
    *(s32*)((char*)a0 + 0x1C) = gSpawnScaleTable[*(s8*)((char*)a1 + 1)];
    *(s32*)((char*)a0 + 0x14) = *(s8*)((char*)a1 + 0);
}
void Spawner__SpawnByIndex(void) {
    void *result;
    void *r3;
    void (*fn)(void *, s32);
    void *(*fn2)(void *);
    void (*fn3)(void *, void *, void *);
    if (gSpawnObj1Active != 0) {
        result = New_Sprite(&D_8008AB60, gSpawnObj1Active, 0);
        fn = (void (*)(void *, s32))*(void **)((char *)*(void **)result + 0x64);
        gSpawnObj1 = (s32)result;
        fn(result, 1);
        fn = (void (*)(void *, s32))*(void **)((char *)*(void **)(void *)gSpawnObj1 + 0x68);
        fn((void *)gSpawnObj1, 0);
        fn2 = (void *(*)(void *))*(void **)((char *)*(void **)*(void **)((char *)gSpawnListHead + 0xC) + 0xAC);
        r3 = fn2(*(void **)((char *)gSpawnListHead + 0xC));
        fn3 = (void (*)(void *, void *, void *))*(void **)((char *)*(void **)(void *)gSpawnObj1 + 0x4C);
        fn3((void *)gSpawnObj1, r3, &D_8008AB58);
    }
}
void Spawner__ReleaseObj1(void) {
    if (gSpawnObj1Active != 0) {
        (*(void(**)(void**))(*(void**)(gSpawnObj1) + 0x4))(gSpawnObj1);
        gSpawnObj1Active = 0;
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", Spawner__CreateStateObj);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", Spawner__SpawnByIndex2);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", Spawner__Method549A8);
void Spawner__OffsetCoords(u8 *arg0, u8 *arg1, s32 arg2) {
    arg0[0] = arg1[0] - arg2;
    arg0[1] = arg1[1] - arg2;
    arg0[2] = arg1[2] + arg2;
}
void Spawner__ClearFlags(void) {
    if (D_8008AB50 != 0) {
        ReleaseObjectArray(gSpawnFlagsBuf, 0x12);
        D_8008AB50 = 0;
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", Spawner__SpawnTick);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", Spawner__Method54C74);
void Spawner__ClearCounterBuf(void) {
    if (gSpawnCounter >= 0) {
        ReleaseObjectArray(gSpawnCounterBuf, gSpawnCounterBufSize);
    }
}
void Spawner__Reset(void) {
    s32 i;
    Spawner__ReleaseObj1();
    Spawner__ClearFlags();
    Spawner__ClearCounterBuf();
    for (i = 0; i < 2; i++) {
        D_8008AC9C[i] = Spawner__UnregisterActor((void*)D_8008AC9C[i]);
    }
    if (D_8008AB4C != 0) {
        D_8008AB4C = 0;
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", Spawner__SpawnGroupA);
void *Spawner__SpawnGroupB(s32 *arg0, s32 arg1, s32 arg2) {
    s32 i;
    s32 t;
    t = D_80087330;
    D_8008E0B4 = (s32)&D_80087204;
    for (i = 0; i < arg1; i++) {
        Spawner__RandomCoord(arg2, t);
        *arg0 = (s32)Actor__Create(1, (s32)&D_8008E0A4, D_8008AB4C, arg2);
        arg0++;
    }
    return arg0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", Spawner__SpawnGroupC);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", Spawner__SpawnGroupD);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", Spawner__RandomCoord);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", Spawner__Randomize);
void *Spawner__RegisterActor(void *arg0, s32 *arg1) {
    void *result;
    s32 r6;
    result = Spawner__AllocNode((char *)arg0 + 4, (char *)arg0 + 0x10);
    if (result != 0) {
        *(void **)arg0 = result;
        r6 = *(s8 *)((char *)result + 6);
        SlotAlloc__Init(*(void **)gSpawnListHead, (char *)arg0 + 0x14, r6, arg0, gSpawnBehaviorTable[r6]);
        if (*(s8 *)((char *)result + 6) == *arg1) {
            *arg1 = -*(s8 *)((char *)result + 6);
        }
        *(s8 *)((char *)result + 6) = -*(u8 *)((char *)result + 6);
        return arg0;
    }
    return 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", Spawner__AllocNode);
s32 Spawner__UnregisterActor(void *arg0) {
    SlotAlloc__Release(*(s32 *)gSpawnListHead, (s32 *)((char *)arg0 + 0x14));
    *(u8 *)(*(s32 *)arg0 + 6) = -*(u8 *)(*(s32 *)arg0 + 6);
    return 0;
}
s32 Spawner__TryRemoveActor(void *arg0) {
    if (Spawner__IsActorDone(arg0)) {
        SlotAlloc__Update(*(s32*)gSpawnListHead, (s32*)((char*)arg0 + 0x14));
        return 1;
    }
    return 0;
}
s32 Spawner__IsActorDone(s32 *arg0, s32 *arg1) {
    s32 v0 = 0;
    s32 d1;
    s32 d2;
    s32 sum;
    s32 i;
    if (arg1 != 0) {
        d1 = arg0[1] - arg1[0];
        if (d1 < 0) {
            d1 = ~d1 + 1;
        }
        d2 = arg0[3] - arg1[2];
        if (d2 >= 0) {
            sum = d1 + d2;
        } else {
            sum = d1 - d2;
        }
        arg0[4] = sum;
        i = *(s8 *)((char *)*arg0 + 6);
        v0 = sum < D_80087474[-i];
        if (v0 != 0) {
            v0 = 1;
        } else {
            v0 = 0;
        }
    }
    return v0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", Spawner__Update);
void Spawner__ApplyLinkVariant(void *arg0) {
    if (gLinkTypeId == 2) {
        func_8003B624(D_80087444, 1, D_80087450);
    } else if ((u32)(gLinkTypeId - 3) < 3) {
        func_8003B624(D_8008745C, 1, D_80087468);
    }
}
void SpawnBehavior_01(void *arg0, void *arg1) {
    s32 v1;
    *(s32 *)((char *)arg1 + 0x10) = Spawner__NextParam(arg0);
    v1 = *(s32 *)((char *)arg1 + 4);
    if (v1 == 0) {
        *(s32 *)((char *)arg1 + 0x1C) = 7;
        *(s32 *)((char *)arg1 + 0x20) = 0;
    } else if (v1 == 2) {
        *(s32 *)((char *)arg1 + 0x30) = 7;
        *(s32 *)((char *)arg1 + 0x34) = 0;
    } else if (v1 == 5) {
        *(s32 *)((char *)arg1 + 0x44) = 7;
        *(s32 *)((char *)arg1 + 0x48) = 0;
    } else if (v1 >= 8) {
        *(s32 *)((char *)arg1 + 4) = -1;
    }
}
void SpawnBehavior_02(void *arg0, void *arg1) {
    *(s32*)((char*)arg1 + 0x10) = Spawner__NextParam();
    if (*(s32*)((char*)arg1 + 4) == 0) {
        *(s32*)((char*)arg1 + 0x1C) = 0x18;
        *(s32*)((char*)arg1 + 0x20) = -2;
    } else if (*(s32*)((char*)arg1 + 4) >= 0x401) {
        *(s32*)((char*)arg1 + 4) = -1;
    }
}
void SpawnBehavior_03(void *arg0, void *arg1) {
    *(s32*)((char*)arg1 + 0x10) = Spawner__NextParam();
    if (*(s32*)((char*)arg1 + 4) == 0) {
        *(s32*)((char*)arg1 + 0x1C) = 0xC;
        *(s32*)((char*)arg1 + 0x20) = 2;
    } else if (*(s32*)((char*)arg1 + 4) >= 5) {
        *(s32*)((char*)arg1 + 4) = -1;
    }
}
void SpawnBehavior_04(void *arg0, void *arg1) {
    *(s32*)((char*)(arg1) + 0x10) = Spawner__NextParam();
    if (*(s32*)((char*)(arg1) + 0x4) == ((*(s32*)((char*)(arg1) + 0x4) / 20) * 0x14)) {
        *(s32*)((char*)(arg1) + 0x1c) = 0x1E;
        *(s32*)((char*)(arg1) + 0x24) = 0x20;
        *(s32*)((char*)(arg1) + 0x20) = 0;
        *(s32*)((char*)(arg1) + 0x28) = 0xA;
    }
    if (*(s32*)((char*)(arg1) + 0x4) == ((*(s32*)((char*)(arg1) + 0x4) / 400) * 0x190)) {
        *(s32*)((char*)(arg1) + 0x30) = 0x1E;
        *(s32*)((char*)(arg1) + 0x34) = 0;
    }
    *(s32*)((char*)(arg1) + 0x44) = 6;
    *(s32*)((char*)(arg1) + 0x4c) = 0x20;
    *(s32*)((char*)(arg1) + 0x48) = 0;
    *(s32*)((char*)(arg1) + 0x50) = 0xA;
}
void SpawnBehavior_05(void *arg0, void *arg1) {
    *(s32*)((char*)(arg1) + 0x10) = Spawner__NextParam();
    if (*(s32*)((char*)(arg1) + 0x4) == ((*(s32*)((char*)(arg1) + 0x4) / 3) * 3)) {
        *(s32*)((char*)(arg1) + 0x1c) = 0x1E;
        *(s32*)((char*)(arg1) + 0x20) = 0;
    }
    if (*(s32*)((char*)(arg1) + 0x4) == ((*(s32*)((char*)(arg1) + 0x4) / 5) * 5)) {
        *(s32*)((char*)(arg1) + 0x30) = 0x1E;
        *(s32*)((char*)(arg1) + 0x34) = 0;
        *(s32*)((char*)(arg1) + 0x38) = 0x18;
        *(s32*)((char*)(arg1) + 0x3c) = 0x18;
    }
    if (*(s32*)((char*)(arg1) + 0x4) == ((*(s32*)((char*)(arg1) + 0x4) / 7) * 7)) {
        *(s32*)((char*)(arg1) + 0x1c) = 0x1E;
        *(s32*)((char*)(arg1) + 0x20) = 0;
    }
    *(s32*)((char*)(arg1) + 0x44) = 6;
    *(s32*)((char*)(arg1) + 0x48) = 1;
    *(s32*)((char*)(arg1) + 0x4c) = 0x2A;
    *(s32*)((char*)(arg1) + 0x50) = 0xA;
}
void SpawnBehavior_06(void *arg0, void *arg1) {
    s32 v;
    s32 w;
    w = Spawner__NextParam(arg0);
    *(s32 *)((char *)arg1 + 0x10) = w;
    v = *(s32 *)((char *)arg1 + 4);
    if (v == 0) {
        *(s32 *)((char *)arg1 + 0x1C) = 0x1E;
        *(s32 *)((char *)arg1 + 0x20) = -1;
    } else if (v < 0x32 && (v / 5) * 5 == v - 4) {
        *(s32 *)((char *)arg1 + 0x30) = 0x1E;
        *(s32 *)((char *)arg1 + 0x34) = 0;
        *(s32 *)((char *)arg1 + 0x38) = *(s32 *)((char *)arg1 + 0x38) - *(s32 *)((char *)arg1 + 4) * 2;
        *(s32 *)((char *)arg1 + 0x3C) = *(s32 *)((char *)arg1 + 0x38);
    } else if (*(s32 *)((char *)arg1 + 4) >= 0x65 && *(s32 *)((char *)arg1 + 4) < 0x6E) {
        *(s32 *)((char *)arg1 + 0x44) = 0xD;
        *(s32 *)((char *)arg1 + 0x48) = 1;
    } else if (*(s32 *)((char *)arg1 + 4) >= 0xC9) {
        *(s32 *)((char *)arg1 + 4) = -1;
    }
}
void SpawnBehavior_07(void *arg0, void *arg1) {
    *(s32*)((char*)arg1 + 0x10) = Spawner__NextParam();
    if (*(s32*)((char*)arg1 + 4) == 0) {
        *(s32*)((char*)arg1 + 0x1C) = 7;
        *(s32*)((char*)arg1 + 0x20) = 2;
    } else if (*(s32*)((char*)arg1 + 4) >= 0x1B) {
        *(s32*)((char*)arg1 + 4) = -1;
    }
}
void SpawnBehavior_08(void *arg0, void *arg1) {
    s32 v1;
    *(s32 *)((char *)arg1 + 0x10) = Spawner__NextParam(arg0);
    v1 = *(s32 *)((char *)arg1 + 4);
    if (v1 == 0) {
        *(s32 *)((char *)arg1 + 0x1C) = 0x14;
        *(s32 *)((char *)arg1 + 0x20) = 1;
    } else if (v1 == 3) {
        *(s32 *)((char *)arg1 + 0x20) = 2;
        *(s32 *)((char *)arg1 + 0x24) = 0x18;
        *(s32 *)((char *)arg1 + 0x1C) = v1;
        *(s32 *)((char *)arg1 + 0x28) = 0x14;
    } else if (v1 >= 0x33) {
        *(s32 *)((char *)arg1 + 4) = -1;
    }
}
void SpawnBehavior_09(void *arg0, void *arg1) {
    *(s32*)((char*)(arg1) + 0x10) = Spawner__NextParam();
    if (*(s32*)((char*)(arg1) + 0x4) == ((*(s32*)((char*)(arg1) + 0x4) / 20) * 0x14)) {
        *(s32*)((char*)(arg1) + 0x1c) = 9;
        *(s32*)((char*)(arg1) + 0x20) = 0;
        *(s32*)((char*)(arg1) + 0x24) = 0x40;
        *(s32*)((char*)(arg1) + 0x28) = 0x40;
    }
}
void SpawnBehavior_10(void *arg0, void *arg1) {
    *(s32*)((char*)(arg1) + 0x10) = Spawner__NextParam();
    if (*(s32*)((char*)(arg1) + 0x4) == ((*(s32*)((char*)(arg1) + 0x4) / 20) * 0x14)) {
        *(s32*)((char*)(arg1) + 0x1c) = 9;
        *(s32*)((char*)(arg1) + 0x20) = -2;
    }
}
void SpawnBehavior_11(void *arg0, void *arg1) {
    s32 v1;
    *(s32 *)((char *)arg1 + 0x10) = Spawner__NextParam(arg0);
    v1 = *(s32 *)((char *)arg1 + 4) % 20;
    if (v1 == 1) {
        *(s32 *)((char *)arg1 + 0x1C) = 9;
        *(s32 *)((char *)arg1 + 0x20) = -2;
    } else if (v1 == 0x10) {
        *(s32 *)((char *)arg1 + 0x30) = 9;
        *(s32 *)((char *)arg1 + 0x34) = -2;
    }
}
void SpawnBehavior_12(void *arg0, void *arg1) {
    s32 v1;
    SpawnBehavior_11(arg0, arg1);
    v1 = *(s32 *)((char *)arg1 + 4) % 70;
    if (v1 == 0x32) {
        *(s32 *)((char *)arg1 + 0x44) = 0x14;
        *(s32 *)((char *)arg1 + 0x48) = 1;
    } else if ((u32)(v1 - 0x36) < 5) {
        *(s32 *)((char *)arg1 + 0x44) = 0xD;
        *(s32 *)((char *)arg1 + 0x48) = 1;
    } else if (v1 == 0x3D) {
        *(s32 *)((char *)arg1 + 0x44) = 9;
        *(s32 *)((char *)arg1 + 0x48) = -1;
    }
}
void SpawnBehavior_13(void *arg0, void *arg1) {
    s32 v1;
    *(s32 *)((char *)arg1 + 0x10) = Spawner__NextParam();
    v1 = *(s32 *)((char *)arg1 + 0x4);
    if (v1 == 0) {
        *(s32 *)((char *)arg1 + 0x1C) = 0x14;
        *(s32 *)((char *)arg1 + 0x20) = -2;
        *(s32 *)((char *)arg1 + 0x30) = 0x14;
        *(s32 *)((char *)arg1 + 0x34) = -2;
    } else if (v1 == 4) {
        *(s32 *)((char *)arg1 + 0x30) = 0x14;
        *(s32 *)((char *)arg1 + 0x34) = -2;
    } else if (v1 == 0x14) {
        *(s32 *)((char *)arg1 + 0x1C) = 0x10;
        *(s32 *)((char *)arg1 + 0x20) = -2;
        *(s32 *)((char *)arg1 + 0x30) = 0x12;
        *(s32 *)((char *)arg1 + 0x34) = -2;
    } else if (v1 >= 0xC9) {
        *(s32 *)((char *)arg1 + 0x4) = -1;
    }
}
void SpawnBehavior_14(s32 arg0, s32 *arg1) {
    *(s32*)((char*)arg1 + 0x10) = Spawner__NextParam();
    if (arg1[1] == 0) {
        *(s32*)((char*)arg1 + 0x1C) = 0x18;
        *(s32*)((char*)arg1 + 0x20) = 0;
    }
}
s32 Spawner__NextParam(void *arg0) {
    s32 q;
    q = D_80087474[-*(s8 *)((char *)*(void **)arg0 + 6)] / *(s32 *)((char *)arg0 + 0x28);
    return *(s32 *)((char *)arg0 + 0x10) / q;
}
s32 Spawner__GetParity(void) {
    return (gSpawnCounter & 1) ^ 1;
}
void *Actor__Create(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    void *s0 = BMemAlloc(0x98);

    if (s0 != 0) {
        if ((*(s32(**)(void*, s32, s32, s32, s32))((char *)Actor__GetVtable() + 0x8))(s0, arg0, arg1, arg2, arg3) != 0) {
            return s0;
        }
        BMemFree((s32)s0);
    }
    return 0;
}
void *Actor__Constructor(void *arg0, void *arg1, void *arg2, void *arg3, s32 arg4) {
    if ((*(s32 (**)(void *))((char *)Get_vtable_ActorBase() + 0x8))(arg0) != 0) {
        *(s32 *)((char *)arg0 + 0x0) = Actor__GetVtable();
        *(s32 *)((char *)arg0 + 0x44) = 0;
        *(s32 *)((char *)arg0 + 0x54) = (s32)arg1;
        (*(void (**)(void *, void *))((char *)*(void **)((char *)arg0 + 0x0) + 0x40))(arg0, arg2);
        Actor__InitMotion(arg0, arg3, arg4);
        return arg0;
    }
    return 0;
}
void Actor__Destructor(void *arg0) {
    Actor__Shutdown(arg0);
    (*(void(**)(void *))((char *)Get_vtable_ActorBase() + 0xC))(arg0);
}
typedef struct { s32 x, y, z, w; } S32Quad;
void Actor__SetTransform(void *arg0, s32 *arg1) {
    S32Quad *dst = (S32Quad *)((char *)arg0 + 0x58);
    S32Quad *src = (S32Quad *)arg1;
    S32Quad *end = (S32Quad *)(arg1 + 8);
    do {
        *dst = *src;
        src++;
        dst++;
    } while (src != end);
    *(s32 *)dst = *(s32 *)src;
    *(s32 *)((char *)arg0 + 0x24) = 0;
}
void Actor__Tick(void *arg0) {
    *(s32*)((char*)(arg0) + 0x24) = (s32) (*(s32*)((char*)(arg0) + 0x24) + 1);
    Actor__UpdateMotion();
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", Actor__InitMotion);
void Actor__UpdateMotion(void *arg0, void *arg1) {
    s32 local[4];
    s32 v;
    void (*fn)(void *, void *);
    Vec3Add(&local[0], arg1, (char *)arg0 + 0x58);
    local[1] = *(s32 *)((char *)D_8008ACAC + 0x18) - D_8008ACB0 + local[1];
    fn = (void (*)(void *, void *))*(void **)((char *)*(void **)arg0 + 0xB8);
    fn(arg0, &local[0]);
    v = *(s32 *)((char *)arg0 + 0x54);
    if (v == 2) {
        goto c2;
    }
    if (v >= 3) {
        goto ge3;
    }
    if (v == 0) {
        goto c0;
    }
    return;
ge3:
    if (v == 3) {
        goto c3;
    }
    return;
c0:
    Actor__Method569A8(arg0, arg1);
    return;
c2:
    Actor__Nop(arg0, arg1);
    return;
c3:
    Actor__RandomizeHeading(arg0, arg1);
}
void Actor__Shutdown(void *arg0) {
    s32 temp_v1;

    temp_v1 = *(s32*)((char*)(arg0) + 0x54);
    switch (temp_v1) {                              /* irregular */
    case 0:
        Actor__ClearState0();
        return;
    case 2:
        Actor__ClearState2();
        return;
    case 3:
        Actor__ClearState3();
        return;
    }
};
void Vec3Add(void *arg0, void *arg1, void *arg2) {
    *(s32*)((char*)(arg0)) = (s32) (*(s32*)((char*)(arg1)) + *(s32*)((char*)(arg2)));
    *(s32*)((char*)(arg0) + 0x4) = (s32) (*(s32*)((char*)(arg1) + 0x4) + *(s32*)((char*)(arg2) + 0x4));
    *(s32*)((char*)(arg0) + 0x8) = (s32) (*(s32*)((char*)(arg1) + 0x8) + *(s32*)((char*)(arg2) + 0x8));
}
void Vec3Sub(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    register s32 t3 __asm__("s1");
    register s32 t4 __asm__("s2");
    t3 = arg3;
    t4 = arg4;
    (*(void (**)(void *))(*(void **)arg0 + 0x4C))(arg0);
    (*(void (**)(void *, s32, s32))(*(void **)arg0 + 0x44))(arg0, 1, t3);
    (*(void (**)(void *, s32, s32))(*(void **)arg0 + 0x48))(arg0, 1, t4);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", Actor__Method56858);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", Actor__Method569A8);
void Actor__ClearState0(void *arg0) {
    if (*(s32*)((char*)(arg0) + 0x6c) != 0) {
        ReleaseObjectArray(arg0 + 0x7C, 2);
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", Actor__RandomWander);
void Actor__SpawnSprite(void *arg0, void *arg1, void *arg2, s32 arg3) {
    s32 i;
    void **ptr;
    void *result;
    void (*fn)(void *, void *, s32);
    void (*fn2)(void *, s32);
    void (*fn3)(void *, s32, s32);
    ptr = (void **)((char *)arg0 + 0x84);
    for (i = 0; i < 5; i++) {
        result = ActorSprite__Create(arg2, 0, D_8008ACA8);
        *ptr = result;
        fn = (void (*)(void *, void *, s32))*(void **)((char *)*(void **)result + 0x4C);
        fn(result, arg0, 0);
        fn2 = (void (*)(void *, s32))*(void **)((char *)*(void **)*ptr + 0xB8);
        fn2(*ptr, *(s32 *)((char *)arg0 + 0x74));
        if (arg3 != 0) {
            fn3 = (void (*)(void *, s32, s32))*(void **)((char *)*(void **)*ptr + 0x48);
            fn3(*ptr, 1, arg3);
        }
        ptr++;
    }
}
void Actor__Nop(void) {
}
void Actor__ClearState2(s32 arg0) {
    ReleaseObjectArray(arg0 + 0x84, 5);
}
void Actor__SpawnSpriteDefault(void *arg0) {
    Actor__SpawnSprite(arg0, 0, 0, 0);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", Actor__RandomizeHeading);
void Actor__ClearState3(s32 arg0) {
    ReleaseObjectArray(arg0 + 0x84, 5);
}
void *Actor__GetVtable(void) {
    return &gVtable_Actor;
};
void Spawner__SpawnEffect(void *arg0, void *arg1, void *arg2, void *arg3) {
    s32 s1 = 0;
    s32 *s0;
    s32 result;
    D_8008ACA4 = (s32)arg1;
    D_8008ACA8 = (s32)arg2;
    D_8008ACAC = (s32)arg3;
    s0 = D_8008AB98;
    do {
        result = (s32)(*(void *(**)(void *, void *))((char *)*(void **)arg1 + 0x80))(arg1, (void *)*s0);
        s0++;
        SpawnEffectRaw(result, &D_8008AB94);
        s1++;
    } while (s1 < 2);
}
void *ActorBase__Create(void) {
    void *s0 = BMemAlloc(0x58);

    if (s0 != 0) {
        if ((*(s32(**)(void *))((char *)Get_vtable_ActorBase() + 0x8))(s0) != 0) {
            return s0;
        }
        BMemFree((s32)s0);
    }
    return 0;
}
void *ActorBase__Constructor(void *arg0) {
    void *v0 = Get_vtable_SceneNode();
    if ((*(s32 (**)(void *))((char *)v0 + 0x8))(arg0) != 0) {
        *(s32 *)arg0 = (s32)Get_vtable_ActorBase();
        *(s32 *)((char *)arg0 + 0x44) = 0;
        *(s32 *)((char *)arg0 + 0x4C) = 0;
        *(s32 *)((char *)arg0 + 0x50) = 0;
        (*(void (**)(void *))(*(s32 *)arg0 + 0x40))(arg0);
        return arg0;
    }
    return 0;
}
void ActorBase__AddEventListener(void *arg0, s32 **arg1) {
    s32 temp_a0;
    (*(void(**)(void*, s32**))((char*)Get_vtable_SceneNode() + 0x10))(arg0, arg1);
    temp_a0 = **arg1;
    if ((temp_a0 & 0xFFF) == 0x114) {
        *(s32*)((char*)(arg0) + 0x4c) = arg1;
        return;
    }
    if ((temp_a0 & 0xF) == 5) {
        *(s32*)((char*)(arg0) + 0x50) = arg1;
    }
}
void ActorBase__RemoveEventListener(void *arg0, s32 **arg1) {
    s32 ta = **arg1;
    if ((ta & 0xFFF) == 0x114) {
        *(s32 *)((char *)arg0 + 0x4c) = 0;
    } else if ((ta & 0xF) == 5) {
        *(s32 *)((char *)arg0 + 0x50) = 0;
    }
    (*(void(**)(void *, s32 **))((char *)Get_vtable_SceneNode() + 0x14))(arg0, arg1);
}
void ActorBase__ClearListeners(void *arg0) {
    *(s32 *)((char *)arg0 + 0x4c) = 0;
    *(s32 *)((char *)arg0 + 0x50) = 0;
    (*(void(**)(void *))((char *)Get_vtable_SceneNode() + 0x18))(arg0);
}
void ActorBase__InitDefaults(void *arg0) {
    *(s16*)((char*)(arg0) + 0x48) = 0x12C;
    *(s32*)((char*)(arg0) + 0x54) = 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", ActorBase__Method88);
void ActorBase__HandleCommand(void **arg0, u8 **arg1) {
    void (*var_v0)();
    u8 temp_v1;

    temp_v1 = **arg1;
    if (temp_v1 == 0x34) {
        var_v0 = *(s32*)((char*)((*arg0)) + 0xdc);
        goto block_4;
    }
    if (temp_v1 == 0x24) {
        var_v0 = *(s32*)((char*)((*arg0)) + 0xe0);
block_4:
        var_v0();
    }
};
void ActorBase__SetVelocity(void *arg0, s32 arg1) {
    ActorBase__ApplyVelocity(arg0, 1, arg1);
}
void ActorBase__AddVelocity(void *arg0, s32 arg1) {
    ActorBase__ApplyVelocity(arg0, 0, arg1);
}
void ActorBase__ApplyVelocity(void *arg0, s32 arg1, S32Triple *arg2) {
    char *p = *(char **)((char *)arg0 + 0x14);
    if (arg1 != 0) {
        *(S32Triple *)(p + 0x18) = *arg2;
    } else {
        *(s32 *)(p + 0x18) += arg2->x;
        *(s32 *)(p + 0x1C) += arg2->y;
        *(s32 *)(p + 0x20) += arg2->z;
    }
    **(s32 **)((char *)arg0 + 0x14) = 0;
}
void ActorBase__TransformPoint(void *arg0, s32 arg1) {
    s32 local[4];

    func_8001E58C(arg0, local, arg1);
    (*(void(**)(void*, s32*))(*(s32*)arg0 + 0xBC))(arg0, local);
}
void ActorBase__LoadAnimSet6(void *arg0, s32 arg1, s32 arg2) {
    ActorBase__LoadAnimSet(arg0, &gAnimSetTable6, arg1, arg2, 6);
}
void ActorBase__LoadAnimSet7(void *arg0, s32 arg1, s32 arg2) {
    ActorBase__LoadAnimSet(arg0, &gAnimSetTable7, arg1, arg2, 7);
}
void ActorBase__LoadAnimSet8(void *arg0, s32 arg1, s32 arg2) {
    ActorBase__LoadAnimSet(arg0, (s8*)&gAnimSetTable7 + 2, arg1, arg2, 8);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", ActorBase__LoadAnimSet);
void ActorBase__PlayAnimA(void *arg0, s32 arg1, s32 arg2) {
    s32 *deref = *(s32**)arg0;
    ActorBase__TryPlayAnim(arg0, (void*)deref[0x31], arg1, arg2);
}
void ActorBase__PlayAnimB(void *arg0, s32 arg1, s32 arg2) {
    s32 *deref = *(s32**)arg0;
    ActorBase__TryPlayAnim(arg0, (void*)deref[0x32], arg1, arg2);
}
void ActorBase__Nop(void) {
}
void ActorBase__TryPlayAnim(void *arg0, void (*arg1)(void*, s32, s32), s32 arg2, s32 arg3) {
    *(s32*)((char*)(arg0) + 0x28) = 0;
    arg1(arg0, arg2, arg3);
    if (*(s32*)((char*)(arg0) + 0x28) == 0) {
        ActorBase__AnimFallback(arg0);
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", ActorBase__AnimFallback);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", ActorBase__Method57784);
s32 ActorBase__Method57954(void *arg0, void *arg1, void *arg2, s32 arg3, void *arg4, void *arg5) {
    s32 i;
    s32 r;
    i = 0;
    while (i < arg3) {
        i++;
        if (*(s16 *)((char *)*(void **)(*(void **)arg5 + 4) + 0x2C) != 0) {
            r = ActorBase__FindChildOfType(arg0, arg1, arg2, arg4, *(void **)arg5);
            if (r != 0) {
                return r;
            }
        }
        arg4 += 0xC;
        arg5 += 4;
    }
    return 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", ActorBase__FindChildOfType);
void *ActorBase__SafeCast(void *arg0) {
    if (arg0 != NULL && SceneNode_IsType(arg0)) {
        return arg0;
    }
    return NULL;
}
void ActorBase__MethodDC(void *arg0, void *arg1, s32 arg2) {
    void *obj = Get_vtable_SceneNode();
    (*(void(**)(void*, void*, s32))((char*)obj + 0x9C))(arg0, arg1, arg2);
    if (arg2 < 9) {
        if (arg2 >= 5) {
            (*(void(**)(void*, void*, s32))((char*)*(void**)arg0 + 0xA0))(arg0, arg1, arg2);
        }
    }
}
void ActorBase__MethodE0(s32 arg0, s32 arg1, s32 arg2) {
    (*(void(**)(s32, s32, s32))((char*)Get_vtable_SceneNode() + 0x9C))(arg0, arg1, arg2);
}
void ActorBase__SetTimer48(void *arg0, s16 arg1) {
    *(s16*)((char*)(arg0) + 0x48) = arg1;
}
void ActorBase__NopE8(void) {
}
void ActorBase__SetState54(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x54) = arg1;
};
void *Get_vtable_ActorBase(void) {
    return &gVtable_ActorBase;
}
void *ActorSprite__Create(s32 arg0, s32 arg1, s32 arg2) {
    void *s0 = BMemAlloc(0xA8);

    if (s0 != 0) {
        (*(void(**)(void*, s32, s32, s32))((char *)ActorSprite__GetVtable() + 0x8))(s0, arg0, arg1, arg2);
        return s0;
    }
    return 0;
}
void ActorSprite__Constructor(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    (*(void(**)())((char*)func_800422BC() + 0x8))(arg0, arg3, 0, (char*)&gActorSpriteConfig + (arg1 * 0xC), arg2, 0);
    *(s32*)((char*)(arg0)) = ActorSprite__GetVtable();
    *(s32*)((char*)(arg0) + 0xa4) = 0;
    (*(void(**)())(*(void**)(arg0) + 0x40))(arg0, arg1);
}
void ActorSprite__SetVariant(void *arg0, s32 arg1) {
    *(s32 *)((char *)arg0 + 0xA0) = arg1;
    *(u16 *)((char *)arg0 + 0x74) = gActorSpriteTexIds[arg1][0];
    *(u16 *)((char *)arg0 + 0x76) = gActorSpriteTexIds[arg1][1];
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", ActorSprite__Method48);
void ActorSprite__Nop98(void) {
}
void ActorSprite__NopBC(void) {
}
void ActorSprite__NopC0(void) {
}
void ActorSprite__NopC4(void) {
}
void *ActorSprite__GetVtable(void) {
    return &gVtable_ActorSprite;
};
void *GraphScreen__Create(void *arg0) {
    void *s0 = BMemAlloc(0x244);

    if (s0 != 0) {
        (*(void(**)(void*, void *))((char *)GraphScreen__GetVtable() + 0x8))(s0, arg0);
        return s0;
    }
    return 0;
}
void GraphScreen__Constructor(void *arg0, void *arg1) {
    (*(void (**)(void *, s32, void *, s32))((char *)Get_vtable_AnimEffect() + 0x8))(arg0, 0, &D_8001176C, 0);
    *(void **)arg0 = GraphScreen__GetVtable();
    (*(void (**)(void *, s32))((char *)*(void **)*(void **)((char *)arg0 + 0x48) + 0x9C))(*(void **)((char *)arg0 + 0x48), -1);
    *(s32 *)((char *)arg0 + 0xA4) = (s32)arg1;
    (*(void (**)(void *, s32))((char *)*(void **)arg0 + 0xD8))(arg0, 0);
    (*(void (**)(void *, void *))((char *)*(void **)arg0 + 0x40))(arg0, arg1);
}
void GraphScreen__LoadGraph(void *arg0) {
    *(s32*)((char*)(arg0) + 0x84) = 5;
    *(s32*)((char*)(arg0) + 0x2c) = 0x190;
    (*(void(**)(void*, s32*, s32))(*(void**)(arg0) + 0xd4))(arg0, &strHgraphTim, 0);
    (*(void(**)())(*(void**)(arg0) + 0x6c))(arg0, 0xA);
}
void GraphScreen__UpdateCursor(void *arg0, s32 arg1, s32 arg2) {
    void **temp_a0;
    void **temp_a0_2;
    void *temp_v0;

    (*(void(**)(void*, s32, s32))((char*)Get_vtable_AnimEffect() + 0x5C))(arg0, arg1, arg2);
    if ((*(s32*)((char*)(arg0) + 0x3c) == 1) && ((temp_a0 = *(s32*)((char*)(arg0) + 0xa4), temp_v0 = (*(s32(**)(void*, s32))(*(void**)(temp_a0) + 0x1b0))(temp_a0, 0), (*(s32*)((char*)(temp_v0) + 0x4) != 0)) || (*(s32*)((char*)(temp_v0) + 0x8) != 0))) {
        temp_a0_2 = *(s32*)((char*)(arg0) + 0xa8);
        (*(void(**)(void*, s32))(*(void**)(temp_a0_2) + 0x60))(temp_a0_2, *(s32*)((char*)(arg0) + 0x1c) & 1);
    }
    (*(void(**)(void*))(*(void**)(arg0) + 0x124))(arg0);
}
void GraphScreen__OnConfirm(void *arg0) {
    if (*(s32 *)((char *)arg0 + 0x238) == 0) {
        (*(void(**)(void *, s32))((char *)*(void **)arg0 + 0x70))(arg0, 0x10);
        (*(void(**)(void *))((char *)*(void **)arg0 + 0x94))(arg0);
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", GraphScreen__BuildChart);
void GraphScreen__TeardownChart(void *arg0) {
    s32 s1 = 0;
    s32 s0;
    BMemFree(*(s32 *)((char *)arg0 + 0x240));
    s0 = (s32)arg0;
    do {
        (*(void (**)(void *))((char *)*(void **)*(void **)((char *)s0 + 0xA8) + 0x4))(*(void **)((char *)s0 + 0xA8));
        s0 += 4;
        s1++;
    } while (s1 < 100);
    (*(void (**)(void *))((char *)Get_vtable_AnimEffect() + 0xDC))(arg0);
}
s32 GraphScreen__GetResult(void *arg0, s32 arg1, s32 arg2) {
    s32 var_v1;
    (*(void(**)(void *, s32, s32))((char *)Get_vtable_AnimEffect() + 0x44))(arg0, arg1, arg2);
    var_v1 = 2;
    if (*(s32 *)((char *)arg0 + 0x238) == 0) {
        var_v1 = *(s32 *)((char *)arg0 + 0x38);
    }
    return var_v1;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", GraphScreen__MethodE0);
INCLUDE_ASM("asm/lsdde/nonmatchings/class_39e08", GraphScreen__DrawChart);
void GraphScreen__Method124(void *arg0) {
    u32 a0v;
    u32 a1v;
    void *obj;
    void (*fn)(void *, s32, void *);
    if (*(s32 *)((char *)arg0 + 0x238) != 0) {
        a0v = *(u32 *)((char *)arg0 + 0x1C);
        if (a0v >= 0x1F) {
            a1v = *(u32 *)((char *)arg0 + 0x23C);
            if (a1v < 4 && a0v == (a0v / 24) * 24) {
                obj = *(void **)((char *)arg0 + *(s8 *)(*(void **)((char *)arg0 + 0x240) + a1v) * 4 + 0xA8);
                fn = (void (*)(void *, s32, void *))*(void **)((char *)*(void **)obj + 0xB8);
                fn(obj, 1, &D_8008ABBC);
                *(s32 *)((char *)arg0 + 0x23C) = *(s32 *)((char *)arg0 + 0x23C) + 1;
            }
        }
    }
}
void *GraphScreen__GetVtable(void) {
    return &gVtable_GraphScreen;
};
