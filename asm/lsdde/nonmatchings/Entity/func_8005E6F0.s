.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005E6F0, 0xB8

glabel func_8005E6F0
    /* 4EEF0 8005E6F0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4EEF4 8005E6F4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4EEF8 8005E6F8 21808000 */  addu       $s0, $a0, $zero
    /* 4EEFC 8005E6FC 1800BFAF */  sw         $ra, 0x18($sp)
    /* 4EF00 8005E700 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4EF04 8005E704 0000028E */  lw         $v0, 0x0($s0)
    /* 4EF08 8005E708 00000000 */  nop
    /* 4EF0C 8005E70C 4801428C */  lw         $v0, 0x148($v0)
    /* 4EF10 8005E710 00000000 */  nop
    /* 4EF14 8005E714 09F84000 */  jalr       $v0
    /* 4EF18 8005E718 2188A000 */   addu      $s1, $a1, $zero
    /* 4EF1C 8005E71C 100022AE */  sw         $v0, 0x10($s1)
    /* 4EF20 8005E720 8000028E */  lw         $v0, 0x80($s0)
    /* 4EF24 8005E724 00000000 */  nop
    /* 4EF28 8005E728 C21F0200 */  srl        $v1, $v0, 31
    /* 4EF2C 8005E72C 21104300 */  addu       $v0, $v0, $v1
    /* 4EF30 8005E730 0400238E */  lw         $v1, 0x4($s1)
    /* 4EF34 8005E734 43100200 */  sra        $v0, $v0, 1
    /* 4EF38 8005E738 1A006200 */  div        $zero, $v1, $v0
    /* 4EF3C 8005E73C 02004014 */  bnez       $v0, .Lfunc_8005E6F0_8005E748
    /* 4EF40 8005E740 00000000 */   nop
    /* 4EF44 8005E744 0D000700 */  break      7
  .Lfunc_8005E6F0_8005E748:
    /* 4EF48 8005E748 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 4EF4C 8005E74C 04004114 */  bne        $v0, $at, .Lfunc_8005E6F0_8005E760
    /* 4EF50 8005E750 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 4EF54 8005E754 02006114 */  bne        $v1, $at, .Lfunc_8005E6F0_8005E760
    /* 4EF58 8005E758 00000000 */   nop
    /* 4EF5C 8005E75C 0D000600 */  break      6
  .Lfunc_8005E6F0_8005E760:
    /* 4EF60 8005E760 10100000 */  mfhi       $v0
    /* 4EF64 8005E764 00000000 */  nop
    /* 4EF68 8005E768 03004014 */  bnez       $v0, .Lfunc_8005E6F0_8005E778
    /* 4EF6C 8005E76C 21200002 */   addu      $a0, $s0, $zero
    /* 4EF70 8005E770 0A000234 */  ori        $v0, $zero, 0xA
    /* 4EF74 8005E774 1C0022AE */  sw         $v0, 0x1C($s1)
  .Lfunc_8005E6F0_8005E778:
    /* 4EF78 8005E778 0000828C */  lw         $v0, 0x0($a0)
    /* 4EF7C 8005E77C E2FF0524 */  addiu      $a1, $zero, -0x1E
    /* 4EF80 8005E780 C400428C */  lw         $v0, 0xC4($v0)
    /* 4EF84 8005E784 00000000 */  nop
    /* 4EF88 8005E788 09F84000 */  jalr       $v0
    /* 4EF8C 8005E78C 21300000 */   addu      $a2, $zero, $zero
    /* 4EF90 8005E790 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4EF94 8005E794 1400B18F */  lw         $s1, 0x14($sp)
    /* 4EF98 8005E798 1000B08F */  lw         $s0, 0x10($sp)
    /* 4EF9C 8005E79C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4EFA0 8005E7A0 0800E003 */  jr         $ra
    /* 4EFA4 8005E7A4 00000000 */   nop
endlabel func_8005E6F0
