.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching AnimEffect__FreeFrames, 0x144

glabel AnimEffect__FreeFrames
    /* 2D850 8003D050 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2D854 8003D054 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2D858 8003D058 21808000 */  addu       $s0, $a0, $zero
    /* 2D85C 8003D05C 2400BFAF */  sw         $ra, 0x24($sp)
    /* 2D860 8003D060 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2D864 8003D064 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2D868 8003D068 4C00038E */  lw         $v1, 0x4C($s0)
    /* 2D86C 8003D06C 00000000 */  nop
    /* 2D870 8003D070 41006010 */  beqz       $v1, .Lfunc_8003D050_8003D178
    /* 2D874 8003D074 00000000 */   nop
    /* 2D878 8003D078 0000628C */  lw         $v0, 0x0($v1)
    /* 2D87C 8003D07C 00000000 */  nop
    /* 2D880 8003D080 09004010 */  beqz       $v0, .Lfunc_8003D050_8003D0A8
    /* 2D884 8003D084 00000000 */   nop
    /* 2D888 8003D088 0400648C */  lw         $a0, 0x4($v1)
    /* 2D88C 8003D08C 00000000 */  nop
    /* 2D890 8003D090 0000828C */  lw         $v0, 0x0($a0)
    /* 2D894 8003D094 00000000 */  nop
    /* 2D898 8003D098 0400428C */  lw         $v0, 0x4($v0)
    /* 2D89C 8003D09C 00000000 */  nop
    /* 2D8A0 8003D0A0 09F84000 */  jalr       $v0
    /* 2D8A4 8003D0A4 00000000 */   nop
  .Lfunc_8003D050_8003D0A8:
    /* 2D8A8 8003D0A8 6800048E */  lw         $a0, 0x68($s0)
    /* 2D8AC 8003D0AC 00000000 */  nop
    /* 2D8B0 8003D0B0 0000828C */  lw         $v0, 0x0($a0)
    /* 2D8B4 8003D0B4 00000000 */  nop
    /* 2D8B8 8003D0B8 0400428C */  lw         $v0, 0x4($v0)
    /* 2D8BC 8003D0BC 00000000 */  nop
    /* 2D8C0 8003D0C0 09F84000 */  jalr       $v0
    /* 2D8C4 8003D0C4 21880000 */   addu      $s1, $zero, $zero
    /* 2D8C8 8003D0C8 5000028E */  lw         $v0, 0x50($s0)
    /* 2D8CC 8003D0CC 5400128E */  lw         $s2, 0x54($s0)
    /* 2D8D0 8003D0D0 1D004018 */  blez       $v0, .Lfunc_8003D050_8003D148
    /* 2D8D4 8003D0D4 00000000 */   nop
  .Lfunc_8003D050_8003D0D8:
    /* 2D8D8 8003D0D8 4C00028E */  lw         $v0, 0x4C($s0)
    /* 2D8DC 8003D0DC 00000000 */  nop
    /* 2D8E0 8003D0E0 2400438C */  lw         $v1, 0x24($v0)
    /* 2D8E4 8003D0E4 80101100 */  sll        $v0, $s1, 2
    /* 2D8E8 8003D0E8 21104300 */  addu       $v0, $v0, $v1
    /* 2D8EC 8003D0EC 0000428C */  lw         $v0, 0x0($v0)
    /* 2D8F0 8003D0F0 00000000 */  nop
    /* 2D8F4 8003D0F4 07004010 */  beqz       $v0, .Lfunc_8003D050_8003D114
    /* 2D8F8 8003D0F8 00000000 */   nop
    /* 2D8FC 8003D0FC 0000028E */  lw         $v0, 0x0($s0)
    /* 2D900 8003D100 580011AE */  sw         $s1, 0x58($s0)
    /* 2D904 8003D104 FC00428C */  lw         $v0, 0xFC($v0)
    /* 2D908 8003D108 00000000 */  nop
    /* 2D90C 8003D10C 09F84000 */  jalr       $v0
    /* 2D910 8003D110 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_8003D050_8003D114:
    /* 2D914 8003D114 0000448E */  lw         $a0, 0x0($s2)
    /* 2D918 8003D118 00000000 */  nop
    /* 2D91C 8003D11C 0000828C */  lw         $v0, 0x0($a0)
    /* 2D920 8003D120 00000000 */  nop
    /* 2D924 8003D124 0400428C */  lw         $v0, 0x4($v0)
    /* 2D928 8003D128 00000000 */  nop
    /* 2D92C 8003D12C 09F84000 */  jalr       $v0
    /* 2D930 8003D130 01003126 */   addiu     $s1, $s1, 0x1
    /* 2D934 8003D134 5000028E */  lw         $v0, 0x50($s0)
    /* 2D938 8003D138 00000000 */  nop
    /* 2D93C 8003D13C 2A102202 */  slt        $v0, $s1, $v0
    /* 2D940 8003D140 E5FF4014 */  bnez       $v0, .Lfunc_8003D050_8003D0D8
    /* 2D944 8003D144 04005226 */   addiu     $s2, $s2, 0x4
  .Lfunc_8003D050_8003D148:
    /* 2D948 8003D148 6400048E */  lw         $a0, 0x64($s0)
    /* 2D94C 8003D14C 3F5F000C */  jal        BMemFree
    /* 2D950 8003D150 00000000 */   nop
    /* 2D954 8003D154 6000048E */  lw         $a0, 0x60($s0)
    /* 2D958 8003D158 3F5F000C */  jal        BMemFree
    /* 2D95C 8003D15C 00000000 */   nop
    /* 2D960 8003D160 5C00048E */  lw         $a0, 0x5C($s0)
    /* 2D964 8003D164 3F5F000C */  jal        BMemFree
    /* 2D968 8003D168 00000000 */   nop
    /* 2D96C 8003D16C 5400048E */  lw         $a0, 0x54($s0)
    /* 2D970 8003D170 3F5F000C */  jal        BMemFree
    /* 2D974 8003D174 00000000 */   nop
  .Lfunc_8003D050_8003D178:
    /* 2D978 8003D178 2400BF8F */  lw         $ra, 0x24($sp)
    /* 2D97C 8003D17C 2000B28F */  lw         $s2, 0x20($sp)
    /* 2D980 8003D180 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2D984 8003D184 1800B08F */  lw         $s0, 0x18($sp)
    /* 2D988 8003D188 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2D98C 8003D18C 0800E003 */  jr         $ra
    /* 2D990 8003D190 00000000 */   nop
endlabel AnimEffect__FreeFrames
