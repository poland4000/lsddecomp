.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndFindVoiceById, 0x154

glabel SndFindVoiceById
    /* 20E9C 8003069C 0980023C */  lui        $v0, %hi(gNumVoices)
    /* 20EA0 800306A0 D0E94290 */  lbu        $v0, %lo(gNumVoices)($v0)
    /* 20EA4 800306A4 00000000 */  nop
    /* 20EA8 800306A8 4F004010 */  beqz       $v0, .Lfunc_8003069C_800307E8
    /* 20EAC 800306AC 21380000 */   addu      $a3, $zero, $zero
    /* 20EB0 800306B0 00140400 */  sll        $v0, $a0, 16
    /* 20EB4 800306B4 034C0200 */  sra        $t1, $v0, 16
    /* 20EB8 800306B8 09800A3C */  lui        $t2, %hi(gCurrentVoice)
    /* 20EBC 800306BC 26EA4A25 */  addiu      $t2, $t2, %lo(gCurrentVoice)
    /* 20EC0 800306C0 01000834 */  ori        $t0, $zero, 0x1
    /* 20EC4 800306C4 FF00E230 */  andi       $v0, $a3, 0xFF
  .Lfunc_8003069C_800306C8:
    /* 20EC8 800306C8 40180200 */  sll        $v1, $v0, 1
    /* 20ECC 800306CC 21186200 */  addu       $v1, $v1, $v0
    /* 20ED0 800306D0 80180300 */  sll        $v1, $v1, 2
    /* 20ED4 800306D4 21186200 */  addu       $v1, $v1, $v0
    /* 20ED8 800306D8 80180300 */  sll        $v1, $v1, 2
    /* 20EDC 800306DC 0980013C */  lui        $at, %hi(D_8008D994 + 0x2)
    /* 20EE0 800306E0 96D92124 */  addiu      $at, $at, %lo(D_8008D994 + 0x2)
    /* 20EE4 800306E4 21082300 */  addu       $at, $at, $v1
    /* 20EE8 800306E8 00002284 */  lh         $v0, 0x0($at)
    /* 20EEC 800306EC 00000000 */  nop
    /* 20EF0 800306F0 36004914 */  bne        $v0, $t1, .Lfunc_8003069C_800307CC
    /* 20EF4 800306F4 FF00E230 */   andi      $v0, $a3, 0xFF
    /* 20EF8 800306F8 000042A5 */  sh         $v0, 0x0($t2)
    /* 20EFC 800306FC 0980033C */  lui        $v1, %hi(gCurrentVoice)
    /* 20F00 80030700 26EA6394 */  lhu        $v1, %lo(gCurrentVoice)($v1)
    /* 20F04 80030704 00000000 */  nop
    /* 20F08 80030708 FFFF6430 */  andi       $a0, $v1, 0xFFFF
    /* 20F0C 8003070C 1000822C */  sltiu      $v0, $a0, 0x10
    /* 20F10 80030710 03004010 */  beqz       $v0, .Lfunc_8003069C_80030720
    /* 20F14 80030714 04308800 */   sllv      $a2, $t0, $a0
    /* 20F18 80030718 CBC10008 */  j          .Lfunc_8003069C_8003072C
    /* 20F1C 8003071C 21280000 */   addu      $a1, $zero, $zero
  .Lfunc_8003069C_80030720:
    /* 20F20 80030720 21300000 */  addu       $a2, $zero, $zero
    /* 20F24 80030724 F0FF8224 */  addiu      $v0, $a0, -0x10
    /* 20F28 80030728 04284800 */  sllv       $a1, $t0, $v0
  .Lfunc_8003069C_8003072C:
    /* 20F2C 8003072C FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* 20F30 80030730 40100300 */  sll        $v0, $v1, 1
    /* 20F34 80030734 21104300 */  addu       $v0, $v0, $v1
    /* 20F38 80030738 80100200 */  sll        $v0, $v0, 2
    /* 20F3C 8003073C 21104300 */  addu       $v0, $v0, $v1
    /* 20F40 80030740 80100200 */  sll        $v0, $v0, 2
    /* 20F44 80030744 0980013C */  lui        $at, %hi(gVoiceStateTable + 0x3)
    /* 20F48 80030748 A3D92124 */  addiu      $at, $at, %lo(gVoiceStateTable + 0x3)
    /* 20F4C 8003074C 21082200 */  addu       $at, $at, $v0
    /* 20F50 80030750 000020A0 */  sb         $zero, 0x0($at)
    /* 20F54 80030754 0980033C */  lui        $v1, %hi(D_80090C60)
    /* 20F58 80030758 600C6394 */  lhu        $v1, %lo(D_80090C60)($v1)
    /* 20F5C 8003075C 0980043C */  lui        $a0, %hi(D_80090C64)
    /* 20F60 80030760 640C8494 */  lhu        $a0, %lo(D_80090C64)($a0)
    /* 20F64 80030764 0980013C */  lui        $at, %hi(D_8008D98C)
    /* 20F68 80030768 8CD92124 */  addiu      $at, $at, %lo(D_8008D98C)
    /* 20F6C 8003076C 21082200 */  addu       $at, $at, $v0
    /* 20F70 80030770 000020A4 */  sh         $zero, 0x0($at)
    /* 20F74 80030774 0980013C */  lui        $at, %hi(D_8008D988)
    /* 20F78 80030778 88D92124 */  addiu      $at, $at, %lo(D_8008D988)
    /* 20F7C 8003077C 21082200 */  addu       $at, $at, $v0
    /* 20F80 80030780 000020A4 */  sh         $zero, 0x0($at)
    /* 20F84 80030784 0980023C */  lui        $v0, %hi(D_8008E228)
    /* 20F88 80030788 28E24294 */  lhu        $v0, %lo(D_8008E228)($v0)
    /* 20F8C 8003078C 2518C300 */  or         $v1, $a2, $v1
    /* 20F90 80030790 0980013C */  lui        $at, %hi(D_80090C60)
    /* 20F94 80030794 600C23A4 */  sh         $v1, %lo(D_80090C60)($at)
    /* 20F98 80030798 27180300 */  nor        $v1, $zero, $v1
    /* 20F9C 8003079C 24104300 */  and        $v0, $v0, $v1
    /* 20FA0 800307A0 0980013C */  lui        $at, %hi(D_8008E228)
    /* 20FA4 800307A4 28E222A4 */  sh         $v0, %lo(D_8008E228)($at)
    /* 20FA8 800307A8 0980023C */  lui        $v0, %hi(D_8008E22C)
    /* 20FAC 800307AC 2CE24294 */  lhu        $v0, %lo(D_8008E22C)($v0)
    /* 20FB0 800307B0 2520A400 */  or         $a0, $a1, $a0
    /* 20FB4 800307B4 0980013C */  lui        $at, %hi(D_80090C64)
    /* 20FB8 800307B8 640C24A4 */  sh         $a0, %lo(D_80090C64)($at)
    /* 20FBC 800307BC 27200400 */  nor        $a0, $zero, $a0
    /* 20FC0 800307C0 24104400 */  and        $v0, $v0, $a0
    /* 20FC4 800307C4 0980013C */  lui        $at, %hi(D_8008E22C)
    /* 20FC8 800307C8 2CE222A4 */  sh         $v0, %lo(D_8008E22C)($at)
  .Lfunc_8003069C_800307CC:
    /* 20FCC 800307CC 0100E724 */  addiu      $a3, $a3, 0x1
    /* 20FD0 800307D0 0980033C */  lui        $v1, %hi(gNumVoices)
    /* 20FD4 800307D4 D0E96390 */  lbu        $v1, %lo(gNumVoices)($v1)
    /* 20FD8 800307D8 FF00E230 */  andi       $v0, $a3, 0xFF
    /* 20FDC 800307DC 2B104300 */  sltu       $v0, $v0, $v1
    /* 20FE0 800307E0 B9FF4014 */  bnez       $v0, .Lfunc_8003069C_800306C8
    /* 20FE4 800307E4 FF00E230 */   andi      $v0, $a3, 0xFF
  .Lfunc_8003069C_800307E8:
    /* 20FE8 800307E8 0800E003 */  jr         $ra
    /* 20FEC 800307EC 00000000 */   nop
endlabel SndFindVoiceById
