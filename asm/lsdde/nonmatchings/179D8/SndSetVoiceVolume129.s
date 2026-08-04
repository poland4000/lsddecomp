.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndSetVoiceVolume129, 0x9C

glabel SndSetVoiceVolume129
    /* 225F8 80031DF8 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 225FC 80031DFC FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 22600 80031E00 1800422C */  sltiu      $v0, $v0, 0x18
    /* 22604 80031E04 03004014 */  bnez       $v0, .Lfunc_80031DF8_80031E14
    /* 22608 80031E08 2118C000 */   addu      $v1, $a2, $zero
    /* 2260C 80031E0C A2C70008 */  j          .Lfunc_80031DF8_80031E88
    /* 22610 80031E10 FFFF0224 */   addiu     $v0, $zero, -0x1
  .Lfunc_80031DF8_80031E14:
    /* 22614 80031E14 00140500 */  sll        $v0, $a1, 16
    /* 22618 80031E18 03140200 */  sra        $v0, $v0, 16
    /* 2261C 80031E1C C0310200 */  sll        $a2, $v0, 7
    /* 22620 80031E20 2130C200 */  addu       $a2, $a2, $v0
    /* 22624 80031E24 00140300 */  sll        $v0, $v1, 16
    /* 22628 80031E28 03140200 */  sra        $v0, $v0, 16
    /* 2262C 80031E2C C0190200 */  sll        $v1, $v0, 7
    /* 22630 80031E30 21186200 */  addu       $v1, $v1, $v0
    /* 22634 80031E34 00240400 */  sll        $a0, $a0, 16
    /* 22638 80031E38 03240400 */  sra        $a0, $a0, 16
    /* 2263C 80031E3C 00290400 */  sll        $a1, $a0, 4
    /* 22640 80031E40 0980013C */  lui        $at, %hi(gVoiceAttrTable + 0x2)
    /* 22644 80031E44 F2D72124 */  addiu      $at, $at, %lo(gVoiceAttrTable + 0x2)
    /* 22648 80031E48 21082500 */  addu       $at, $at, $a1
    /* 2264C 80031E4C 000023A4 */  sh         $v1, 0x0($at)
    /* 22650 80031E50 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 22654 80031E54 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 22658 80031E58 21082400 */  addu       $at, $at, $a0
    /* 2265C 80031E5C 00002390 */  lbu        $v1, 0x0($at)
    /* 22660 80031E60 21100000 */  addu       $v0, $zero, $zero
    /* 22664 80031E64 0980013C */  lui        $at, %hi(gVoiceAttrTable)
    /* 22668 80031E68 F0D72124 */  addiu      $at, $at, %lo(gVoiceAttrTable)
    /* 2266C 80031E6C 21082500 */  addu       $at, $at, $a1
    /* 22670 80031E70 000026A4 */  sh         $a2, 0x0($at)
    /* 22674 80031E74 03006334 */  ori        $v1, $v1, 0x3
    /* 22678 80031E78 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 2267C 80031E7C 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 22680 80031E80 21082400 */  addu       $at, $at, $a0
    /* 22684 80031E84 000023A0 */  sb         $v1, 0x0($at)
  .Lfunc_80031DF8_80031E88:
    /* 22688 80031E88 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 2268C 80031E8C 0800E003 */  jr         $ra
    /* 22690 80031E90 00000000 */   nop
endlabel SndSetVoiceVolume129
