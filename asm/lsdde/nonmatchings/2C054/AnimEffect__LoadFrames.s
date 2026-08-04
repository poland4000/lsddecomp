.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching AnimEffect__LoadFrames, 0x1B8

glabel AnimEffect__LoadFrames
    /* 2D698 8003CE98 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2D69C 8003CE9C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2D6A0 8003CEA0 21A08000 */  addu       $s4, $a0, $zero
    /* 2D6A4 8003CEA4 2800B6AF */  sw         $s6, 0x28($sp)
    /* 2D6A8 8003CEA8 21B0A000 */  addu       $s6, $a1, $zero
    /* 2D6AC 8003CEAC 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 2D6B0 8003CEB0 2400B5AF */  sw         $s5, 0x24($sp)
    /* 2D6B4 8003CEB4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2D6B8 8003CEB8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2D6BC 8003CEBC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2D6C0 8003CEC0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2D6C4 8003CEC4 5700C012 */  beqz       $s6, .Lfunc_8003CE98_8003D024
    /* 2D6C8 8003CEC8 4C0096AE */   sw        $s6, 0x4C($s4)
    /* 2D6CC 8003CECC 1C00D08E */  lw         $s0, 0x1C($s6)
    /* 2D6D0 8003CED0 B7F30008 */  j          .Lfunc_8003CE98_8003CEDC
    /* 2D6D4 8003CED4 21880000 */   addu      $s1, $zero, $zero
  .Lfunc_8003CE98_8003CED8:
    /* 2D6D8 8003CED8 01003126 */  addiu      $s1, $s1, 0x1
  .Lfunc_8003CE98_8003CEDC:
    /* 2D6DC 8003CEDC 0000028E */  lw         $v0, 0x0($s0)
    /* 2D6E0 8003CEE0 00000000 */  nop
    /* 2D6E4 8003CEE4 FCFF4014 */  bnez       $v0, .Lfunc_8003CE98_8003CED8
    /* 2D6E8 8003CEE8 04001026 */   addiu     $s0, $s0, 0x4
    /* 2D6EC 8003CEEC 80801100 */  sll        $s0, $s1, 2
    /* 2D6F0 8003CEF0 CD5E000C */  jal        BMemAlloc
    /* 2D6F4 8003CEF4 21200002 */   addu      $a0, $s0, $zero
    /* 2D6F8 8003CEF8 21A84000 */  addu       $s5, $v0, $zero
    /* 2D6FC 8003CEFC 21200002 */  addu       $a0, $s0, $zero
    /* 2D700 8003CF00 CD5E000C */  jal        BMemAlloc
    /* 2D704 8003CF04 540095AE */   sw        $s5, 0x54($s4)
    /* 2D708 8003CF08 21200002 */  addu       $a0, $s0, $zero
    /* 2D70C 8003CF0C CD5E000C */  jal        BMemAlloc
    /* 2D710 8003CF10 5C0082AE */   sw        $v0, 0x5C($s4)
    /* 2D714 8003CF14 21200002 */  addu       $a0, $s0, $zero
    /* 2D718 8003CF18 CD5E000C */  jal        BMemAlloc
    /* 2D71C 8003CF1C 600082AE */   sw        $v0, 0x60($s4)
    /* 2D720 8003CF20 640082AE */  sw         $v0, 0x64($s4)
    /* 2D724 8003CF24 500091AE */  sw         $s1, 0x50($s4)
    /* 2D728 8003CF28 0000C48E */  lw         $a0, 0x0($s6)
    /* 2D72C 8003CF2C 00000000 */  nop
    /* 2D730 8003CF30 12008010 */  beqz       $a0, .Lfunc_8003CE98_8003CF7C
    /* 2D734 8003CF34 00000000 */   nop
    /* 2D738 8003CF38 E7EC000C */  jal        LoadFileObj
    /* 2D73C 8003CF3C 00000000 */   nop
    /* 2D740 8003CF40 21984000 */  addu       $s3, $v0, $zero
    /* 2D744 8003CF44 0000628E */  lw         $v0, 0x0($s3)
    /* 2D748 8003CF48 00000000 */  nop
    /* 2D74C 8003CF4C 7800428C */  lw         $v0, 0x78($v0)
    /* 2D750 8003CF50 00000000 */  nop
    /* 2D754 8003CF54 09F84000 */  jalr       $v0
    /* 2D758 8003CF58 21206002 */   addu      $a0, $s3, $zero
    /* 2D75C 8003CF5C 0000628E */  lw         $v0, 0x0($s3)
    /* 2D760 8003CF60 00000000 */  nop
    /* 2D764 8003CF64 5C00428C */  lw         $v0, 0x5C($v0)
    /* 2D768 8003CF68 00000000 */  nop
    /* 2D76C 8003CF6C 09F84000 */  jalr       $v0
    /* 2D770 8003CF70 21206002 */   addu      $a0, $s3, $zero
    /* 2D774 8003CF74 E0F30008 */  j          .Lfunc_8003CE98_8003CF80
    /* 2D778 8003CF78 00000000 */   nop
  .Lfunc_8003CE98_8003CF7C:
    /* 2D77C 8003CF7C 0400D38E */  lw         $s3, 0x4($s6)
  .Lfunc_8003CE98_8003CF80:
    /* 2D780 8003CF80 1C00D08E */  lw         $s0, 0x1C($s6)
    /* 2D784 8003CF84 00000000 */  nop
    /* 2D788 8003CF88 0000028E */  lw         $v0, 0x0($s0)
    /* 2D78C 8003CF8C 00000000 */  nop
    /* 2D790 8003CF90 1C004010 */  beqz       $v0, .Lfunc_8003CE98_8003D004
    /* 2D794 8003CF94 21880000 */   addu      $s1, $zero, $zero
  .Lfunc_8003CE98_8003CF98:
    /* 2D798 8003CF98 80101100 */  sll        $v0, $s1, 2
    /* 2D79C 8003CF9C 2400C38E */  lw         $v1, 0x24($s6)
    /* 2D7A0 8003CFA0 0000048E */  lw         $a0, 0x0($s0)
    /* 2D7A4 8003CFA4 21104300 */  addu       $v0, $v0, $v1
    /* 2D7A8 8003CFA8 0000528C */  lw         $s2, 0x0($v0)
    /* 2D7AC 8003CFAC D24C000C */  jal        func_80013348
    /* 2D7B0 8003CFB0 00000000 */   nop
    /* 2D7B4 8003CFB4 21206002 */  addu       $a0, $s3, $zero
    /* 2D7B8 8003CFB8 0000068E */  lw         $a2, 0x0($s0)
    /* 2D7BC 8003CFBC 3302010C */  jal        New_SpriteSet
    /* 2D7C0 8003CFC0 21284000 */   addu      $a1, $v0, $zero
    /* 2D7C4 8003CFC4 0000A2AE */  sw         $v0, 0x0($s5)
    /* 2D7C8 8003CFC8 09004012 */  beqz       $s2, .Lfunc_8003CE98_8003CFF0
    /* 2D7CC 8003CFCC 0400B526 */   addiu     $s5, $s5, 0x4
    /* 2D7D0 8003CFD0 21208002 */  addu       $a0, $s4, $zero
    /* 2D7D4 8003CFD4 0000828E */  lw         $v0, 0x0($s4)
    /* 2D7D8 8003CFD8 21284002 */  addu       $a1, $s2, $zero
    /* 2D7DC 8003CFDC 580091AE */  sw         $s1, 0x58($s4)
    /* 2D7E0 8003CFE0 F800428C */  lw         $v0, 0xF8($v0)
    /* 2D7E4 8003CFE4 00000000 */  nop
    /* 2D7E8 8003CFE8 09F84000 */  jalr       $v0
    /* 2D7EC 8003CFEC 21306002 */   addu      $a2, $s3, $zero
  .Lfunc_8003CE98_8003CFF0:
    /* 2D7F0 8003CFF0 04001026 */  addiu      $s0, $s0, 0x4
    /* 2D7F4 8003CFF4 0000028E */  lw         $v0, 0x0($s0)
    /* 2D7F8 8003CFF8 00000000 */  nop
    /* 2D7FC 8003CFFC E6FF4014 */  bnez       $v0, .Lfunc_8003CE98_8003CF98
    /* 2D800 8003D000 01003126 */   addiu     $s1, $s1, 0x1
  .Lfunc_8003CE98_8003D004:
    /* 2D804 8003D004 0980043C */  lui        $a0, %hi(D_8008A8E8)
    /* 2D808 8003D008 E8A88424 */  addiu      $a0, $a0, %lo(D_8008A8E8)
    /* 2D80C 8003D00C 0980053C */  lui        $a1, %hi(D_8008A8F0)
    /* 2D810 8003D010 F0A8A524 */  addiu      $a1, $a1, %lo(D_8008A8F0)
    /* 2D814 8003D014 3401010C */  jal        New_Sprite
    /* 2D818 8003D018 21300000 */   addu      $a2, $zero, $zero
    /* 2D81C 8003D01C 680082AE */  sw         $v0, 0x68($s4)
    /* 2D820 8003D020 0400D3AE */  sw         $s3, 0x4($s6)
  .Lfunc_8003CE98_8003D024:
    /* 2D824 8003D024 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 2D828 8003D028 2800B68F */  lw         $s6, 0x28($sp)
    /* 2D82C 8003D02C 2400B58F */  lw         $s5, 0x24($sp)
    /* 2D830 8003D030 2000B48F */  lw         $s4, 0x20($sp)
    /* 2D834 8003D034 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2D838 8003D038 1800B28F */  lw         $s2, 0x18($sp)
    /* 2D83C 8003D03C 1400B18F */  lw         $s1, 0x14($sp)
    /* 2D840 8003D040 1000B08F */  lw         $s0, 0x10($sp)
    /* 2D844 8003D044 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2D848 8003D048 0800E003 */  jr         $ra
    /* 2D84C 8003D04C 00000000 */   nop
endlabel AnimEffect__LoadFrames
