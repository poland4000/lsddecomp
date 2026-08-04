.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamSys__UpdateLinkCamera, 0xE0

glabel DreamSys__UpdateLinkCamera
    /* 49C2C 8005942C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 49C30 80059430 2400B1AF */  sw         $s1, 0x24($sp)
    /* 49C34 80059434 21888000 */  addu       $s1, $a0, $zero
    /* 49C38 80059438 2800B2AF */  sw         $s2, 0x28($sp)
    /* 49C3C 8005943C 2190A000 */  addu       $s2, $a1, $zero
    /* 49C40 80059440 2000B0AF */  sw         $s0, 0x20($sp)
    /* 49C44 80059444 2180C000 */  addu       $s0, $a2, $zero
    /* 49C48 80059448 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 49C4C 8005944C 2198E000 */  addu       $s3, $a3, $zero
    /* 49C50 80059450 1000A527 */  addiu      $a1, $sp, 0x10
    /* 49C54 80059454 0880023C */  lui        $v0, %hi(D_80087EE8)
    /* 49C58 80059458 E87E4224 */  addiu      $v0, $v0, %lo(D_80087EE8)
    /* 49C5C 8005945C F8FF4624 */  addiu      $a2, $v0, -0x8
    /* 49C60 80059460 21380000 */  addu       $a3, $zero, $zero
    /* 49C64 80059464 3000BFAF */  sw         $ra, 0x30($sp)
    /* 49C68 80059468 8079000C */  jal        func_8001E600
    /* 49C6C 8005946C 000050AC */   sw        $s0, 0x0($v0)
    /* 49C70 80059470 5C00258E */  lw         $a1, 0x5C($s1)
    /* 49C74 80059474 21300002 */  addu       $a2, $s0, $zero
    /* 49C78 80059478 1400A424 */  addiu      $a0, $a1, 0x14
    /* 49C7C 8005947C 4365010C */  jal        LerpFixed
    /* 49C80 80059480 2000A524 */   addiu     $a1, $a1, 0x20
    /* 49C84 80059484 0C00238E */  lw         $v1, 0xC($s1)
    /* 49C88 80059488 00000000 */  nop
    /* 49C8C 8005948C 04006010 */  beqz       $v1, .Lfunc_8005942C_800594A0
    /* 49C90 80059490 21204000 */   addu      $a0, $v0, $zero
    /* 49C94 80059494 1400228E */  lw         $v0, 0x14($s1)
    /* 49C98 80059498 29650108 */  j          .Lfunc_8005942C_800594A4
    /* 49C9C 8005949C 38004224 */   addiu     $v0, $v0, 0x38
  .Lfunc_8005942C_800594A0:
    /* 49CA0 800594A0 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_8005942C_800594A4:
    /* 49CA4 800594A4 0400428C */  lw         $v0, 0x4($v0)
    /* 49CA8 800594A8 00000000 */  nop
    /* 49CAC 800594AC 21108200 */  addu       $v0, $a0, $v0
    /* 49CB0 800594B0 07004012 */  beqz       $s2, .Lfunc_8005942C_800594D0
    /* 49CB4 800594B4 1400A2AF */   sw        $v0, 0x14($sp)
    /* 49CB8 800594B8 1000A28F */  lw         $v0, 0x10($sp)
    /* 49CBC 800594BC 1400A38F */  lw         $v1, 0x14($sp)
    /* 49CC0 800594C0 1800A48F */  lw         $a0, 0x18($sp)
    /* 49CC4 800594C4 000042AE */  sw         $v0, 0x0($s2)
    /* 49CC8 800594C8 040043AE */  sw         $v1, 0x4($s2)
    /* 49CCC 800594CC 080044AE */  sw         $a0, 0x8($s2)
  .Lfunc_8005942C_800594D0:
    /* 49CD0 800594D0 03006016 */  bnez       $s3, .Lfunc_8005942C_800594E0
    /* 49CD4 800594D4 1000A427 */   addiu     $a0, $sp, 0x10
    /* 49CD8 800594D8 3B650108 */  j          .Lfunc_8005942C_800594EC
    /* 49CDC 800594DC 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_8005942C_800594E0:
    /* 49CE0 800594E0 4800A58F */  lw         $a1, 0x48($sp)
    /* 49CE4 800594E4 C57B000C */  jal        Vec3InRange
    /* 49CE8 800594E8 21306002 */   addu      $a2, $s3, $zero
  .Lfunc_8005942C_800594EC:
    /* 49CEC 800594EC 3000BF8F */  lw         $ra, 0x30($sp)
    /* 49CF0 800594F0 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 49CF4 800594F4 2800B28F */  lw         $s2, 0x28($sp)
    /* 49CF8 800594F8 2400B18F */  lw         $s1, 0x24($sp)
    /* 49CFC 800594FC 2000B08F */  lw         $s0, 0x20($sp)
    /* 49D00 80059500 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 49D04 80059504 0800E003 */  jr         $ra
    /* 49D08 80059508 00000000 */   nop
endlabel DreamSys__UpdateLinkCamera
