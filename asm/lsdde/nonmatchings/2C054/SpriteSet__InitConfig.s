.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SpriteSet__InitConfig, 0x118

glabel SpriteSet__InitConfig
    /* 312E8 80040AE8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 312EC 80040AEC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 312F0 80040AF0 21808000 */  addu       $s0, $a0, $zero
    /* 312F4 80040AF4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 312F8 80040AF8 2188A000 */  addu       $s1, $a1, $zero
    /* 312FC 80040AFC 2400BFAF */  sw         $ra, 0x24($sp)
    /* 31300 80040B00 2000B2AF */  sw         $s2, 0x20($sp)
    /* 31304 80040B04 0C00028E */  lw         $v0, 0xC($s0)
    /* 31308 80040B08 00000000 */  nop
    /* 3130C 80040B0C 35004014 */  bnez       $v0, .Lfunc_80040AE8_80040BE4
    /* 31310 80040B10 2190C000 */   addu      $s2, $a2, $zero
    /* 31314 80040B14 0F07010C */  jal        func_80041C3C
    /* 31318 80040B18 00000000 */   nop
    /* 3131C 80040B1C 21200002 */  addu       $a0, $s0, $zero
    /* 31320 80040B20 21282002 */  addu       $a1, $s1, $zero
    /* 31324 80040B24 4C00428C */  lw         $v0, 0x4C($v0)
    /* 31328 80040B28 00000000 */  nop
    /* 3132C 80040B2C 09F84000 */  jalr       $v0
    /* 31330 80040B30 21304002 */   addu      $a2, $s2, $zero
    /* 31334 80040B34 0000428E */  lw         $v0, 0x0($s2)
    /* 31338 80040B38 0400438E */  lw         $v1, 0x4($s2)
    /* 3133C 80040B3C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 31340 80040B40 1400A3AF */  sw         $v1, 0x14($sp)
    /* 31344 80040B44 AC000492 */  lbu        $a0, 0xAC($s0)
    /* 31348 80040B48 B400038E */  lw         $v1, 0xB4($s0)
    /* 3134C 80040B4C 80100400 */  sll        $v0, $a0, 2
    /* 31350 80040B50 21904300 */  addu       $s2, $v0, $v1
    /* 31354 80040B54 AB000292 */  lbu        $v0, 0xAB($s0)
    /* 31358 80040B58 21888000 */  addu       $s1, $a0, $zero
    /* 3135C 80040B5C 21102202 */  addu       $v0, $s1, $v0
    /* 31360 80040B60 2A102202 */  slt        $v0, $s1, $v0
    /* 31364 80040B64 1F004010 */  beqz       $v0, .Lfunc_80040AE8_80040BE4
    /* 31368 80040B68 00000000 */   nop
  .Lfunc_80040AE8_80040B6C:
    /* 3136C 80040B6C AA000292 */  lbu        $v0, 0xAA($s0)
    /* 31370 80040B70 00000000 */  nop
    /* 31374 80040B74 07004010 */  beqz       $v0, .Lfunc_80040AE8_80040B94
    /* 31378 80040B78 21280002 */   addu      $a1, $s0, $zero
    /* 3137C 80040B7C 05002216 */  bne        $s1, $v0, .Lfunc_80040AE8_80040B94
    /* 31380 80040B80 00000000 */   nop
    /* 31384 80040B84 1000A28F */  lw         $v0, 0x10($sp)
    /* 31388 80040B88 00000000 */  nop
    /* 3138C 80040B8C 10004224 */  addiu      $v0, $v0, 0x10
    /* 31390 80040B90 1000A2AF */  sw         $v0, 0x10($sp)
  .Lfunc_80040AE8_80040B94:
    /* 31394 80040B94 0000448E */  lw         $a0, 0x0($s2)
    /* 31398 80040B98 00000000 */  nop
    /* 3139C 80040B9C 0000828C */  lw         $v0, 0x0($a0)
    /* 313A0 80040BA0 00000000 */  nop
    /* 313A4 80040BA4 4C00428C */  lw         $v0, 0x4C($v0)
    /* 313A8 80040BA8 00000000 */  nop
    /* 313AC 80040BAC 09F84000 */  jalr       $v0
    /* 313B0 80040BB0 1000A627 */   addiu     $a2, $sp, 0x10
    /* 313B4 80040BB4 1000A28F */  lw         $v0, 0x10($sp)
    /* 313B8 80040BB8 B000038E */  lw         $v1, 0xB0($s0)
    /* 313BC 80040BBC 00000000 */  nop
    /* 313C0 80040BC0 21104300 */  addu       $v0, $v0, $v1
    /* 313C4 80040BC4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 313C8 80040BC8 AC000292 */  lbu        $v0, 0xAC($s0)
    /* 313CC 80040BCC AB000392 */  lbu        $v1, 0xAB($s0)
    /* 313D0 80040BD0 01003126 */  addiu      $s1, $s1, 0x1
    /* 313D4 80040BD4 21104300 */  addu       $v0, $v0, $v1
    /* 313D8 80040BD8 2A102202 */  slt        $v0, $s1, $v0
    /* 313DC 80040BDC E3FF4014 */  bnez       $v0, .Lfunc_80040AE8_80040B6C
    /* 313E0 80040BE0 04005226 */   addiu     $s2, $s2, 0x4
  .Lfunc_80040AE8_80040BE4:
    /* 313E4 80040BE4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 313E8 80040BE8 2000B28F */  lw         $s2, 0x20($sp)
    /* 313EC 80040BEC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 313F0 80040BF0 1800B08F */  lw         $s0, 0x18($sp)
    /* 313F4 80040BF4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 313F8 80040BF8 0800E003 */  jr         $ra
    /* 313FC 80040BFC 00000000 */   nop
endlabel SpriteSet__InitConfig
