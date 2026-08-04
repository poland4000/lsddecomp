#include "common.h"

void *New_SceneMgr(void *);    /* extern */
void EarlyInit(void);      /* extern */
void func_80012768(s32);       /* extern */
void BMemSetPoolSelect(s32);       /* extern */
s32  func_800206E0(void);      /* extern */
s32  New_Pad(s32, s32);  /* extern */
s32  BMemPMgrInit(s32, s32);   /* extern */
extern s32 gSceneMgrConfig;
extern s32 gpBMemHeap;
extern s32 gpSceneMgr;
void GameMain(void) {
    s32 a;
    s32 s0;
    s32 a2;

    EarlyInit();
    func_80012768(2);
    a = BMemPMgrInit(0x166C00, 0);
    gpBMemHeap = a;
    BMemSetPoolSelect(a);
    gpSceneMgr = (s32)New_SceneMgr(&gSceneMgrConfig);
    s0 = func_800206E0();
    a2 = New_Pad(0, 0);
    (*(void (**)(void *, s32, s32))(*(void **)gpSceneMgr + 0x44))(
        (void *)gpSceneMgr, s0, a2);
    (*(void (**)(void *))(*(void **)gpSceneMgr + 0x4C))((void *)gpSceneMgr);
}
void EarlyInit(void) {
}
INCLUDE_ASM("asm/lsdde/nonmatchings/main", func_8001199C);
