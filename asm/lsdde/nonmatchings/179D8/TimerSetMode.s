.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TimerSetMode, 0xA0

glabel TimerSetMode
    /* 23318 80032B18 FFFF8830 */  andi       $t0, $a0, 0xFFFF
    /* 2331C 80032B1C 03000229 */  slti       $v0, $t0, 0x3
    /* 23320 80032B20 03004014 */  bnez       $v0, .Lfunc_80032B18_80032B30
    /* 23324 80032B24 48000734 */   ori       $a3, $zero, 0x48
    /* 23328 80032B28 ECCA0008 */  j          .Lfunc_80032B18_80032BB0
    /* 2332C 80032B2C 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_80032B18_80032B30:
    /* 23330 80032B30 0780023C */  lui        $v0, %hi(gpTimerRegs)
    /* 23334 80032B34 B0DC428C */  lw         $v0, %lo(gpTimerRegs)($v0)
    /* 23338 80032B38 00190800 */  sll        $v1, $t0, 4
    /* 2333C 80032B3C 21186200 */  addu       $v1, $v1, $v0
    /* 23340 80032B40 0200022D */  sltiu      $v0, $t0, 0x2
    /* 23344 80032B44 040060A4 */  sh         $zero, 0x4($v1)
    /* 23348 80032B48 080065A4 */  sh         $a1, 0x8($v1)
    /* 2334C 80032B4C 08004010 */  beqz       $v0, .Lfunc_80032B18_80032B70
    /* 23350 80032B50 1000C230 */   andi      $v0, $a2, 0x10
    /* 23354 80032B54 02004010 */  beqz       $v0, .Lfunc_80032B18_80032B60
    /* 23358 80032B58 0100C230 */   andi      $v0, $a2, 0x1
    /* 2335C 80032B5C 49000734 */  ori        $a3, $zero, 0x49
  .Lfunc_80032B18_80032B60:
    /* 23360 80032B60 0A004014 */  bnez       $v0, .Lfunc_80032B18_80032B8C
    /* 23364 80032B64 0010C230 */   andi      $v0, $a2, 0x1000
    /* 23368 80032B68 E3CA0008 */  j          .Lfunc_80032B18_80032B8C
    /* 2336C 80032B6C 0001E734 */   ori       $a3, $a3, 0x100
  .Lfunc_80032B18_80032B70:
    /* 23370 80032B70 02000234 */  ori        $v0, $zero, 0x2
    /* 23374 80032B74 05000215 */  bne        $t0, $v0, .Lfunc_80032B18_80032B8C
    /* 23378 80032B78 0010C230 */   andi      $v0, $a2, 0x1000
    /* 2337C 80032B7C 0100C230 */  andi       $v0, $a2, 0x1
    /* 23380 80032B80 02004014 */  bnez       $v0, .Lfunc_80032B18_80032B8C
    /* 23384 80032B84 0010C230 */   andi      $v0, $a2, 0x1000
    /* 23388 80032B88 48020734 */  ori        $a3, $zero, 0x248
  .Lfunc_80032B18_80032B8C:
    /* 2338C 80032B8C 02004010 */  beqz       $v0, .Lfunc_80032B18_80032B98
    /* 23390 80032B90 00190800 */   sll       $v1, $t0, 4
    /* 23394 80032B94 1000E734 */  ori        $a3, $a3, 0x10
  .Lfunc_80032B18_80032B98:
    /* 23398 80032B98 01000234 */  ori        $v0, $zero, 0x1
    /* 2339C 80032B9C 0780043C */  lui        $a0, %hi(gpTimerRegs)
    /* 233A0 80032BA0 B0DC848C */  lw         $a0, %lo(gpTimerRegs)($a0)
    /* 233A4 80032BA4 00000000 */  nop
    /* 233A8 80032BA8 21186400 */  addu       $v1, $v1, $a0
    /* 233AC 80032BAC 040067A4 */  sh         $a3, 0x4($v1)
  .Lfunc_80032B18_80032BB0:
    /* 233B0 80032BB0 0800E003 */  jr         $ra
    /* 233B4 80032BB4 00000000 */   nop
endlabel TimerSetMode
