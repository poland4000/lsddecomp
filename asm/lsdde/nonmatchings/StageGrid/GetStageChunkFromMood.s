.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching GetStageChunkFromMood, 0xAC

glabel GetStageChunkFromMood
    /* 39D0C 8004950C F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 39D10 80049510 21500000 */  addu       $t2, $zero, $zero
    /* 39D14 80049514 21580000 */  addu       $t3, $zero, $zero
    /* 39D18 80049518 08800D3C */  lui        $t5, %hi(STAGE_CHUNK_MOODS)
    /* 39D1C 8004951C 9065AD25 */  addiu      $t5, $t5, %lo(STAGE_CHUNK_MOODS)
  .LGetStageChunkFromMood_80049520:
    /* 39D20 80049520 0000A88D */  lw         $t0, 0x0($t5)
    /* 39D24 80049524 0880013C */  lui        $at, %hi(STAGE_GRID_DIMENSIONS + 0x2)
    /* 39D28 80049528 D6612124 */  addiu      $at, $at, %lo(STAGE_GRID_DIMENSIONS + 0x2)
    /* 39D2C 8004952C 21082B00 */  addu       $at, $at, $t3
    /* 39D30 80049530 00002C84 */  lh         $t4, 0x0($at)
    /* 39D34 80049534 0880013C */  lui        $at, %hi(STAGE_GRID_DIMENSIONS)
    /* 39D38 80049538 D4612124 */  addiu      $at, $at, %lo(STAGE_GRID_DIMENSIONS)
    /* 39D3C 8004953C 21082B00 */  addu       $at, $at, $t3
    /* 39D40 80049540 00002984 */  lh         $t1, 0x0($at)
    /* 39D44 80049544 13008019 */  blez       $t4, .LGetStageChunkFromMood_80049594
    /* 39D48 80049548 21380000 */   addu      $a3, $zero, $zero
  .LGetStageChunkFromMood_8004954C:
    /* 39D4C 8004954C 0D002019 */  blez       $t1, .LGetStageChunkFromMood_80049584
    /* 39D50 80049550 21300000 */   addu      $a2, $zero, $zero
  .LGetStageChunkFromMood_80049554:
    /* 39D54 80049554 0000A384 */  lh         $v1, 0x0($a1)
    /* 39D58 80049558 00000285 */  lh         $v0, 0x0($t0)
    /* 39D5C 8004955C 00000000 */  nop
    /* 39D60 80049560 04006214 */  bne        $v1, $v0, .LGetStageChunkFromMood_80049574
    /* 39D64 80049564 21104001 */   addu      $v0, $t2, $zero
    /* 39D68 80049568 000086A0 */  sb         $a2, 0x0($a0)
    /* 39D6C 8004956C 6B250108 */  j          .LGetStageChunkFromMood_800495AC
    /* 39D70 80049570 010087A0 */   sb        $a3, 0x1($a0)
  .LGetStageChunkFromMood_80049574:
    /* 39D74 80049574 0100C624 */  addiu      $a2, $a2, 0x1
    /* 39D78 80049578 2A10C900 */  slt        $v0, $a2, $t1
    /* 39D7C 8004957C F5FF4014 */  bnez       $v0, .LGetStageChunkFromMood_80049554
    /* 39D80 80049580 02000825 */   addiu     $t0, $t0, 0x2
  .LGetStageChunkFromMood_80049584:
    /* 39D84 80049584 0100E724 */  addiu      $a3, $a3, 0x1
    /* 39D88 80049588 2A10EC00 */  slt        $v0, $a3, $t4
    /* 39D8C 8004958C EFFF4014 */  bnez       $v0, .LGetStageChunkFromMood_8004954C
    /* 39D90 80049590 00000000 */   nop
  .LGetStageChunkFromMood_80049594:
    /* 39D94 80049594 08006B25 */  addiu      $t3, $t3, 0x8
    /* 39D98 80049598 01004A25 */  addiu      $t2, $t2, 0x1
    /* 39D9C 8004959C 0E00422D */  sltiu      $v0, $t2, 0xE
    /* 39DA0 800495A0 DFFF4014 */  bnez       $v0, .LGetStageChunkFromMood_80049520
    /* 39DA4 800495A4 0400AD25 */   addiu     $t5, $t5, 0x4
    /* 39DA8 800495A8 FFFF0224 */  addiu      $v0, $zero, -0x1
  .LGetStageChunkFromMood_800495AC:
    /* 39DAC 800495AC 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 39DB0 800495B0 0800E003 */  jr         $ra
    /* 39DB4 800495B4 00000000 */   nop
endlabel GetStageChunkFromMood
