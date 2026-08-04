.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002658C, 0x104

glabel func_8002658C
    /* 16D8C 8002658C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 16D90 80026590 3000B2AF */  sw         $s2, 0x30($sp)
    /* 16D94 80026594 21908000 */  addu       $s2, $a0, $zero
    /* 16D98 80026598 3400BFAF */  sw         $ra, 0x34($sp)
    /* 16D9C 8002659C 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 16DA0 800265A0 2800B0AF */  sw         $s0, 0x28($sp)
    /* 16DA4 800265A4 2000428E */  lw         $v0, 0x20($s2)
    /* 16DA8 800265A8 00000000 */  nop
    /* 16DAC 800265AC 0800428C */  lw         $v0, 0x8($v0)
    /* 16DB0 800265B0 00000000 */  nop
    /* 16DB4 800265B4 2F004010 */  beqz       $v0, .Lfunc_8002658C_80026674
    /* 16DB8 800265B8 21200000 */   addu      $a0, $zero, $zero
    /* 16DBC 800265BC 21280000 */  addu       $a1, $zero, $zero
    /* 16DC0 800265C0 CD9B000C */  jal        CdDrvWaitReady
    /* 16DC4 800265C4 21300000 */   addu      $a2, $zero, $zero
    /* 16DC8 800265C8 21200000 */  addu       $a0, $zero, $zero
    /* 16DCC 800265CC 21280000 */  addu       $a1, $zero, $zero
    /* 16DD0 800265D0 21300000 */  addu       $a2, $zero, $zero
    /* 16DD4 800265D4 15EE000C */  jal        New_WorldEffect
    /* 16DD8 800265D8 21380000 */   addu      $a3, $zero, $zero
    /* 16DDC 800265DC 2000A427 */  addiu      $a0, $sp, 0x20
    /* 16DE0 800265E0 21280000 */  addu       $a1, $zero, $zero
    /* 16DE4 800265E4 0A000634 */  ori        $a2, $zero, 0xA
    /* 16DE8 800265E8 F924010C */  jal        func_800493E4
    /* 16DEC 800265EC 21804000 */   addu      $s0, $v0, $zero
    /* 16DF0 800265F0 8888043C */  lui        $a0, (0x88888889 >> 16)
    /* 16DF4 800265F4 2000A38F */  lw         $v1, 0x20($sp)
    /* 16DF8 800265F8 89888434 */  ori        $a0, $a0, (0x88888889 & 0xFFFF)
    /* 16DFC 800265FC 19006400 */  multu      $v1, $a0
    /* 16E00 80026600 21884000 */  addu       $s1, $v0, $zero
    /* 16E04 80026604 0000038E */  lw         $v1, 0x0($s0)
    /* 16E08 80026608 21200002 */  addu       $a0, $s0, $zero
    /* 16E0C 8002660C 6C00638C */  lw         $v1, 0x6C($v1)
    /* 16E10 80026610 10280000 */  mfhi       $a1
    /* 16E14 80026614 09F86000 */  jalr       $v1
    /* 16E18 80026618 C2280500 */   srl       $a1, $a1, 3
    /* 16E1C 8002661C 0000028E */  lw         $v0, 0x0($s0)
    /* 16E20 80026620 21200002 */  addu       $a0, $s0, $zero
    /* 16E24 80026624 2C01428C */  lw         $v0, 0x12C($v0)
    /* 16E28 80026628 00000000 */  nop
    /* 16E2C 8002662C 09F84000 */  jalr       $v0
    /* 16E30 80026630 21280000 */   addu      $a1, $zero, $zero
    /* 16E34 80026634 21200002 */  addu       $a0, $s0, $zero
    /* 16E38 80026638 21302002 */  addu       $a2, $s1, $zero
    /* 16E3C 8002663C 0000038E */  lw         $v1, 0x0($s0)
    /* 16E40 80026640 01000234 */  ori        $v0, $zero, 0x1
    /* 16E44 80026644 1000A2AF */  sw         $v0, 0x10($sp)
    /* 16E48 80026648 1C00458E */  lw         $a1, 0x1C($s2)
    /* 16E4C 8002664C 4400628C */  lw         $v0, 0x44($v1)
    /* 16E50 80026650 00000000 */  nop
    /* 16E54 80026654 09F84000 */  jalr       $v0
    /* 16E58 80026658 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 16E5C 8002665C 0000028E */  lw         $v0, 0x0($s0)
    /* 16E60 80026660 00000000 */  nop
    /* 16E64 80026664 0400428C */  lw         $v0, 0x4($v0)
    /* 16E68 80026668 00000000 */  nop
    /* 16E6C 8002666C 09F84000 */  jalr       $v0
    /* 16E70 80026670 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_8002658C_80026674:
    /* 16E74 80026674 3400BF8F */  lw         $ra, 0x34($sp)
    /* 16E78 80026678 3000B28F */  lw         $s2, 0x30($sp)
    /* 16E7C 8002667C 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 16E80 80026680 2800B08F */  lw         $s0, 0x28($sp)
    /* 16E84 80026684 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 16E88 80026688 0800E003 */  jr         $ra
    /* 16E8C 8002668C 00000000 */   nop
endlabel func_8002658C
