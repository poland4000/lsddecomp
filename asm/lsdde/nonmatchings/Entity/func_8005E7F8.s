.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005E7F8, 0x29C

glabel func_8005E7F8
    /* 4EFF8 8005E7F8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4EFFC 8005E7FC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4F000 8005E800 21808000 */  addu       $s0, $a0, $zero
    /* 4F004 8005E804 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4F008 8005E808 2400BFAF */  sw         $ra, 0x24($sp)
    /* 4F00C 8005E80C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 4F010 8005E810 0000038E */  lw         $v1, 0x0($s0)
    /* 4F014 8005E814 ECFF0224 */  addiu      $v0, $zero, -0x14
    /* 4F018 8005E818 480002A6 */  sh         $v0, 0x48($s0)
    /* 4F01C 8005E81C 4801628C */  lw         $v0, 0x148($v1)
    /* 4F020 8005E820 00000000 */  nop
    /* 4F024 8005E824 09F84000 */  jalr       $v0
    /* 4F028 8005E828 2188A000 */   addu      $s1, $a1, $zero
    /* 4F02C 8005E82C 100022AE */  sw         $v0, 0x10($s1)
    /* 4F030 8005E830 8000028E */  lw         $v0, 0x80($s0)
    /* 4F034 8005E834 00000000 */  nop
    /* 4F038 8005E838 C21F0200 */  srl        $v1, $v0, 31
    /* 4F03C 8005E83C 21104300 */  addu       $v0, $v0, $v1
    /* 4F040 8005E840 0400238E */  lw         $v1, 0x4($s1)
    /* 4F044 8005E844 43100200 */  sra        $v0, $v0, 1
    /* 4F048 8005E848 1A006200 */  div        $zero, $v1, $v0
    /* 4F04C 8005E84C 02004014 */  bnez       $v0, .Lfunc_8005E7F8_8005E858
    /* 4F050 8005E850 00000000 */   nop
    /* 4F054 8005E854 0D000700 */  break      7
  .Lfunc_8005E7F8_8005E858:
    /* 4F058 8005E858 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 4F05C 8005E85C 04004114 */  bne        $v0, $at, .Lfunc_8005E7F8_8005E870
    /* 4F060 8005E860 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 4F064 8005E864 02006114 */  bne        $v1, $at, .Lfunc_8005E7F8_8005E870
    /* 4F068 8005E868 00000000 */   nop
    /* 4F06C 8005E86C 0D000600 */  break      6
  .Lfunc_8005E7F8_8005E870:
    /* 4F070 8005E870 10100000 */  mfhi       $v0
    /* 4F074 8005E874 00000000 */  nop
    /* 4F078 8005E878 05004014 */  bnez       $v0, .Lfunc_8005E7F8_8005E890
    /* 4F07C 8005E87C 21900000 */   addu      $s2, $zero, $zero
    /* 4F080 8005E880 0A000234 */  ori        $v0, $zero, 0xA
    /* 4F084 8005E884 1C0022AE */  sw         $v0, 0x1C($s1)
    /* 4F088 8005E888 01000234 */  ori        $v0, $zero, 0x1
    /* 4F08C 8005E88C 200022AE */  sw         $v0, 0x20($s1)
  .Lfunc_8005E7F8_8005E890:
    /* 4F090 8005E890 4400038E */  lw         $v1, 0x44($s0)
    /* 4F094 8005E894 0B000234 */  ori        $v0, $zero, 0xB
    /* 4F098 8005E898 1F006214 */  bne        $v1, $v0, .Lfunc_8005E7F8_8005E918
    /* 4F09C 8005E89C 0C000234 */   ori       $v0, $zero, 0xC
    /* 4F0A0 8005E8A0 FC00038E */  lw         $v1, 0xFC($s0)
    /* 4F0A4 8005E8A4 8C0A0234 */  ori        $v0, $zero, 0xA8C
    /* 4F0A8 8005E8A8 03006214 */  bne        $v1, $v0, .Lfunc_8005E7F8_8005E8B8
    /* 4F0AC 8005E8AC 6C0C0234 */   ori       $v0, $zero, 0xC6C
    /* 4F0B0 8005E8B0 0980123C */  lui        $s2, %hi(D_80089C94)
    /* 4F0B4 8005E8B4 949C5226 */  addiu      $s2, $s2, %lo(D_80089C94)
  .Lfunc_8005E7F8_8005E8B8:
    /* 4F0B8 8005E8B8 03006214 */  bne        $v1, $v0, .Lfunc_8005E7F8_8005E8C8
    /* 4F0BC 8005E8BC 100E0234 */   ori       $v0, $zero, 0xE10
    /* 4F0C0 8005E8C0 0980123C */  lui        $s2, %hi(D_80089C88)
    /* 4F0C4 8005E8C4 889C5226 */  addiu      $s2, $s2, %lo(D_80089C88)
  .Lfunc_8005E7F8_8005E8C8:
    /* 4F0C8 8005E8C8 03006214 */  bne        $v1, $v0, .Lfunc_8005E7F8_8005E8D8
    /* 4F0CC 8005E8CC A3F26224 */   addiu     $v0, $v1, -0xD5D
    /* 4F0D0 8005E8D0 0980123C */  lui        $s2, %hi(D_80089C94)
    /* 4F0D4 8005E8D4 949C5226 */  addiu      $s2, $s2, %lo(D_80089C94)
  .Lfunc_8005E7F8_8005E8D8:
    /* 4F0D8 8005E8D8 7800422C */  sltiu      $v0, $v0, 0x78
    /* 4F0DC 8005E8DC 38004010 */  beqz       $v0, .Lfunc_8005E7F8_8005E9C0
    /* 4F0E0 8005E8E0 00000000 */   nop
    /* 4F0E4 8005E8E4 9400048E */  lw         $a0, 0x94($s0)
    /* 4F0E8 8005E8E8 00000000 */  nop
    /* 4F0EC 8005E8EC 0000828C */  lw         $v0, 0x0($a0)
    /* 4F0F0 8005E8F0 00000000 */  nop
    /* 4F0F4 8005E8F4 0001428C */  lw         $v0, 0x100($v0)
    /* 4F0F8 8005E8F8 00000000 */  nop
    /* 4F0FC 8005E8FC 09F84000 */  jalr       $v0
    /* 4F100 8005E900 00000000 */   nop
    /* 4F104 8005E904 2E004010 */  beqz       $v0, .Lfunc_8005E7F8_8005E9C0
    /* 4F108 8005E908 0D000234 */   ori       $v0, $zero, 0xD
    /* 4F10C 8005E90C FC0000AE */  sw         $zero, 0xFC($s0)
    /* 4F110 8005E910 707A0108 */  j          .Lfunc_8005E7F8_8005E9C0
    /* 4F114 8005E914 440002AE */   sw        $v0, 0x44($s0)
  .Lfunc_8005E7F8_8005E918:
    /* 4F118 8005E918 09006214 */  bne        $v1, $v0, .Lfunc_8005E7F8_8005E940
    /* 4F11C 8005E91C 0D000234 */   ori       $v0, $zero, 0xD
    /* 4F120 8005E920 FC00038E */  lw         $v1, 0xFC($s0)
    /* 4F124 8005E924 BC070234 */  ori        $v0, $zero, 0x7BC
    /* 4F128 8005E928 27006214 */  bne        $v1, $v0, .Lfunc_8005E7F8_8005E9C8
    /* 4F12C 8005E92C 18060234 */   ori       $v0, $zero, 0x618
    /* 4F130 8005E930 0980123C */  lui        $s2, %hi(D_80089C94)
    /* 4F134 8005E934 949C5226 */  addiu      $s2, $s2, %lo(D_80089C94)
    /* 4F138 8005E938 727A0108 */  j          .Lfunc_8005E7F8_8005E9C8
    /* 4F13C 8005E93C 00000000 */   nop
  .Lfunc_8005E7F8_8005E940:
    /* 4F140 8005E940 1F006214 */  bne        $v1, $v0, .Lfunc_8005E7F8_8005E9C0
    /* 4F144 8005E944 21200002 */   addu      $a0, $s0, $zero
    /* 4F148 8005E948 01000634 */  ori        $a2, $zero, 0x1
    /* 4F14C 8005E94C 88FF0224 */  addiu      $v0, $zero, -0x78
    /* 4F150 8005E950 480002A6 */  sh         $v0, 0x48($s0)
    /* 4F154 8005E954 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4F158 8005E958 9400058E */  lw         $a1, 0x94($s0)
    /* 4F15C 8005E95C B37A000C */  jal        FaceTowards
    /* 4F160 8005E960 21380000 */   addu      $a3, $zero, $zero
    /* 4F164 8005E964 21200002 */  addu       $a0, $s0, $zero
    /* 4F168 8005E968 0000028E */  lw         $v0, 0x0($s0)
    /* 4F16C 8005E96C 00000000 */  nop
    /* 4F170 8005E970 4800428C */  lw         $v0, 0x48($v0)
    /* 4F174 8005E974 0980063C */  lui        $a2, %hi(D_80089DD8)
    /* 4F178 8005E978 D89DC624 */  addiu      $a2, $a2, %lo(D_80089DD8)
    /* 4F17C 8005E97C 09F84000 */  jalr       $v0
    /* 4F180 8005E980 01000534 */   ori       $a1, $zero, 0x1
    /* 4F184 8005E984 0000028E */  lw         $v0, 0x0($s0)
    /* 4F188 8005E988 9400058E */  lw         $a1, 0x94($s0)
    /* 4F18C 8005E98C 4401428C */  lw         $v0, 0x144($v0)
    /* 4F190 8005E990 00000000 */  nop
    /* 4F194 8005E994 09F84000 */  jalr       $v0
    /* 4F198 8005E998 21200002 */   addu      $a0, $s0, $zero
    /* 4F19C 8005E99C 00044228 */  slti       $v0, $v0, 0x400
    /* 4F1A0 8005E9A0 07004010 */  beqz       $v0, .Lfunc_8005E7F8_8005E9C0
    /* 4F1A4 8005E9A4 21200002 */   addu      $a0, $s0, $zero
    /* 4F1A8 8005E9A8 0000028E */  lw         $v0, 0x0($s0)
    /* 4F1AC 8005E9AC 00000000 */  nop
    /* 4F1B0 8005E9B0 3000428C */  lw         $v0, 0x30($v0)
    /* 4F1B4 8005E9B4 00000000 */  nop
    /* 4F1B8 8005E9B8 09F84000 */  jalr       $v0
    /* 4F1BC 8005E9BC 0B000534 */   ori       $a1, $zero, 0xB
  .Lfunc_8005E7F8_8005E9C0:
    /* 4F1C0 8005E9C0 FC00038E */  lw         $v1, 0xFC($s0)
    /* 4F1C4 8005E9C4 18060234 */  ori        $v0, $zero, 0x618
  .Lfunc_8005E7F8_8005E9C8:
    /* 4F1C8 8005E9C8 0E006214 */  bne        $v1, $v0, .Lfunc_8005E7F8_8005EA04
    /* 4F1CC 8005E9CC 00000000 */   nop
    /* 4F1D0 8005E9D0 2025010C */  jal        rand
    /* 4F1D4 8005E9D4 00000000 */   nop
    /* 4F1D8 8005E9D8 01004230 */  andi       $v0, $v0, 0x1
    /* 4F1DC 8005E9DC 05004010 */  beqz       $v0, .Lfunc_8005E7F8_8005E9F4
    /* 4F1E0 8005E9E0 0B000234 */   ori       $v0, $zero, 0xB
    /* 4F1E4 8005E9E4 0980123C */  lui        $s2, %hi(D_80089C88)
    /* 4F1E8 8005E9E8 889C5226 */  addiu      $s2, $s2, %lo(D_80089C88)
    /* 4F1EC 8005E9EC 817A0108 */  j          .Lfunc_8005E7F8_8005EA04
    /* 4F1F0 8005E9F0 440002AE */   sw        $v0, 0x44($s0)
  .Lfunc_8005E7F8_8005E9F4:
    /* 4F1F4 8005E9F4 0980123C */  lui        $s2, %hi(D_80089C94)
    /* 4F1F8 8005E9F8 949C5226 */  addiu      $s2, $s2, %lo(D_80089C94)
    /* 4F1FC 8005E9FC 0C000234 */  ori        $v0, $zero, 0xC
    /* 4F200 8005EA00 440002AE */  sw         $v0, 0x44($s0)
  .Lfunc_8005E7F8_8005EA04:
    /* 4F204 8005EA04 07004012 */  beqz       $s2, .Lfunc_8005E7F8_8005EA24
    /* 4F208 8005EA08 21200002 */   addu      $a0, $s0, $zero
    /* 4F20C 8005EA0C 0000028E */  lw         $v0, 0x0($s0)
    /* 4F210 8005EA10 21280000 */  addu       $a1, $zero, $zero
    /* 4F214 8005EA14 4400428C */  lw         $v0, 0x44($v0)
    /* 4F218 8005EA18 00000000 */  nop
    /* 4F21C 8005EA1C 09F84000 */  jalr       $v0
    /* 4F220 8005EA20 21304002 */   addu      $a2, $s2, $zero
  .Lfunc_8005E7F8_8005EA24:
    /* 4F224 8005EA24 21200002 */  addu       $a0, $s0, $zero
    /* 4F228 8005EA28 0000028E */  lw         $v0, 0x0($s0)
    /* 4F22C 8005EA2C 48000586 */  lh         $a1, 0x48($s0)
    /* 4F230 8005EA30 D000428C */  lw         $v0, 0xD0($v0)
    /* 4F234 8005EA34 00000000 */  nop
    /* 4F238 8005EA38 09F84000 */  jalr       $v0
    /* 4F23C 8005EA3C 21300000 */   addu      $a2, $zero, $zero
    /* 4F240 8005EA40 4400038E */  lw         $v1, 0x44($s0)
    /* 4F244 8005EA44 0C000234 */  ori        $v0, $zero, 0xC
    /* 4F248 8005EA48 0B006210 */  beq        $v1, $v0, .Lfunc_8005E7F8_8005EA78
    /* 4F24C 8005EA4C 00000000 */   nop
    /* 4F250 8005EA50 2800028E */  lw         $v0, 0x28($s0)
    /* 4F254 8005EA54 00000000 */  nop
    /* 4F258 8005EA58 07004010 */  beqz       $v0, .Lfunc_8005E7F8_8005EA78
    /* 4F25C 8005EA5C 21200002 */   addu      $a0, $s0, $zero
    /* 4F260 8005EA60 0000828C */  lw         $v0, 0x0($a0)
    /* 4F264 8005EA64 38FF0524 */  addiu      $a1, $zero, -0xC8
    /* 4F268 8005EA68 CC00428C */  lw         $v0, 0xCC($v0)
    /* 4F26C 8005EA6C 00000000 */  nop
    /* 4F270 8005EA70 09F84000 */  jalr       $v0
    /* 4F274 8005EA74 21300000 */   addu      $a2, $zero, $zero
  .Lfunc_8005E7F8_8005EA78:
    /* 4F278 8005EA78 2400BF8F */  lw         $ra, 0x24($sp)
    /* 4F27C 8005EA7C 2000B28F */  lw         $s2, 0x20($sp)
    /* 4F280 8005EA80 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4F284 8005EA84 1800B08F */  lw         $s0, 0x18($sp)
    /* 4F288 8005EA88 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 4F28C 8005EA8C 0800E003 */  jr         $ra
    /* 4F290 8005EA90 00000000 */   nop
endlabel func_8005E7F8
