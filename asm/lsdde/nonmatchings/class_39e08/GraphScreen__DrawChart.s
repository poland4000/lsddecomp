.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching GraphScreen__DrawChart, 0xE0

glabel GraphScreen__DrawChart
    /* 48DB4 800585B4 6704A280 */  lb         $v0, 0x467($a1)
    /* 48DB8 800585B8 00000000 */  nop
    /* 48DBC 800585BC 31004014 */  bnez       $v0, .Lfunc_800585B4_80058684
    /* 48DC0 800585C0 F8FFBD27 */   addiu     $sp, $sp, -0x8
    /* 48DC4 800585C4 0400A28C */  lw         $v0, 0x4($a1)
    /* 48DC8 800585C8 00000000 */  nop
    /* 48DCC 800585CC 07004014 */  bnez       $v0, .Lfunc_800585B4_800585EC
    /* 48DD0 800585D0 64000A34 */   ori       $t2, $zero, 0x64
    /* 48DD4 800585D4 0800AA8C */  lw         $t2, 0x8($a1)
    /* 48DD8 800585D8 00000000 */  nop
    /* 48DDC 800585DC 65004229 */  slti       $v0, $t2, 0x65
    /* 48DE0 800585E0 03004014 */  bnez       $v0, .Lfunc_800585B4_800585F0
    /* 48DE4 800585E4 21480000 */   addu      $t1, $zero, $zero
    /* 48DE8 800585E8 64000A34 */  ori        $t2, $zero, 0x64
  .Lfunc_800585B4_800585EC:
    /* 48DEC 800585EC 21480000 */  addu       $t1, $zero, $zero
  .Lfunc_800585B4_800585F0:
    /* 48DF0 800585F0 21380000 */  addu       $a3, $zero, $zero
  .Lfunc_800585B4_800585F4:
    /* 48DF4 800585F4 0800A28C */  lw         $v0, 0x8($a1)
    /* 48DF8 800585F8 21400000 */  addu       $t0, $zero, $zero
    /* 48DFC 800585FC 17004019 */  blez       $t2, .Lfunc_800585B4_8005865C
    /* 48E00 80058600 FFFF4624 */   addiu     $a2, $v0, -0x1
    /* 48E04 80058604 40580900 */  sll        $t3, $t1, 1
  .Lfunc_800585B4_80058608:
    /* 48E08 80058608 0300C104 */  bgez       $a2, .Lfunc_800585B4_80058618
    /* 48E0C 8005860C 40100600 */   sll       $v0, $a2, 1
    /* 48E10 80058610 6C010634 */  ori        $a2, $zero, 0x16C
    /* 48E14 80058614 40100600 */  sll        $v0, $a2, 1
  .Lfunc_800585B4_80058618:
    /* 48E18 80058618 2110A200 */  addu       $v0, $a1, $v0
    /* 48E1C 8005861C 0880013C */  lui        $at, %hi(D_80087BD4)
    /* 48E20 80058620 D47B2124 */  addiu      $at, $at, %lo(D_80087BD4)
    /* 48E24 80058624 21082B00 */  addu       $at, $at, $t3
    /* 48E28 80058628 00002384 */  lh         $v1, 0x0($at)
    /* 48E2C 8005862C 18004284 */  lh         $v0, 0x18($v0)
    /* 48E30 80058630 00000000 */  nop
    /* 48E34 80058634 05006214 */  bne        $v1, $v0, .Lfunc_800585B4_8005864C
    /* 48E38 80058638 FFFFC624 */   addiu     $a2, $a2, -0x1
    /* 48E3C 8005863C 4002828C */  lw         $v0, 0x240($a0)
    /* 48E40 80058640 01000825 */  addiu      $t0, $t0, 0x1
    /* 48E44 80058644 21104900 */  addu       $v0, $v0, $t1
    /* 48E48 80058648 000047A0 */  sb         $a3, 0x0($v0)
  .Lfunc_800585B4_8005864C:
    /* 48E4C 8005864C 0100E724 */  addiu      $a3, $a3, 0x1
    /* 48E50 80058650 2A10EA00 */  slt        $v0, $a3, $t2
    /* 48E54 80058654 ECFF4014 */  bnez       $v0, .Lfunc_800585B4_80058608
    /* 48E58 80058658 00000000 */   nop
  .Lfunc_800585B4_8005865C:
    /* 48E5C 8005865C 09000011 */  beqz       $t0, .Lfunc_800585B4_80058684
    /* 48E60 80058660 01002925 */   addiu     $t1, $t1, 0x1
    /* 48E64 80058664 0400222D */  sltiu      $v0, $t1, 0x4
    /* 48E68 80058668 E2FF4014 */  bnez       $v0, .Lfunc_800585B4_800585F4
    /* 48E6C 8005866C 21380000 */   addu      $a3, $zero, $zero
    /* 48E70 80058670 01000234 */  ori        $v0, $zero, 0x1
    /* 48E74 80058674 01000334 */  ori        $v1, $zero, 0x1
    /* 48E78 80058678 6704A3A0 */  sb         $v1, 0x467($a1)
    /* 48E7C 8005867C A2610108 */  j          .Lfunc_800585B4_80058688
    /* 48E80 80058680 3C0280AC */   sw        $zero, 0x23C($a0)
  .Lfunc_800585B4_80058684:
    /* 48E84 80058684 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_800585B4_80058688:
    /* 48E88 80058688 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 48E8C 8005868C 0800E003 */  jr         $ra
    /* 48E90 80058690 00000000 */   nop
endlabel GraphScreen__DrawChart
