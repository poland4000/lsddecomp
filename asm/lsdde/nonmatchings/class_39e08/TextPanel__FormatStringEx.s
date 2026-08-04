.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextPanel__FormatStringEx, 0x3C0

glabel TextPanel__FormatStringEx
    /* 3F76C 8004EF6C A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 3F770 8004EF70 21108000 */  addu       $v0, $a0, $zero
    /* 3F774 8004EF74 4800B6AF */  sw         $s6, 0x48($sp)
    /* 3F778 8004EF78 21B0C000 */  addu       $s6, $a2, $zero
    /* 3F77C 8004EF7C 4000B4AF */  sw         $s4, 0x40($sp)
    /* 3F780 8004EF80 21A0E000 */  addu       $s4, $a3, $zero
    /* 3F784 8004EF84 2130A000 */  addu       $a2, $a1, $zero
    /* 3F788 8004EF88 5400BFAF */  sw         $ra, 0x54($sp)
    /* 3F78C 8004EF8C 5000BEAF */  sw         $fp, 0x50($sp)
    /* 3F790 8004EF90 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* 3F794 8004EF94 4400B5AF */  sw         $s5, 0x44($sp)
    /* 3F798 8004EF98 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3F79C 8004EF9C 3800B2AF */  sw         $s2, 0x38($sp)
    /* 3F7A0 8004EFA0 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3F7A4 8004EFA4 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3F7A8 8004EFA8 0C00458C */  lw         $a1, 0xC($v0)
    /* 3F7AC 8004EFAC 6800B58F */  lw         $s5, 0x68($sp)
    /* 3F7B0 8004EFB0 6C00BE8F */  lw         $fp, 0x6C($sp)
    /* 3F7B4 8004EFB4 7000B38F */  lw         $s3, 0x70($sp)
    /* 3F7B8 8004EFB8 CB3C010C */  jal        TextStrAppend
    /* 3F7BC 8004EFBC 1000A427 */   addiu     $a0, $sp, 0x10
    /* 3F7C0 8004EFC0 21804000 */  addu       $s0, $v0, $zero
    /* 3F7C4 8004EFC4 4242010C */  jal        TextBuf__Rewind
    /* 3F7C8 8004EFC8 21200002 */   addu      $a0, $s0, $zero
    /* 3F7CC 8004EFCC 21200002 */  addu       $a0, $s0, $zero
    /* 3F7D0 8004EFD0 FF216526 */  addiu      $a1, $s3, 0x21FF
    /* 3F7D4 8004EFD4 422B0500 */  srl        $a1, $a1, 13
    /* 3F7D8 8004EFD8 002C0500 */  sll        $a1, $a1, 16
    /* 3F7DC 8004EFDC 4E42010C */  jal        StrCompare
    /* 3F7E0 8004EFE0 0002A534 */   ori       $a1, $a1, 0x200
    /* 3F7E4 8004EFE4 21904000 */  addu       $s2, $v0, $zero
    /* 3F7E8 8004EFE8 FFFF1124 */  addiu      $s1, $zero, -0x1
    /* 3F7EC 8004EFEC 07005116 */  bne        $s2, $s1, .Lfunc_8004EF6C_8004F00C
    /* 3F7F0 8004EFF0 21B88002 */   addu      $s7, $s4, $zero
    /* 3F7F4 8004EFF4 0180043C */  lui        $a0, %hi(D_80011530)
    /* 3F7F8 8004EFF8 30158424 */  addiu      $a0, $a0, %lo(D_80011530)
    /* 3F7FC 8004EFFC 084B000C */  jal        DebugPrintf
    /* 3F800 8004F000 00000000 */   nop
    /* 3F804 8004F004 BE3C0108 */  j          .Lfunc_8004EF6C_8004F2F8
    /* 3F808 8004F008 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_8004EF6C_8004F00C:
    /* 3F80C 8004F00C 3E42010C */  jal        TextBuf__WriteStr
    /* 3F810 8004F010 21204002 */   addu      $a0, $s2, $zero
    /* 3F814 8004F014 21200002 */  addu       $a0, $s0, $zero
    /* 3F818 8004F018 4E42010C */  jal        StrCompare
    /* 3F81C 8004F01C 02000534 */   ori       $a1, $zero, 0x2
    /* 3F820 8004F020 21904000 */  addu       $s2, $v0, $zero
    /* 3F824 8004F024 B4005112 */  beq        $s2, $s1, .Lfunc_8004EF6C_8004F2F8
    /* 3F828 8004F028 21100000 */   addu      $v0, $zero, $zero
    /* 3F82C 8004F02C 1000B08E */  lw         $s0, 0x10($s5)
    /* 3F830 8004F030 CD5E000C */  jal        BMemAlloc
    /* 3F834 8004F034 00020434 */   ori       $a0, $zero, 0x200
    /* 3F838 8004F038 21884000 */  addu       $s1, $v0, $zero
    /* 3F83C 8004F03C 04002426 */  addiu      $a0, $s1, 0x4
    /* 3F840 8004F040 2128C002 */  addu       $a1, $s6, $zero
    /* 3F844 8004F044 53000234 */  ori        $v0, $zero, 0x53
    /* 3F848 8004F048 000022A2 */  sb         $v0, 0x0($s1)
    /* 3F84C 8004F04C 43000234 */  ori        $v0, $zero, 0x43
    /* 3F850 8004F050 010022A2 */  sb         $v0, 0x1($s1)
    /* 3F854 8004F054 10008226 */  addiu      $v0, $s4, 0x10
    /* 3F858 8004F058 020022A2 */  sb         $v0, 0x2($s1)
    /* 3F85C 8004F05C FF1F6226 */  addiu      $v0, $s3, 0x1FFF
    /* 3F860 8004F060 42130200 */  srl        $v0, $v0, 13
    /* 3F864 8004F064 DEA2000C */  jal        Str_Copy
    /* 3F868 8004F068 030022A2 */   sb        $v0, 0x3($s1)
    /* 3F86C 8004F06C 80002726 */  addiu      $a3, $s1, 0x80
    /* 3F870 8004F070 1700028A */  lwl        $v0, 0x17($s0)
    /* 3F874 8004F074 1400029A */  lwr        $v0, 0x14($s0)
    /* 3F878 8004F078 1B00038A */  lwl        $v1, 0x1B($s0)
    /* 3F87C 8004F07C 1800039A */  lwr        $v1, 0x18($s0)
    /* 3F880 8004F080 1F00048A */  lwl        $a0, 0x1F($s0)
    /* 3F884 8004F084 1C00049A */  lwr        $a0, 0x1C($s0)
    /* 3F888 8004F088 2300058A */  lwl        $a1, 0x23($s0)
    /* 3F88C 8004F08C 2000059A */  lwr        $a1, 0x20($s0)
    /* 3F890 8004F090 630022AA */  swl        $v0, 0x63($s1)
    /* 3F894 8004F094 600022BA */  swr        $v0, 0x60($s1)
    /* 3F898 8004F098 670023AA */  swl        $v1, 0x67($s1)
    /* 3F89C 8004F09C 640023BA */  swr        $v1, 0x64($s1)
    /* 3F8A0 8004F0A0 6B0024AA */  swl        $a0, 0x6B($s1)
    /* 3F8A4 8004F0A4 680024BA */  swr        $a0, 0x68($s1)
    /* 3F8A8 8004F0A8 6F0025AA */  swl        $a1, 0x6F($s1)
    /* 3F8AC 8004F0AC 6C0025BA */  swr        $a1, 0x6C($s1)
    /* 3F8B0 8004F0B0 2700028A */  lwl        $v0, 0x27($s0)
    /* 3F8B4 8004F0B4 2400029A */  lwr        $v0, 0x24($s0)
    /* 3F8B8 8004F0B8 2B00038A */  lwl        $v1, 0x2B($s0)
    /* 3F8BC 8004F0BC 2800039A */  lwr        $v1, 0x28($s0)
    /* 3F8C0 8004F0C0 2F00048A */  lwl        $a0, 0x2F($s0)
    /* 3F8C4 8004F0C4 2C00049A */  lwr        $a0, 0x2C($s0)
    /* 3F8C8 8004F0C8 3300058A */  lwl        $a1, 0x33($s0)
    /* 3F8CC 8004F0CC 3000059A */  lwr        $a1, 0x30($s0)
    /* 3F8D0 8004F0D0 730022AA */  swl        $v0, 0x73($s1)
    /* 3F8D4 8004F0D4 700022BA */  swr        $v0, 0x70($s1)
    /* 3F8D8 8004F0D8 770023AA */  swl        $v1, 0x77($s1)
    /* 3F8DC 8004F0DC 740023BA */  swr        $v1, 0x74($s1)
    /* 3F8E0 8004F0E0 7B0024AA */  swl        $a0, 0x7B($s1)
    /* 3F8E4 8004F0E4 780024BA */  swr        $a0, 0x78($s1)
    /* 3F8E8 8004F0E8 7F0025AA */  swl        $a1, 0x7F($s1)
    /* 3F8EC 8004F0EC 7C0025BA */  swr        $a1, 0x7C($s1)
    /* 3F8F0 8004F0F0 40000626 */  addiu      $a2, $s0, 0x40
    /* 3F8F4 8004F0F4 2510C700 */  or         $v0, $a2, $a3
    /* 3F8F8 8004F0F8 03004230 */  andi       $v0, $v0, 0x3
    /* 3F8FC 8004F0FC 16004010 */  beqz       $v0, .Lfunc_8004EF6C_8004F158
    /* 3F900 8004F100 C0000826 */   addiu     $t0, $s0, 0xC0
  .Lfunc_8004EF6C_8004F104:
    /* 3F904 8004F104 0300C288 */  lwl        $v0, 0x3($a2)
    /* 3F908 8004F108 0000C298 */  lwr        $v0, 0x0($a2)
    /* 3F90C 8004F10C 0700C388 */  lwl        $v1, 0x7($a2)
    /* 3F910 8004F110 0400C398 */  lwr        $v1, 0x4($a2)
    /* 3F914 8004F114 0B00C488 */  lwl        $a0, 0xB($a2)
    /* 3F918 8004F118 0800C498 */  lwr        $a0, 0x8($a2)
    /* 3F91C 8004F11C 0F00C588 */  lwl        $a1, 0xF($a2)
    /* 3F920 8004F120 0C00C598 */  lwr        $a1, 0xC($a2)
    /* 3F924 8004F124 0300E2A8 */  swl        $v0, 0x3($a3)
    /* 3F928 8004F128 0000E2B8 */  swr        $v0, 0x0($a3)
    /* 3F92C 8004F12C 0700E3A8 */  swl        $v1, 0x7($a3)
    /* 3F930 8004F130 0400E3B8 */  swr        $v1, 0x4($a3)
    /* 3F934 8004F134 0B00E4A8 */  swl        $a0, 0xB($a3)
    /* 3F938 8004F138 0800E4B8 */  swr        $a0, 0x8($a3)
    /* 3F93C 8004F13C 0F00E5A8 */  swl        $a1, 0xF($a3)
    /* 3F940 8004F140 0C00E5B8 */  swr        $a1, 0xC($a3)
    /* 3F944 8004F144 1000C624 */  addiu      $a2, $a2, 0x10
    /* 3F948 8004F148 EEFFC814 */  bne        $a2, $t0, .Lfunc_8004EF6C_8004F104
    /* 3F94C 8004F14C 1000E724 */   addiu     $a3, $a3, 0x10
    /* 3F950 8004F150 623C0108 */  j          .Lfunc_8004EF6C_8004F188
    /* 3F954 8004F154 00012726 */   addiu     $a3, $s1, 0x100
  .Lfunc_8004EF6C_8004F158:
    /* 3F958 8004F158 0000C28C */  lw         $v0, 0x0($a2)
    /* 3F95C 8004F15C 0400C38C */  lw         $v1, 0x4($a2)
    /* 3F960 8004F160 0800C48C */  lw         $a0, 0x8($a2)
    /* 3F964 8004F164 0C00C58C */  lw         $a1, 0xC($a2)
    /* 3F968 8004F168 0000E2AC */  sw         $v0, 0x0($a3)
    /* 3F96C 8004F16C 0400E3AC */  sw         $v1, 0x4($a3)
    /* 3F970 8004F170 0800E4AC */  sw         $a0, 0x8($a3)
    /* 3F974 8004F174 0C00E5AC */  sw         $a1, 0xC($a3)
    /* 3F978 8004F178 1000C624 */  addiu      $a2, $a2, 0x10
    /* 3F97C 8004F17C F6FFC814 */  bne        $a2, $t0, .Lfunc_8004EF6C_8004F158
    /* 3F980 8004F180 1000E724 */   addiu     $a3, $a3, 0x10
    /* 3F984 8004F184 00012726 */  addiu      $a3, $s1, 0x100
  .Lfunc_8004EF6C_8004F188:
    /* 3F988 8004F188 C0000626 */  addiu      $a2, $s0, 0xC0
    /* 3F98C 8004F18C 2510C700 */  or         $v0, $a2, $a3
    /* 3F990 8004F190 03004230 */  andi       $v0, $v0, 0x3
    /* 3F994 8004F194 16004010 */  beqz       $v0, .Lfunc_8004EF6C_8004F1F0
    /* 3F998 8004F198 40010826 */   addiu     $t0, $s0, 0x140
  .Lfunc_8004EF6C_8004F19C:
    /* 3F99C 8004F19C 0300C288 */  lwl        $v0, 0x3($a2)
    /* 3F9A0 8004F1A0 0000C298 */  lwr        $v0, 0x0($a2)
    /* 3F9A4 8004F1A4 0700C388 */  lwl        $v1, 0x7($a2)
    /* 3F9A8 8004F1A8 0400C398 */  lwr        $v1, 0x4($a2)
    /* 3F9AC 8004F1AC 0B00C488 */  lwl        $a0, 0xB($a2)
    /* 3F9B0 8004F1B0 0800C498 */  lwr        $a0, 0x8($a2)
    /* 3F9B4 8004F1B4 0F00C588 */  lwl        $a1, 0xF($a2)
    /* 3F9B8 8004F1B8 0C00C598 */  lwr        $a1, 0xC($a2)
    /* 3F9BC 8004F1BC 0300E2A8 */  swl        $v0, 0x3($a3)
    /* 3F9C0 8004F1C0 0000E2B8 */  swr        $v0, 0x0($a3)
    /* 3F9C4 8004F1C4 0700E3A8 */  swl        $v1, 0x7($a3)
    /* 3F9C8 8004F1C8 0400E3B8 */  swr        $v1, 0x4($a3)
    /* 3F9CC 8004F1CC 0B00E4A8 */  swl        $a0, 0xB($a3)
    /* 3F9D0 8004F1D0 0800E4B8 */  swr        $a0, 0x8($a3)
    /* 3F9D4 8004F1D4 0F00E5A8 */  swl        $a1, 0xF($a3)
    /* 3F9D8 8004F1D8 0C00E5B8 */  swr        $a1, 0xC($a3)
    /* 3F9DC 8004F1DC 1000C624 */  addiu      $a2, $a2, 0x10
    /* 3F9E0 8004F1E0 EEFFC814 */  bne        $a2, $t0, .Lfunc_8004EF6C_8004F19C
    /* 3F9E4 8004F1E4 1000E724 */   addiu     $a3, $a3, 0x10
    /* 3F9E8 8004F1E8 883C0108 */  j          .Lfunc_8004EF6C_8004F220
    /* 3F9EC 8004F1EC 80012726 */   addiu     $a3, $s1, 0x180
  .Lfunc_8004EF6C_8004F1F0:
    /* 3F9F0 8004F1F0 0000C28C */  lw         $v0, 0x0($a2)
    /* 3F9F4 8004F1F4 0400C38C */  lw         $v1, 0x4($a2)
    /* 3F9F8 8004F1F8 0800C48C */  lw         $a0, 0x8($a2)
    /* 3F9FC 8004F1FC 0C00C58C */  lw         $a1, 0xC($a2)
    /* 3FA00 8004F200 0000E2AC */  sw         $v0, 0x0($a3)
    /* 3FA04 8004F204 0400E3AC */  sw         $v1, 0x4($a3)
    /* 3FA08 8004F208 0800E4AC */  sw         $a0, 0x8($a3)
    /* 3FA0C 8004F20C 0C00E5AC */  sw         $a1, 0xC($a3)
    /* 3FA10 8004F210 1000C624 */  addiu      $a2, $a2, 0x10
    /* 3FA14 8004F214 F6FFC814 */  bne        $a2, $t0, .Lfunc_8004EF6C_8004F1F0
    /* 3FA18 8004F218 1000E724 */   addiu     $a3, $a3, 0x10
    /* 3FA1C 8004F21C 80012726 */  addiu      $a3, $s1, 0x180
  .Lfunc_8004EF6C_8004F220:
    /* 3FA20 8004F220 40010626 */  addiu      $a2, $s0, 0x140
    /* 3FA24 8004F224 2510C700 */  or         $v0, $a2, $a3
    /* 3FA28 8004F228 03004230 */  andi       $v0, $v0, 0x3
    /* 3FA2C 8004F22C 16004010 */  beqz       $v0, .Lfunc_8004EF6C_8004F288
    /* 3FA30 8004F230 C0010826 */   addiu     $t0, $s0, 0x1C0
  .Lfunc_8004EF6C_8004F234:
    /* 3FA34 8004F234 0300C288 */  lwl        $v0, 0x3($a2)
    /* 3FA38 8004F238 0000C298 */  lwr        $v0, 0x0($a2)
    /* 3FA3C 8004F23C 0700C388 */  lwl        $v1, 0x7($a2)
    /* 3FA40 8004F240 0400C398 */  lwr        $v1, 0x4($a2)
    /* 3FA44 8004F244 0B00C488 */  lwl        $a0, 0xB($a2)
    /* 3FA48 8004F248 0800C498 */  lwr        $a0, 0x8($a2)
    /* 3FA4C 8004F24C 0F00C588 */  lwl        $a1, 0xF($a2)
    /* 3FA50 8004F250 0C00C598 */  lwr        $a1, 0xC($a2)
    /* 3FA54 8004F254 0300E2A8 */  swl        $v0, 0x3($a3)
    /* 3FA58 8004F258 0000E2B8 */  swr        $v0, 0x0($a3)
    /* 3FA5C 8004F25C 0700E3A8 */  swl        $v1, 0x7($a3)
    /* 3FA60 8004F260 0400E3B8 */  swr        $v1, 0x4($a3)
    /* 3FA64 8004F264 0B00E4A8 */  swl        $a0, 0xB($a3)
    /* 3FA68 8004F268 0800E4B8 */  swr        $a0, 0x8($a3)
    /* 3FA6C 8004F26C 0F00E5A8 */  swl        $a1, 0xF($a3)
    /* 3FA70 8004F270 0C00E5B8 */  swr        $a1, 0xC($a3)
    /* 3FA74 8004F274 1000C624 */  addiu      $a2, $a2, 0x10
    /* 3FA78 8004F278 EEFFC814 */  bne        $a2, $t0, .Lfunc_8004EF6C_8004F234
    /* 3FA7C 8004F27C 1000E724 */   addiu     $a3, $a3, 0x10
    /* 3FA80 8004F280 AE3C0108 */  j          .Lfunc_8004EF6C_8004F2B8
    /* 3FA84 8004F284 21204002 */   addu      $a0, $s2, $zero
  .Lfunc_8004EF6C_8004F288:
    /* 3FA88 8004F288 0000C28C */  lw         $v0, 0x0($a2)
    /* 3FA8C 8004F28C 0400C38C */  lw         $v1, 0x4($a2)
    /* 3FA90 8004F290 0800C48C */  lw         $a0, 0x8($a2)
    /* 3FA94 8004F294 0C00C58C */  lw         $a1, 0xC($a2)
    /* 3FA98 8004F298 0000E2AC */  sw         $v0, 0x0($a3)
    /* 3FA9C 8004F29C 0400E3AC */  sw         $v1, 0x4($a3)
    /* 3FAA0 8004F2A0 0800E4AC */  sw         $a0, 0x8($a3)
    /* 3FAA4 8004F2A4 0C00E5AC */  sw         $a1, 0xC($a3)
    /* 3FAA8 8004F2A8 1000C624 */  addiu      $a2, $a2, 0x10
    /* 3FAAC 8004F2AC F6FFC814 */  bne        $a2, $t0, .Lfunc_8004EF6C_8004F288
    /* 3FAB0 8004F2B0 1000E724 */   addiu     $a3, $a3, 0x10
    /* 3FAB4 8004F2B4 21204002 */  addu       $a0, $s2, $zero
  .Lfunc_8004EF6C_8004F2B8:
    /* 3FAB8 8004F2B8 21282002 */  addu       $a1, $s1, $zero
    /* 3FABC 8004F2BC FF00E632 */  andi       $a2, $s7, 0xFF
    /* 3FAC0 8004F2C0 C0310600 */  sll        $a2, $a2, 7
    /* 3FAC4 8004F2C4 224D000C */  jal        func_80013488
    /* 3FAC8 8004F2C8 8000C624 */   addiu     $a2, $a2, 0x80
    /* 3FACC 8004F2CC 3F5F000C */  jal        BMemFree
    /* 3FAD0 8004F2D0 21202002 */   addu      $a0, $s1, $zero
    /* 3FAD4 8004F2D4 21204002 */  addu       $a0, $s2, $zero
    /* 3FAD8 8004F2D8 2128C003 */  addu       $a1, $fp, $zero
    /* 3FADC 8004F2DC 7F006626 */  addiu      $a2, $s3, 0x7F
    /* 3FAE0 8004F2E0 C2310600 */  srl        $a2, $a2, 7
    /* 3FAE4 8004F2E4 224D000C */  jal        func_80013488
    /* 3FAE8 8004F2E8 C0310600 */   sll       $a2, $a2, 7
    /* 3FAEC 8004F2EC 3E42010C */  jal        TextBuf__WriteStr
    /* 3FAF0 8004F2F0 21204002 */   addu      $a0, $s2, $zero
    /* 3FAF4 8004F2F4 01000234 */  ori        $v0, $zero, 0x1
  .Lfunc_8004EF6C_8004F2F8:
    /* 3FAF8 8004F2F8 5400BF8F */  lw         $ra, 0x54($sp)
    /* 3FAFC 8004F2FC 5000BE8F */  lw         $fp, 0x50($sp)
    /* 3FB00 8004F300 4C00B78F */  lw         $s7, 0x4C($sp)
    /* 3FB04 8004F304 4800B68F */  lw         $s6, 0x48($sp)
    /* 3FB08 8004F308 4400B58F */  lw         $s5, 0x44($sp)
    /* 3FB0C 8004F30C 4000B48F */  lw         $s4, 0x40($sp)
    /* 3FB10 8004F310 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 3FB14 8004F314 3800B28F */  lw         $s2, 0x38($sp)
    /* 3FB18 8004F318 3400B18F */  lw         $s1, 0x34($sp)
    /* 3FB1C 8004F31C 3000B08F */  lw         $s0, 0x30($sp)
    /* 3FB20 8004F320 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 3FB24 8004F324 0800E003 */  jr         $ra
    /* 3FB28 8004F328 00000000 */   nop
endlabel TextPanel__FormatStringEx
