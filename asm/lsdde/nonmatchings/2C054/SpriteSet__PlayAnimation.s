.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SpriteSet__PlayAnimation, 0xA0

glabel SpriteSet__PlayAnimation
    /* 31574 80040D74 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 31578 80040D78 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3157C 80040D7C 21888000 */  addu       $s1, $a0, $zero
    /* 31580 80040D80 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 31584 80040D84 2000BFAF */  sw         $ra, 0x20($sp)
    /* 31588 80040D88 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3158C 80040D8C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 31590 80040D90 AC002492 */  lbu        $a0, 0xAC($s1)
    /* 31594 80040D94 B400238E */  lw         $v1, 0xB4($s1)
    /* 31598 80040D98 80100400 */  sll        $v0, $a0, 2
    /* 3159C 80040D9C 21904300 */  addu       $s2, $v0, $v1
    /* 315A0 80040DA0 AB002292 */  lbu        $v0, 0xAB($s1)
    /* 315A4 80040DA4 21808000 */  addu       $s0, $a0, $zero
    /* 315A8 80040DA8 21100202 */  addu       $v0, $s0, $v0
    /* 315AC 80040DAC 2A100202 */  slt        $v0, $s0, $v0
    /* 315B0 80040DB0 10004010 */  beqz       $v0, .Lfunc_80040D74_80040DF4
    /* 315B4 80040DB4 2198A000 */   addu      $s3, $a1, $zero
  .Lfunc_80040D74_80040DB8:
    /* 315B8 80040DB8 0000448E */  lw         $a0, 0x0($s2)
    /* 315BC 80040DBC 00000000 */  nop
    /* 315C0 80040DC0 0000828C */  lw         $v0, 0x0($a0)
    /* 315C4 80040DC4 04005226 */  addiu      $s2, $s2, 0x4
    /* 315C8 80040DC8 B800428C */  lw         $v0, 0xB8($v0)
    /* 315CC 80040DCC 00000000 */  nop
    /* 315D0 80040DD0 09F84000 */  jalr       $v0
    /* 315D4 80040DD4 21286002 */   addu      $a1, $s3, $zero
    /* 315D8 80040DD8 AC002292 */  lbu        $v0, 0xAC($s1)
    /* 315DC 80040DDC AB002392 */  lbu        $v1, 0xAB($s1)
    /* 315E0 80040DE0 01001026 */  addiu      $s0, $s0, 0x1
    /* 315E4 80040DE4 21104300 */  addu       $v0, $v0, $v1
    /* 315E8 80040DE8 2A100202 */  slt        $v0, $s0, $v0
    /* 315EC 80040DEC F2FF4014 */  bnez       $v0, .Lfunc_80040D74_80040DB8
    /* 315F0 80040DF0 00000000 */   nop
  .Lfunc_80040D74_80040DF4:
    /* 315F4 80040DF4 2000BF8F */  lw         $ra, 0x20($sp)
    /* 315F8 80040DF8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 315FC 80040DFC 1800B28F */  lw         $s2, 0x18($sp)
    /* 31600 80040E00 1400B18F */  lw         $s1, 0x14($sp)
    /* 31604 80040E04 1000B08F */  lw         $s0, 0x10($sp)
    /* 31608 80040E08 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3160C 80040E0C 0800E003 */  jr         $ra
    /* 31610 80040E10 00000000 */   nop
endlabel SpriteSet__PlayAnimation
