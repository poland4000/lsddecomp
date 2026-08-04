.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching AnimEffect__Init, 0xF8

glabel AnimEffect__Init
    /* 2C710 8003BF10 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2C714 8003BF14 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2C718 8003BF18 21888000 */  addu       $s1, $a0, $zero
    /* 2C71C 8003BF1C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2C720 8003BF20 2180A000 */  addu       $s0, $a1, $zero
    /* 2C724 8003BF24 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2C728 8003BF28 2190C000 */  addu       $s2, $a2, $zero
    /* 2C72C 8003BF2C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2C730 8003BF30 2000BFAF */  sw         $ra, 0x20($sp)
    /* 2C734 8003BF34 72F9000C */  jal        Get_vtable_Effect
    /* 2C738 8003BF38 2198E000 */   addu      $s3, $a3, $zero
    /* 2C73C 8003BF3C 0800428C */  lw         $v0, 0x8($v0)
    /* 2C740 8003BF40 00000000 */  nop
    /* 2C744 8003BF44 09F84000 */  jalr       $v0
    /* 2C748 8003BF48 21202002 */   addu      $a0, $s1, $zero
    /* 2C74C 8003BF4C EFF7000C */  jal        Get_vtable_AnimEffect
    /* 2C750 8003BF50 00000000 */   nop
    /* 2C754 8003BF54 21202002 */  addu       $a0, $s1, $zero
    /* 2C758 8003BF58 000022AE */  sw         $v0, 0x0($s1)
    /* 2C75C 8003BF5C D800428C */  lw         $v0, 0xD8($v0)
    /* 2C760 8003BF60 00000000 */  nop
    /* 2C764 8003BF64 09F84000 */  jalr       $v0
    /* 2C768 8003BF68 21280002 */   addu      $a1, $s0, $zero
    /* 2C76C 8003BF6C 05004012 */  beqz       $s2, .Lfunc_8003BF10_8003BF84
    /* 2C770 8003BF70 00000000 */   nop
    /* 2C774 8003BF74 20B1000C */  jal        New_SoundPlayer
    /* 2C778 8003BF78 21204002 */   addu      $a0, $s2, $zero
    /* 2C77C 8003BF7C E2EF0008 */  j          .Lfunc_8003BF10_8003BF88
    /* 2C780 8003BF80 480022AE */   sw        $v0, 0x48($s1)
  .Lfunc_8003BF10_8003BF84:
    /* 2C784 8003BF84 480033AE */  sw         $s3, 0x48($s1)
  .Lfunc_8003BF10_8003BF88:
    /* 2C788 8003BF88 21202002 */  addu       $a0, $s1, $zero
    /* 2C78C 8003BF8C 0000228E */  lw         $v0, 0x0($s1)
    /* 2C790 8003BF90 21280000 */  addu       $a1, $zero, $zero
    /* 2C794 8003BF94 440032AE */  sw         $s2, 0x44($s1)
    /* 2C798 8003BF98 D400428C */  lw         $v0, 0xD4($v0)
    /* 2C79C 8003BF9C 00000000 */  nop
    /* 2C7A0 8003BFA0 09F84000 */  jalr       $v0
    /* 2C7A4 8003BFA4 21300000 */   addu      $a2, $zero, $zero
    /* 2C7A8 8003BFA8 CC13010C */  jal        func_80044F30
    /* 2C7AC 8003BFAC 21200000 */   addu      $a0, $zero, $zero
    /* 2C7B0 8003BFB0 21200000 */  addu       $a0, $zero, $zero
    /* 2C7B4 8003BFB4 21284000 */  addu       $a1, $v0, $zero
    /* 2C7B8 8003BFB8 3513010C */  jal        func_80044CD4
    /* 2C7BC 8003BFBC 800025AE */   sw        $a1, 0x80($s1)
    /* 2C7C0 8003BFC0 21204000 */  addu       $a0, $v0, $zero
    /* 2C7C4 8003BFC4 01000534 */  ori        $a1, $zero, 0x1
    /* 2C7C8 8003BFC8 6D10010C */  jal        func_800441B4
    /* 2C7CC 8003BFCC 7C0024AE */   sw        $a0, 0x7C($s1)
    /* 2C7D0 8003BFD0 0000238E */  lw         $v1, 0x0($s1)
    /* 2C7D4 8003BFD4 780022AE */  sw         $v0, 0x78($s1)
    /* 2C7D8 8003BFD8 4000628C */  lw         $v0, 0x40($v1)
    /* 2C7DC 8003BFDC 00000000 */  nop
    /* 2C7E0 8003BFE0 09F84000 */  jalr       $v0
    /* 2C7E4 8003BFE4 21202002 */   addu      $a0, $s1, $zero
    /* 2C7E8 8003BFE8 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2C7EC 8003BFEC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2C7F0 8003BFF0 1800B28F */  lw         $s2, 0x18($sp)
    /* 2C7F4 8003BFF4 1400B18F */  lw         $s1, 0x14($sp)
    /* 2C7F8 8003BFF8 1000B08F */  lw         $s0, 0x10($sp)
    /* 2C7FC 8003BFFC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2C800 8003C000 0800E003 */  jr         $ra
    /* 2C804 8003C004 00000000 */   nop
endlabel AnimEffect__Init
