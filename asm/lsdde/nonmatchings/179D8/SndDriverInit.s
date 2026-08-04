.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndDriverInit, 0x438

glabel SndDriverInit
    /* 1F5D4 8002EDD4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1F5D8 8002EDD8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1F5DC 8002EDDC 21808000 */  addu       $s0, $a0, $zero
    /* 1F5E0 8002EDE0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 1F5E4 8002EDE4 8AE4000C */  jal        func_80039228
    /* 1F5E8 8002EDE8 21200000 */   addu      $a0, $zero, $zero
    /* 1F5EC 8002EDEC 0980053C */  lui        $a1, %hi(D_8008DEB0)
    /* 1F5F0 8002EDF0 B0DEA524 */  addiu      $a1, $a1, %lo(D_8008DEB0)
    /* 1F5F4 8002EDF4 0980013C */  lui        $at, %hi(D_8008E9FC)
    /* 1F5F8 8002EDF8 FCE920A4 */  sh         $zero, %lo(D_8008E9FC)($at)
    /* 1F5FC 8002EDFC 0980013C */  lui        $at, %hi(D_8008E84C)
    /* 1F600 8002EE00 4CE820A4 */  sh         $zero, %lo(D_8008E84C)($at)
    /* 1F604 8002EE04 41E4000C */  jal        func_80039104
    /* 1F608 8002EE08 20000434 */   ori       $a0, $zero, 0x20
    /* 1F60C 8002EE0C 21280000 */  addu       $a1, $zero, $zero
    /* 1F610 8002EE10 0980033C */  lui        $v1, %hi(gVoiceAttrTable)
    /* 1F614 8002EE14 F0D76324 */  addiu      $v1, $v1, %lo(gVoiceAttrTable)
    /* 1F618 8002EE18 FFFFA230 */  andi       $v0, $a1, 0xFFFF
  .Lfunc_8002EDD4_8002EE1C:
    /* 1F61C 8002EE1C 40100200 */  sll        $v0, $v0, 1
    /* 1F620 8002EE20 21104300 */  addu       $v0, $v0, $v1
    /* 1F624 8002EE24 000040A4 */  sh         $zero, 0x0($v0)
    /* 1F628 8002EE28 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1F62C 8002EE2C FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 1F630 8002EE30 C000422C */  sltiu      $v0, $v0, 0xC0
    /* 1F634 8002EE34 F9FF4014 */  bnez       $v0, .Lfunc_8002EDD4_8002EE1C
    /* 1F638 8002EE38 FFFFA230 */   andi      $v0, $a1, 0xFFFF
    /* 1F63C 8002EE3C 21280000 */  addu       $a1, $zero, $zero
    /* 1F640 8002EE40 FFFFA230 */  andi       $v0, $a1, 0xFFFF
  .Lfunc_8002EDD4_8002EE44:
    /* 1F644 8002EE44 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 1F648 8002EE48 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 1F64C 8002EE4C 21082200 */  addu       $at, $at, $v0
    /* 1F650 8002EE50 000020A0 */  sb         $zero, 0x0($at)
    /* 1F654 8002EE54 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1F658 8002EE58 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 1F65C 8002EE5C 1800422C */  sltiu      $v0, $v0, 0x18
    /* 1F660 8002EE60 F8FF4014 */  bnez       $v0, .Lfunc_8002EDD4_8002EE44
    /* 1F664 8002EE64 FFFFA230 */   andi      $v0, $a1, 0xFFFF
    /* 1F668 8002EE68 0980013C */  lui        $at, %hi(gSeqPlayingCount)
    /* 1F66C 8002EE6C D00B20A4 */  sh         $zero, %lo(gSeqPlayingCount)($at)
    /* 1F670 8002EE70 21280000 */  addu       $a1, $zero, $zero
    /* 1F674 8002EE74 FFFFA230 */  andi       $v0, $a1, 0xFFFF
  .Lfunc_8002EDD4_8002EE78:
    /* 1F678 8002EE78 0980013C */  lui        $at, %hi(gSeqSlotStates)
    /* 1F67C 8002EE7C 2CEA2124 */  addiu      $at, $at, %lo(gSeqSlotStates)
    /* 1F680 8002EE80 21082200 */  addu       $at, $at, $v0
    /* 1F684 8002EE84 000020A0 */  sb         $zero, 0x0($at)
    /* 1F688 8002EE88 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1F68C 8002EE8C FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 1F690 8002EE90 1000422C */  sltiu      $v0, $v0, 0x10
    /* 1F694 8002EE94 F8FF4014 */  bnez       $v0, .Lfunc_8002EDD4_8002EE78
    /* 1F698 8002EE98 FFFFA230 */   andi      $v0, $a1, 0xFFFF
    /* 1F69C 8002EE9C FF000432 */  andi       $a0, $s0, 0xFF
    /* 1F6A0 8002EEA0 1800822C */  sltiu      $v0, $a0, 0x18
    /* 1F6A4 8002EEA4 05004014 */  bnez       $v0, .Lfunc_8002EDD4_8002EEBC
    /* 1F6A8 8002EEA8 18000234 */   ori       $v0, $zero, 0x18
    /* 1F6AC 8002EEAC 0980013C */  lui        $at, %hi(gNumVoices)
    /* 1F6B0 8002EEB0 D0E922A0 */  sb         $v0, %lo(gNumVoices)($at)
    /* 1F6B4 8002EEB4 B1BB0008 */  j          .Lfunc_8002EDD4_8002EEC4
    /* 1F6B8 8002EEB8 00000000 */   nop
  .Lfunc_8002EDD4_8002EEBC:
    /* 1F6BC 8002EEBC 0980013C */  lui        $at, %hi(gNumVoices)
    /* 1F6C0 8002EEC0 D0E924A0 */  sb         $a0, %lo(gNumVoices)($at)
  .Lfunc_8002EDD4_8002EEC4:
    /* 1F6C4 8002EEC4 0980023C */  lui        $v0, %hi(gNumVoices)
    /* 1F6C8 8002EEC8 D0E94290 */  lbu        $v0, %lo(gNumVoices)($v0)
    /* 1F6CC 8002EECC 00000000 */  nop
    /* 1F6D0 8002EED0 AD004010 */  beqz       $v0, .Lfunc_8002EDD4_8002F188
    /* 1F6D4 8002EED4 21280000 */   addu      $a1, $zero, $zero
    /* 1F6D8 8002EED8 FF000934 */  ori        $t1, $zero, 0xFF
    /* 1F6DC 8002EEDC 01000834 */  ori        $t0, $zero, 0x1
    /* 1F6E0 8002EEE0 FFFFA330 */  andi       $v1, $a1, 0xFFFF
  .Lfunc_8002EDD4_8002EEE4:
    /* 1F6E4 8002EEE4 C0200300 */  sll        $a0, $v1, 3
    /* 1F6E8 8002EEE8 40100300 */  sll        $v0, $v1, 1
    /* 1F6EC 8002EEEC 21104300 */  addu       $v0, $v0, $v1
    /* 1F6F0 8002EEF0 80100200 */  sll        $v0, $v0, 2
    /* 1F6F4 8002EEF4 21104300 */  addu       $v0, $v0, $v1
    /* 1F6F8 8002EEF8 80100200 */  sll        $v0, $v0, 2
    /* 1F6FC 8002EEFC 18000334 */  ori        $v1, $zero, 0x18
    /* 1F700 8002EF00 0980013C */  lui        $at, %hi(D_8008D98A)
    /* 1F704 8002EF04 8AD92124 */  addiu      $at, $at, %lo(D_8008D98A)
    /* 1F708 8002EF08 21082200 */  addu       $at, $at, $v0
    /* 1F70C 8002EF0C 000023A4 */  sh         $v1, 0x0($at)
    /* 1F710 8002EF10 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 1F714 8002EF14 0980013C */  lui        $at, %hi(D_8008D994 + 0x2)
    /* 1F718 8002EF18 96D92124 */  addiu      $at, $at, %lo(D_8008D994 + 0x2)
    /* 1F71C 8002EF1C 21082200 */  addu       $at, $at, $v0
    /* 1F720 8002EF20 000023A4 */  sh         $v1, 0x0($at)
    /* 1F724 8002EF24 40000334 */  ori        $v1, $zero, 0x40
    /* 1F728 8002EF28 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* 1F72C 8002EF2C 0980013C */  lui        $at, %hi(D_8008D988)
    /* 1F730 8002EF30 88D92124 */  addiu      $at, $at, %lo(D_8008D988)
    /* 1F734 8002EF34 21082200 */  addu       $at, $at, $v0
    /* 1F738 8002EF38 000029A4 */  sh         $t1, 0x0($at)
    /* 1F73C 8002EF3C 0980013C */  lui        $at, %hi(gVoiceStateTable + 0x3)
    /* 1F740 8002EF40 A3D92124 */  addiu      $at, $at, %lo(gVoiceStateTable + 0x3)
    /* 1F744 8002EF44 21082200 */  addu       $at, $at, $v0
    /* 1F748 8002EF48 000020A0 */  sb         $zero, 0x0($at)
    /* 1F74C 8002EF4C 0980013C */  lui        $at, %hi(D_8008D98C)
    /* 1F750 8002EF50 8CD92124 */  addiu      $at, $at, %lo(D_8008D98C)
    /* 1F754 8002EF54 21082200 */  addu       $at, $at, $v0
    /* 1F758 8002EF58 000020A4 */  sh         $zero, 0x0($at)
    /* 1F75C 8002EF5C 0980013C */  lui        $at, %hi(D_8008D98E)
    /* 1F760 8002EF60 8ED92124 */  addiu      $at, $at, %lo(D_8008D98E)
    /* 1F764 8002EF64 21082200 */  addu       $at, $at, $v0
    /* 1F768 8002EF68 000020A4 */  sh         $zero, 0x0($at)
    /* 1F76C 8002EF6C 0980013C */  lui        $at, %hi(D_8008D998)
    /* 1F770 8002EF70 98D92124 */  addiu      $at, $at, %lo(D_8008D998)
    /* 1F774 8002EF74 21082200 */  addu       $at, $at, $v0
    /* 1F778 8002EF78 000020A4 */  sh         $zero, 0x0($at)
    /* 1F77C 8002EF7C 0980013C */  lui        $at, %hi(D_8008D998 + 0x2)
    /* 1F780 8002EF80 9AD92124 */  addiu      $at, $at, %lo(D_8008D998 + 0x2)
    /* 1F784 8002EF84 21082200 */  addu       $at, $at, $v0
    /* 1F788 8002EF88 000020A4 */  sh         $zero, 0x0($at)
    /* 1F78C 8002EF8C 0980013C */  lui        $at, %hi(D_8008D99C)
    /* 1F790 8002EF90 9CD92124 */  addiu      $at, $at, %lo(D_8008D99C)
    /* 1F794 8002EF94 21082200 */  addu       $at, $at, $v0
    /* 1F798 8002EF98 000029A4 */  sh         $t1, 0x0($at)
    /* 1F79C 8002EF9C 0980013C */  lui        $at, %hi(D_8008D990)
    /* 1F7A0 8002EFA0 90D92124 */  addiu      $at, $at, %lo(D_8008D990)
    /* 1F7A4 8002EFA4 21082200 */  addu       $at, $at, $v0
    /* 1F7A8 8002EFA8 000020A4 */  sh         $zero, 0x0($at)
    /* 1F7AC 8002EFAC 0980013C */  lui        $at, %hi(D_8008D990 + 0x2)
    /* 1F7B0 8002EFB0 92D92124 */  addiu      $at, $at, %lo(D_8008D990 + 0x2)
    /* 1F7B4 8002EFB4 21082200 */  addu       $at, $at, $v0
    /* 1F7B8 8002EFB8 000023A0 */  sb         $v1, 0x0($at)
    /* 1F7BC 8002EFBC 0980013C */  lui        $at, %hi(D_8008D9A4)
    /* 1F7C0 8002EFC0 A4D92124 */  addiu      $at, $at, %lo(D_8008D9A4)
    /* 1F7C4 8002EFC4 21082200 */  addu       $at, $at, $v0
    /* 1F7C8 8002EFC8 000020A4 */  sh         $zero, 0x0($at)
    /* 1F7CC 8002EFCC 0980013C */  lui        $at, %hi(D_8008D9A4 + 0x2)
    /* 1F7D0 8002EFD0 A6D92124 */  addiu      $at, $at, %lo(D_8008D9A4 + 0x2)
    /* 1F7D4 8002EFD4 21082200 */  addu       $at, $at, $v0
    /* 1F7D8 8002EFD8 000020A4 */  sh         $zero, 0x0($at)
    /* 1F7DC 8002EFDC 0980013C */  lui        $at, %hi(D_8008D9A8)
    /* 1F7E0 8002EFE0 A8D92124 */  addiu      $at, $at, %lo(D_8008D9A8)
    /* 1F7E4 8002EFE4 21082200 */  addu       $at, $at, $v0
    /* 1F7E8 8002EFE8 000020A4 */  sh         $zero, 0x0($at)
    /* 1F7EC 8002EFEC 0980013C */  lui        $at, %hi(D_8008D9A8 + 0x2)
    /* 1F7F0 8002EFF0 AAD92124 */  addiu      $at, $at, %lo(D_8008D9A8 + 0x2)
    /* 1F7F4 8002EFF4 21082200 */  addu       $at, $at, $v0
    /* 1F7F8 8002EFF8 000020A4 */  sh         $zero, 0x0($at)
    /* 1F7FC 8002EFFC 0980013C */  lui        $at, %hi(D_8008D9B0)
    /* 1F800 8002F000 B0D92124 */  addiu      $at, $at, %lo(D_8008D9B0)
    /* 1F804 8002F004 21082200 */  addu       $at, $at, $v0
    /* 1F808 8002F008 000020A4 */  sh         $zero, 0x0($at)
    /* 1F80C 8002F00C 0980013C */  lui        $at, %hi(D_8008D9B0 + 0x2)
    /* 1F810 8002F010 B2D92124 */  addiu      $at, $at, %lo(D_8008D9B0 + 0x2)
    /* 1F814 8002F014 21082200 */  addu       $at, $at, $v0
    /* 1F818 8002F018 000020A4 */  sh         $zero, 0x0($at)
    /* 1F81C 8002F01C 0980013C */  lui        $at, %hi(D_8008D9B4)
    /* 1F820 8002F020 B4D92124 */  addiu      $at, $at, %lo(D_8008D9B4)
    /* 1F824 8002F024 21082200 */  addu       $at, $at, $v0
    /* 1F828 8002F028 000020A4 */  sh         $zero, 0x0($at)
    /* 1F82C 8002F02C 0980013C */  lui        $at, %hi(D_8008D9B4 + 0x2)
    /* 1F830 8002F030 B6D92124 */  addiu      $at, $at, %lo(D_8008D9B4 + 0x2)
    /* 1F834 8002F034 21082200 */  addu       $at, $at, $v0
    /* 1F838 8002F038 000020A4 */  sh         $zero, 0x0($at)
    /* 1F83C 8002F03C 0980013C */  lui        $at, %hi(D_8008D9B8)
    /* 1F840 8002F040 B8D92124 */  addiu      $at, $at, %lo(D_8008D9B8)
    /* 1F844 8002F044 21082200 */  addu       $at, $at, $v0
    /* 1F848 8002F048 000020A4 */  sh         $zero, 0x0($at)
    /* 1F84C 8002F04C 0980013C */  lui        $at, %hi(D_8008D9AC)
    /* 1F850 8002F050 ACD92124 */  addiu      $at, $at, %lo(D_8008D9AC)
    /* 1F854 8002F054 21082200 */  addu       $at, $at, $v0
    /* 1F858 8002F058 000020A4 */  sh         $zero, 0x0($at)
    /* 1F85C 8002F05C 0780023C */  lui        $v0, %hi(D_8006DAD4)
    /* 1F860 8002F060 D4DA428C */  lw         $v0, %lo(D_8006DAD4)($v0)
    /* 1F864 8002F064 40200400 */  sll        $a0, $a0, 1
    /* 1F868 8002F068 21208200 */  addu       $a0, $a0, $v0
    /* 1F86C 8002F06C 00020234 */  ori        $v0, $zero, 0x200
    /* 1F870 8002F070 060082A4 */  sh         $v0, 0x6($a0)
    /* 1F874 8002F074 00100234 */  ori        $v0, $zero, 0x1000
    /* 1F878 8002F078 040082A4 */  sh         $v0, 0x4($a0)
    /* 1F87C 8002F07C FF800234 */  ori        $v0, $zero, 0x80FF
    /* 1F880 8002F080 080082A4 */  sh         $v0, 0x8($a0)
    /* 1F884 8002F084 00400234 */  ori        $v0, $zero, 0x4000
    /* 1F888 8002F088 000080A4 */  sh         $zero, 0x0($a0)
    /* 1F88C 8002F08C 020080A4 */  sh         $zero, 0x2($a0)
    /* 1F890 8002F090 0A0082A4 */  sh         $v0, 0xA($a0)
    /* 1F894 8002F094 0980013C */  lui        $at, %hi(gCurrentVoice)
    /* 1F898 8002F098 26EA25A4 */  sh         $a1, %lo(gCurrentVoice)($at)
    /* 1F89C 8002F09C 0980033C */  lui        $v1, %hi(gCurrentVoice)
    /* 1F8A0 8002F0A0 26EA6394 */  lhu        $v1, %lo(gCurrentVoice)($v1)
    /* 1F8A4 8002F0A4 00000000 */  nop
    /* 1F8A8 8002F0A8 FFFF6430 */  andi       $a0, $v1, 0xFFFF
    /* 1F8AC 8002F0AC 1000822C */  sltiu      $v0, $a0, 0x10
    /* 1F8B0 8002F0B0 03004010 */  beqz       $v0, .Lfunc_8002EDD4_8002F0C0
    /* 1F8B4 8002F0B4 04388800 */   sllv      $a3, $t0, $a0
    /* 1F8B8 8002F0B8 33BC0008 */  j          .Lfunc_8002EDD4_8002F0CC
    /* 1F8BC 8002F0BC 21300000 */   addu      $a2, $zero, $zero
  .Lfunc_8002EDD4_8002F0C0:
    /* 1F8C0 8002F0C0 21380000 */  addu       $a3, $zero, $zero
    /* 1F8C4 8002F0C4 F0FF8224 */  addiu      $v0, $a0, -0x10
    /* 1F8C8 8002F0C8 04304800 */  sllv       $a2, $t0, $v0
  .Lfunc_8002EDD4_8002F0CC:
    /* 1F8CC 8002F0CC FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* 1F8D0 8002F0D0 40100300 */  sll        $v0, $v1, 1
    /* 1F8D4 8002F0D4 21104300 */  addu       $v0, $v0, $v1
    /* 1F8D8 8002F0D8 80100200 */  sll        $v0, $v0, 2
    /* 1F8DC 8002F0DC 21104300 */  addu       $v0, $v0, $v1
    /* 1F8E0 8002F0E0 80100200 */  sll        $v0, $v0, 2
    /* 1F8E4 8002F0E4 0980013C */  lui        $at, %hi(gVoiceStateTable + 0x3)
    /* 1F8E8 8002F0E8 A3D92124 */  addiu      $at, $at, %lo(gVoiceStateTable + 0x3)
    /* 1F8EC 8002F0EC 21082200 */  addu       $at, $at, $v0
    /* 1F8F0 8002F0F0 000020A0 */  sb         $zero, 0x0($at)
    /* 1F8F4 8002F0F4 0980033C */  lui        $v1, %hi(D_80090C60)
    /* 1F8F8 8002F0F8 600C6394 */  lhu        $v1, %lo(D_80090C60)($v1)
    /* 1F8FC 8002F0FC 0980043C */  lui        $a0, %hi(D_80090C64)
    /* 1F900 8002F100 640C8494 */  lhu        $a0, %lo(D_80090C64)($a0)
    /* 1F904 8002F104 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1F908 8002F108 0980013C */  lui        $at, %hi(D_8008D98C)
    /* 1F90C 8002F10C 8CD92124 */  addiu      $at, $at, %lo(D_8008D98C)
    /* 1F910 8002F110 21082200 */  addu       $at, $at, $v0
    /* 1F914 8002F114 000020A4 */  sh         $zero, 0x0($at)
    /* 1F918 8002F118 0980013C */  lui        $at, %hi(D_8008D988)
    /* 1F91C 8002F11C 88D92124 */  addiu      $at, $at, %lo(D_8008D988)
    /* 1F920 8002F120 21082200 */  addu       $at, $at, $v0
    /* 1F924 8002F124 000020A4 */  sh         $zero, 0x0($at)
    /* 1F928 8002F128 0980023C */  lui        $v0, %hi(D_8008E228)
    /* 1F92C 8002F12C 28E24294 */  lhu        $v0, %lo(D_8008E228)($v0)
    /* 1F930 8002F130 2518E300 */  or         $v1, $a3, $v1
    /* 1F934 8002F134 2520C400 */  or         $a0, $a2, $a0
    /* 1F938 8002F138 0980013C */  lui        $at, %hi(D_80090C60)
    /* 1F93C 8002F13C 600C23A4 */  sh         $v1, %lo(D_80090C60)($at)
    /* 1F940 8002F140 27180300 */  nor        $v1, $zero, $v1
    /* 1F944 8002F144 24104300 */  and        $v0, $v0, $v1
    /* 1F948 8002F148 0980013C */  lui        $at, %hi(D_80090C64)
    /* 1F94C 8002F14C 640C24A4 */  sh         $a0, %lo(D_80090C64)($at)
    /* 1F950 8002F150 27200400 */  nor        $a0, $zero, $a0
    /* 1F954 8002F154 0980013C */  lui        $at, %hi(D_8008E228)
    /* 1F958 8002F158 28E222A4 */  sh         $v0, %lo(D_8008E228)($at)
    /* 1F95C 8002F15C 0980023C */  lui        $v0, %hi(D_8008E22C)
    /* 1F960 8002F160 2CE24294 */  lhu        $v0, %lo(D_8008E22C)($v0)
    /* 1F964 8002F164 0980033C */  lui        $v1, %hi(gNumVoices)
    /* 1F968 8002F168 D0E96390 */  lbu        $v1, %lo(gNumVoices)($v1)
    /* 1F96C 8002F16C 24104400 */  and        $v0, $v0, $a0
    /* 1F970 8002F170 0980013C */  lui        $at, %hi(D_8008E22C)
    /* 1F974 8002F174 2CE222A4 */  sh         $v0, %lo(D_8008E22C)($at)
    /* 1F978 8002F178 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 1F97C 8002F17C 2B104300 */  sltu       $v0, $v0, $v1
    /* 1F980 8002F180 58FF4014 */  bnez       $v0, .Lfunc_8002EDD4_8002EEE4
    /* 1F984 8002F184 FFFFA330 */   andi      $v1, $a1, 0xFFFF
  .Lfunc_8002EDD4_8002F188:
    /* 1F988 8002F188 FF3F0234 */  ori        $v0, $zero, 0x3FFF
    /* 1F98C 8002F18C 0980013C */  lui        $at, %hi(gMainVolumeL)
    /* 1F990 8002F190 60E222A4 */  sh         $v0, %lo(gMainVolumeL)($at)
    /* 1F994 8002F194 0980013C */  lui        $at, %hi(gMainVolumeR)
    /* 1F998 8002F198 62E222A4 */  sh         $v0, %lo(gMainVolumeR)($at)
    /* 1F99C 8002F19C 80000234 */  ori        $v0, $zero, 0x80
    /* 1F9A0 8002F1A0 0980013C */  lui        $at, %hi(D_8008E228)
    /* 1F9A4 8002F1A4 28E220A4 */  sh         $zero, %lo(D_8008E228)($at)
    /* 1F9A8 8002F1A8 0980013C */  lui        $at, %hi(D_8008E22C)
    /* 1F9AC 8002F1AC 2CE220A4 */  sh         $zero, %lo(D_8008E22C)($at)
    /* 1F9B0 8002F1B0 0980013C */  lui        $at, %hi(D_80090C60)
    /* 1F9B4 8002F1B4 600C20A4 */  sh         $zero, %lo(D_80090C60)($at)
    /* 1F9B8 8002F1B8 0980013C */  lui        $at, %hi(D_8008E230)
    /* 1F9BC 8002F1BC 30E220A4 */  sh         $zero, %lo(D_8008E230)($at)
    /* 1F9C0 8002F1C0 0980013C */  lui        $at, %hi(D_8008E234)
    /* 1F9C4 8002F1C4 34E220A4 */  sh         $zero, %lo(D_8008E234)($at)
    /* 1F9C8 8002F1C8 0980013C */  lui        $at, %hi(gSpuCmdBlock)
    /* 1F9CC 8002F1CC 58E220AC */  sw         $zero, %lo(gSpuCmdBlock)($at)
    /* 1F9D0 8002F1D0 0980013C */  lui        $at, %hi(gReverbDepth)
    /* 1F9D4 8002F1D4 5CE220AC */  sw         $zero, %lo(gReverbDepth)($at)
    /* 1F9D8 8002F1D8 0980013C */  lui        $at, %hi(D_8008EA40)
    /* 1F9DC 8002F1DC 40EA20A0 */  sb         $zero, %lo(D_8008EA40)($at)
    /* 1F9E0 8002F1E0 0980013C */  lui        $at, %hi(D_8008E8C0)
    /* 1F9E4 8002F1E4 C0E820A4 */  sh         $zero, %lo(D_8008E8C0)($at)
    /* 1F9E8 8002F1E8 0980013C */  lui        $at, %hi(gMaxSeqChannels)
    /* 1F9EC 8002F1EC 38E922A4 */  sh         $v0, %lo(gMaxSeqChannels)($at)
    /* 1F9F0 8002F1F0 C0BD000C */  jal        SndFlushVoices
    /* 1F9F4 8002F1F4 00000000 */   nop
    /* 1F9F8 8002F1F8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 1F9FC 8002F1FC 1000B08F */  lw         $s0, 0x10($sp)
    /* 1FA00 8002F200 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1FA04 8002F204 0800E003 */  jr         $ra
    /* 1FA08 8002F208 00000000 */   nop
endlabel SndDriverInit
