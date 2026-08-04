.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextPanel__Method38, 0xE0

glabel TextPanel__Method38
    /* 40304 8004FB04 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 40308 8004FB08 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4030C 8004FB0C 21808000 */  addu       $s0, $a0, $zero
    /* 40310 8004FB10 1400B1AF */  sw         $s1, 0x14($sp)
    /* 40314 8004FB14 2188A000 */  addu       $s1, $a1, $zero
    /* 40318 8004FB18 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4031C 8004FB1C 2000BFAF */  sw         $ra, 0x20($sp)
    /* 40320 8004FB20 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 40324 8004FB24 0000138E */  lw         $s3, 0x0($s0)
    /* 40328 8004FB28 E460000C */  jal        Get_vtable_BasicClass
    /* 4032C 8004FB2C 2190C000 */   addu      $s2, $a2, $zero
    /* 40330 8004FB30 21200002 */  addu       $a0, $s0, $zero
    /* 40334 8004FB34 21282002 */  addu       $a1, $s1, $zero
    /* 40338 8004FB38 3800428C */  lw         $v0, 0x38($v0)
    /* 4033C 8004FB3C 00000000 */  nop
    /* 40340 8004FB40 09F84000 */  jalr       $v0
    /* 40344 8004FB44 21304002 */   addu      $a2, $s2, $zero
    /* 40348 8004FB48 0000228E */  lw         $v0, 0x0($s1)
    /* 4034C 8004FB4C 00000000 */  nop
    /* 40350 8004FB50 0000448C */  lw         $a0, 0x0($v0)
    /* 40354 8004FB54 02000234 */  ori        $v0, $zero, 0x2
    /* 40358 8004FB58 0F008330 */  andi       $v1, $a0, 0xF
    /* 4035C 8004FB5C 05006214 */  bne        $v1, $v0, .Lfunc_8004FB04_8004FB74
    /* 40360 8004FB60 05000234 */   ori       $v0, $zero, 0x5
    /* 40364 8004FB64 21200002 */  addu       $a0, $s0, $zero
    /* 40368 8004FB68 8800628E */  lw         $v0, 0x88($s3)
    /* 4036C 8004FB6C EE3E0108 */  j          .Lfunc_8004FB04_8004FBB8
    /* 40370 8004FB70 21282002 */   addu      $a1, $s1, $zero
  .Lfunc_8004FB04_8004FB74:
    /* 40374 8004FB74 05006214 */  bne        $v1, $v0, .Lfunc_8004FB04_8004FB8C
    /* 40378 8004FB78 FF008330 */   andi      $v1, $a0, 0xFF
    /* 4037C 8004FB7C 21200002 */  addu       $a0, $s0, $zero
    /* 40380 8004FB80 9800628E */  lw         $v0, 0x98($s3)
    /* 40384 8004FB84 EE3E0108 */  j          .Lfunc_8004FB04_8004FBB8
    /* 40388 8004FB88 21282002 */   addu      $a1, $s1, $zero
  .Lfunc_8004FB04_8004FB8C:
    /* 4038C 8004FB8C 10000234 */  ori        $v0, $zero, 0x10
    /* 40390 8004FB90 05006214 */  bne        $v1, $v0, .Lfunc_8004FB04_8004FBA8
    /* 40394 8004FB94 20000234 */   ori       $v0, $zero, 0x20
    /* 40398 8004FB98 21200002 */  addu       $a0, $s0, $zero
    /* 4039C 8004FB9C A400628E */  lw         $v0, 0xA4($s3)
    /* 403A0 8004FBA0 EE3E0108 */  j          .Lfunc_8004FB04_8004FBB8
    /* 403A4 8004FBA4 21282002 */   addu      $a1, $s1, $zero
  .Lfunc_8004FB04_8004FBA8:
    /* 403A8 8004FBA8 06006214 */  bne        $v1, $v0, .Lfunc_8004FB04_8004FBC4
    /* 403AC 8004FBAC 21200002 */   addu      $a0, $s0, $zero
    /* 403B0 8004FBB0 21282002 */  addu       $a1, $s1, $zero
    /* 403B4 8004FBB4 B000628E */  lw         $v0, 0xB0($s3)
  .Lfunc_8004FB04_8004FBB8:
    /* 403B8 8004FBB8 00000000 */  nop
    /* 403BC 8004FBBC 09F84000 */  jalr       $v0
    /* 403C0 8004FBC0 21304002 */   addu      $a2, $s2, $zero
  .Lfunc_8004FB04_8004FBC4:
    /* 403C4 8004FBC4 2000BF8F */  lw         $ra, 0x20($sp)
    /* 403C8 8004FBC8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 403CC 8004FBCC 1800B28F */  lw         $s2, 0x18($sp)
    /* 403D0 8004FBD0 1400B18F */  lw         $s1, 0x14($sp)
    /* 403D4 8004FBD4 1000B08F */  lw         $s0, 0x10($sp)
    /* 403D8 8004FBD8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 403DC 8004FBDC 0800E003 */  jr         $ra
    /* 403E0 8004FBE0 00000000 */   nop
endlabel TextPanel__Method38
