.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamSys__UpdateDreamEffects, 0x13C

glabel DreamSys__UpdateDreamEffects
    /* 4A3E0 80059BE0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4A3E4 80059BE4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4A3E8 80059BE8 21808000 */  addu       $s0, $a0, $zero
    /* 4A3EC 80059BEC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4A3F0 80059BF0 2190A000 */  addu       $s2, $a1, $zero
    /* 4A3F4 80059BF4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4A3F8 80059BF8 21880000 */  addu       $s1, $zero, $zero
    /* 4A3FC 80059BFC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 4A400 80059C00 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 4A404 80059C04 A000038E */  lw         $v1, 0xA0($s0)
    /* 4A408 80059C08 00000000 */  nop
    /* 4A40C 80059C0C 32006010 */  beqz       $v1, .Lfunc_80059BE0_80059CD8
    /* 4A410 80059C10 21980000 */   addu      $s3, $zero, $zero
    /* 4A414 80059C14 B400028E */  lw         $v0, 0xB4($s0)
    /* 4A418 80059C18 21986000 */  addu       $s3, $v1, $zero
    /* 4A41C 80059C1C 01004424 */  addiu      $a0, $v0, 0x1
    /* 4A420 80059C20 04008228 */  slti       $v0, $a0, 0x4
    /* 4A424 80059C24 07004010 */  beqz       $v0, .Lfunc_80059BE0_80059C44
    /* 4A428 80059C28 B40004AE */   sw        $a0, 0xB4($s0)
    /* 4A42C 80059C2C AC00038E */  lw         $v1, 0xAC($s0)
    /* 4A430 80059C30 04000234 */  ori        $v0, $zero, 0x4
    /* 4A434 80059C34 05006214 */  bne        $v1, $v0, .Lfunc_80059BE0_80059C4C
    /* 4A438 80059C38 01008230 */   andi      $v0, $a0, 0x1
    /* 4A43C 80059C3C 13670108 */  j          .Lfunc_80059BE0_80059C4C
    /* 4A440 80059C40 0100512C */   sltiu     $s1, $v0, 0x1
  .Lfunc_80059BE0_80059C44:
    /* 4A444 80059C44 A00000AE */  sw         $zero, 0xA0($s0)
    /* 4A448 80059C48 01001134 */  ori        $s1, $zero, 0x1
  .Lfunc_80059BE0_80059C4C:
    /* 4A44C 80059C4C 07002012 */  beqz       $s1, .Lfunc_80059BE0_80059C6C
    /* 4A450 80059C50 00000000 */   nop
    /* 4A454 80059C54 0000028E */  lw         $v0, 0x0($s0)
    /* 4A458 80059C58 00000000 */  nop
    /* 4A45C 80059C5C 6801428C */  lw         $v0, 0x168($v0)
    /* 4A460 80059C60 00000000 */  nop
    /* 4A464 80059C64 09F84000 */  jalr       $v0
    /* 4A468 80059C68 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_80059BE0_80059C6C:
    /* 4A46C 80059C6C 5C00058E */  lw         $a1, 0x5C($s0)
    /* 4A470 80059C70 00000000 */  nop
    /* 4A474 80059C74 1300A010 */  beqz       $a1, .Lfunc_80059BE0_80059CC4
    /* 4A478 80059C78 00000000 */   nop
    /* 4A47C 80059C7C 7806028E */  lw         $v0, 0x678($s0)
    /* 4A480 80059C80 00000000 */  nop
    /* 4A484 80059C84 0F004010 */  beqz       $v0, .Lfunc_80059BE0_80059CC4
    /* 4A488 80059C88 00000000 */   nop
    /* 4A48C 80059C8C 0D004012 */  beqz       $s2, .Lfunc_80059BE0_80059CC4
    /* 4A490 80059C90 00000000 */   nop
    /* 4A494 80059C94 B400028E */  lw         $v0, 0xB4($s0)
    /* 4A498 80059C98 00000000 */  nop
    /* 4A49C 80059C9C 03004228 */  slti       $v0, $v0, 0x3
    /* 4A4A0 80059CA0 02004014 */  bnez       $v0, .Lfunc_80059BE0_80059CAC
    /* 4A4A4 80059CA4 CEFF0424 */   addiu     $a0, $zero, -0x32
    /* 4A4A8 80059CA8 32000434 */  ori        $a0, $zero, 0x32
  .Lfunc_80059BE0_80059CAC:
    /* 4A4AC 80059CAC 1800A28C */  lw         $v0, 0x18($a1)
    /* 4A4B0 80059CB0 2400A38C */  lw         $v1, 0x24($a1)
    /* 4A4B4 80059CB4 21108200 */  addu       $v0, $a0, $v0
    /* 4A4B8 80059CB8 21188300 */  addu       $v1, $a0, $v1
    /* 4A4BC 80059CBC 1800A2AC */  sw         $v0, 0x18($a1)
    /* 4A4C0 80059CC0 2400A3AC */  sw         $v1, 0x24($a1)
  .Lfunc_80059BE0_80059CC4:
    /* 4A4C4 80059CC4 A000028E */  lw         $v0, 0xA0($s0)
    /* 4A4C8 80059CC8 00000000 */  nop
    /* 4A4CC 80059CCC 02004014 */  bnez       $v0, .Lfunc_80059BE0_80059CD8
    /* 4A4D0 80059CD0 00000000 */   nop
    /* 4A4D4 80059CD4 B40000AE */  sw         $zero, 0xB4($s0)
  .Lfunc_80059BE0_80059CD8:
    /* 4A4D8 80059CD8 08002016 */  bnez       $s1, .Lfunc_80059BE0_80059CFC
    /* 4A4DC 80059CDC 21106002 */   addu      $v0, $s3, $zero
    /* 4A4E0 80059CE0 0000028E */  lw         $v0, 0x0($s0)
    /* 4A4E4 80059CE4 00000000 */  nop
    /* 4A4E8 80059CE8 6C01428C */  lw         $v0, 0x16C($v0)
    /* 4A4EC 80059CEC 00000000 */  nop
    /* 4A4F0 80059CF0 09F84000 */  jalr       $v0
    /* 4A4F4 80059CF4 21200002 */   addu      $a0, $s0, $zero
    /* 4A4F8 80059CF8 21106002 */  addu       $v0, $s3, $zero
  .Lfunc_80059BE0_80059CFC:
    /* 4A4FC 80059CFC 2000BF8F */  lw         $ra, 0x20($sp)
    /* 4A500 80059D00 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 4A504 80059D04 1800B28F */  lw         $s2, 0x18($sp)
    /* 4A508 80059D08 1400B18F */  lw         $s1, 0x14($sp)
    /* 4A50C 80059D0C 1000B08F */  lw         $s0, 0x10($sp)
    /* 4A510 80059D10 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 4A514 80059D14 0800E003 */  jr         $ra
    /* 4A518 80059D18 00000000 */   nop
endlabel DreamSys__UpdateDreamEffects
