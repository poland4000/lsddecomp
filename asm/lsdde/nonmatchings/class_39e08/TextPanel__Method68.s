.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextPanel__Method68, 0xCC

glabel TextPanel__Method68
    /* 3F6A0 8004EEA0 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 3F6A4 8004EEA4 3800B6AF */  sw         $s6, 0x38($sp)
    /* 3F6A8 8004EEA8 5800B68F */  lw         $s6, 0x58($sp)
    /* 3F6AC 8004EEAC 4000BEAF */  sw         $fp, 0x40($sp)
    /* 3F6B0 8004EEB0 21F08000 */  addu       $fp, $a0, $zero
    /* 3F6B4 8004EEB4 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 3F6B8 8004EEB8 2198A000 */  addu       $s3, $a1, $zero
    /* 3F6BC 8004EEBC 2800B2AF */  sw         $s2, 0x28($sp)
    /* 3F6C0 8004EEC0 2190C000 */  addu       $s2, $a2, $zero
    /* 3F6C4 8004EEC4 2400B1AF */  sw         $s1, 0x24($sp)
    /* 3F6C8 8004EEC8 0A001134 */  ori        $s1, $zero, 0xA
    /* 3F6CC 8004EECC 3400B5AF */  sw         $s5, 0x34($sp)
    /* 3F6D0 8004EED0 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 3F6D4 8004EED4 21204002 */  addu       $a0, $s2, $zero
    /* 3F6D8 8004EED8 3000B4AF */  sw         $s4, 0x30($sp)
    /* 3F6DC 8004EEDC 6000B48F */  lw         $s4, 0x60($sp)
    /* 3F6E0 8004EEE0 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 3F6E4 8004EEE4 21B8E000 */  addu       $s7, $a3, $zero
    /* 3F6E8 8004EEE8 4400BFAF */  sw         $ra, 0x44($sp)
    /* 3F6EC 8004EEEC FE41010C */  jal        TextBuf__Init
    /* 3F6F0 8004EEF0 2000B0AF */   sw        $s0, 0x20($sp)
  .Lfunc_8004EEA0_8004EEF4:
    /* 3F6F4 8004EEF4 2120C003 */  addu       $a0, $fp, $zero
    /* 3F6F8 8004EEF8 21286002 */  addu       $a1, $s3, $zero
    /* 3F6FC 8004EEFC 21304002 */  addu       $a2, $s2, $zero
    /* 3F700 8004EF00 FF00E732 */  andi       $a3, $s7, 0xFF
    /* 3F704 8004EF04 1000B6AF */  sw         $s6, 0x10($sp)
    /* 3F708 8004EF08 1400B5AF */  sw         $s5, 0x14($sp)
    /* 3F70C 8004EF0C DB3B010C */  jal        TextPanel__FormatStringEx
    /* 3F710 8004EF10 1800B4AF */   sw        $s4, 0x18($sp)
    /* 3F714 8004EF14 21804000 */  addu       $s0, $v0, $zero
    /* 3F718 8004EF18 06000016 */  bnez       $s0, .Lfunc_8004EEA0_8004EF34
    /* 3F71C 8004EF1C 21102002 */   addu      $v0, $s1, $zero
    /* 3F720 8004EF20 F4FF4014 */  bnez       $v0, .Lfunc_8004EEA0_8004EEF4
    /* 3F724 8004EF24 FFFF3126 */   addiu     $s1, $s1, -0x1
    /* 3F728 8004EF28 21204002 */  addu       $a0, $s2, $zero
    /* 3F72C 8004EF2C FE41010C */  jal        TextBuf__Init
    /* 3F730 8004EF30 21280000 */   addu      $a1, $zero, $zero
  .Lfunc_8004EEA0_8004EF34:
    /* 3F734 8004EF34 21100002 */  addu       $v0, $s0, $zero
    /* 3F738 8004EF38 4400BF8F */  lw         $ra, 0x44($sp)
    /* 3F73C 8004EF3C 4000BE8F */  lw         $fp, 0x40($sp)
    /* 3F740 8004EF40 3C00B78F */  lw         $s7, 0x3C($sp)
    /* 3F744 8004EF44 3800B68F */  lw         $s6, 0x38($sp)
    /* 3F748 8004EF48 3400B58F */  lw         $s5, 0x34($sp)
    /* 3F74C 8004EF4C 3000B48F */  lw         $s4, 0x30($sp)
    /* 3F750 8004EF50 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 3F754 8004EF54 2800B28F */  lw         $s2, 0x28($sp)
    /* 3F758 8004EF58 2400B18F */  lw         $s1, 0x24($sp)
    /* 3F75C 8004EF5C 2000B08F */  lw         $s0, 0x20($sp)
    /* 3F760 8004EF60 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 3F764 8004EF64 0800E003 */  jr         $ra
    /* 3F768 8004EF68 00000000 */   nop
endlabel TextPanel__Method68
