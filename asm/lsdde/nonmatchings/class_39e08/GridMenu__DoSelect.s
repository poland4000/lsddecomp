.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching GridMenu__DoSelect, 0x148

glabel GridMenu__DoSelect
    /* 42E44 80052644 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 42E48 80052648 5400B3AF */  sw         $s3, 0x54($sp)
    /* 42E4C 8005264C 21988000 */  addu       $s3, $a0, $zero
    /* 42E50 80052650 6000B6AF */  sw         $s6, 0x60($sp)
    /* 42E54 80052654 21B0A000 */  addu       $s6, $a1, $zero
    /* 42E58 80052658 6400B7AF */  sw         $s7, 0x64($sp)
    /* 42E5C 8005265C 21B8C000 */  addu       $s7, $a2, $zero
    /* 42E60 80052660 5800B4AF */  sw         $s4, 0x58($sp)
    /* 42E64 80052664 6800BFAF */  sw         $ra, 0x68($sp)
    /* 42E68 80052668 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 42E6C 8005266C 5000B2AF */  sw         $s2, 0x50($sp)
    /* 42E70 80052670 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 42E74 80052674 4800B0AF */  sw         $s0, 0x48($sp)
    /* 42E78 80052678 5000628E */  lw         $v0, 0x50($s3)
    /* 42E7C 8005267C 8000B58F */  lw         $s5, 0x80($sp)
    /* 42E80 80052680 36004010 */  beqz       $v0, .Lfunc_80052644_8005275C
    /* 42E84 80052684 21A0E000 */   addu      $s4, $a3, $zero
    /* 42E88 80052688 F802828F */  lw         $v0, %gp_rel(D_8008AB00)($gp)
    /* 42E8C 8005268C FC02838F */  lw         $v1, %gp_rel(D_8008AB04)($gp)
    /* 42E90 80052690 3800A2AF */  sw         $v0, 0x38($sp)
    /* 42E94 80052694 3C00A3AF */  sw         $v1, 0x3C($sp)
    /* 42E98 80052698 1000728E */  lw         $s2, 0x10($s3)
    /* 42E9C 8005269C 00000000 */  nop
    /* 42EA0 800526A0 0500422A */  slti       $v0, $s2, 0x5
    /* 42EA4 800526A4 02004014 */  bnez       $v0, .Lfunc_80052644_800526B0
    /* 42EA8 800526A8 40007126 */   addiu     $s1, $s3, 0x40
    /* 42EAC 800526AC 04001234 */  ori        $s2, $zero, 0x4
  .Lfunc_80052644_800526B0:
    /* 42EB0 800526B0 2300401A */  blez       $s2, .Lfunc_80052644_80052740
    /* 42EB4 800526B4 21800000 */   addu      $s0, $zero, $zero
  .Lfunc_80052644_800526B8:
    /* 42EB8 800526B8 21206002 */  addu       $a0, $s3, $zero
    /* 42EBC 800526BC 1800A527 */  addiu      $a1, $sp, 0x18
    /* 42EC0 800526C0 21300002 */  addu       $a2, $s0, $zero
    /* 42EC4 800526C4 21388002 */  addu       $a3, $s4, $zero
    /* 42EC8 800526C8 4B4A010C */  jal        GridMenu__ActionExec
    /* 42ECC 800526CC 1000B5AF */   sw        $s5, 0x10($sp)
    /* 42ED0 800526D0 2120E002 */  addu       $a0, $s7, $zero
    /* 42ED4 800526D4 1A000534 */  ori        $a1, $zero, 0x1A
    /* 42ED8 800526D8 3302010C */  jal        New_SpriteSet
    /* 42EDC 800526DC 1800A627 */   addiu     $a2, $sp, 0x18
    /* 42EE0 800526E0 21204000 */  addu       $a0, $v0, $zero
    /* 42EE4 800526E4 000024AE */  sw         $a0, 0x0($s1)
    /* 42EE8 800526E8 0000828C */  lw         $v0, 0x0($a0)
    /* 42EEC 800526EC 2128C002 */  addu       $a1, $s6, $zero
    /* 42EF0 800526F0 4C00428C */  lw         $v0, 0x4C($v0)
    /* 42EF4 800526F4 00000000 */  nop
    /* 42EF8 800526F8 09F84000 */  jalr       $v0
    /* 42EFC 800526FC 3800A627 */   addiu     $a2, $sp, 0x38
    /* 42F00 80052700 0000248E */  lw         $a0, 0x0($s1)
    /* 42F04 80052704 00000000 */  nop
    /* 42F08 80052708 0000828C */  lw         $v0, 0x0($a0)
    /* 42F0C 8005270C 00000000 */  nop
    /* 42F10 80052710 B800428C */  lw         $v0, 0xB8($v0)
    /* 42F14 80052714 0980053C */  lui        $a1, %hi(D_8008AB0C)
    /* 42F18 80052718 0CABA524 */  addiu      $a1, $a1, %lo(D_8008AB0C)
    /* 42F1C 8005271C 09F84000 */  jalr       $v0
    /* 42F20 80052720 01001026 */   addiu     $s0, $s0, 0x1
    /* 42F24 80052724 3C00A28F */  lw         $v0, 0x3C($sp)
    /* 42F28 80052728 00000000 */  nop
    /* 42F2C 8005272C 0A004224 */  addiu      $v0, $v0, 0xA
    /* 42F30 80052730 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 42F34 80052734 2A101202 */  slt        $v0, $s0, $s2
    /* 42F38 80052738 DFFF4014 */  bnez       $v0, .Lfunc_80052644_800526B8
    /* 42F3C 8005273C 04003126 */   addiu     $s1, $s1, 0x4
  .Lfunc_80052644_80052740:
    /* 42F40 80052740 01000234 */  ori        $v0, $zero, 0x1
    /* 42F44 80052744 21206002 */  addu       $a0, $s3, $zero
    /* 42F48 80052748 21288002 */  addu       $a1, $s4, $zero
    /* 42F4C 8005274C 8400A78F */  lw         $a3, 0x84($sp)
    /* 42F50 80052750 2130A002 */  addu       $a2, $s5, $zero
    /* 42F54 80052754 7F4A010C */  jal        GridMenu__ActionEnd
    /* 42F58 80052758 1000A2AF */   sw        $v0, 0x10($sp)
  .Lfunc_80052644_8005275C:
    /* 42F5C 8005275C 6800BF8F */  lw         $ra, 0x68($sp)
    /* 42F60 80052760 6400B78F */  lw         $s7, 0x64($sp)
    /* 42F64 80052764 6000B68F */  lw         $s6, 0x60($sp)
    /* 42F68 80052768 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 42F6C 8005276C 5800B48F */  lw         $s4, 0x58($sp)
    /* 42F70 80052770 5400B38F */  lw         $s3, 0x54($sp)
    /* 42F74 80052774 5000B28F */  lw         $s2, 0x50($sp)
    /* 42F78 80052778 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 42F7C 8005277C 4800B08F */  lw         $s0, 0x48($sp)
    /* 42F80 80052780 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 42F84 80052784 0800E003 */  jr         $ra
    /* 42F88 80052788 00000000 */   nop
endlabel GridMenu__DoSelect
