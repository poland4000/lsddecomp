.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching IsDaySpecial, 0xD0

glabel IsDaySpecial
    /* 4CC38 8005C438 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4CC3C 8005C43C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4CC40 8005C440 21908000 */  addu       $s2, $a0, $zero
    /* 4CC44 8005C444 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4CC48 8005C448 21800000 */  addu       $s0, $zero, $zero
    /* 4CC4C 8005C44C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4CC50 8005C450 AA2A113C */  lui        $s1, (0x2AAAAAAB >> 16)
    /* 4CC54 8005C454 ABAA3136 */  ori        $s1, $s1, (0x2AAAAAAB & 0xFFFF)
    /* 4CC58 8005C458 0980033C */  lui        $v1, %hi(SPECIAL_DAYS)
    /* 4CC5C 8005C45C CC8C6324 */  addiu      $v1, $v1, %lo(SPECIAL_DAYS)
    /* 4CC60 8005C460 1C00BFAF */  sw         $ra, 0x1C($sp)
  .LIsDaySpecial_8005C464:
    /* 4CC64 8005C464 00006284 */  lh         $v0, 0x0($v1)
    /* 4CC68 8005C468 00000000 */  nop
    /* 4CC6C 8005C46C 1A00A214 */  bne        $a1, $v0, .LIsDaySpecial_8005C4D8
    /* 4CC70 8005C470 00000000 */   nop
    /* 4CC74 8005C474 2025010C */  jal        rand
    /* 4CC78 8005C478 00000000 */   nop
    /* 4CC7C 8005C47C 21284000 */  addu       $a1, $v0, $zero
    /* 4CC80 8005C480 18005100 */  mult       $v0, $s1
    /* 4CC84 8005C484 10200000 */  mfhi       $a0
    /* 4CC88 8005C488 18001102 */  mult       $s0, $s1
    /* 4CC8C 8005C48C 0980023C */  lui        $v0, %hi(gSpecialDayMood)
    /* 4CC90 8005C490 F4AB4224 */  addiu      $v0, $v0, %lo(gSpecialDayMood)
    /* 4CC94 8005C494 C31F0500 */  sra        $v1, $a1, 31
    /* 4CC98 8005C498 23208300 */  subu       $a0, $a0, $v1
    /* 4CC9C 8005C49C 40180400 */  sll        $v1, $a0, 1
    /* 4CCA0 8005C4A0 21186400 */  addu       $v1, $v1, $a0
    /* 4CCA4 8005C4A4 40180300 */  sll        $v1, $v1, 1
    /* 4CCA8 8005C4A8 2328A300 */  subu       $a1, $a1, $v1
    /* 4CCAC 8005C4AC C31F1000 */  sra        $v1, $s0, 31
    /* 4CCB0 8005C4B0 020045A6 */  sh         $a1, 0x2($s2)
    /* 4CCB4 8005C4B4 10200000 */  mfhi       $a0
    /* 4CCB8 8005C4B8 43200400 */  sra        $a0, $a0, 1
    /* 4CCBC 8005C4BC 23208300 */  subu       $a0, $a0, $v1
    /* 4CCC0 8005C4C0 40180400 */  sll        $v1, $a0, 1
    /* 4CCC4 8005C4C4 21186400 */  addu       $v1, $v1, $a0
    /* 4CCC8 8005C4C8 80180300 */  sll        $v1, $v1, 2
    /* 4CCCC 8005C4CC 23180302 */  subu       $v1, $s0, $v1
    /* 4CCD0 8005C4D0 3B710108 */  j          .LIsDaySpecial_8005C4EC
    /* 4CCD4 8005C4D4 000043A6 */   sh        $v1, 0x0($s2)
  .LIsDaySpecial_8005C4D8:
    /* 4CCD8 8005C4D8 01001026 */  addiu      $s0, $s0, 0x1
    /* 4CCDC 8005C4DC 2A00022E */  sltiu      $v0, $s0, 0x2A
    /* 4CCE0 8005C4E0 E0FF4014 */  bnez       $v0, .LIsDaySpecial_8005C464
    /* 4CCE4 8005C4E4 02006324 */   addiu     $v1, $v1, 0x2
    /* 4CCE8 8005C4E8 21100000 */  addu       $v0, $zero, $zero
  .LIsDaySpecial_8005C4EC:
    /* 4CCEC 8005C4EC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4CCF0 8005C4F0 1800B28F */  lw         $s2, 0x18($sp)
    /* 4CCF4 8005C4F4 1400B18F */  lw         $s1, 0x14($sp)
    /* 4CCF8 8005C4F8 1000B08F */  lw         $s0, 0x10($sp)
    /* 4CCFC 8005C4FC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4CD00 8005C500 0800E003 */  jr         $ra
    /* 4CD04 8005C504 00000000 */   nop
endlabel IsDaySpecial
