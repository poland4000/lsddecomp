.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__MethodD0, 0xCC

glabel StageRenderer__MethodD0
    /* 3B5D8 8004ADD8 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 3B5DC 8004ADDC 3000B2AF */  sw         $s2, 0x30($sp)
    /* 3B5E0 8004ADE0 21908000 */  addu       $s2, $a0, $zero
    /* 3B5E4 8004ADE4 3400B3AF */  sw         $s3, 0x34($sp)
    /* 3B5E8 8004ADE8 2198A000 */  addu       $s3, $a1, $zero
    /* 3B5EC 8004ADEC 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3B5F0 8004ADF0 2188C000 */  addu       $s1, $a2, $zero
    /* 3B5F4 8004ADF4 0200222A */  slti       $v0, $s1, 0x2
    /* 3B5F8 8004ADF8 3800BFAF */  sw         $ra, 0x38($sp)
    /* 3B5FC 8004ADFC 21004014 */  bnez       $v0, .Lfunc_8004ADD8_8004AE84
    /* 3B600 8004AE00 2800B0AF */   sw        $s0, 0x28($sp)
    /* 3B604 8004AE04 0400222A */  slti       $v0, $s1, 0x4
    /* 3B608 8004AE08 05004014 */  bnez       $v0, .Lfunc_8004ADD8_8004AE20
    /* 3B60C 8004AE0C 0900222A */   slti      $v0, $s1, 0x9
    /* 3B610 8004AE10 1C004010 */  beqz       $v0, .Lfunc_8004ADD8_8004AE84
    /* 3B614 8004AE14 0500222A */   slti      $v0, $s1, 0x5
    /* 3B618 8004AE18 1A004014 */  bnez       $v0, .Lfunc_8004ADD8_8004AE84
    /* 3B61C 8004AE1C 00000000 */   nop
  .Lfunc_8004ADD8_8004AE20:
    /* 3B620 8004AE20 E800508E */  lw         $s0, 0xE8($s2)
    /* 3B624 8004AE24 00000000 */  nop
    /* 3B628 8004AE28 16000012 */  beqz       $s0, .Lfunc_8004ADD8_8004AE84
    /* 3B62C 8004AE2C 00000000 */   nop
    /* 3B630 8004AE30 0000028E */  lw         $v0, 0x0($s0)
    /* 3B634 8004AE34 00000000 */  nop
    /* 3B638 8004AE38 12004010 */  beqz       $v0, .Lfunc_8004ADD8_8004AE84
    /* 3B63C 8004AE3C 00000000 */   nop
  .Lfunc_8004ADD8_8004AE40:
    /* 3B640 8004AE40 0000628E */  lw         $v0, 0x0($s3)
    /* 3B644 8004AE44 0000038E */  lw         $v1, 0x0($s0)
    /* 3B648 8004AE48 0000428C */  lw         $v0, 0x0($v0)
    /* 3B64C 8004AE4C 00000000 */  nop
    /* 3B650 8004AE50 08006214 */  bne        $v1, $v0, .Lfunc_8004ADD8_8004AE74
    /* 3B654 8004AE54 04001026 */   addiu     $s0, $s0, 0x4
    /* 3B658 8004AE58 21204002 */  addu       $a0, $s2, $zero
    /* 3B65C 8004AE5C 0000428E */  lw         $v0, 0x0($s2)
    /* 3B660 8004AE60 21286002 */  addu       $a1, $s3, $zero
    /* 3B664 8004AE64 2C01428C */  lw         $v0, 0x12C($v0)
    /* 3B668 8004AE68 00000000 */  nop
    /* 3B66C 8004AE6C 09F84000 */  jalr       $v0
    /* 3B670 8004AE70 21302002 */   addu      $a2, $s1, $zero
  .Lfunc_8004ADD8_8004AE74:
    /* 3B674 8004AE74 0000028E */  lw         $v0, 0x0($s0)
    /* 3B678 8004AE78 00000000 */  nop
    /* 3B67C 8004AE7C F0FF4014 */  bnez       $v0, .Lfunc_8004ADD8_8004AE40
    /* 3B680 8004AE80 00000000 */   nop
  .Lfunc_8004ADD8_8004AE84:
    /* 3B684 8004AE84 3800BF8F */  lw         $ra, 0x38($sp)
    /* 3B688 8004AE88 3400B38F */  lw         $s3, 0x34($sp)
    /* 3B68C 8004AE8C 3000B28F */  lw         $s2, 0x30($sp)
    /* 3B690 8004AE90 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 3B694 8004AE94 2800B08F */  lw         $s0, 0x28($sp)
    /* 3B698 8004AE98 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 3B69C 8004AE9C 0800E003 */  jr         $ra
    /* 3B6A0 8004AEA0 00000000 */   nop
endlabel StageRenderer__MethodD0
