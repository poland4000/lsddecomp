.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamSys__TimerTick, 0xF8

glabel DreamSys__TimerTick
    /* 49594 80058D94 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 49598 80058D98 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4959C 80058D9C 21808000 */  addu       $s0, $a0, $zero
    /* 495A0 80058DA0 02000234 */  ori        $v0, $zero, 0x2
    /* 495A4 80058DA4 3400C214 */  bne        $a2, $v0, .LDreamSys__TimerTick_80058E78
    /* 495A8 80058DA8 1400BFAF */   sw        $ra, 0x14($sp)
    /* 495AC 80058DAC 2400028E */  lw         $v0, 0x24($s0)
    /* 495B0 80058DB0 3401048E */  lw         $a0, 0x134($s0)
    /* 495B4 80058DB4 01004324 */  addiu      $v1, $v0, 0x1
    /* 495B8 80058DB8 2B104400 */  sltu       $v0, $v0, $a0
    /* 495BC 80058DBC 22004014 */  bnez       $v0, .LDreamSys__TimerTick_80058E48
    /* 495C0 80058DC0 240003AE */   sw        $v1, 0x24($s0)
    /* 495C4 80058DC4 6800028E */  lw         $v0, 0x68($s0)
    /* 495C8 80058DC8 00000000 */  nop
    /* 495CC 80058DCC 0F004010 */  beqz       $v0, .LDreamSys__TimerTick_80058E0C
    /* 495D0 80058DD0 21280000 */   addu      $a1, $zero, $zero
    /* 495D4 80058DD4 4400028E */  lw         $v0, 0x44($s0)
    /* 495D8 80058DD8 00000000 */  nop
    /* 495DC 80058DDC 09004014 */  bnez       $v0, .LDreamSys__TimerTick_80058E04
    /* 495E0 80058DE0 21200002 */   addu      $a0, $s0, $zero
    /* 495E4 80058DE4 0000028E */  lw         $v0, 0x0($s0)
    /* 495E8 80058DE8 00000000 */  nop
    /* 495EC 80058DEC CC01428C */  lw         $v0, 0x1CC($v0)
    /* 495F0 80058DF0 00000000 */  nop
    /* 495F4 80058DF4 09F84000 */  jalr       $v0
    /* 495F8 80058DF8 21280000 */   addu      $a1, $zero, $zero
    /* 495FC 80058DFC 0A004010 */  beqz       $v0, .LDreamSys__TimerTick_80058E28
    /* 49600 80058E00 00000000 */   nop
  .LDreamSys__TimerTick_80058E04:
    /* 49604 80058E04 9E630108 */  j          .LDreamSys__TimerTick_80058E78
    /* 49608 80058E08 240000AE */   sw        $zero, 0x24($s0)
  .LDreamSys__TimerTick_80058E0C:
    /* 4960C 80058E0C 21200002 */  addu       $a0, $s0, $zero
    /* 49610 80058E10 0000028E */  lw         $v0, 0x0($s0)
    /* 49614 80058E14 00000000 */  nop
    /* 49618 80058E18 1802428C */  lw         $v0, 0x218($v0)
    /* 4961C 80058E1C 00000000 */  nop
    /* 49620 80058E20 09F84000 */  jalr       $v0
    /* 49624 80058E24 10000634 */   ori       $a2, $zero, 0x10
  .LDreamSys__TimerTick_80058E28:
    /* 49628 80058E28 0000028E */  lw         $v0, 0x0($s0)
    /* 4962C 80058E2C 21200002 */  addu       $a0, $s0, $zero
    /* 49630 80058E30 3000428C */  lw         $v0, 0x30($v0)
    /* 49634 80058E34 00000000 */  nop
    /* 49638 80058E38 09F84000 */  jalr       $v0
    /* 4963C 80058E3C 0A000534 */   ori       $a1, $zero, 0xA
    /* 49640 80058E40 9E630108 */  j          .LDreamSys__TimerTick_80058E78
    /* 49644 80058E44 240000AE */   sw        $zero, 0x24($s0)
  .LDreamSys__TimerTick_80058E48:
    /* 49648 80058E48 0000028E */  lw         $v0, 0x0($s0)
    /* 4964C 80058E4C 00000000 */  nop
    /* 49650 80058E50 1801428C */  lw         $v0, 0x118($v0)
    /* 49654 80058E54 00000000 */  nop
    /* 49658 80058E58 09F84000 */  jalr       $v0
    /* 4965C 80058E5C 21200002 */   addu      $a0, $s0, $zero
    /* 49660 80058E60 0000028E */  lw         $v0, 0x0($s0)
    /* 49664 80058E64 00000000 */  nop
    /* 49668 80058E68 1C01428C */  lw         $v0, 0x11C($v0)
    /* 4966C 80058E6C 00000000 */  nop
    /* 49670 80058E70 09F84000 */  jalr       $v0
    /* 49674 80058E74 21200002 */   addu      $a0, $s0, $zero
  .LDreamSys__TimerTick_80058E78:
    /* 49678 80058E78 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4967C 80058E7C 1000B08F */  lw         $s0, 0x10($sp)
    /* 49680 80058E80 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 49684 80058E84 0800E003 */  jr         $ra
    /* 49688 80058E88 00000000 */   nop
endlabel DreamSys__TimerTick
