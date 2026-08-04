.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdStartDma, 0xE0

glabel CdStartDma
    /* 1BB04 8002B304 0780023C */  lui        $v0, %hi(gpCdRegIndex)
    /* 1BB08 8002B308 C0D8428C */  lw         $v0, %lo(gpCdRegIndex)($v0)
    /* 1BB0C 8002B30C 0200063C */  lui        $a2, (0x20943 >> 16)
    /* 1BB10 8002B310 000040A0 */  sb         $zero, 0x0($v0)
    /* 1BB14 8002B314 0780033C */  lui        $v1, %hi(gpCdRegStat)
    /* 1BB18 8002B318 CCD8638C */  lw         $v1, %lo(gpCdRegStat)($v1)
    /* 1BB1C 8002B31C 80000234 */  ori        $v0, $zero, 0x80
    /* 1BB20 8002B320 000062A0 */  sb         $v0, 0x0($v1)
    /* 1BB24 8002B324 0780023C */  lui        $v0, %hi(D_8006D924)
    /* 1BB28 8002B328 24D9428C */  lw         $v0, %lo(D_8006D924)($v0)
    /* 1BB2C 8002B32C 4309C634 */  ori        $a2, $a2, (0x20943 & 0xFFFF)
    /* 1BB30 8002B330 000046AC */  sw         $a2, 0x0($v0)
    /* 1BB34 8002B334 0780033C */  lui        $v1, %hi(D_8006D8D0)
    /* 1BB38 8002B338 D0D8638C */  lw         $v1, %lo(D_8006D8D0)($v1)
    /* 1BB3C 8002B33C 23130234 */  ori        $v0, $zero, 0x1323
    /* 1BB40 8002B340 000062AC */  sw         $v0, 0x0($v1)
    /* 1BB44 8002B344 0780033C */  lui        $v1, %hi(D_8006D928)
    /* 1BB48 8002B348 28D9638C */  lw         $v1, %lo(D_8006D928)($v1)
    /* 1BB4C 8002B34C 00000000 */  nop
    /* 1BB50 8002B350 0000628C */  lw         $v0, 0x0($v1)
    /* 1BB54 8002B354 00000000 */  nop
    /* 1BB58 8002B358 00804234 */  ori        $v0, $v0, 0x8000
    /* 1BB5C 8002B35C 000062AC */  sw         $v0, 0x0($v1)
    /* 1BB60 8002B360 0780023C */  lui        $v0, %hi(D_8006D92C)
    /* 1BB64 8002B364 2CD9428C */  lw         $v0, %lo(D_8006D92C)($v0)
    /* 1BB68 8002B368 00000000 */  nop
    /* 1BB6C 8002B36C 000044AC */  sw         $a0, 0x0($v0)
    /* 1BB70 8002B370 0100023C */  lui        $v0, (0x10000 >> 16)
    /* 1BB74 8002B374 0780033C */  lui        $v1, %hi(D_8006D930)
    /* 1BB78 8002B378 30D9638C */  lw         $v1, %lo(D_8006D930)($v1)
    /* 1BB7C 8002B37C 2528A200 */  or         $a1, $a1, $v0
    /* 1BB80 8002B380 000065AC */  sw         $a1, 0x0($v1)
    /* 1BB84 8002B384 0780033C */  lui        $v1, %hi(D_8006D934)
    /* 1BB88 8002B388 34D9638C */  lw         $v1, %lo(D_8006D934)($v1)
    /* 1BB8C 8002B38C 0011023C */  lui        $v0, (0x11000000 >> 16)
    /* 1BB90 8002B390 000062AC */  sw         $v0, 0x0($v1)
    /* 1BB94 8002B394 0780043C */  lui        $a0, %hi(D_8006D934)
    /* 1BB98 8002B398 34D9848C */  lw         $a0, %lo(D_8006D934)($a0)
    /* 1BB9C 8002B39C 00000000 */  nop
    /* 1BBA0 8002B3A0 0000828C */  lw         $v0, 0x0($a0)
    /* 1BBA4 8002B3A4 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* 1BBA8 8002B3A8 24104300 */  and        $v0, $v0, $v1
    /* 1BBAC 8002B3AC 07004010 */  beqz       $v0, .Lfunc_8002B304_8002B3CC
    /* 1BBB0 8002B3B0 21188000 */   addu      $v1, $a0, $zero
    /* 1BBB4 8002B3B4 0001043C */  lui        $a0, (0x1000000 >> 16)
  .Lfunc_8002B304_8002B3B8:
    /* 1BBB8 8002B3B8 0000628C */  lw         $v0, 0x0($v1)
    /* 1BBBC 8002B3BC 00000000 */  nop
    /* 1BBC0 8002B3C0 24104400 */  and        $v0, $v0, $a0
    /* 1BBC4 8002B3C4 FCFF4014 */  bnez       $v0, .Lfunc_8002B304_8002B3B8
    /* 1BBC8 8002B3C8 00000000 */   nop
  .Lfunc_8002B304_8002B3CC:
    /* 1BBCC 8002B3CC 0780033C */  lui        $v1, %hi(D_8006D8D0)
    /* 1BBD0 8002B3D0 D0D8638C */  lw         $v1, %lo(D_8006D8D0)($v1)
    /* 1BBD4 8002B3D4 25130234 */  ori        $v0, $zero, 0x1325
    /* 1BBD8 8002B3D8 000062AC */  sw         $v0, 0x0($v1)
    /* 1BBDC 8002B3DC 0800E003 */  jr         $ra
    /* 1BBE0 8002B3E0 21100000 */   addu      $v0, $zero, $zero
endlabel CdStartDma
