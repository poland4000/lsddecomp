.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80065F2C, 0xAC

glabel func_80065F2C
    /* 5672C 80065F2C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 56730 80065F30 1000B0AF */  sw         $s0, 0x10($sp)
    /* 56734 80065F34 21808000 */  addu       $s0, $a0, $zero
    /* 56738 80065F38 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5673C 80065F3C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 56740 80065F40 7000048E */  lw         $a0, 0x70($s0)
    /* 56744 80065F44 00000000 */  nop
    /* 56748 80065F48 16008010 */  beqz       $a0, .Lfunc_80065F2C_80065FA4
    /* 5674C 80065F4C 00000000 */   nop
    /* 56750 80065F50 7400028E */  lw         $v0, 0x74($s0)
    /* 56754 80065F54 00000000 */  nop
    /* 56758 80065F58 12004010 */  beqz       $v0, .Lfunc_80065F2C_80065FA4
    /* 5675C 80065F5C 00000000 */   nop
    /* 56760 80065F60 6C00038E */  lw         $v1, 0x6C($s0)
    /* 56764 80065F64 E4970108 */  j          .Lfunc_80065F2C_80065F90
    /* 56768 80065F68 21888000 */   addu      $s1, $a0, $zero
  .Lfunc_80065F2C_80065F6C:
    /* 5676C 80065F6C 0000248E */  lw         $a0, 0x0($s1)
    /* 56770 80065F70 00000000 */  nop
    /* 56774 80065F74 0000828C */  lw         $v0, 0x0($a0)
    /* 56778 80065F78 00000000 */  nop
    /* 5677C 80065F7C 0400428C */  lw         $v0, 0x4($v0)
    /* 56780 80065F80 00000000 */  nop
    /* 56784 80065F84 09F84000 */  jalr       $v0
    /* 56788 80065F88 04003126 */   addiu     $s1, $s1, 0x4
    /* 5678C 80065F8C 6C00038E */  lw         $v1, 0x6C($s0)
  .Lfunc_80065F2C_80065F90:
    /* 56790 80065F90 00000000 */  nop
    /* 56794 80065F94 FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 56798 80065F98 F4FF601C */  bgtz       $v1, .Lfunc_80065F2C_80065F6C
    /* 5679C 80065F9C 6C0002AE */   sw        $v0, 0x6C($s0)
    /* 567A0 80065FA0 680000AE */  sw         $zero, 0x68($s0)
  .Lfunc_80065F2C_80065FA4:
    /* 567A4 80065FA4 7400048E */  lw         $a0, 0x74($s0)
    /* 567A8 80065FA8 3F5F000C */  jal        BMemFree
    /* 567AC 80065FAC 00000000 */   nop
    /* 567B0 80065FB0 7000048E */  lw         $a0, 0x70($s0)
    /* 567B4 80065FB4 3F5F000C */  jal        BMemFree
    /* 567B8 80065FB8 740002AE */   sw        $v0, 0x74($s0)
    /* 567BC 80065FBC 700002AE */  sw         $v0, 0x70($s0)
    /* 567C0 80065FC0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 567C4 80065FC4 1400B18F */  lw         $s1, 0x14($sp)
    /* 567C8 80065FC8 1000B08F */  lw         $s0, 0x10($sp)
    /* 567CC 80065FCC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 567D0 80065FD0 0800E003 */  jr         $ra
    /* 567D4 80065FD4 00000000 */   nop
endlabel func_80065F2C
