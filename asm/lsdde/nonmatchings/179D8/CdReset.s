.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdReset, 0x70

glabel CdReset
    /* 1AEEC 8002A6EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1AEF0 8002A6F0 0780033C */  lui        $v1, %hi(D_8006D8DC)
    /* 1AEF4 8002A6F4 DCD86324 */  addiu      $v1, $v1, %lo(D_8006D8DC)
    /* 1AEF8 8002A6F8 09000234 */  ori        $v0, $zero, 0x9
    /* 1AEFC 8002A6FC FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 1AF00 8002A700 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1AF04 8002A704 0780013C */  lui        $at, %hi(D_8006D600)
    /* 1AF08 8002A708 00D620AC */  sw         $zero, %lo(D_8006D600)($at)
    /* 1AF0C 8002A70C 0780013C */  lui        $at, %hi(D_8006D5FC)
    /* 1AF10 8002A710 FCD520AC */  sw         $zero, %lo(D_8006D5FC)($at)
    /* 1AF14 8002A714 0780013C */  lui        $at, %hi(D_8006D610)
    /* 1AF18 8002A718 10D620AC */  sw         $zero, %lo(D_8006D610)($at)
    /* 1AF1C 8002A71C 0780013C */  lui        $at, %hi(gCdStatus)
    /* 1AF20 8002A720 0CD620AC */  sw         $zero, %lo(gCdStatus)($at)
  .Lfunc_8002A6EC_8002A724:
    /* 1AF24 8002A724 000060AC */  sw         $zero, 0x0($v1)
    /* 1AF28 8002A728 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1AF2C 8002A72C FDFF4414 */  bne        $v0, $a0, .Lfunc_8002A6EC_8002A724
    /* 1AF30 8002A730 04006324 */   addiu     $v1, $v1, 0x4
    /* 1AF34 8002A734 4493000C */  jal        func_80024D10
    /* 1AF38 8002A738 00000000 */   nop
    /* 1AF3C 8002A73C 0380053C */  lui        $a1, %hi(CdDmaInterruptHandler)
    /* 1AF40 8002A740 F4B3A524 */  addiu      $a1, $a1, %lo(CdDmaInterruptHandler)
    /* 1AF44 8002A744 5093000C */  jal        SetEventHandler
    /* 1AF48 8002A748 02000434 */   ori       $a0, $zero, 0x2
    /* 1AF4C 8002A74C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1AF50 8002A750 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1AF54 8002A754 0800E003 */  jr         $ra
    /* 1AF58 8002A758 00000000 */   nop
endlabel CdReset
