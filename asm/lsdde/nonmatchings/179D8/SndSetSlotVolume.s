.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndSetSlotVolume, 0x10C

glabel SndSetSlotVolume
    /* 23CF0 800334F0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 23CF4 800334F4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 23CF8 800334F8 00240400 */  sll        $a0, $a0, 16
    /* 23CFC 800334FC 03240400 */  sra        $a0, $a0, 16
    /* 23D00 80033500 1800BFAF */  sw         $ra, 0x18($sp)
    /* 23D04 80033504 1000B0AF */  sw         $s0, 0x10($sp)
    /* 23D08 80033508 0980013C */  lui        $at, %hi(gSeqSlotStates)
    /* 23D0C 8003350C 2CEA2124 */  addiu      $at, $at, %lo(gSeqSlotStates)
    /* 23D10 80033510 21082400 */  addu       $at, $at, $a0
    /* 23D14 80033514 00002390 */  lbu        $v1, 0x0($at)
    /* 23D18 80033518 01000234 */  ori        $v0, $zero, 0x1
    /* 23D1C 8003351C 03006210 */  beq        $v1, $v0, .Lfunc_800334F0_8003352C
    /* 23D20 80033520 2188C000 */   addu      $s1, $a2, $zero
    /* 23D24 80033524 79CD0008 */  j          .Lfunc_800334F0_800335E4
    /* 23D28 80033528 FFFF0224 */   addiu     $v0, $zero, -0x1
  .Lfunc_800334F0_8003352C:
    /* 23D2C 8003352C 00840500 */  sll        $s0, $a1, 16
    /* 23D30 80033530 03841000 */  sra        $s0, $s0, 16
    /* 23D34 80033534 52C8000C */  jal        SndValidateSeqChannel
    /* 23D38 80033538 21280002 */   addu      $a1, $s0, $zero
    /* 23D3C 8003353C 0980023C */  lui        $v0, %hi(gSeqChannelTable)
    /* 23D40 80033540 68E9428C */  lw         $v0, %lo(gSeqChannelTable)($v0)
    /* 23D44 80033544 00811000 */  sll        $s0, $s0, 4
    /* 23D48 80033548 21100202 */  addu       $v0, $s0, $v0
    /* 23D4C 8003354C 00004290 */  lbu        $v0, 0x0($v0)
    /* 23D50 80033550 00000000 */  nop
    /* 23D54 80033554 000022A2 */  sb         $v0, 0x0($s1)
    /* 23D58 80033558 0980023C */  lui        $v0, %hi(gSeqChannelTable)
    /* 23D5C 8003355C 68E9428C */  lw         $v0, %lo(gSeqChannelTable)($v0)
    /* 23D60 80033560 00000000 */  nop
    /* 23D64 80033564 21100202 */  addu       $v0, $s0, $v0
    /* 23D68 80033568 01004290 */  lbu        $v0, 0x1($v0)
    /* 23D6C 8003356C 00000000 */  nop
    /* 23D70 80033570 010022A2 */  sb         $v0, 0x1($s1)
    /* 23D74 80033574 0980023C */  lui        $v0, %hi(gSeqChannelTable)
    /* 23D78 80033578 68E9428C */  lw         $v0, %lo(gSeqChannelTable)($v0)
    /* 23D7C 8003357C 00000000 */  nop
    /* 23D80 80033580 21100202 */  addu       $v0, $s0, $v0
    /* 23D84 80033584 02004290 */  lbu        $v0, 0x2($v0)
    /* 23D88 80033588 00000000 */  nop
    /* 23D8C 8003358C 020022A2 */  sb         $v0, 0x2($s1)
    /* 23D90 80033590 0980023C */  lui        $v0, %hi(gSeqChannelTable)
    /* 23D94 80033594 68E9428C */  lw         $v0, %lo(gSeqChannelTable)($v0)
    /* 23D98 80033598 00000000 */  nop
    /* 23D9C 8003359C 21100202 */  addu       $v0, $s0, $v0
    /* 23DA0 800335A0 03004290 */  lbu        $v0, 0x3($v0)
    /* 23DA4 800335A4 00000000 */  nop
    /* 23DA8 800335A8 030022A2 */  sb         $v0, 0x3($s1)
    /* 23DAC 800335AC 0980023C */  lui        $v0, %hi(gSeqChannelTable)
    /* 23DB0 800335B0 68E9428C */  lw         $v0, %lo(gSeqChannelTable)($v0)
    /* 23DB4 800335B4 00000000 */  nop
    /* 23DB8 800335B8 21100202 */  addu       $v0, $s0, $v0
    /* 23DBC 800335BC 04004290 */  lbu        $v0, 0x4($v0)
    /* 23DC0 800335C0 00000000 */  nop
    /* 23DC4 800335C4 040022A2 */  sb         $v0, 0x4($s1)
    /* 23DC8 800335C8 0980023C */  lui        $v0, %hi(gSeqChannelTable)
    /* 23DCC 800335CC 68E9428C */  lw         $v0, %lo(gSeqChannelTable)($v0)
    /* 23DD0 800335D0 00000000 */  nop
    /* 23DD4 800335D4 21800202 */  addu       $s0, $s0, $v0
    /* 23DD8 800335D8 06000396 */  lhu        $v1, 0x6($s0)
    /* 23DDC 800335DC 21100000 */  addu       $v0, $zero, $zero
    /* 23DE0 800335E0 060023A6 */  sh         $v1, 0x6($s1)
  .Lfunc_800334F0_800335E4:
    /* 23DE4 800335E4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 23DE8 800335E8 1400B18F */  lw         $s1, 0x14($sp)
    /* 23DEC 800335EC 1000B08F */  lw         $s0, 0x10($sp)
    /* 23DF0 800335F0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 23DF4 800335F4 0800E003 */  jr         $ra
    /* 23DF8 800335F8 00000000 */   nop
endlabel SndSetSlotVolume
