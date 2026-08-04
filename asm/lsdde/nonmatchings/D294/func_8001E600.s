.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001E600, 0xF8

glabel func_8001E600
    /* EE00 8001E600 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* EE04 8001E604 3400B1AF */  sw         $s1, 0x34($sp)
    /* EE08 8001E608 21888000 */  addu       $s1, $a0, $zero
    /* EE0C 8001E60C 3800B2AF */  sw         $s2, 0x38($sp)
    /* EE10 8001E610 2190A000 */  addu       $s2, $a1, $zero
    /* EE14 8001E614 3000B0AF */  sw         $s0, 0x30($sp)
    /* EE18 8001E618 2180C000 */  addu       $s0, $a2, $zero
    /* EE1C 8001E61C 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* EE20 8001E620 0000228E */  lw         $v0, 0x0($s1)
    /* EE24 8001E624 1000A527 */  addiu      $a1, $sp, 0x10
    /* EE28 8001E628 8400428C */  lw         $v0, 0x84($v0)
    /* EE2C 8001E62C 00000000 */  nop
    /* EE30 8001E630 09F84000 */  jalr       $v0
    /* EE34 8001E634 21300000 */   addu      $a2, $zero, $zero
    /* EE38 8001E638 21204002 */  addu       $a0, $s2, $zero
    /* EE3C 8001E63C 21280002 */  addu       $a1, $s0, $zero
    /* EE40 8001E640 01000634 */  ori        $a2, $zero, 0x1
    /* EE44 8001E644 A67B000C */  jal        CopyTripleArray
    /* EE48 8001E648 1000A727 */   addiu     $a3, $sp, 0x10
    /* EE4C 8001E64C 0C00228E */  lw         $v0, 0xC($s1)
    /* EE50 8001E650 00000000 */  nop
    /* EE54 8001E654 04004010 */  beqz       $v0, .Lfunc_8001E600_8001E668
    /* EE58 8001E658 21180000 */   addu      $v1, $zero, $zero
    /* EE5C 8001E65C 1400228E */  lw         $v0, 0x14($s1)
    /* EE60 8001E660 00000000 */  nop
    /* EE64 8001E664 38004324 */  addiu      $v1, $v0, 0x38
  .Lfunc_8001E600_8001E668:
    /* EE68 8001E668 0000428E */  lw         $v0, 0x0($s2)
    /* EE6C 8001E66C 0000638C */  lw         $v1, 0x0($v1)
    /* EE70 8001E670 00000000 */  nop
    /* EE74 8001E674 21104300 */  addu       $v0, $v0, $v1
    /* EE78 8001E678 000042AE */  sw         $v0, 0x0($s2)
    /* EE7C 8001E67C 0C00228E */  lw         $v0, 0xC($s1)
    /* EE80 8001E680 00000000 */  nop
    /* EE84 8001E684 04004010 */  beqz       $v0, .Lfunc_8001E600_8001E698
    /* EE88 8001E688 21180000 */   addu      $v1, $zero, $zero
    /* EE8C 8001E68C 1400228E */  lw         $v0, 0x14($s1)
    /* EE90 8001E690 00000000 */  nop
    /* EE94 8001E694 38004324 */  addiu      $v1, $v0, 0x38
  .Lfunc_8001E600_8001E698:
    /* EE98 8001E698 0400428E */  lw         $v0, 0x4($s2)
    /* EE9C 8001E69C 0400638C */  lw         $v1, 0x4($v1)
    /* EEA0 8001E6A0 00000000 */  nop
    /* EEA4 8001E6A4 21104300 */  addu       $v0, $v0, $v1
    /* EEA8 8001E6A8 040042AE */  sw         $v0, 0x4($s2)
    /* EEAC 8001E6AC 0C00228E */  lw         $v0, 0xC($s1)
    /* EEB0 8001E6B0 00000000 */  nop
    /* EEB4 8001E6B4 04004010 */  beqz       $v0, .Lfunc_8001E600_8001E6C8
    /* EEB8 8001E6B8 21180000 */   addu      $v1, $zero, $zero
    /* EEBC 8001E6BC 1400228E */  lw         $v0, 0x14($s1)
    /* EEC0 8001E6C0 00000000 */  nop
    /* EEC4 8001E6C4 38004324 */  addiu      $v1, $v0, 0x38
  .Lfunc_8001E600_8001E6C8:
    /* EEC8 8001E6C8 0800428E */  lw         $v0, 0x8($s2)
    /* EECC 8001E6CC 0800638C */  lw         $v1, 0x8($v1)
    /* EED0 8001E6D0 00000000 */  nop
    /* EED4 8001E6D4 21104300 */  addu       $v0, $v0, $v1
    /* EED8 8001E6D8 080042AE */  sw         $v0, 0x8($s2)
    /* EEDC 8001E6DC 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* EEE0 8001E6E0 3800B28F */  lw         $s2, 0x38($sp)
    /* EEE4 8001E6E4 3400B18F */  lw         $s1, 0x34($sp)
    /* EEE8 8001E6E8 3000B08F */  lw         $s0, 0x30($sp)
    /* EEEC 8001E6EC 4000BD27 */  addiu      $sp, $sp, 0x40
    /* EEF0 8001E6F0 0800E003 */  jr         $ra
    /* EEF4 8001E6F4 00000000 */   nop
endlabel func_8001E600
