.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching BuildCdFileTable, 0xD4

glabel BuildCdFileTable
    /* 187FC 80027FFC 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 18800 80028000 6C00B1AF */  sw         $s1, 0x6C($sp)
    /* 18804 80028004 21888000 */  addu       $s1, $a0, $zero
    /* 18808 80028008 C0100500 */  sll        $v0, $a1, 3
    /* 1880C 8002800C 23104500 */  subu       $v0, $v0, $a1
    /* 18810 80028010 80100200 */  sll        $v0, $v0, 2
    /* 18814 80028014 7400B3AF */  sw         $s3, 0x74($sp)
    /* 18818 80028018 21982202 */  addu       $s3, $s1, $v0
    /* 1881C 8002801C 7800BFAF */  sw         $ra, 0x78($sp)
    /* 18820 80028020 7000B2AF */  sw         $s2, 0x70($sp)
    /* 18824 80028024 9E9F000C */  jal        CdEnsureModeSet
    /* 18828 80028028 6800B0AF */   sw        $s0, 0x68($sp)
    /* 1882C 8002802C 2B103302 */  sltu       $v0, $s1, $s3
    /* 18830 80028030 1F004010 */  beqz       $v0, .Lfunc_80027FFC_800280B0
    /* 18834 80028034 01000234 */   ori       $v0, $zero, 0x1
    /* 18838 80028038 18003226 */  addiu      $s2, $s1, 0x18
  .Lfunc_80027FFC_8002803C:
    /* 1883C 8002803C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 18840 80028040 73A2000C */  jal        CdBuildSearchPattern
    /* 18844 80028044 21282002 */   addu      $a1, $s1, $zero
    /* 18848 80028048 21800000 */  addu       $s0, $zero, $zero
    /* 1884C 8002804C 5000A427 */  addiu      $a0, $sp, 0x50
  .Lfunc_80027FFC_80028050:
    /* 18850 80028050 90AD000C */  jal        CdSearchFile
    /* 18854 80028054 1000A527 */   addiu     $a1, $sp, 0x10
    /* 18858 80028058 09004014 */  bnez       $v0, .Lfunc_80027FFC_80028080
    /* 1885C 8002805C 00000000 */   nop
    /* 18860 80028060 01001026 */  addiu      $s0, $s0, 0x1
    /* 18864 80028064 6500022A */  slti       $v0, $s0, 0x65
    /* 18868 80028068 F9FF4014 */  bnez       $v0, .Lfunc_80027FFC_80028050
    /* 1886C 8002806C 5000A427 */   addiu     $a0, $sp, 0x50
    /* 18870 80028070 0180043C */  lui        $a0, %hi(D_800107D8)
    /* 18874 80028074 D8078424 */  addiu      $a0, $a0, %lo(D_800107D8)
    /* 18878 80028078 084B000C */  jal        DebugPrintf
    /* 1887C 8002807C 1000A527 */   addiu     $a1, $sp, 0x10
  .Lfunc_80027FFC_80028080:
    /* 18880 80028080 5300A28B */  lwl        $v0, 0x53($sp)
    /* 18884 80028084 5000A29B */  lwr        $v0, 0x50($sp)
    /* 18888 80028088 00000000 */  nop
    /* 1888C 8002808C FFFF42AA */  swl        $v0, -0x1($s2)
    /* 18890 80028090 FCFF42BA */  swr        $v0, -0x4($s2)
    /* 18894 80028094 5400A28F */  lw         $v0, 0x54($sp)
    /* 18898 80028098 1C003126 */  addiu      $s1, $s1, 0x1C
    /* 1889C 8002809C 000042AE */  sw         $v0, 0x0($s2)
    /* 188A0 800280A0 2B103302 */  sltu       $v0, $s1, $s3
    /* 188A4 800280A4 E5FF4014 */  bnez       $v0, .Lfunc_80027FFC_8002803C
    /* 188A8 800280A8 1C005226 */   addiu     $s2, $s2, 0x1C
    /* 188AC 800280AC 01000234 */  ori        $v0, $zero, 0x1
  .Lfunc_80027FFC_800280B0:
    /* 188B0 800280B0 7800BF8F */  lw         $ra, 0x78($sp)
    /* 188B4 800280B4 7400B38F */  lw         $s3, 0x74($sp)
    /* 188B8 800280B8 7000B28F */  lw         $s2, 0x70($sp)
    /* 188BC 800280BC 6C00B18F */  lw         $s1, 0x6C($sp)
    /* 188C0 800280C0 6800B08F */  lw         $s0, 0x68($sp)
    /* 188C4 800280C4 8000BD27 */  addiu      $sp, $sp, 0x80
    /* 188C8 800280C8 0800E003 */  jr         $ra
    /* 188CC 800280CC 00000000 */   nop
endlabel BuildCdFileTable
