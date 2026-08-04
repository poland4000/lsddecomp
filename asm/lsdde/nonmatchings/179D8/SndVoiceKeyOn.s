.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndVoiceKeyOn, 0x4DC

glabel SndVoiceKeyOn
    /* 1E0E0 8002D8E0 0980033C */  lui        $v1, %hi(D_8008EA22)
    /* 1E0E4 8002D8E4 22EA6394 */  lhu        $v1, %lo(D_8008EA22)($v1)
    /* 1E0E8 8002D8E8 21508000 */  addu       $t2, $a0, $zero
    /* 1E0EC 8002D8EC FF006430 */  andi       $a0, $v1, 0xFF
    /* 1E0F0 8002D8F0 80200400 */  sll        $a0, $a0, 2
    /* 1E0F4 8002D8F4 021A0300 */  srl        $v1, $v1, 8
    /* 1E0F8 8002D8F8 40100300 */  sll        $v0, $v1, 1
    /* 1E0FC 8002D8FC 21104300 */  addu       $v0, $v0, $v1
    /* 1E100 8002D900 80100200 */  sll        $v0, $v0, 2
    /* 1E104 8002D904 23104300 */  subu       $v0, $v0, $v1
    /* 1E108 8002D908 80100200 */  sll        $v0, $v0, 2
    /* 1E10C 8002D90C 23104300 */  subu       $v0, $v0, $v1
    /* 1E110 8002D910 0980013C */  lui        $at, %hi(gSoundBankTable)
    /* 1E114 8002D914 E8022124 */  addiu      $at, $at, %lo(gSoundBankTable)
    /* 1E118 8002D918 21082400 */  addu       $at, $at, $a0
    /* 1E11C 8002D91C 0000238C */  lw         $v1, 0x0($at)
    /* 1E120 8002D920 80100200 */  sll        $v0, $v0, 2
    /* 1E124 8002D924 21104300 */  addu       $v0, $v0, $v1
    /* 1E128 8002D928 74004394 */  lhu        $v1, 0x74($v0)
    /* 1E12C 8002D92C 0980073C */  lui        $a3, %hi(D_8008EA16)
    /* 1E130 8002D930 16EAE790 */  lbu        $a3, %lo(D_8008EA16)($a3)
    /* 1E134 8002D934 C0210300 */  sll        $a0, $v1, 7
    /* 1E138 8002D938 21208300 */  addu       $a0, $a0, $v1
    /* 1E13C 8002D93C 18008700 */  mult       $a0, $a3
    /* 1E140 8002D940 12180000 */  mflo       $v1
    /* 1E144 8002D944 0402063C */  lui        $a2, (0x2040811 >> 16)
    /* 1E148 8002D948 1108C634 */  ori        $a2, $a2, (0x2040811 & 0xFFFF)
    /* 1E14C 8002D94C 19006600 */  multu      $v1, $a2
    /* 1E150 8002D950 76004494 */  lhu        $a0, 0x76($v0)
    /* 1E154 8002D954 10280000 */  mfhi       $a1
    /* 1E158 8002D958 C0110400 */  sll        $v0, $a0, 7
    /* 1E15C 8002D95C 21404400 */  addu       $t0, $v0, $a0
    /* 1E160 8002D960 18000701 */  mult       $t0, $a3
    /* 1E164 8002D964 12100000 */  mflo       $v0
    /* 1E168 8002D968 19004600 */  multu      $v0, $a2
    /* 1E16C 8002D96C 23186500 */  subu       $v1, $v1, $a1
    /* 1E170 8002D970 42180300 */  srl        $v1, $v1, 1
    /* 1E174 8002D974 2128A300 */  addu       $a1, $a1, $v1
    /* 1E178 8002D978 10180000 */  mfhi       $v1
    /* 1E17C 8002D97C 0980073C */  lui        $a3, %hi(D_8008EA19)
    /* 1E180 8002D980 19EAE790 */  lbu        $a3, %lo(D_8008EA19)($a3)
    /* 1E184 8002D984 82210500 */  srl        $a0, $a1, 6
    /* 1E188 8002D988 18008700 */  mult       $a0, $a3
    /* 1E18C 8002D98C 12200000 */  mflo       $a0
    /* 1E190 8002D990 19008600 */  multu      $a0, $a2
    /* 1E194 8002D994 23104300 */  subu       $v0, $v0, $v1
    /* 1E198 8002D998 42100200 */  srl        $v0, $v0, 1
    /* 1E19C 8002D99C 10280000 */  mfhi       $a1
    /* 1E1A0 8002D9A0 21186200 */  addu       $v1, $v1, $v0
    /* 1E1A4 8002D9A4 82410300 */  srl        $t0, $v1, 6
    /* 1E1A8 8002D9A8 18000701 */  mult       $t0, $a3
    /* 1E1AC 8002D9AC 12180000 */  mflo       $v1
    /* 1E1B0 8002D9B0 19006600 */  multu      $v1, $a2
    /* 1E1B4 8002D9B4 0780023C */  lui        $v0, %hi(D_8006DAD4)
    /* 1E1B8 8002D9B8 D4DA428C */  lw         $v0, %lo(D_8006DAD4)($v0)
    /* 1E1BC 8002D9BC F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 1E1C0 8002D9C0 AA014994 */  lhu        $t1, 0x1AA($v0)
    /* 1E1C4 8002D9C4 23208500 */  subu       $a0, $a0, $a1
    /* 1E1C8 8002D9C8 42200400 */  srl        $a0, $a0, 1
    /* 1E1CC 8002D9CC 2128A400 */  addu       $a1, $a1, $a0
    /* 1E1D0 8002D9D0 0980063C */  lui        $a2, %hi(D_8008EA1A)
    /* 1E1D4 8002D9D4 1AEAC690 */  lbu        $a2, %lo(D_8008EA1A)($a2)
    /* 1E1D8 8002D9D8 10100000 */  mfhi       $v0
    /* 1E1DC 8002D9DC 23186200 */  subu       $v1, $v1, $v0
    /* 1E1E0 8002D9E0 42180300 */  srl        $v1, $v1, 1
    /* 1E1E4 8002D9E4 21104300 */  addu       $v0, $v0, $v1
    /* 1E1E8 8002D9E8 82410200 */  srl        $t0, $v0, 6
    /* 1E1EC 8002D9EC 4000C22C */  sltiu      $v0, $a2, 0x40
    /* 1E1F0 8002D9F0 0D004010 */  beqz       $v0, .Lfunc_8002D8E0_8002DA28
    /* 1E1F4 8002D9F4 82210500 */   srl       $a0, $a1, 6
    /* 1E1F8 8002D9F8 18000601 */  mult       $t0, $a2
    /* 1E1FC 8002D9FC 12100000 */  mflo       $v0
    /* 1E200 8002DA00 1004033C */  lui        $v1, (0x4104105 >> 16)
    /* 1E204 8002DA04 05416334 */  ori        $v1, $v1, (0x4104105 & 0xFFFF)
    /* 1E208 8002DA08 19004300 */  multu      $v0, $v1
    /* 1E20C 8002DA0C 21288000 */  addu       $a1, $a0, $zero
    /* 1E210 8002DA10 10180000 */  mfhi       $v1
    /* 1E214 8002DA14 23104300 */  subu       $v0, $v0, $v1
    /* 1E218 8002DA18 42100200 */  srl        $v0, $v0, 1
    /* 1E21C 8002DA1C 21186200 */  addu       $v1, $v1, $v0
    /* 1E220 8002DA20 97B60008 */  j          .Lfunc_8002D8E0_8002DA5C
    /* 1E224 8002DA24 42390300 */   srl       $a3, $v1, 5
  .Lfunc_8002D8E0_8002DA28:
    /* 1E228 8002DA28 7F000234 */  ori        $v0, $zero, 0x7F
    /* 1E22C 8002DA2C 23104600 */  subu       $v0, $v0, $a2
    /* 1E230 8002DA30 18008200 */  mult       $a0, $v0
    /* 1E234 8002DA34 12180000 */  mflo       $v1
    /* 1E238 8002DA38 1004023C */  lui        $v0, (0x4104105 >> 16)
    /* 1E23C 8002DA3C 05414234 */  ori        $v0, $v0, (0x4104105 & 0xFFFF)
    /* 1E240 8002DA40 19006200 */  multu      $v1, $v0
    /* 1E244 8002DA44 21380001 */  addu       $a3, $t0, $zero
    /* 1E248 8002DA48 10100000 */  mfhi       $v0
    /* 1E24C 8002DA4C 23186200 */  subu       $v1, $v1, $v0
    /* 1E250 8002DA50 42180300 */  srl        $v1, $v1, 1
    /* 1E254 8002DA54 21104300 */  addu       $v0, $v0, $v1
    /* 1E258 8002DA58 42290200 */  srl        $a1, $v0, 5
  .Lfunc_8002D8E0_8002DA5C:
    /* 1E25C 8002DA5C 0980063C */  lui        $a2, %hi(D_8008EA17)
    /* 1E260 8002DA60 17EAC690 */  lbu        $a2, %lo(D_8008EA17)($a2)
    /* 1E264 8002DA64 00000000 */  nop
    /* 1E268 8002DA68 4000C22C */  sltiu      $v0, $a2, 0x40
    /* 1E26C 8002DA6C 0B004010 */  beqz       $v0, .Lfunc_8002D8E0_8002DA9C
    /* 1E270 8002DA70 1800E600 */   mult      $a3, $a2
    /* 1E274 8002DA74 12100000 */  mflo       $v0
    /* 1E278 8002DA78 1004033C */  lui        $v1, (0x4104105 >> 16)
    /* 1E27C 8002DA7C 05416334 */  ori        $v1, $v1, (0x4104105 & 0xFFFF)
    /* 1E280 8002DA80 19004300 */  multu      $v0, $v1
    /* 1E284 8002DA84 10180000 */  mfhi       $v1
    /* 1E288 8002DA88 23104300 */  subu       $v0, $v0, $v1
    /* 1E28C 8002DA8C 42100200 */  srl        $v0, $v0, 1
    /* 1E290 8002DA90 21186200 */  addu       $v1, $v1, $v0
    /* 1E294 8002DA94 B3B60008 */  j          .Lfunc_8002D8E0_8002DACC
    /* 1E298 8002DA98 42390300 */   srl       $a3, $v1, 5
  .Lfunc_8002D8E0_8002DA9C:
    /* 1E29C 8002DA9C 7F000234 */  ori        $v0, $zero, 0x7F
    /* 1E2A0 8002DAA0 23104600 */  subu       $v0, $v0, $a2
    /* 1E2A4 8002DAA4 1800A200 */  mult       $a1, $v0
    /* 1E2A8 8002DAA8 12180000 */  mflo       $v1
    /* 1E2AC 8002DAAC 1004023C */  lui        $v0, (0x4104105 >> 16)
    /* 1E2B0 8002DAB0 05414234 */  ori        $v0, $v0, (0x4104105 & 0xFFFF)
    /* 1E2B4 8002DAB4 19006200 */  multu      $v1, $v0
    /* 1E2B8 8002DAB8 10100000 */  mfhi       $v0
    /* 1E2BC 8002DABC 23186200 */  subu       $v1, $v1, $v0
    /* 1E2C0 8002DAC0 42180300 */  srl        $v1, $v1, 1
    /* 1E2C4 8002DAC4 21104300 */  addu       $v0, $v0, $v1
    /* 1E2C8 8002DAC8 42290200 */  srl        $a1, $v0, 5
  .Lfunc_8002D8E0_8002DACC:
    /* 1E2CC 8002DACC 0980063C */  lui        $a2, %hi(D_8008EA11)
    /* 1E2D0 8002DAD0 11EAC690 */  lbu        $a2, %lo(D_8008EA11)($a2)
    /* 1E2D4 8002DAD4 00000000 */  nop
    /* 1E2D8 8002DAD8 4000C22C */  sltiu      $v0, $a2, 0x40
    /* 1E2DC 8002DADC 0B004010 */  beqz       $v0, .Lfunc_8002D8E0_8002DB0C
    /* 1E2E0 8002DAE0 1800C700 */   mult      $a2, $a3
    /* 1E2E4 8002DAE4 12100000 */  mflo       $v0
    /* 1E2E8 8002DAE8 1004033C */  lui        $v1, (0x4104105 >> 16)
    /* 1E2EC 8002DAEC 05416334 */  ori        $v1, $v1, (0x4104105 & 0xFFFF)
    /* 1E2F0 8002DAF0 19004300 */  multu      $v0, $v1
    /* 1E2F4 8002DAF4 10180000 */  mfhi       $v1
    /* 1E2F8 8002DAF8 23104300 */  subu       $v0, $v0, $v1
    /* 1E2FC 8002DAFC 42100200 */  srl        $v0, $v0, 1
    /* 1E300 8002DB00 21186200 */  addu       $v1, $v1, $v0
    /* 1E304 8002DB04 CFB60008 */  j          .Lfunc_8002D8E0_8002DB3C
    /* 1E308 8002DB08 42390300 */   srl       $a3, $v1, 5
  .Lfunc_8002D8E0_8002DB0C:
    /* 1E30C 8002DB0C 7F000234 */  ori        $v0, $zero, 0x7F
    /* 1E310 8002DB10 23104600 */  subu       $v0, $v0, $a2
    /* 1E314 8002DB14 1800A200 */  mult       $a1, $v0
    /* 1E318 8002DB18 12180000 */  mflo       $v1
    /* 1E31C 8002DB1C 1004023C */  lui        $v0, (0x4104105 >> 16)
    /* 1E320 8002DB20 05414234 */  ori        $v0, $v0, (0x4104105 & 0xFFFF)
    /* 1E324 8002DB24 19006200 */  multu      $v1, $v0
    /* 1E328 8002DB28 10100000 */  mfhi       $v0
    /* 1E32C 8002DB2C 23186200 */  subu       $v1, $v1, $v0
    /* 1E330 8002DB30 42180300 */  srl        $v1, $v1, 1
    /* 1E334 8002DB34 21104300 */  addu       $v0, $v0, $v1
    /* 1E338 8002DB38 42290200 */  srl        $a1, $v0, 5
  .Lfunc_8002D8E0_8002DB3C:
    /* 1E33C 8002DB3C 0980033C */  lui        $v1, %hi(D_8008E8C0)
    /* 1E340 8002DB40 C0E86384 */  lh         $v1, %lo(D_8008E8C0)($v1)
    /* 1E344 8002DB44 01000234 */  ori        $v0, $zero, 0x1
    /* 1E348 8002DB48 06006214 */  bne        $v1, $v0, .Lfunc_8002D8E0_8002DB64
    /* 1E34C 8002DB4C 2B10A700 */   sltu      $v0, $a1, $a3
    /* 1E350 8002DB50 03004010 */  beqz       $v0, .Lfunc_8002D8E0_8002DB60
    /* 1E354 8002DB54 00000000 */   nop
    /* 1E358 8002DB58 D9B60008 */  j          .Lfunc_8002D8E0_8002DB64
    /* 1E35C 8002DB5C 2128E000 */   addu      $a1, $a3, $zero
  .Lfunc_8002D8E0_8002DB60:
    /* 1E360 8002DB60 2138A000 */  addu       $a3, $a1, $zero
  .Lfunc_8002D8E0_8002DB64:
    /* 1E364 8002DB64 0980023C */  lui        $v0, %hi(D_8008EA0E)
    /* 1E368 8002DB68 0EEA4290 */  lbu        $v0, %lo(D_8008EA0E)($v0)
    /* 1E36C 8002DB6C 0980033C */  lui        $v1, %hi(D_8008EA1C)
    /* 1E370 8002DB70 1CEA6390 */  lbu        $v1, %lo(D_8008EA1C)($v1)
    /* 1E374 8002DB74 FFC02431 */  andi       $a0, $t1, 0xC0FF
    /* 1E378 8002DB78 23104300 */  subu       $v0, $v0, $v1
    /* 1E37C 8002DB7C 3F004230 */  andi       $v0, $v0, 0x3F
    /* 1E380 8002DB80 00120200 */  sll        $v0, $v0, 8
    /* 1E384 8002DB84 25488200 */  or         $t1, $a0, $v0
    /* 1E388 8002DB88 0780033C */  lui        $v1, %hi(D_8006DAD4)
    /* 1E38C 8002DB8C D4DA638C */  lw         $v1, %lo(D_8006DAD4)($v1)
    /* 1E390 8002DB90 FF004431 */  andi       $a0, $t2, 0xFF
    /* 1E394 8002DB94 AA0169A4 */  sh         $t1, 0x1AA($v1)
    /* 1E398 8002DB98 00190400 */  sll        $v1, $a0, 4
    /* 1E39C 8002DB9C 0980013C */  lui        $at, %hi(gVoiceAttrTable + 0x2)
    /* 1E3A0 8002DBA0 F2D72124 */  addiu      $at, $at, %lo(gVoiceAttrTable + 0x2)
    /* 1E3A4 8002DBA4 21082300 */  addu       $at, $at, $v1
    /* 1E3A8 8002DBA8 000027A4 */  sh         $a3, 0x0($at)
    /* 1E3AC 8002DBAC 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 1E3B0 8002DBB0 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 1E3B4 8002DBB4 21082400 */  addu       $at, $at, $a0
    /* 1E3B8 8002DBB8 00002290 */  lbu        $v0, 0x0($at)
    /* 1E3BC 8002DBBC 0980013C */  lui        $at, %hi(gVoiceAttrTable)
    /* 1E3C0 8002DBC0 F0D72124 */  addiu      $at, $at, %lo(gVoiceAttrTable)
    /* 1E3C4 8002DBC4 21082300 */  addu       $at, $at, $v1
    /* 1E3C8 8002DBC8 000025A4 */  sh         $a1, 0x0($at)
    /* 1E3CC 8002DBCC 03004234 */  ori        $v0, $v0, 0x3
    /* 1E3D0 8002DBD0 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 1E3D4 8002DBD4 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 1E3D8 8002DBD8 21082400 */  addu       $at, $at, $a0
    /* 1E3DC 8002DBDC 000022A0 */  sb         $v0, 0x0($at)
    /* 1E3E0 8002DBE0 1000822C */  sltiu      $v0, $a0, 0x10
    /* 1E3E4 8002DBE4 04004010 */  beqz       $v0, .Lfunc_8002D8E0_8002DBF8
    /* 1E3E8 8002DBE8 01000234 */   ori       $v0, $zero, 0x1
    /* 1E3EC 8002DBEC 04388200 */  sllv       $a3, $v0, $a0
    /* 1E3F0 8002DBF0 01B70008 */  j          .Lfunc_8002D8E0_8002DC04
    /* 1E3F4 8002DBF4 21300000 */   addu      $a2, $zero, $zero
  .Lfunc_8002D8E0_8002DBF8:
    /* 1E3F8 8002DBF8 21380000 */  addu       $a3, $zero, $zero
    /* 1E3FC 8002DBFC F0FF8324 */  addiu      $v1, $a0, -0x10
    /* 1E400 8002DC00 04306200 */  sllv       $a2, $v0, $v1
  .Lfunc_8002D8E0_8002DC04:
    /* 1E404 8002DC04 FF004331 */  andi       $v1, $t2, 0xFF
    /* 1E408 8002DC08 40100300 */  sll        $v0, $v1, 1
    /* 1E40C 8002DC0C 21104300 */  addu       $v0, $v0, $v1
    /* 1E410 8002DC10 80100200 */  sll        $v0, $v0, 2
    /* 1E414 8002DC14 21104300 */  addu       $v0, $v0, $v1
    /* 1E418 8002DC18 80100200 */  sll        $v0, $v0, 2
    /* 1E41C 8002DC1C 0980043C */  lui        $a0, %hi(gNumVoices)
    /* 1E420 8002DC20 D0E98490 */  lbu        $a0, %lo(gNumVoices)($a0)
    /* 1E424 8002DC24 0A000334 */  ori        $v1, $zero, 0xA
    /* 1E428 8002DC28 0980013C */  lui        $at, %hi(D_8008D98C)
    /* 1E42C 8002DC2C 8CD92124 */  addiu      $at, $at, %lo(D_8008D98C)
    /* 1E430 8002DC30 21082200 */  addu       $at, $at, $v0
    /* 1E434 8002DC34 000023A4 */  sh         $v1, 0x0($at)
    /* 1E438 8002DC38 1A008010 */  beqz       $a0, .Lfunc_8002D8E0_8002DCA4
    /* 1E43C 8002DC3C 21280000 */   addu      $a1, $zero, $zero
    /* 1E440 8002DC40 001C0500 */  sll        $v1, $a1, 16
  .Lfunc_8002D8E0_8002DC44:
    /* 1E444 8002DC44 031C0300 */  sra        $v1, $v1, 16
    /* 1E448 8002DC48 40100300 */  sll        $v0, $v1, 1
    /* 1E44C 8002DC4C 21104300 */  addu       $v0, $v0, $v1
    /* 1E450 8002DC50 80100200 */  sll        $v0, $v0, 2
    /* 1E454 8002DC54 21104300 */  addu       $v0, $v0, $v1
    /* 1E458 8002DC58 80100200 */  sll        $v0, $v0, 2
    /* 1E45C 8002DC5C 0100A324 */  addiu      $v1, $a1, 0x1
    /* 1E460 8002DC60 21286000 */  addu       $a1, $v1, $zero
    /* 1E464 8002DC64 0980013C */  lui        $at, %hi(gVoiceStateTable + 0x3)
    /* 1E468 8002DC68 A3D92124 */  addiu      $at, $at, %lo(gVoiceStateTable + 0x3)
    /* 1E46C 8002DC6C 21082200 */  addu       $at, $at, $v0
    /* 1E470 8002DC70 00002490 */  lbu        $a0, 0x0($at)
    /* 1E474 8002DC74 001C0300 */  sll        $v1, $v1, 16
    /* 1E478 8002DC78 01008430 */  andi       $a0, $a0, 0x1
    /* 1E47C 8002DC7C 0980013C */  lui        $at, %hi(gVoiceStateTable + 0x3)
    /* 1E480 8002DC80 A3D92124 */  addiu      $at, $at, %lo(gVoiceStateTable + 0x3)
    /* 1E484 8002DC84 21082200 */  addu       $at, $at, $v0
    /* 1E488 8002DC88 000024A0 */  sb         $a0, 0x0($at)
    /* 1E48C 8002DC8C 0980023C */  lui        $v0, %hi(gNumVoices)
    /* 1E490 8002DC90 D0E94290 */  lbu        $v0, %lo(gNumVoices)($v0)
    /* 1E494 8002DC94 031C0300 */  sra        $v1, $v1, 16
    /* 1E498 8002DC98 2A186200 */  slt        $v1, $v1, $v0
    /* 1E49C 8002DC9C E9FF6014 */  bnez       $v1, .Lfunc_8002D8E0_8002DC44
    /* 1E4A0 8002DCA0 001C0500 */   sll       $v1, $a1, 16
  .Lfunc_8002D8E0_8002DCA4:
    /* 1E4A4 8002DCA4 FF004331 */  andi       $v1, $t2, 0xFF
    /* 1E4A8 8002DCA8 40100300 */  sll        $v0, $v1, 1
    /* 1E4AC 8002DCAC 21104300 */  addu       $v0, $v0, $v1
    /* 1E4B0 8002DCB0 80100200 */  sll        $v0, $v0, 2
    /* 1E4B4 8002DCB4 21104300 */  addu       $v0, $v0, $v1
    /* 1E4B8 8002DCB8 80100200 */  sll        $v0, $v0, 2
    /* 1E4BC 8002DCBC 02000334 */  ori        $v1, $zero, 0x2
    /* 1E4C0 8002DCC0 0980013C */  lui        $at, %hi(gVoiceStateTable + 0x3)
    /* 1E4C4 8002DCC4 A3D92124 */  addiu      $at, $at, %lo(gVoiceStateTable + 0x3)
    /* 1E4C8 8002DCC8 21082200 */  addu       $at, $at, $v0
    /* 1E4CC 8002DCCC 000023A0 */  sb         $v1, 0x0($at)
    /* 1E4D0 8002DCD0 0980033C */  lui        $v1, %hi(D_8008E228)
    /* 1E4D4 8002DCD4 28E26394 */  lhu        $v1, %lo(D_8008E228)($v1)
    /* 1E4D8 8002DCD8 0980043C */  lui        $a0, %hi(D_8008E22C)
    /* 1E4DC 8002DCDC 2CE28494 */  lhu        $a0, %lo(D_8008E22C)($a0)
    /* 1E4E0 8002DCE0 0980023C */  lui        $v0, %hi(D_80090C60)
    /* 1E4E4 8002DCE4 600C4294 */  lhu        $v0, %lo(D_80090C60)($v0)
    /* 1E4E8 8002DCE8 2518E300 */  or         $v1, $a3, $v1
    /* 1E4EC 8002DCEC 2520C400 */  or         $a0, $a2, $a0
    /* 1E4F0 8002DCF0 0980013C */  lui        $at, %hi(D_8008E228)
    /* 1E4F4 8002DCF4 28E223A4 */  sh         $v1, %lo(D_8008E228)($at)
    /* 1E4F8 8002DCF8 27180300 */  nor        $v1, $zero, $v1
    /* 1E4FC 8002DCFC 24104300 */  and        $v0, $v0, $v1
    /* 1E500 8002DD00 0980013C */  lui        $at, %hi(D_8008E22C)
    /* 1E504 8002DD04 2CE224A4 */  sh         $a0, %lo(D_8008E22C)($at)
    /* 1E508 8002DD08 27200400 */  nor        $a0, $zero, $a0
    /* 1E50C 8002DD0C 0980013C */  lui        $at, %hi(D_80090C60)
    /* 1E510 8002DD10 600C22A4 */  sh         $v0, %lo(D_80090C60)($at)
    /* 1E514 8002DD14 0980023C */  lui        $v0, %hi(D_80090C64)
    /* 1E518 8002DD18 640C4294 */  lhu        $v0, %lo(D_80090C64)($v0)
    /* 1E51C 8002DD1C 0980033C */  lui        $v1, %hi(D_8008EA20)
    /* 1E520 8002DD20 20EA6390 */  lbu        $v1, %lo(D_8008EA20)($v1)
    /* 1E524 8002DD24 24104400 */  and        $v0, $v0, $a0
    /* 1E528 8002DD28 04006330 */  andi       $v1, $v1, 0x4
    /* 1E52C 8002DD2C 0980013C */  lui        $at, %hi(D_80090C64)
    /* 1E530 8002DD30 640C22A4 */  sh         $v0, %lo(D_80090C64)($at)
    /* 1E534 8002DD34 0D006010 */  beqz       $v1, .Lfunc_8002D8E0_8002DD6C
    /* 1E538 8002DD38 27180700 */   nor       $v1, $zero, $a3
    /* 1E53C 8002DD3C 0980023C */  lui        $v0, %hi(D_8008E230)
    /* 1E540 8002DD40 30E24294 */  lhu        $v0, %lo(D_8008E230)($v0)
    /* 1E544 8002DD44 0980033C */  lui        $v1, %hi(D_8008E234)
    /* 1E548 8002DD48 34E26394 */  lhu        $v1, %lo(D_8008E234)($v1)
    /* 1E54C 8002DD4C 2510E200 */  or         $v0, $a3, $v0
    /* 1E550 8002DD50 2518C300 */  or         $v1, $a2, $v1
    /* 1E554 8002DD54 0980013C */  lui        $at, %hi(D_8008E230)
    /* 1E558 8002DD58 30E222A4 */  sh         $v0, %lo(D_8008E230)($at)
    /* 1E55C 8002DD5C 0980013C */  lui        $at, %hi(D_8008E234)
    /* 1E560 8002DD60 34E223A4 */  sh         $v1, %lo(D_8008E234)($at)
    /* 1E564 8002DD64 67B70008 */  j          .Lfunc_8002D8E0_8002DD9C
    /* 1E568 8002DD68 00000000 */   nop
  .Lfunc_8002D8E0_8002DD6C:
    /* 1E56C 8002DD6C 0980023C */  lui        $v0, %hi(D_8008E230)
    /* 1E570 8002DD70 30E24294 */  lhu        $v0, %lo(D_8008E230)($v0)
    /* 1E574 8002DD74 00000000 */  nop
    /* 1E578 8002DD78 24104300 */  and        $v0, $v0, $v1
    /* 1E57C 8002DD7C 0980013C */  lui        $at, %hi(D_8008E230)
    /* 1E580 8002DD80 30E222A4 */  sh         $v0, %lo(D_8008E230)($at)
    /* 1E584 8002DD84 0980023C */  lui        $v0, %hi(D_8008E234)
    /* 1E588 8002DD88 34E24294 */  lhu        $v0, %lo(D_8008E234)($v0)
    /* 1E58C 8002DD8C 27180600 */  nor        $v1, $zero, $a2
    /* 1E590 8002DD90 24104300 */  and        $v0, $v0, $v1
    /* 1E594 8002DD94 0980013C */  lui        $at, %hi(D_8008E234)
    /* 1E598 8002DD98 34E222A4 */  sh         $v0, %lo(D_8008E234)($at)
  .Lfunc_8002D8E0_8002DD9C:
    /* 1E59C 8002DD9C 0780023C */  lui        $v0, %hi(D_8006DAD4)
    /* 1E5A0 8002DDA0 D4DA428C */  lw         $v0, %lo(D_8006DAD4)($v0)
    /* 1E5A4 8002DDA4 00000000 */  nop
    /* 1E5A8 8002DDA8 940147A4 */  sh         $a3, 0x194($v0)
    /* 1E5AC 8002DDAC 960146A4 */  sh         $a2, 0x196($v0)
    /* 1E5B0 8002DDB0 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 1E5B4 8002DDB4 0800E003 */  jr         $ra
    /* 1E5B8 8002DDB8 00000000 */   nop
endlabel SndVoiceKeyOn
