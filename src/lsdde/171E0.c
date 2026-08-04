#include "common.h"

extern s32 gVtable_CdFileBase;
extern s32 gCdDriverMode;
extern s32 gCdPathPrefix;
extern s32 gVtable_ClassD3C8;
extern s32 D_8006D4AC;
extern s32 D_8008A850;

extern s32 gVtable_CdFileBase;
extern s32 gCdDriverMode;
extern s32 gCdPathPrefix;

extern s32 gVtable_ClassD3C8;

void *Get_vtable_ClassD3C8(void) {
    return &gVtable_ClassD3C8;
};

void *Get_vtable_BasicClass(void);                              /* extern */
s32 BMemFree(s32);                                /* extern */

INCLUDE_ASM("asm/lsdde/nonmatchings/171E0", func_800269F0);

void CdFileBase__Constructor(void *arg0) {
    (*(void (**)(void *))((char *)Get_vtable_BasicClass() + 0x8))(arg0);
    *(s32*)((char*)arg0) = (s32)Get_vtable_CdFileBase();
    *(s32*)((char*)arg0 + 0xC) = 0;
    *(s32*)((char*)arg0 + 0x10) = 0;
    *(s32*)((char*)arg0 + 0x14) = 0;
    *(s16*)((char*)arg0 + 0x20) = 0;
    *(s16*)((char*)arg0 + 0x22) = 0;
    *(s32*)((char*)arg0 + 0x24) = 0;
    *(s16*)((char*)arg0 + 0x28) = 0;
    *(s16*)((char*)arg0 + 0x2A) = 0;
}

void func_80026AB4(void **arg0) {
    (*(void(**)())(*(void**)(arg0) + 0x48))();
    (*(void(**)())(*(void**)(arg0) + 0x5c))(arg0);
};

void CdFileBase__AllocBuffer(void *arg0, s32 arg1) {
    s32 temp_s3;
    s32 temp_v0;
    s32 temp_v0_2;

    if (*(s32*)((char*)(arg0) + 0x10) == 0) {
        temp_s3 = *(s32*)((char*)(arg0) + 0xc);
        *(s32*)((char*)(arg0) + 0xc) = 0;
        (*(void(**)(void*, s32, s32, s32))(*(void**)arg0 + 0x44))(arg0, arg1, 1, 0);
        temp_v0 = (*(s32(**)(void*, s32, s32))(*(void**)arg0 + 0x4c))(arg0, 0, 2);
        temp_v0_2 = BMemAlloc(temp_v0);
        if (temp_v0_2 != 0) {
            (*(void(**)(void*, s32, s32))(*(void**)arg0 + 0x4c))(arg0, 0, 0);
            (*(void(**)(void*, s32, s32))(*(void**)arg0 + 0x54))(arg0, temp_v0_2, temp_v0);
            (*(void(**)(void*))(*(void**)arg0 + 0x48))(arg0);
            *(s32*)((char*)(arg0) + 0x10) = temp_v0_2;
            *(s32*)((char*)(arg0) + 0x14) = temp_v0;
            *(s32*)((char*)(arg0) + 0xc) = temp_s3;
            return;
        }
        BMemFree(0);
        (*(void(**)(void*))(*(void**)arg0 + 0x48))(arg0);
    }
}

void CdFileBase__FreeBuffer(void *arg0) {
    void *s0 = arg0;
    s32 a0 = *(s32*)((char*)s0 + 0x10);
    if ((a0 != 0) && (*(s32*)((char*)s0 + 0x14) != 0) && (*(u16*)((char*)s0 + 0x20) == 0)) {
        BMemFree(a0);
        *(s32*)((char*)s0 + 0x10) = 0;
    }
}

void func_80026C80(void) {
}

void CdFileBase__SetFlag24(void *arg0) {
    *(s32*)((char*)(arg0) + 0x24) = (s32) (*(s32*)((char*)(arg0) + 0x24) | 1);
};

extern s32 gVtable_CdFileBase;

void *Get_vtable_CdFileBase(void) {
    return &gVtable_CdFileBase;
};

void Get_vtable_CdFile();                                  /* extern */
void Get_vtable_ClassD9BC();                                  /* extern */
void GetActiveCdVtable(void) {
    if (gCdDriverMode != 0x23) {
        Get_vtable_CdFile();
        return;
    }
    Get_vtable_ClassD9BC();
}

void *InitTriple(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    ((s32 *)arg0)[0] = arg1;
    ((s32 *)arg0)[1] = arg2;
    ((s32 *)arg0)[2] = arg3;
    return arg0;
}

extern s32 D_8006D4AC;
typedef void* (*FuncPtr)(void*);

INCLUDE_ASM("asm/lsdde/nonmatchings/171E0", func_80026CFC);

void func_80026D88(void *arg0, void *arg1) {
    *(s32*)((char*)(arg0) + 0x40) = (s32) *(s32*)((char*)(arg1) + 0x40);
    *(s32*)((char*)(arg0) + 0x44) = (s32) *(s32*)((char*)(arg1) + 0x44);
    *(s32*)((char*)(arg0) + 0x48) = (s32) *(s32*)((char*)(arg1) + 0x48);
    *(s32*)((char*)(arg0) + 0x4c) = (s32) *(s32*)((char*)(arg1) + 0x4c);
    *(s32*)((char*)(arg0) + 0x50) = (s32) *(s32*)((char*)(arg1) + 0x50);
    *(s32*)((char*)(arg0) + 0x54) = (s32) *(s32*)((char*)(arg1) + 0x54);
    *(s32*)((char*)(arg0) + 0x58) = (s32) *(s32*)((char*)(arg1) + 0x58);
    *(s32*)((char*)(arg0) + 0x68) = (s32) *(s32*)((char*)(arg1) + 0x68);
    *(s32*)((char*)(arg0) + 0x6c) = (s32) *(s32*)((char*)(arg1) + 0x6c);
    *(s32*)((char*)(arg0) + 0x70) = (s32) *(s32*)((char*)(arg1) + 0x70);
    *(s32*)((char*)(arg0) + 0x74) = (s32) *(s32*)((char*)(arg1) + 0x74);
};

void CdStreamLock();                                  /* extern */
void CdDrvLockStream(void) {
    if (gCdDriverMode == 0x13) {
        CdStreamLock();
    }
}

void CdStreamUnlock();                                  /* extern */
void CdDrvUnlockStream(void) {
    if (gCdDriverMode == 0x13) {
        CdStreamUnlock();
    }
}

s32 CdIsOpActive();                                  /* extern */
s32 CdDrvIsOpActive(void) {
    if (gCdDriverMode == 0x13) {
        return CdIsOpActive();
    }
    return 0;
}

s32 CdIsOpIdle();                                  /* extern */
s32 CdDrvIsOpIdle(void) {
    if (gCdDriverMode == 0x13) {
        return CdIsOpIdle();
    }
    return 1;
}

s32 CdGetStreamCmd();                                  /* extern */
s32 CdDrvGetStreamCmd(void) {
    if (gCdDriverMode == 0x13) {
        return CdGetStreamCmd();
    }
    return 0;
}

s32 CdGetStreamState();                                  /* extern */
s32 CdDrvGetStreamState(void) {
    if (gCdDriverMode == 0x13) {
        return CdGetStreamState();
    }
    return 0;
}

s32 CdStreamConfigure(s32,s32,s32);                       /* extern */
s32 CdSetCallback(s32,s32,s32);                       /* extern */
void CdDrvWaitReady(s32 arg0, s32 arg1, s32 arg2) {
    s32 (*var_s0)(s32,s32,s32);

    var_s0 = CdSetCallback;
    if (gCdDriverMode == 0x13) {
        var_s0 = CdStreamConfigure;
    }
    do {

    } while (var_s0(arg0, arg1, arg2) == 0);
}

void CdDrvStopStream(void) {
    if (gCdDriverMode != 0x13) {
        CdGetCallback();
        return;
    }
    CdGetConfig();
}

void CdGetCallbackEnabled();                                  /* extern */
void func_8002C478();                                  /* extern */
void CdDrvGetCallbackEnabled(void) {
    if (gCdDriverMode != 0x13) {
        func_8002C478();
        return;
    }
    CdGetCallbackEnabled();
}

extern s32 D_8008A850;
void SetCdFileTable(s32);                                /* extern */
s32 GetCdFileTableCount(void);                                /* extern */
void SetCdFileTableCount(s32);                                /* extern */
void BuildCdFileTable(s32, s32);                           /* extern */

INCLUDE_ASM("asm/lsdde/nonmatchings/171E0", func_80027024);

void SetCdPathPrefix(s32 arg0) {
    gCdPathPrefix = arg0;
}

s32 GetCdPathPrefix(void) {
    return gCdPathPrefix;
}

MoodGraphPoint *Str_Concat3(MoodGraphPoint *arg0, s32 arg1, s32 arg2, s32 arg3) {
    arg0->axis.dynamic = 0;
    if (arg2 != 0) {
        Str_Concat(arg0, arg2);
    }
    Str_Concat(arg0, arg1);
    Str_Concat(arg0, arg3);
    return arg0;
}

s32 func_80013348(u8*);                              /* extern */

INCLUDE_ASM("asm/lsdde/nonmatchings/171E0", Str_Concat);
