.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndApplyVoiceVolume, 0x39C

glabel SndApplyVoiceVolume
    /* 1ECD8 8002E4D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1ECDC 8002E4DC 001C0400 */  sll        $v1, $a0, 16
    /* 1ECE0 8002E4E0 031C0300 */  sra        $v1, $v1, 16
    /* 1ECE4 8002E4E4 C0400300 */  sll        $t0, $v1, 3
    /* 1ECE8 8002E4E8 40100300 */  sll        $v0, $v1, 1
    /* 1ECEC 8002E4EC 21104300 */  addu       $v0, $v0, $v1
    /* 1ECF0 8002E4F0 80100200 */  sll        $v0, $v0, 2
    /* 1ECF4 8002E4F4 21104300 */  addu       $v0, $v0, $v1
    /* 1ECF8 8002E4F8 80280200 */  sll        $a1, $v0, 2
    /* 1ECFC 8002E4FC 0980013C */  lui        $at, %hi(D_8008D9A8)
    /* 1ED00 8002E500 A8D92124 */  addiu      $at, $at, %lo(D_8008D9A8)
    /* 1ED04 8002E504 21082500 */  addu       $at, $at, $a1
    /* 1ED08 8002E508 00002284 */  lh         $v0, 0x0($at)
    /* 1ED0C 8002E50C 00000000 */  nop
    /* 1ED10 8002E510 17004010 */  beqz       $v0, .Lfunc_8002E4D8_8002E570
    /* 1ED14 8002E514 21388000 */   addu      $a3, $a0, $zero
    /* 1ED18 8002E518 0980013C */  lui        $at, %hi(D_8008D9A8 + 0x2)
    /* 1ED1C 8002E51C AAD92124 */  addiu      $at, $at, %lo(D_8008D9A8 + 0x2)
    /* 1ED20 8002E520 21082500 */  addu       $at, $at, $a1
    /* 1ED24 8002E524 00002294 */  lhu        $v0, 0x0($at)
    /* 1ED28 8002E528 00000000 */  nop
    /* 1ED2C 8002E52C FFFF4324 */  addiu      $v1, $v0, -0x1
    /* 1ED30 8002E530 00140200 */  sll        $v0, $v0, 16
    /* 1ED34 8002E534 0980013C */  lui        $at, %hi(D_8008D9A8 + 0x2)
    /* 1ED38 8002E538 AAD92124 */  addiu      $at, $at, %lo(D_8008D9A8 + 0x2)
    /* 1ED3C 8002E53C 21082500 */  addu       $at, $at, $a1
    /* 1ED40 8002E540 000023A4 */  sh         $v1, 0x0($at)
    /* 1ED44 8002E544 C800401C */  bgtz       $v0, .Lfunc_8002E4D8_8002E868
    /* 1ED48 8002E548 00000000 */   nop
    /* 1ED4C 8002E54C 0980013C */  lui        $at, %hi(D_8008D9A8)
    /* 1ED50 8002E550 A8D92124 */  addiu      $at, $at, %lo(D_8008D9A8)
    /* 1ED54 8002E554 21082500 */  addu       $at, $at, $a1
    /* 1ED58 8002E558 00002294 */  lhu        $v0, 0x0($at)
    /* 1ED5C 8002E55C 00000000 */  nop
    /* 1ED60 8002E560 0980013C */  lui        $at, %hi(D_8008D9A8 + 0x2)
    /* 1ED64 8002E564 AAD92124 */  addiu      $at, $at, %lo(D_8008D9A8 + 0x2)
    /* 1ED68 8002E568 21082500 */  addu       $at, $at, $a1
    /* 1ED6C 8002E56C 000022A4 */  sh         $v0, 0x0($at)
  .Lfunc_8002E4D8_8002E570:
    /* 1ED70 8002E570 0980013C */  lui        $at, %hi(D_8008D9AC)
    /* 1ED74 8002E574 ACD92124 */  addiu      $at, $at, %lo(D_8008D9AC)
    /* 1ED78 8002E578 21082500 */  addu       $at, $at, $a1
    /* 1ED7C 8002E57C 00002394 */  lhu        $v1, 0x0($at)
    /* 1ED80 8002E580 0980013C */  lui        $at, %hi(D_8008D9A4 + 0x2)
    /* 1ED84 8002E584 A6D92124 */  addiu      $at, $at, %lo(D_8008D9A4 + 0x2)
    /* 1ED88 8002E588 21082500 */  addu       $at, $at, $a1
    /* 1ED8C 8002E58C 00002294 */  lhu        $v0, 0x0($at)
    /* 1ED90 8002E590 0980013C */  lui        $at, %hi(D_8008D9A4 + 0x2)
    /* 1ED94 8002E594 A6D92124 */  addiu      $at, $at, %lo(D_8008D9A4 + 0x2)
    /* 1ED98 8002E598 21082500 */  addu       $at, $at, $a1
    /* 1ED9C 8002E59C 00002484 */  lh         $a0, 0x0($at)
    /* 1EDA0 8002E5A0 21106200 */  addu       $v0, $v1, $v0
    /* 1EDA4 8002E5A4 0980013C */  lui        $at, %hi(D_8008D9AC)
    /* 1EDA8 8002E5A8 ACD92124 */  addiu      $at, $at, %lo(D_8008D9AC)
    /* 1EDAC 8002E5AC 21082500 */  addu       $at, $at, $a1
    /* 1EDB0 8002E5B0 000022A4 */  sh         $v0, 0x0($at)
    /* 1EDB4 8002E5B4 0C008018 */  blez       $a0, .Lfunc_8002E4D8_8002E5E8
    /* 1EDB8 8002E5B8 00000000 */   nop
    /* 1EDBC 8002E5BC 00140200 */  sll        $v0, $v0, 16
    /* 1EDC0 8002E5C0 0980013C */  lui        $at, %hi(D_8008D9AC + 0x2)
    /* 1EDC4 8002E5C4 AED92124 */  addiu      $at, $at, %lo(D_8008D9AC + 0x2)
    /* 1EDC8 8002E5C8 21082500 */  addu       $at, $at, $a1
    /* 1EDCC 8002E5CC 00002384 */  lh         $v1, 0x0($at)
    /* 1EDD0 8002E5D0 03140200 */  sra        $v0, $v0, 16
    /* 1EDD4 8002E5D4 2A104300 */  slt        $v0, $v0, $v1
    /* 1EDD8 8002E5D8 17004014 */  bnez       $v0, .Lfunc_8002E4D8_8002E638
    /* 1EDDC 8002E5DC 21206000 */   addu      $a0, $v1, $zero
    /* 1EDE0 8002E5E0 86B90008 */  j          .Lfunc_8002E4D8_8002E618
    /* 1EDE4 8002E5E4 00000000 */   nop
  .Lfunc_8002E4D8_8002E5E8:
    /* 1EDE8 8002E5E8 14008104 */  bgez       $a0, .Lfunc_8002E4D8_8002E63C
    /* 1EDEC 8002E5EC 001C0700 */   sll       $v1, $a3, 16
    /* 1EDF0 8002E5F0 00140200 */  sll        $v0, $v0, 16
    /* 1EDF4 8002E5F4 0980013C */  lui        $at, %hi(D_8008D9AC + 0x2)
    /* 1EDF8 8002E5F8 AED92124 */  addiu      $at, $at, %lo(D_8008D9AC + 0x2)
    /* 1EDFC 8002E5FC 21082500 */  addu       $at, $at, $a1
    /* 1EE00 8002E600 00002384 */  lh         $v1, 0x0($at)
    /* 1EE04 8002E604 03140200 */  sra        $v0, $v0, 16
    /* 1EE08 8002E608 21206000 */  addu       $a0, $v1, $zero
    /* 1EE0C 8002E60C 2A186200 */  slt        $v1, $v1, $v0
    /* 1EE10 8002E610 0A006014 */  bnez       $v1, .Lfunc_8002E4D8_8002E63C
    /* 1EE14 8002E614 001C0700 */   sll       $v1, $a3, 16
  .Lfunc_8002E4D8_8002E618:
    /* 1EE18 8002E618 0980013C */  lui        $at, %hi(D_8008D9AC)
    /* 1EE1C 8002E61C ACD92124 */  addiu      $at, $at, %lo(D_8008D9AC)
    /* 1EE20 8002E620 21082500 */  addu       $at, $at, $a1
    /* 1EE24 8002E624 000024A4 */  sh         $a0, 0x0($at)
    /* 1EE28 8002E628 0980013C */  lui        $at, %hi(D_8008D9A4)
    /* 1EE2C 8002E62C A4D92124 */  addiu      $at, $at, %lo(D_8008D9A4)
    /* 1EE30 8002E630 21082500 */  addu       $at, $at, $a1
    /* 1EE34 8002E634 000020A4 */  sh         $zero, 0x0($at)
  .Lfunc_8002E4D8_8002E638:
    /* 1EE38 8002E638 001C0700 */  sll        $v1, $a3, 16
  .Lfunc_8002E4D8_8002E63C:
    /* 1EE3C 8002E63C 031C0300 */  sra        $v1, $v1, 16
    /* 1EE40 8002E640 40100300 */  sll        $v0, $v1, 1
    /* 1EE44 8002E644 21104300 */  addu       $v0, $v0, $v1
    /* 1EE48 8002E648 80100200 */  sll        $v0, $v0, 2
    /* 1EE4C 8002E64C 21104300 */  addu       $v0, $v0, $v1
    /* 1EE50 8002E650 80100200 */  sll        $v0, $v0, 2
    /* 1EE54 8002E654 0980013C */  lui        $at, %hi(D_8008D9AC)
    /* 1EE58 8002E658 ACD92124 */  addiu      $at, $at, %lo(D_8008D9AC)
    /* 1EE5C 8002E65C 21082200 */  addu       $at, $at, $v0
    /* 1EE60 8002E660 00002394 */  lhu        $v1, 0x0($at)
    /* 1EE64 8002E664 0980023C */  lui        $v0, %hi(D_8008E970)
    /* 1EE68 8002E668 70E9428C */  lw         $v0, %lo(D_8008E970)($v0)
    /* 1EE6C 8002E66C 0980013C */  lui        $at, %hi(D_8008EA10)
    /* 1EE70 8002E670 10EA23A0 */  sb         $v1, %lo(D_8008EA10)($at)
    /* 1EE74 8002E674 001C0300 */  sll        $v1, $v1, 16
    /* 1EE78 8002E678 18004490 */  lbu        $a0, 0x18($v0)
    /* 1EE7C 8002E67C 031C0300 */  sra        $v1, $v1, 16
    /* 1EE80 8002E680 80130400 */  sll        $v0, $a0, 14
    /* 1EE84 8002E684 23104400 */  subu       $v0, $v0, $a0
    /* 1EE88 8002E688 18006200 */  mult       $v1, $v0
    /* 1EE8C 8002E68C 12180000 */  mflo       $v1
    /* 1EE90 8002E690 0682023C */  lui        $v0, (0x82061029 >> 16)
    /* 1EE94 8002E694 29104234 */  ori        $v0, $v0, (0x82061029 & 0xFFFF)
    /* 1EE98 8002E698 18006200 */  mult       $v1, $v0
    /* 1EE9C 8002E69C 0980043C */  lui        $a0, %hi(D_8008EA16)
    /* 1EEA0 8002E6A0 16EA8490 */  lbu        $a0, %lo(D_8008EA16)($a0)
    /* 1EEA4 8002E6A4 10100000 */  mfhi       $v0
    /* 1EEA8 8002E6A8 21104300 */  addu       $v0, $v0, $v1
    /* 1EEAC 8002E6AC 43130200 */  sra        $v0, $v0, 13
    /* 1EEB0 8002E6B0 C31F0300 */  sra        $v1, $v1, 31
    /* 1EEB4 8002E6B4 23184300 */  subu       $v1, $v0, $v1
    /* 1EEB8 8002E6B8 18006400 */  mult       $v1, $a0
    /* 1EEBC 8002E6BC 12180000 */  mflo       $v1
    /* 1EEC0 8002E6C0 0980023C */  lui        $v0, %hi(D_8008EA19)
    /* 1EEC4 8002E6C4 19EA4290 */  lbu        $v0, %lo(D_8008EA19)($v0)
    /* 1EEC8 8002E6C8 00000000 */  nop
    /* 1EECC 8002E6CC 18006200 */  mult       $v1, $v0
    /* 1EED0 8002E6D0 12180000 */  mflo       $v1
    /* 1EED4 8002E6D4 0C04023C */  lui        $v0, (0x40C2051 >> 16)
    /* 1EED8 8002E6D8 51204234 */  ori        $v0, $v0, (0x40C2051 & 0xFFFF)
    /* 1EEDC 8002E6DC 19006200 */  multu      $v1, $v0
    /* 1EEE0 8002E6E0 0980043C */  lui        $a0, %hi(D_8008EA1A)
    /* 1EEE4 8002E6E4 1AEA8490 */  lbu        $a0, %lo(D_8008EA1A)($a0)
    /* 1EEE8 8002E6E8 10100000 */  mfhi       $v0
    /* 1EEEC 8002E6EC 23186200 */  subu       $v1, $v1, $v0
    /* 1EEF0 8002E6F0 42180300 */  srl        $v1, $v1, 1
    /* 1EEF4 8002E6F4 21104300 */  addu       $v0, $v0, $v1
    /* 1EEF8 8002E6F8 421B0200 */  srl        $v1, $v0, 13
    /* 1EEFC 8002E6FC 4000822C */  sltiu      $v0, $a0, 0x40
    /* 1EF00 8002E700 06004010 */  beqz       $v0, .Lfunc_8002E4D8_8002E71C
    /* 1EF04 8002E704 21286000 */   addu      $a1, $v1, $zero
    /* 1EF08 8002E708 18006400 */  mult       $v1, $a0
    /* 1EF0C 8002E70C 21286000 */  addu       $a1, $v1, $zero
    /* 1EF10 8002E710 12100000 */  mflo       $v0
    /* 1EF14 8002E714 CDB90008 */  j          .Lfunc_8002E4D8_8002E734
    /* 1EF18 8002E718 82310200 */   srl       $a2, $v0, 6
  .Lfunc_8002E4D8_8002E71C:
    /* 1EF1C 8002E71C 7F000234 */  ori        $v0, $zero, 0x7F
    /* 1EF20 8002E720 23104400 */  subu       $v0, $v0, $a0
    /* 1EF24 8002E724 1800A200 */  mult       $a1, $v0
    /* 1EF28 8002E728 2130A000 */  addu       $a2, $a1, $zero
    /* 1EF2C 8002E72C 12100000 */  mflo       $v0
    /* 1EF30 8002E730 82290200 */  srl        $a1, $v0, 6
  .Lfunc_8002E4D8_8002E734:
    /* 1EF34 8002E734 0980043C */  lui        $a0, %hi(D_8008EA17)
    /* 1EF38 8002E738 17EA8490 */  lbu        $a0, %lo(D_8008EA17)($a0)
    /* 1EF3C 8002E73C 00000000 */  nop
    /* 1EF40 8002E740 4000822C */  sltiu      $v0, $a0, 0x40
    /* 1EF44 8002E744 08004010 */  beqz       $v0, .Lfunc_8002E4D8_8002E768
    /* 1EF48 8002E748 FFFFC230 */   andi      $v0, $a2, 0xFFFF
    /* 1EF4C 8002E74C 18004400 */  mult       $v0, $a0
    /* 1EF50 8002E750 12100000 */  mflo       $v0
    /* 1EF54 8002E754 0D004104 */  bgez       $v0, .Lfunc_8002E4D8_8002E78C
    /* 1EF58 8002E758 82310200 */   srl       $a2, $v0, 6
    /* 1EF5C 8002E75C 3F004224 */  addiu      $v0, $v0, 0x3F
    /* 1EF60 8002E760 E3B90008 */  j          .Lfunc_8002E4D8_8002E78C
    /* 1EF64 8002E764 82310200 */   srl       $a2, $v0, 6
  .Lfunc_8002E4D8_8002E768:
    /* 1EF68 8002E768 FFFFA330 */  andi       $v1, $a1, 0xFFFF
    /* 1EF6C 8002E76C 7F000234 */  ori        $v0, $zero, 0x7F
    /* 1EF70 8002E770 23104400 */  subu       $v0, $v0, $a0
    /* 1EF74 8002E774 18006200 */  mult       $v1, $v0
    /* 1EF78 8002E778 12100000 */  mflo       $v0
    /* 1EF7C 8002E77C 03004104 */  bgez       $v0, .Lfunc_8002E4D8_8002E78C
    /* 1EF80 8002E780 82290200 */   srl       $a1, $v0, 6
    /* 1EF84 8002E784 3F004224 */  addiu      $v0, $v0, 0x3F
    /* 1EF88 8002E788 82290200 */  srl        $a1, $v0, 6
  .Lfunc_8002E4D8_8002E78C:
    /* 1EF8C 8002E78C 0980043C */  lui        $a0, %hi(D_8008EA11)
    /* 1EF90 8002E790 11EA8490 */  lbu        $a0, %lo(D_8008EA11)($a0)
    /* 1EF94 8002E794 00000000 */  nop
    /* 1EF98 8002E798 4000822C */  sltiu      $v0, $a0, 0x40
    /* 1EF9C 8002E79C 08004010 */  beqz       $v0, .Lfunc_8002E4D8_8002E7C0
    /* 1EFA0 8002E7A0 FFFFC230 */   andi      $v0, $a2, 0xFFFF
    /* 1EFA4 8002E7A4 18004400 */  mult       $v0, $a0
    /* 1EFA8 8002E7A8 12100000 */  mflo       $v0
    /* 1EFAC 8002E7AC 0D004104 */  bgez       $v0, .Lfunc_8002E4D8_8002E7E4
    /* 1EFB0 8002E7B0 82310200 */   srl       $a2, $v0, 6
    /* 1EFB4 8002E7B4 3F004224 */  addiu      $v0, $v0, 0x3F
    /* 1EFB8 8002E7B8 F9B90008 */  j          .Lfunc_8002E4D8_8002E7E4
    /* 1EFBC 8002E7BC 82310200 */   srl       $a2, $v0, 6
  .Lfunc_8002E4D8_8002E7C0:
    /* 1EFC0 8002E7C0 FFFFA330 */  andi       $v1, $a1, 0xFFFF
    /* 1EFC4 8002E7C4 7F000234 */  ori        $v0, $zero, 0x7F
    /* 1EFC8 8002E7C8 23104400 */  subu       $v0, $v0, $a0
    /* 1EFCC 8002E7CC 18006200 */  mult       $v1, $v0
    /* 1EFD0 8002E7D0 12100000 */  mflo       $v0
    /* 1EFD4 8002E7D4 03004104 */  bgez       $v0, .Lfunc_8002E4D8_8002E7E4
    /* 1EFD8 8002E7D8 82290200 */   srl       $a1, $v0, 6
    /* 1EFDC 8002E7DC 3F004224 */  addiu      $v0, $v0, 0x3F
    /* 1EFE0 8002E7E0 82290200 */  srl        $a1, $v0, 6
  .Lfunc_8002E4D8_8002E7E4:
    /* 1EFE4 8002E7E4 0980033C */  lui        $v1, %hi(D_8008E8C0)
    /* 1EFE8 8002E7E8 C0E86384 */  lh         $v1, %lo(D_8008E8C0)($v1)
    /* 1EFEC 8002E7EC 01000234 */  ori        $v0, $zero, 0x1
    /* 1EFF0 8002E7F0 09006214 */  bne        $v1, $v0, .Lfunc_8002E4D8_8002E818
    /* 1EFF4 8002E7F4 00240800 */   sll       $a0, $t0, 16
    /* 1EFF8 8002E7F8 FFFFC330 */  andi       $v1, $a2, 0xFFFF
    /* 1EFFC 8002E7FC FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 1F000 8002E800 2B104300 */  sltu       $v0, $v0, $v1
    /* 1F004 8002E804 03004010 */  beqz       $v0, .Lfunc_8002E4D8_8002E814
    /* 1F008 8002E808 00000000 */   nop
    /* 1F00C 8002E80C 06BA0008 */  j          .Lfunc_8002E4D8_8002E818
    /* 1F010 8002E810 2128C000 */   addu      $a1, $a2, $zero
  .Lfunc_8002E4D8_8002E814:
    /* 1F014 8002E814 2130A000 */  addu       $a2, $a1, $zero
  .Lfunc_8002E4D8_8002E818:
    /* 1F018 8002E818 C3230400 */  sra        $a0, $a0, 15
    /* 1F01C 8002E81C 001C0700 */  sll        $v1, $a3, 16
    /* 1F020 8002E820 031C0300 */  sra        $v1, $v1, 16
    /* 1F024 8002E824 0980013C */  lui        $at, %hi(gVoiceAttrTable + 0x2)
    /* 1F028 8002E828 F2D72124 */  addiu      $at, $at, %lo(gVoiceAttrTable + 0x2)
    /* 1F02C 8002E82C 21082400 */  addu       $at, $at, $a0
    /* 1F030 8002E830 000026A4 */  sh         $a2, 0x0($at)
    /* 1F034 8002E834 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 1F038 8002E838 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 1F03C 8002E83C 21082300 */  addu       $at, $at, $v1
    /* 1F040 8002E840 00002290 */  lbu        $v0, 0x0($at)
    /* 1F044 8002E844 0980013C */  lui        $at, %hi(gVoiceAttrTable)
    /* 1F048 8002E848 F0D72124 */  addiu      $at, $at, %lo(gVoiceAttrTable)
    /* 1F04C 8002E84C 21082400 */  addu       $at, $at, $a0
    /* 1F050 8002E850 000025A4 */  sh         $a1, 0x0($at)
    /* 1F054 8002E854 03004234 */  ori        $v0, $v0, 0x3
    /* 1F058 8002E858 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 1F05C 8002E85C 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 1F060 8002E860 21082300 */  addu       $at, $at, $v1
    /* 1F064 8002E864 000022A0 */  sb         $v0, 0x0($at)
  .Lfunc_8002E4D8_8002E868:
    /* 1F068 8002E868 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1F06C 8002E86C 0800E003 */  jr         $ra
    /* 1F070 8002E870 00000000 */   nop
endlabel SndApplyVoiceVolume
