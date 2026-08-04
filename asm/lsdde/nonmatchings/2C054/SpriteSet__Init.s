.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SpriteSet__Init, 0xE8

glabel SpriteSet__Init
    /* 31148 80040948 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 3114C 8004094C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 31150 80040950 21908000 */  addu       $s2, $a0, $zero
    /* 31154 80040954 2800B4AF */  sw         $s4, 0x28($sp)
    /* 31158 80040958 21A0A000 */  addu       $s4, $a1, $zero
    /* 3115C 8004095C 2400B3AF */  sw         $s3, 0x24($sp)
    /* 31160 80040960 2198C000 */  addu       $s3, $a2, $zero
    /* 31164 80040964 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 31168 80040968 21A8E000 */  addu       $s5, $a3, $zero
    /* 3116C 8004096C 3000BFAF */  sw         $ra, 0x30($sp)
    /* 31170 80040970 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 31174 80040974 0F07010C */  jal        func_80041C3C
    /* 31178 80040978 1800B0AF */   sw        $s0, 0x18($sp)
    /* 3117C 8004097C 21204002 */  addu       $a0, $s2, $zero
    /* 31180 80040980 21288002 */  addu       $a1, $s4, $zero
    /* 31184 80040984 0800428C */  lw         $v0, 0x8($v0)
    /* 31188 80040988 00000000 */  nop
    /* 3118C 8004098C 09F84000 */  jalr       $v0
    /* 31190 80040990 20000634 */   ori       $a2, $zero, 0x20
    /* 31194 80040994 EC03010C */  jal        Get_vtable_SpriteSet
    /* 31198 80040998 00000000 */   nop
    /* 3119C 8004099C 80201300 */  sll        $a0, $s3, 2
    /* 311A0 800409A0 000042AE */  sw         $v0, 0x0($s2)
    /* 311A4 800409A4 A90053A2 */  sb         $s3, 0xA9($s2)
    /* 311A8 800409A8 AB0053A2 */  sb         $s3, 0xAB($s2)
    /* 311AC 800409AC AC0040A2 */  sb         $zero, 0xAC($s2)
    /* 311B0 800409B0 CD5E000C */  jal        BMemAlloc
    /* 311B4 800409B4 AA0040A2 */   sb        $zero, 0xAA($s2)
    /* 311B8 800409B8 21884000 */  addu       $s1, $v0, $zero
    /* 311BC 800409BC 12002012 */  beqz       $s1, .Lfunc_80040948_80040A08
    /* 311C0 800409C0 00000000 */   nop
    /* 311C4 800409C4 B40051AE */  sw         $s1, 0xB4($s2)
    /* 311C8 800409C8 0900601A */  blez       $s3, .Lfunc_80040948_800409F0
    /* 311CC 800409CC 21800000 */   addu      $s0, $zero, $zero
  .Lfunc_80040948_800409D0:
    /* 311D0 800409D0 21208002 */  addu       $a0, $s4, $zero
    /* 311D4 800409D4 AD06010C */  jal        func_80041AB4
    /* 311D8 800409D8 20000534 */   ori       $a1, $zero, 0x20
    /* 311DC 800409DC 000022AE */  sw         $v0, 0x0($s1)
    /* 311E0 800409E0 01001026 */  addiu      $s0, $s0, 0x1
    /* 311E4 800409E4 2A101302 */  slt        $v0, $s0, $s3
    /* 311E8 800409E8 F9FF4014 */  bnez       $v0, .Lfunc_80040948_800409D0
    /* 311EC 800409EC 04003126 */   addiu     $s1, $s1, 0x4
  .Lfunc_80040948_800409F0:
    /* 311F0 800409F0 0000428E */  lw         $v0, 0x0($s2)
    /* 311F4 800409F4 21204002 */  addu       $a0, $s2, $zero
    /* 311F8 800409F8 4000428C */  lw         $v0, 0x40($v0)
    /* 311FC 800409FC 00000000 */  nop
    /* 31200 80040A00 09F84000 */  jalr       $v0
    /* 31204 80040A04 2128A002 */   addu      $a1, $s5, $zero
  .Lfunc_80040948_80040A08:
    /* 31208 80040A08 3000BF8F */  lw         $ra, 0x30($sp)
    /* 3120C 80040A0C 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 31210 80040A10 2800B48F */  lw         $s4, 0x28($sp)
    /* 31214 80040A14 2400B38F */  lw         $s3, 0x24($sp)
    /* 31218 80040A18 2000B28F */  lw         $s2, 0x20($sp)
    /* 3121C 80040A1C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 31220 80040A20 1800B08F */  lw         $s0, 0x18($sp)
    /* 31224 80040A24 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 31228 80040A28 0800E003 */  jr         $ra
    /* 3122C 80040A2C 00000000 */   nop
endlabel SpriteSet__Init
