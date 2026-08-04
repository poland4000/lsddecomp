#include "common.h"

extern s32 gCdModeInitialized;
extern s32 gCdUseFileTable;
extern s32 D_8008A860;
extern s32 gCdOpActive;
extern s32 gpCdRequestQueue;
extern s32 gpCdFileTable;
extern s32 gCdFileTableCount;
extern s32 gCdOpIdle;
extern s32 gCdStreamCmd;
extern s32 gCdStreamState;
extern s32 gCdStreamLock;
extern s32 gCdStreamMode;
extern s32 D_8008A89C;
extern s32 gCdStreamRetryCount;
extern s32 gCdCallbackEnabled;
extern s32 gCdCallbackFn;
extern s32 gCdCallbackArg;
extern s32 gSoundPlayerCount;
extern s32 D_8008A8CC;
extern s16 gMainVolumeL;
extern s16 gMainVolumeR;
extern s32 D_8008E264;
extern s32 D_8008E268;
extern s32 gVtable_CdFile;
extern s32 gCdStreamingEnabled;
extern u8 gCdFileSuffix[];
extern u8 gCdStatus;
extern u8 gCdLastCommand;
extern s32 gCdDebugLevel;
extern void *gCdCommandNames[];
extern void *gCdIntNames[];
extern void *D_80010840;
extern s32 D_8006D5FC;
extern s32 D_8006D600;
extern s32 D_8006D604;
extern s8 *gpCdRegIndex;
extern u8 *gpCdRegParam;
extern u8 *gpCdRegAck;
extern u8 *gpCdRegStat;
extern s32 D_8006D610;
extern s32 D_8006D8DC[];
extern s32 D_8006D924;
extern s32 D_8006D8D0;
extern s32 D_8006D928;
extern s32 D_8006D92C;
extern s32 D_8006D930;
extern s32 D_8006D934;
extern s32 D_8006D8A4;
extern u8 D_8006D8D8;
extern u8 D_8006D8D9;
extern s32 D_8008B3CC;
extern s32 D_8008B3D4;
extern u8 D_8008B9F4[];
extern u8 D_8008B9FC[];
extern s32 gVtable_ClassD940;
extern s32 gVtable_ClassD9BC;
extern s32 D_8008A8B8;
extern s32 D_8008A8BC;
extern s32 D_8008A8C0;
extern s32 gVtable_SoundPlayer;
extern u8 D_8008EA0E;
extern u8 D_8008EA1C;
extern u8 D_8008EA1D;
extern u16 D_8006DAD8[];
extern u8 gNumVoices;
extern s8 gSfxVolume;
extern s16 gCurrentVoice;
extern u8 gVoiceStateTable[];
extern u8 D_8008D98C[];
extern s16 D_8008EA22;
extern u8 *gSeqChannelTable;
extern u8 *D_8006DAD4;
extern u8 gVoiceAttrTable[];
extern u8 gVoiceDirtyFlags[];
extern u8 gSeqSlotStates[];
extern s16 gMaxSeqChannels;
extern s32 D_8008E80C[];
extern s32 D_8008E7A4[];
extern s32 D_8008E850[];
extern u8 D_8008EA0D;
extern u8 D_8008EA12;
extern s32 D_8008E978;
extern s32 D_8008E970;
extern u8 D_8008EA13;
extern s32 D_8006DCA8;
extern s32 D_8006DC94;
extern s32 D_8006DC8C;
extern s32 D_8006DC90;
extern s32 D_8006DCA0;
extern u8 *gpTimerRegs;
extern s32 *D_8006DCAC;
extern s32 gTimerIntMasks[];
extern s32 gSeqDataPtrs[];
extern s32 *gSoundBankTable;
extern s32 gSeqHandles[];
extern u16 gSeqPlayingCount;
extern s32 D_80090C1C[];
extern s16 gReverbDepth;
extern s32 gSpuCmdBlock;
extern s16 D_8008E84C;

extern s32 gCdModeInitialized;
extern s32 gCdUseFileTable;
extern s32 D_8008A860;
extern s32 gCdOpActive;
extern s32 gpCdRequestQueue;
extern s32 gpCdFileTable;
extern s32 gCdFileTableCount;
extern s32 gCdOpIdle;
extern s32 gCdStreamCmd;
extern s32 gCdStreamState;
extern s32 gCdStreamLock;
extern s32 gCdStreamMode;
extern s32 D_8008A89C;
extern s32 gCdStreamRetryCount;
extern s32 gCdCallbackEnabled;
extern s32 gCdCallbackFn;
extern s32 gCdCallbackArg;
extern s32 gSoundPlayerCount;
extern s32 D_8008A8CC;
extern s16 gMainVolumeL;
extern s16 gMainVolumeR;
extern s32 D_8008E264;
extern s32 D_8008E268;
void *BMemAlloc(s32);                              /* extern */
void *Get_vtable_CdFileBase(void);                              /* extern */
void CdFile__InvalidateLoc(void *);                              /* extern */
void CdEnqueueRequest(void *, s32, s32, s32, s32);           /* extern */
void CdBeginOp(s32, s32);                      /* extern */
void CdEndOp(void);                          /* extern */
void CdStreamLock();                                  /* extern */
void CdStreamUnlock();                                  /* extern */
void CdStreamStop();                                  /* extern */
extern s32 gVtable_CdFile;
void *func_80020C5C(void);                                /* extern */
void CdEnsureModeSet(void);                              /* extern */
s32 BMemGetLock(void);                              /* extern */
void CdStreamTaskMode1(void);                              /* extern */
void CdStreamTaskMode2(void);                              /* extern */
void *Get_vtable_CdFile(void);                              /* extern */
void CdStreamCallback(void);                                /* extern */
void SetVsyncCallback(s32);                                 /* extern */
extern s32 gCdStreamingEnabled;
u8 *Str_Find(u8*, u8*);                            /* extern */
void CdBuildSearchPattern(void*);                              /* extern */
s32 CdSearchFile(void*, void*);                         /* extern */
void DebugPrintf(s32, void*);                          /* extern */
void *GetCdPathPrefix(void);                              /* extern */
u8 *Str_Copy(u8*, u8*);                            /* extern */
u8 *Str_Concat(u8*, u8*);                            /* extern */
extern u8 gCdFileSuffix[];
extern s32 CdSync(s32, s32*);
extern u8 gCdStatus;
extern u8 gCdLastCommand;
void CdReset(void);                              /* extern */
s32 CdInit(void);                              /* extern */
s32 CdAudioRegsInit(void);                              /* extern */
void CdAckInterruptImpl();                                  /* extern */
extern s32 gCdDebugLevel;
extern void *gCdCommandNames[];
extern void *gCdIntNames[];
extern void *D_80010840;
void CdSyncImpl();                                  /* extern */
void CdSyncResultImpl();                                  /* extern */
extern s32 D_8006D5FC;
extern s32 D_8006D600;
extern s32 D_8006D604;
s32 CdWriteAudioMix(void);                               /* extern */
s32 CdStartDma();                                /* extern */
void func_80024D70(s32, s32);                            /* extern */
void CdReadyImpl();                                  /* extern */
s32 CdReadSyncImpl(s32, s32);                           /* extern */
s32 CdReadSetup(s32, s32, s32);                           /* extern */
extern s8 *gpCdRegIndex;
extern u8 *gpCdRegParam;
extern u8 *gpCdRegAck;
extern u8 *gpCdRegStat;
void func_80024D10(void);                              /* extern */
void SetEventHandler(s32, void (*)());                     /* extern */
extern s32 D_8006D610;
extern s32 D_8006D8DC[];
extern s32 D_8006D924;
extern s32 D_8006D8D0;
extern s32 D_8006D928;
extern s32 D_8006D92C;
extern s32 D_8006D930;
extern s32 D_8006D934;
extern s32 D_8006D8A4;
extern u8 D_8006D8D8;
extern u8 D_8006D8D9;
extern s32 D_8008B3CC;
extern s32 D_8008B3D4;
s32 CdInterruptHandler(void);                                 /* extern */
extern u8 D_8008B9F4[];
extern u8 D_8008B9FC[];
void CdControl(s32,s32 *,s32);                         /* extern */
s32 CdReadSync(s32,s32);                            /* extern */
void CdRead(s32,s32,s32);                         /* extern */
void CdIntToPos(s32,s32 *);                            /* extern */
extern s32 gVtable_ClassD940;
extern s32 gVtable_ClassD9BC;
extern s32 D_8008A8B8;
extern s32 D_8008A8BC;
extern s32 D_8008A8C0;
void SndStopSeq(s16);                              /* extern */
void BMemFree(void*);                                /* extern */
void *GetActiveCdVtable(void);                              /* extern */
s32 func_8003A05C(void);                              /* extern */
s16 SndGetVoiceStatus(s16);                             /* extern */
s32 SndStartChannel(s32);                              /* extern */
s32 SndSetVoiceVolEnv(s16, s16, s16, s16);                    /* extern */
void SndStopVoice(s16);                               /* extern */
void SndStopAllVoices(s32);                               /* extern */
extern s32 gVtable_SoundPlayer;
extern u8 D_8008EA0E;
extern u8 D_8008EA1C;
extern u8 D_8008EA1D;
extern u16 D_8006DAD8[];
s32 SndAllocVoice(s32);                               /* extern */
void SndStartVoice(u8, s32, s32, s32, s32);            /* extern */
extern u8 gNumVoices;
extern s8 gSfxVolume;
extern s16 gCurrentVoice;
extern u8 gVoiceStateTable[];
extern u8 D_8008D98C[];
void SndKeyOff(s32, s16, s16, s32);                  /* extern */
extern s16 D_8008EA22;
s32 SndValidateSeqChannel(s16, s16);                           /* extern */
extern u8 *gSeqChannelTable;
s32 SndVoiceEffect(s16, s32, s16, s16, s32);              /* extern */
extern u8 *D_8006DAD4;
extern u8 gVoiceAttrTable[];
extern u8 gVoiceDirtyFlags[];
void SndSetVoiceVolumeRaw(s16, s16, s16, s16);                 /* extern */
void SndSetVoicePitchRaw(s16, s16, s16, s16);                 /* extern */
extern u8 gSeqSlotStates[];
extern s16 gMaxSeqChannels;
extern s32 D_8008E80C[];
extern s32 D_8008E7A4[];
extern s32 D_8008E850[];
extern u8 D_8008EA0D;
extern u8 D_8008EA12;
extern s32 D_8008E978;
extern s32 D_8008E970;
extern u8 D_8008EA13;
void SndSysInitShutdown(s32);                                 /* extern */
void SndTickInstall(s32);                                 /* extern */
extern s32 D_8006DCA8;
extern s32 D_8006DC94;
extern s32 D_8006DC8C;
extern s32 D_8006DC90;
extern void (*D_8006DC9C)(void);
void EnterCriticalSection(void);                                 /* extern */
void ExitCriticalSection(void);                                 /* extern */
void func_80038FB0();                                  /* extern */
void SndResetAll();                                  /* extern */
extern s32 D_8006DCA0;
extern u8 *gpTimerRegs;
extern s32 *D_8006DCAC;
extern s32 gTimerIntMasks[];
s16 SndKeyOnImpl(void*, s16, s32, s32);                       /* extern */
void SndSubmitCommand(void*);                              /* extern */
extern s32 gSeqDataPtrs[];
void func_80039158(s32);                                 /* extern */
void func_8003918C(s32);                                 /* extern */
void func_800391C8(s32, s32);                            /* extern */
void func_80039228(s32);                                 /* extern */
void func_80036AC8(s32);                                 /* extern */
s16 func_8003904C(s16);                             /* extern */
void SndFindVoiceById(s32);                                /* extern */
extern s32 *gSoundBankTable;
extern s32 gSeqHandles[];
extern u16 gSeqPlayingCount;
void func_80038CD8(s32);                              /* extern */
extern s32 D_80090C1C[];
s32 SndStartSeq(s32, s16);                              /* extern */
void SndSeqCommandImpl(s16, s16);                          /* extern */
s32 SndGetBankEntryField(s32, s32);                              /* extern */
void SndReverbOff(void);                              /* extern */
void SndClearModeFlag(void);                              /* extern */
void SndSetVoiceParamValidated(s32, s32, s32, s32);                   /* extern */
void func_80038D74(s32);                                 /* extern */
extern s16 gReverbDepth;
void SpuWriteCommand(s32 *);                             /* extern */
extern s32 gSpuCmdBlock;
extern s16 D_8008E84C;
void SndStartVoiceFade(s16,s32);                            /* extern */
void func_80038E44(s32);                                 /* extern */
void *New_CdFile(void) {
    void *s0 = BMemAlloc(0x2C);
    if (s0 != 0) {
        (*(void(**)(void *))((char *)Get_vtable_CdFile() + 0x8))(s0);
        return s0;
    }
    return 0;
}
void CdFile__Constructor(void *arg0) {
    (*(void(**)(void *))((char *)Get_vtable_CdFileBase() + 0x8))(arg0);
    *(s32*)((char*)arg0) = (s32)Get_vtable_CdFile();
    *(s16*)((char*)arg0 + 0x28) = 0;
    CdEnsureModeSet();
}
void CdFile__CloseAndRelease(void **arg0) {
    (*(void(**)())(*(void**)(arg0) + 0x74))();
    (*(void(**)())(*(void**)(arg0) + 0x5c))(arg0);
};
void CdFile__Nop272C8(void) {
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdFile__Open);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdFile__Close);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdFile__Seek);
void CdFile__Nop276C8(void) {
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdFile__Read);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdFile__Load);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdFile__DispatchRequest);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdFile__QueueLoadByName);
void CdFile__LockStream(void) {
    CdStreamLock();
    CdStreamStop();
    CdStreamUnlock();
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdFile__CancelRequests);
void *Get_vtable_CdFile(void) {
    return &gVtable_CdFile;
};
void CdEnsureModeSet(void) {
    u8 sp10;
    if (gCdModeInitialized == 0) {
        CdSetDebugLevel(0);
        sp10 = 0x80;
        do {

        } while (CdControlB(0xE, &sp10, 0) == 0);
        gCdModeInitialized = 1;
    }
}
s32 CdIsOpActive(void) {
    return gCdOpActive;
}
s32 CdIsOpIdle(void) {
    return gCdOpIdle;
}
s32 CdGetStreamCmd(void) {
    return gCdStreamCmd;
}
s32 CdGetStreamState(void) {
    return gCdStreamState;
}
s32 CdGetConfig(s32 *arg0) {
    if (arg0 != NULL) {
        *arg0 = D_8008A860;
    }
    return gCdUseFileTable;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdStreamConfigure);
void SetCdFileTable(s32 arg0) {
    gpCdFileTable = arg0;
}
void SetCdFileTableCount(s32 arg0) {
    gCdFileTableCount = arg0;
}
s32 GetCdFileTableCount(void) {
    return gCdFileTableCount;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", BuildCdFileTable);
void CdStreamLock(void) {
    gCdStreamLock = 1;
}
void CdStreamUnlock(void) {
    gCdStreamLock = 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdStreamCallback);
void CdStreamStart(void) {
    CdStreamLock();
    if (D_8008A89C == 0) {
        if (gCdCallbackEnabled != 0) {
            SetVsyncCallback((s32)CdStreamCallback);
        }
        D_8008A89C = 1;
    }
    gCdStreamingEnabled = 1;
    CdStreamUnlock();
}
void CdStreamStop(void) {
    CdStreamLock();
    if ((gCdStreamMode == 0) && (D_8008A89C != 0)) {
        if (gCdCallbackEnabled != 0) {
            SetVsyncCallback(0);
        }
        D_8008A89C = 0;
        gCdStreamingEnabled = 0;
    }
    CdStreamUnlock();
}
void CdStreamPause(void) {
    CdStreamLock();
    gCdStreamingEnabled = 0;
    CdStreamUnlock();
}
void CdEnqueueRequest(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    void *temp_v0;
    temp_v0 = CdAllocRequest();
    *(s32*)((char*)(temp_v0) + 0x8) = arg2;
    *(s32*)((char*)(temp_v0) + 0x14) = arg3;
    *(s32*)((char*)(temp_v0) + 0xc) = arg0;
    *(s32*)((char*)(temp_v0) + 0x10) = arg1;
    *(s32*)((char*)(temp_v0) + 0x18) = arg4;
    *(s32*)((char*)(arg0) + 0x24) = 0;
    *(u16*)((char*)(arg0) + 0x22) = *(u16*)((char*)(arg0) + 0x22) + 1;
    CdStreamStart();
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdAllocRequest);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdFreeRequest);
u8 *FindCdFileEntry(u8 *arg0) {
    u8 *s0 = (u8*)gpCdFileTable;
    s32 s1 = 0;
    CdStreamLock();
    while (Str_Find(s0, arg0) == NULL) {
        s1++;
        if (s1 >= gCdFileTableCount) {
            return NULL;
        }
        s0 += 0x1C;
    }
    CdStreamUnlock();
    return s0;
}
s32 FindCdFileIndex(u8 *arg0) {
    u8 *s1 = (u8*)gpCdFileTable;
    s32 s0 = 0;
    CdStreamLock();
    while (Str_Find(s1, arg0) == NULL) {
        s0++;
        if (s0 >= gCdFileTableCount) {
            return -1;
        }
        s1 += 0x1C;
    }
    CdStreamUnlock();
    return s0;
}
void *GetCdFileEntry(s32 arg0) {
    s32 base = gpCdFileTable;
    CdStreamLock();
    base += arg0 * 0x1C;
    CdStreamUnlock();
    return (void *)base;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdStreamTaskMode1);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdStreamTaskMode2);
void CdBeginOp(s32 arg0, s32 arg1) {
    gCdOpActive = 1;
    gCdStreamCmd = arg0;
    gCdStreamState = arg1;
    gCdOpIdle = 0;
    *(s32*)gpCdRequestQueue = 1;
}
void CdEndOp(void) {
    gCdStreamCmd = 0;
    gCdStreamState = 0;
    gCdStreamMode = 0;
    gCdOpIdle = 1;
    gCdStreamRetryCount = 0;
    gCdOpActive = 0;
}
void CdSetStreamState(s32 arg0) {
    gCdStreamState = arg0;
    gCdStreamRetryCount = 0;
}
void CdFile__BaseCtor(void *arg0) {
    (*(void(**)(void *))((char *)Get_vtable_CdFileBase() + 0x8))(arg0);
    *(s32 *)((char *)arg0) = Get_vtable_CdFile();
    *(s32 *)((char *)arg0 + 0xc) = 0;
}
void CdFile__Destructor(void *arg0) {
    (*(void(**)(void *))((char *)Get_vtable_CdFileBase() + 0xC))(arg0);
}
void func_80028918(void) {
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdFile__LocateOnDisc);
void *CdBuildSearchPattern(u8 *arg0, void *arg1) {
    arg0[0] = 0x5C;
    Str_Copy(arg0 + 1, GetCdPathPrefix());
    Str_Concat(arg0, arg1);
    Str_Concat(arg0, gCdFileSuffix);
    return arg0;
}
void CdFile__InvalidateLoc(void *arg0) {
    if (*(s32*)((char*)(arg0) + 0xc) != 0) {
        *(s32*)((char*)(arg0) + 0xc) = 0;
    }
}
s32 CdFile__GetAlignedSize(void *arg0) {
    if (*(s32*)((s32)arg0 + 0xC) != 0) {
        return ((u32)*(s32*)((s32)arg0 + 0x1C) >> 11) + 1 << 11;
    }
    return 0;
}
void func_80028A7C(void) {
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdFile__ReadSync);
void func_80028B64(void) {
}
s32 CdGetCallbackEnabled(void) {
    return gCdCallbackEnabled;
}
u8 *Str_Copy(u8 *arg0, u8 *arg1) {
    u8 *dst;
    u8 b;
    u8 *result = 0;
    if (arg0 != 0) {
        dst = arg0;
        if (arg1 != 0) {
            b = *arg1++;
            arg0 = dst + 1;
            *dst = b;
            if (b != 0) {
                do {
                    b = *arg1++;
                    *arg0++ = b;
                } while (b != 0);
            }
            result = dst;
        }
    }
    return result;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", Str_Find);
u8 CdGetStatus(void) {
    return gCdStatus;
};
u8 CdGetLastCommand(void) {
    return gCdLastCommand;
};
s32 CdDriverInit(s32 arg0) {
    if (arg0 == 2) {
        CdReset();
        return 1;
    }
    if (CdInit() != 0) {
        return 0;
    }
    if (arg0 == 1) {
        if (CdAudioRegsInit() != 0) {
            return 0;
        }
    }
    return 1;
}
void CdAckInterrupt(void) {
    CdAckInterruptImpl();
}
s32 CdSetDebugLevel(s32 arg0) {
    s32 temp_v0;

    temp_v0 = gCdDebugLevel;
    gCdDebugLevel = arg0;
    return temp_v0;
};
void *CdGetCommandName(s32 arg0) {
    u8 idx = arg0;
    if (idx >= 0x1C) {
        return &D_80010840;
    }
    return gCdCommandNames[idx];
}
void *CdGetIntName(s32 arg0) {
    u8 idx = arg0;
    if (idx >= 7) {
        return &D_80010840;
    }
    return gCdIntNames[idx];
}
void CdSync(void) {
    CdSyncImpl();
}
void CdSyncResult(void) {
    CdSyncResultImpl();
}
s32 CdSetParamOverride(s32 arg0) {
    s32 temp_v0;

    temp_v0 = D_8006D5FC;
    D_8006D5FC = arg0;
    return temp_v0;
};
s32 CdSetFlag600(s32 arg0) {
    s32 temp_v0;

    temp_v0 = D_8006D600;
    D_8006D600 = arg0;
    return temp_v0;
};
s32 CdSetFlag604(s32 arg0) {
    s32 temp_v0;

    temp_v0 = D_8006D604;
    D_8006D604 = arg0;
    return temp_v0;
};
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdControl);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdControlF);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdControlB);
s32 CdSetAudioMix(void) {
    CdWriteAudioMix();
    return 1;
}
s32 CdTryStartDma(void) {
    return CdStartDma() == 0;
}
void CdRegisterHandler3(s32 arg0) {
    func_80024D70(3, arg0);
}
void CdReady(void) {
    CdReadyImpl();
}
void CdReadSync(s32 arg0, s32 arg1) {
    CdReadSyncImpl(arg0, arg1);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdRead);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdIntToPos);
s32 CdPosToInt(void *arg0) {
    u8 temp_a1;
    u8 temp_a2;
    u8 temp_v1;

    temp_v1 = *(s32*)((char*)(arg0));
    temp_a2 = *(s32*)((char*)(arg0) + 0x1);
    temp_a1 = *(s32*)((char*)(arg0) + 0x2);
    return (((((((temp_v1 >> 4) * 0xA) + (temp_v1 & 0xF)) * 0x3C) + (((temp_a2 >> 4) * 0xA) + (temp_a2 & 0xF))) * 0x4B) + (((temp_a1 >> 4) * 0xA) + (temp_a1 & 0xF))) - 0x96;
};
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdInterruptHandler);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdSyncImpl);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdSyncResultImpl);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdCommand);
s32 CdWriteAudioMix(u8 *a0) {
    *gpCdRegIndex = 2;
    *gpCdRegAck = a0[0];
    *gpCdRegStat = a0[1];
    *gpCdRegIndex = 3;
    *gpCdRegParam = a0[2];
    *gpCdRegAck = a0[3];
    *gpCdRegStat = 0x20;
    return 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdFlushCommand);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdAckInterruptImpl);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdAudioRegsInit);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdReset);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdInit);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdRecover);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdReadSetup);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdReadSyncImpl);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdReadyImpl);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdStartDma);
void CdSetDmaFlag(s32 arg0) {
    D_8006D8A4 = arg0;
};
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdDmaInterruptHandler);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdReadNextSector);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdSearchFile);
s32 CdFileNameMatch(void *arg0, s32 arg1) {
    return Mem_Compare(arg0, arg1, 0xC) == 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", CdDirSeek);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", func_8002BC40);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", func_8002BCEC);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", func_8002BFA8);
void Mem_Copy(u8 *arg0, u8 *arg1, s32 arg2) {
    s32 i;
    for (i = arg2 - 1; i != -1; i--) {
        *arg0++ = *arg1++;
    }
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", Str_Compare);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", Mem_Compare);
void *New_ClassD940(void *arg0) {
    void *s0 = BMemAlloc(0x34);

    if (s0 != 0) {
        (*(void(**)(void*, void *))((char *)Get_vtable_ClassD940() + 0x8))(s0, arg0);
        return s0;
    }
    return 0;
}
void ClassD940__Constructor(void *arg0, s32 arg1) {
    (*(void(**)(void *))((char *)GetActiveCdVtable() + 0x8))(arg0);
    *(s32 *)((char *)arg0) = (s32)Get_vtable_ClassD940();
    *(s32 *)((char *)arg0 + 0x2c) = 0;
    *(s32 *)((char *)arg0 + 0x30) = 0;
    if (arg1 != 0) {
        (*(void(**)(void *, s32))((char *)*(void **)arg0 + 0x6c))(arg0, arg1);
    }
}
void ClassD940__Destructor(void *arg0) {
    (*(void(**)(void *))((char *)GetActiveCdVtable() + 0xC))(arg0);
}
void ClassD940__Invalidate(void *arg0) {
    *(s32 *)((char *)arg0 + 0x30) = 1;
    (*(void(**)(void *))((char *)GetActiveCdVtable() + 0x64))(arg0);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", ClassD940__AddEntry);
void *Get_vtable_ClassD940(void) {
    return &gVtable_ClassD940;
};
s32 func_8002C3B8(void) {
    return 0;
};
void func_8002C3C0(void) {
}
void func_8002C3C8(void) {
}
void func_8002C3D0(void) {
    __asm__ volatile("addiu $sp, $sp, -0x40
	addiu $sp, $sp, 0x40");
}
void func_8002C3E0(void) {
    __asm__ volatile("addiu $sp, $sp, -0x40
	addiu $sp, $sp, 0x40");
}
void func_8002C3F0(void) {
}
void func_8002C3F8(void) {
}
void func_8002C400(void) {
}
s32 func_8002C408(void) {
    return 0;
};
void func_8002C410(void) {
}
void func_8002C418(void) {
}
void func_8002C420(void) {
}
void func_8002C428(void) {
}
void func_8002C430(void) {
}
void *Get_vtable_ClassD9BC(void) {
    return &gVtable_ClassD9BC;
};
s32 CdGetCallback(s32 *arg0) {
    if (arg0 != NULL) {
        *arg0 = gCdCallbackArg;
    }
    return gCdCallbackFn;
}
s32 CdSetCallback(s32 arg0, s32 arg1) {
    gCdCallbackFn = arg0;
    gCdCallbackArg = arg1;
    return 1;
}
s32 func_8002C478(void) {
    return 0;
};
void *New_SoundPlayer(void *arg0) {
    void *s0 = BMemAlloc(0x64);

    if (s0 != 0) {
        (*(void(**)(void*, void *))((char *)Get_vtable_SoundPlayer() + 0x8))(s0, arg0);
        return s0;
    }
    return 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SoundPlayer__Constructor);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SoundPlayer__Release);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SoundPlayer__Task);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SoundPlayer__StopChannel);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SoundPlayer__Update);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SoundPlayer__SetChannelVol);
s32 SoundPlayer__StopVoice(s32 arg0, s32 arg1) {
    if (arg1 < 0x18) {
        SndStopVoice((s16)arg1);
    } else {
        SndStopAllVoices(0);
    }
    return -1;
}
void SoundPlayer__Pause(void *arg0) {
    if (*(s16*)((char*)(arg0) + 0x56) == 0) {
        SndSetMute(1);
        *(s16*)((char*)(arg0) + 0x56) = 1;
    }
}
void SoundPlayer__Resume(void *arg0) {
    if (*(s16*)((char*)(arg0) + 0x56) != 0) {
        SndSetMute(0);
        *(s16*)((char*)(arg0) + 0x56) = 0;
    }
}
void func_8002CBDC(void) {
}
void func_8002CBE4(void) {
}
void func_8002CBEC(void) {
}
void SoundPlayer__SetField60(void *arg0, s32 arg1) {
    *(s32*)((char*)(arg0) + 0x60) = (s32) ((arg1 * 0xC) - 0x18);
};
void *Get_vtable_SoundPlayer(void) {
    return &gVtable_SoundPlayer;
};
s32 GetSoundPlayerCount(void) {
    return gSoundPlayerCount;
}
s32 func_8002CC28(void) {
    return D_8008A8CC;
}
s32 SlotAlloc__Init(void *arg0, s32 *arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 i;
    s32 *p;
    s32 neg;
    if (arg1[0] != 0) {
        return 0;
    }
    arg1[0] = arg2;
    arg1[2] = arg3;
    arg1[3] = arg4;
    p = &arg1[6];
    neg = -1;
    for (i = 2; i >= 0; i--) {
        p[0] = neg;
        p += 5;
    }
    arg1[1] = 0;
    arg1[5] = 0xA;
    return 1;
}
void SlotAlloc__Release(void **arg0, s32 *arg1) {
    s32 *var_s0 = (s32 *)((char *)arg1 + 0x18);
    s32 var_s1 = 0;
    do {
        s32 temp_a1 = *var_s0;
        var_s1++;
        if (temp_a1 >= 0) {
            *var_s0 = (*(s32(*)(void *, s32))*(void **)((char *)*(void **)arg0 + 0x84))(arg0, temp_a1);
        }
        var_s0 = (s32 *)((char *)var_s0 + 0x14);
    } while (var_s1 < 3);
    *arg1 = 0;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SlotAlloc__Update);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndAllocVoice);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndCalcVoiceVolume);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndUpdateVoiceState);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndVoiceKeyOn);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndStartVoice);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndVoiceTick);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndKeyOffVoice);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndStopVoiceEx);
void func_8002E2F8(void) {
}
void func_8002E300(void) {
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSetVoiceVolumeRaw);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndApplyVoiceVolume);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSetVoicePitchRaw);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndApplyVoicePitch);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndDriverInit);
void PlaySfx(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s16 temp_v0;

    gSfxVolume = 0x7F;
    temp_v0 = SndAllocVoice(0xFF) & 0xFF;
    gCurrentVoice = temp_v0;
    if (temp_v0 < (s32) gNumVoices) {
        SndStartVoice((u8) gCurrentVoice, arg0 & 0xFFFF, arg1 & 0xFFFF, arg2 & 0xFFFF, arg3 & 0xFFFF);
    }
};
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndReleaseIdleVoices);
void PlaySfxDefault(s32 arg0, s32 arg1) {
    s16 temp_v0;

    gSfxVolume = 0x7F;
    temp_v0 = SndAllocVoice(0xFF) & 0xFF;
    gCurrentVoice = temp_v0;
    if (temp_v0 < (s32) gNumVoices) {
        SndStartVoice((u8) gCurrentVoice, arg0 & 0xFFFF, arg1 & 0xFFFF, 0x80FF, 0x5FC8);
    }
};
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndVoiceEffect);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSetVoiceParamValidated);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndFlushVoices);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndNoteOn);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndKeyOff);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndNoteOnEx);
void SndPlayNote(s16 arg0, s16 arg1, s32 arg2) {
    SndKeyOff(0x21, arg0, arg1, arg2 & 0xFFFF);
}
void func_800303FC(void) {
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndGetBankEntryPtr);
s16 SndGetBankEntryParams(s32 a0, s16 *a1, s16 *a2) {
    s32 idx = a0 & 0xFF;
    s32 base = *(s32*)((s32)&gSoundBankTable + idx * 4);
    s16 *p = &D_8008EA22;
    s32 sub = (a0 & 0xFF00) >> 8;
    s32 entry = sub * 172 + base;
    *p = a0;
    *a1 = *(u16*)(entry + 0x74);
    *a2 = *(u16*)(entry + 0x76);
    return *p;
}
s16 SndGetBankEntryParam74(s32 a0) {
    s32 idx = a0 & 0xFF;
    s32 sub = (a0 & 0xFF00) >> 8;
    s32 base = *(s32*)((s32)&gSoundBankTable + idx * 4);
    D_8008EA22 = idx;
    return *(s16*)(base + sub * 172 + 0x74);
}
s16 SndGetBankEntryParam76(s32 a0) {
    s32 idx = a0 & 0xFF;
    s32 base = *(s32*)((s32)&gSoundBankTable + idx * 4);
    s32 sub = (a0 & 0xFF00) >> 8;
    D_8008EA22 = a0;
    return *(s16*)(base + sub * 172 + 0x76);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndFindVoiceById);
s32 SndSetChannelField1(s16 arg0, s16 arg1, s32 arg2) {
    s32 result = SndValidateSeqChannel(arg0, arg1);
    if (result != 0) {
        return -1;
    }
    gSeqChannelTable[arg1 * 16 + 1] = arg2;
    return gSeqChannelTable[arg1 * 16 + 1];
}
s32 SndGetChannelField1(s16 arg0, s16 arg1) {
    s32 result = SndValidateSeqChannel(arg0, arg1);
    if (result != 0) {
        return -1;
    }
    return gSeqChannelTable[arg1 * 16 + 1];
}
s32 SndSetChannelField4(s16 arg0, s16 arg1, s32 arg2) {
    s32 result = SndValidateSeqChannel(arg0, arg1);
    if (result != 0) {
        return -1;
    }
    gSeqChannelTable[arg1 * 16 + 4] = arg2;
    return gSeqChannelTable[arg1 * 16 + 4];
}
s32 SndGetChannelField4_(s16 arg0, s16 arg1) {
    s32 result = SndValidateSeqChannel(arg0, arg1);
    if (result != 0) {
        return -1;
    }
    return gSeqChannelTable[arg1 * 16 + 4];
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndChannelOp);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndStartChannel);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndVoiceMultiOp);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndStopChannel);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndStopVoice);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndVoiceControl);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndVoiceOffEx);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", func_80031BA4);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", func_80031C98);
s32 SndSetVoiceAttr(s16 arg0, s16 arg1, s16 arg2) {
    if ((u16)arg0 < 0x18) {
        *(s16*)(gVoiceAttrTable + arg0 * 16 + 2) = arg2;
        gVoiceDirtyFlags[arg0] |= 3;
        *(s16*)(gVoiceAttrTable + arg0 * 16) = arg1;
        return 0;
    }
    return -1;
}
s32 SndGetVoiceVolume(s16 arg0, s16 *arg1, s16 *arg2) {
    if ((u16)arg0 < 0x18) {
        u8 *entry = D_8006DAD4 + (arg0 << 4);
        s16 val1 = *(s16*)entry;
        s16 val2 = *(s16*)(entry + 2);
        *arg1 = val1 / 129;
        *arg2 = val2 / 129;
        return 0;
    }
    return -1;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSetVoiceVolume129);
s32 SndSetVoiceVolEnv(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    if ((u16)arg0 < 0x18) {
        SndSetVoiceVolumeRaw(arg0, arg1, arg2, arg3);
        return 0;
    }
    return -1;
}
s32 SndSetVoicePitchEnv(s16 arg0, s16 arg1, s16 arg2, s16 arg3) {
    if ((u16)arg0 < 0x18) {
        SndSetVoicePitchRaw(arg0, arg1, arg2, arg3);
        return 0;
    }
    return -1;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndStopAllVoices);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndValidateSeqChannel);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSysInitShutdown);
void SndSysInit(void) {
    SndSysInitShutdown(0);
}
void SndSysQuit(void) {
    SndSysInitShutdown(1);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSetBankRange);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSetTickMode);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndTickInstall);
void SndTickEnable(void) {
    SndTickInstall(1);
}
void SndTickDisable(void) {
    SndTickInstall(0);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndTickHandler);
void SndUpdateDefault(void) {
    func_80038FB0();
}
void SndReset(void) {
    if (D_8006DC9C != NULL) {
        D_8006DC9C();
    }
    SndResetAll();
}
void SndToggleUpdate(void) {
    if (D_8006DCA0 == 0) {
        D_8006DCA0 = 1;
        return;
    }
    D_8006DCA0 = 0;
    SndResetAll();
};
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", TimerSetMode);
u16 TimerGetValue(s32 arg0) {
    s32 idx = arg0 & 0xFFFF;
    if (idx >= 3) {
        return 0;
    }
    return *(volatile u16 *)(gpTimerRegs + idx * 0x10);
}
s32 TimerEnableInterrupt(s32 arg0) {
    s32 idx = arg0 & 0xFFFF;
    *(volatile s32 *)(D_8006DCAC + 1) |= gTimerIntMasks[idx];
    return idx < 3;
}
s32 TimerDisableInterrupt(s32 arg0) {
    D_8006DCAC[1] &= ~gTimerIntMasks[arg0 & 0xFFFF];
    return 1;
}
s32 TimerReset(s32 arg0) {
    s32 idx = arg0 & 0xFFFF;
    if (idx >= 3) {
        return 0;
    }
    *(volatile u16 *)(gpTimerRegs + idx * 0x10) = 0;
    return 1;
}
s16 SndKeyOn(void *arg0, s16 arg1) {
    return SndKeyOnImpl(arg0, arg1, 0, 0);
}
s16 SndKeyOnWait(void *arg0, s16 arg1, s32 arg2) {
    return SndKeyOnImpl(arg0, arg1, 1, arg2);
}
s16 SndKeyOnWait2(void *arg0, s16 arg1, s32 arg2) {
    return SndKeyOnImpl(arg0, arg1, 1, arg2);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndKeyOnImpl);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndGetSlotState);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSetSlotParam);
typedef struct { s32 cmd; s16 x; s16 y; u8 pad[0x20]; } DrawCmd334;
void SndSetMasterVolume(s16 arg0, s16 arg1) {
    DrawCmd334 cmd;
    cmd.cmd = 3;
    cmd.x = arg0 * 0x81;
    cmd.y = arg1 * 0x81;
    SndSubmitCommand(&cmd);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSetSlotVolume);
s16 SndStartSeq(s32 arg0, s16 arg1) {
    if ((u16)arg1 < 0x11 && gSeqSlotStates[(s16)arg1] == 2) {
        s16 idx = (s16)arg1;
        s32 val = gSeqHandles[idx];
        func_80039158(0);
        func_8003918C(val);
        func_800391C8(arg0, gSeqDataPtrs[idx]);
        gSeqSlotStates[idx] = 1;
        return idx;
    }
    func_80039228(0);
    return -1;
}
void SndSetMute(s32 arg0) {
    s32 temp_a0;

    temp_a0 = arg0 & 0xFF;
    if (temp_a0 != 0) {
        if (temp_a0 == 1) {
            func_80036AC8(1);
        }
    } else {
        func_80036AC8(0);
    }
}
s16 SndGetVoiceStatus(s16 arg0) {
    return func_8003904C(arg0);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndResetAll);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndResetBankEntry);
void SndClearBankEntryFlag(s16 a0, s16 a1) {
    s32 idx = (a1 * 11 * 4 - a1) * 4;
    s32 p = *(((s32*)&gSoundBankTable) + (s32)a0);

    *(volatile s8*)(idx + p + 0x2B) = 0;
    p = *(((s32*)&gSoundBankTable) + (s32)a0);
    *(s32*)(idx + p + 0x90) &= ~0x100;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", func_80033AB0);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndPrepBankEntry);
void SndSetBankEntryFlag(s16 a0, s16 a1) {
    s32 idx = (a1 * 11 * 4 - a1) * 4;
    s32 p = *(((s32*)&gSoundBankTable) + (s32)a0);
    s32 one = 1;
    *(s8*)(idx + p + 0x2B) = one;
    p = *(((s32*)&gSoundBankTable) + (s32)a0);
    *(s32*)(idx + p + 0x90) &= ~8;
}
void SndStopSeq(s16 arg0) {
    if ((u16)arg0 < 0x10) {
        if (gSeqSlotStates[arg0] == 1) {
            func_80038CD8(gSeqHandles[arg0]);
            gSeqSlotStates[arg0] = 0;
            gSeqPlayingCount--;
        }
    }
}
s16 SndAutoPlay(void *arg0) {
    s16 result = SndKeyOn(arg0, -1);
    s16 ret = result;
    if (result != -1) {
        ret = SndStartSeq(D_80090C1C[result], result);
    }
    return ret;
}
void SndExecSeqCommand(s16 arg0, s16 arg1) {
    SndSeqCommandImpl(arg0, arg1);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSeqCommandImpl);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSeqOpcodeDispatch);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSeqOp_Note);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", func_80034614);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSeqOp_Control);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSeqOp_Volume);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSeqOp_Pan);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSeqOp_Expression);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSeqOp_ReverbOff);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", func_80034E5C);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", func_80034F90);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", func_800350D8);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", func_80035154);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSeqOp_VoiceAdsr);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSeqSetVoiceAdsr);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSeqOp_VoiceParam);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSeqOp_Fade);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndGetBankEntryField);
void SndDecodeAdsr(u32 a0, u32 a1, void *a2) {
    *(u16*)((char*)a2 + 0xA) = a0 & 0x8000;
    *(u16*)((char*)a2 + 0xC) = a1 & 0x8000;
    *(u16*)((char*)a2 + 0x10) = a1 & 0x4000;
    *(u16*)((char*)a2 + 0xE) = a1 & 0x20;
    *(u16*)((char*)a2 + 0x0) = (u16)a0 >> 8 & 0x7F;
    *(u16*)((char*)a2 + 0x2) = (u16)a0 >> 4 & 0xF;
    *(u16*)((char*)a2 + 0x4) = a0 & 0xF;
    *(u16*)((char*)a2 + 0x6) = (a1 >> 6) & 0x7F;
    *(u16*)((char*)a2 + 0x8) = a1 & 0x1F;
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndEncodeAdsr);
void SndReverbOn(void) {
    func_80038D74(1);
}
void SndReverbOff(void) {
    func_80038D74(0);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndSetReverbMode);
s16 SndGetReverbDepth(void) {
    return gReverbDepth;
};
void SndSetMainVolume(s16 arg0, s16 arg1) {
    s32 *ptr = &gSpuCmdBlock;
    *ptr = 6;
    gMainVolumeL = (arg0 * 0x7FFF) / 127;
    gMainVolumeR = (arg1 * 0x7FFF) / 127;
    SpuWriteCommand(ptr);
}
void SndSetSpuCmd10(s16 arg0) {
    s32 *ptr = &gSpuCmdBlock;
    *ptr = 0x10;
    D_8008E268 = (s32) arg0;
    SpuWriteCommand(ptr);
}
void SndSetSpuCmd8(s16 arg0) {
    s32 *ptr = &gSpuCmdBlock;
    *ptr = 8;
    D_8008E264 = (s32) arg0;
    SpuWriteCommand(ptr);
}
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", func_80036230);
void SndSetModeFlag2(void) {
    D_8008E84C = 2;
};
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndGetBankEntryAddr);
void SndClearModeFlag(void) {
    D_8008E84C = 0;
};
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndPrepBankEntry2);
INCLUDE_ASM("asm/lsdde/nonmatchings/179D8", SndStartVoiceFade);
void SndCancelVoiceFade(s16 arg0) {
    SndStartVoiceFade(arg0, 0);
}
void SndFadeVoiceTo(s16 arg0, s16 arg1) {
    SndStartVoiceFade(arg0, arg1);
}
void SndFlushQueue(void) {
    func_80038E44(1);
}
