.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching GenerateInitialSpawn, 0x1AC

glabel GenerateInitialSpawn
    /* 4CA8C 8005C28C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 4CA90 8005C290 2400B1AF */  sw         $s1, 0x24($sp)
    /* 4CA94 8005C294 21888000 */  addu       $s1, $a0, $zero
    /* 4CA98 8005C298 2800B2AF */  sw         $s2, 0x28($sp)
    /* 4CA9C 8005C29C 2190A000 */  addu       $s2, $a1, $zero
    /* 4CAA0 8005C2A0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 4CAA4 8005C2A4 2128C000 */  addu       $a1, $a2, $zero
    /* 4CAA8 8005C2A8 2000B0AF */  sw         $s0, 0x20($sp)
    /* 4CAAC 8005C2AC 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 4CAB0 8005C2B0 4325010C */  jal        GetStageChunkFromMood
    /* 4CAB4 8005C2B4 2180E000 */   addu      $s0, $a3, $zero
    /* 4CAB8 8005C2B8 21384000 */  addu       $a3, $v0, $zero
    /* 4CABC 8005C2BC 4B00E004 */  bltz       $a3, .LGenerateInitialSpawn_8005C3EC
    /* 4CAC0 8005C2C0 40100700 */   sll       $v0, $a3, 1
    /* 4CAC4 8005C2C4 0880013C */  lui        $at, %hi(STAGE_TIME_LIMITS)
    /* 4CAC8 8005C2C8 147F2124 */  addiu      $at, $at, %lo(STAGE_TIME_LIMITS)
    /* 4CACC 8005C2CC 21082200 */  addu       $at, $at, $v0
    /* 4CAD0 8005C2D0 00002284 */  lh         $v0, 0x0($at)
    /* 4CAD4 8005C2D4 00000000 */  nop
    /* 4CAD8 8005C2D8 000042AE */  sw         $v0, 0x0($s2)
    /* 4CADC 8005C2DC 80100700 */  sll        $v0, $a3, 2
    /* 4CAE0 8005C2E0 0980013C */  lui        $at, %hi(LEN_STAGE_SPAWNPOINTS)
    /* 4CAE4 8005C2E4 F0852124 */  addiu      $at, $at, %lo(LEN_STAGE_SPAWNPOINTS)
    /* 4CAE8 8005C2E8 21082700 */  addu       $at, $at, $a3
    /* 4CAEC 8005C2EC 00002490 */  lbu        $a0, 0x0($at)
    /* 4CAF0 8005C2F0 0980013C */  lui        $at, %hi(STAGE_SPAWNPOINTS)
    /* 4CAF4 8005C2F4 B8852124 */  addiu      $at, $at, %lo(STAGE_SPAWNPOINTS)
    /* 4CAF8 8005C2F8 21082200 */  addu       $at, $at, $v0
    /* 4CAFC 8005C2FC 0000268C */  lw         $a2, 0x0($at)
    /* 4CB00 8005C300 09008010 */  beqz       $a0, .LGenerateInitialSpawn_8005C328
    /* 4CB04 8005C304 21180000 */   addu      $v1, $zero, $zero
    /* 4CB08 8005C308 1000A587 */  lh         $a1, 0x10($sp)
  .LGenerateInitialSpawn_8005C30C:
    /* 4CB0C 8005C30C 0000C284 */  lh         $v0, 0x0($a2)
    /* 4CB10 8005C310 00000000 */  nop
    /* 4CB14 8005C314 1A00A210 */  beq        $a1, $v0, .LGenerateInitialSpawn_8005C380
    /* 4CB18 8005C318 01006324 */   addiu     $v1, $v1, 0x1
    /* 4CB1C 8005C31C 2A106400 */  slt        $v0, $v1, $a0
    /* 4CB20 8005C320 FAFF4014 */  bnez       $v0, .LGenerateInitialSpawn_8005C30C
    /* 4CB24 8005C324 0600C624 */   addiu     $a2, $a2, 0x6
  .LGenerateInitialSpawn_8005C328:
    /* 4CB28 8005C328 1000A287 */  lh         $v0, 0x10($sp)
    /* 4CB2C 8005C32C 00000000 */  nop
    /* 4CB30 8005C330 1A004400 */  div        $zero, $v0, $a0
    /* 4CB34 8005C334 02008014 */  bnez       $a0, .LGenerateInitialSpawn_8005C340
    /* 4CB38 8005C338 00000000 */   nop
    /* 4CB3C 8005C33C 0D000700 */  break      7
  .LGenerateInitialSpawn_8005C340:
    /* 4CB40 8005C340 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 4CB44 8005C344 04008114 */  bne        $a0, $at, .LGenerateInitialSpawn_8005C358
    /* 4CB48 8005C348 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 4CB4C 8005C34C 02004114 */  bne        $v0, $at, .LGenerateInitialSpawn_8005C358
    /* 4CB50 8005C350 00000000 */   nop
    /* 4CB54 8005C354 0D000600 */  break      6
  .LGenerateInitialSpawn_8005C358:
    /* 4CB58 8005C358 10180000 */  mfhi       $v1
    /* 4CB5C 8005C35C 80200700 */  sll        $a0, $a3, 2
    /* 4CB60 8005C360 40100300 */  sll        $v0, $v1, 1
    /* 4CB64 8005C364 21104300 */  addu       $v0, $v0, $v1
    /* 4CB68 8005C368 0980013C */  lui        $at, %hi(STAGE_SPAWNPOINTS)
    /* 4CB6C 8005C36C B8852124 */  addiu      $at, $at, %lo(STAGE_SPAWNPOINTS)
    /* 4CB70 8005C370 21082400 */  addu       $at, $at, $a0
    /* 4CB74 8005C374 0000238C */  lw         $v1, 0x0($at)
    /* 4CB78 8005C378 40100200 */  sll        $v0, $v0, 1
    /* 4CB7C 8005C37C 21304300 */  addu       $a2, $v0, $v1
  .LGenerateInitialSpawn_8005C380:
    /* 4CB80 8005C380 0300C288 */  lwl        $v0, 0x3($a2)
    /* 4CB84 8005C384 0000C298 */  lwr        $v0, 0x0($a2)
    /* 4CB88 8005C388 00000000 */  nop
    /* 4CB8C 8005C38C 030022AA */  swl        $v0, 0x3($s1)
    /* 4CB90 8005C390 000022BA */  swr        $v0, 0x0($s1)
    /* 4CB94 8005C394 0400C490 */  lbu        $a0, 0x4($a2)
    /* 4CB98 8005C398 2110E000 */  addu       $v0, $a3, $zero
    /* 4CB9C 8005C39C 40180400 */  sll        $v1, $a0, 1
    /* 4CBA0 8005C3A0 21186400 */  addu       $v1, $v1, $a0
    /* 4CBA4 8005C3A4 40180300 */  sll        $v1, $v1, 1
    /* 4CBA8 8005C3A8 0880013C */  lui        $at, %hi(SPAWN_POS_ADJUST + 0x3)
    /* 4CBAC 8005C3AC 337F2124 */  addiu      $at, $at, %lo(SPAWN_POS_ADJUST + 0x3)
    /* 4CBB0 8005C3B0 21082300 */  addu       $at, $at, $v1
    /* 4CBB4 8005C3B4 00002488 */  lwl        $a0, 0x0($at)
    /* 4CBB8 8005C3B8 0880013C */  lui        $at, %hi(SPAWN_POS_ADJUST)
    /* 4CBBC 8005C3BC 307F2124 */  addiu      $at, $at, %lo(SPAWN_POS_ADJUST)
    /* 4CBC0 8005C3C0 21082300 */  addu       $at, $at, $v1
    /* 4CBC4 8005C3C4 00002498 */  lwr        $a0, 0x0($at)
    /* 4CBC8 8005C3C8 0880013C */  lui        $at, %hi(SPAWN_POS_ADJUST + 0x4)
    /* 4CBCC 8005C3CC 347F2124 */  addiu      $at, $at, %lo(SPAWN_POS_ADJUST + 0x4)
    /* 4CBD0 8005C3D0 21082300 */  addu       $at, $at, $v1
    /* 4CBD4 8005C3D4 00002584 */  lh         $a1, 0x0($at)
    /* 4CBD8 8005C3D8 070024AA */  swl        $a0, 0x7($s1)
    /* 4CBDC 8005C3DC 040024BA */  swr        $a0, 0x4($s1)
    /* 4CBE0 8005C3E0 080025A6 */  sh         $a1, 0x8($s1)
    /* 4CBE4 8005C3E4 07710108 */  j          .LGenerateInitialSpawn_8005C41C
    /* 4CBE8 8005C3E8 00000000 */   nop
  .LGenerateInitialSpawn_8005C3EC:
    /* 4CBEC 8005C3EC 21202002 */  addu       $a0, $s1, $zero
    /* 4CBF0 8005C3F0 2128E000 */  addu       $a1, $a3, $zero
    /* 4CBF4 8005C3F4 CC6E010C */  jal        GetRandomSpawnFromStage
    /* 4CBF8 8005C3F8 21300002 */   addu      $a2, $s0, $zero
    /* 4CBFC 8005C3FC 21384000 */  addu       $a3, $v0, $zero
    /* 4CC00 8005C400 40100700 */  sll        $v0, $a3, 1
    /* 4CC04 8005C404 0880013C */  lui        $at, %hi(STAGE_TIME_LIMITS)
    /* 4CC08 8005C408 147F2124 */  addiu      $at, $at, %lo(STAGE_TIME_LIMITS)
    /* 4CC0C 8005C40C 21082200 */  addu       $at, $at, $v0
    /* 4CC10 8005C410 00002384 */  lh         $v1, 0x0($at)
    /* 4CC14 8005C414 2110E000 */  addu       $v0, $a3, $zero
    /* 4CC18 8005C418 000043AE */  sw         $v1, 0x0($s2)
  .LGenerateInitialSpawn_8005C41C:
    /* 4CC1C 8005C41C 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 4CC20 8005C420 2800B28F */  lw         $s2, 0x28($sp)
    /* 4CC24 8005C424 2400B18F */  lw         $s1, 0x24($sp)
    /* 4CC28 8005C428 2000B08F */  lw         $s0, 0x20($sp)
    /* 4CC2C 8005C42C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 4CC30 8005C430 0800E003 */  jr         $ra
    /* 4CC34 8005C434 00000000 */   nop
endlabel GenerateInitialSpawn
