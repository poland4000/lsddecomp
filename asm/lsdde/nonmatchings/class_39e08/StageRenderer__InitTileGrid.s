.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__InitTileGrid, 0x1B4

glabel StageRenderer__InitTileGrid
    /* 3D13C 8004C93C B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 3D140 8004C940 2800B2AF */  sw         $s2, 0x28($sp)
    /* 3D144 8004C944 21908000 */  addu       $s2, $a0, $zero
    /* 3D148 8004C948 21100000 */  addu       $v0, $zero, $zero
    /* 3D14C 8004C94C 3000B4AF */  sw         $s4, 0x30($sp)
    /* 3D150 8004C950 4000BFAF */  sw         $ra, 0x40($sp)
    /* 3D154 8004C954 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 3D158 8004C958 3800B6AF */  sw         $s6, 0x38($sp)
    /* 3D15C 8004C95C 3400B5AF */  sw         $s5, 0x34($sp)
    /* 3D160 8004C960 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 3D164 8004C964 2400B1AF */  sw         $s1, 0x24($sp)
    /* 3D168 8004C968 2000B0AF */  sw         $s0, 0x20($sp)
    /* 3D16C 8004C96C 7C005186 */  lh         $s1, 0x7C($s2)
    /* 3D170 8004C970 8000568E */  lw         $s6, 0x80($s2)
    /* 3D174 8004C974 8400578E */  lw         $s7, 0x84($s2)
    /* 3D178 8004C978 04002106 */  bgez       $s1, .Lfunc_8004C93C_8004C98C
    /* 3D17C 8004C97C 03001434 */   ori       $s4, $zero, 0x3
    /* 3D180 8004C980 14003126 */  addiu      $s1, $s1, 0x14
    /* 3D184 8004C984 01000234 */  ori        $v0, $zero, 0x1
    /* 3D188 8004C988 02001434 */  ori        $s4, $zero, 0x2
  .Lfunc_8004C93C_8004C98C:
    /* 3D18C 8004C98C 7E005586 */  lh         $s5, 0x7E($s2)
    /* 3D190 8004C990 00000000 */  nop
    /* 3D194 8004C994 0E00A106 */  bgez       $s5, .Lfunc_8004C93C_8004C9D0
    /* 3D198 8004C998 8C005326 */   addiu     $s3, $s2, 0x8C
    /* 3D19C 8004C99C 04004010 */  beqz       $v0, .Lfunc_8004C93C_8004C9B0
    /* 3D1A0 8004C9A0 1400B526 */   addiu     $s5, $s5, 0x14
    /* 3D1A4 8004C9A4 F6FF3126 */  addiu      $s1, $s1, -0xA
    /* 3D1A8 8004C9A8 74320108 */  j          .Lfunc_8004C93C_8004C9D0
    /* 3D1AC 8004C9AC 21A00000 */   addu      $s4, $zero, $zero
  .Lfunc_8004C93C_8004C9B0:
    /* 3D1B0 8004C9B0 0A00222A */  slti       $v0, $s1, 0xA
    /* 3D1B4 8004C9B4 03004010 */  beqz       $v0, .Lfunc_8004C93C_8004C9C4
    /* 3D1B8 8004C9B8 21A00000 */   addu      $s4, $zero, $zero
    /* 3D1BC 8004C9BC 73320108 */  j          .Lfunc_8004C93C_8004C9CC
    /* 3D1C0 8004C9C0 0A003126 */   addiu     $s1, $s1, 0xA
  .Lfunc_8004C93C_8004C9C4:
    /* 3D1C4 8004C9C4 F6FF3126 */  addiu      $s1, $s1, -0xA
    /* 3D1C8 8004C9C8 01001434 */  ori        $s4, $zero, 0x1
  .Lfunc_8004C93C_8004C9CC:
    /* 3D1CC 8004C9CC 8C005326 */  addiu      $s3, $s2, 0x8C
  .Lfunc_8004C93C_8004C9D0:
    /* 3D1D0 8004C9D0 0000428E */  lw         $v0, 0x0($s2)
    /* 3D1D4 8004C9D4 21204002 */  addu       $a0, $s2, $zero
    /* 3D1D8 8004C9D8 2001428C */  lw         $v0, 0x120($v0)
    /* 3D1DC 8004C9DC 00000000 */  nop
    /* 3D1E0 8004C9E0 09F84000 */  jalr       $v0
    /* 3D1E4 8004C9E4 21288002 */   addu      $a1, $s4, $zero
    /* 3D1E8 8004C9E8 21182002 */  addu       $v1, $s1, $zero
    /* 3D1EC 8004C9EC 02002106 */  bgez       $s1, .Lfunc_8004C93C_8004C9F8
    /* 3D1F0 8004C9F0 8C0042AE */   sw        $v0, 0x8C($s2)
    /* 3D1F4 8004C9F4 21180000 */  addu       $v1, $zero, $zero
  .Lfunc_8004C93C_8004C9F8:
    /* 3D1F8 8004C9F8 21803602 */  addu       $s0, $s1, $s6
    /* 3D1FC 8004C9FC 1500022A */  slti       $v0, $s0, 0x15
    /* 3D200 8004CA00 900043A6 */  sh         $v1, 0x90($s2)
    /* 3D204 8004CA04 21004014 */  bnez       $v0, .Lfunc_8004C93C_8004CA8C
    /* 3D208 8004CA08 920055A6 */   sh        $s5, 0x92($s2)
    /* 3D20C 8004CA0C 21204002 */  addu       $a0, $s2, $zero
    /* 3D210 8004CA10 21286002 */  addu       $a1, $s3, $zero
    /* 3D214 8004CA14 21300000 */  addu       $a2, $zero, $zero
    /* 3D218 8004CA18 21388002 */  addu       $a3, $s4, $zero
    /* 3D21C 8004CA1C ECFF1026 */  addiu      $s0, $s0, -0x14
    /* 3D220 8004CA20 2310D002 */  subu       $v0, $s6, $s0
    /* 3D224 8004CA24 940042A6 */  sh         $v0, 0x94($s2)
    /* 3D228 8004CA28 1000B1AF */  sw         $s1, 0x10($sp)
    /* 3D22C 8004CA2C 1400B5AF */  sw         $s5, 0x14($sp)
    /* 3D230 8004CA30 1800B6AF */  sw         $s6, 0x18($sp)
    /* 3D234 8004CA34 BC32010C */  jal        StageRenderer__FillTileGrid
    /* 3D238 8004CA38 1C00B7AF */   sw        $s7, 0x1C($sp)
    /* 3D23C 8004CA3C 01005124 */  addiu      $s1, $v0, 0x1
    /* 3D240 8004CA40 40101100 */  sll        $v0, $s1, 1
    /* 3D244 8004CA44 21105100 */  addu       $v0, $v0, $s1
    /* 3D248 8004CA48 80100200 */  sll        $v0, $v0, 2
    /* 3D24C 8004CA4C 8C004224 */  addiu      $v0, $v0, 0x8C
    /* 3D250 8004CA50 21984202 */  addu       $s3, $s2, $v0
    /* 3D254 8004CA54 0000428E */  lw         $v0, 0x0($s2)
    /* 3D258 8004CA58 21204002 */  addu       $a0, $s2, $zero
    /* 3D25C 8004CA5C 2001428C */  lw         $v0, 0x120($v0)
    /* 3D260 8004CA60 00000000 */  nop
    /* 3D264 8004CA64 09F84000 */  jalr       $v0
    /* 3D268 8004CA68 01008526 */   addiu     $a1, $s4, 0x1
    /* 3D26C 8004CA6C 000062AE */  sw         $v0, 0x0($s3)
    /* 3D270 8004CA70 040060A6 */  sh         $zero, 0x4($s3)
    /* 3D274 8004CA74 92004296 */  lhu        $v0, 0x92($s2)
    /* 3D278 8004CA78 080070A6 */  sh         $s0, 0x8($s3)
    /* 3D27C 8004CA7C 060062A6 */  sh         $v0, 0x6($s3)
    /* 3D280 8004CA80 96004296 */  lhu        $v0, 0x96($s2)
    /* 3D284 8004CA84 AE320108 */  j          .Lfunc_8004C93C_8004CAB8
    /* 3D288 8004CA88 0A0062A6 */   sh        $v0, 0xA($s3)
  .Lfunc_8004C93C_8004CA8C:
    /* 3D28C 8004CA8C 21204002 */  addu       $a0, $s2, $zero
    /* 3D290 8004CA90 21286002 */  addu       $a1, $s3, $zero
    /* 3D294 8004CA94 21300000 */  addu       $a2, $zero, $zero
    /* 3D298 8004CA98 21388002 */  addu       $a3, $s4, $zero
    /* 3D29C 8004CA9C 940056A6 */  sh         $s6, 0x94($s2)
    /* 3D2A0 8004CAA0 1000B1AF */  sw         $s1, 0x10($sp)
    /* 3D2A4 8004CAA4 1400B5AF */  sw         $s5, 0x14($sp)
    /* 3D2A8 8004CAA8 1800B6AF */  sw         $s6, 0x18($sp)
    /* 3D2AC 8004CAAC BC32010C */  jal        StageRenderer__FillTileGrid
    /* 3D2B0 8004CAB0 1C00B7AF */   sw        $s7, 0x1C($sp)
    /* 3D2B4 8004CAB4 21884000 */  addu       $s1, $v0, $zero
  .Lfunc_8004C93C_8004CAB8:
    /* 3D2B8 8004CAB8 01003126 */  addiu      $s1, $s1, 0x1
    /* 3D2BC 8004CABC 880051AE */  sw         $s1, 0x88($s2)
    /* 3D2C0 8004CAC0 4000BF8F */  lw         $ra, 0x40($sp)
    /* 3D2C4 8004CAC4 3C00B78F */  lw         $s7, 0x3C($sp)
    /* 3D2C8 8004CAC8 3800B68F */  lw         $s6, 0x38($sp)
    /* 3D2CC 8004CACC 3400B58F */  lw         $s5, 0x34($sp)
    /* 3D2D0 8004CAD0 3000B48F */  lw         $s4, 0x30($sp)
    /* 3D2D4 8004CAD4 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 3D2D8 8004CAD8 2800B28F */  lw         $s2, 0x28($sp)
    /* 3D2DC 8004CADC 2400B18F */  lw         $s1, 0x24($sp)
    /* 3D2E0 8004CAE0 2000B08F */  lw         $s0, 0x20($sp)
    /* 3D2E4 8004CAE4 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 3D2E8 8004CAE8 0800E003 */  jr         $ra
    /* 3D2EC 8004CAEC 00000000 */   nop
endlabel StageRenderer__InitTileGrid
