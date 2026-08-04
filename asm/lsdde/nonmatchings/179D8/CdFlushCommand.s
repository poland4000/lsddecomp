.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdFlushCommand, 0x110

glabel CdFlushCommand
    /* 1AC00 8002A400 0780023C */  lui        $v0, %hi(D_8006D904)
    /* 1AC04 8002A404 04D9428C */  lw         $v0, %lo(D_8006D904)($v0)
    /* 1AC08 8002A408 0780033C */  lui        $v1, %hi(D_8006D614)
    /* 1AC0C 8002A40C 14D6638C */  lw         $v1, %lo(D_8006D614)($v1)
    /* 1AC10 8002A410 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1AC14 8002A414 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1AC18 8002A418 21800000 */  addu       $s0, $zero, $zero
    /* 1AC1C 8002A41C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1AC20 8002A420 2A104300 */  slt        $v0, $v0, $v1
    /* 1AC24 8002A424 34004010 */  beqz       $v0, .Lfunc_8002A400_8002A4F8
    /* 1AC28 8002A428 1400B1AF */   sw        $s1, 0x14($sp)
    /* 1AC2C 8002A42C 0780113C */  lui        $s1, %hi(D_8006D5FC)
    /* 1AC30 8002A430 FCD5318E */  lw         $s1, %lo(D_8006D5FC)($s1)
    /* 1AC34 8002A434 0780023C */  lui        $v0, %hi(gCdStatus)
    /* 1AC38 8002A438 0CD6428C */  lw         $v0, %lo(gCdStatus)($v0)
    /* 1AC3C 8002A43C 0780013C */  lui        $at, %hi(D_8006D5FC)
    /* 1AC40 8002A440 FCD520AC */  sw         $zero, %lo(D_8006D5FC)($at)
    /* 1AC44 8002A444 10004230 */  andi       $v0, $v0, 0x10
    /* 1AC48 8002A448 14004010 */  beqz       $v0, .Lfunc_8002A400_8002A49C
    /* 1AC4C 8002A44C 16000434 */   ori       $a0, $zero, 0x16
    /* 1AC50 8002A450 FF000232 */  andi       $v0, $s0, 0xFF
  .Lfunc_8002A400_8002A454:
    /* 1AC54 8002A454 05004014 */  bnez       $v0, .Lfunc_8002A400_8002A46C
    /* 1AC58 8002A458 01001026 */   addiu     $s0, $s0, 0x1
    /* 1AC5C 8002A45C 0180043C */  lui        $a0, %hi(D_80010A40)
    /* 1AC60 8002A460 400A8424 */  addiu      $a0, $a0, %lo(D_80010A40)
    /* 1AC64 8002A464 B996000C */  jal        DebugPuts
    /* 1AC68 8002A468 00000000 */   nop
  .Lfunc_8002A400_8002A46C:
    /* 1AC6C 8002A46C 01000434 */  ori        $a0, $zero, 0x1
    /* 1AC70 8002A470 21280000 */  addu       $a1, $zero, $zero
    /* 1AC74 8002A474 21300000 */  addu       $a2, $zero, $zero
    /* 1AC78 8002A478 C4A7000C */  jal        CdCommand
    /* 1AC7C 8002A47C 21380000 */   addu      $a3, $zero, $zero
    /* 1AC80 8002A480 0780023C */  lui        $v0, %hi(gCdStatus)
    /* 1AC84 8002A484 0CD6428C */  lw         $v0, %lo(gCdStatus)($v0)
    /* 1AC88 8002A488 00000000 */  nop
    /* 1AC8C 8002A48C 10004230 */  andi       $v0, $v0, 0x10
    /* 1AC90 8002A490 F0FF4014 */  bnez       $v0, .Lfunc_8002A400_8002A454
    /* 1AC94 8002A494 FF000232 */   andi      $v0, $s0, 0xFF
    /* 1AC98 8002A498 16000434 */  ori        $a0, $zero, 0x16
  .Lfunc_8002A400_8002A49C:
    /* 1AC9C 8002A49C 0780053C */  lui        $a1, %hi(D_8006D908)
    /* 1ACA0 8002A4A0 08D9A524 */  addiu      $a1, $a1, %lo(D_8006D908)
    /* 1ACA4 8002A4A4 21300000 */  addu       $a2, $zero, $zero
    /* 1ACA8 8002A4A8 C4A7000C */  jal        CdCommand
    /* 1ACAC 8002A4AC 21380000 */   addu      $a3, $zero, $zero
    /* 1ACB0 8002A4B0 0B004010 */  beqz       $v0, .Lfunc_8002A400_8002A4E0
    /* 1ACB4 8002A4B4 01000434 */   ori       $a0, $zero, 0x1
    /* 1ACB8 8002A4B8 21280000 */  addu       $a1, $zero, $zero
    /* 1ACBC 8002A4BC 21300000 */  addu       $a2, $zero, $zero
    /* 1ACC0 8002A4C0 C4A7000C */  jal        CdCommand
    /* 1ACC4 8002A4C4 21380000 */   addu      $a3, $zero, $zero
    /* 1ACC8 8002A4C8 0180043C */  lui        $a0, %hi(D_80010A50)
    /* 1ACCC 8002A4CC 500A8424 */  addiu      $a0, $a0, %lo(D_80010A50)
    /* 1ACD0 8002A4D0 B996000C */  jal        DebugPuts
    /* 1ACD4 8002A4D4 00000000 */   nop
    /* 1ACD8 8002A4D8 27A90008 */  j          .Lfunc_8002A400_8002A49C
    /* 1ACDC 8002A4DC 16000434 */   ori       $a0, $zero, 0x16
  .Lfunc_8002A400_8002A4E0:
    /* 1ACE0 8002A4E0 0780023C */  lui        $v0, %hi(D_8006D614)
    /* 1ACE4 8002A4E4 14D6428C */  lw         $v0, %lo(D_8006D614)($v0)
    /* 1ACE8 8002A4E8 0780013C */  lui        $at, %hi(D_8006D5FC)
    /* 1ACEC 8002A4EC FCD531AC */  sw         $s1, %lo(D_8006D5FC)($at)
    /* 1ACF0 8002A4F0 0780013C */  lui        $at, %hi(D_8006D904)
    /* 1ACF4 8002A4F4 04D922AC */  sw         $v0, %lo(D_8006D904)($at)
  .Lfunc_8002A400_8002A4F8:
    /* 1ACF8 8002A4F8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1ACFC 8002A4FC 1400B18F */  lw         $s1, 0x14($sp)
    /* 1AD00 8002A500 1000B08F */  lw         $s0, 0x10($sp)
    /* 1AD04 8002A504 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1AD08 8002A508 0800E003 */  jr         $ra
    /* 1AD0C 8002A50C 00000000 */   nop
endlabel CdFlushCommand
