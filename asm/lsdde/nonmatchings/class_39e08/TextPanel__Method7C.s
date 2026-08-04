.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextPanel__Method7C, 0x240

glabel TextPanel__Method7C
    /* 403E4 8004FBE4 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 403E8 8004FBE8 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 403EC 8004FBEC 21888000 */  addu       $s1, $a0, $zero
    /* 403F0 8004FBF0 2800B0AF */  sw         $s0, 0x28($sp)
    /* 403F4 8004FBF4 2180A000 */  addu       $s0, $a1, $zero
    /* 403F8 8004FBF8 3400BFAF */  sw         $ra, 0x34($sp)
    /* 403FC 8004FBFC 3000B2AF */  sw         $s2, 0x30($sp)
    /* 40400 8004FC00 2800228E */  lw         $v0, 0x28($s1)
    /* 40404 8004FC04 0000328E */  lw         $s2, 0x0($s1)
    /* 40408 8004FC08 02005014 */  bne        $v0, $s0, .Lfunc_8004FBE4_8004FC14
    /* 4040C 8004FC0C 21202002 */   addu      $a0, $s1, $zero
    /* 40410 8004FC10 17001034 */  ori        $s0, $zero, 0x17
  .Lfunc_8004FBE4_8004FC14:
    /* 40414 8004FC14 3000428E */  lw         $v0, 0x30($s2)
    /* 40418 8004FC18 00000000 */  nop
    /* 4041C 8004FC1C 09F84000 */  jalr       $v0
    /* 40420 8004FC20 21280002 */   addu      $a1, $s0, $zero
    /* 40424 8004FC24 8400428E */  lw         $v0, 0x84($s2)
    /* 40428 8004FC28 00000000 */  nop
    /* 4042C 8004FC2C 09F84000 */  jalr       $v0
    /* 40430 8004FC30 21202002 */   addu      $a0, $s1, $zero
    /* 40434 8004FC34 21202002 */  addu       $a0, $s1, $zero
    /* 40438 8004FC38 8000428E */  lw         $v0, 0x80($s2)
    /* 4043C 8004FC3C 00000000 */  nop
    /* 40440 8004FC40 09F84000 */  jalr       $v0
    /* 40444 8004FC44 21280002 */   addu      $a1, $s0, $zero
    /* 40448 8004FC48 EFFF0326 */  addiu      $v1, $s0, -0x11
    /* 4044C 8004FC4C 0500622C */  sltiu      $v0, $v1, 0x5
    /* 40450 8004FC50 47004010 */  beqz       $v0, .Lfunc_8004FBE4_8004FD70
    /* 40454 8004FC54 5C0020AE */   sw        $zero, 0x5C($s1)
    /* 40458 8004FC58 80100300 */  sll        $v0, $v1, 2
    /* 4045C 8004FC5C 0180013C */  lui        $at, %hi(jtbl_8001157C)
    /* 40460 8004FC60 7C152124 */  addiu      $at, $at, %lo(jtbl_8001157C)
    /* 40464 8004FC64 21082200 */  addu       $at, $at, $v0
    /* 40468 8004FC68 0000228C */  lw         $v0, 0x0($at)
    /* 4046C 8004FC6C 00000000 */  nop
    /* 40470 8004FC70 08004000 */  jr         $v0
    /* 40474 8004FC74 00000000 */   nop
  jlabel .Lfunc_8004FBE4_8004FC78
    /* 40478 8004FC78 21202002 */  addu       $a0, $s1, $zero
    /* 4047C 8004FC7C 5000428E */  lw         $v0, 0x50($s2)
    /* 40480 8004FC80 00000000 */  nop
    /* 40484 8004FC84 09F84000 */  jalr       $v0
    /* 40488 8004FC88 08001034 */   ori       $s0, $zero, 0x8
    /* 4048C 8004FC8C 2B004010 */  beqz       $v0, .Lfunc_8004FBE4_8004FD3C
    /* 40490 8004FC90 21202002 */   addu      $a0, $s1, $zero
    /* 40494 8004FC94 4F3F0108 */  j          .Lfunc_8004FBE4_8004FD3C
    /* 40498 8004FC98 11001034 */   ori       $s0, $zero, 0x11
  jlabel .Lfunc_8004FBE4_8004FC9C
    /* 4049C 8004FC9C 4000258E */  lw         $a1, 0x40($s1)
    /* 404A0 8004FCA0 00000000 */  nop
    /* 404A4 8004FCA4 0000A290 */  lbu        $v0, 0x0($a1)
    /* 404A8 8004FCA8 00000000 */  nop
    /* 404AC 8004FCAC 07004014 */  bnez       $v0, .Lfunc_8004FBE4_8004FCCC
    /* 404B0 8004FCB0 00000000 */   nop
    /* 404B4 8004FCB4 3000268E */  lw         $a2, 0x30($s1)
    /* 404B8 8004FCB8 3400278E */  lw         $a3, 0x34($s1)
    /* 404BC 8004FCBC 5800428E */  lw         $v0, 0x58($s2)
    /* 404C0 8004FCC0 00000000 */  nop
    /* 404C4 8004FCC4 09F84000 */  jalr       $v0
    /* 404C8 8004FCC8 21202002 */   addu      $a0, $s1, $zero
  .Lfunc_8004FBE4_8004FCCC:
    /* 404CC 8004FCCC 5000228E */  lw         $v0, 0x50($s1)
    /* 404D0 8004FCD0 4C002792 */  lbu        $a3, 0x4C($s1)
    /* 404D4 8004FCD4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 404D8 8004FCD8 5400228E */  lw         $v0, 0x54($s1)
    /* 404DC 8004FCDC 00000000 */  nop
    /* 404E0 8004FCE0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 404E4 8004FCE4 5800228E */  lw         $v0, 0x58($s1)
    /* 404E8 8004FCE8 21202002 */  addu       $a0, $s1, $zero
    /* 404EC 8004FCEC 1800A2AF */  sw         $v0, 0x18($sp)
    /* 404F0 8004FCF0 4000258E */  lw         $a1, 0x40($s1)
    /* 404F4 8004FCF4 4400268E */  lw         $a2, 0x44($s1)
    /* 404F8 8004FCF8 6800428E */  lw         $v0, 0x68($s2)
    /* 404FC 8004FCFC 00000000 */  nop
    /* 40500 8004FD00 09F84000 */  jalr       $v0
    /* 40504 8004FD04 0C001034 */   ori       $s0, $zero, 0xC
    /* 40508 8004FD08 4C3F0108 */  j          .Lfunc_8004FBE4_8004FD30
    /* 4050C 8004FD0C 00000000 */   nop
  jlabel .Lfunc_8004FBE4_8004FD10
    /* 40510 8004FD10 21202002 */  addu       $a0, $s1, $zero
    /* 40514 8004FD14 4000258E */  lw         $a1, 0x40($s1)
    /* 40518 8004FD18 5400268E */  lw         $a2, 0x54($s1)
    /* 4051C 8004FD1C 5800278E */  lw         $a3, 0x58($s1)
    /* 40520 8004FD20 6400428E */  lw         $v0, 0x64($s2)
    /* 40524 8004FD24 00000000 */  nop
    /* 40528 8004FD28 09F84000 */  jalr       $v0
    /* 4052C 8004FD2C 10001034 */   ori       $s0, $zero, 0x10
  .Lfunc_8004FBE4_8004FD30:
    /* 40530 8004FD30 02004010 */  beqz       $v0, .Lfunc_8004FBE4_8004FD3C
    /* 40534 8004FD34 21202002 */   addu      $a0, $s1, $zero
    /* 40538 8004FD38 16001034 */  ori        $s0, $zero, 0x16
  .Lfunc_8004FBE4_8004FD3C:
    /* 4053C 8004FD3C 7C00428E */  lw         $v0, 0x7C($s2)
    /* 40540 8004FD40 00000000 */  nop
    /* 40544 8004FD44 09F84000 */  jalr       $v0
    /* 40548 8004FD48 21280002 */   addu      $a1, $s0, $zero
    /* 4054C 8004FD4C 5D3F0108 */  j          .Lfunc_8004FBE4_8004FD74
    /* 40550 8004FD50 EAFF0226 */   addiu     $v0, $s0, -0x16
  jlabel .Lfunc_8004FBE4_8004FD54
    /* 40554 8004FD54 9C00428E */  lw         $v0, 0x9C($s2)
    /* 40558 8004FD58 593F0108 */  j          .Lfunc_8004FBE4_8004FD64
    /* 4055C 8004FD5C 00000000 */   nop
  jlabel .Lfunc_8004FBE4_8004FD60
    /* 40560 8004FD60 A800428E */  lw         $v0, 0xA8($s2)
  .Lfunc_8004FBE4_8004FD64:
    /* 40564 8004FD64 00000000 */  nop
    /* 40568 8004FD68 09F84000 */  jalr       $v0
    /* 4056C 8004FD6C 21202002 */   addu      $a0, $s1, $zero
  .Lfunc_8004FBE4_8004FD70:
    /* 40570 8004FD70 EAFF0226 */  addiu      $v0, $s0, -0x16
  .Lfunc_8004FBE4_8004FD74:
    /* 40574 8004FD74 0200422C */  sltiu      $v0, $v0, 0x2
    /* 40578 8004FD78 22004010 */  beqz       $v0, .Lfunc_8004FBE4_8004FE04
    /* 4057C 8004FD7C 01000234 */   ori       $v0, $zero, 0x1
    /* 40580 8004FD80 2400238E */  lw         $v1, 0x24($s1)
    /* 40584 8004FD84 00000000 */  nop
    /* 40588 8004FD88 1B006214 */  bne        $v1, $v0, .Lfunc_8004FBE4_8004FDF8
    /* 4058C 8004FD8C 00000000 */   nop
    /* 40590 8004FD90 3800228E */  lw         $v0, 0x38($s1)
    /* 40594 8004FD94 00000000 */  nop
    /* 40598 8004FD98 17004010 */  beqz       $v0, .Lfunc_8004FBE4_8004FDF8
    /* 4059C 8004FD9C 00000000 */   nop
    /* 405A0 8004FDA0 3C00248E */  lw         $a0, 0x3C($s1)
    /* 405A4 8004FDA4 3F5F000C */  jal        BMemFree
    /* 405A8 8004FDA8 21800000 */   addu      $s0, $zero, $zero
    /* 405AC 8004FDAC 2C00228E */  lw         $v0, 0x2C($s1)
    /* 405B0 8004FDB0 00000000 */  nop
    /* 405B4 8004FDB4 0C004018 */  blez       $v0, .Lfunc_8004FBE4_8004FDE8
    /* 405B8 8004FDB8 00000000 */   nop
  .Lfunc_8004FBE4_8004FDBC:
    /* 405BC 8004FDBC 3800228E */  lw         $v0, 0x38($s1)
    /* 405C0 8004FDC0 80181000 */  sll        $v1, $s0, 2
    /* 405C4 8004FDC4 21186200 */  addu       $v1, $v1, $v0
    /* 405C8 8004FDC8 0000648C */  lw         $a0, 0x0($v1)
    /* 405CC 8004FDCC 3F5F000C */  jal        BMemFree
    /* 405D0 8004FDD0 01001026 */   addiu     $s0, $s0, 0x1
    /* 405D4 8004FDD4 2C00228E */  lw         $v0, 0x2C($s1)
    /* 405D8 8004FDD8 00000000 */  nop
    /* 405DC 8004FDDC 2A100202 */  slt        $v0, $s0, $v0
    /* 405E0 8004FDE0 F6FF4014 */  bnez       $v0, .Lfunc_8004FBE4_8004FDBC
    /* 405E4 8004FDE4 00000000 */   nop
  .Lfunc_8004FBE4_8004FDE8:
    /* 405E8 8004FDE8 3800248E */  lw         $a0, 0x38($s1)
    /* 405EC 8004FDEC 3F5F000C */  jal        BMemFree
    /* 405F0 8004FDF0 00000000 */   nop
    /* 405F4 8004FDF4 380020AE */  sw         $zero, 0x38($s1)
  .Lfunc_8004FBE4_8004FDF8:
    /* 405F8 8004FDF8 280020AE */  sw         $zero, 0x28($s1)
    /* 405FC 8004FDFC 823F0108 */  j          .Lfunc_8004FBE4_8004FE08
    /* 40600 8004FE00 240020AE */   sw        $zero, 0x24($s1)
  .Lfunc_8004FBE4_8004FE04:
    /* 40604 8004FE04 280030AE */  sw         $s0, 0x28($s1)
  .Lfunc_8004FBE4_8004FE08:
    /* 40608 8004FE08 3400BF8F */  lw         $ra, 0x34($sp)
    /* 4060C 8004FE0C 3000B28F */  lw         $s2, 0x30($sp)
    /* 40610 8004FE10 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 40614 8004FE14 2800B08F */  lw         $s0, 0x28($sp)
    /* 40618 8004FE18 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 4061C 8004FE1C 0800E003 */  jr         $ra
    /* 40620 8004FE20 00000000 */   nop
endlabel TextPanel__Method7C
