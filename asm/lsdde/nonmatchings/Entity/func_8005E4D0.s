.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005E4D0, 0x1C4

glabel func_8005E4D0
    /* 4ECD0 8005E4D0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4ECD4 8005E4D4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4ECD8 8005E4D8 21808000 */  addu       $s0, $a0, $zero
    /* 4ECDC 8005E4DC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 4ECE0 8005E4E0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4ECE4 8005E4E4 0000028E */  lw         $v0, 0x0($s0)
    /* 4ECE8 8005E4E8 00000000 */  nop
    /* 4ECEC 8005E4EC 4801428C */  lw         $v0, 0x148($v0)
    /* 4ECF0 8005E4F0 00000000 */  nop
    /* 4ECF4 8005E4F4 09F84000 */  jalr       $v0
    /* 4ECF8 8005E4F8 2188A000 */   addu      $s1, $a1, $zero
    /* 4ECFC 8005E4FC 100022AE */  sw         $v0, 0x10($s1)
    /* 4ED00 8005E500 8000028E */  lw         $v0, 0x80($s0)
    /* 4ED04 8005E504 00000000 */  nop
    /* 4ED08 8005E508 C21F0200 */  srl        $v1, $v0, 31
    /* 4ED0C 8005E50C 21104300 */  addu       $v0, $v0, $v1
    /* 4ED10 8005E510 8400038E */  lw         $v1, 0x84($s0)
    /* 4ED14 8005E514 43100200 */  sra        $v0, $v0, 1
    /* 4ED18 8005E518 09006214 */  bne        $v1, $v0, .Lfunc_8005E4D0_8005E540
    /* 4ED1C 8005E51C 0BB6023C */   lui       $v0, (0xB60B60B7 >> 16)
    /* 4ED20 8005E520 07000234 */  ori        $v0, $zero, 0x7
    /* 4ED24 8005E524 FEFF0324 */  addiu      $v1, $zero, -0x2
    /* 4ED28 8005E528 1C0022AE */  sw         $v0, 0x1C($s1)
    /* 4ED2C 8005E52C 03000234 */  ori        $v0, $zero, 0x3
    /* 4ED30 8005E530 200023AE */  sw         $v1, 0x20($s1)
    /* 4ED34 8005E534 300022AE */  sw         $v0, 0x30($s1)
    /* 4ED38 8005E538 340023AE */  sw         $v1, 0x34($s1)
    /* 4ED3C 8005E53C 0BB6023C */  lui        $v0, (0xB60B60B7 >> 16)
  .Lfunc_8005E4D0_8005E540:
    /* 4ED40 8005E540 0400248E */  lw         $a0, 0x4($s1)
    /* 4ED44 8005E544 B7604234 */  ori        $v0, $v0, (0xB60B60B7 & 0xFFFF)
    /* 4ED48 8005E548 18008200 */  mult       $a0, $v0
    /* 4ED4C 8005E54C C31F0400 */  sra        $v1, $a0, 31
    /* 4ED50 8005E550 10100000 */  mfhi       $v0
    /* 4ED54 8005E554 21104400 */  addu       $v0, $v0, $a0
    /* 4ED58 8005E558 83110200 */  sra        $v0, $v0, 6
    /* 4ED5C 8005E55C 23104300 */  subu       $v0, $v0, $v1
    /* 4ED60 8005E560 40180200 */  sll        $v1, $v0, 1
    /* 4ED64 8005E564 21186200 */  addu       $v1, $v1, $v0
    /* 4ED68 8005E568 00110300 */  sll        $v0, $v1, 4
    /* 4ED6C 8005E56C 23104300 */  subu       $v0, $v0, $v1
    /* 4ED70 8005E570 40100200 */  sll        $v0, $v0, 1
    /* 4ED74 8005E574 23208200 */  subu       $a0, $a0, $v0
    /* 4ED78 8005E578 03008428 */  slti       $a0, $a0, 0x3
    /* 4ED7C 8005E57C 04008010 */  beqz       $a0, .Lfunc_8005E4D0_8005E590
    /* 4ED80 8005E580 06000234 */   ori       $v0, $zero, 0x6
    /* 4ED84 8005E584 440022AE */  sw         $v0, 0x44($s1)
    /* 4ED88 8005E588 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4ED8C 8005E58C 480022AE */  sw         $v0, 0x48($s1)
  .Lfunc_8005E4D0_8005E590:
    /* 4ED90 8005E590 FC00038E */  lw         $v1, 0xFC($s0)
    /* 4ED94 8005E594 00000000 */  nop
    /* 4ED98 8005E598 79006228 */  slti       $v0, $v1, 0x79
    /* 4ED9C 8005E59C 0D004014 */  bnez       $v0, .Lfunc_8005E4D0_8005E5D4
    /* 4EDA0 8005E5A0 38006228 */   slti      $v0, $v1, 0x38
    /* 4EDA4 8005E5A4 21200002 */  addu       $a0, $s0, $zero
    /* 4EDA8 8005E5A8 0000028E */  lw         $v0, 0x0($s0)
    /* 4EDAC 8005E5AC 00000000 */  nop
    /* 4EDB0 8005E5B0 4400428C */  lw         $v0, 0x44($v0)
    /* 4EDB4 8005E5B4 0980063C */  lui        $a2, %hi(D_80089CA0)
    /* 4EDB8 8005E5B8 A09CC624 */  addiu      $a2, $a2, %lo(D_80089CA0)
    /* 4EDBC 8005E5BC 09F84000 */  jalr       $v0
    /* 4EDC0 8005E5C0 21280000 */   addu      $a1, $zero, $zero
    /* 4EDC4 8005E5C4 21200002 */  addu       $a0, $s0, $zero
    /* 4EDC8 8005E5C8 0000828C */  lw         $v0, 0x0($a0)
    /* 4EDCC 8005E5CC 94790108 */  j          .Lfunc_8005E4D0_8005E650
    /* 4EDD0 8005E5D0 C0FE0524 */   addiu     $a1, $zero, -0x140
  .Lfunc_8005E4D0_8005E5D4:
    /* 4EDD4 8005E5D4 08004010 */  beqz       $v0, .Lfunc_8005E4D0_8005E5F8
    /* 4EDD8 8005E5D8 21200002 */   addu      $a0, $s0, $zero
    /* 4EDDC 8005E5DC 01000634 */  ori        $a2, $zero, 0x1
    /* 4EDE0 8005E5E0 1400058E */  lw         $a1, 0x14($s0)
    /* 4EDE4 8005E5E4 01000734 */  ori        $a3, $zero, 0x1
    /* 4EDE8 8005E5E8 C575010C */  jal        Entity__IsPlayerInRange
    /* 4EDEC 8005E5EC 1800A524 */   addiu     $a1, $a1, 0x18
    /* 4EDF0 8005E5F0 0A004010 */  beqz       $v0, .Lfunc_8005E4D0_8005E61C
    /* 4EDF4 8005E5F4 00000000 */   nop
  .Lfunc_8005E4D0_8005E5F8:
    /* 4EDF8 8005E5F8 0000028E */  lw         $v0, 0x0($s0)
    /* 4EDFC 8005E5FC 00000000 */  nop
    /* 4EE00 8005E600 BC00428C */  lw         $v0, 0xBC($v0)
    /* 4EE04 8005E604 0980053C */  lui        $a1, %hi(D_80089D78)
    /* 4EE08 8005E608 789DA524 */  addiu      $a1, $a1, %lo(D_80089D78)
    /* 4EE0C 8005E60C 09F84000 */  jalr       $v0
    /* 4EE10 8005E610 21200002 */   addu      $a0, $s0, $zero
    /* 4EE14 8005E614 9F790108 */  j          .Lfunc_8005E4D0_8005E67C
    /* 4EE18 8005E618 00000000 */   nop
  .Lfunc_8005E4D0_8005E61C:
    /* 4EE1C 8005E61C FC00028E */  lw         $v0, 0xFC($s0)
    /* 4EE20 8005E620 00000000 */  nop
    /* 4EE24 8005E624 0A004228 */  slti       $v0, $v0, 0xA
    /* 4EE28 8005E628 0F004014 */  bnez       $v0, .Lfunc_8005E4D0_8005E668
    /* 4EE2C 8005E62C 21200002 */   addu      $a0, $s0, $zero
    /* 4EE30 8005E630 01000634 */  ori        $a2, $zero, 0x1
    /* 4EE34 8005E634 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4EE38 8005E638 9400058E */  lw         $a1, 0x94($s0)
    /* 4EE3C 8005E63C B37A000C */  jal        FaceTowards
    /* 4EE40 8005E640 21380000 */   addu      $a3, $zero, $zero
    /* 4EE44 8005E644 21200002 */  addu       $a0, $s0, $zero
    /* 4EE48 8005E648 0000828C */  lw         $v0, 0x0($a0)
    /* 4EE4C 8005E64C 00FF0524 */  addiu      $a1, $zero, -0x100
  .Lfunc_8005E4D0_8005E650:
    /* 4EE50 8005E650 C400428C */  lw         $v0, 0xC4($v0)
    /* 4EE54 8005E654 00000000 */  nop
    /* 4EE58 8005E658 09F84000 */  jalr       $v0
    /* 4EE5C 8005E65C 21300000 */   addu      $a2, $zero, $zero
    /* 4EE60 8005E660 9F790108 */  j          .Lfunc_8005E4D0_8005E67C
    /* 4EE64 8005E664 00000000 */   nop
  .Lfunc_8005E4D0_8005E668:
    /* 4EE68 8005E668 01000634 */  ori        $a2, $zero, 0x1
    /* 4EE6C 8005E66C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4EE70 8005E670 9400858C */  lw         $a1, 0x94($a0)
    /* 4EE74 8005E674 B37A000C */  jal        FaceTowards
    /* 4EE78 8005E678 21380000 */   addu      $a3, $zero, $zero
  .Lfunc_8005E4D0_8005E67C:
    /* 4EE7C 8005E67C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 4EE80 8005E680 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4EE84 8005E684 1800B08F */  lw         $s0, 0x18($sp)
    /* 4EE88 8005E688 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 4EE8C 8005E68C 0800E003 */  jr         $ra
    /* 4EE90 8005E690 00000000 */   nop
endlabel func_8005E4D0
