.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002BC40, 0xAC

glabel func_8002BC40
    /* 1C440 8002BC40 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1C444 8002BC44 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1C448 8002BC48 21988000 */  addu       $s3, $a0, $zero
    /* 1C44C 8002BC4C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 1C450 8002BC50 21A0A000 */  addu       $s4, $a1, $zero
    /* 1C454 8002BC54 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1C458 8002BC58 21800000 */  addu       $s0, $zero, $zero
    /* 1C45C 8002BC5C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1C460 8002BC60 0980123C */  lui        $s2, %hi(D_8008B9FC)
    /* 1C464 8002BC64 FCB95226 */  addiu      $s2, $s2, %lo(D_8008B9FC)
    /* 1C468 8002BC68 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1C46C 8002BC6C 21880000 */  addu       $s1, $zero, $zero
    /* 1C470 8002BC70 2400BFAF */  sw         $ra, 0x24($sp)
  .Lfunc_8002BC40_8002BC74:
    /* 1C474 8002BC74 0980013C */  lui        $at, %hi(D_8008B9F4)
    /* 1C478 8002BC78 F4B92124 */  addiu      $at, $at, %lo(D_8008B9F4)
    /* 1C47C 8002BC7C 21083100 */  addu       $at, $at, $s1
    /* 1C480 8002BC80 0000228C */  lw         $v0, 0x0($at)
    /* 1C484 8002BC84 00000000 */  nop
    /* 1C488 8002BC88 0E004010 */  beqz       $v0, .Lfunc_8002BC40_8002BCC4
    /* 1C48C 8002BC8C 00000000 */   nop
    /* 1C490 8002BC90 07005314 */  bne        $v0, $s3, .Lfunc_8002BC40_8002BCB0
    /* 1C494 8002BC94 21208002 */   addu      $a0, $s4, $zero
    /* 1C498 8002BC98 12B0000C */  jal        Str_Compare
    /* 1C49C 8002BC9C 21284002 */   addu      $a1, $s2, $zero
    /* 1C4A0 8002BCA0 04004014 */  bnez       $v0, .Lfunc_8002BC40_8002BCB4
    /* 1C4A4 8002BCA4 2C005226 */   addiu     $s2, $s2, 0x2C
    /* 1C4A8 8002BCA8 32AF0008 */  j          .Lfunc_8002BC40_8002BCC8
    /* 1C4AC 8002BCAC 01000226 */   addiu     $v0, $s0, 0x1
  .Lfunc_8002BC40_8002BCB0:
    /* 1C4B0 8002BCB0 2C005226 */  addiu      $s2, $s2, 0x2C
  .Lfunc_8002BC40_8002BCB4:
    /* 1C4B4 8002BCB4 01001026 */  addiu      $s0, $s0, 0x1
    /* 1C4B8 8002BCB8 8000022A */  slti       $v0, $s0, 0x80
    /* 1C4BC 8002BCBC EDFF4014 */  bnez       $v0, .Lfunc_8002BC40_8002BC74
    /* 1C4C0 8002BCC0 2C003126 */   addiu     $s1, $s1, 0x2C
  .Lfunc_8002BC40_8002BCC4:
    /* 1C4C4 8002BCC4 FFFF0224 */  addiu      $v0, $zero, -0x1
  .Lfunc_8002BC40_8002BCC8:
    /* 1C4C8 8002BCC8 2400BF8F */  lw         $ra, 0x24($sp)
    /* 1C4CC 8002BCCC 2000B48F */  lw         $s4, 0x20($sp)
    /* 1C4D0 8002BCD0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1C4D4 8002BCD4 1800B28F */  lw         $s2, 0x18($sp)
    /* 1C4D8 8002BCD8 1400B18F */  lw         $s1, 0x14($sp)
    /* 1C4DC 8002BCDC 1000B08F */  lw         $s0, 0x10($sp)
    /* 1C4E0 8002BCE0 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1C4E4 8002BCE4 0800E003 */  jr         $ra
    /* 1C4E8 8002BCE8 00000000 */   nop
endlabel func_8002BC40
