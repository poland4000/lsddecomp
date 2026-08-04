.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching ModelObj__LookAt, 0xB8

glabel ModelObj__LookAt
    /* 2F2CC 8003EACC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2F2D0 8003EAD0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2F2D4 8003EAD4 21808000 */  addu       $s0, $a0, $zero
    /* 2F2D8 8003EAD8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2F2DC 8003EADC 2190C000 */  addu       $s2, $a2, $zero
    /* 2F2E0 8003EAE0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2F2E4 8003EAE4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 2F2E8 8003EAE8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2F2EC 8003EAEC 1000028E */  lw         $v0, 0x10($s0)
    /* 2F2F0 8003EAF0 0000118E */  lw         $s1, 0x0($s0)
    /* 2F2F4 8003EAF4 1B004014 */  bnez       $v0, .Lfunc_8003EACC_8003EB64
    /* 2F2F8 8003EAF8 2198E000 */   addu      $s3, $a3, $zero
    /* 2F2FC 8003EAFC 1000228E */  lw         $v0, 0x10($s1)
    /* 2F300 8003EB00 00000000 */  nop
    /* 2F304 8003EB04 09F84000 */  jalr       $v0
    /* 2F308 8003EB08 00000000 */   nop
    /* 2F30C 8003EB0C 21200002 */  addu       $a0, $s0, $zero
    /* 2F310 8003EB10 7800228E */  lw         $v0, 0x78($s1)
    /* 2F314 8003EB14 00000000 */  nop
    /* 2F318 8003EB18 09F84000 */  jalr       $v0
    /* 2F31C 8003EB1C 21284002 */   addu      $a1, $s2, $zero
    /* 2F320 8003EB20 21200002 */  addu       $a0, $s0, $zero
    /* 2F324 8003EB24 7C00228E */  lw         $v0, 0x7C($s1)
    /* 2F328 8003EB28 00000000 */  nop
    /* 2F32C 8003EB2C 09F84000 */  jalr       $v0
    /* 2F330 8003EB30 21286002 */   addu      $a1, $s3, $zero
    /* 2F334 8003EB34 3800A58F */  lw         $a1, 0x38($sp)
    /* 2F338 8003EB38 00000000 */  nop
    /* 2F33C 8003EB3C 0300A014 */  bnez       $a1, .Lfunc_8003EACC_8003EB4C
    /* 2F340 8003EB40 00000000 */   nop
    /* 2F344 8003EB44 0980053C */  lui        $a1, %hi(D_8008A8F4)
    /* 2F348 8003EB48 F4A8A524 */  addiu      $a1, $a1, %lo(D_8008A8F4)
  .Lfunc_8003EACC_8003EB4C:
    /* 2F34C 8003EB4C 8000228E */  lw         $v0, 0x80($s1)
    /* 2F350 8003EB50 00000000 */  nop
    /* 2F354 8003EB54 09F84000 */  jalr       $v0
    /* 2F358 8003EB58 21200002 */   addu      $a0, $s0, $zero
    /* 2F35C 8003EB5C ABFC000C */  jal        CalcLookAtAngles
    /* 2F360 8003EB60 14000426 */   addiu     $a0, $s0, 0x14
  .Lfunc_8003EACC_8003EB64:
    /* 2F364 8003EB64 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2F368 8003EB68 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2F36C 8003EB6C 1800B28F */  lw         $s2, 0x18($sp)
    /* 2F370 8003EB70 1400B18F */  lw         $s1, 0x14($sp)
    /* 2F374 8003EB74 1000B08F */  lw         $s0, 0x10($sp)
    /* 2F378 8003EB78 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2F37C 8003EB7C 0800E003 */  jr         $ra
    /* 2F380 8003EB80 00000000 */   nop
endlabel ModelObj__LookAt
