.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800197C4, 0xD8

glabel func_800197C4
    /* 9FC4 800197C4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9FC8 800197C8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 9FCC 800197CC 2190A000 */  addu       $s2, $a1, $zero
    /* 9FD0 800197D0 2400BFAF */  sw         $ra, 0x24($sp)
    /* 9FD4 800197D4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 9FD8 800197D8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 9FDC 800197DC 7800428E */  lw         $v0, 0x78($s2)
    /* 9FE0 800197E0 00000000 */  nop
    /* 9FE4 800197E4 13004014 */  bnez       $v0, .Lfunc_800197C4_80019834
    /* 9FE8 800197E8 21888000 */   addu      $s1, $a0, $zero
    /* 9FEC 800197EC FF00043C */  lui        $a0, (0xFFFFFF >> 16)
    /* 9FF0 800197F0 FFFF8434 */  ori        $a0, $a0, (0xFFFFFF & 0xFFFF)
    /* 9FF4 800197F4 00FF063C */  lui        $a2, (0xFF000000 >> 16)
    /* 9FF8 800197F8 3000428E */  lw         $v0, 0x30($s2)
    /* 9FFC 800197FC 0000238E */  lw         $v1, 0x0($s1)
    /* A000 80019800 0000428C */  lw         $v0, 0x0($v0)
    /* A004 80019804 24186600 */  and        $v1, $v1, $a2
    /* A008 80019808 24104400 */  and        $v0, $v0, $a0
    /* A00C 8001980C 25186200 */  or         $v1, $v1, $v0
    /* A010 80019810 000023AE */  sw         $v1, 0x0($s1)
    /* A014 80019814 3000458E */  lw         $a1, 0x30($s2)
    /* A018 80019818 14002226 */  addiu      $v0, $s1, 0x14
    /* A01C 8001981C 0000A38C */  lw         $v1, 0x0($a1)
    /* A020 80019820 24202402 */  and        $a0, $s1, $a0
    /* A024 80019824 24186600 */  and        $v1, $v1, $a2
    /* A028 80019828 25186400 */  or         $v1, $v1, $a0
    /* A02C 8001982C 20660008 */  j          .Lfunc_800197C4_80019880
    /* A030 80019830 0000A3AC */   sw        $v1, 0x0($a1)
  .Lfunc_800197C4_80019834:
    /* A034 80019834 0980103C */  lui        $s0, %hi(D_8008ACD0)
    /* A038 80019838 D0AC1026 */  addiu      $s0, $s0, %lo(D_8008ACD0)
    /* A03C 8001983C 21200002 */  addu       $a0, $s0, $zero
    /* A040 80019840 21284002 */  addu       $a1, $s2, $zero
    /* A044 80019844 04002626 */  addiu      $a2, $s1, 0x4
    /* A048 80019848 21380000 */  addu       $a3, $zero, $zero
    /* A04C 8001984C 1000A0AF */  sw         $zero, 0x10($sp)
    /* A050 80019850 E068000C */  jal        func_8001A380
    /* A054 80019854 1400A0AF */   sw        $zero, 0x14($sp)
    /* A058 80019858 88004426 */  addiu      $a0, $s2, 0x88
    /* A05C 8001985C A4004526 */  addiu      $a1, $s2, 0xA4
    /* A060 80019860 08002626 */  addiu      $a2, $s1, 0x8
    /* A064 80019864 0C002726 */  addiu      $a3, $s1, 0xC
    /* A068 80019868 10002226 */  addiu      $v0, $s1, 0x10
    /* A06C 8001986C FB68000C */  jal        CopyPrimTriple
    /* A070 80019870 1000A2AF */   sw        $v0, 0x10($sp)
    /* A074 80019874 21202002 */  addu       $a0, $s1, $zero
    /* A078 80019878 5969000C */  jal        func_8001A564
    /* A07C 8001987C 21280002 */   addu      $a1, $s0, $zero
  .Lfunc_800197C4_80019880:
    /* A080 80019880 2400BF8F */  lw         $ra, 0x24($sp)
    /* A084 80019884 2000B28F */  lw         $s2, 0x20($sp)
    /* A088 80019888 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A08C 8001988C 1800B08F */  lw         $s0, 0x18($sp)
    /* A090 80019890 2800BD27 */  addiu      $sp, $sp, 0x28
    /* A094 80019894 0800E003 */  jr         $ra
    /* A098 80019898 00000000 */   nop
endlabel func_800197C4
