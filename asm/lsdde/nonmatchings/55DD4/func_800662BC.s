.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800662BC, 0x84

glabel func_800662BC
    /* 56ABC 800662BC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 56AC0 800662C0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 56AC4 800662C4 21888000 */  addu       $s1, $a0, $zero
    /* 56AC8 800662C8 2400B3AF */  sw         $s3, 0x24($sp)
    /* 56ACC 800662CC 2198C000 */  addu       $s3, $a2, $zero
    /* 56AD0 800662D0 2800BFAF */  sw         $ra, 0x28($sp)
    /* 56AD4 800662D4 2000B2AF */  sw         $s2, 0x20($sp)
    /* 56AD8 800662D8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 56ADC 800662DC 0200B294 */  lhu        $s2, 0x2($a1)
    /* 56AE0 800662E0 0800A524 */  addiu      $a1, $a1, 0x8
    /* 56AE4 800662E4 0D004012 */  beqz       $s2, .Lfunc_800662BC_8006631C
    /* 56AE8 800662E8 21800000 */   addu      $s0, $zero, $zero
    /* 56AEC 800662EC 01001026 */  addiu      $s0, $s0, 0x1
  .Lfunc_800662BC_800662F0:
    /* 56AF0 800662F0 0000228E */  lw         $v0, 0x0($s1)
    /* 56AF4 800662F4 21202002 */  addu       $a0, $s1, $zero
    /* 56AF8 800662F8 3801428C */  lw         $v0, 0x138($v0)
    /* 56AFC 800662FC 00000000 */  nop
    /* 56B00 80066300 09F84000 */  jalr       $v0
    /* 56B04 80066304 21306002 */   addu      $a2, $s3, $zero
    /* 56B08 80066308 21284000 */  addu       $a1, $v0, $zero
    /* 56B0C 8006630C 2B101202 */  sltu       $v0, $s0, $s2
    /* 56B10 80066310 F7FF4014 */  bnez       $v0, .Lfunc_800662BC_800662F0
    /* 56B14 80066314 01001026 */   addiu     $s0, $s0, 0x1
    /* 56B18 80066318 FFFF1026 */  addiu      $s0, $s0, -0x1
  .Lfunc_800662BC_8006631C:
    /* 56B1C 8006631C 2110A000 */  addu       $v0, $a1, $zero
    /* 56B20 80066320 2800BF8F */  lw         $ra, 0x28($sp)
    /* 56B24 80066324 2400B38F */  lw         $s3, 0x24($sp)
    /* 56B28 80066328 2000B28F */  lw         $s2, 0x20($sp)
    /* 56B2C 8006632C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 56B30 80066330 1800B08F */  lw         $s0, 0x18($sp)
    /* 56B34 80066334 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 56B38 80066338 0800E003 */  jr         $ra
    /* 56B3C 8006633C 00000000 */   nop
endlabel func_800662BC
