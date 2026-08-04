.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SceneNode_IsType, 0x2D0

glabel SceneNode_IsType
    /* EFBC 8001E7BC A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* EFC0 8001E7C0 3800B0AF */  sw         $s0, 0x38($sp)
    /* EFC4 8001E7C4 21808000 */  addu       $s0, $a0, $zero
    /* EFC8 8001E7C8 5000BFAF */  sw         $ra, 0x50($sp)
    /* EFCC 8001E7CC 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* EFD0 8001E7D0 4800B4AF */  sw         $s4, 0x48($sp)
    /* EFD4 8001E7D4 4400B3AF */  sw         $s3, 0x44($sp)
    /* EFD8 8001E7D8 4000B2AF */  sw         $s2, 0x40($sp)
    /* EFDC 8001E7DC 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* EFE0 8001E7E0 2000028E */  lw         $v0, 0x20($s0)
    /* EFE4 8001E7E4 00000000 */  nop
    /* EFE8 8001E7E8 9D004010 */  beqz       $v0, .Lfunc_8001E7BC_8001EA60
    /* EFEC 8001E7EC 21A8A000 */   addu      $s5, $a1, $zero
    /* EFF0 8001E7F0 1000028E */  lw         $v0, 0x10($s0)
    /* EFF4 8001E7F4 00000000 */  nop
    /* EFF8 8001E7F8 56004104 */  bgez       $v0, .Lfunc_8001E7BC_8001E954
    /* EFFC 8001E7FC 00000000 */   nop
    /* F000 8001E800 0C00028E */  lw         $v0, 0xC($s0)
    /* F004 8001E804 00000000 */  nop
    /* F008 8001E808 5A004010 */  beqz       $v0, .Lfunc_8001E7BC_8001E974
    /* F00C 8001E80C 21380000 */   addu      $a3, $zero, $zero
    /* F010 8001E810 1400078E */  lw         $a3, 0x14($s0)
    /* F014 8001E814 00000000 */  nop
    /* F018 8001E818 3800E224 */  addiu      $v0, $a3, 0x38
    /* F01C 8001E81C 4D004010 */  beqz       $v0, .Lfunc_8001E7BC_8001E954
    /* F020 8001E820 00000000 */   nop
    /* F024 8001E824 1800E28C */  lw         $v0, 0x18($a3)
    /* F028 8001E828 1C00E38C */  lw         $v1, 0x1C($a3)
    /* F02C 8001E82C 2000E48C */  lw         $a0, 0x20($a3)
    /* F030 8001E830 3800E2AC */  sw         $v0, 0x38($a3)
    /* F034 8001E834 3C00E3AC */  sw         $v1, 0x3C($a3)
    /* F038 8001E838 4000E4AC */  sw         $a0, 0x40($a3)
    /* F03C 8001E83C 0C00058E */  lw         $a1, 0xC($s0)
    /* F040 8001E840 00000000 */  nop
    /* F044 8001E844 4300A010 */  beqz       $a1, .Lfunc_8001E7BC_8001E954
    /* F048 8001E848 00000000 */   nop
  .Lfunc_8001E7BC_8001E84C:
    /* F04C 8001E84C 0C00028E */  lw         $v0, 0xC($s0)
    /* F050 8001E850 00000000 */  nop
    /* F054 8001E854 05004010 */  beqz       $v0, .Lfunc_8001E7BC_8001E86C
    /* F058 8001E858 21200000 */   addu      $a0, $zero, $zero
    /* F05C 8001E85C 1400028E */  lw         $v0, 0x14($s0)
    /* F060 8001E860 00000000 */  nop
    /* F064 8001E864 38004424 */  addiu      $a0, $v0, 0x38
    /* F068 8001E868 0C00028E */  lw         $v0, 0xC($s0)
  .Lfunc_8001E7BC_8001E86C:
    /* F06C 8001E86C 00000000 */  nop
    /* F070 8001E870 04004010 */  beqz       $v0, .Lfunc_8001E7BC_8001E884
    /* F074 8001E874 00000000 */   nop
    /* F078 8001E878 1400028E */  lw         $v0, 0x14($s0)
    /* F07C 8001E87C 227A0008 */  j          .Lfunc_8001E7BC_8001E888
    /* F080 8001E880 38004224 */   addiu     $v0, $v0, 0x38
  .Lfunc_8001E7BC_8001E884:
    /* F084 8001E884 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_8001E7BC_8001E888:
    /* F088 8001E888 1400A38C */  lw         $v1, 0x14($a1)
    /* F08C 8001E88C 0000428C */  lw         $v0, 0x0($v0)
    /* F090 8001E890 1800638C */  lw         $v1, 0x18($v1)
    /* F094 8001E894 00000000 */  nop
    /* F098 8001E898 21104300 */  addu       $v0, $v0, $v1
    /* F09C 8001E89C 000082AC */  sw         $v0, 0x0($a0)
    /* F0A0 8001E8A0 0C00028E */  lw         $v0, 0xC($s0)
    /* F0A4 8001E8A4 00000000 */  nop
    /* F0A8 8001E8A8 05004010 */  beqz       $v0, .Lfunc_8001E7BC_8001E8C0
    /* F0AC 8001E8AC 21200000 */   addu      $a0, $zero, $zero
    /* F0B0 8001E8B0 1400028E */  lw         $v0, 0x14($s0)
    /* F0B4 8001E8B4 00000000 */  nop
    /* F0B8 8001E8B8 38004424 */  addiu      $a0, $v0, 0x38
    /* F0BC 8001E8BC 0C00028E */  lw         $v0, 0xC($s0)
  .Lfunc_8001E7BC_8001E8C0:
    /* F0C0 8001E8C0 00000000 */  nop
    /* F0C4 8001E8C4 04004010 */  beqz       $v0, .Lfunc_8001E7BC_8001E8D8
    /* F0C8 8001E8C8 00000000 */   nop
    /* F0CC 8001E8CC 1400028E */  lw         $v0, 0x14($s0)
    /* F0D0 8001E8D0 377A0008 */  j          .Lfunc_8001E7BC_8001E8DC
    /* F0D4 8001E8D4 38004224 */   addiu     $v0, $v0, 0x38
  .Lfunc_8001E7BC_8001E8D8:
    /* F0D8 8001E8D8 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_8001E7BC_8001E8DC:
    /* F0DC 8001E8DC 1400A38C */  lw         $v1, 0x14($a1)
    /* F0E0 8001E8E0 0400428C */  lw         $v0, 0x4($v0)
    /* F0E4 8001E8E4 1C00638C */  lw         $v1, 0x1C($v1)
    /* F0E8 8001E8E8 00000000 */  nop
    /* F0EC 8001E8EC 21104300 */  addu       $v0, $v0, $v1
    /* F0F0 8001E8F0 040082AC */  sw         $v0, 0x4($a0)
    /* F0F4 8001E8F4 0C00028E */  lw         $v0, 0xC($s0)
    /* F0F8 8001E8F8 00000000 */  nop
    /* F0FC 8001E8FC 05004010 */  beqz       $v0, .Lfunc_8001E7BC_8001E914
    /* F100 8001E900 21200000 */   addu      $a0, $zero, $zero
    /* F104 8001E904 1400028E */  lw         $v0, 0x14($s0)
    /* F108 8001E908 00000000 */  nop
    /* F10C 8001E90C 38004424 */  addiu      $a0, $v0, 0x38
    /* F110 8001E910 0C00028E */  lw         $v0, 0xC($s0)
  .Lfunc_8001E7BC_8001E914:
    /* F114 8001E914 00000000 */  nop
    /* F118 8001E918 04004010 */  beqz       $v0, .Lfunc_8001E7BC_8001E92C
    /* F11C 8001E91C 21180000 */   addu      $v1, $zero, $zero
    /* F120 8001E920 1400028E */  lw         $v0, 0x14($s0)
    /* F124 8001E924 00000000 */  nop
    /* F128 8001E928 38004324 */  addiu      $v1, $v0, 0x38
  .Lfunc_8001E7BC_8001E92C:
    /* F12C 8001E92C 1400A28C */  lw         $v0, 0x14($a1)
    /* F130 8001E930 0800638C */  lw         $v1, 0x8($v1)
    /* F134 8001E934 2000428C */  lw         $v0, 0x20($v0)
    /* F138 8001E938 00000000 */  nop
    /* F13C 8001E93C 21186200 */  addu       $v1, $v1, $v0
    /* F140 8001E940 080083AC */  sw         $v1, 0x8($a0)
    /* F144 8001E944 0C00A58C */  lw         $a1, 0xC($a1)
    /* F148 8001E948 00000000 */  nop
    /* F14C 8001E94C BFFFA014 */  bnez       $a1, .Lfunc_8001E7BC_8001E84C
    /* F150 8001E950 00000000 */   nop
  .Lfunc_8001E7BC_8001E954:
    /* F154 8001E954 0C00028E */  lw         $v0, 0xC($s0)
    /* F158 8001E958 00000000 */  nop
    /* F15C 8001E95C 04004010 */  beqz       $v0, .Lfunc_8001E7BC_8001E970
    /* F160 8001E960 00000000 */   nop
    /* F164 8001E964 1400028E */  lw         $v0, 0x14($s0)
    /* F168 8001E968 5D7A0008 */  j          .Lfunc_8001E7BC_8001E974
    /* F16C 8001E96C 38004724 */   addiu     $a3, $v0, 0x38
  .Lfunc_8001E7BC_8001E970:
    /* F170 8001E970 21380000 */  addu       $a3, $zero, $zero
  .Lfunc_8001E7BC_8001E974:
    /* F174 8001E974 21200002 */  addu       $a0, $s0, $zero
    /* F178 8001E978 0000C294 */  lhu        $v0, 0x0($a2)
    /* F17C 8001E97C 0000E394 */  lhu        $v1, 0x0($a3)
    /* F180 8001E980 21280000 */  addu       $a1, $zero, $zero
    /* F184 8001E984 23104300 */  subu       $v0, $v0, $v1
    /* F188 8001E988 2000A2A7 */  sh         $v0, 0x20($sp)
    /* F18C 8001E98C 0400C294 */  lhu        $v0, 0x4($a2)
    /* F190 8001E990 0400E394 */  lhu        $v1, 0x4($a3)
    /* F194 8001E994 2000B327 */  addiu      $s3, $sp, 0x20
    /* F198 8001E998 23104300 */  subu       $v0, $v0, $v1
    /* F19C 8001E99C 2200A2A7 */  sh         $v0, 0x22($sp)
    /* F1A0 8001E9A0 0800C294 */  lhu        $v0, 0x8($a2)
    /* F1A4 8001E9A4 0800E394 */  lhu        $v1, 0x8($a3)
    /* F1A8 8001E9A8 1800A627 */  addiu      $a2, $sp, 0x18
    /* F1AC 8001E9AC 23104300 */  subu       $v0, $v0, $v1
    /* F1B0 8001E9B0 2400A2A7 */  sh         $v0, 0x24($sp)
    /* F1B4 8001E9B4 0000038E */  lw         $v1, 0x0($s0)
    /* F1B8 8001E9B8 01000234 */  ori        $v0, $zero, 0x1
    /* F1BC 8001E9BC 1000A2AF */  sw         $v0, 0x10($sp)
    /* F1C0 8001E9C0 A400628C */  lw         $v0, 0xA4($v1)
    /* F1C4 8001E9C4 00000000 */  nop
    /* F1C8 8001E9C8 09F84000 */  jalr       $v0
    /* F1CC 8001E9CC 21386002 */   addu      $a3, $s3, $zero
    /* F1D0 8001E9D0 3000B427 */  addiu      $s4, $sp, 0x30
    /* F1D4 8001E9D4 21288002 */  addu       $a1, $s4, $zero
    /* F1D8 8001E9D8 2800B227 */  addiu      $s2, $sp, 0x28
    /* F1DC 8001E9DC 1800A297 */  lhu        $v0, 0x18($sp)
    /* F1E0 8001E9E0 1C00A397 */  lhu        $v1, 0x1C($sp)
    /* F1E4 8001E9E4 21304002 */  addu       $a2, $s2, $zero
    /* F1E8 8001E9E8 2000A2A7 */  sh         $v0, 0x20($sp)
    /* F1EC 8001E9EC 1A00A297 */  lhu        $v0, 0x1A($sp)
    /* F1F0 8001E9F0 1800B127 */  addiu      $s1, $sp, 0x18
    /* F1F4 8001E9F4 2400A3A7 */  sh         $v1, 0x24($sp)
    /* F1F8 8001E9F8 00FC4224 */  addiu      $v0, $v0, -0x400
    /* F1FC 8001E9FC 2200A2A7 */  sh         $v0, 0x22($sp)
    /* F200 8001EA00 1000B1AF */  sw         $s1, 0x10($sp)
    /* F204 8001EA04 1400B3AF */  sw         $s3, 0x14($sp)
    /* F208 8001EA08 2000048E */  lw         $a0, 0x20($s0)
    /* F20C 8001EA0C 2E7E000C */  jal        func_8001F8B8
    /* F210 8001EA10 21380000 */   addu      $a3, $zero, $zero
    /* F214 8001EA14 0D004014 */  bnez       $v0, .Lfunc_8001E7BC_8001EA4C
    /* F218 8001EA18 2120A002 */   addu      $a0, $s5, $zero
    /* F21C 8001EA1C 21288002 */  addu       $a1, $s4, $zero
    /* F220 8001EA20 1A00A297 */  lhu        $v0, 0x1A($sp)
    /* F224 8001EA24 21304002 */  addu       $a2, $s2, $zero
    /* F228 8001EA28 00044224 */  addiu      $v0, $v0, 0x400
    /* F22C 8001EA2C 2200A2A7 */  sh         $v0, 0x22($sp)
    /* F230 8001EA30 1000B1AF */  sw         $s1, 0x10($sp)
    /* F234 8001EA34 1400B3AF */  sw         $s3, 0x14($sp)
    /* F238 8001EA38 2000048E */  lw         $a0, 0x20($s0)
    /* F23C 8001EA3C 2E7E000C */  jal        func_8001F8B8
    /* F240 8001EA40 21380000 */   addu      $a3, $zero, $zero
    /* F244 8001EA44 06004010 */  beqz       $v0, .Lfunc_8001E7BC_8001EA60
    /* F248 8001EA48 2120A002 */   addu      $a0, $s5, $zero
  .Lfunc_8001E7BC_8001EA4C:
    /* F24C 8001EA4C 21282002 */  addu       $a1, $s1, $zero
    /* F250 8001EA50 A37A000C */  jal        Vec3Sub16
    /* F254 8001EA54 21304002 */   addu      $a2, $s2, $zero
    /* F258 8001EA58 997A0008 */  j          .Lfunc_8001E7BC_8001EA64
    /* F25C 8001EA5C 01000234 */   ori       $v0, $zero, 0x1
  .Lfunc_8001E7BC_8001EA60:
    /* F260 8001EA60 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_8001E7BC_8001EA64:
    /* F264 8001EA64 5000BF8F */  lw         $ra, 0x50($sp)
    /* F268 8001EA68 4C00B58F */  lw         $s5, 0x4C($sp)
    /* F26C 8001EA6C 4800B48F */  lw         $s4, 0x48($sp)
    /* F270 8001EA70 4400B38F */  lw         $s3, 0x44($sp)
    /* F274 8001EA74 4000B28F */  lw         $s2, 0x40($sp)
    /* F278 8001EA78 3C00B18F */  lw         $s1, 0x3C($sp)
    /* F27C 8001EA7C 3800B08F */  lw         $s0, 0x38($sp)
    /* F280 8001EA80 5800BD27 */  addiu      $sp, $sp, 0x58
    /* F284 8001EA84 0800E003 */  jr         $ra
    /* F288 8001EA88 00000000 */   nop
endlabel SceneNode_IsType
