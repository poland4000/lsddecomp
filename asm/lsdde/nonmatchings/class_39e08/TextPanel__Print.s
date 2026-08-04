.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextPanel__Print, 0xC4

glabel TextPanel__Print
    /* 3EEB8 8004E6B8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 3EEBC 8004E6BC 2800B4AF */  sw         $s4, 0x28($sp)
    /* 3EEC0 8004E6C0 21A08000 */  addu       $s4, $a0, $zero
    /* 3EEC4 8004E6C4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3EEC8 8004E6C8 2180A000 */  addu       $s0, $a1, $zero
    /* 3EECC 8004E6CC 2400B3AF */  sw         $s3, 0x24($sp)
    /* 3EED0 8004E6D0 2198C000 */  addu       $s3, $a2, $zero
    /* 3EED4 8004E6D4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3EED8 8004E6D8 2188E000 */  addu       $s1, $a3, $zero
    /* 3EEDC 8004E6DC 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3EEE0 8004E6E0 0A001234 */  ori        $s2, $zero, 0xA
    /* 3EEE4 8004E6E4 1000A627 */  addiu      $a2, $sp, 0x10
    /* 3EEE8 8004E6E8 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 3EEEC 8004E6EC DF39010C */  jal        TextPanel__PrintGuarded
    /* 3EEF0 8004E6F0 000060AE */   sw        $zero, 0x0($s3)
    /* 3EEF4 8004E6F4 C7390108 */  j          .Lfunc_8004E6B8_8004E71C
    /* 3EEF8 8004E6F8 21284000 */   addu      $a1, $v0, $zero
  .Lfunc_8004E6B8_8004E6FC:
    /* 3EEFC 8004E6FC 21280002 */  addu       $a1, $s0, $zero
    /* 3EF00 8004E700 21306002 */  addu       $a2, $s3, $zero
    /* 3EF04 8004E704 DF39010C */  jal        TextPanel__PrintGuarded
    /* 3EF08 8004E708 21382002 */   addu      $a3, $s1, $zero
    /* 3EF0C 8004E70C 21284000 */  addu       $a1, $v0, $zero
    /* 3EF10 8004E710 21104002 */  addu       $v0, $s2, $zero
    /* 3EF14 8004E714 0B004010 */  beqz       $v0, .Lfunc_8004E6B8_8004E744
    /* 3EF18 8004E718 FFFF5226 */   addiu     $s2, $s2, -0x1
  .Lfunc_8004E6B8_8004E71C:
    /* 3EF1C 8004E71C F7FFA010 */  beqz       $a1, .Lfunc_8004E6B8_8004E6FC
    /* 3EF20 8004E720 21208002 */   addu      $a0, $s4, $zero
    /* 3EF24 8004E724 0000028E */  lw         $v0, 0x0($s0)
    /* 3EF28 8004E728 00000000 */  nop
    /* 3EF2C 8004E72C F3FF4014 */  bnez       $v0, .Lfunc_8004E6B8_8004E6FC
    /* 3EF30 8004E730 00000000 */   nop
    /* 3EF34 8004E734 0000228E */  lw         $v0, 0x0($s1)
    /* 3EF38 8004E738 00000000 */  nop
    /* 3EF3C 8004E73C EFFF4010 */  beqz       $v0, .Lfunc_8004E6B8_8004E6FC
    /* 3EF40 8004E740 00000000 */   nop
  .Lfunc_8004E6B8_8004E744:
    /* 3EF44 8004E744 0000638E */  lw         $v1, 0x0($s3)
    /* 3EF48 8004E748 1000A48F */  lw         $a0, 0x10($sp)
    /* 3EF4C 8004E74C 2110A000 */  addu       $v0, $a1, $zero
    /* 3EF50 8004E750 25186400 */  or         $v1, $v1, $a0
    /* 3EF54 8004E754 000063AE */  sw         $v1, 0x0($s3)
    /* 3EF58 8004E758 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 3EF5C 8004E75C 2800B48F */  lw         $s4, 0x28($sp)
    /* 3EF60 8004E760 2400B38F */  lw         $s3, 0x24($sp)
    /* 3EF64 8004E764 2000B28F */  lw         $s2, 0x20($sp)
    /* 3EF68 8004E768 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3EF6C 8004E76C 1800B08F */  lw         $s0, 0x18($sp)
    /* 3EF70 8004E770 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 3EF74 8004E774 0800E003 */  jr         $ra
    /* 3EF78 8004E778 00000000 */   nop
endlabel TextPanel__Print
