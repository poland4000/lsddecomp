.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndTickHandler, 0xA4

glabel SndTickHandler
    /* 231D8 800329D8 0780023C */  lui        $v0, %hi(D_8006DCA8)
    /* 231DC 800329DC A8DC428C */  lw         $v0, %lo(D_8006DCA8)($v0)
    /* 231E0 800329E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 231E4 800329E4 21004014 */  bnez       $v0, .Lfunc_800329D8_80032A6C
    /* 231E8 800329E8 1000BFAF */   sw        $ra, 0x10($sp)
    /* 231EC 800329EC 0780013C */  lui        $at, %hi(D_8006DC94)
    /* 231F0 800329F0 94DC20AC */  sw         $zero, %lo(D_8006DC94)($at)
    /* 231F4 800329F4 3893000C */  jal        EnterCriticalSection
    /* 231F8 800329F8 00000000 */   nop
    /* 231FC 800329FC 0780023C */  lui        $v0, %hi(D_8006DC8C)
    /* 23200 80032A00 8CDC428C */  lw         $v0, %lo(D_8006DC8C)($v0)
    /* 23204 80032A04 00000000 */  nop
    /* 23208 80032A08 07004010 */  beqz       $v0, .Lfunc_800329D8_80032A28
    /* 2320C 80032A0C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 23210 80032A10 6893000C */  jal        SetVsyncCallback
    /* 23214 80032A14 21200000 */   addu      $a0, $zero, $zero
    /* 23218 80032A18 0780013C */  lui        $at, %hi(D_8006DC8C)
    /* 2321C 80032A1C 8CDC20AC */  sw         $zero, %lo(D_8006DC8C)($at)
    /* 23220 80032A20 99CA0008 */  j          .Lfunc_800329D8_80032A64
    /* 23224 80032A24 00000000 */   nop
  .Lfunc_800329D8_80032A28:
    /* 23228 80032A28 0780043C */  lui        $a0, %hi(D_8006DC90)
    /* 2322C 80032A2C 90DC848C */  lw         $a0, %lo(D_8006DC90)($a0)
    /* 23230 80032A30 00000000 */  nop
    /* 23234 80032A34 0B008210 */  beq        $a0, $v0, .Lfunc_800329D8_80032A64
    /* 23238 80032A38 00000000 */   nop
    /* 2323C 80032A3C 04008014 */  bnez       $a0, .Lfunc_800329D8_80032A50
    /* 23240 80032A40 21280000 */   addu      $a1, $zero, $zero
    /* 23244 80032A44 0780053C */  lui        $a1, %hi(D_8006DC9C)
    /* 23248 80032A48 9CDCA58C */  lw         $a1, %lo(D_8006DC9C)($a1)
    /* 2324C 80032A4C 21200000 */  addu       $a0, $zero, $zero
  .Lfunc_800329D8_80032A50:
    /* 23250 80032A50 5093000C */  jal        SetEventHandler
    /* 23254 80032A54 00000000 */   nop
    /* 23258 80032A58 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2325C 80032A5C 0780013C */  lui        $at, %hi(D_8006DC90)
    /* 23260 80032A60 90DC22AC */  sw         $v0, %lo(D_8006DC90)($at)
  .Lfunc_800329D8_80032A64:
    /* 23264 80032A64 3C93000C */  jal        ExitCriticalSection
    /* 23268 80032A68 00000000 */   nop
  .Lfunc_800329D8_80032A6C:
    /* 2326C 80032A6C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 23270 80032A70 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 23274 80032A74 0800E003 */  jr         $ra
    /* 23278 80032A78 00000000 */   nop
endlabel SndTickHandler
