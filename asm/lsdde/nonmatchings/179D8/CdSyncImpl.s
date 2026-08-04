.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdSyncImpl, 0x284

glabel CdSyncImpl
    /* 1A1BC 800299BC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 1A1C0 800299C0 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 1A1C4 800299C4 21A88000 */  addu       $s5, $a0, $zero
    /* 1A1C8 800299C8 3000B6AF */  sw         $s6, 0x30($sp)
    /* 1A1CC 800299CC 21B0A000 */  addu       $s6, $a1, $zero
    /* 1A1D0 800299D0 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 1A1D4 800299D4 3400BFAF */  sw         $ra, 0x34($sp)
    /* 1A1D8 800299D8 2800B4AF */  sw         $s4, 0x28($sp)
    /* 1A1DC 800299DC 2400B3AF */  sw         $s3, 0x24($sp)
    /* 1A1E0 800299E0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 1A1E4 800299E4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1A1E8 800299E8 4096000C */  jal        GetSystemTick
    /* 1A1EC 800299EC 1800B0AF */   sw        $s0, 0x18($sp)
    /* 1A1F0 800299F0 0780133C */  lui        $s3, %hi(gCdIntNames)
    /* 1A1F4 800299F4 A0D67326 */  addiu      $s3, $s3, %lo(gCdIntNames)
    /* 1A1F8 800299F8 0780123C */  lui        $s2, %hi(D_8006D8D8)
    /* 1A1FC 800299FC D8D85226 */  addiu      $s2, $s2, %lo(D_8006D8D8)
    /* 1A200 80029A00 01005426 */  addiu      $s4, $s2, 0x1
    /* 1A204 80029A04 E0014224 */  addiu      $v0, $v0, 0x1E0
    /* 1A208 80029A08 0980013C */  lui        $at, %hi(D_8008B3E4)
    /* 1A20C 80029A0C E4B322AC */  sw         $v0, %lo(D_8008B3E4)($at)
    /* 1A210 80029A10 0180023C */  lui        $v0, %hi(D_80010A0C)
    /* 1A214 80029A14 0C0A4224 */  addiu      $v0, $v0, %lo(D_80010A0C)
    /* 1A218 80029A18 0980013C */  lui        $at, %hi(D_8008B3E8)
    /* 1A21C 80029A1C E8B320AC */  sw         $zero, %lo(D_8008B3E8)($at)
    /* 1A220 80029A20 0980013C */  lui        $at, %hi(D_8008B3EC)
    /* 1A224 80029A24 ECB322AC */  sw         $v0, %lo(D_8008B3EC)($at)
  .Lfunc_800299BC_80029A28:
    /* 1A228 80029A28 4096000C */  jal        GetSystemTick
    /* 1A22C 80029A2C FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 1A230 80029A30 0980033C */  lui        $v1, %hi(D_8008B3E4)
    /* 1A234 80029A34 E4B3638C */  lw         $v1, %lo(D_8008B3E4)($v1)
    /* 1A238 80029A38 00000000 */  nop
    /* 1A23C 80029A3C 2A186200 */  slt        $v1, $v1, $v0
    /* 1A240 80029A40 0B006014 */  bnez       $v1, .Lfunc_800299BC_80029A70
    /* 1A244 80029A44 00000000 */   nop
    /* 1A248 80029A48 0980033C */  lui        $v1, %hi(D_8008B3E8)
    /* 1A24C 80029A4C E8B3638C */  lw         $v1, %lo(D_8008B3E8)($v1)
    /* 1A250 80029A50 00000000 */  nop
    /* 1A254 80029A54 01006224 */  addiu      $v0, $v1, 0x1
    /* 1A258 80029A58 0980013C */  lui        $at, %hi(D_8008B3E8)
    /* 1A25C 80029A5C E8B322AC */  sw         $v0, %lo(D_8008B3E8)($at)
    /* 1A260 80029A60 1E00023C */  lui        $v0, (0x1E0000 >> 16)
    /* 1A264 80029A64 2A104300 */  slt        $v0, $v0, $v1
    /* 1A268 80029A68 1F004010 */  beqz       $v0, .Lfunc_800299BC_80029AE8
    /* 1A26C 80029A6C 00000000 */   nop
  .Lfunc_800299BC_80029A70:
    /* 1A270 80029A70 0180043C */  lui        $a0, %hi(D_80010984)
    /* 1A274 80029A74 84098424 */  addiu      $a0, $a0, %lo(D_80010984)
    /* 1A278 80029A78 B996000C */  jal        DebugPuts
    /* 1A27C 80029A7C 00000000 */   nop
    /* 1A280 80029A80 00004492 */  lbu        $a0, 0x0($s2)
    /* 1A284 80029A84 01004292 */  lbu        $v0, 0x1($s2)
    /* 1A288 80029A88 0980053C */  lui        $a1, %hi(D_8008B3EC)
    /* 1A28C 80029A8C ECB3A58C */  lw         $a1, %lo(D_8008B3EC)($a1)
    /* 1A290 80029A90 80100200 */  sll        $v0, $v0, 2
    /* 1A294 80029A94 21105300 */  addu       $v0, $v0, $s3
    /* 1A298 80029A98 80200400 */  sll        $a0, $a0, 2
    /* 1A29C 80029A9C 0000438C */  lw         $v1, 0x0($v0)
    /* 1A2A0 80029AA0 0780023C */  lui        $v0, %hi(gCdLastCommand)
    /* 1A2A4 80029AA4 1DD64290 */  lbu        $v0, %lo(gCdLastCommand)($v0)
    /* 1A2A8 80029AA8 21209300 */  addu       $a0, $a0, $s3
    /* 1A2AC 80029AAC 80100200 */  sll        $v0, $v0, 2
    /* 1A2B0 80029AB0 1000A3AF */  sw         $v1, 0x10($sp)
    /* 1A2B4 80029AB4 0780013C */  lui        $at, %hi(gCdCommandNames)
    /* 1A2B8 80029AB8 20D62124 */  addiu      $at, $at, %lo(gCdCommandNames)
    /* 1A2BC 80029ABC 21082200 */  addu       $at, $at, $v0
    /* 1A2C0 80029AC0 0000268C */  lw         $a2, 0x0($at)
    /* 1A2C4 80029AC4 0000878C */  lw         $a3, 0x0($a0)
    /* 1A2C8 80029AC8 0180043C */  lui        $a0, %hi(D_80010994)
    /* 1A2CC 80029ACC 94098424 */  addiu      $a0, $a0, %lo(D_80010994)
    /* 1A2D0 80029AD0 084B000C */  jal        DebugPrintf
    /* 1A2D4 80029AD4 00000000 */   nop
    /* 1A2D8 80029AD8 44A9000C */  jal        CdAckInterruptImpl
    /* 1A2DC 80029ADC 00000000 */   nop
    /* 1A2E0 80029AE0 BBA60008 */  j          .Lfunc_800299BC_80029AEC
    /* 1A2E4 80029AE4 FFFF0224 */   addiu     $v0, $zero, -0x1
  .Lfunc_800299BC_80029AE8:
    /* 1A2E8 80029AE8 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_800299BC_80029AEC:
    /* 1A2EC 80029AEC 49004014 */  bnez       $v0, .Lfunc_800299BC_80029C14
    /* 1A2F0 80029AF0 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 1A2F4 80029AF4 9993000C */  jal        WaitEvent
    /* 1A2F8 80029AF8 00000000 */   nop
    /* 1A2FC 80029AFC 2B004010 */  beqz       $v0, .Lfunc_800299BC_80029BAC
    /* 1A300 80029B00 00000000 */   nop
    /* 1A304 80029B04 0780023C */  lui        $v0, %hi(gpCdRegIndex)
    /* 1A308 80029B08 C0D8428C */  lw         $v0, %lo(gpCdRegIndex)($v0)
    /* 1A30C 80029B0C 00000000 */  nop
    /* 1A310 80029B10 00004290 */  lbu        $v0, 0x0($v0)
    /* 1A314 80029B14 00000000 */  nop
    /* 1A318 80029B18 03005130 */  andi       $s1, $v0, 0x3
  .Lfunc_800299BC_80029B1C:
    /* 1A31C 80029B1C 1EA5000C */  jal        CdInterruptHandler
    /* 1A320 80029B20 00000000 */   nop
    /* 1A324 80029B24 21804000 */  addu       $s0, $v0, $zero
    /* 1A328 80029B28 1C000012 */  beqz       $s0, .Lfunc_800299BC_80029B9C
    /* 1A32C 80029B2C 04000232 */   andi      $v0, $s0, 0x4
    /* 1A330 80029B30 0C004010 */  beqz       $v0, .Lfunc_800299BC_80029B64
    /* 1A334 80029B34 02000232 */   andi      $v0, $s0, 0x2
    /* 1A338 80029B38 0780023C */  lui        $v0, %hi(D_8006D600)
    /* 1A33C 80029B3C 00D6428C */  lw         $v0, %lo(D_8006D600)($v0)
    /* 1A340 80029B40 00000000 */  nop
    /* 1A344 80029B44 06004010 */  beqz       $v0, .Lfunc_800299BC_80029B60
    /* 1A348 80029B48 00000000 */   nop
    /* 1A34C 80029B4C 00008492 */  lbu        $a0, 0x0($s4)
    /* 1A350 80029B50 0980053C */  lui        $a1, %hi(D_8008B3D4)
    /* 1A354 80029B54 D4B3A524 */  addiu      $a1, $a1, %lo(D_8008B3D4)
    /* 1A358 80029B58 09F84000 */  jalr       $v0
    /* 1A35C 80029B5C 00000000 */   nop
  .Lfunc_800299BC_80029B60:
    /* 1A360 80029B60 02000232 */  andi       $v0, $s0, 0x2
  .Lfunc_800299BC_80029B64:
    /* 1A364 80029B64 EDFF4010 */  beqz       $v0, .Lfunc_800299BC_80029B1C
    /* 1A368 80029B68 00000000 */   nop
    /* 1A36C 80029B6C 0780023C */  lui        $v0, %hi(D_8006D5FC)
    /* 1A370 80029B70 FCD5428C */  lw         $v0, %lo(D_8006D5FC)($v0)
    /* 1A374 80029B74 00000000 */  nop
    /* 1A378 80029B78 E8FF4010 */  beqz       $v0, .Lfunc_800299BC_80029B1C
    /* 1A37C 80029B7C 00000000 */   nop
    /* 1A380 80029B80 00004492 */  lbu        $a0, 0x0($s2)
    /* 1A384 80029B84 0980053C */  lui        $a1, %hi(D_8008B3CC)
    /* 1A388 80029B88 CCB3A524 */  addiu      $a1, $a1, %lo(D_8008B3CC)
    /* 1A38C 80029B8C 09F84000 */  jalr       $v0
    /* 1A390 80029B90 00000000 */   nop
    /* 1A394 80029B94 C7A60008 */  j          .Lfunc_800299BC_80029B1C
    /* 1A398 80029B98 00000000 */   nop
  .Lfunc_800299BC_80029B9C:
    /* 1A39C 80029B9C 0780023C */  lui        $v0, %hi(gpCdRegIndex)
    /* 1A3A0 80029BA0 C0D8428C */  lw         $v0, %lo(gpCdRegIndex)($v0)
    /* 1A3A4 80029BA4 00000000 */  nop
    /* 1A3A8 80029BA8 000051A0 */  sb         $s1, 0x0($v0)
  .Lfunc_800299BC_80029BAC:
    /* 1A3AC 80029BAC 00004292 */  lbu        $v0, 0x0($s2)
    /* 1A3B0 80029BB0 00000000 */  nop
    /* 1A3B4 80029BB4 FF004630 */  andi       $a2, $v0, 0xFF
    /* 1A3B8 80029BB8 02000234 */  ori        $v0, $zero, 0x2
    /* 1A3BC 80029BBC 0300C210 */  beq        $a2, $v0, .Lfunc_800299BC_80029BCC
    /* 1A3C0 80029BC0 05000234 */   ori       $v0, $zero, 0x5
    /* 1A3C4 80029BC4 1100C214 */  bne        $a2, $v0, .Lfunc_800299BC_80029C0C
    /* 1A3C8 80029BC8 00000000 */   nop
  .Lfunc_800299BC_80029BCC:
    /* 1A3CC 80029BCC 02000234 */  ori        $v0, $zero, 0x2
    /* 1A3D0 80029BD0 000042A2 */  sb         $v0, 0x0($s2)
    /* 1A3D4 80029BD4 2128C002 */  addu       $a1, $s6, $zero
    /* 1A3D8 80029BD8 0980043C */  lui        $a0, %hi(D_8008B3CC)
    /* 1A3DC 80029BDC CCB38424 */  addiu      $a0, $a0, %lo(D_8008B3CC)
    /* 1A3E0 80029BE0 0800A010 */  beqz       $a1, .Lfunc_800299BC_80029C04
    /* 1A3E4 80029BE4 07000334 */   ori       $v1, $zero, 0x7
    /* 1A3E8 80029BE8 FFFF0724 */  addiu      $a3, $zero, -0x1
  .Lfunc_800299BC_80029BEC:
    /* 1A3EC 80029BEC 00008290 */  lbu        $v0, 0x0($a0)
    /* 1A3F0 80029BF0 01008424 */  addiu      $a0, $a0, 0x1
    /* 1A3F4 80029BF4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 1A3F8 80029BF8 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 1A3FC 80029BFC FBFF6714 */  bne        $v1, $a3, .Lfunc_800299BC_80029BEC
    /* 1A400 80029C00 0100A524 */   addiu     $a1, $a1, 0x1
  .Lfunc_800299BC_80029C04:
    /* 1A404 80029C04 05A70008 */  j          .Lfunc_800299BC_80029C14
    /* 1A408 80029C08 2110C000 */   addu      $v0, $a2, $zero
  .Lfunc_800299BC_80029C0C:
    /* 1A40C 80029C0C 86FFA012 */  beqz       $s5, .Lfunc_800299BC_80029A28
    /* 1A410 80029C10 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_800299BC_80029C14:
    /* 1A414 80029C14 3400BF8F */  lw         $ra, 0x34($sp)
    /* 1A418 80029C18 3000B68F */  lw         $s6, 0x30($sp)
    /* 1A41C 80029C1C 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 1A420 80029C20 2800B48F */  lw         $s4, 0x28($sp)
    /* 1A424 80029C24 2400B38F */  lw         $s3, 0x24($sp)
    /* 1A428 80029C28 2000B28F */  lw         $s2, 0x20($sp)
    /* 1A42C 80029C2C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 1A430 80029C30 1800B08F */  lw         $s0, 0x18($sp)
    /* 1A434 80029C34 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 1A438 80029C38 0800E003 */  jr         $ra
    /* 1A43C 80029C3C 00000000 */   nop
endlabel CdSyncImpl
