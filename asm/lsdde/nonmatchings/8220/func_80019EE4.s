.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80019EE4, 0x180

glabel func_80019EE4
    /* A6E4 80019EE4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A6E8 80019EE8 2000B2AF */  sw         $s2, 0x20($sp)
    /* A6EC 80019EEC 2190A000 */  addu       $s2, $a1, $zero
    /* A6F0 80019EF0 2400BFAF */  sw         $ra, 0x24($sp)
    /* A6F4 80019EF4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A6F8 80019EF8 1800B0AF */  sw         $s0, 0x18($sp)
    /* A6FC 80019EFC 7800428E */  lw         $v0, 0x78($s2)
    /* A700 80019F00 00000000 */  nop
    /* A704 80019F04 13004014 */  bnez       $v0, .Lfunc_80019EE4_80019F54
    /* A708 80019F08 21888000 */   addu      $s1, $a0, $zero
    /* A70C 80019F0C FF00043C */  lui        $a0, (0xFFFFFF >> 16)
    /* A710 80019F10 FFFF8434 */  ori        $a0, $a0, (0xFFFFFF & 0xFFFF)
    /* A714 80019F14 00FF063C */  lui        $a2, (0xFF000000 >> 16)
    /* A718 80019F18 3000428E */  lw         $v0, 0x30($s2)
    /* A71C 80019F1C 0000238E */  lw         $v1, 0x0($s1)
    /* A720 80019F20 0000428C */  lw         $v0, 0x0($v0)
    /* A724 80019F24 24186600 */  and        $v1, $v1, $a2
    /* A728 80019F28 24104400 */  and        $v0, $v0, $a0
    /* A72C 80019F2C 25186200 */  or         $v1, $v1, $v0
    /* A730 80019F30 000023AE */  sw         $v1, 0x0($s1)
    /* A734 80019F34 3000458E */  lw         $a1, 0x30($s2)
    /* A738 80019F38 28002226 */  addiu      $v0, $s1, 0x28
    /* A73C 80019F3C 0000A38C */  lw         $v1, 0x0($a1)
    /* A740 80019F40 24202402 */  and        $a0, $s1, $a0
    /* A744 80019F44 24186600 */  and        $v1, $v1, $a2
    /* A748 80019F48 25186400 */  or         $v1, $v1, $a0
    /* A74C 80019F4C 12680008 */  j          .Lfunc_80019EE4_8001A048
    /* A750 80019F50 0000A3AC */   sw        $v1, 0x0($a1)
  .Lfunc_80019EE4_80019F54:
    /* A754 80019F54 0980103C */  lui        $s0, %hi(D_8008ACD0)
    /* A758 80019F58 D0AC1026 */  addiu      $s0, $s0, %lo(D_8008ACD0)
    /* A75C 80019F5C 21200002 */  addu       $a0, $s0, $zero
    /* A760 80019F60 21284002 */  addu       $a1, $s2, $zero
    /* A764 80019F64 0E002296 */  lhu        $v0, 0xE($s1)
    /* A768 80019F68 04002626 */  addiu      $a2, $s1, 0x4
    /* A76C 80019F6C 1000A2AF */  sw         $v0, 0x10($sp)
    /* A770 80019F70 1A002296 */  lhu        $v0, 0x1A($s1)
    /* A774 80019F74 01000734 */  ori        $a3, $zero, 0x1
    /* A778 80019F78 E068000C */  jal        func_8001A380
    /* A77C 80019F7C 1400A2AF */   sw        $v0, 0x14($sp)
    /* A780 80019F80 88004426 */  addiu      $a0, $s2, 0x88
    /* A784 80019F84 A4004526 */  addiu      $a1, $s2, 0xA4
    /* A788 80019F88 08002626 */  addiu      $a2, $s1, 0x8
    /* A78C 80019F8C 14002726 */  addiu      $a3, $s1, 0x14
    /* A790 80019F90 20002226 */  addiu      $v0, $s1, 0x20
    /* A794 80019F94 FB68000C */  jal        CopyPrimTriple
    /* A798 80019F98 1000A2AF */   sw        $v0, 0x10($sp)
    /* A79C 80019F9C 8800438E */  lw         $v1, 0x88($s2)
    /* A7A0 80019FA0 26002296 */  lhu        $v0, 0x26($s1)
    /* A7A4 80019FA4 00000000 */  nop
    /* A7A8 80019FA8 0A0062A4 */  sh         $v0, 0xA($v1)
    /* A7AC 80019FAC 8C00438E */  lw         $v1, 0x8C($s2)
    /* A7B0 80019FB0 26002296 */  lhu        $v0, 0x26($s1)
    /* A7B4 80019FB4 00000000 */  nop
    /* A7B8 80019FB8 0A0062A4 */  sh         $v0, 0xA($v1)
    /* A7BC 80019FBC 9000438E */  lw         $v1, 0x90($s2)
    /* A7C0 80019FC0 26002296 */  lhu        $v0, 0x26($s1)
    /* A7C4 80019FC4 00000000 */  nop
    /* A7C8 80019FC8 0A0062A4 */  sh         $v0, 0xA($v1)
    /* A7CC 80019FCC 8800428E */  lw         $v0, 0x88($s2)
    /* A7D0 80019FD0 0700238A */  lwl        $v1, 0x7($s1)
    /* A7D4 80019FD4 0400239A */  lwr        $v1, 0x4($s1)
    /* A7D8 80019FD8 00000000 */  nop
    /* A7DC 80019FDC 0F0043A8 */  swl        $v1, 0xF($v0)
    /* A7E0 80019FE0 0C0043B8 */  swr        $v1, 0xC($v0)
    /* A7E4 80019FE4 8C00428E */  lw         $v0, 0x8C($s2)
    /* A7E8 80019FE8 1300238A */  lwl        $v1, 0x13($s1)
    /* A7EC 80019FEC 1000239A */  lwr        $v1, 0x10($s1)
    /* A7F0 80019FF0 00000000 */  nop
    /* A7F4 80019FF4 0F0043A8 */  swl        $v1, 0xF($v0)
    /* A7F8 80019FF8 0C0043B8 */  swr        $v1, 0xC($v0)
    /* A7FC 80019FFC 9000428E */  lw         $v0, 0x90($s2)
    /* A800 8001A000 1F00238A */  lwl        $v1, 0x1F($s1)
    /* A804 8001A004 1C00239A */  lwr        $v1, 0x1C($s1)
    /* A808 8001A008 00000000 */  nop
    /* A80C 8001A00C 0F0043A8 */  swl        $v1, 0xF($v0)
    /* A810 8001A010 0C0043B8 */  swr        $v1, 0xC($v0)
    /* A814 8001A014 8800438E */  lw         $v1, 0x88($s2)
    /* A818 8001A018 0C002296 */  lhu        $v0, 0xC($s1)
    /* A81C 8001A01C 00000000 */  nop
    /* A820 8001A020 080062A4 */  sh         $v0, 0x8($v1)
    /* A824 8001A024 8C00438E */  lw         $v1, 0x8C($s2)
    /* A828 8001A028 18002296 */  lhu        $v0, 0x18($s1)
    /* A82C 8001A02C 21202002 */  addu       $a0, $s1, $zero
    /* A830 8001A030 080062A4 */  sh         $v0, 0x8($v1)
    /* A834 8001A034 9000438E */  lw         $v1, 0x90($s2)
    /* A838 8001A038 24008294 */  lhu        $v0, 0x24($a0)
    /* A83C 8001A03C 21280002 */  addu       $a1, $s0, $zero
    /* A840 8001A040 F56F000C */  jal        func_8001BFD4
    /* A844 8001A044 080062A4 */   sh        $v0, 0x8($v1)
  .Lfunc_80019EE4_8001A048:
    /* A848 8001A048 2400BF8F */  lw         $ra, 0x24($sp)
    /* A84C 8001A04C 2000B28F */  lw         $s2, 0x20($sp)
    /* A850 8001A050 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A854 8001A054 1800B08F */  lw         $s0, 0x18($sp)
    /* A858 8001A058 2800BD27 */  addiu      $sp, $sp, 0x28
    /* A85C 8001A05C 0800E003 */  jr         $ra
    /* A860 8001A060 00000000 */   nop
endlabel func_80019EE4
