.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamScene__Method84, 0x1AC

glabel DreamScene__Method84
    /* 3A6B4 80049EB4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3A6B8 80049EB8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3A6BC 80049EBC 21808000 */  addu       $s0, $a0, $zero
    /* 3A6C0 80049EC0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3A6C4 80049EC4 2188C000 */  addu       $s1, $a2, $zero
    /* 3A6C8 80049EC8 FCFF2326 */  addiu      $v1, $s1, -0x4
    /* 3A6CC 80049ECC 0A00622C */  sltiu      $v0, $v1, 0xA
    /* 3A6D0 80049ED0 5D004010 */  beqz       $v0, .Lfunc_80049EB4_8004A048
    /* 3A6D4 80049ED4 2000BFAF */   sw        $ra, 0x20($sp)
    /* 3A6D8 80049ED8 80100300 */  sll        $v0, $v1, 2
    /* 3A6DC 80049EDC 0180013C */  lui        $at, %hi(jtbl_8001140C)
    /* 3A6E0 80049EE0 0C142124 */  addiu      $at, $at, %lo(jtbl_8001140C)
    /* 3A6E4 80049EE4 21082200 */  addu       $at, $at, $v0
    /* 3A6E8 80049EE8 0000228C */  lw         $v0, 0x0($at)
    /* 3A6EC 80049EEC 00000000 */  nop
    /* 3A6F0 80049EF0 08004000 */  jr         $v0
    /* 3A6F4 80049EF4 00000000 */   nop
  jlabel .Lfunc_80049EB4_80049EF8
    /* 3A6F8 80049EF8 4C00048E */  lw         $a0, 0x4C($s0)
    /* 3A6FC 80049EFC 00000000 */  nop
    /* 3A700 80049F00 0000828C */  lw         $v0, 0x0($a0)
    /* 3A704 80049F04 00000000 */  nop
    /* 3A708 80049F08 4800428C */  lw         $v0, 0x48($v0)
    /* 3A70C 80049F0C 00000000 */  nop
    /* 3A710 80049F10 09F84000 */  jalr       $v0
    /* 3A714 80049F14 00000000 */   nop
    /* 3A718 80049F18 4C00048E */  lw         $a0, 0x4C($s0)
    /* 3A71C 80049F1C 00000000 */  nop
    /* 3A720 80049F20 0000828C */  lw         $v0, 0x0($a0)
    /* 3A724 80049F24 00000000 */  nop
    /* 3A728 80049F28 0400428C */  lw         $v0, 0x4($v0)
    /* 3A72C 80049F2C 00000000 */  nop
    /* 3A730 80049F30 09F84000 */  jalr       $v0
    /* 3A734 80049F34 00000000 */   nop
    /* 3A738 80049F38 3800048E */  lw         $a0, 0x38($s0)
    /* 3A73C 80049F3C 00000000 */  nop
    /* 3A740 80049F40 0000828C */  lw         $v0, 0x0($a0)
    /* 3A744 80049F44 00000000 */  nop
    /* 3A748 80049F48 B801428C */  lw         $v0, 0x1B8($v0)
    /* 3A74C 80049F4C 00000000 */  nop
    /* 3A750 80049F50 09F84000 */  jalr       $v0
    /* 3A754 80049F54 21280000 */   addu      $a1, $zero, $zero
    /* 3A758 80049F58 10004014 */  bnez       $v0, .Lfunc_80049EB4_80049F9C
    /* 3A75C 80049F5C 03000234 */   ori       $v0, $zero, 0x3
    /* 3A760 80049F60 3800058E */  lw         $a1, 0x38($s0)
    /* 3A764 80049F64 00000000 */  nop
    /* 3A768 80049F68 0000A28C */  lw         $v0, 0x0($a1)
    /* 3A76C 80049F6C 00000000 */  nop
    /* 3A770 80049F70 BC01428C */  lw         $v0, 0x1BC($v0)
    /* 3A774 80049F74 00000000 */  nop
    /* 3A778 80049F78 09F84000 */  jalr       $v0
    /* 3A77C 80049F7C 1000A427 */   addiu     $a0, $sp, 0x10
    /* 3A780 80049F80 1200A287 */  lh         $v0, 0x12($sp)
    /* 3A784 80049F84 00000000 */  nop
    /* 3A788 80049F88 02004104 */  bgez       $v0, .Lfunc_80049EB4_80049F94
    /* 3A78C 80049F8C 02000334 */   ori       $v1, $zero, 0x2
    /* 3A790 80049F90 01000334 */  ori        $v1, $zero, 0x1
  .Lfunc_80049EB4_80049F94:
    /* 3A794 80049F94 E8270108 */  j          .Lfunc_80049EB4_80049FA0
    /* 3A798 80049F98 280003AE */   sw        $v1, 0x28($s0)
  .Lfunc_80049EB4_80049F9C:
    /* 3A79C 80049F9C 280002AE */  sw         $v0, 0x28($s0)
  .Lfunc_80049EB4_80049FA0:
    /* 3A7A0 80049FA0 0000028E */  lw         $v0, 0x0($s0)
    /* 3A7A4 80049FA4 00000000 */  nop
    /* 3A7A8 80049FA8 6000428C */  lw         $v0, 0x60($v0)
    /* 3A7AC 80049FAC 0F280108 */  j          .Lfunc_80049EB4_8004A03C
    /* 3A7B0 80049FB0 21200002 */   addu      $a0, $s0, $zero
  jlabel .Lfunc_80049EB4_80049FB4
    /* 3A7B4 80049FB4 03000234 */  ori        $v0, $zero, 0x3
    /* 3A7B8 80049FB8 12280108 */  j          .Lfunc_80049EB4_8004A048
    /* 3A7BC 80049FBC 3C0002AE */   sw        $v0, 0x3C($s0)
  jlabel .Lfunc_80049EB4_80049FC0
    /* 3A7C0 80049FC0 4C00048E */  lw         $a0, 0x4C($s0)
    /* 3A7C4 80049FC4 00000000 */  nop
    /* 3A7C8 80049FC8 0000828C */  lw         $v0, 0x0($a0)
    /* 3A7CC 80049FCC 00000000 */  nop
    /* 3A7D0 80049FD0 4800428C */  lw         $v0, 0x48($v0)
    /* 3A7D4 80049FD4 00000000 */  nop
    /* 3A7D8 80049FD8 09F84000 */  jalr       $v0
    /* 3A7DC 80049FDC 00000000 */   nop
    /* 3A7E0 80049FE0 4C00048E */  lw         $a0, 0x4C($s0)
    /* 3A7E4 80049FE4 00000000 */  nop
    /* 3A7E8 80049FE8 0000828C */  lw         $v0, 0x0($a0)
    /* 3A7EC 80049FEC 00000000 */  nop
    /* 3A7F0 80049FF0 0400428C */  lw         $v0, 0x4($v0)
    /* 3A7F4 80049FF4 00000000 */  nop
    /* 3A7F8 80049FF8 09F84000 */  jalr       $v0
    /* 3A7FC 80049FFC 00000000 */   nop
    /* 3A800 8004A000 3800048E */  lw         $a0, 0x38($s0)
    /* 3A804 8004A004 0C000234 */  ori        $v0, $zero, 0xC
    /* 3A808 8004A008 0000838C */  lw         $v1, 0x0($a0)
    /* 3A80C 8004A00C 02002212 */  beq        $s1, $v0, .Lfunc_80049EB4_8004A018
    /* 3A810 8004A010 01000534 */   ori       $a1, $zero, 0x1
    /* 3A814 8004A014 02000534 */  ori        $a1, $zero, 0x2
  .Lfunc_80049EB4_8004A018:
    /* 3A818 8004A018 B801628C */  lw         $v0, 0x1B8($v1)
    /* 3A81C 8004A01C 00000000 */  nop
    /* 3A820 8004A020 09F84000 */  jalr       $v0
    /* 3A824 8004A024 00000000 */   nop
    /* 3A828 8004A028 21200002 */  addu       $a0, $s0, $zero
    /* 3A82C 8004A02C 0000838C */  lw         $v1, 0x0($a0)
    /* 3A830 8004A030 03000234 */  ori        $v0, $zero, 0x3
    /* 3A834 8004A034 280082AC */  sw         $v0, 0x28($a0)
    /* 3A838 8004A038 6000628C */  lw         $v0, 0x60($v1)
  .Lfunc_80049EB4_8004A03C:
    /* 3A83C 8004A03C 00000000 */  nop
    /* 3A840 8004A040 09F84000 */  jalr       $v0
    /* 3A844 8004A044 03000534 */   ori       $a1, $zero, 0x3
  jlabel .Lfunc_80049EB4_8004A048
    /* 3A848 8004A048 2000BF8F */  lw         $ra, 0x20($sp)
    /* 3A84C 8004A04C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3A850 8004A050 1800B08F */  lw         $s0, 0x18($sp)
    /* 3A854 8004A054 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3A858 8004A058 0800E003 */  jr         $ra
    /* 3A85C 8004A05C 00000000 */   nop
endlabel DreamScene__Method84
