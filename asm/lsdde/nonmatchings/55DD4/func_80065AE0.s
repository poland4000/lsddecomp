.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80065AE0, 0xA0

glabel func_80065AE0
    /* 562E0 80065AE0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 562E4 80065AE4 2000B2AF */  sw         $s2, 0x20($sp)
    /* 562E8 80065AE8 21908000 */  addu       $s2, $a0, $zero
    /* 562EC 80065AEC 2400B3AF */  sw         $s3, 0x24($sp)
    /* 562F0 80065AF0 2198A000 */  addu       $s3, $a1, $zero
    /* 562F4 80065AF4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 562F8 80065AF8 2800BFAF */  sw         $ra, 0x28($sp)
    /* 562FC 80065AFC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 56300 80065B00 6C00428E */  lw         $v0, 0x6C($s2)
    /* 56304 80065B04 7000518E */  lw         $s1, 0x70($s2)
    /* 56308 80065B08 0E004018 */  blez       $v0, .Lfunc_80065AE0_80065B44
    /* 5630C 80065B0C 21800000 */   addu      $s0, $zero, $zero
  .Lfunc_80065AE0_80065B10:
    /* 56310 80065B10 0000248E */  lw         $a0, 0x0($s1)
    /* 56314 80065B14 00000000 */  nop
    /* 56318 80065B18 0000828C */  lw         $v0, 0x0($a0)
    /* 5631C 80065B1C 21286002 */  addu       $a1, $s3, $zero
    /* 56320 80065B20 7000428C */  lw         $v0, 0x70($v0)
    /* 56324 80065B24 00000000 */  nop
    /* 56328 80065B28 09F84000 */  jalr       $v0
    /* 5632C 80065B2C 01001026 */   addiu     $s0, $s0, 0x1
    /* 56330 80065B30 6C00428E */  lw         $v0, 0x6C($s2)
    /* 56334 80065B34 00000000 */  nop
    /* 56338 80065B38 2A100202 */  slt        $v0, $s0, $v0
    /* 5633C 80065B3C F4FF4014 */  bnez       $v0, .Lfunc_80065AE0_80065B10
    /* 56340 80065B40 04003126 */   addiu     $s1, $s1, 0x4
  .Lfunc_80065AE0_80065B44:
    /* 56344 80065B44 215F010C */  jal        Get_vtable_ActorBase
    /* 56348 80065B48 00000000 */   nop
    /* 5634C 80065B4C 21204002 */  addu       $a0, $s2, $zero
    /* 56350 80065B50 7000428C */  lw         $v0, 0x70($v0)
    /* 56354 80065B54 00000000 */  nop
    /* 56358 80065B58 09F84000 */  jalr       $v0
    /* 5635C 80065B5C 21286002 */   addu      $a1, $s3, $zero
    /* 56360 80065B60 2800BF8F */  lw         $ra, 0x28($sp)
    /* 56364 80065B64 2400B38F */  lw         $s3, 0x24($sp)
    /* 56368 80065B68 2000B28F */  lw         $s2, 0x20($sp)
    /* 5636C 80065B6C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 56370 80065B70 1800B08F */  lw         $s0, 0x18($sp)
    /* 56374 80065B74 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 56378 80065B78 0800E003 */  jr         $ra
    /* 5637C 80065B7C 00000000 */   nop
endlabel func_80065AE0
