.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdRecover, 0x37C

glabel CdRecover
    /* 1B26C 8002AA6C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1B270 8002AA70 0780043C */  lui        $a0, %hi(D_8006D8DC)
    /* 1B274 8002AA74 DCD88424 */  addiu      $a0, $a0, %lo(D_8006D8DC)
    /* 1B278 8002AA78 3800BFAF */  sw         $ra, 0x38($sp)
    /* 1B27C 8002AA7C 3400B5AF */  sw         $s5, 0x34($sp)
    /* 1B280 8002AA80 3000B4AF */  sw         $s4, 0x30($sp)
    /* 1B284 8002AA84 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 1B288 8002AA88 2800B2AF */  sw         $s2, 0x28($sp)
    /* 1B28C 8002AA8C 2400B1AF */  sw         $s1, 0x24($sp)
    /* 1B290 8002AA90 2000B0AF */  sw         $s0, 0x20($sp)
    /* 1B294 8002AA94 0000838C */  lw         $v1, 0x0($a0)
    /* 1B298 8002AA98 0780013C */  lui        $at, %hi(D_8006D600)
    /* 1B29C 8002AA9C 00D620AC */  sw         $zero, %lo(D_8006D600)($at)
    /* 1B2A0 8002AAA0 0780013C */  lui        $at, %hi(D_8006D5FC)
    /* 1B2A4 8002AAA4 FCD520AC */  sw         $zero, %lo(D_8006D5FC)($at)
    /* 1B2A8 8002AAA8 FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 1B2AC 8002AAAC 000082AC */  sw         $v0, 0x0($a0)
    /* 1B2B0 8002AAB0 BE006018 */  blez       $v1, .Lfunc_8002AA6C_8002ADAC
    /* 1B2B4 8002AAB4 00000000 */   nop
    /* 1B2B8 8002AAB8 21A88000 */  addu       $s5, $a0, $zero
    /* 1B2BC 8002AABC 01001434 */  ori        $s4, $zero, 0x1
    /* 1B2C0 8002AAC0 07001334 */  ori        $s3, $zero, 0x7
    /* 1B2C4 8002AAC4 1000B226 */  addiu      $s2, $s5, 0x10
  .Lfunc_8002AA6C_8002AAC8:
    /* 1B2C8 8002AAC8 0000A28E */  lw         $v0, 0x0($s5)
    /* 1B2CC 8002AACC 00000000 */  nop
    /* 1B2D0 8002AAD0 07004228 */  slti       $v0, $v0, 0x7
    /* 1B2D4 8002AAD4 59004010 */  beqz       $v0, .Lfunc_8002AA6C_8002AC3C
    /* 1B2D8 8002AAD8 00000000 */   nop
    /* 1B2DC 8002AADC 0180043C */  lui        $a0, %hi(D_80010AAC)
    /* 1B2E0 8002AAE0 AC0A8424 */  addiu      $a0, $a0, %lo(D_80010AAC)
    /* 1B2E4 8002AAE4 B996000C */  jal        DebugPuts
    /* 1B2E8 8002AAE8 21800000 */   addu      $s0, $zero, $zero
    /* 1B2EC 8002AAEC 0780063C */  lui        $a2, %hi(D_8006D618)
    /* 1B2F0 8002AAF0 18D6C690 */  lbu        $a2, %lo(D_8006D618)($a2)
    /* 1B2F4 8002AAF4 0000A58E */  lw         $a1, 0x0($s5)
    /* 1B2F8 8002AAF8 0780073C */  lui        $a3, %hi(D_8006D619)
    /* 1B2FC 8002AAFC 19D6E790 */  lbu        $a3, %lo(D_8006D619)($a3)
    /* 1B300 8002AB00 0780023C */  lui        $v0, %hi(D_8006D61A)
    /* 1B304 8002AB04 1AD64290 */  lbu        $v0, %lo(D_8006D61A)($v0)
    /* 1B308 8002AB08 0180043C */  lui        $a0, %hi(D_80010ABC)
    /* 1B30C 8002AB0C BC0A8424 */  addiu      $a0, $a0, %lo(D_80010ABC)
    /* 1B310 8002AB10 084B000C */  jal        DebugPrintf
    /* 1B314 8002AB14 1000A2AF */   sw        $v0, 0x10($sp)
    /* 1B318 8002AB18 0780023C */  lui        $v0, %hi(D_8006D904)
    /* 1B31C 8002AB1C 04D9428C */  lw         $v0, %lo(D_8006D904)($v0)
    /* 1B320 8002AB20 0780033C */  lui        $v1, %hi(D_8006D614)
    /* 1B324 8002AB24 14D6638C */  lw         $v1, %lo(D_8006D614)($v1)
    /* 1B328 8002AB28 00000000 */  nop
    /* 1B32C 8002AB2C 2A104300 */  slt        $v0, $v0, $v1
    /* 1B330 8002AB30 35004010 */  beqz       $v0, .Lfunc_8002AA6C_8002AC08
    /* 1B334 8002AB34 09000434 */   ori       $a0, $zero, 0x9
    /* 1B338 8002AB38 0780113C */  lui        $s1, %hi(D_8006D5FC)
    /* 1B33C 8002AB3C FCD5318E */  lw         $s1, %lo(D_8006D5FC)($s1)
    /* 1B340 8002AB40 0780023C */  lui        $v0, %hi(gCdStatus)
    /* 1B344 8002AB44 0CD6428C */  lw         $v0, %lo(gCdStatus)($v0)
    /* 1B348 8002AB48 0780013C */  lui        $at, %hi(D_8006D5FC)
    /* 1B34C 8002AB4C FCD520AC */  sw         $zero, %lo(D_8006D5FC)($at)
    /* 1B350 8002AB50 10004230 */  andi       $v0, $v0, 0x10
    /* 1B354 8002AB54 14004010 */  beqz       $v0, .Lfunc_8002AA6C_8002ABA8
    /* 1B358 8002AB58 16000434 */   ori       $a0, $zero, 0x16
    /* 1B35C 8002AB5C FF000232 */  andi       $v0, $s0, 0xFF
  .Lfunc_8002AA6C_8002AB60:
    /* 1B360 8002AB60 05004014 */  bnez       $v0, .Lfunc_8002AA6C_8002AB78
    /* 1B364 8002AB64 01001026 */   addiu     $s0, $s0, 0x1
    /* 1B368 8002AB68 0180043C */  lui        $a0, %hi(D_80010A40)
    /* 1B36C 8002AB6C 400A8424 */  addiu      $a0, $a0, %lo(D_80010A40)
    /* 1B370 8002AB70 B996000C */  jal        DebugPuts
    /* 1B374 8002AB74 00000000 */   nop
  .Lfunc_8002AA6C_8002AB78:
    /* 1B378 8002AB78 01000434 */  ori        $a0, $zero, 0x1
    /* 1B37C 8002AB7C 21280000 */  addu       $a1, $zero, $zero
    /* 1B380 8002AB80 21300000 */  addu       $a2, $zero, $zero
    /* 1B384 8002AB84 C4A7000C */  jal        CdCommand
    /* 1B388 8002AB88 21380000 */   addu      $a3, $zero, $zero
    /* 1B38C 8002AB8C 0780023C */  lui        $v0, %hi(gCdStatus)
    /* 1B390 8002AB90 0CD6428C */  lw         $v0, %lo(gCdStatus)($v0)
    /* 1B394 8002AB94 00000000 */  nop
    /* 1B398 8002AB98 10004230 */  andi       $v0, $v0, 0x10
    /* 1B39C 8002AB9C F0FF4014 */  bnez       $v0, .Lfunc_8002AA6C_8002AB60
    /* 1B3A0 8002ABA0 FF000232 */   andi      $v0, $s0, 0xFF
    /* 1B3A4 8002ABA4 16000434 */  ori        $a0, $zero, 0x16
  .Lfunc_8002AA6C_8002ABA8:
    /* 1B3A8 8002ABA8 0780053C */  lui        $a1, %hi(D_8006D908)
    /* 1B3AC 8002ABAC 08D9A524 */  addiu      $a1, $a1, %lo(D_8006D908)
    /* 1B3B0 8002ABB0 21300000 */  addu       $a2, $zero, $zero
    /* 1B3B4 8002ABB4 C4A7000C */  jal        CdCommand
    /* 1B3B8 8002ABB8 21380000 */   addu      $a3, $zero, $zero
    /* 1B3BC 8002ABBC 0B004010 */  beqz       $v0, .Lfunc_8002AA6C_8002ABEC
    /* 1B3C0 8002ABC0 01000434 */   ori       $a0, $zero, 0x1
    /* 1B3C4 8002ABC4 21280000 */  addu       $a1, $zero, $zero
    /* 1B3C8 8002ABC8 21300000 */  addu       $a2, $zero, $zero
    /* 1B3CC 8002ABCC C4A7000C */  jal        CdCommand
    /* 1B3D0 8002ABD0 21380000 */   addu      $a3, $zero, $zero
    /* 1B3D4 8002ABD4 0180043C */  lui        $a0, %hi(D_80010A50)
    /* 1B3D8 8002ABD8 500A8424 */  addiu      $a0, $a0, %lo(D_80010A50)
    /* 1B3DC 8002ABDC B996000C */  jal        DebugPuts
    /* 1B3E0 8002ABE0 00000000 */   nop
    /* 1B3E4 8002ABE4 EAAA0008 */  j          .Lfunc_8002AA6C_8002ABA8
    /* 1B3E8 8002ABE8 16000434 */   ori       $a0, $zero, 0x16
  .Lfunc_8002AA6C_8002ABEC:
    /* 1B3EC 8002ABEC 0780023C */  lui        $v0, %hi(D_8006D614)
    /* 1B3F0 8002ABF0 14D6428C */  lw         $v0, %lo(D_8006D614)($v0)
    /* 1B3F4 8002ABF4 0780013C */  lui        $at, %hi(D_8006D5FC)
    /* 1B3F8 8002ABF8 FCD531AC */  sw         $s1, %lo(D_8006D5FC)($at)
    /* 1B3FC 8002ABFC 0780013C */  lui        $at, %hi(D_8006D904)
    /* 1B400 8002AC00 04D922AC */  sw         $v0, %lo(D_8006D904)($at)
    /* 1B404 8002AC04 09000434 */  ori        $a0, $zero, 0x9
  .Lfunc_8002AA6C_8002AC08:
    /* 1B408 8002AC08 21280000 */  addu       $a1, $zero, $zero
    /* 1B40C 8002AC0C 21300000 */  addu       $a2, $zero, $zero
    /* 1B410 8002AC10 C4A7000C */  jal        CdCommand
    /* 1B414 8002AC14 21380000 */   addu      $a3, $zero, $zero
    /* 1B418 8002AC18 5C004014 */  bnez       $v0, .Lfunc_8002AA6C_8002AD8C
    /* 1B41C 8002AC1C 02000434 */   ori       $a0, $zero, 0x2
    /* 1B420 8002AC20 0780053C */  lui        $a1, %hi(D_8006D618)
    /* 1B424 8002AC24 18D6A524 */  addiu      $a1, $a1, %lo(D_8006D618)
    /* 1B428 8002AC28 21300000 */  addu       $a2, $zero, $zero
    /* 1B42C 8002AC2C C4A7000C */  jal        CdCommand
    /* 1B430 8002AC30 21380000 */   addu      $a3, $zero, $zero
    /* 1B434 8002AC34 55004014 */  bnez       $v0, .Lfunc_8002AA6C_8002AD8C
    /* 1B438 8002AC38 00000000 */   nop
  .Lfunc_8002AA6C_8002AC3C:
    /* 1B43C 8002AC3C 0780023C */  lui        $v0, %hi(gpCdRegIndex)
    /* 1B440 8002AC40 C0D8428C */  lw         $v0, %lo(gpCdRegIndex)($v0)
    /* 1B444 8002AC44 00000000 */  nop
    /* 1B448 8002AC48 000054A0 */  sb         $s4, 0x0($v0)
    /* 1B44C 8002AC4C 21AB0008 */  j          .Lfunc_8002AA6C_8002AC84
    /* 1B450 8002AC50 00000000 */   nop
  .Lfunc_8002AA6C_8002AC54:
    /* 1B454 8002AC54 0780023C */  lui        $v0, %hi(gpCdRegIndex)
    /* 1B458 8002AC58 C0D8428C */  lw         $v0, %lo(gpCdRegIndex)($v0)
    /* 1B45C 8002AC5C 00000000 */  nop
    /* 1B460 8002AC60 000054A0 */  sb         $s4, 0x0($v0)
    /* 1B464 8002AC64 0780023C */  lui        $v0, %hi(gpCdRegStat)
    /* 1B468 8002AC68 CCD8428C */  lw         $v0, %lo(gpCdRegStat)($v0)
    /* 1B46C 8002AC6C 00000000 */  nop
    /* 1B470 8002AC70 000053A0 */  sb         $s3, 0x0($v0)
    /* 1B474 8002AC74 0780023C */  lui        $v0, %hi(gpCdRegAck)
    /* 1B478 8002AC78 C8D8428C */  lw         $v0, %lo(gpCdRegAck)($v0)
    /* 1B47C 8002AC7C 00000000 */  nop
    /* 1B480 8002AC80 000053A0 */  sb         $s3, 0x0($v0)
  .Lfunc_8002AA6C_8002AC84:
    /* 1B484 8002AC84 0780023C */  lui        $v0, %hi(gpCdRegStat)
    /* 1B488 8002AC88 CCD8428C */  lw         $v0, %lo(gpCdRegStat)($v0)
    /* 1B48C 8002AC8C 00000000 */  nop
    /* 1B490 8002AC90 00004290 */  lbu        $v0, 0x0($v0)
    /* 1B494 8002AC94 00000000 */  nop
    /* 1B498 8002AC98 07004230 */  andi       $v0, $v0, 0x7
    /* 1B49C 8002AC9C EDFF4014 */  bnez       $v0, .Lfunc_8002AA6C_8002AC54
    /* 1B4A0 8002ACA0 00000000 */   nop
    /* 1B4A4 8002ACA4 0780013C */  lui        $at, %hi(D_8006D8DA)
    /* 1B4A8 8002ACA8 DAD820A0 */  sb         $zero, %lo(D_8006D8DA)($at)
    /* 1B4AC 8002ACAC 0780033C */  lui        $v1, %hi(D_8006D8DA)
    /* 1B4B0 8002ACB0 DAD86390 */  lbu        $v1, %lo(D_8006D8DA)($v1)
    /* 1B4B4 8002ACB4 0780023C */  lui        $v0, %hi(D_8006D8D9)
    /* 1B4B8 8002ACB8 D9D84224 */  addiu      $v0, $v0, %lo(D_8006D8D9)
    /* 1B4BC 8002ACBC 0780013C */  lui        $at, %hi(D_8006D61C)
    /* 1B4C0 8002ACC0 1CD620A0 */  sb         $zero, %lo(D_8006D61C)($at)
    /* 1B4C4 8002ACC4 000043A0 */  sb         $v1, 0x0($v0)
    /* 1B4C8 8002ACC8 0780033C */  lui        $v1, %hi(gpCdRegIndex)
    /* 1B4CC 8002ACCC C0D8638C */  lw         $v1, %lo(gpCdRegIndex)($v1)
    /* 1B4D0 8002ACD0 02000234 */  ori        $v0, $zero, 0x2
    /* 1B4D4 8002ACD4 0780013C */  lui        $at, %hi(D_8006D8D8)
    /* 1B4D8 8002ACD8 D8D822A0 */  sb         $v0, %lo(D_8006D8D8)($at)
    /* 1B4DC 8002ACDC 000060A0 */  sb         $zero, 0x0($v1)
    /* 1B4E0 8002ACE0 0780023C */  lui        $v0, %hi(gpCdRegStat)
    /* 1B4E4 8002ACE4 CCD8428C */  lw         $v0, %lo(gpCdRegStat)($v0)
    /* 1B4E8 8002ACE8 00000000 */  nop
    /* 1B4EC 8002ACEC 000040A0 */  sb         $zero, 0x0($v0)
    /* 1B4F0 8002ACF0 0780033C */  lui        $v1, %hi(D_8006D8D0)
    /* 1B4F4 8002ACF4 D0D8638C */  lw         $v1, %lo(D_8006D8D0)($v1)
    /* 1B4F8 8002ACF8 25130234 */  ori        $v0, $zero, 0x1325
    /* 1B4FC 8002ACFC 000062AC */  sw         $v0, 0x0($v1)
    /* 1B500 8002AD00 0000428E */  lw         $v0, 0x0($s2)
    /* 1B504 8002AD04 0780033C */  lui        $v1, %hi(D_8006D61C)
    /* 1B508 8002AD08 1CD66390 */  lbu        $v1, %lo(D_8006D61C)($v1)
    /* 1B50C 8002AD0C 1800A2A3 */  sb         $v0, 0x18($sp)
    /* 1B510 8002AD10 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1B514 8002AD14 07004310 */  beq        $v0, $v1, .Lfunc_8002AA6C_8002AD34
    /* 1B518 8002AD18 0E000434 */   ori       $a0, $zero, 0xE
    /* 1B51C 8002AD1C 1800A527 */  addiu      $a1, $sp, 0x18
    /* 1B520 8002AD20 21300000 */  addu       $a2, $zero, $zero
    /* 1B524 8002AD24 C4A7000C */  jal        CdCommand
    /* 1B528 8002AD28 21380000 */   addu      $a3, $zero, $zero
    /* 1B52C 8002AD2C 17004014 */  bnez       $v0, .Lfunc_8002AA6C_8002AD8C
    /* 1B530 8002AD30 00000000 */   nop
  .Lfunc_8002AA6C_8002AD34:
    /* 1B534 8002AD34 06000434 */  ori        $a0, $zero, 0x6
    /* 1B538 8002AD38 21280000 */  addu       $a1, $zero, $zero
    /* 1B53C 8002AD3C 21300000 */  addu       $a2, $zero, $zero
    /* 1B540 8002AD40 01000734 */  ori        $a3, $zero, 0x1
    /* 1B544 8002AD44 F8FF438E */  lw         $v1, -0x8($s2)
    /* 1B548 8002AD48 0380023C */  lui        $v0, %hi(CdReadNextSector)
    /* 1B54C 8002AD4C D4B44224 */  addiu      $v0, $v0, %lo(CdReadNextSector)
    /* 1B550 8002AD50 0780013C */  lui        $at, %hi(D_8006D600)
    /* 1B554 8002AD54 00D622AC */  sw         $v0, %lo(D_8006D600)($at)
    /* 1B558 8002AD58 FCFF43AE */  sw         $v1, -0x4($s2)
    /* 1B55C 8002AD5C C4A7000C */  jal        CdCommand
    /* 1B560 8002AD60 00000000 */   nop
    /* 1B564 8002AD64 F4FF428E */  lw         $v0, -0xC($s2)
    /* 1B568 8002AD68 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 1B56C 8002AD6C 080042AE */  sw         $v0, 0x8($s2)
    /* 1B570 8002AD70 4096000C */  jal        GetSystemTick
    /* 1B574 8002AD74 00000000 */   nop
    /* 1B578 8002AD78 E0014224 */  addiu      $v0, $v0, 0x1E0
    /* 1B57C 8002AD7C 0C0042AE */  sw         $v0, 0xC($s2)
    /* 1B580 8002AD80 0800428E */  lw         $v0, 0x8($s2)
    /* 1B584 8002AD84 70AB0008 */  j          .Lfunc_8002AA6C_8002ADC0
    /* 1B588 8002AD88 00000000 */   nop
  .Lfunc_8002AA6C_8002AD8C:
    /* 1B58C 8002AD8C 0780043C */  lui        $a0, %hi(D_8006D8DC)
    /* 1B590 8002AD90 DCD88424 */  addiu      $a0, $a0, %lo(D_8006D8DC)
    /* 1B594 8002AD94 0000838C */  lw         $v1, 0x0($a0)
    /* 1B598 8002AD98 00000000 */  nop
    /* 1B59C 8002AD9C FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 1B5A0 8002ADA0 000082AC */  sw         $v0, 0x0($a0)
    /* 1B5A4 8002ADA4 48FF601C */  bgtz       $v1, .Lfunc_8002AA6C_8002AAC8
    /* 1B5A8 8002ADA8 00000000 */   nop
  .Lfunc_8002AA6C_8002ADAC:
    /* 1B5AC 8002ADAC 0780023C */  lui        $v0, %hi(D_8006D8F4)
    /* 1B5B0 8002ADB0 F4D84224 */  addiu      $v0, $v0, %lo(D_8006D8F4)
    /* 1B5B4 8002ADB4 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 1B5B8 8002ADB8 000043AC */  sw         $v1, 0x0($v0)
    /* 1B5BC 8002ADBC 0000428C */  lw         $v0, 0x0($v0)
  .Lfunc_8002AA6C_8002ADC0:
    /* 1B5C0 8002ADC0 3800BF8F */  lw         $ra, 0x38($sp)
    /* 1B5C4 8002ADC4 3400B58F */  lw         $s5, 0x34($sp)
    /* 1B5C8 8002ADC8 3000B48F */  lw         $s4, 0x30($sp)
    /* 1B5CC 8002ADCC 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 1B5D0 8002ADD0 2800B28F */  lw         $s2, 0x28($sp)
    /* 1B5D4 8002ADD4 2400B18F */  lw         $s1, 0x24($sp)
    /* 1B5D8 8002ADD8 2000B08F */  lw         $s0, 0x20($sp)
    /* 1B5DC 8002ADDC 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 1B5E0 8002ADE0 0800E003 */  jr         $ra
    /* 1B5E4 8002ADE4 00000000 */   nop
endlabel CdRecover
