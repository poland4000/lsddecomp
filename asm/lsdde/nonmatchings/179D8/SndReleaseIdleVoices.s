.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndReleaseIdleVoices, 0xC4

glabel SndReleaseIdleVoices
    /* 1FAA4 8002F2A4 0980023C */  lui        $v0, %hi(gNumVoices)
    /* 1FAA8 8002F2A8 D0E94290 */  lbu        $v0, %lo(gNumVoices)($v0)
    /* 1FAAC 8002F2AC 00000000 */  nop
    /* 1FAB0 8002F2B0 2B004010 */  beqz       $v0, .Lfunc_8002F2A4_8002F360
    /* 1FAB4 8002F2B4 21200000 */   addu      $a0, $zero, $zero
    /* 1FAB8 8002F2B8 02000534 */  ori        $a1, $zero, 0x2
    /* 1FABC 8002F2BC 00140400 */  sll        $v0, $a0, 16
  .Lfunc_8002F2A4_8002F2C0:
    /* 1FAC0 8002F2C0 03140200 */  sra        $v0, $v0, 16
    /* 1FAC4 8002F2C4 40180200 */  sll        $v1, $v0, 1
    /* 1FAC8 8002F2C8 21186200 */  addu       $v1, $v1, $v0
    /* 1FACC 8002F2CC 80180300 */  sll        $v1, $v1, 2
    /* 1FAD0 8002F2D0 21186200 */  addu       $v1, $v1, $v0
    /* 1FAD4 8002F2D4 80180300 */  sll        $v1, $v1, 2
    /* 1FAD8 8002F2D8 0980013C */  lui        $at, %hi(gVoiceStateTable + 0x3)
    /* 1FADC 8002F2DC A3D92124 */  addiu      $at, $at, %lo(gVoiceStateTable + 0x3)
    /* 1FAE0 8002F2E0 21082300 */  addu       $at, $at, $v1
    /* 1FAE4 8002F2E4 00002290 */  lbu        $v0, 0x0($at)
    /* 1FAE8 8002F2E8 00000000 */  nop
    /* 1FAEC 8002F2EC 14004514 */  bne        $v0, $a1, .Lfunc_8002F2A4_8002F340
    /* 1FAF0 8002F2F0 01008224 */   addiu     $v0, $a0, 0x1
    /* 1FAF4 8002F2F4 FF008230 */  andi       $v0, $a0, 0xFF
    /* 1FAF8 8002F2F8 40180200 */  sll        $v1, $v0, 1
    /* 1FAFC 8002F2FC 21186200 */  addu       $v1, $v1, $v0
    /* 1FB00 8002F300 80180300 */  sll        $v1, $v1, 2
    /* 1FB04 8002F304 21186200 */  addu       $v1, $v1, $v0
    /* 1FB08 8002F308 80180300 */  sll        $v1, $v1, 2
    /* 1FB0C 8002F30C 0980013C */  lui        $at, %hi(gVoiceStateTable + 0x3)
    /* 1FB10 8002F310 A3D92124 */  addiu      $at, $at, %lo(gVoiceStateTable + 0x3)
    /* 1FB14 8002F314 21082300 */  addu       $at, $at, $v1
    /* 1FB18 8002F318 000020A0 */  sb         $zero, 0x0($at)
    /* 1FB1C 8002F31C 0780023C */  lui        $v0, %hi(D_8006DAD4)
    /* 1FB20 8002F320 D4DA428C */  lw         $v0, %lo(D_8006DAD4)($v0)
    /* 1FB24 8002F324 0980013C */  lui        $at, %hi(D_8008D98C)
    /* 1FB28 8002F328 8CD92124 */  addiu      $at, $at, %lo(D_8008D98C)
    /* 1FB2C 8002F32C 21082300 */  addu       $at, $at, $v1
    /* 1FB30 8002F330 000020A4 */  sh         $zero, 0x0($at)
    /* 1FB34 8002F334 940140A4 */  sh         $zero, 0x194($v0)
    /* 1FB38 8002F338 960140A4 */  sh         $zero, 0x196($v0)
    /* 1FB3C 8002F33C 01008224 */  addiu      $v0, $a0, 0x1
  .Lfunc_8002F2A4_8002F340:
    /* 1FB40 8002F340 21204000 */  addu       $a0, $v0, $zero
    /* 1FB44 8002F344 00140200 */  sll        $v0, $v0, 16
    /* 1FB48 8002F348 0980033C */  lui        $v1, %hi(gNumVoices)
    /* 1FB4C 8002F34C D0E96390 */  lbu        $v1, %lo(gNumVoices)($v1)
    /* 1FB50 8002F350 03140200 */  sra        $v0, $v0, 16
    /* 1FB54 8002F354 2A104300 */  slt        $v0, $v0, $v1
    /* 1FB58 8002F358 D9FF4014 */  bnez       $v0, .Lfunc_8002F2A4_8002F2C0
    /* 1FB5C 8002F35C 00140400 */   sll       $v0, $a0, 16
  .Lfunc_8002F2A4_8002F360:
    /* 1FB60 8002F360 0800E003 */  jr         $ra
    /* 1FB64 8002F364 00000000 */   nop
endlabel SndReleaseIdleVoices
