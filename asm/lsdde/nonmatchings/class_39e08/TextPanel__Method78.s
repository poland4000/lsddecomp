.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextPanel__Method78, 0x134

glabel TextPanel__Method78
    /* 400A4 8004F8A4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 400A8 8004F8A8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 400AC 8004F8AC 21808000 */  addu       $s0, $a0, $zero
    /* 400B0 8004F8B0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 400B4 8004F8B4 2190A000 */  addu       $s2, $a1, $zero
    /* 400B8 8004F8B8 2000BFAF */  sw         $ra, 0x20($sp)
    /* 400BC 8004F8BC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 400C0 8004F8C0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 400C4 8004F8C4 400012AE */  sw         $s2, 0x40($s0)
    /* 400C8 8004F8C8 440006AE */  sw         $a2, 0x44($s0)
    /* 400CC 8004F8CC 480007AE */  sw         $a3, 0x48($s0)
    /* 400D0 8004F8D0 3C00A28F */  lw         $v0, 0x3C($sp)
    /* 400D4 8004F8D4 4000A58F */  lw         $a1, 0x40($sp)
    /* 400D8 8004F8D8 4400B38F */  lw         $s3, 0x44($sp)
    /* 400DC 8004F8DC 3800B193 */  lbu        $s1, 0x38($sp)
    /* 400E0 8004F8E0 02000334 */  ori        $v1, $zero, 0x2
    /* 400E4 8004F8E4 240003AE */  sw         $v1, 0x24($s0)
    /* 400E8 8004F8E8 4C0011A2 */  sb         $s1, 0x4C($s0)
    /* 400EC 8004F8EC 500002AE */  sw         $v0, 0x50($s0)
    /* 400F0 8004F8F0 540005AE */  sw         $a1, 0x54($s0)
    /* 400F4 8004F8F4 763E010C */  jal        TextPanel__TrimLines
    /* 400F8 8004F8F8 580013AE */   sw        $s3, 0x58($s0)
    /* 400FC 8004F8FC 2E004010 */  beqz       $v0, .Lfunc_8004F8A4_8004F9B8
    /* 40100 8004F900 21200002 */   addu      $a0, $s0, $zero
    /* 40104 8004F904 0000028E */  lw         $v0, 0x0($s0)
    /* 40108 8004F908 21280000 */  addu       $a1, $zero, $zero
    /* 4010C 8004F90C 5400428C */  lw         $v0, 0x54($v0)
    /* 40110 8004F910 00000000 */  nop
    /* 40114 8004F914 09F84000 */  jalr       $v0
    /* 40118 8004F918 21304002 */   addu      $a2, $s2, $zero
    /* 4011C 8004F91C 0F004010 */  beqz       $v0, .Lfunc_8004F8A4_8004F95C
    /* 40120 8004F920 0A000534 */   ori       $a1, $zero, 0xA
    /* 40124 8004F924 2800038E */  lw         $v1, 0x28($s0)
    /* 40128 8004F928 00000000 */  nop
    /* 4012C 8004F92C 03006514 */  bne        $v1, $a1, .Lfunc_8004F8A4_8004F93C
    /* 40130 8004F930 11000234 */   ori       $v0, $zero, 0x11
    /* 40134 8004F934 523E0108 */  j          .Lfunc_8004F8A4_8004F948
    /* 40138 8004F938 11000534 */   ori       $a1, $zero, 0x11
  .Lfunc_8004F8A4_8004F93C:
    /* 4013C 8004F93C 02006214 */  bne        $v1, $v0, .Lfunc_8004F8A4_8004F948
    /* 40140 8004F940 00000000 */   nop
    /* 40144 8004F944 0B000534 */  ori        $a1, $zero, 0xB
  .Lfunc_8004F8A4_8004F948:
    /* 40148 8004F948 0000028E */  lw         $v0, 0x0($s0)
    /* 4014C 8004F94C 00000000 */  nop
    /* 40150 8004F950 7C00428C */  lw         $v0, 0x7C($v0)
    /* 40154 8004F954 6B3E0108 */  j          .Lfunc_8004F8A4_8004F9AC
    /* 40158 8004F958 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_8004F8A4_8004F95C:
    /* 4015C 8004F95C 21200002 */  addu       $a0, $s0, $zero
    /* 40160 8004F960 0000028E */  lw         $v0, 0x0($s0)
    /* 40164 8004F964 21282002 */  addu       $a1, $s1, $zero
    /* 40168 8004F968 6000428C */  lw         $v0, 0x60($v0)
    /* 4016C 8004F96C 00000000 */  nop
    /* 40170 8004F970 09F84000 */  jalr       $v0
    /* 40174 8004F974 21306002 */   addu      $a2, $s3, $zero
    /* 40178 8004F978 06004014 */  bnez       $v0, .Lfunc_8004F8A4_8004F994
    /* 4017C 8004F97C 11000534 */   ori       $a1, $zero, 0x11
    /* 40180 8004F980 0000028E */  lw         $v0, 0x0($s0)
    /* 40184 8004F984 21200002 */  addu       $a0, $s0, $zero
    /* 40188 8004F988 7C00428C */  lw         $v0, 0x7C($v0)
    /* 4018C 8004F98C 6B3E0108 */  j          .Lfunc_8004F8A4_8004F9AC
    /* 40190 8004F990 09000534 */   ori       $a1, $zero, 0x9
  .Lfunc_8004F8A4_8004F994:
    /* 40194 8004F994 2800028E */  lw         $v0, 0x28($s0)
    /* 40198 8004F998 0000038E */  lw         $v1, 0x0($s0)
    /* 4019C 8004F99C 02004514 */  bne        $v0, $a1, .Lfunc_8004F8A4_8004F9A8
    /* 401A0 8004F9A0 21200002 */   addu      $a0, $s0, $zero
    /* 401A4 8004F9A4 0B000534 */  ori        $a1, $zero, 0xB
  .Lfunc_8004F8A4_8004F9A8:
    /* 401A8 8004F9A8 7C00628C */  lw         $v0, 0x7C($v1)
  .Lfunc_8004F8A4_8004F9AC:
    /* 401AC 8004F9AC 00000000 */  nop
    /* 401B0 8004F9B0 09F84000 */  jalr       $v0
    /* 401B4 8004F9B4 00000000 */   nop
  .Lfunc_8004F8A4_8004F9B8:
    /* 401B8 8004F9B8 2000BF8F */  lw         $ra, 0x20($sp)
    /* 401BC 8004F9BC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 401C0 8004F9C0 1800B28F */  lw         $s2, 0x18($sp)
    /* 401C4 8004F9C4 1400B18F */  lw         $s1, 0x14($sp)
    /* 401C8 8004F9C8 1000B08F */  lw         $s0, 0x10($sp)
    /* 401CC 8004F9CC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 401D0 8004F9D0 0800E003 */  jr         $ra
    /* 401D4 8004F9D4 00000000 */   nop
endlabel TextPanel__Method78
