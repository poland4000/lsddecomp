.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__RebuildTiles, 0xC4

glabel StageRenderer__RebuildTiles
    /* 3D474 8004CC74 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 3D478 8004CC78 4000B0AF */  sw         $s0, 0x40($sp)
    /* 3D47C 8004CC7C 21808000 */  addu       $s0, $a0, $zero
    /* 3D480 8004CC80 4800BFAF */  sw         $ra, 0x48($sp)
    /* 3D484 8004CC84 4400B1AF */  sw         $s1, 0x44($sp)
    /* 3D488 8004CC88 0000028E */  lw         $v0, 0x0($s0)
    /* 3D48C 8004CC8C 1000A527 */  addiu      $a1, $sp, 0x10
    /* 3D490 8004CC90 0C01428C */  lw         $v0, 0x10C($v0)
    /* 3D494 8004CC94 00000000 */  nop
    /* 3D498 8004CC98 09F84000 */  jalr       $v0
    /* 3D49C 8004CC9C 21300000 */   addu      $a2, $zero, $zero
    /* 3D4A0 8004CCA0 21200002 */  addu       $a0, $s0, $zero
    /* 3D4A4 8004CCA4 21282002 */  addu       $a1, $s1, $zero
    /* 3D4A8 8004CCA8 880000AE */  sw         $zero, 0x88($s0)
    /* 3D4AC 8004CCAC 3800A78F */  lw         $a3, 0x38($sp)
    /* 3D4B0 8004CCB0 6933010C */  jal        StageRenderer__MethodCDA4
    /* 3D4B4 8004CCB4 21300000 */   addu      $a2, $zero, $zero
    /* 3D4B8 8004CCB8 DC01048E */  lw         $a0, 0x1DC($s0)
    /* 3D4BC 8004CCBC 1200A527 */  addiu      $a1, $sp, 0x12
    /* 3D4C0 8004CCC0 4E33010C */  jal        StageRenderer__MethodCD38
    /* 3D4C4 8004CCC4 880002AE */   sw        $v0, 0x88($s0)
    /* 3D4C8 8004CCC8 0C004010 */  beqz       $v0, .Lfunc_8004CC74_8004CCFC
    /* 3D4CC 8004CCCC 00000000 */   nop
    /* 3D4D0 8004CCD0 6800028E */  lw         $v0, 0x68($s0)
    /* 3D4D4 8004CCD4 3800A38F */  lw         $v1, 0x38($sp)
    /* 3D4D8 8004CCD8 02004284 */  lh         $v0, 0x2($v0)
    /* 3D4DC 8004CCDC 01006724 */  addiu      $a3, $v1, 0x1
    /* 3D4E0 8004CCE0 2A10E200 */  slt        $v0, $a3, $v0
    /* 3D4E4 8004CCE4 05004010 */  beqz       $v0, .Lfunc_8004CC74_8004CCFC
    /* 3D4E8 8004CCE8 21200002 */   addu      $a0, $s0, $zero
    /* 3D4EC 8004CCEC 8800068E */  lw         $a2, 0x88($s0)
    /* 3D4F0 8004CCF0 6933010C */  jal        StageRenderer__MethodCDA4
    /* 3D4F4 8004CCF4 21282002 */   addu      $a1, $s1, $zero
    /* 3D4F8 8004CCF8 880002AE */  sw         $v0, 0x88($s0)
  .Lfunc_8004CC74_8004CCFC:
    /* 3D4FC 8004CCFC 3800A28F */  lw         $v0, 0x38($sp)
    /* 3D500 8004CD00 00000000 */  nop
    /* 3D504 8004CD04 FFFF4724 */  addiu      $a3, $v0, -0x1
    /* 3D508 8004CD08 0500E004 */  bltz       $a3, .Lfunc_8004CC74_8004CD20
    /* 3D50C 8004CD0C 21200002 */   addu      $a0, $s0, $zero
    /* 3D510 8004CD10 8800068E */  lw         $a2, 0x88($s0)
    /* 3D514 8004CD14 6933010C */  jal        StageRenderer__MethodCDA4
    /* 3D518 8004CD18 21282002 */   addu      $a1, $s1, $zero
    /* 3D51C 8004CD1C 880002AE */  sw         $v0, 0x88($s0)
  .Lfunc_8004CC74_8004CD20:
    /* 3D520 8004CD20 4800BF8F */  lw         $ra, 0x48($sp)
    /* 3D524 8004CD24 4400B18F */  lw         $s1, 0x44($sp)
    /* 3D528 8004CD28 4000B08F */  lw         $s0, 0x40($sp)
    /* 3D52C 8004CD2C 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 3D530 8004CD30 0800E003 */  jr         $ra
    /* 3D534 8004CD34 00000000 */   nop
endlabel StageRenderer__RebuildTiles
