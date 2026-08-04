.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003D194, 0x138

glabel func_8003D194
    /* 2D994 8003D194 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 2D998 8003D198 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2D99C 8003D19C 21808000 */  addu       $s0, $a0, $zero
    /* 2D9A0 8003D1A0 3000BFAF */  sw         $ra, 0x30($sp)
    /* 2D9A4 8003D1A4 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 2D9A8 8003D1A8 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2D9AC 8003D1AC 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2D9B0 8003D1B0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2D9B4 8003D1B4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2D9B8 8003D1B8 4C00068E */  lw         $a2, 0x4C($s0)
    /* 2D9BC 8003D1BC 00000000 */  nop
    /* 2D9C0 8003D1C0 3800C010 */  beqz       $a2, .Lfunc_8003D194_8003D2A4
    /* 2D9C4 8003D1C4 21A8A000 */   addu      $s5, $a1, $zero
    /* 2D9C8 8003D1C8 5400138E */  lw         $s3, 0x54($s0)
    /* 2D9CC 8003D1CC 5000028E */  lw         $v0, 0x50($s0)
    /* 2D9D0 8003D1D0 2000D48C */  lw         $s4, 0x20($a2)
    /* 2D9D4 8003D1D4 33004018 */  blez       $v0, .Lfunc_8003D194_8003D2A4
    /* 2D9D8 8003D1D8 21880000 */   addu      $s1, $zero, $zero
  .Lfunc_8003D194_8003D1DC:
    /* 2D9DC 8003D1DC 4C00028E */  lw         $v0, 0x4C($s0)
    /* 2D9E0 8003D1E0 00000000 */  nop
    /* 2D9E4 8003D1E4 1800428C */  lw         $v0, 0x18($v0)
    /* 2D9E8 8003D1E8 80901100 */  sll        $s2, $s1, 2
    /* 2D9EC 8003D1EC 21104202 */  addu       $v0, $s2, $v0
    /* 2D9F0 8003D1F0 0000428C */  lw         $v0, 0x0($v0)
    /* 2D9F4 8003D1F4 00000000 */  nop
    /* 2D9F8 8003D1F8 1B004014 */  bnez       $v0, .Lfunc_8003D194_8003D268
    /* 2D9FC 8003D1FC 2128A002 */   addu      $a1, $s5, $zero
    /* 2DA00 8003D200 0000648E */  lw         $a0, 0x0($s3)
    /* 2DA04 8003D204 00000000 */  nop
    /* 2DA08 8003D208 0000828C */  lw         $v0, 0x0($a0)
    /* 2DA0C 8003D20C 00000000 */  nop
    /* 2DA10 8003D210 4C00428C */  lw         $v0, 0x4C($v0)
    /* 2DA14 8003D214 00000000 */  nop
    /* 2DA18 8003D218 09F84000 */  jalr       $v0
    /* 2DA1C 8003D21C 21308002 */   addu      $a2, $s4, $zero
    /* 2DA20 8003D220 4C00028E */  lw         $v0, 0x4C($s0)
    /* 2DA24 8003D224 00000000 */  nop
    /* 2DA28 8003D228 2400428C */  lw         $v0, 0x24($v0)
    /* 2DA2C 8003D22C 00000000 */  nop
    /* 2DA30 8003D230 21104202 */  addu       $v0, $s2, $v0
    /* 2DA34 8003D234 0000428C */  lw         $v0, 0x0($v0)
    /* 2DA38 8003D238 00000000 */  nop
    /* 2DA3C 8003D23C 12004010 */  beqz       $v0, .Lfunc_8003D194_8003D288
    /* 2DA40 8003D240 21200002 */   addu      $a0, $s0, $zero
    /* 2DA44 8003D244 0000028E */  lw         $v0, 0x0($s0)
    /* 2DA48 8003D248 2128A002 */  addu       $a1, $s5, $zero
    /* 2DA4C 8003D24C 580011AE */  sw         $s1, 0x58($s0)
    /* 2DA50 8003D250 0001428C */  lw         $v0, 0x100($v0)
    /* 2DA54 8003D254 00000000 */  nop
    /* 2DA58 8003D258 09F84000 */  jalr       $v0
    /* 2DA5C 8003D25C 21300000 */   addu      $a2, $zero, $zero
    /* 2DA60 8003D260 A3F40008 */  j          .Lfunc_8003D194_8003D28C
    /* 2DA64 8003D264 01003126 */   addiu     $s1, $s1, 0x1
  .Lfunc_8003D194_8003D268:
    /* 2DA68 8003D268 0000648E */  lw         $a0, 0x0($s3)
    /* 2DA6C 8003D26C 00000000 */  nop
    /* 2DA70 8003D270 0000828C */  lw         $v0, 0x0($a0)
    /* 2DA74 8003D274 00000000 */  nop
    /* 2DA78 8003D278 5000428C */  lw         $v0, 0x50($v0)
    /* 2DA7C 8003D27C 00000000 */  nop
    /* 2DA80 8003D280 09F84000 */  jalr       $v0
    /* 2DA84 8003D284 00000000 */   nop
  .Lfunc_8003D194_8003D288:
    /* 2DA88 8003D288 01003126 */  addiu      $s1, $s1, 0x1
  .Lfunc_8003D194_8003D28C:
    /* 2DA8C 8003D28C 04007326 */  addiu      $s3, $s3, 0x4
    /* 2DA90 8003D290 5000028E */  lw         $v0, 0x50($s0)
    /* 2DA94 8003D294 00000000 */  nop
    /* 2DA98 8003D298 2A102202 */  slt        $v0, $s1, $v0
    /* 2DA9C 8003D29C CFFF4014 */  bnez       $v0, .Lfunc_8003D194_8003D1DC
    /* 2DAA0 8003D2A0 08009426 */   addiu     $s4, $s4, 0x8
  .Lfunc_8003D194_8003D2A4:
    /* 2DAA4 8003D2A4 3000BF8F */  lw         $ra, 0x30($sp)
    /* 2DAA8 8003D2A8 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 2DAAC 8003D2AC 2800B48F */  lw         $s4, 0x28($sp)
    /* 2DAB0 8003D2B0 2400B38F */  lw         $s3, 0x24($sp)
    /* 2DAB4 8003D2B4 2000B28F */  lw         $s2, 0x20($sp)
    /* 2DAB8 8003D2B8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2DABC 8003D2BC 1800B08F */  lw         $s0, 0x18($sp)
    /* 2DAC0 8003D2C0 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 2DAC4 8003D2C4 0800E003 */  jr         $ra
    /* 2DAC8 8003D2C8 00000000 */   nop
endlabel func_8003D194
