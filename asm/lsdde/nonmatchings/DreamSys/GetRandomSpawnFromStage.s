.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching GetRandomSpawnFromStage, 0x184

glabel GetRandomSpawnFromStage
    /* 4C330 8005BB30 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4C334 8005BB34 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4C338 8005BB38 21908000 */  addu       $s2, $a0, $zero
    /* 4C33C 8005BB3C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4C340 8005BB40 2180A000 */  addu       $s0, $a1, $zero
    /* 4C344 8005BB44 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4C348 8005BB48 06001134 */  ori        $s1, $zero, 0x6
    /* 4C34C 8005BB4C 17000006 */  bltz       $s0, .LGetRandomSpawnFromStage_8005BBAC
    /* 4C350 8005BB50 1C00BFAF */   sw        $ra, 0x1C($sp)
    /* 4C354 8005BB54 2025010C */  jal        rand
    /* 4C358 8005BB58 00000000 */   nop
    /* 4C35C 8005BB5C 1A005100 */  div        $zero, $v0, $s1
    /* 4C360 8005BB60 02002016 */  bnez       $s1, .LGetRandomSpawnFromStage_8005BB6C
    /* 4C364 8005BB64 00000000 */   nop
    /* 4C368 8005BB68 0D000700 */  break      7
  .LGetRandomSpawnFromStage_8005BB6C:
    /* 4C36C 8005BB6C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 4C370 8005BB70 04002116 */  bne        $s1, $at, .LGetRandomSpawnFromStage_8005BB84
    /* 4C374 8005BB74 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 4C378 8005BB78 02004114 */  bne        $v0, $at, .LGetRandomSpawnFromStage_8005BB84
    /* 4C37C 8005BB7C 00000000 */   nop
    /* 4C380 8005BB80 0D000600 */  break      6
  .LGetRandomSpawnFromStage_8005BB84:
    /* 4C384 8005BB84 10880000 */  mfhi       $s1
    /* 4C388 8005BB88 00000000 */  nop
    /* 4C38C 8005BB8C 08003016 */  bne        $s1, $s0, .LGetRandomSpawnFromStage_8005BBB0
    /* 4C390 8005BB90 00000000 */   nop
    /* 4C394 8005BB94 01003126 */  addiu      $s1, $s1, 0x1
    /* 4C398 8005BB98 0600222A */  slti       $v0, $s1, 0x6
    /* 4C39C 8005BB9C 04004014 */  bnez       $v0, .LGetRandomSpawnFromStage_8005BBB0
    /* 4C3A0 8005BBA0 00000000 */   nop
    /* 4C3A4 8005BBA4 EC6E0108 */  j          .LGetRandomSpawnFromStage_8005BBB0
    /* 4C3A8 8005BBA8 21880000 */   addu      $s1, $zero, $zero
  .LGetRandomSpawnFromStage_8005BBAC:
    /* 4C3AC 8005BBAC 23881000 */  negu       $s1, $s0
  .LGetRandomSpawnFromStage_8005BBB0:
    /* 4C3B0 8005BBB0 2025010C */  jal        rand
    /* 4C3B4 8005BBB4 00000000 */   nop
    /* 4C3B8 8005BBB8 0980013C */  lui        $at, %hi(LEN_STAGE_SPAWNPOINTS)
    /* 4C3BC 8005BBBC F0852124 */  addiu      $at, $at, %lo(LEN_STAGE_SPAWNPOINTS)
    /* 4C3C0 8005BBC0 21083100 */  addu       $at, $at, $s1
    /* 4C3C4 8005BBC4 00002390 */  lbu        $v1, 0x0($at)
    /* 4C3C8 8005BBC8 00000000 */  nop
    /* 4C3CC 8005BBCC 1A004300 */  div        $zero, $v0, $v1
    /* 4C3D0 8005BBD0 02006014 */  bnez       $v1, .LGetRandomSpawnFromStage_8005BBDC
    /* 4C3D4 8005BBD4 00000000 */   nop
    /* 4C3D8 8005BBD8 0D000700 */  break      7
  .LGetRandomSpawnFromStage_8005BBDC:
    /* 4C3DC 8005BBDC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 4C3E0 8005BBE0 04006114 */  bne        $v1, $at, .LGetRandomSpawnFromStage_8005BBF4
    /* 4C3E4 8005BBE4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 4C3E8 8005BBE8 02004114 */  bne        $v0, $at, .LGetRandomSpawnFromStage_8005BBF4
    /* 4C3EC 8005BBEC 00000000 */   nop
    /* 4C3F0 8005BBF0 0D000600 */  break      6
  .LGetRandomSpawnFromStage_8005BBF4:
    /* 4C3F4 8005BBF4 10180000 */  mfhi       $v1
    /* 4C3F8 8005BBF8 80201100 */  sll        $a0, $s1, 2
    /* 4C3FC 8005BBFC 40100300 */  sll        $v0, $v1, 1
    /* 4C400 8005BC00 21104300 */  addu       $v0, $v0, $v1
    /* 4C404 8005BC04 0980013C */  lui        $at, %hi(STAGE_SPAWNPOINTS)
    /* 4C408 8005BC08 B8852124 */  addiu      $at, $at, %lo(STAGE_SPAWNPOINTS)
    /* 4C40C 8005BC0C 21082400 */  addu       $at, $at, $a0
    /* 4C410 8005BC10 0000238C */  lw         $v1, 0x0($at)
    /* 4C414 8005BC14 40100200 */  sll        $v0, $v0, 1
    /* 4C418 8005BC18 21104300 */  addu       $v0, $v0, $v1
    /* 4C41C 8005BC1C 03004388 */  lwl        $v1, 0x3($v0)
    /* 4C420 8005BC20 00004398 */  lwr        $v1, 0x0($v0)
    /* 4C424 8005BC24 00000000 */  nop
    /* 4C428 8005BC28 030043AA */  swl        $v1, 0x3($s2)
    /* 4C42C 8005BC2C 000043BA */  swr        $v1, 0x0($s2)
    /* 4C430 8005BC30 04004390 */  lbu        $v1, 0x4($v0)
    /* 4C434 8005BC34 00000000 */  nop
    /* 4C438 8005BC38 40100300 */  sll        $v0, $v1, 1
    /* 4C43C 8005BC3C 21104300 */  addu       $v0, $v0, $v1
    /* 4C440 8005BC40 40100200 */  sll        $v0, $v0, 1
    /* 4C444 8005BC44 0880013C */  lui        $at, %hi(SPAWN_POS_ADJUST + 0x3)
    /* 4C448 8005BC48 337F2124 */  addiu      $at, $at, %lo(SPAWN_POS_ADJUST + 0x3)
    /* 4C44C 8005BC4C 21082200 */  addu       $at, $at, $v0
    /* 4C450 8005BC50 00002388 */  lwl        $v1, 0x0($at)
    /* 4C454 8005BC54 0880013C */  lui        $at, %hi(SPAWN_POS_ADJUST)
    /* 4C458 8005BC58 307F2124 */  addiu      $at, $at, %lo(SPAWN_POS_ADJUST)
    /* 4C45C 8005BC5C 21082200 */  addu       $at, $at, $v0
    /* 4C460 8005BC60 00002398 */  lwr        $v1, 0x0($at)
    /* 4C464 8005BC64 0880013C */  lui        $at, %hi(SPAWN_POS_ADJUST + 0x4)
    /* 4C468 8005BC68 347F2124 */  addiu      $at, $at, %lo(SPAWN_POS_ADJUST + 0x4)
    /* 4C46C 8005BC6C 21082200 */  addu       $at, $at, $v0
    /* 4C470 8005BC70 00002484 */  lh         $a0, 0x0($at)
    /* 4C474 8005BC74 070043AA */  swl        $v1, 0x7($s2)
    /* 4C478 8005BC78 040043BA */  swr        $v1, 0x4($s2)
    /* 4C47C 8005BC7C 080044A6 */  sh         $a0, 0x8($s2)
    /* 4C480 8005BC80 B004848F */  lw         $a0, %gp_rel(gpDinamicLinkPenalty)($gp)
    /* 4C484 8005BC84 00000000 */  nop
    /* 4C488 8005BC88 0000838C */  lw         $v1, 0x0($a0)
    /* 4C48C 8005BC8C 21102002 */  addu       $v0, $s1, $zero
    /* 4C490 8005BC90 01006324 */  addiu      $v1, $v1, 0x1
    /* 4C494 8005BC94 000083AC */  sw         $v1, 0x0($a0)
    /* 4C498 8005BC98 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4C49C 8005BC9C 1800B28F */  lw         $s2, 0x18($sp)
    /* 4C4A0 8005BCA0 1400B18F */  lw         $s1, 0x14($sp)
    /* 4C4A4 8005BCA4 1000B08F */  lw         $s0, 0x10($sp)
    /* 4C4A8 8005BCA8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4C4AC 8005BCAC 0800E003 */  jr         $ra
    /* 4C4B0 8005BCB0 00000000 */   nop
endlabel GetRandomSpawnFromStage
