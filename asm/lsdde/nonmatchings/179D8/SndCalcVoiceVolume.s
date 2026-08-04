.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndCalcVoiceVolume, 0x4F0

glabel SndCalcVoiceVolume
    /* 1D9B4 8002D1B4 0980023C */  lui        $v0, %hi(D_8008E970)
    /* 1D9B8 8002D1B8 70E9428C */  lw         $v0, %lo(D_8008E970)($v0)
    /* 1D9BC 8002D1BC 00000000 */  nop
    /* 1D9C0 8002D1C0 18004390 */  lbu        $v1, 0x18($v0)
    /* 1D9C4 8002D1C4 0980043C */  lui        $a0, %hi(D_8008EA10)
    /* 1D9C8 8002D1C8 10EA8490 */  lbu        $a0, %lo(D_8008EA10)($a0)
    /* 1D9CC 8002D1CC 80130300 */  sll        $v0, $v1, 14
    /* 1D9D0 8002D1D0 23104300 */  subu       $v0, $v0, $v1
    /* 1D9D4 8002D1D4 18008200 */  mult       $a0, $v0
    /* 1D9D8 8002D1D8 12180000 */  mflo       $v1
    /* 1D9DC 8002D1DC 0682023C */  lui        $v0, (0x82061029 >> 16)
    /* 1D9E0 8002D1E0 29104234 */  ori        $v0, $v0, (0x82061029 & 0xFFFF)
    /* 1D9E4 8002D1E4 18006200 */  mult       $v1, $v0
    /* 1D9E8 8002D1E8 0980043C */  lui        $a0, %hi(D_8008EA16)
    /* 1D9EC 8002D1EC 16EA8490 */  lbu        $a0, %lo(D_8008EA16)($a0)
    /* 1D9F0 8002D1F0 10100000 */  mfhi       $v0
    /* 1D9F4 8002D1F4 21104300 */  addu       $v0, $v0, $v1
    /* 1D9F8 8002D1F8 43130200 */  sra        $v0, $v0, 13
    /* 1D9FC 8002D1FC C31F0300 */  sra        $v1, $v1, 31
    /* 1DA00 8002D200 23304300 */  subu       $a2, $v0, $v1
    /* 1DA04 8002D204 1800C400 */  mult       $a2, $a0
    /* 1DA08 8002D208 12180000 */  mflo       $v1
    /* 1DA0C 8002D20C 0980023C */  lui        $v0, %hi(D_8008EA19)
    /* 1DA10 8002D210 19EA4290 */  lbu        $v0, %lo(D_8008EA19)($v0)
    /* 1DA14 8002D214 00000000 */  nop
    /* 1DA18 8002D218 18006200 */  mult       $v1, $v0
    /* 1DA1C 8002D21C 12180000 */  mflo       $v1
    /* 1DA20 8002D220 0C04023C */  lui        $v0, (0x40C2051 >> 16)
    /* 1DA24 8002D224 51204234 */  ori        $v0, $v0, (0x40C2051 & 0xFFFF)
    /* 1DA28 8002D228 19006200 */  multu      $v1, $v0
    /* 1DA2C 8002D22C F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1DA30 8002D230 0980023C */  lui        $v0, %hi(gCurrentVoice)
    /* 1DA34 8002D234 26EA4284 */  lh         $v0, %lo(gCurrentVoice)($v0)
    /* 1DA38 8002D238 2140A000 */  addu       $t0, $a1, $zero
    /* 1DA3C 8002D23C C0480200 */  sll        $t1, $v0, 3
    /* 1DA40 8002D240 10100000 */  mfhi       $v0
    /* 1DA44 8002D244 23186200 */  subu       $v1, $v1, $v0
    /* 1DA48 8002D248 42180300 */  srl        $v1, $v1, 1
    /* 1DA4C 8002D24C 21104300 */  addu       $v0, $v0, $v1
    /* 1DA50 8002D250 423B0200 */  srl        $a3, $v0, 13
    /* 1DA54 8002D254 0980033C */  lui        $v1, %hi(D_8008EA22)
    /* 1DA58 8002D258 22EA6394 */  lhu        $v1, %lo(D_8008EA22)($v1)
    /* 1DA5C 8002D25C 00000000 */  nop
    /* 1DA60 8002D260 FF006430 */  andi       $a0, $v1, 0xFF
    /* 1DA64 8002D264 80200400 */  sll        $a0, $a0, 2
    /* 1DA68 8002D268 001C0300 */  sll        $v1, $v1, 16
    /* 1DA6C 8002D26C 032C0300 */  sra        $a1, $v1, 16
    /* 1DA70 8002D270 021E0300 */  srl        $v1, $v1, 24
    /* 1DA74 8002D274 40100300 */  sll        $v0, $v1, 1
    /* 1DA78 8002D278 21104300 */  addu       $v0, $v0, $v1
    /* 1DA7C 8002D27C 80100200 */  sll        $v0, $v0, 2
    /* 1DA80 8002D280 23104300 */  subu       $v0, $v0, $v1
    /* 1DA84 8002D284 80100200 */  sll        $v0, $v0, 2
    /* 1DA88 8002D288 23104300 */  subu       $v0, $v0, $v1
    /* 1DA8C 8002D28C 0980013C */  lui        $at, %hi(gSoundBankTable)
    /* 1DA90 8002D290 E8022124 */  addiu      $at, $at, %lo(gSoundBankTable)
    /* 1DA94 8002D294 21082400 */  addu       $at, $at, $a0
    /* 1DA98 8002D298 0000238C */  lw         $v1, 0x0($at)
    /* 1DA9C 8002D29C 80100200 */  sll        $v0, $v0, 2
    /* 1DAA0 8002D2A0 21184300 */  addu       $v1, $v0, $v1
    /* 1DAA4 8002D2A4 21000234 */  ori        $v0, $zero, 0x21
    /* 1DAA8 8002D2A8 1700A210 */  beq        $a1, $v0, .Lfunc_8002D1B4_8002D308
    /* 1DAAC 8002D2AC 2130E000 */   addu      $a2, $a3, $zero
    /* 1DAB0 8002D2B0 74006294 */  lhu        $v0, 0x74($v1)
    /* 1DAB4 8002D2B4 00000000 */  nop
    /* 1DAB8 8002D2B8 1800E200 */  mult       $a3, $v0
    /* 1DABC 8002D2BC 12200000 */  mflo       $a0
    /* 1DAC0 8002D2C0 0402063C */  lui        $a2, (0x2040811 >> 16)
    /* 1DAC4 8002D2C4 1108C634 */  ori        $a2, $a2, (0x2040811 & 0xFFFF)
    /* 1DAC8 8002D2C8 19008600 */  multu      $a0, $a2
    /* 1DACC 8002D2CC 10280000 */  mfhi       $a1
    /* 1DAD0 8002D2D0 76006294 */  lhu        $v0, 0x76($v1)
    /* 1DAD4 8002D2D4 00000000 */  nop
    /* 1DAD8 8002D2D8 1800E200 */  mult       $a3, $v0
    /* 1DADC 8002D2DC 12180000 */  mflo       $v1
    /* 1DAE0 8002D2E0 19006600 */  multu      $v1, $a2
    /* 1DAE4 8002D2E4 23208500 */  subu       $a0, $a0, $a1
    /* 1DAE8 8002D2E8 42200400 */  srl        $a0, $a0, 1
    /* 1DAEC 8002D2EC 2128A400 */  addu       $a1, $a1, $a0
    /* 1DAF0 8002D2F0 82310500 */  srl        $a2, $a1, 6
    /* 1DAF4 8002D2F4 10100000 */  mfhi       $v0
    /* 1DAF8 8002D2F8 23186200 */  subu       $v1, $v1, $v0
    /* 1DAFC 8002D2FC 42180300 */  srl        $v1, $v1, 1
    /* 1DB00 8002D300 21104300 */  addu       $v0, $v0, $v1
    /* 1DB04 8002D304 82390200 */  srl        $a3, $v0, 6
  .Lfunc_8002D1B4_8002D308:
    /* 1DB08 8002D308 0980033C */  lui        $v1, %hi(D_8008EA1A)
    /* 1DB0C 8002D30C 1AEA6390 */  lbu        $v1, %lo(D_8008EA1A)($v1)
    /* 1DB10 8002D310 00000000 */  nop
    /* 1DB14 8002D314 4000622C */  sltiu      $v0, $v1, 0x40
    /* 1DB18 8002D318 0B004010 */  beqz       $v0, .Lfunc_8002D1B4_8002D348
    /* 1DB1C 8002D31C 1800E300 */   mult      $a3, $v1
    /* 1DB20 8002D320 12100000 */  mflo       $v0
    /* 1DB24 8002D324 1004033C */  lui        $v1, (0x4104105 >> 16)
    /* 1DB28 8002D328 05416334 */  ori        $v1, $v1, (0x4104105 & 0xFFFF)
    /* 1DB2C 8002D32C 19004300 */  multu      $v0, $v1
    /* 1DB30 8002D330 10180000 */  mfhi       $v1
    /* 1DB34 8002D334 23104300 */  subu       $v0, $v0, $v1
    /* 1DB38 8002D338 42100200 */  srl        $v0, $v0, 1
    /* 1DB3C 8002D33C 21186200 */  addu       $v1, $v1, $v0
    /* 1DB40 8002D340 DFB40008 */  j          .Lfunc_8002D1B4_8002D37C
    /* 1DB44 8002D344 42290300 */   srl       $a1, $v1, 5
  .Lfunc_8002D1B4_8002D348:
    /* 1DB48 8002D348 7F000234 */  ori        $v0, $zero, 0x7F
    /* 1DB4C 8002D34C 23104300 */  subu       $v0, $v0, $v1
    /* 1DB50 8002D350 1800C200 */  mult       $a2, $v0
    /* 1DB54 8002D354 12180000 */  mflo       $v1
    /* 1DB58 8002D358 1004023C */  lui        $v0, (0x4104105 >> 16)
    /* 1DB5C 8002D35C 05414234 */  ori        $v0, $v0, (0x4104105 & 0xFFFF)
    /* 1DB60 8002D360 19006200 */  multu      $v1, $v0
    /* 1DB64 8002D364 2128E000 */  addu       $a1, $a3, $zero
    /* 1DB68 8002D368 10100000 */  mfhi       $v0
    /* 1DB6C 8002D36C 23186200 */  subu       $v1, $v1, $v0
    /* 1DB70 8002D370 42180300 */  srl        $v1, $v1, 1
    /* 1DB74 8002D374 21104300 */  addu       $v0, $v0, $v1
    /* 1DB78 8002D378 42310200 */  srl        $a2, $v0, 5
  .Lfunc_8002D1B4_8002D37C:
    /* 1DB7C 8002D37C 0980033C */  lui        $v1, %hi(D_8008EA17)
    /* 1DB80 8002D380 17EA6390 */  lbu        $v1, %lo(D_8008EA17)($v1)
    /* 1DB84 8002D384 00000000 */  nop
    /* 1DB88 8002D388 4000622C */  sltiu      $v0, $v1, 0x40
    /* 1DB8C 8002D38C 0B004010 */  beqz       $v0, .Lfunc_8002D1B4_8002D3BC
    /* 1DB90 8002D390 1800A300 */   mult      $a1, $v1
    /* 1DB94 8002D394 12100000 */  mflo       $v0
    /* 1DB98 8002D398 1004033C */  lui        $v1, (0x4104105 >> 16)
    /* 1DB9C 8002D39C 05416334 */  ori        $v1, $v1, (0x4104105 & 0xFFFF)
    /* 1DBA0 8002D3A0 19004300 */  multu      $v0, $v1
    /* 1DBA4 8002D3A4 10180000 */  mfhi       $v1
    /* 1DBA8 8002D3A8 23104300 */  subu       $v0, $v0, $v1
    /* 1DBAC 8002D3AC 42100200 */  srl        $v0, $v0, 1
    /* 1DBB0 8002D3B0 21186200 */  addu       $v1, $v1, $v0
    /* 1DBB4 8002D3B4 FBB40008 */  j          .Lfunc_8002D1B4_8002D3EC
    /* 1DBB8 8002D3B8 42290300 */   srl       $a1, $v1, 5
  .Lfunc_8002D1B4_8002D3BC:
    /* 1DBBC 8002D3BC 7F000234 */  ori        $v0, $zero, 0x7F
    /* 1DBC0 8002D3C0 23104300 */  subu       $v0, $v0, $v1
    /* 1DBC4 8002D3C4 1800C200 */  mult       $a2, $v0
    /* 1DBC8 8002D3C8 12180000 */  mflo       $v1
    /* 1DBCC 8002D3CC 1004023C */  lui        $v0, (0x4104105 >> 16)
    /* 1DBD0 8002D3D0 05414234 */  ori        $v0, $v0, (0x4104105 & 0xFFFF)
    /* 1DBD4 8002D3D4 19006200 */  multu      $v1, $v0
    /* 1DBD8 8002D3D8 10100000 */  mfhi       $v0
    /* 1DBDC 8002D3DC 23186200 */  subu       $v1, $v1, $v0
    /* 1DBE0 8002D3E0 42180300 */  srl        $v1, $v1, 1
    /* 1DBE4 8002D3E4 21104300 */  addu       $v0, $v0, $v1
    /* 1DBE8 8002D3E8 42310200 */  srl        $a2, $v0, 5
  .Lfunc_8002D1B4_8002D3EC:
    /* 1DBEC 8002D3EC 0980033C */  lui        $v1, %hi(D_8008EA11)
    /* 1DBF0 8002D3F0 11EA6390 */  lbu        $v1, %lo(D_8008EA11)($v1)
    /* 1DBF4 8002D3F4 00000000 */  nop
    /* 1DBF8 8002D3F8 4000622C */  sltiu      $v0, $v1, 0x40
    /* 1DBFC 8002D3FC 0B004010 */  beqz       $v0, .Lfunc_8002D1B4_8002D42C
    /* 1DC00 8002D400 1800A300 */   mult      $a1, $v1
    /* 1DC04 8002D404 12100000 */  mflo       $v0
    /* 1DC08 8002D408 1004033C */  lui        $v1, (0x4104105 >> 16)
    /* 1DC0C 8002D40C 05416334 */  ori        $v1, $v1, (0x4104105 & 0xFFFF)
    /* 1DC10 8002D410 19004300 */  multu      $v0, $v1
    /* 1DC14 8002D414 10180000 */  mfhi       $v1
    /* 1DC18 8002D418 23104300 */  subu       $v0, $v0, $v1
    /* 1DC1C 8002D41C 42100200 */  srl        $v0, $v0, 1
    /* 1DC20 8002D420 21186200 */  addu       $v1, $v1, $v0
    /* 1DC24 8002D424 17B50008 */  j          .Lfunc_8002D1B4_8002D45C
    /* 1DC28 8002D428 42290300 */   srl       $a1, $v1, 5
  .Lfunc_8002D1B4_8002D42C:
    /* 1DC2C 8002D42C 7F000234 */  ori        $v0, $zero, 0x7F
    /* 1DC30 8002D430 23104300 */  subu       $v0, $v0, $v1
    /* 1DC34 8002D434 1800C200 */  mult       $a2, $v0
    /* 1DC38 8002D438 12180000 */  mflo       $v1
    /* 1DC3C 8002D43C 1004023C */  lui        $v0, (0x4104105 >> 16)
    /* 1DC40 8002D440 05414234 */  ori        $v0, $v0, (0x4104105 & 0xFFFF)
    /* 1DC44 8002D444 19006200 */  multu      $v1, $v0
    /* 1DC48 8002D448 10100000 */  mfhi       $v0
    /* 1DC4C 8002D44C 23186200 */  subu       $v1, $v1, $v0
    /* 1DC50 8002D450 42180300 */  srl        $v1, $v1, 1
    /* 1DC54 8002D454 21104300 */  addu       $v0, $v0, $v1
    /* 1DC58 8002D458 42310200 */  srl        $a2, $v0, 5
  .Lfunc_8002D1B4_8002D45C:
    /* 1DC5C 8002D45C 0980033C */  lui        $v1, %hi(D_8008E8C0)
    /* 1DC60 8002D460 C0E86384 */  lh         $v1, %lo(D_8008E8C0)($v1)
    /* 1DC64 8002D464 01000234 */  ori        $v0, $zero, 0x1
    /* 1DC68 8002D468 08006214 */  bne        $v1, $v0, .Lfunc_8002D1B4_8002D48C
    /* 1DC6C 8002D46C 1800C600 */   mult      $a2, $a2
    /* 1DC70 8002D470 2B10C500 */  sltu       $v0, $a2, $a1
    /* 1DC74 8002D474 03004010 */  beqz       $v0, .Lfunc_8002D1B4_8002D484
    /* 1DC78 8002D478 00000000 */   nop
    /* 1DC7C 8002D47C 22B50008 */  j          .Lfunc_8002D1B4_8002D488
    /* 1DC80 8002D480 2130A000 */   addu      $a2, $a1, $zero
  .Lfunc_8002D1B4_8002D484:
    /* 1DC84 8002D484 2128C000 */  addu       $a1, $a2, $zero
  .Lfunc_8002D1B4_8002D488:
    /* 1DC88 8002D488 1800C600 */  mult       $a2, $a2
  .Lfunc_8002D1B4_8002D48C:
    /* 1DC8C 8002D48C 12100000 */  mflo       $v0
    /* 1DC90 8002D490 0400033C */  lui        $v1, (0x40011 >> 16)
    /* 1DC94 8002D494 11006334 */  ori        $v1, $v1, (0x40011 & 0xFFFF)
    /* 1DC98 8002D498 19004300 */  multu      $v0, $v1
    /* 1DC9C 8002D49C 10200000 */  mfhi       $a0
    /* 1DCA0 8002D4A0 1800A500 */  mult       $a1, $a1
    /* 1DCA4 8002D4A4 23104400 */  subu       $v0, $v0, $a0
    /* 1DCA8 8002D4A8 12280000 */  mflo       $a1
    /* 1DCAC 8002D4AC 42100200 */  srl        $v0, $v0, 1
    /* 1DCB0 8002D4B0 21208200 */  addu       $a0, $a0, $v0
    /* 1DCB4 8002D4B4 1900A300 */  multu      $a1, $v1
    /* 1DCB8 8002D4B8 42330400 */  srl        $a2, $a0, 13
    /* 1DCBC 8002D4BC 0980043C */  lui        $a0, %hi(D_8008D7F4)
    /* 1DCC0 8002D4C0 F4D78424 */  addiu      $a0, $a0, %lo(D_8008D7F4)
    /* 1DCC4 8002D4C4 FCFF8224 */  addiu      $v0, $a0, -0x4
    /* 1DCC8 8002D4C8 FEFF8424 */  addiu      $a0, $a0, -0x2
    /* 1DCCC 8002D4CC FFFF2331 */  andi       $v1, $t1, 0xFFFF
    /* 1DCD0 8002D4D0 40180300 */  sll        $v1, $v1, 1
    /* 1DCD4 8002D4D4 21106200 */  addu       $v0, $v1, $v0
    /* 1DCD8 8002D4D8 0980013C */  lui        $at, %hi(D_8008D7F4)
    /* 1DCDC 8002D4DC F4D72124 */  addiu      $at, $at, %lo(D_8008D7F4)
    /* 1DCE0 8002D4E0 21082300 */  addu       $at, $at, $v1
    /* 1DCE4 8002D4E4 000028A4 */  sh         $t0, 0x0($at)
    /* 1DCE8 8002D4E8 21186400 */  addu       $v1, $v1, $a0
    /* 1DCEC 8002D4EC 0980043C */  lui        $a0, %hi(gCurrentVoice)
    /* 1DCF0 8002D4F0 26EA8424 */  addiu      $a0, $a0, %lo(gCurrentVoice)
    /* 1DCF4 8002D4F4 000046A4 */  sh         $a2, 0x0($v0)
    /* 1DCF8 8002D4F8 10100000 */  mfhi       $v0
    /* 1DCFC 8002D4FC 2328A200 */  subu       $a1, $a1, $v0
    /* 1DD00 8002D500 42280500 */  srl        $a1, $a1, 1
    /* 1DD04 8002D504 21104500 */  addu       $v0, $v0, $a1
    /* 1DD08 8002D508 422B0200 */  srl        $a1, $v0, 13
    /* 1DD0C 8002D50C 000065A4 */  sh         $a1, 0x0($v1)
    /* 1DD10 8002D510 00008384 */  lh         $v1, 0x0($a0)
    /* 1DD14 8002D514 00000000 */  nop
    /* 1DD18 8002D518 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 1DD1C 8002D51C 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 1DD20 8002D520 21082300 */  addu       $at, $at, $v1
    /* 1DD24 8002D524 00002290 */  lbu        $v0, 0x0($at)
    /* 1DD28 8002D528 00000000 */  nop
    /* 1DD2C 8002D52C 07004234 */  ori        $v0, $v0, 0x7
    /* 1DD30 8002D530 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 1DD34 8002D534 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 1DD38 8002D538 21082300 */  addu       $at, $at, $v1
    /* 1DD3C 8002D53C 000022A0 */  sb         $v0, 0x0($at)
    /* 1DD40 8002D540 00008384 */  lh         $v1, 0x0($a0)
    /* 1DD44 8002D544 00000000 */  nop
    /* 1DD48 8002D548 40100300 */  sll        $v0, $v1, 1
    /* 1DD4C 8002D54C 21104300 */  addu       $v0, $v0, $v1
    /* 1DD50 8002D550 80100200 */  sll        $v0, $v0, 2
    /* 1DD54 8002D554 21104300 */  addu       $v0, $v0, $v1
    /* 1DD58 8002D558 80100200 */  sll        $v0, $v0, 2
    /* 1DD5C 8002D55C 0980013C */  lui        $at, %hi(D_8008D98C)
    /* 1DD60 8002D560 8CD92124 */  addiu      $at, $at, %lo(D_8008D98C)
    /* 1DD64 8002D564 21082200 */  addu       $at, $at, $v0
    /* 1DD68 8002D568 000028A4 */  sh         $t0, 0x0($at)
    /* 1DD6C 8002D56C 00008384 */  lh         $v1, 0x0($a0)
    /* 1DD70 8002D570 00000000 */  nop
    /* 1DD74 8002D574 40100300 */  sll        $v0, $v1, 1
    /* 1DD78 8002D578 21104300 */  addu       $v0, $v0, $v1
    /* 1DD7C 8002D57C 80100200 */  sll        $v0, $v0, 2
    /* 1DD80 8002D580 21104300 */  addu       $v0, $v0, $v1
    /* 1DD84 8002D584 80100200 */  sll        $v0, $v0, 2
    /* 1DD88 8002D588 01000334 */  ori        $v1, $zero, 0x1
    /* 1DD8C 8002D58C 0980013C */  lui        $at, %hi(gVoiceStateTable + 0x3)
    /* 1DD90 8002D590 A3D92124 */  addiu      $at, $at, %lo(gVoiceStateTable + 0x3)
    /* 1DD94 8002D594 21082200 */  addu       $at, $at, $v0
    /* 1DD98 8002D598 000023A0 */  sb         $v1, 0x0($at)
    /* 1DD9C 8002D59C 00008384 */  lh         $v1, 0x0($a0)
    /* 1DDA0 8002D5A0 00000000 */  nop
    /* 1DDA4 8002D5A4 10006228 */  slti       $v0, $v1, 0x10
    /* 1DDA8 8002D5A8 04004010 */  beqz       $v0, .Lfunc_8002D1B4_8002D5BC
    /* 1DDAC 8002D5AC 01000234 */   ori       $v0, $zero, 0x1
    /* 1DDB0 8002D5B0 04306200 */  sllv       $a2, $v0, $v1
    /* 1DDB4 8002D5B4 72B50008 */  j          .Lfunc_8002D1B4_8002D5C8
    /* 1DDB8 8002D5B8 21280000 */   addu      $a1, $zero, $zero
  .Lfunc_8002D1B4_8002D5BC:
    /* 1DDBC 8002D5BC 21300000 */  addu       $a2, $zero, $zero
    /* 1DDC0 8002D5C0 F0FF6324 */  addiu      $v1, $v1, -0x10
    /* 1DDC4 8002D5C4 04286200 */  sllv       $a1, $v0, $v1
  .Lfunc_8002D1B4_8002D5C8:
    /* 1DDC8 8002D5C8 0980023C */  lui        $v0, %hi(D_8008EA20)
    /* 1DDCC 8002D5CC 20EA4290 */  lbu        $v0, %lo(D_8008EA20)($v0)
    /* 1DDD0 8002D5D0 00000000 */  nop
    /* 1DDD4 8002D5D4 04004230 */  andi       $v0, $v0, 0x4
    /* 1DDD8 8002D5D8 0D004010 */  beqz       $v0, .Lfunc_8002D1B4_8002D610
    /* 1DDDC 8002D5DC 27180600 */   nor       $v1, $zero, $a2
    /* 1DDE0 8002D5E0 0980023C */  lui        $v0, %hi(D_8008E230)
    /* 1DDE4 8002D5E4 30E24294 */  lhu        $v0, %lo(D_8008E230)($v0)
    /* 1DDE8 8002D5E8 0980033C */  lui        $v1, %hi(D_8008E234)
    /* 1DDEC 8002D5EC 34E26394 */  lhu        $v1, %lo(D_8008E234)($v1)
    /* 1DDF0 8002D5F0 2510C200 */  or         $v0, $a2, $v0
    /* 1DDF4 8002D5F4 2518A300 */  or         $v1, $a1, $v1
    /* 1DDF8 8002D5F8 0980013C */  lui        $at, %hi(D_8008E230)
    /* 1DDFC 8002D5FC 30E222A4 */  sh         $v0, %lo(D_8008E230)($at)
    /* 1DE00 8002D600 0980013C */  lui        $at, %hi(D_8008E234)
    /* 1DE04 8002D604 34E223A4 */  sh         $v1, %lo(D_8008E234)($at)
    /* 1DE08 8002D608 90B50008 */  j          .Lfunc_8002D1B4_8002D640
    /* 1DE0C 8002D60C 00000000 */   nop
  .Lfunc_8002D1B4_8002D610:
    /* 1DE10 8002D610 0980023C */  lui        $v0, %hi(D_8008E230)
    /* 1DE14 8002D614 30E24294 */  lhu        $v0, %lo(D_8008E230)($v0)
    /* 1DE18 8002D618 00000000 */  nop
    /* 1DE1C 8002D61C 24104300 */  and        $v0, $v0, $v1
    /* 1DE20 8002D620 0980013C */  lui        $at, %hi(D_8008E230)
    /* 1DE24 8002D624 30E222A4 */  sh         $v0, %lo(D_8008E230)($at)
    /* 1DE28 8002D628 0980023C */  lui        $v0, %hi(D_8008E234)
    /* 1DE2C 8002D62C 34E24294 */  lhu        $v0, %lo(D_8008E234)($v0)
    /* 1DE30 8002D630 27180500 */  nor        $v1, $zero, $a1
    /* 1DE34 8002D634 24104300 */  and        $v0, $v0, $v1
    /* 1DE38 8002D638 0980013C */  lui        $at, %hi(D_8008E234)
    /* 1DE3C 8002D63C 34E222A4 */  sh         $v0, %lo(D_8008E234)($at)
  .Lfunc_8002D1B4_8002D640:
    /* 1DE40 8002D640 0980033C */  lui        $v1, %hi(D_8008E228)
    /* 1DE44 8002D644 28E26394 */  lhu        $v1, %lo(D_8008E228)($v1)
    /* 1DE48 8002D648 0980043C */  lui        $a0, %hi(D_8008E22C)
    /* 1DE4C 8002D64C 2CE28494 */  lhu        $a0, %lo(D_8008E22C)($a0)
    /* 1DE50 8002D650 0980023C */  lui        $v0, %hi(D_80090C60)
    /* 1DE54 8002D654 600C4294 */  lhu        $v0, %lo(D_80090C60)($v0)
    /* 1DE58 8002D658 2518C300 */  or         $v1, $a2, $v1
    /* 1DE5C 8002D65C 0980013C */  lui        $at, %hi(D_8008E228)
    /* 1DE60 8002D660 28E223A4 */  sh         $v1, %lo(D_8008E228)($at)
    /* 1DE64 8002D664 27180300 */  nor        $v1, $zero, $v1
    /* 1DE68 8002D668 24104300 */  and        $v0, $v0, $v1
    /* 1DE6C 8002D66C 0980013C */  lui        $at, %hi(D_80090C60)
    /* 1DE70 8002D670 600C22A4 */  sh         $v0, %lo(D_80090C60)($at)
    /* 1DE74 8002D674 0980023C */  lui        $v0, %hi(D_80090C64)
    /* 1DE78 8002D678 640C4294 */  lhu        $v0, %lo(D_80090C64)($v0)
    /* 1DE7C 8002D67C 2520A400 */  or         $a0, $a1, $a0
    /* 1DE80 8002D680 0980013C */  lui        $at, %hi(D_8008E22C)
    /* 1DE84 8002D684 2CE224A4 */  sh         $a0, %lo(D_8008E22C)($at)
    /* 1DE88 8002D688 27200400 */  nor        $a0, $zero, $a0
    /* 1DE8C 8002D68C 24104400 */  and        $v0, $v0, $a0
    /* 1DE90 8002D690 0980013C */  lui        $at, %hi(D_80090C64)
    /* 1DE94 8002D694 640C22A4 */  sh         $v0, %lo(D_80090C64)($at)
    /* 1DE98 8002D698 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 1DE9C 8002D69C 0800E003 */  jr         $ra
    /* 1DEA0 8002D6A0 00000000 */   nop
endlabel SndCalcVoiceVolume
