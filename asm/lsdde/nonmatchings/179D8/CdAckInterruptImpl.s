.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdAckInterruptImpl, 0xE8

glabel CdAckInterruptImpl
    /* 1AD10 8002A510 0780033C */  lui        $v1, %hi(gpCdRegIndex)
    /* 1AD14 8002A514 C0D8638C */  lw         $v1, %lo(gpCdRegIndex)($v1)
    /* 1AD18 8002A518 01000234 */  ori        $v0, $zero, 0x1
    /* 1AD1C 8002A51C 000062A0 */  sb         $v0, 0x0($v1)
    /* 1AD20 8002A520 0780023C */  lui        $v0, %hi(gpCdRegStat)
    /* 1AD24 8002A524 CCD8428C */  lw         $v0, %lo(gpCdRegStat)($v0)
    /* 1AD28 8002A528 00000000 */  nop
    /* 1AD2C 8002A52C 00004290 */  lbu        $v0, 0x0($v0)
    /* 1AD30 8002A530 00000000 */  nop
    /* 1AD34 8002A534 07004230 */  andi       $v0, $v0, 0x7
    /* 1AD38 8002A538 16004010 */  beqz       $v0, .Lfunc_8002A510_8002A594
    /* 1AD3C 8002A53C 07000334 */   ori       $v1, $zero, 0x7
    /* 1AD40 8002A540 01000434 */  ori        $a0, $zero, 0x1
  .Lfunc_8002A510_8002A544:
    /* 1AD44 8002A544 0780023C */  lui        $v0, %hi(gpCdRegIndex)
    /* 1AD48 8002A548 C0D8428C */  lw         $v0, %lo(gpCdRegIndex)($v0)
    /* 1AD4C 8002A54C 00000000 */  nop
    /* 1AD50 8002A550 000044A0 */  sb         $a0, 0x0($v0)
    /* 1AD54 8002A554 0780023C */  lui        $v0, %hi(gpCdRegStat)
    /* 1AD58 8002A558 CCD8428C */  lw         $v0, %lo(gpCdRegStat)($v0)
    /* 1AD5C 8002A55C 00000000 */  nop
    /* 1AD60 8002A560 000043A0 */  sb         $v1, 0x0($v0)
    /* 1AD64 8002A564 0780023C */  lui        $v0, %hi(gpCdRegAck)
    /* 1AD68 8002A568 C8D8428C */  lw         $v0, %lo(gpCdRegAck)($v0)
    /* 1AD6C 8002A56C 00000000 */  nop
    /* 1AD70 8002A570 000043A0 */  sb         $v1, 0x0($v0)
    /* 1AD74 8002A574 0780023C */  lui        $v0, %hi(gpCdRegStat)
    /* 1AD78 8002A578 CCD8428C */  lw         $v0, %lo(gpCdRegStat)($v0)
    /* 1AD7C 8002A57C 00000000 */  nop
    /* 1AD80 8002A580 00004290 */  lbu        $v0, 0x0($v0)
    /* 1AD84 8002A584 00000000 */  nop
    /* 1AD88 8002A588 07004230 */  andi       $v0, $v0, 0x7
    /* 1AD8C 8002A58C EDFF4014 */  bnez       $v0, .Lfunc_8002A510_8002A544
    /* 1AD90 8002A590 00000000 */   nop
  .Lfunc_8002A510_8002A594:
    /* 1AD94 8002A594 0780013C */  lui        $at, %hi(D_8006D8DA)
    /* 1AD98 8002A598 DAD820A0 */  sb         $zero, %lo(D_8006D8DA)($at)
    /* 1AD9C 8002A59C 0780033C */  lui        $v1, %hi(D_8006D8DA)
    /* 1ADA0 8002A5A0 DAD86390 */  lbu        $v1, %lo(D_8006D8DA)($v1)
    /* 1ADA4 8002A5A4 0780023C */  lui        $v0, %hi(D_8006D8D9)
    /* 1ADA8 8002A5A8 D9D84224 */  addiu      $v0, $v0, %lo(D_8006D8D9)
    /* 1ADAC 8002A5AC 0780013C */  lui        $at, %hi(D_8006D61C)
    /* 1ADB0 8002A5B0 1CD620A0 */  sb         $zero, %lo(D_8006D61C)($at)
    /* 1ADB4 8002A5B4 000043A0 */  sb         $v1, 0x0($v0)
    /* 1ADB8 8002A5B8 0780033C */  lui        $v1, %hi(gpCdRegIndex)
    /* 1ADBC 8002A5BC C0D8638C */  lw         $v1, %lo(gpCdRegIndex)($v1)
    /* 1ADC0 8002A5C0 02000234 */  ori        $v0, $zero, 0x2
    /* 1ADC4 8002A5C4 0780013C */  lui        $at, %hi(D_8006D8D8)
    /* 1ADC8 8002A5C8 D8D822A0 */  sb         $v0, %lo(D_8006D8D8)($at)
    /* 1ADCC 8002A5CC 000060A0 */  sb         $zero, 0x0($v1)
    /* 1ADD0 8002A5D0 0780023C */  lui        $v0, %hi(gpCdRegStat)
    /* 1ADD4 8002A5D4 CCD8428C */  lw         $v0, %lo(gpCdRegStat)($v0)
    /* 1ADD8 8002A5D8 00000000 */  nop
    /* 1ADDC 8002A5DC 000040A0 */  sb         $zero, 0x0($v0)
    /* 1ADE0 8002A5E0 0780033C */  lui        $v1, %hi(D_8006D8D0)
    /* 1ADE4 8002A5E4 D0D8638C */  lw         $v1, %lo(D_8006D8D0)($v1)
    /* 1ADE8 8002A5E8 25130234 */  ori        $v0, $zero, 0x1325
    /* 1ADEC 8002A5EC 000062AC */  sw         $v0, 0x0($v1)
    /* 1ADF0 8002A5F0 0800E003 */  jr         $ra
    /* 1ADF4 8002A5F4 00000000 */   nop
endlabel CdAckInterruptImpl
