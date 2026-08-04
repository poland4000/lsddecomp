.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching BuildOrientMatrix, 0xC8

glabel BuildOrientMatrix
    /* 3031C 8003FB1C 21488000 */  addu       $t1, $a0, $zero
    /* 30320 8003FB20 0980083C */  lui        $t0, %hi(D_8008E98C)
    /* 30324 8003FB24 8CE90825 */  addiu      $t0, $t0, %lo(D_8008E98C)
    /* 30328 8003FB28 0000028D */  lw         $v0, 0x0($t0)
    /* 3032C 8003FB2C 0400038D */  lw         $v1, 0x4($t0)
    /* 30330 8003FB30 0800048D */  lw         $a0, 0x8($t0)
    /* 30334 8003FB34 000022AD */  sw         $v0, 0x0($t1)
    /* 30338 8003FB38 040023AD */  sw         $v1, 0x4($t1)
    /* 3033C 8003FB3C 080024AD */  sw         $a0, 0x8($t1)
    /* 30340 8003FB40 0C00028D */  lw         $v0, 0xC($t0)
    /* 30344 8003FB44 1000038D */  lw         $v1, 0x10($t0)
    /* 30348 8003FB48 1400048D */  lw         $a0, 0x14($t0)
    /* 3034C 8003FB4C 0C0022AD */  sw         $v0, 0xC($t1)
    /* 30350 8003FB50 100023AD */  sw         $v1, 0x10($t1)
    /* 30354 8003FB54 140024AD */  sw         $a0, 0x14($t1)
    /* 30358 8003FB58 1800028D */  lw         $v0, 0x18($t0)
    /* 3035C 8003FB5C 1C00038D */  lw         $v1, 0x1C($t0)
    /* 30360 8003FB60 180022AD */  sw         $v0, 0x18($t1)
    /* 30364 8003FB64 1C0023AD */  sw         $v1, 0x1C($t1)
    /* 30368 8003FB68 FF00E730 */  andi       $a3, $a3, 0xFF
    /* 3036C 8003FB6C A8FFE724 */  addiu      $a3, $a3, -0x58
    /* 30370 8003FB70 2300E22C */  sltiu      $v0, $a3, 0x23
    /* 30374 8003FB74 19004010 */  beqz       $v0, L_8003FBDC
    /* 30378 8003FB78 80100700 */   sll       $v0, $a3, 2
    /* 3037C 8003FB7C 0180013C */  lui        $at, %hi(jtbl_80011108)
    /* 30380 8003FB80 08112124 */  addiu      $at, $at, %lo(jtbl_80011108)
    /* 30384 8003FB84 21082200 */  addu       $at, $at, $v0
    /* 30388 8003FB88 0000228C */  lw         $v0, 0x0($at)
    /* 3038C 8003FB8C 00000000 */  nop
    /* 30390 8003FB90 08004000 */  jr         $v0
    /* 30394 8003FB94 00000000 */   nop
  jlabel L_8003FB98
    /* 30398 8003FB98 23100500 */  negu       $v0, $a1
    /* 3039C 8003FB9C 080026A5 */  sh         $a2, 0x8($t1)
    /* 303A0 8003FBA0 100026A5 */  sh         $a2, 0x10($t1)
    /* 303A4 8003FBA4 0A0022A5 */  sh         $v0, 0xA($t1)
    /* 303A8 8003FBA8 F7FE0008 */  j          L_8003FBDC
    /* 303AC 8003FBAC 0E0025A5 */   sh        $a1, 0xE($t1)
  jlabel L_8003FBB0
    /* 303B0 8003FBB0 23100500 */  negu       $v0, $a1
    /* 303B4 8003FBB4 000026A5 */  sh         $a2, 0x0($t1)
    /* 303B8 8003FBB8 100026A5 */  sh         $a2, 0x10($t1)
    /* 303BC 8003FBBC 040025A5 */  sh         $a1, 0x4($t1)
    /* 303C0 8003FBC0 F7FE0008 */  j          L_8003FBDC
    /* 303C4 8003FBC4 0C0022A5 */   sh        $v0, 0xC($t1)
  jlabel L_8003FBC8
    /* 303C8 8003FBC8 23100500 */  negu       $v0, $a1
    /* 303CC 8003FBCC 000026A5 */  sh         $a2, 0x0($t1)
    /* 303D0 8003FBD0 080026A5 */  sh         $a2, 0x8($t1)
    /* 303D4 8003FBD4 020022A5 */  sh         $v0, 0x2($t1)
    /* 303D8 8003FBD8 060025A5 */  sh         $a1, 0x6($t1)
  jlabel L_8003FBDC
    /* 303DC 8003FBDC 0800E003 */  jr         $ra
    /* 303E0 8003FBE0 00000000 */   nop
endlabel BuildOrientMatrix
