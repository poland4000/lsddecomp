.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndNoteOnEx, 0xEC

glabel SndNoteOnEx
    /* 20ADC 800302DC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 20AE0 800302E0 2138C000 */  addu       $a3, $a2, $zero
    /* 20AE4 800302E4 3000A697 */  lhu        $a2, 0x30($sp)
    /* 20AE8 800302E8 3400A897 */  lhu        $t0, 0x34($sp)
    /* 20AEC 800302EC 2148A000 */  addu       $t1, $a1, $zero
    /* 20AF0 800302F0 FFFFC530 */  andi       $a1, $a2, 0xFFFF
    /* 20AF4 800302F4 FFFF0331 */  andi       $v1, $t0, 0xFFFF
    /* 20AF8 800302F8 0400A314 */  bne        $a1, $v1, .Lfunc_800302DC_8003030C
    /* 20AFC 800302FC 1800BFAF */   sw        $ra, 0x18($sp)
    /* 20B00 80030300 40000334 */  ori        $v1, $zero, 0x40
    /* 20B04 80030304 E3C00008 */  j          .Lfunc_800302DC_8003038C
    /* 20B08 80030308 2128C000 */   addu      $a1, $a2, $zero
  .Lfunc_800302DC_8003030C:
    /* 20B0C 8003030C 2B106500 */  sltu       $v0, $v1, $a1
    /* 20B10 80030310 0F004010 */  beqz       $v0, .Lfunc_800302DC_80030350
    /* 20B14 80030314 80110300 */   sll       $v0, $v1, 6
    /* 20B18 80030318 1A004500 */  div        $zero, $v0, $a1
    /* 20B1C 8003031C 0200A014 */  bnez       $a1, .Lfunc_800302DC_80030328
    /* 20B20 80030320 00000000 */   nop
    /* 20B24 80030324 0D000700 */  break      7
  .Lfunc_800302DC_80030328:
    /* 20B28 80030328 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 20B2C 8003032C 0400A114 */  bne        $a1, $at, .Lfunc_800302DC_80030340
    /* 20B30 80030330 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 20B34 80030334 02004114 */  bne        $v0, $at, .Lfunc_800302DC_80030340
    /* 20B38 80030338 00000000 */   nop
    /* 20B3C 8003033C 0D000600 */  break      6
  .Lfunc_800302DC_80030340:
    /* 20B40 80030340 12100000 */  mflo       $v0
    /* 20B44 80030344 2128C000 */  addu       $a1, $a2, $zero
    /* 20B48 80030348 E3C00008 */  j          .Lfunc_800302DC_8003038C
    /* 20B4C 8003034C 21184000 */   addu      $v1, $v0, $zero
  .Lfunc_800302DC_80030350:
    /* 20B50 80030350 80110500 */  sll        $v0, $a1, 6
    /* 20B54 80030354 1A004300 */  div        $zero, $v0, $v1
    /* 20B58 80030358 02006014 */  bnez       $v1, .Lfunc_800302DC_80030364
    /* 20B5C 8003035C 00000000 */   nop
    /* 20B60 80030360 0D000700 */  break      7
  .Lfunc_800302DC_80030364:
    /* 20B64 80030364 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 20B68 80030368 04006114 */  bne        $v1, $at, .Lfunc_800302DC_8003037C
    /* 20B6C 8003036C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 20B70 80030370 02004114 */  bne        $v0, $at, .Lfunc_800302DC_8003037C
    /* 20B74 80030374 00000000 */   nop
    /* 20B78 80030378 0D000600 */  break      6
  .Lfunc_800302DC_8003037C:
    /* 20B7C 8003037C 12100000 */  mflo       $v0
    /* 20B80 80030380 21280001 */  addu       $a1, $t0, $zero
    /* 20B84 80030384 7F000334 */  ori        $v1, $zero, 0x7F
    /* 20B88 80030388 23186200 */  subu       $v1, $v1, $v0
  .Lfunc_800302DC_8003038C:
    /* 20B8C 8003038C FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 20B90 80030390 1000A2AF */  sw         $v0, 0x10($sp)
    /* 20B94 80030394 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 20B98 80030398 002C0400 */  sll        $a1, $a0, 16
    /* 20B9C 8003039C 00340900 */  sll        $a2, $t1, 16
    /* 20BA0 800303A0 21000434 */  ori        $a0, $zero, 0x21
    /* 20BA4 800303A4 032C0500 */  sra        $a1, $a1, 16
    /* 20BA8 800303A8 03340600 */  sra        $a2, $a2, 16
    /* 20BAC 800303AC FFFFE730 */  andi       $a3, $a3, 0xFFFF
    /* 20BB0 800303B0 B1BE000C */  jal        SndNoteOn
    /* 20BB4 800303B4 1400A2AF */   sw        $v0, 0x14($sp)
    /* 20BB8 800303B8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 20BBC 800303BC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 20BC0 800303C0 0800E003 */  jr         $ra
    /* 20BC4 800303C4 00000000 */   nop
endlabel SndNoteOnEx
