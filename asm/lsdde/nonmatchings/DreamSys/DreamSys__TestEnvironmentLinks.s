.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamSys__TestEnvironmentLinks, 0x1B8

glabel DreamSys__TestEnvironmentLinks
    /* 4A698 80059E98 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4A69C 80059E9C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4A6A0 80059EA0 21808000 */  addu       $s0, $a0, $zero
    /* 4A6A4 80059EA4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4A6A8 80059EA8 2190A000 */  addu       $s2, $a1, $zero
    /* 4A6AC 80059EAC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 4A6B0 80059EB0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 4A6B4 80059EB4 5E004012 */  beqz       $s2, .Lfunc_80059E98_8005A030
    /* 4A6B8 80059EB8 1400B1AF */   sw        $s1, 0x14($sp)
    /* 4A6BC 80059EBC AC00028E */  lw         $v0, 0xAC($s0)
    /* 4A6C0 80059EC0 0880013C */  lui        $at, %hi(D_80087E34)
    /* 4A6C4 80059EC4 347E2124 */  addiu      $at, $at, %lo(D_80087E34)
    /* 4A6C8 80059EC8 21083200 */  addu       $at, $at, $s2
    /* 4A6CC 80059ECC 00002380 */  lb         $v1, 0x0($at)
    /* 4A6D0 80059ED0 80100200 */  sll        $v0, $v0, 2
    /* 4A6D4 80059ED4 0880013C */  lui        $at, %hi(D_80087E20)
    /* 4A6D8 80059ED8 207E2124 */  addiu      $at, $at, %lo(D_80087E20)
    /* 4A6DC 80059EDC 21082200 */  addu       $at, $at, $v0
    /* 4A6E0 80059EE0 0000228C */  lw         $v0, 0x0($at)
    /* 4A6E4 80059EE4 00000000 */  nop
    /* 4A6E8 80059EE8 18006200 */  mult       $v1, $v0
    /* 4A6EC 80059EEC 0000028E */  lw         $v0, 0x0($s0)
    /* 4A6F0 80059EF0 00000000 */  nop
    /* 4A6F4 80059EF4 2C01428C */  lw         $v0, 0x12C($v0)
    /* 4A6F8 80059EF8 12980000 */  mflo       $s3
    /* 4A6FC 80059EFC 09F84000 */  jalr       $v0
    /* 4A700 80059F00 00000000 */   nop
    /* 4A704 80059F04 4C00048E */  lw         $a0, 0x4C($s0)
    /* 4A708 80059F08 00000000 */  nop
    /* 4A70C 80059F0C 0000828C */  lw         $v0, 0x0($a0)
    /* 4A710 80059F10 21280000 */  addu       $a1, $zero, $zero
    /* 4A714 80059F14 0C01428C */  lw         $v0, 0x10C($v0)
    /* 4A718 80059F18 00000000 */  nop
    /* 4A71C 80059F1C 09F84000 */  jalr       $v0
    /* 4A720 80059F20 21300000 */   addu      $a2, $zero, $zero
    /* 4A724 80059F24 21200002 */  addu       $a0, $s0, $zero
    /* 4A728 80059F28 0000038E */  lw         $v1, 0x0($s0)
    /* 4A72C 80059F2C 21884000 */  addu       $s1, $v0, $zero
    /* 4A730 80059F30 DC01628C */  lw         $v0, 0x1DC($v1)
    /* 4A734 80059F34 00000000 */  nop
    /* 4A738 80059F38 09F84000 */  jalr       $v0
    /* 4A73C 80059F3C 21282002 */   addu      $a1, $s1, $zero
    /* 4A740 80059F40 38004014 */  bnez       $v0, .Lfunc_80059E98_8005A024
    /* 4A744 80059F44 21200002 */   addu      $a0, $s0, $zero
    /* 4A748 80059F48 0000028E */  lw         $v0, 0x0($s0)
    /* 4A74C 80059F4C 00000000 */  nop
    /* 4A750 80059F50 D801428C */  lw         $v0, 0x1D8($v0)
    /* 4A754 80059F54 00000000 */  nop
    /* 4A758 80059F58 09F84000 */  jalr       $v0
    /* 4A75C 80059F5C 21282002 */   addu      $a1, $s1, $zero
    /* 4A760 80059F60 30004014 */  bnez       $v0, .Lfunc_80059E98_8005A024
    /* 4A764 80059F64 21200002 */   addu      $a0, $s0, $zero
    /* 4A768 80059F68 0000028E */  lw         $v0, 0x0($s0)
    /* 4A76C 80059F6C 00000000 */  nop
    /* 4A770 80059F70 D001428C */  lw         $v0, 0x1D0($v0)
    /* 4A774 80059F74 00000000 */  nop
    /* 4A778 80059F78 09F84000 */  jalr       $v0
    /* 4A77C 80059F7C 21282002 */   addu      $a1, $s1, $zero
    /* 4A780 80059F80 28004014 */  bnez       $v0, .Lfunc_80059E98_8005A024
    /* 4A784 80059F84 00000000 */   nop
    /* 4A788 80059F88 0000028E */  lw         $v0, 0x0($s0)
    /* 4A78C 80059F8C 00000000 */  nop
    /* 4A790 80059F90 2002428C */  lw         $v0, 0x220($v0)
    /* 4A794 80059F94 00000000 */  nop
    /* 4A798 80059F98 09F84000 */  jalr       $v0
    /* 4A79C 80059F9C 21200002 */   addu      $a0, $s0, $zero
    /* 4A7A0 80059FA0 21200002 */  addu       $a0, $s0, $zero
    /* 4A7A4 80059FA4 21286002 */  addu       $a1, $s3, $zero
    /* 4A7A8 80059FA8 80101200 */  sll        $v0, $s2, 2
    /* 4A7AC 80059FAC 0C09068E */  lw         $a2, 0x90C($s0)
    /* 4A7B0 80059FB0 0880013C */  lui        $at, %hi(D_80087E3C)
    /* 4A7B4 80059FB4 3C7E2124 */  addiu      $at, $at, %lo(D_80087E3C)
    /* 4A7B8 80059FB8 21082200 */  addu       $at, $at, $v0
    /* 4A7BC 80059FBC 0000228C */  lw         $v0, 0x0($at)
    /* 4A7C0 80059FC0 00000000 */  nop
    /* 4A7C4 80059FC4 09F84000 */  jalr       $v0
    /* 4A7C8 80059FC8 0100C62C */   sltiu     $a2, $a2, 0x1
    /* 4A7CC 80059FCC 6401028E */  lw         $v0, 0x164($s0)
    /* 4A7D0 80059FD0 00000000 */  nop
    /* 4A7D4 80059FD4 13004014 */  bnez       $v0, .Lfunc_80059E98_8005A024
    /* 4A7D8 80059FD8 00000000 */   nop
    /* 4A7DC 80059FDC 1400038E */  lw         $v1, 0x14($s0)
    /* 4A7E0 80059FE0 00000000 */  nop
    /* 4A7E4 80059FE4 1C00628C */  lw         $v0, 0x1C($v1)
    /* 4A7E8 80059FE8 00000000 */  nop
    /* 4A7EC 80059FEC 30F84228 */  slti       $v0, $v0, -0x7D0
    /* 4A7F0 80059FF0 0C004010 */  beqz       $v0, .Lfunc_80059E98_8005A024
    /* 4A7F4 80059FF4 00000000 */   nop
    /* 4A7F8 80059FF8 1800628C */  lw         $v0, 0x18($v1)
    /* 4A7FC 80059FFC 00000000 */  nop
    /* 4A800 8005A000 0DFE4228 */  slti       $v0, $v0, -0x1F3
    /* 4A804 8005A004 07004014 */  bnez       $v0, .Lfunc_80059E98_8005A024
    /* 4A808 8005A008 21200002 */   addu      $a0, $s0, $zero
    /* 4A80C 8005A00C 0000028E */  lw         $v0, 0x0($s0)
    /* 4A810 8005A010 21280002 */  addu       $a1, $s0, $zero
    /* 4A814 8005A014 E000428C */  lw         $v0, 0xE0($v0)
    /* 4A818 8005A018 00000000 */  nop
    /* 4A81C 8005A01C 09F84000 */  jalr       $v0
    /* 4A820 8005A020 04000634 */   ori       $a2, $zero, 0x4
  .Lfunc_80059E98_8005A024:
    /* 4A824 8005A024 1400028E */  lw         $v0, 0x14($s0)
    /* 4A828 8005A028 00000000 */  nop
    /* 4A82C 8005A02C 000040AC */  sw         $zero, 0x0($v0)
  .Lfunc_80059E98_8005A030:
    /* 4A830 8005A030 2000BF8F */  lw         $ra, 0x20($sp)
    /* 4A834 8005A034 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 4A838 8005A038 1800B28F */  lw         $s2, 0x18($sp)
    /* 4A83C 8005A03C 1400B18F */  lw         $s1, 0x14($sp)
    /* 4A840 8005A040 1000B08F */  lw         $s0, 0x10($sp)
    /* 4A844 8005A044 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 4A848 8005A048 0800E003 */  jr         $ra
    /* 4A84C 8005A04C 00000000 */   nop
endlabel DreamSys__TestEnvironmentLinks
