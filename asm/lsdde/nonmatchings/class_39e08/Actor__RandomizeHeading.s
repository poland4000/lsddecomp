.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching Actor__RandomizeHeading, 0xE4

glabel Actor__RandomizeHeading
    /* 47644 80056E44 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 47648 80056E48 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4764C 80056E4C 88009024 */  addiu      $s0, $a0, 0x88
    /* 47650 80056E50 1400B1AF */  sw         $s1, 0x14($sp)
    /* 47654 80056E54 21880000 */  addu       $s1, $zero, $zero
    /* 47658 80056E58 1800BFAF */  sw         $ra, 0x18($sp)
  .Lfunc_80056E44_80056E5C:
    /* 4765C 80056E5C 2025010C */  jal        rand
    /* 47660 80056E60 01003126 */   addiu     $s1, $s1, 0x1
    /* 47664 80056E64 AAAA033C */  lui        $v1, (0xAAAAAAAB >> 16)
    /* 47668 80056E68 ABAA6334 */  ori        $v1, $v1, (0xAAAAAAAB & 0xFFFF)
    /* 4766C 80056E6C 19004300 */  multu      $v0, $v1
    /* 47670 80056E70 01000534 */  ori        $a1, $zero, 0x1
    /* 47674 80056E74 10200000 */  mfhi       $a0
    /* 47678 80056E78 82200400 */  srl        $a0, $a0, 2
    /* 4767C 80056E7C 40180400 */  sll        $v1, $a0, 1
    /* 47680 80056E80 21186400 */  addu       $v1, $v1, $a0
    /* 47684 80056E84 40180300 */  sll        $v1, $v1, 1
    /* 47688 80056E88 23104300 */  subu       $v0, $v0, $v1
    /* 4768C 80056E8C 40300200 */  sll        $a2, $v0, 1
    /* 47690 80056E90 2130C200 */  addu       $a2, $a2, $v0
    /* 47694 80056E94 0000048E */  lw         $a0, 0x0($s0)
    /* 47698 80056E98 80300600 */  sll        $a2, $a2, 2
    /* 4769C 80056E9C 0000828C */  lw         $v0, 0x0($a0)
    /* 476A0 80056EA0 0880033C */  lui        $v1, %hi(D_8008788C)
    /* 476A4 80056EA4 8C786324 */  addiu      $v1, $v1, %lo(D_8008788C)
    /* 476A8 80056EA8 4800428C */  lw         $v0, 0x48($v0)
    /* 476AC 80056EAC 00000000 */  nop
    /* 476B0 80056EB0 09F84000 */  jalr       $v0
    /* 476B4 80056EB4 2130C300 */   addu      $a2, $a2, $v1
    /* 476B8 80056EB8 2025010C */  jal        rand
    /* 476BC 80056EBC 00000000 */   nop
    /* 476C0 80056EC0 0BB6033C */  lui        $v1, (0xB60B60B7 >> 16)
    /* 476C4 80056EC4 B7606334 */  ori        $v1, $v1, (0xB60B60B7 & 0xFFFF)
    /* 476C8 80056EC8 18004300 */  mult       $v0, $v1
    /* 476CC 80056ECC 0000058E */  lw         $a1, 0x0($s0)
    /* 476D0 80056ED0 C3270200 */  sra        $a0, $v0, 31
    /* 476D4 80056ED4 10180000 */  mfhi       $v1
    /* 476D8 80056ED8 21186200 */  addu       $v1, $v1, $v0
    /* 476DC 80056EDC 031A0300 */  sra        $v1, $v1, 8
    /* 476E0 80056EE0 23186400 */  subu       $v1, $v1, $a0
    /* 476E4 80056EE4 40200300 */  sll        $a0, $v1, 1
    /* 476E8 80056EE8 21208300 */  addu       $a0, $a0, $v1
    /* 476EC 80056EEC 00190400 */  sll        $v1, $a0, 4
    /* 476F0 80056EF0 23186400 */  subu       $v1, $v1, $a0
    /* 476F4 80056EF4 C0180300 */  sll        $v1, $v1, 3
    /* 476F8 80056EF8 23104300 */  subu       $v0, $v0, $v1
    /* 476FC 80056EFC 00130200 */  sll        $v0, $v0, 12
    /* 47700 80056F00 8400A2AC */  sw         $v0, 0x84($a1)
    /* 47704 80056F04 0400222A */  slti       $v0, $s1, 0x4
    /* 47708 80056F08 D4FF4014 */  bnez       $v0, .Lfunc_80056E44_80056E5C
    /* 4770C 80056F0C 04001026 */   addiu     $s0, $s0, 0x4
    /* 47710 80056F10 1800BF8F */  lw         $ra, 0x18($sp)
    /* 47714 80056F14 1400B18F */  lw         $s1, 0x14($sp)
    /* 47718 80056F18 1000B08F */  lw         $s0, 0x10($sp)
    /* 4771C 80056F1C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 47720 80056F20 0800E003 */  jr         $ra
    /* 47724 80056F24 00000000 */   nop
endlabel Actor__RandomizeHeading
