.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching AnimEffect__AddFrameSet, 0x108

glabel AnimEffect__AddFrameSet
    /* 2DDCC 8003D5CC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2DDD0 8003D5D0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2DDD4 8003D5D4 21988000 */  addu       $s3, $a0, $zero
    /* 2DDD8 8003D5D8 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2DDDC 8003D5DC 21A0A000 */  addu       $s4, $a1, $zero
    /* 2DDE0 8003D5E0 2800B6AF */  sw         $s6, 0x28($sp)
    /* 2DDE4 8003D5E4 21B0C000 */  addu       $s6, $a2, $zero
    /* 2DDE8 8003D5E8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2DDEC 8003D5EC 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 2DDF0 8003D5F0 2400B5AF */  sw         $s5, 0x24($sp)
    /* 2DDF4 8003D5F4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2DDF8 8003D5F8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2DDFC 8003D5FC 1800908E */  lw         $s0, 0x18($s4)
    /* 2DE00 8003D600 5800758E */  lw         $s5, 0x58($s3)
    /* 2DE04 8003D604 84F50008 */  j          .Lfunc_8003D5CC_8003D610
    /* 2DE08 8003D608 21900000 */   addu      $s2, $zero, $zero
  .Lfunc_8003D5CC_8003D60C:
    /* 2DE0C 8003D60C 01005226 */  addiu      $s2, $s2, 0x1
  .Lfunc_8003D5CC_8003D610:
    /* 2DE10 8003D610 0000028E */  lw         $v0, 0x0($s0)
    /* 2DE14 8003D614 00000000 */  nop
    /* 2DE18 8003D618 FCFF4014 */  bnez       $v0, .Lfunc_8003D5CC_8003D60C
    /* 2DE1C 8003D61C 04001026 */   addiu     $s0, $s0, 0x4
    /* 2DE20 8003D620 CD5E000C */  jal        BMemAlloc
    /* 2DE24 8003D624 80201200 */   sll       $a0, $s2, 2
    /* 2DE28 8003D628 21884000 */  addu       $s1, $v0, $zero
    /* 2DE2C 8003D62C 6400628E */  lw         $v0, 0x64($s3)
    /* 2DE30 8003D630 80181500 */  sll        $v1, $s5, 2
    /* 2DE34 8003D634 21106200 */  addu       $v0, $v1, $v0
    /* 2DE38 8003D638 000051AC */  sw         $s1, 0x0($v0)
    /* 2DE3C 8003D63C 6000628E */  lw         $v0, 0x60($s3)
    /* 2DE40 8003D640 0400848E */  lw         $a0, 0x4($s4)
    /* 2DE44 8003D644 21106200 */  addu       $v0, $v1, $v0
    /* 2DE48 8003D648 000044AC */  sw         $a0, 0x0($v0)
    /* 2DE4C 8003D64C 5C00628E */  lw         $v0, 0x5C($s3)
    /* 2DE50 8003D650 00000000 */  nop
    /* 2DE54 8003D654 21186200 */  addu       $v1, $v1, $v0
    /* 2DE58 8003D658 000072AC */  sw         $s2, 0x0($v1)
    /* 2DE5C 8003D65C 1800908E */  lw         $s0, 0x18($s4)
    /* 2DE60 8003D660 00000000 */  nop
    /* 2DE64 8003D664 0000028E */  lw         $v0, 0x0($s0)
    /* 2DE68 8003D668 00000000 */  nop
    /* 2DE6C 8003D66C 0E004010 */  beqz       $v0, .Lfunc_8003D5CC_8003D6A8
    /* 2DE70 8003D670 00000000 */   nop
  .Lfunc_8003D5CC_8003D674:
    /* 2DE74 8003D674 0000048E */  lw         $a0, 0x0($s0)
    /* 2DE78 8003D678 D24C000C */  jal        func_80013348
    /* 2DE7C 8003D67C 00000000 */   nop
    /* 2DE80 8003D680 2120C002 */  addu       $a0, $s6, $zero
    /* 2DE84 8003D684 0000068E */  lw         $a2, 0x0($s0)
    /* 2DE88 8003D688 04001026 */  addiu      $s0, $s0, 0x4
    /* 2DE8C 8003D68C 3302010C */  jal        New_SpriteSet
    /* 2DE90 8003D690 21284000 */   addu      $a1, $v0, $zero
    /* 2DE94 8003D694 000022AE */  sw         $v0, 0x0($s1)
    /* 2DE98 8003D698 0000028E */  lw         $v0, 0x0($s0)
    /* 2DE9C 8003D69C 00000000 */  nop
    /* 2DEA0 8003D6A0 F4FF4014 */  bnez       $v0, .Lfunc_8003D5CC_8003D674
    /* 2DEA4 8003D6A4 04003126 */   addiu     $s1, $s1, 0x4
  .Lfunc_8003D5CC_8003D6A8:
    /* 2DEA8 8003D6A8 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 2DEAC 8003D6AC 2800B68F */  lw         $s6, 0x28($sp)
    /* 2DEB0 8003D6B0 2400B58F */  lw         $s5, 0x24($sp)
    /* 2DEB4 8003D6B4 2000B48F */  lw         $s4, 0x20($sp)
    /* 2DEB8 8003D6B8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2DEBC 8003D6BC 1800B28F */  lw         $s2, 0x18($sp)
    /* 2DEC0 8003D6C0 1400B18F */  lw         $s1, 0x14($sp)
    /* 2DEC4 8003D6C4 1000B08F */  lw         $s0, 0x10($sp)
    /* 2DEC8 8003D6C8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2DECC 8003D6CC 0800E003 */  jr         $ra
    /* 2DED0 8003D6D0 00000000 */   nop
endlabel AnimEffect__AddFrameSet
