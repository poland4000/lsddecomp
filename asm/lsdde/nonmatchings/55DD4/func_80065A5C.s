.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80065A5C, 0x84

glabel func_80065A5C
    /* 5625C 80065A5C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 56260 80065A60 2000B2AF */  sw         $s2, 0x20($sp)
    /* 56264 80065A64 21908000 */  addu       $s2, $a0, $zero
    /* 56268 80065A68 2400B3AF */  sw         $s3, 0x24($sp)
    /* 5626C 80065A6C 2198A000 */  addu       $s3, $a1, $zero
    /* 56270 80065A70 1800B0AF */  sw         $s0, 0x18($sp)
    /* 56274 80065A74 2800BFAF */  sw         $ra, 0x28($sp)
    /* 56278 80065A78 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 5627C 80065A7C 6C00428E */  lw         $v0, 0x6C($s2)
    /* 56280 80065A80 7000518E */  lw         $s1, 0x70($s2)
    /* 56284 80065A84 0E004018 */  blez       $v0, .Lfunc_80065A5C_80065AC0
    /* 56288 80065A88 21800000 */   addu      $s0, $zero, $zero
  .Lfunc_80065A5C_80065A8C:
    /* 5628C 80065A8C 0000248E */  lw         $a0, 0x0($s1)
    /* 56290 80065A90 00000000 */  nop
    /* 56294 80065A94 0000828C */  lw         $v0, 0x0($a0)
    /* 56298 80065A98 01001026 */  addiu      $s0, $s0, 0x1
    /* 5629C 80065A9C 6000428C */  lw         $v0, 0x60($v0)
    /* 562A0 80065AA0 00000000 */  nop
    /* 562A4 80065AA4 09F84000 */  jalr       $v0
    /* 562A8 80065AA8 21286002 */   addu      $a1, $s3, $zero
    /* 562AC 80065AAC 6C00428E */  lw         $v0, 0x6C($s2)
    /* 562B0 80065AB0 00000000 */  nop
    /* 562B4 80065AB4 2A100202 */  slt        $v0, $s0, $v0
    /* 562B8 80065AB8 F4FF4014 */  bnez       $v0, .Lfunc_80065A5C_80065A8C
    /* 562BC 80065ABC 04003126 */   addiu     $s1, $s1, 0x4
  .Lfunc_80065A5C_80065AC0:
    /* 562C0 80065AC0 2800BF8F */  lw         $ra, 0x28($sp)
    /* 562C4 80065AC4 2400B38F */  lw         $s3, 0x24($sp)
    /* 562C8 80065AC8 2000B28F */  lw         $s2, 0x20($sp)
    /* 562CC 80065ACC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 562D0 80065AD0 1800B08F */  lw         $s0, 0x18($sp)
    /* 562D4 80065AD4 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 562D8 80065AD8 0800E003 */  jr         $ra
    /* 562DC 80065ADC 00000000 */   nop
endlabel func_80065A5C
