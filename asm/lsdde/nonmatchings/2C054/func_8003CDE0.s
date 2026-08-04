.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003CDE0, 0xB8

glabel func_8003CDE0
    /* 2D5E0 8003CDE0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2D5E4 8003CDE4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2D5E8 8003CDE8 21808000 */  addu       $s0, $a0, $zero
    /* 2D5EC 8003CDEC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2D5F0 8003CDF0 2188A000 */  addu       $s1, $a1, $zero
    /* 2D5F4 8003CDF4 20002012 */  beqz       $s1, .Lfunc_8003CDE0_8003CE78
    /* 2D5F8 8003CDF8 1800BFAF */   sw        $ra, 0x18($sp)
    /* 2D5FC 8003CDFC 7000028E */  lw         $v0, 0x70($s0)
    /* 2D600 8003CE00 00000000 */  nop
    /* 2D604 8003CE04 09004010 */  beqz       $v0, .Lfunc_8003CDE0_8003CE2C
    /* 2D608 8003CE08 00000000 */   nop
    /* 2D60C 8003CE0C 7400048E */  lw         $a0, 0x74($s0)
    /* 2D610 8003CE10 00000000 */  nop
    /* 2D614 8003CE14 0000828C */  lw         $v0, 0x0($a0)
    /* 2D618 8003CE18 00000000 */  nop
    /* 2D61C 8003CE1C 0400428C */  lw         $v0, 0x4($v0)
    /* 2D620 8003CE20 00000000 */  nop
    /* 2D624 8003CE24 09F84000 */  jalr       $v0
    /* 2D628 8003CE28 00000000 */   nop
  .Lfunc_8003CDE0_8003CE2C:
    /* 2D62C 8003CE2C E7EC000C */  jal        LoadFileObj
    /* 2D630 8003CE30 21202002 */   addu      $a0, $s1, $zero
    /* 2D634 8003CE34 740002AE */  sw         $v0, 0x74($s0)
    /* 2D638 8003CE38 0000438C */  lw         $v1, 0x0($v0)
    /* 2D63C 8003CE3C 00000000 */  nop
    /* 2D640 8003CE40 7800638C */  lw         $v1, 0x78($v1)
    /* 2D644 8003CE44 00000000 */  nop
    /* 2D648 8003CE48 09F86000 */  jalr       $v1
    /* 2D64C 8003CE4C 21204000 */   addu      $a0, $v0, $zero
    /* 2D650 8003CE50 7400048E */  lw         $a0, 0x74($s0)
    /* 2D654 8003CE54 00000000 */  nop
    /* 2D658 8003CE58 0000828C */  lw         $v0, 0x0($a0)
    /* 2D65C 8003CE5C 00000000 */  nop
    /* 2D660 8003CE60 5C00428C */  lw         $v0, 0x5C($v0)
    /* 2D664 8003CE64 00000000 */  nop
    /* 2D668 8003CE68 09F84000 */  jalr       $v0
    /* 2D66C 8003CE6C 00000000 */   nop
    /* 2D670 8003CE70 A0F30008 */  j          .Lfunc_8003CDE0_8003CE80
    /* 2D674 8003CE74 700011AE */   sw        $s1, 0x70($s0)
  .Lfunc_8003CDE0_8003CE78:
    /* 2D678 8003CE78 740006AE */  sw         $a2, 0x74($s0)
    /* 2D67C 8003CE7C 700011AE */  sw         $s1, 0x70($s0)
  .Lfunc_8003CDE0_8003CE80:
    /* 2D680 8003CE80 1800BF8F */  lw         $ra, 0x18($sp)
    /* 2D684 8003CE84 1400B18F */  lw         $s1, 0x14($sp)
    /* 2D688 8003CE88 1000B08F */  lw         $s0, 0x10($sp)
    /* 2D68C 8003CE8C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2D690 8003CE90 0800E003 */  jr         $ra
    /* 2D694 8003CE94 00000000 */   nop
endlabel func_8003CDE0
