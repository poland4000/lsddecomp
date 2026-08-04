.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdSearchFile, 0x2E8

glabel CdSearchFile
    /* 1BE40 8002B640 0780033C */  lui        $v1, %hi(D_8006D93C)
    /* 1BE44 8002B644 3CD9638C */  lw         $v1, %lo(D_8006D93C)($v1)
    /* 1BE48 8002B648 0780023C */  lui        $v0, %hi(D_8006D614)
    /* 1BE4C 8002B64C 14D6428C */  lw         $v0, %lo(D_8006D614)($v0)
    /* 1BE50 8002B650 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 1BE54 8002B654 4400B5AF */  sw         $s5, 0x44($sp)
    /* 1BE58 8002B658 21A88000 */  addu       $s5, $a0, $zero
    /* 1BE5C 8002B65C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 1BE60 8002B660 2198A000 */  addu       $s3, $a1, $zero
    /* 1BE64 8002B664 4800BFAF */  sw         $ra, 0x48($sp)
    /* 1BE68 8002B668 4000B4AF */  sw         $s4, 0x40($sp)
    /* 1BE6C 8002B66C 3800B2AF */  sw         $s2, 0x38($sp)
    /* 1BE70 8002B670 3400B1AF */  sw         $s1, 0x34($sp)
    /* 1BE74 8002B674 0A006210 */  beq        $v1, $v0, .Lfunc_8002B640_8002B6A0
    /* 1BE78 8002B678 3000B0AF */   sw        $s0, 0x30($sp)
    /* 1BE7C 8002B67C 53AE000C */  jal        CdDirSeek
    /* 1BE80 8002B680 00000000 */   nop
    /* 1BE84 8002B684 9E004010 */  beqz       $v0, .Lfunc_8002B640_8002B900
    /* 1BE88 8002B688 21100000 */   addu      $v0, $zero, $zero
    /* 1BE8C 8002B68C 0780023C */  lui        $v0, %hi(D_8006D614)
    /* 1BE90 8002B690 14D6428C */  lw         $v0, %lo(D_8006D614)($v0)
    /* 1BE94 8002B694 00000000 */  nop
    /* 1BE98 8002B698 0780013C */  lui        $at, %hi(D_8006D93C)
    /* 1BE9C 8002B69C 3CD922AC */  sw         $v0, %lo(D_8006D93C)($at)
  .Lfunc_8002B640_8002B6A0:
    /* 1BEA0 8002B6A0 00006392 */  lbu        $v1, 0x0($s3)
    /* 1BEA4 8002B6A4 5C000234 */  ori        $v0, $zero, 0x5C
    /* 1BEA8 8002B6A8 05006210 */  beq        $v1, $v0, .Lfunc_8002B640_8002B6C0
    /* 1BEAC 8002B6AC 01000434 */   ori       $a0, $zero, 0x1
    /* 1BEB0 8002B6B0 40AE0008 */  j          .Lfunc_8002B640_8002B900
    /* 1BEB4 8002B6B4 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_8002B640_8002B6B8:
    /* 1BEB8 8002B6B8 D4AD0008 */  j          .Lfunc_8002B640_8002B750
    /* 1BEBC 8002B6BC 1000A0A3 */   sb        $zero, 0x10($sp)
  .Lfunc_8002B640_8002B6C0:
    /* 1BEC0 8002B6C0 1000A0A3 */  sb         $zero, 0x10($sp)
    /* 1BEC4 8002B6C4 21806002 */  addu       $s0, $s3, $zero
    /* 1BEC8 8002B6C8 21900000 */  addu       $s2, $zero, $zero
    /* 1BECC 8002B6CC 5C001434 */  ori        $s4, $zero, 0x5C
  .Lfunc_8002B640_8002B6D0:
    /* 1BED0 8002B6D0 00000292 */  lbu        $v0, 0x0($s0)
    /* 1BED4 8002B6D4 00000000 */  nop
    /* 1BED8 8002B6D8 0E005410 */  beq        $v0, $s4, .Lfunc_8002B640_8002B714
    /* 1BEDC 8002B6DC 1000B127 */   addiu     $s1, $sp, 0x10
    /* 1BEE0 8002B6E0 5C000334 */  ori        $v1, $zero, 0x5C
    /* 1BEE4 8002B6E4 00000292 */  lbu        $v0, 0x0($s0)
  .Lfunc_8002B640_8002B6E8:
    /* 1BEE8 8002B6E8 00000000 */  nop
    /* 1BEEC 8002B6EC 19004010 */  beqz       $v0, .Lfunc_8002B640_8002B754
    /* 1BEF0 8002B6F0 0800422A */   slti      $v0, $s2, 0x8
    /* 1BEF4 8002B6F4 00000292 */  lbu        $v0, 0x0($s0)
    /* 1BEF8 8002B6F8 01001026 */  addiu      $s0, $s0, 0x1
    /* 1BEFC 8002B6FC 000022A2 */  sb         $v0, 0x0($s1)
    /* 1BF00 8002B700 00000292 */  lbu        $v0, 0x0($s0)
    /* 1BF04 8002B704 00000000 */  nop
    /* 1BF08 8002B708 F7FF4314 */  bne        $v0, $v1, .Lfunc_8002B640_8002B6E8
    /* 1BF0C 8002B70C 01003126 */   addiu     $s1, $s1, 0x1
    /* 1BF10 8002B710 00000292 */  lbu        $v0, 0x0($s0)
  .Lfunc_8002B640_8002B714:
    /* 1BF14 8002B714 00000000 */  nop
    /* 1BF18 8002B718 0E004010 */  beqz       $v0, .Lfunc_8002B640_8002B754
    /* 1BF1C 8002B71C 0800422A */   slti      $v0, $s2, 0x8
    /* 1BF20 8002B720 01001026 */  addiu      $s0, $s0, 0x1
    /* 1BF24 8002B724 000020A2 */  sb         $zero, 0x0($s1)
    /* 1BF28 8002B728 10AF000C */  jal        func_8002BC40
    /* 1BF2C 8002B72C 1000A527 */   addiu     $a1, $sp, 0x10
    /* 1BF30 8002B730 21204000 */  addu       $a0, $v0, $zero
    /* 1BF34 8002B734 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 1BF38 8002B738 DFFF8210 */  beq        $a0, $v0, .Lfunc_8002B640_8002B6B8
    /* 1BF3C 8002B73C 00000000 */   nop
    /* 1BF40 8002B740 01005226 */  addiu      $s2, $s2, 0x1
    /* 1BF44 8002B744 0800422A */  slti       $v0, $s2, 0x8
    /* 1BF48 8002B748 E1FF4014 */  bnez       $v0, .Lfunc_8002B640_8002B6D0
    /* 1BF4C 8002B74C 00000000 */   nop
  .Lfunc_8002B640_8002B750:
    /* 1BF50 8002B750 0800422A */  slti       $v0, $s2, 0x8
  .Lfunc_8002B640_8002B754:
    /* 1BF54 8002B754 0C004014 */  bnez       $v0, .Lfunc_8002B640_8002B788
    /* 1BF58 8002B758 00000000 */   nop
    /* 1BF5C 8002B75C 0780023C */  lui        $v0, %hi(gCdDebugLevel)
    /* 1BF60 8002B760 08D6428C */  lw         $v0, %lo(gCdDebugLevel)($v0)
    /* 1BF64 8002B764 00000000 */  nop
    /* 1BF68 8002B768 64004018 */  blez       $v0, .Lfunc_8002B640_8002B8FC
    /* 1BF6C 8002B76C 21286002 */   addu      $a1, $s3, $zero
    /* 1BF70 8002B770 0180043C */  lui        $a0, %hi(D_80010AEC)
    /* 1BF74 8002B774 EC0A8424 */  addiu      $a0, $a0, %lo(D_80010AEC)
    /* 1BF78 8002B778 084B000C */  jal        DebugPrintf
    /* 1BF7C 8002B77C 21304002 */   addu      $a2, $s2, $zero
    /* 1BF80 8002B780 40AE0008 */  j          .Lfunc_8002B640_8002B900
    /* 1BF84 8002B784 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_8002B640_8002B788:
    /* 1BF88 8002B788 1000A293 */  lbu        $v0, 0x10($sp)
    /* 1BF8C 8002B78C 00000000 */  nop
    /* 1BF90 8002B790 0A004014 */  bnez       $v0, .Lfunc_8002B640_8002B7BC
    /* 1BF94 8002B794 00000000 */   nop
    /* 1BF98 8002B798 0780023C */  lui        $v0, %hi(gCdDebugLevel)
    /* 1BF9C 8002B79C 08D6428C */  lw         $v0, %lo(gCdDebugLevel)($v0)
    /* 1BFA0 8002B7A0 00000000 */  nop
    /* 1BFA4 8002B7A4 55004018 */  blez       $v0, .Lfunc_8002B640_8002B8FC
    /* 1BFA8 8002B7A8 21286002 */   addu      $a1, $s3, $zero
    /* 1BFAC 8002B7AC 0180043C */  lui        $a0, %hi(D_80010B08)
    /* 1BFB0 8002B7B0 080B8424 */  addiu      $a0, $a0, %lo(D_80010B08)
    /* 1BFB4 8002B7B4 3DAE0008 */  j          .Lfunc_8002B640_8002B8F4
    /* 1BFB8 8002B7B8 00000000 */   nop
  .Lfunc_8002B640_8002B7BC:
    /* 1BFBC 8002B7BC 3BAF000C */  jal        func_8002BCEC
    /* 1BFC0 8002B7C0 000020A2 */   sb        $zero, 0x0($s1)
    /* 1BFC4 8002B7C4 0C004014 */  bnez       $v0, .Lfunc_8002B640_8002B7F8
    /* 1BFC8 8002B7C8 00000000 */   nop
    /* 1BFCC 8002B7CC 0780023C */  lui        $v0, %hi(gCdDebugLevel)
    /* 1BFD0 8002B7D0 08D6428C */  lw         $v0, %lo(gCdDebugLevel)($v0)
    /* 1BFD4 8002B7D4 00000000 */  nop
    /* 1BFD8 8002B7D8 49004018 */  blez       $v0, .Lfunc_8002B640_8002B900
    /* 1BFDC 8002B7DC 21100000 */   addu      $v0, $zero, $zero
    /* 1BFE0 8002B7E0 0180043C */  lui        $a0, %hi(D_80010B20)
    /* 1BFE4 8002B7E4 200B8424 */  addiu      $a0, $a0, %lo(D_80010B20)
    /* 1BFE8 8002B7E8 084B000C */  jal        DebugPrintf
    /* 1BFEC 8002B7EC 00000000 */   nop
    /* 1BFF0 8002B7F0 40AE0008 */  j          .Lfunc_8002B640_8002B900
    /* 1BFF4 8002B7F4 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_8002B640_8002B7F8:
    /* 1BFF8 8002B7F8 0780023C */  lui        $v0, %hi(gCdDebugLevel)
    /* 1BFFC 8002B7FC 08D6428C */  lw         $v0, %lo(gCdDebugLevel)($v0)
    /* 1C000 8002B800 00000000 */  nop
    /* 1C004 8002B804 02004228 */  slti       $v0, $v0, 0x2
    /* 1C008 8002B808 05004014 */  bnez       $v0, .Lfunc_8002B640_8002B820
    /* 1C00C 8002B80C 21900000 */   addu      $s2, $zero, $zero
    /* 1C010 8002B810 0180043C */  lui        $a0, %hi(D_80010B3C)
    /* 1C014 8002B814 3C0B8424 */  addiu      $a0, $a0, %lo(D_80010B3C)
    /* 1C018 8002B818 084B000C */  jal        DebugPrintf
    /* 1C01C 8002B81C 1000A527 */   addiu     $a1, $sp, 0x10
  .Lfunc_8002B640_8002B820:
    /* 1C020 8002B820 0980023C */  lui        $v0, %hi(D_8008B3F8)
    /* 1C024 8002B824 F8B34224 */  addiu      $v0, $v0, %lo(D_8008B3F8)
    /* 1C028 8002B828 F8FF5024 */  addiu      $s0, $v0, -0x8
    /* 1C02C 8002B82C 21984000 */  addu       $s3, $v0, $zero
    /* 1C030 8002B830 21880000 */  addu       $s1, $zero, $zero
  .Lfunc_8002B640_8002B834:
    /* 1C034 8002B834 0980013C */  lui        $at, %hi(D_8008B3F8)
    /* 1C038 8002B838 F8B32124 */  addiu      $at, $at, %lo(D_8008B3F8)
    /* 1C03C 8002B83C 21083100 */  addu       $at, $at, $s1
    /* 1C040 8002B840 00002290 */  lbu        $v0, 0x0($at)
    /* 1C044 8002B844 00000000 */  nop
    /* 1C048 8002B848 23004010 */  beqz       $v0, .Lfunc_8002B640_8002B8D8
    /* 1C04C 8002B84C 21206002 */   addu      $a0, $s3, $zero
    /* 1C050 8002B850 4AAE000C */  jal        CdFileNameMatch
    /* 1C054 8002B854 1000A527 */   addiu     $a1, $sp, 0x10
    /* 1C058 8002B858 19004010 */  beqz       $v0, .Lfunc_8002B640_8002B8C0
    /* 1C05C 8002B85C 00000000 */   nop
    /* 1C060 8002B860 0780023C */  lui        $v0, %hi(gCdDebugLevel)
    /* 1C064 8002B864 08D6428C */  lw         $v0, %lo(gCdDebugLevel)($v0)
    /* 1C068 8002B868 00000000 */  nop
    /* 1C06C 8002B86C 02004228 */  slti       $v0, $v0, 0x2
    /* 1C070 8002B870 05004014 */  bnez       $v0, .Lfunc_8002B640_8002B888
    /* 1C074 8002B874 00000000 */   nop
    /* 1C078 8002B878 0180043C */  lui        $a0, %hi(D_80010B5C)
    /* 1C07C 8002B87C 5C0B8424 */  addiu      $a0, $a0, %lo(D_80010B5C)
    /* 1C080 8002B880 084B000C */  jal        DebugPrintf
    /* 1C084 8002B884 1000A527 */   addiu     $a1, $sp, 0x10
  .Lfunc_8002B640_8002B888:
    /* 1C088 8002B888 0000028E */  lw         $v0, 0x0($s0)
    /* 1C08C 8002B88C 0400038E */  lw         $v1, 0x4($s0)
    /* 1C090 8002B890 0800048E */  lw         $a0, 0x8($s0)
    /* 1C094 8002B894 0C00058E */  lw         $a1, 0xC($s0)
    /* 1C098 8002B898 0000A2AE */  sw         $v0, 0x0($s5)
    /* 1C09C 8002B89C 0400A3AE */  sw         $v1, 0x4($s5)
    /* 1C0A0 8002B8A0 0800A4AE */  sw         $a0, 0x8($s5)
    /* 1C0A4 8002B8A4 0C00A5AE */  sw         $a1, 0xC($s5)
    /* 1C0A8 8002B8A8 1000028E */  lw         $v0, 0x10($s0)
    /* 1C0AC 8002B8AC 1400038E */  lw         $v1, 0x14($s0)
    /* 1C0B0 8002B8B0 1000A2AE */  sw         $v0, 0x10($s5)
    /* 1C0B4 8002B8B4 1400A3AE */  sw         $v1, 0x14($s5)
    /* 1C0B8 8002B8B8 40AE0008 */  j          .Lfunc_8002B640_8002B900
    /* 1C0BC 8002B8BC 21100002 */   addu      $v0, $s0, $zero
  .Lfunc_8002B640_8002B8C0:
    /* 1C0C0 8002B8C0 18001026 */  addiu      $s0, $s0, 0x18
    /* 1C0C4 8002B8C4 18007326 */  addiu      $s3, $s3, 0x18
    /* 1C0C8 8002B8C8 01005226 */  addiu      $s2, $s2, 0x1
    /* 1C0CC 8002B8CC 4000422A */  slti       $v0, $s2, 0x40
    /* 1C0D0 8002B8D0 D8FF4014 */  bnez       $v0, .Lfunc_8002B640_8002B834
    /* 1C0D4 8002B8D4 18003126 */   addiu     $s1, $s1, 0x18
  .Lfunc_8002B640_8002B8D8:
    /* 1C0D8 8002B8D8 0780023C */  lui        $v0, %hi(gCdDebugLevel)
    /* 1C0DC 8002B8DC 08D6428C */  lw         $v0, %lo(gCdDebugLevel)($v0)
    /* 1C0E0 8002B8E0 00000000 */  nop
    /* 1C0E4 8002B8E4 05004018 */  blez       $v0, .Lfunc_8002B640_8002B8FC
    /* 1C0E8 8002B8E8 1000A527 */   addiu     $a1, $sp, 0x10
    /* 1C0EC 8002B8EC 0180043C */  lui        $a0, %hi(D_80010B68)
    /* 1C0F0 8002B8F0 680B8424 */  addiu      $a0, $a0, %lo(D_80010B68)
  .Lfunc_8002B640_8002B8F4:
    /* 1C0F4 8002B8F4 084B000C */  jal        DebugPrintf
    /* 1C0F8 8002B8F8 00000000 */   nop
  .Lfunc_8002B640_8002B8FC:
    /* 1C0FC 8002B8FC 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_8002B640_8002B900:
    /* 1C100 8002B900 4800BF8F */  lw         $ra, 0x48($sp)
    /* 1C104 8002B904 4400B58F */  lw         $s5, 0x44($sp)
    /* 1C108 8002B908 4000B48F */  lw         $s4, 0x40($sp)
    /* 1C10C 8002B90C 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 1C110 8002B910 3800B28F */  lw         $s2, 0x38($sp)
    /* 1C114 8002B914 3400B18F */  lw         $s1, 0x34($sp)
    /* 1C118 8002B918 3000B08F */  lw         $s0, 0x30($sp)
    /* 1C11C 8002B91C 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 1C120 8002B920 0800E003 */  jr         $ra
    /* 1C124 8002B924 00000000 */   nop
endlabel CdSearchFile
