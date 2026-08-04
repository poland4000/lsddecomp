.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__Method108, 0xAC

glabel StageRenderer__Method108
    /* 3C8AC 8004C0AC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3C8B0 8004C0B0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3C8B4 8004C0B4 2180A000 */  addu       $s0, $a1, $zero
    /* 3C8B8 8004C0B8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 3C8BC 8004C0BC 0400048E */  lw         $a0, 0x4($s0)
    /* 3C8C0 8004C0C0 00000000 */  nop
    /* 3C8C4 8004C0C4 30008284 */  lh         $v0, 0x30($a0)
    /* 3C8C8 8004C0C8 00000000 */  nop
    /* 3C8CC 8004C0CC 1D004004 */  bltz       $v0, .Lfunc_8004C0AC_8004C144
    /* 3C8D0 8004C0D0 00000000 */   nop
    /* 3C8D4 8004C0D4 0000828C */  lw         $v0, 0x0($a0)
    /* 3C8D8 8004C0D8 00000000 */  nop
    /* 3C8DC 8004C0DC 7C00428C */  lw         $v0, 0x7C($v0)
    /* 3C8E0 8004C0E0 00000000 */  nop
    /* 3C8E4 8004C0E4 09F84000 */  jalr       $v0
    /* 3C8E8 8004C0E8 00000000 */   nop
    /* 3C8EC 8004C0EC 1000028E */  lw         $v0, 0x10($s0)
    /* 3C8F0 8004C0F0 00000000 */  nop
    /* 3C8F4 8004C0F4 21204000 */  addu       $a0, $v0, $zero
    /* 3C8F8 8004C0F8 68064524 */  addiu      $a1, $v0, 0x668
    /* 3C8FC 8004C0FC 2B108500 */  sltu       $v0, $a0, $a1
    /* 3C900 8004C100 10004010 */  beqz       $v0, .Lfunc_8004C0AC_8004C144
    /* 3C904 8004C104 0080063C */   lui       $a2, (0x80000000 >> 16)
  .Lfunc_8004C0AC_8004C108:
    /* 3C908 8004C108 0000838C */  lw         $v1, 0x0($a0)
    /* 3C90C 8004C10C 00000000 */  nop
    /* 3C910 8004C110 1000628C */  lw         $v0, 0x10($v1)
    /* 3C914 8004C114 00000000 */  nop
    /* 3C918 8004C118 25104600 */  or         $v0, $v0, $a2
    /* 3C91C 8004C11C 100062AC */  sw         $v0, 0x10($v1)
    /* 3C920 8004C120 0000828C */  lw         $v0, 0x0($a0)
    /* 3C924 8004C124 00000000 */  nop
    /* 3C928 8004C128 200040AC */  sw         $zero, 0x20($v0)
    /* 3C92C 8004C12C 0000828C */  lw         $v0, 0x0($a0)
    /* 3C930 8004C130 04008424 */  addiu      $a0, $a0, 0x4
    /* 3C934 8004C134 180040AC */  sw         $zero, 0x18($v0)
    /* 3C938 8004C138 2B108500 */  sltu       $v0, $a0, $a1
    /* 3C93C 8004C13C F2FF4014 */  bnez       $v0, .Lfunc_8004C0AC_8004C108
    /* 3C940 8004C140 00000000 */   nop
  .Lfunc_8004C0AC_8004C144:
    /* 3C944 8004C144 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3C948 8004C148 1000B08F */  lw         $s0, 0x10($sp)
    /* 3C94C 8004C14C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3C950 8004C150 0800E003 */  jr         $ra
    /* 3C954 8004C154 00000000 */   nop
endlabel StageRenderer__Method108
