.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__MethodC0, 0x128

glabel StageRenderer__MethodC0
    /* 3B3D0 8004ABD0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3B3D4 8004ABD4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3B3D8 8004ABD8 21908000 */  addu       $s2, $a0, $zero
    /* 3B3DC 8004ABDC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3B3E0 8004ABE0 21980000 */  addu       $s3, $zero, $zero
    /* 3B3E4 8004ABE4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3B3E8 8004ABE8 EC001434 */  ori        $s4, $zero, 0xEC
    /* 3B3EC 8004ABEC 2400BFAF */  sw         $ra, 0x24($sp)
    /* 3B3F0 8004ABF0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3B3F4 8004ABF4 1000B0AF */  sw         $s0, 0x10($sp)
  .Lfunc_8004ABD0_8004ABF8:
    /* 3B3F8 8004ABF8 21805402 */  addu       $s0, $s2, $s4
    /* 3B3FC 8004ABFC 0400048E */  lw         $a0, 0x4($s0)
    /* 3B400 8004AC00 00000000 */  nop
    /* 3B404 8004AC04 0000828C */  lw         $v0, 0x0($a0)
    /* 3B408 8004AC08 00000000 */  nop
    /* 3B40C 8004AC0C 7400428C */  lw         $v0, 0x74($v0)
    /* 3B410 8004AC10 00000000 */  nop
    /* 3B414 8004AC14 09F84000 */  jalr       $v0
    /* 3B418 8004AC18 00000000 */   nop
    /* 3B41C 8004AC1C 000000A6 */  sh         $zero, 0x0($s0)
    /* 3B420 8004AC20 0000428E */  lw         $v0, 0x0($s2)
    /* 3B424 8004AC24 21204002 */  addu       $a0, $s2, $zero
    /* 3B428 8004AC28 0801428C */  lw         $v0, 0x108($v0)
    /* 3B42C 8004AC2C 00000000 */  nop
    /* 3B430 8004AC30 09F84000 */  jalr       $v0
    /* 3B434 8004AC34 21280002 */   addu      $a1, $s0, $zero
    /* 3B438 8004AC38 0800118E */  lw         $s1, 0x8($s0)
    /* 3B43C 8004AC3C 00000000 */  nop
    /* 3B440 8004AC40 2C00248E */  lw         $a0, 0x2C($s1)
    /* 3B444 8004AC44 00000000 */  nop
    /* 3B448 8004AC48 08008010 */  beqz       $a0, .Lfunc_8004ABD0_8004AC6C
    /* 3B44C 8004AC4C 1C009426 */   addiu     $s4, $s4, 0x1C
    /* 3B450 8004AC50 0000828C */  lw         $v0, 0x0($a0)
    /* 3B454 8004AC54 00000000 */  nop
    /* 3B458 8004AC58 0400428C */  lw         $v0, 0x4($v0)
    /* 3B45C 8004AC5C 00000000 */  nop
    /* 3B460 8004AC60 09F84000 */  jalr       $v0
    /* 3B464 8004AC64 00000000 */   nop
    /* 3B468 8004AC68 2C0022AE */  sw         $v0, 0x2C($s1)
  .Lfunc_8004ABD0_8004AC6C:
    /* 3B46C 8004AC6C 21204002 */  addu       $a0, $s2, $zero
    /* 3B470 8004AC70 06000534 */  ori        $a1, $zero, 0x6
    /* 3B474 8004AC74 0000428E */  lw         $v0, 0x0($s2)
    /* 3B478 8004AC78 21300002 */  addu       $a2, $s0, $zero
    /* 3B47C 8004AC7C 8800428C */  lw         $v0, 0x88($v0)
    /* 3B480 8004AC80 00000000 */  nop
    /* 3B484 8004AC84 09F84000 */  jalr       $v0
    /* 3B488 8004AC88 21386002 */   addu      $a3, $s3, $zero
    /* 3B48C 8004AC8C 0400048E */  lw         $a0, 0x4($s0)
    /* 3B490 8004AC90 00000000 */  nop
    /* 3B494 8004AC94 0000828C */  lw         $v0, 0x0($a0)
    /* 3B498 8004AC98 00000000 */  nop
    /* 3B49C 8004AC9C 8400428C */  lw         $v0, 0x84($v0)
    /* 3B4A0 8004ACA0 00000000 */  nop
    /* 3B4A4 8004ACA4 09F84000 */  jalr       $v0
    /* 3B4A8 8004ACA8 01007326 */   addiu     $s3, $s3, 0x1
    /* 3B4AC 8004ACAC 0700622A */  slti       $v0, $s3, 0x7
    /* 3B4B0 8004ACB0 D1FF4014 */  bnez       $v0, .Lfunc_8004ABD0_8004ABF8
    /* 3B4B4 8004ACB4 00000000 */   nop
    /* 3B4B8 8004ACB8 0000428E */  lw         $v0, 0x0($s2)
    /* 3B4BC 8004ACBC B80140AE */  sw         $zero, 0x1B8($s2)
    /* 3B4C0 8004ACC0 B40140A6 */  sh         $zero, 0x1B4($s2)
    /* 3B4C4 8004ACC4 4001428C */  lw         $v0, 0x140($v0)
    /* 3B4C8 8004ACC8 00000000 */  nop
    /* 3B4CC 8004ACCC 09F84000 */  jalr       $v0
    /* 3B4D0 8004ACD0 21204002 */   addu      $a0, $s2, $zero
    /* 3B4D4 8004ACD4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 3B4D8 8004ACD8 2000B48F */  lw         $s4, 0x20($sp)
    /* 3B4DC 8004ACDC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3B4E0 8004ACE0 1800B28F */  lw         $s2, 0x18($sp)
    /* 3B4E4 8004ACE4 1400B18F */  lw         $s1, 0x14($sp)
    /* 3B4E8 8004ACE8 1000B08F */  lw         $s0, 0x10($sp)
    /* 3B4EC 8004ACEC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3B4F0 8004ACF0 0800E003 */  jr         $ra
    /* 3B4F4 8004ACF4 00000000 */   nop
endlabel StageRenderer__MethodC0
