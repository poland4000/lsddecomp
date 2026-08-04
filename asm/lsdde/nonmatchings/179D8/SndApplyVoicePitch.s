.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndApplyVoicePitch, 0x390

glabel SndApplyVoicePitch
    /* 1F244 8002EA44 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1F248 8002EA48 001C0400 */  sll        $v1, $a0, 16
    /* 1F24C 8002EA4C 031C0300 */  sra        $v1, $v1, 16
    /* 1F250 8002EA50 C0480300 */  sll        $t1, $v1, 3
    /* 1F254 8002EA54 40100300 */  sll        $v0, $v1, 1
    /* 1F258 8002EA58 21104300 */  addu       $v0, $v0, $v1
    /* 1F25C 8002EA5C 80100200 */  sll        $v0, $v0, 2
    /* 1F260 8002EA60 21104300 */  addu       $v0, $v0, $v1
    /* 1F264 8002EA64 80280200 */  sll        $a1, $v0, 2
    /* 1F268 8002EA68 0980013C */  lui        $at, %hi(D_8008D9B4)
    /* 1F26C 8002EA6C B4D92124 */  addiu      $at, $at, %lo(D_8008D9B4)
    /* 1F270 8002EA70 21082500 */  addu       $at, $at, $a1
    /* 1F274 8002EA74 00002284 */  lh         $v0, 0x0($at)
    /* 1F278 8002EA78 00000000 */  nop
    /* 1F27C 8002EA7C 17004010 */  beqz       $v0, .Lfunc_8002EA44_8002EADC
    /* 1F280 8002EA80 21408000 */   addu      $t0, $a0, $zero
    /* 1F284 8002EA84 0980013C */  lui        $at, %hi(D_8008D9B4 + 0x2)
    /* 1F288 8002EA88 B6D92124 */  addiu      $at, $at, %lo(D_8008D9B4 + 0x2)
    /* 1F28C 8002EA8C 21082500 */  addu       $at, $at, $a1
    /* 1F290 8002EA90 00002294 */  lhu        $v0, 0x0($at)
    /* 1F294 8002EA94 00000000 */  nop
    /* 1F298 8002EA98 FFFF4324 */  addiu      $v1, $v0, -0x1
    /* 1F29C 8002EA9C 00140200 */  sll        $v0, $v0, 16
    /* 1F2A0 8002EAA0 0980013C */  lui        $at, %hi(D_8008D9B4 + 0x2)
    /* 1F2A4 8002EAA4 B6D92124 */  addiu      $at, $at, %lo(D_8008D9B4 + 0x2)
    /* 1F2A8 8002EAA8 21082500 */  addu       $at, $at, $a1
    /* 1F2AC 8002EAAC 000023A4 */  sh         $v1, 0x0($at)
    /* 1F2B0 8002EAB0 C500401C */  bgtz       $v0, .Lfunc_8002EA44_8002EDC8
    /* 1F2B4 8002EAB4 00000000 */   nop
    /* 1F2B8 8002EAB8 0980013C */  lui        $at, %hi(D_8008D9B4)
    /* 1F2BC 8002EABC B4D92124 */  addiu      $at, $at, %lo(D_8008D9B4)
    /* 1F2C0 8002EAC0 21082500 */  addu       $at, $at, $a1
    /* 1F2C4 8002EAC4 00002294 */  lhu        $v0, 0x0($at)
    /* 1F2C8 8002EAC8 00000000 */  nop
    /* 1F2CC 8002EACC 0980013C */  lui        $at, %hi(D_8008D9B4 + 0x2)
    /* 1F2D0 8002EAD0 B6D92124 */  addiu      $at, $at, %lo(D_8008D9B4 + 0x2)
    /* 1F2D4 8002EAD4 21082500 */  addu       $at, $at, $a1
    /* 1F2D8 8002EAD8 000022A4 */  sh         $v0, 0x0($at)
  .Lfunc_8002EA44_8002EADC:
    /* 1F2DC 8002EADC 0980013C */  lui        $at, %hi(D_8008D9B8)
    /* 1F2E0 8002EAE0 B8D92124 */  addiu      $at, $at, %lo(D_8008D9B8)
    /* 1F2E4 8002EAE4 21082500 */  addu       $at, $at, $a1
    /* 1F2E8 8002EAE8 00002394 */  lhu        $v1, 0x0($at)
    /* 1F2EC 8002EAEC 0980013C */  lui        $at, %hi(D_8008D9B0 + 0x2)
    /* 1F2F0 8002EAF0 B2D92124 */  addiu      $at, $at, %lo(D_8008D9B0 + 0x2)
    /* 1F2F4 8002EAF4 21082500 */  addu       $at, $at, $a1
    /* 1F2F8 8002EAF8 00002294 */  lhu        $v0, 0x0($at)
    /* 1F2FC 8002EAFC 0980013C */  lui        $at, %hi(D_8008D9B0 + 0x2)
    /* 1F300 8002EB00 B2D92124 */  addiu      $at, $at, %lo(D_8008D9B0 + 0x2)
    /* 1F304 8002EB04 21082500 */  addu       $at, $at, $a1
    /* 1F308 8002EB08 00002484 */  lh         $a0, 0x0($at)
    /* 1F30C 8002EB0C 21106200 */  addu       $v0, $v1, $v0
    /* 1F310 8002EB10 0980013C */  lui        $at, %hi(D_8008D9B8)
    /* 1F314 8002EB14 B8D92124 */  addiu      $at, $at, %lo(D_8008D9B8)
    /* 1F318 8002EB18 21082500 */  addu       $at, $at, $a1
    /* 1F31C 8002EB1C 000022A4 */  sh         $v0, 0x0($at)
    /* 1F320 8002EB20 0C008018 */  blez       $a0, .Lfunc_8002EA44_8002EB54
    /* 1F324 8002EB24 00000000 */   nop
    /* 1F328 8002EB28 00140200 */  sll        $v0, $v0, 16
    /* 1F32C 8002EB2C 0980013C */  lui        $at, %hi(D_8008D9B8 + 0x2)
    /* 1F330 8002EB30 BAD92124 */  addiu      $at, $at, %lo(D_8008D9B8 + 0x2)
    /* 1F334 8002EB34 21082500 */  addu       $at, $at, $a1
    /* 1F338 8002EB38 00002384 */  lh         $v1, 0x0($at)
    /* 1F33C 8002EB3C 03140200 */  sra        $v0, $v0, 16
    /* 1F340 8002EB40 2A104300 */  slt        $v0, $v0, $v1
    /* 1F344 8002EB44 17004014 */  bnez       $v0, .Lfunc_8002EA44_8002EBA4
    /* 1F348 8002EB48 21206000 */   addu      $a0, $v1, $zero
    /* 1F34C 8002EB4C E1BA0008 */  j          .Lfunc_8002EA44_8002EB84
    /* 1F350 8002EB50 00000000 */   nop
  .Lfunc_8002EA44_8002EB54:
    /* 1F354 8002EB54 14008104 */  bgez       $a0, .Lfunc_8002EA44_8002EBA8
    /* 1F358 8002EB58 001C0800 */   sll       $v1, $t0, 16
    /* 1F35C 8002EB5C 00140200 */  sll        $v0, $v0, 16
    /* 1F360 8002EB60 0980013C */  lui        $at, %hi(D_8008D9B8 + 0x2)
    /* 1F364 8002EB64 BAD92124 */  addiu      $at, $at, %lo(D_8008D9B8 + 0x2)
    /* 1F368 8002EB68 21082500 */  addu       $at, $at, $a1
    /* 1F36C 8002EB6C 00002384 */  lh         $v1, 0x0($at)
    /* 1F370 8002EB70 03140200 */  sra        $v0, $v0, 16
    /* 1F374 8002EB74 21206000 */  addu       $a0, $v1, $zero
    /* 1F378 8002EB78 2A186200 */  slt        $v1, $v1, $v0
    /* 1F37C 8002EB7C 0A006014 */  bnez       $v1, .Lfunc_8002EA44_8002EBA8
    /* 1F380 8002EB80 001C0800 */   sll       $v1, $t0, 16
  .Lfunc_8002EA44_8002EB84:
    /* 1F384 8002EB84 0980013C */  lui        $at, %hi(D_8008D9B8)
    /* 1F388 8002EB88 B8D92124 */  addiu      $at, $at, %lo(D_8008D9B8)
    /* 1F38C 8002EB8C 21082500 */  addu       $at, $at, $a1
    /* 1F390 8002EB90 000024A4 */  sh         $a0, 0x0($at)
    /* 1F394 8002EB94 0980013C */  lui        $at, %hi(D_8008D9B0)
    /* 1F398 8002EB98 B0D92124 */  addiu      $at, $at, %lo(D_8008D9B0)
    /* 1F39C 8002EB9C 21082500 */  addu       $at, $at, $a1
    /* 1F3A0 8002EBA0 000020A4 */  sh         $zero, 0x0($at)
  .Lfunc_8002EA44_8002EBA4:
    /* 1F3A4 8002EBA4 001C0800 */  sll        $v1, $t0, 16
  .Lfunc_8002EA44_8002EBA8:
    /* 1F3A8 8002EBA8 031C0300 */  sra        $v1, $v1, 16
    /* 1F3AC 8002EBAC 40100300 */  sll        $v0, $v1, 1
    /* 1F3B0 8002EBB0 21104300 */  addu       $v0, $v0, $v1
    /* 1F3B4 8002EBB4 80100200 */  sll        $v0, $v0, 2
    /* 1F3B8 8002EBB8 21104300 */  addu       $v0, $v0, $v1
    /* 1F3BC 8002EBBC 80100200 */  sll        $v0, $v0, 2
    /* 1F3C0 8002EBC0 0980013C */  lui        $at, %hi(D_8008D9B8)
    /* 1F3C4 8002EBC4 B8D92124 */  addiu      $at, $at, %lo(D_8008D9B8)
    /* 1F3C8 8002EBC8 21082200 */  addu       $at, $at, $v0
    /* 1F3CC 8002EBCC 00002790 */  lbu        $a3, 0x0($at)
    /* 1F3D0 8002EBD0 0980023C */  lui        $v0, %hi(D_8008E970)
    /* 1F3D4 8002EBD4 70E9428C */  lw         $v0, %lo(D_8008E970)($v0)
    /* 1F3D8 8002EBD8 0980013C */  lui        $at, %hi(D_8008EA11)
    /* 1F3DC 8002EBDC 11EA27A0 */  sb         $a3, %lo(D_8008EA11)($at)
    /* 1F3E0 8002EBE0 18004390 */  lbu        $v1, 0x18($v0)
    /* 1F3E4 8002EBE4 0980043C */  lui        $a0, %hi(D_8008EA10)
    /* 1F3E8 8002EBE8 10EA8490 */  lbu        $a0, %lo(D_8008EA10)($a0)
    /* 1F3EC 8002EBEC 80130300 */  sll        $v0, $v1, 14
    /* 1F3F0 8002EBF0 23104300 */  subu       $v0, $v0, $v1
    /* 1F3F4 8002EBF4 18008200 */  mult       $a0, $v0
    /* 1F3F8 8002EBF8 12180000 */  mflo       $v1
    /* 1F3FC 8002EBFC 0682023C */  lui        $v0, (0x82061029 >> 16)
    /* 1F400 8002EC00 29104234 */  ori        $v0, $v0, (0x82061029 & 0xFFFF)
    /* 1F404 8002EC04 18006200 */  mult       $v1, $v0
    /* 1F408 8002EC08 0980043C */  lui        $a0, %hi(D_8008EA16)
    /* 1F40C 8002EC0C 16EA8490 */  lbu        $a0, %lo(D_8008EA16)($a0)
    /* 1F410 8002EC10 10100000 */  mfhi       $v0
    /* 1F414 8002EC14 21104300 */  addu       $v0, $v0, $v1
    /* 1F418 8002EC18 43130200 */  sra        $v0, $v0, 13
    /* 1F41C 8002EC1C C31F0300 */  sra        $v1, $v1, 31
    /* 1F420 8002EC20 23184300 */  subu       $v1, $v0, $v1
    /* 1F424 8002EC24 18006400 */  mult       $v1, $a0
    /* 1F428 8002EC28 12180000 */  mflo       $v1
    /* 1F42C 8002EC2C 0980023C */  lui        $v0, %hi(D_8008EA19)
    /* 1F430 8002EC30 19EA4290 */  lbu        $v0, %lo(D_8008EA19)($v0)
    /* 1F434 8002EC34 00000000 */  nop
    /* 1F438 8002EC38 18006200 */  mult       $v1, $v0
    /* 1F43C 8002EC3C 12180000 */  mflo       $v1
    /* 1F440 8002EC40 0C04023C */  lui        $v0, (0x40C2051 >> 16)
    /* 1F444 8002EC44 51204234 */  ori        $v0, $v0, (0x40C2051 & 0xFFFF)
    /* 1F448 8002EC48 19006200 */  multu      $v1, $v0
    /* 1F44C 8002EC4C 0980043C */  lui        $a0, %hi(D_8008EA1A)
    /* 1F450 8002EC50 1AEA8490 */  lbu        $a0, %lo(D_8008EA1A)($a0)
    /* 1F454 8002EC54 10100000 */  mfhi       $v0
    /* 1F458 8002EC58 23186200 */  subu       $v1, $v1, $v0
    /* 1F45C 8002EC5C 42180300 */  srl        $v1, $v1, 1
    /* 1F460 8002EC60 21104300 */  addu       $v0, $v0, $v1
    /* 1F464 8002EC64 421B0200 */  srl        $v1, $v0, 13
    /* 1F468 8002EC68 4000822C */  sltiu      $v0, $a0, 0x40
    /* 1F46C 8002EC6C 06004010 */  beqz       $v0, .Lfunc_8002EA44_8002EC88
    /* 1F470 8002EC70 21286000 */   addu      $a1, $v1, $zero
    /* 1F474 8002EC74 18006400 */  mult       $v1, $a0
    /* 1F478 8002EC78 21286000 */  addu       $a1, $v1, $zero
    /* 1F47C 8002EC7C 12100000 */  mflo       $v0
    /* 1F480 8002EC80 28BB0008 */  j          .Lfunc_8002EA44_8002ECA0
    /* 1F484 8002EC84 82310200 */   srl       $a2, $v0, 6
  .Lfunc_8002EA44_8002EC88:
    /* 1F488 8002EC88 7F000234 */  ori        $v0, $zero, 0x7F
    /* 1F48C 8002EC8C 23104400 */  subu       $v0, $v0, $a0
    /* 1F490 8002EC90 1800A200 */  mult       $a1, $v0
    /* 1F494 8002EC94 2130A000 */  addu       $a2, $a1, $zero
    /* 1F498 8002EC98 12100000 */  mflo       $v0
    /* 1F49C 8002EC9C 82290200 */  srl        $a1, $v0, 6
  .Lfunc_8002EA44_8002ECA0:
    /* 1F4A0 8002ECA0 0980043C */  lui        $a0, %hi(D_8008EA17)
    /* 1F4A4 8002ECA4 17EA8490 */  lbu        $a0, %lo(D_8008EA17)($a0)
    /* 1F4A8 8002ECA8 00000000 */  nop
    /* 1F4AC 8002ECAC 4000822C */  sltiu      $v0, $a0, 0x40
    /* 1F4B0 8002ECB0 08004010 */  beqz       $v0, .Lfunc_8002EA44_8002ECD4
    /* 1F4B4 8002ECB4 FFFFC230 */   andi      $v0, $a2, 0xFFFF
    /* 1F4B8 8002ECB8 18004400 */  mult       $v0, $a0
    /* 1F4BC 8002ECBC 12100000 */  mflo       $v0
    /* 1F4C0 8002ECC0 02004104 */  bgez       $v0, .Lfunc_8002EA44_8002ECCC
    /* 1F4C4 8002ECC4 2120E000 */   addu      $a0, $a3, $zero
    /* 1F4C8 8002ECC8 3F004224 */  addiu      $v0, $v0, 0x3F
  .Lfunc_8002EA44_8002ECCC:
    /* 1F4CC 8002ECCC 3EBB0008 */  j          .Lfunc_8002EA44_8002ECF8
    /* 1F4D0 8002ECD0 82310200 */   srl       $a2, $v0, 6
  .Lfunc_8002EA44_8002ECD4:
    /* 1F4D4 8002ECD4 FFFFA330 */  andi       $v1, $a1, 0xFFFF
    /* 1F4D8 8002ECD8 7F000234 */  ori        $v0, $zero, 0x7F
    /* 1F4DC 8002ECDC 23104400 */  subu       $v0, $v0, $a0
    /* 1F4E0 8002ECE0 18006200 */  mult       $v1, $v0
    /* 1F4E4 8002ECE4 12100000 */  mflo       $v0
    /* 1F4E8 8002ECE8 02004104 */  bgez       $v0, .Lfunc_8002EA44_8002ECF4
    /* 1F4EC 8002ECEC 2120E000 */   addu      $a0, $a3, $zero
    /* 1F4F0 8002ECF0 3F004224 */  addiu      $v0, $v0, 0x3F
  .Lfunc_8002EA44_8002ECF4:
    /* 1F4F4 8002ECF4 82290200 */  srl        $a1, $v0, 6
  .Lfunc_8002EA44_8002ECF8:
    /* 1F4F8 8002ECF8 4000822C */  sltiu      $v0, $a0, 0x40
    /* 1F4FC 8002ECFC 08004010 */  beqz       $v0, .Lfunc_8002EA44_8002ED20
    /* 1F500 8002ED00 FFFFC230 */   andi      $v0, $a2, 0xFFFF
    /* 1F504 8002ED04 18004400 */  mult       $v0, $a0
    /* 1F508 8002ED08 12100000 */  mflo       $v0
    /* 1F50C 8002ED0C 0D004104 */  bgez       $v0, .Lfunc_8002EA44_8002ED44
    /* 1F510 8002ED10 82310200 */   srl       $a2, $v0, 6
    /* 1F514 8002ED14 3F004224 */  addiu      $v0, $v0, 0x3F
    /* 1F518 8002ED18 51BB0008 */  j          .Lfunc_8002EA44_8002ED44
    /* 1F51C 8002ED1C 82310200 */   srl       $a2, $v0, 6
  .Lfunc_8002EA44_8002ED20:
    /* 1F520 8002ED20 FFFFA330 */  andi       $v1, $a1, 0xFFFF
    /* 1F524 8002ED24 7F000234 */  ori        $v0, $zero, 0x7F
    /* 1F528 8002ED28 23104400 */  subu       $v0, $v0, $a0
    /* 1F52C 8002ED2C 18006200 */  mult       $v1, $v0
    /* 1F530 8002ED30 12100000 */  mflo       $v0
    /* 1F534 8002ED34 03004104 */  bgez       $v0, .Lfunc_8002EA44_8002ED44
    /* 1F538 8002ED38 82290200 */   srl       $a1, $v0, 6
    /* 1F53C 8002ED3C 3F004224 */  addiu      $v0, $v0, 0x3F
    /* 1F540 8002ED40 82290200 */  srl        $a1, $v0, 6
  .Lfunc_8002EA44_8002ED44:
    /* 1F544 8002ED44 0980033C */  lui        $v1, %hi(D_8008E8C0)
    /* 1F548 8002ED48 C0E86384 */  lh         $v1, %lo(D_8008E8C0)($v1)
    /* 1F54C 8002ED4C 01000234 */  ori        $v0, $zero, 0x1
    /* 1F550 8002ED50 09006214 */  bne        $v1, $v0, .Lfunc_8002EA44_8002ED78
    /* 1F554 8002ED54 00240900 */   sll       $a0, $t1, 16
    /* 1F558 8002ED58 FFFFC330 */  andi       $v1, $a2, 0xFFFF
    /* 1F55C 8002ED5C FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 1F560 8002ED60 2B104300 */  sltu       $v0, $v0, $v1
    /* 1F564 8002ED64 03004010 */  beqz       $v0, .Lfunc_8002EA44_8002ED74
    /* 1F568 8002ED68 00000000 */   nop
    /* 1F56C 8002ED6C 5EBB0008 */  j          .Lfunc_8002EA44_8002ED78
    /* 1F570 8002ED70 2128C000 */   addu      $a1, $a2, $zero
  .Lfunc_8002EA44_8002ED74:
    /* 1F574 8002ED74 2130A000 */  addu       $a2, $a1, $zero
  .Lfunc_8002EA44_8002ED78:
    /* 1F578 8002ED78 C3230400 */  sra        $a0, $a0, 15
    /* 1F57C 8002ED7C 001C0800 */  sll        $v1, $t0, 16
    /* 1F580 8002ED80 031C0300 */  sra        $v1, $v1, 16
    /* 1F584 8002ED84 0980013C */  lui        $at, %hi(gVoiceAttrTable + 0x2)
    /* 1F588 8002ED88 F2D72124 */  addiu      $at, $at, %lo(gVoiceAttrTable + 0x2)
    /* 1F58C 8002ED8C 21082400 */  addu       $at, $at, $a0
    /* 1F590 8002ED90 000026A4 */  sh         $a2, 0x0($at)
    /* 1F594 8002ED94 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 1F598 8002ED98 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 1F59C 8002ED9C 21082300 */  addu       $at, $at, $v1
    /* 1F5A0 8002EDA0 00002290 */  lbu        $v0, 0x0($at)
    /* 1F5A4 8002EDA4 0980013C */  lui        $at, %hi(gVoiceAttrTable)
    /* 1F5A8 8002EDA8 F0D72124 */  addiu      $at, $at, %lo(gVoiceAttrTable)
    /* 1F5AC 8002EDAC 21082400 */  addu       $at, $at, $a0
    /* 1F5B0 8002EDB0 000025A4 */  sh         $a1, 0x0($at)
    /* 1F5B4 8002EDB4 03004234 */  ori        $v0, $v0, 0x3
    /* 1F5B8 8002EDB8 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 1F5BC 8002EDBC 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 1F5C0 8002EDC0 21082300 */  addu       $at, $at, $v1
    /* 1F5C4 8002EDC4 000022A0 */  sb         $v0, 0x0($at)
  .Lfunc_8002EA44_8002EDC8:
    /* 1F5C8 8002EDC8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1F5CC 8002EDCC 0800E003 */  jr         $ra
    /* 1F5D0 8002EDD0 00000000 */   nop
endlabel SndApplyVoicePitch
