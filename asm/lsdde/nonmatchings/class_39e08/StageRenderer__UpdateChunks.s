.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__UpdateChunks, 0x230

glabel StageRenderer__UpdateChunks
    /* 3BF00 8004B700 58FFBD27 */  addiu      $sp, $sp, -0xA8
    /* 3BF04 8004B704 8C00B3AF */  sw         $s3, 0x8C($sp)
    /* 3BF08 8004B708 21988000 */  addu       $s3, $a0, $zero
    /* 3BF0C 8004B70C 9400B5AF */  sw         $s5, 0x94($sp)
    /* 3BF10 8004B710 21A8A000 */  addu       $s5, $a1, $zero
    /* 3BF14 8004B714 8800B2AF */  sw         $s2, 0x88($sp)
    /* 3BF18 8004B718 2190C000 */  addu       $s2, $a2, $zero
    /* 3BF1C 8004B71C 8400B1AF */  sw         $s1, 0x84($sp)
    /* 3BF20 8004B720 2188E000 */  addu       $s1, $a3, $zero
    /* 3BF24 8004B724 A400BFAF */  sw         $ra, 0xA4($sp)
    /* 3BF28 8004B728 A000BEAF */  sw         $fp, 0xA0($sp)
    /* 3BF2C 8004B72C 9C00B7AF */  sw         $s7, 0x9C($sp)
    /* 3BF30 8004B730 9800B6AF */  sw         $s6, 0x98($sp)
    /* 3BF34 8004B734 9000B4AF */  sw         $s4, 0x90($sp)
    /* 3BF38 8004B738 70002012 */  beqz       $s1, .Lfunc_8004B700_8004B8FC
    /* 3BF3C 8004B73C 8000B0AF */   sw        $s0, 0x80($sp)
    /* 3BF40 8004B740 6800628E */  lw         $v0, 0x68($s3)
    /* 3BF44 8004B744 00000000 */  nop
    /* 3BF48 8004B748 00005784 */  lh         $s7, 0x0($v0)
    /* 3BF4C 8004B74C 00000000 */  nop
    /* 3BF50 8004B750 1A00B702 */  div        $zero, $s5, $s7
    /* 3BF54 8004B754 0200E016 */  bnez       $s7, .Lfunc_8004B700_8004B760
    /* 3BF58 8004B758 00000000 */   nop
    /* 3BF5C 8004B75C 0D000700 */  break      7
  .Lfunc_8004B700_8004B760:
    /* 3BF60 8004B760 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3BF64 8004B764 0400E116 */  bne        $s7, $at, .Lfunc_8004B700_8004B778
    /* 3BF68 8004B768 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3BF6C 8004B76C 0200A116 */  bne        $s5, $at, .Lfunc_8004B700_8004B778
    /* 3BF70 8004B770 00000000 */   nop
    /* 3BF74 8004B774 0D000600 */  break      6
  .Lfunc_8004B700_8004B778:
    /* 3BF78 8004B778 12100000 */  mflo       $v0
    /* 3BF7C 8004B77C 21B00000 */  addu       $s6, $zero, $zero
    /* 3BF80 8004B780 21800000 */  addu       $s0, $zero, $zero
    /* 3BF84 8004B784 21A00000 */  addu       $s4, $zero, $zero
    /* 3BF88 8004B788 01005E30 */  andi       $fp, $v0, 0x1
    /* 3BF8C 8004B78C 4C2E010C */  jal        StageRenderer__StreamChunks
    /* 3BF90 8004B790 2130C003 */   addu      $a2, $fp, $zero
    /* 3BF94 8004B794 7800A2AF */  sw         $v0, 0x78($sp)
  .Lfunc_8004B700_8004B798:
    /* 3BF98 8004B798 0000628E */  lw         $v0, 0x0($s3)
    /* 3BF9C 8004B79C 21206002 */  addu       $a0, $s3, $zero
    /* 3BFA0 8004B7A0 1801428C */  lw         $v0, 0x118($v0)
    /* 3BFA4 8004B7A4 00000000 */  nop
    /* 3BFA8 8004B7A8 09F84000 */  jalr       $v0
    /* 3BFAC 8004B7AC 21280002 */   addu      $a1, $s0, $zero
    /* 3BFB0 8004B7B0 00002392 */  lbu        $v1, 0x0($s1)
    /* 3BFB4 8004B7B4 21304000 */  addu       $a2, $v0, $zero
    /* 3BFB8 8004B7B8 0200C3A4 */  sh         $v1, 0x2($a2)
    /* 3BFBC 8004B7BC 01002292 */  lbu        $v0, 0x1($s1)
    /* 3BFC0 8004B7C0 00000000 */  nop
    /* 3BFC4 8004B7C4 38004010 */  beqz       $v0, .Lfunc_8004B700_8004B8A8
    /* 3BFC8 8004B7C8 00000000 */   nop
    /* 3BFCC 8004B7CC 00002392 */  lbu        $v1, 0x0($s1)
    /* 3BFD0 8004B7D0 00000000 */  nop
    /* 3BFD4 8004B7D4 40100300 */  sll        $v0, $v1, 1
    /* 3BFD8 8004B7D8 21104300 */  addu       $v0, $v0, $v1
    /* 3BFDC 8004B7DC 80100200 */  sll        $v0, $v0, 2
    /* 3BFE0 8004B7E0 0880033C */  lui        $v1, %hi(gStageBoundsTable)
    /* 3BFE4 8004B7E4 38686324 */  addiu      $v1, $v1, %lo(gStageBoundsTable)
    /* 3BFE8 8004B7E8 21284300 */  addu       $a1, $v0, $v1
    /* 3BFEC 8004B7EC 6800628E */  lw         $v0, 0x68($s3)
    /* 3BFF0 8004B7F0 0C00C38C */  lw         $v1, 0xC($a2)
    /* 3BFF4 8004B7F4 0400428C */  lw         $v0, 0x4($v0)
    /* 3BFF8 8004B7F8 1400648C */  lw         $a0, 0x14($v1)
    /* 3BFFC 8004B7FC 0D004014 */  bnez       $v0, .Lfunc_8004B700_8004B834
    /* 3C000 8004B800 00000000 */   nop
    /* 3C004 8004B804 0000428E */  lw         $v0, 0x0($s2)
    /* 3C008 8004B808 0000A38C */  lw         $v1, 0x0($a1)
    /* 3C00C 8004B80C 00000000 */  nop
    /* 3C010 8004B810 21104300 */  addu       $v0, $v0, $v1
    /* 3C014 8004B814 180082AC */  sw         $v0, 0x18($a0)
    /* 3C018 8004B818 0400428E */  lw         $v0, 0x4($s2)
    /* 3C01C 8004B81C 00000000 */  nop
    /* 3C020 8004B820 1C0082AC */  sw         $v0, 0x1C($a0)
    /* 3C024 8004B824 0800428E */  lw         $v0, 0x8($s2)
    /* 3C028 8004B828 0800A38C */  lw         $v1, 0x8($a1)
    /* 3C02C 8004B82C 192E0108 */  j          .Lfunc_8004B700_8004B864
    /* 3C030 8004B830 21104300 */   addu      $v0, $v0, $v1
  .Lfunc_8004B700_8004B834:
    /* 3C034 8004B834 0000428E */  lw         $v0, 0x0($s2)
    /* 3C038 8004B838 00000000 */  nop
    /* 3C03C 8004B83C 00B04224 */  addiu      $v0, $v0, -0x5000
    /* 3C040 8004B840 180082AC */  sw         $v0, 0x18($a0)
    /* 3C044 8004B844 0400428E */  lw         $v0, 0x4($s2)
    /* 3C048 8004B848 0400A38C */  lw         $v1, 0x4($a1)
    /* 3C04C 8004B84C 00000000 */  nop
    /* 3C050 8004B850 21104300 */  addu       $v0, $v0, $v1
    /* 3C054 8004B854 1C0082AC */  sw         $v0, 0x1C($a0)
    /* 3C058 8004B858 0800428E */  lw         $v0, 0x8($s2)
    /* 3C05C 8004B85C 00000000 */  nop
    /* 3C060 8004B860 00B04224 */  addiu      $v0, $v0, -0x5000
  .Lfunc_8004B700_8004B864:
    /* 3C064 8004B864 200082AC */  sw         $v0, 0x20($a0)
    /* 3C068 8004B868 21206002 */  addu       $a0, $s3, $zero
    /* 3C06C 8004B86C 2000A527 */  addiu      $a1, $sp, 0x20
    /* 3C070 8004B870 2128B400 */  addu       $a1, $a1, $s4
    /* 3C074 8004B874 0C00C28C */  lw         $v0, 0xC($a2)
    /* 3C078 8004B878 2130E002 */  addu       $a2, $s7, $zero
    /* 3C07C 8004B87C 1400428C */  lw         $v0, 0x14($v0)
    /* 3C080 8004B880 0C009426 */  addiu      $s4, $s4, 0xC
    /* 3C084 8004B884 000040AC */  sw         $zero, 0x0($v0)
    /* 3C088 8004B888 7800A88F */  lw         $t0, 0x78($sp)
    /* 3C08C 8004B88C 0100D626 */  addiu      $s6, $s6, 0x1
    /* 3C090 8004B890 1000B5AF */  sw         $s5, 0x10($sp)
    /* 3C094 8004B894 1400A8AF */  sw         $t0, 0x14($sp)
    /* 3C098 8004B898 00002292 */  lbu        $v0, 0x0($s1)
    /* 3C09C 8004B89C 2138C003 */  addu       $a3, $fp, $zero
    /* 3C0A0 8004B8A0 902E010C */  jal        StageRenderer__LoadChunk
    /* 3C0A4 8004B8A4 1800A2AF */   sw        $v0, 0x18($sp)
  .Lfunc_8004B700_8004B8A8:
    /* 3C0A8 8004B8A8 01001026 */  addiu      $s0, $s0, 0x1
    /* 3C0AC 8004B8AC 0700022A */  slti       $v0, $s0, 0x7
    /* 3C0B0 8004B8B0 B9FF4014 */  bnez       $v0, .Lfunc_8004B700_8004B798
    /* 3C0B4 8004B8B4 02003126 */   addiu     $s1, $s1, 0x2
    /* 3C0B8 8004B8B8 21800000 */  addu       $s0, $zero, $zero
    /* 3C0BC 8004B8BC EC000434 */  ori        $a0, $zero, 0xEC
  .Lfunc_8004B700_8004B8C0:
    /* 3C0C0 8004B8C0 21306402 */  addu       $a2, $s3, $a0
    /* 3C0C4 8004B8C4 0400C38C */  lw         $v1, 0x4($a2)
    /* 3C0C8 8004B8C8 0200C294 */  lhu        $v0, 0x2($a2)
    /* 3C0CC 8004B8CC 01001026 */  addiu      $s0, $s0, 0x1
    /* 3C0D0 8004B8D0 320062A4 */  sh         $v0, 0x32($v1)
    /* 3C0D4 8004B8D4 0700022A */  slti       $v0, $s0, 0x7
    /* 3C0D8 8004B8D8 F9FF4014 */  bnez       $v0, .Lfunc_8004B700_8004B8C0
    /* 3C0DC 8004B8DC 1C008424 */   addiu     $a0, $a0, 0x1C
    /* 3C0E0 8004B8E0 21206002 */  addu       $a0, $s3, $zero
    /* 3C0E4 8004B8E4 0000828C */  lw         $v0, 0x0($a0)
    /* 3C0E8 8004B8E8 2000A527 */  addiu      $a1, $sp, 0x20
    /* 3C0EC 8004B8EC FC00428C */  lw         $v0, 0xFC($v0)
    /* 3C0F0 8004B8F0 00000000 */  nop
    /* 3C0F4 8004B8F4 09F84000 */  jalr       $v0
    /* 3C0F8 8004B8F8 2130C002 */   addu      $a2, $s6, $zero
  .Lfunc_8004B700_8004B8FC:
    /* 3C0FC 8004B8FC A400BF8F */  lw         $ra, 0xA4($sp)
    /* 3C100 8004B900 A000BE8F */  lw         $fp, 0xA0($sp)
    /* 3C104 8004B904 9C00B78F */  lw         $s7, 0x9C($sp)
    /* 3C108 8004B908 9800B68F */  lw         $s6, 0x98($sp)
    /* 3C10C 8004B90C 9400B58F */  lw         $s5, 0x94($sp)
    /* 3C110 8004B910 9000B48F */  lw         $s4, 0x90($sp)
    /* 3C114 8004B914 8C00B38F */  lw         $s3, 0x8C($sp)
    /* 3C118 8004B918 8800B28F */  lw         $s2, 0x88($sp)
    /* 3C11C 8004B91C 8400B18F */  lw         $s1, 0x84($sp)
    /* 3C120 8004B920 8000B08F */  lw         $s0, 0x80($sp)
    /* 3C124 8004B924 A800BD27 */  addiu      $sp, $sp, 0xA8
    /* 3C128 8004B928 0800E003 */  jr         $ra
    /* 3C12C 8004B92C 00000000 */   nop
endlabel StageRenderer__UpdateChunks
