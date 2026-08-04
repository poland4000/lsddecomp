.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SpriteSet__PlayAnimation2, 0xC8

glabel SpriteSet__PlayAnimation2
    /* 31614 80040E14 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 31618 80040E18 2400B1AF */  sw         $s1, 0x24($sp)
    /* 3161C 80040E1C 21888000 */  addu       $s1, $a0, $zero
    /* 31620 80040E20 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 31624 80040E24 2800B2AF */  sw         $s2, 0x28($sp)
    /* 31628 80040E28 2000B0AF */  sw         $s0, 0x20($sp)
    /* 3162C 80040E2C 0C00228E */  lw         $v0, 0xC($s1)
    /* 31630 80040E30 00000000 */  nop
    /* 31634 80040E34 22004010 */  beqz       $v0, .Lfunc_80040E14_80040EC0
    /* 31638 80040E38 2190A000 */   addu      $s2, $a1, $zero
    /* 3163C 80040E3C 0F07010C */  jal        func_80041C3C
    /* 31640 80040E40 21800000 */   addu      $s0, $zero, $zero
    /* 31644 80040E44 21202002 */  addu       $a0, $s1, $zero
    /* 31648 80040E48 BC00428C */  lw         $v0, 0xBC($v0)
    /* 3164C 80040E4C 00000000 */  nop
    /* 31650 80040E50 09F84000 */  jalr       $v0
    /* 31654 80040E54 21284002 */   addu      $a1, $s2, $zero
    /* 31658 80040E58 0000428E */  lw         $v0, 0x0($s2)
    /* 3165C 80040E5C 0400438E */  lw         $v1, 0x4($s2)
    /* 31660 80040E60 1000A2AF */  sw         $v0, 0x10($sp)
    /* 31664 80040E64 1400A3AF */  sw         $v1, 0x14($sp)
    /* 31668 80040E68 A9002292 */  lbu        $v0, 0xA9($s1)
    /* 3166C 80040E6C B400328E */  lw         $s2, 0xB4($s1)
    /* 31670 80040E70 13004018 */  blez       $v0, .Lfunc_80040E14_80040EC0
    /* 31674 80040E74 00000000 */   nop
  .Lfunc_80040E14_80040E78:
    /* 31678 80040E78 0000448E */  lw         $a0, 0x0($s2)
    /* 3167C 80040E7C 00000000 */  nop
    /* 31680 80040E80 0000828C */  lw         $v0, 0x0($a0)
    /* 31684 80040E84 00000000 */  nop
    /* 31688 80040E88 BC00428C */  lw         $v0, 0xBC($v0)
    /* 3168C 80040E8C 00000000 */  nop
    /* 31690 80040E90 09F84000 */  jalr       $v0
    /* 31694 80040E94 1000A527 */   addiu     $a1, $sp, 0x10
    /* 31698 80040E98 1000A28F */  lw         $v0, 0x10($sp)
    /* 3169C 80040E9C B000238E */  lw         $v1, 0xB0($s1)
    /* 316A0 80040EA0 00000000 */  nop
    /* 316A4 80040EA4 21104300 */  addu       $v0, $v0, $v1
    /* 316A8 80040EA8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 316AC 80040EAC A9002292 */  lbu        $v0, 0xA9($s1)
    /* 316B0 80040EB0 01001026 */  addiu      $s0, $s0, 0x1
    /* 316B4 80040EB4 2A100202 */  slt        $v0, $s0, $v0
    /* 316B8 80040EB8 EFFF4014 */  bnez       $v0, .Lfunc_80040E14_80040E78
    /* 316BC 80040EBC 04005226 */   addiu     $s2, $s2, 0x4
  .Lfunc_80040E14_80040EC0:
    /* 316C0 80040EC0 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 316C4 80040EC4 2800B28F */  lw         $s2, 0x28($sp)
    /* 316C8 80040EC8 2400B18F */  lw         $s1, 0x24($sp)
    /* 316CC 80040ECC 2000B08F */  lw         $s0, 0x20($sp)
    /* 316D0 80040ED0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 316D4 80040ED4 0800E003 */  jr         $ra
    /* 316D8 80040ED8 00000000 */   nop
endlabel SpriteSet__PlayAnimation2
