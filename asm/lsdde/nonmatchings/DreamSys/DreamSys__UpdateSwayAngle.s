.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamSys__UpdateSwayAngle, 0x134

glabel DreamSys__UpdateSwayAngle
    /* 4A0E8 800598E8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4A0EC 800598EC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4A0F0 800598F0 21808000 */  addu       $s0, $a0, $zero
    /* 4A0F4 800598F4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 4A0F8 800598F8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4A0FC 800598FC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4A100 80059900 A000028E */  lw         $v0, 0xA0($s0)
    /* 4A104 80059904 9000038E */  lw         $v1, 0x90($s0)
    /* 4A108 80059908 01004238 */  xori       $v0, $v0, 0x1
    /* 4A10C 8005990C 0100422C */  sltiu      $v0, $v0, 0x1
    /* 4A110 80059910 24006010 */  beqz       $v1, .Lfunc_800598E8_800599A4
    /* 4A114 80059914 A80002AE */   sw        $v0, 0xA8($s0)
    /* 4A118 80059918 80180300 */  sll        $v1, $v1, 2
    /* 4A11C 8005991C 0880013C */  lui        $at, %hi(gSwayAngleRates)
    /* 4A120 80059920 687E2124 */  addiu      $at, $at, %lo(gSwayAngleRates)
    /* 4A124 80059924 21082300 */  addu       $at, $at, $v1
    /* 4A128 80059928 0000328C */  lw         $s2, 0x0($at)
    /* 4A12C 8005992C 9400028E */  lw         $v0, 0x94($s0)
    /* 4A130 80059930 0880013C */  lui        $at, %hi(gSwayAngleLimits)
    /* 4A134 80059934 747E2124 */  addiu      $at, $at, %lo(gSwayAngleLimits)
    /* 4A138 80059938 21082300 */  addu       $at, $at, $v1
    /* 4A13C 8005993C 0000238C */  lw         $v1, 0x0($at)
    /* 4A140 80059940 21884202 */  addu       $s1, $s2, $v0
    /* 4A144 80059944 05002006 */  bltz       $s1, .Lfunc_800598E8_8005995C
    /* 4A148 80059948 2A102302 */   slt       $v0, $s1, $v1
    /* 4A14C 8005994C 08004014 */  bnez       $v0, .Lfunc_800598E8_80059970
    /* 4A150 80059950 21200002 */   addu      $a0, $s0, $zero
    /* 4A154 80059954 7E660108 */  j          .Lfunc_800598E8_800599F8
    /* 4A158 80059958 900000AE */   sw        $zero, 0x90($s0)
  .Lfunc_800598E8_8005995C:
    /* 4A15C 8005995C 27101100 */  nor        $v0, $zero, $s1
    /* 4A160 80059960 01004224 */  addiu      $v0, $v0, 0x1
    /* 4A164 80059964 2A104300 */  slt        $v0, $v0, $v1
    /* 4A168 80059968 0B004010 */  beqz       $v0, .Lfunc_800598E8_80059998
    /* 4A16C 8005996C 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_800598E8_80059970:
    /* 4A170 80059970 0880063C */  lui        $a2, %hi(D_80087E84)
    /* 4A174 80059974 847EC624 */  addiu      $a2, $a2, %lo(D_80087E84)
    /* 4A178 80059978 0000D2A4 */  sh         $s2, 0x0($a2)
    /* 4A17C 8005997C 0000028E */  lw         $v0, 0x0($s0)
    /* 4A180 80059980 21280000 */  addu       $a1, $zero, $zero
    /* 4A184 80059984 4400428C */  lw         $v0, 0x44($v0)
    /* 4A188 80059988 00000000 */  nop
    /* 4A18C 8005998C 09F84000 */  jalr       $v0
    /* 4A190 80059990 FCFFC624 */   addiu     $a2, $a2, -0x4
    /* 4A194 80059994 940011AE */  sw         $s1, 0x94($s0)
  .Lfunc_800598E8_80059998:
    /* 4A198 80059998 900000AE */  sw         $zero, 0x90($s0)
    /* 4A19C 8005999C 7E660108 */  j          .Lfunc_800598E8_800599F8
    /* 4A1A0 800599A0 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_800598E8_800599A4:
    /* 4A1A4 800599A4 9400028E */  lw         $v0, 0x94($s0)
    /* 4A1A8 800599A8 00000000 */  nop
    /* 4A1AC 800599AC 14004010 */  beqz       $v0, .Lfunc_800598E8_80059A00
    /* 4A1B0 800599B0 00000000 */   nop
    /* 4A1B4 800599B4 02004104 */  bgez       $v0, .Lfunc_800598E8_800599C0
    /* 4A1B8 800599B8 D3FF1224 */   addiu     $s2, $zero, -0x2D
    /* 4A1BC 800599BC 2D001234 */  ori        $s2, $zero, 0x2D
  .Lfunc_800598E8_800599C0:
    /* 4A1C0 800599C0 21200002 */  addu       $a0, $s0, $zero
    /* 4A1C4 800599C4 0880063C */  lui        $a2, %hi(D_80087E84)
    /* 4A1C8 800599C8 847EC624 */  addiu      $a2, $a2, %lo(D_80087E84)
    /* 4A1CC 800599CC 0000D2A4 */  sh         $s2, 0x0($a2)
    /* 4A1D0 800599D0 0000028E */  lw         $v0, 0x0($s0)
    /* 4A1D4 800599D4 21280000 */  addu       $a1, $zero, $zero
    /* 4A1D8 800599D8 4400428C */  lw         $v0, 0x44($v0)
    /* 4A1DC 800599DC 00000000 */  nop
    /* 4A1E0 800599E0 09F84000 */  jalr       $v0
    /* 4A1E4 800599E4 FCFFC624 */   addiu     $a2, $a2, -0x4
    /* 4A1E8 800599E8 9400028E */  lw         $v0, 0x94($s0)
    /* 4A1EC 800599EC 21200002 */  addu       $a0, $s0, $zero
    /* 4A1F0 800599F0 21104202 */  addu       $v0, $s2, $v0
    /* 4A1F4 800599F4 940082AC */  sw         $v0, 0x94($a0)
  .Lfunc_800598E8_800599F8:
    /* 4A1F8 800599F8 8766010C */  jal        DreamSys__StepBlinkState
    /* 4A1FC 800599FC 00000000 */   nop
  .Lfunc_800598E8_80059A00:
    /* 4A200 80059A00 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4A204 80059A04 1800B28F */  lw         $s2, 0x18($sp)
    /* 4A208 80059A08 1400B18F */  lw         $s1, 0x14($sp)
    /* 4A20C 80059A0C 1000B08F */  lw         $s0, 0x10($sp)
    /* 4A210 80059A10 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4A214 80059A14 0800E003 */  jr         $ra
    /* 4A218 80059A18 00000000 */   nop
endlabel DreamSys__UpdateSwayAngle
