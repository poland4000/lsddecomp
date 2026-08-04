.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndSeqOp_Expression, 0x168

glabel SndSeqOp_Expression
    /* 25428 80034C28 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 2542C 80034C2C 21388000 */  addu       $a3, $a0, $zero
    /* 25430 80034C30 2140A000 */  addu       $t0, $a1, $zero
    /* 25434 80034C34 5800B4AF */  sw         $s4, 0x58($sp)
    /* 25438 80034C38 21A0C000 */  addu       $s4, $a2, $zero
    /* 2543C 80034C3C 1000A627 */  addiu      $a2, $sp, 0x10
    /* 25440 80034C40 00240700 */  sll        $a0, $a3, 16
    /* 25444 80034C44 83230400 */  sra        $a0, $a0, 14
    /* 25448 80034C48 001C0800 */  sll        $v1, $t0, 16
    /* 2544C 80034C4C 031C0300 */  sra        $v1, $v1, 16
    /* 25450 80034C50 40100300 */  sll        $v0, $v1, 1
    /* 25454 80034C54 21104300 */  addu       $v0, $v0, $v1
    /* 25458 80034C58 80100200 */  sll        $v0, $v0, 2
    /* 2545C 80034C5C 23104300 */  subu       $v0, $v0, $v1
    /* 25460 80034C60 80100200 */  sll        $v0, $v0, 2
    /* 25464 80034C64 23104300 */  subu       $v0, $v0, $v1
    /* 25468 80034C68 80100200 */  sll        $v0, $v0, 2
    /* 2546C 80034C6C 6800BFAF */  sw         $ra, 0x68($sp)
    /* 25470 80034C70 6400B7AF */  sw         $s7, 0x64($sp)
    /* 25474 80034C74 6000B6AF */  sw         $s6, 0x60($sp)
    /* 25478 80034C78 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 2547C 80034C7C 5400B3AF */  sw         $s3, 0x54($sp)
    /* 25480 80034C80 5000B2AF */  sw         $s2, 0x50($sp)
    /* 25484 80034C84 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 25488 80034C88 4800B0AF */  sw         $s0, 0x48($sp)
    /* 2548C 80034C8C 0980013C */  lui        $at, %hi(gSoundBankTable)
    /* 25490 80034C90 E8022124 */  addiu      $at, $at, %lo(gSoundBankTable)
    /* 25494 80034C94 21082400 */  addu       $at, $at, $a0
    /* 25498 80034C98 0000238C */  lw         $v1, 0x0($at)
    /* 2549C 80034C9C 21B0E000 */  addu       $s6, $a3, $zero
    /* 254A0 80034CA0 21904300 */  addu       $s2, $v0, $v1
    /* 254A4 80034CA4 12004292 */  lbu        $v0, 0x12($s2)
    /* 254A8 80034CA8 4C004486 */  lh         $a0, 0x4C($s2)
    /* 254AC 80034CAC 21804202 */  addu       $s0, $s2, $v0
    /* 254B0 80034CB0 2C000592 */  lbu        $a1, 0x2C($s0)
    /* 254B4 80034CB4 3CCD000C */  jal        SndSetSlotVolume
    /* 254B8 80034CB8 21B80001 */   addu      $s7, $t0, $zero
    /* 254BC 80034CBC 1000A293 */  lbu        $v0, 0x10($sp)
    /* 254C0 80034CC0 00000000 */  nop
    /* 254C4 80034CC4 20004018 */  blez       $v0, .Lfunc_80034C28_80034D48
    /* 254C8 80034CC8 21880000 */   addu      $s1, $zero, $zero
    /* 254CC 80034CCC 21980002 */  addu       $s3, $s0, $zero
    /* 254D0 80034CD0 FF008232 */  andi       $v0, $s4, 0xFF
    /* 254D4 80034CD4 4000552C */  sltiu      $s5, $v0, 0x40
    /* 254D8 80034CD8 21800000 */  addu       $s0, $zero, $zero
  .Lfunc_80034C28_80034CDC:
    /* 254DC 80034CDC 03341000 */  sra        $a2, $s0, 16
    /* 254E0 80034CE0 4C004486 */  lh         $a0, 0x4C($s2)
    /* 254E4 80034CE4 2C006592 */  lbu        $a1, 0x2C($s3)
    /* 254E8 80034CE8 98CC000C */  jal        SndSetSlotParam
    /* 254EC 80034CEC 2000A727 */   addiu     $a3, $sp, 0x20
    /* 254F0 80034CF0 0300A012 */  beqz       $s5, .Lfunc_80034C28_80034D00
    /* 254F4 80034CF4 02000234 */   ori       $v0, $zero, 0x2
    /* 254F8 80034CF8 46D30008 */  j          .Lfunc_80034C28_80034D18
    /* 254FC 80034CFC 2100A2A3 */   sb        $v0, 0x21($sp)
  .Lfunc_80034C28_80034D00:
    /* 25500 80034D00 C0008226 */  addiu      $v0, $s4, 0xC0
    /* 25504 80034D04 FF004230 */  andi       $v0, $v0, 0xFF
    /* 25508 80034D08 4000422C */  sltiu      $v0, $v0, 0x40
    /* 2550C 80034D0C 03004010 */  beqz       $v0, .Lfunc_80034C28_80034D1C
    /* 25510 80034D10 03341000 */   sra       $a2, $s0, 16
    /* 25514 80034D14 2100A0A3 */  sb         $zero, 0x21($sp)
  .Lfunc_80034C28_80034D18:
    /* 25518 80034D18 03341000 */  sra        $a2, $s0, 16
  .Lfunc_80034C28_80034D1C:
    /* 2551C 80034D1C 2000A727 */  addiu      $a3, $sp, 0x20
    /* 25520 80034D20 4C004486 */  lh         $a0, 0x4C($s2)
    /* 25524 80034D24 2C006592 */  lbu        $a1, 0x2C($s3)
    /* 25528 80034D28 8CD8000C */  jal        func_80036230
    /* 2552C 80034D2C 01003126 */   addiu     $s1, $s1, 0x1
    /* 25530 80034D30 0100033C */  lui        $v1, (0x10000 >> 16)
    /* 25534 80034D34 1000A293 */  lbu        $v0, 0x10($sp)
    /* 25538 80034D38 00000000 */  nop
    /* 2553C 80034D3C 2A102202 */  slt        $v0, $s1, $v0
    /* 25540 80034D40 E6FF4014 */  bnez       $v0, .Lfunc_80034C28_80034CDC
    /* 25544 80034D44 21800302 */   addu      $s0, $s0, $v1
  .Lfunc_80034C28_80034D48:
    /* 25548 80034D48 00241600 */  sll        $a0, $s6, 16
    /* 2554C 80034D4C 03240400 */  sra        $a0, $a0, 16
    /* 25550 80034D50 002C1700 */  sll        $a1, $s7, 16
    /* 25554 80034D54 A0D7000C */  jal        SndGetBankEntryField
    /* 25558 80034D58 032C0500 */   sra       $a1, $a1, 16
    /* 2555C 80034D5C 880042AE */  sw         $v0, 0x88($s2)
    /* 25560 80034D60 6800BF8F */  lw         $ra, 0x68($sp)
    /* 25564 80034D64 6400B78F */  lw         $s7, 0x64($sp)
    /* 25568 80034D68 6000B68F */  lw         $s6, 0x60($sp)
    /* 2556C 80034D6C 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 25570 80034D70 5800B48F */  lw         $s4, 0x58($sp)
    /* 25574 80034D74 5400B38F */  lw         $s3, 0x54($sp)
    /* 25578 80034D78 5000B28F */  lw         $s2, 0x50($sp)
    /* 2557C 80034D7C 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 25580 80034D80 4800B08F */  lw         $s0, 0x48($sp)
    /* 25584 80034D84 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 25588 80034D88 0800E003 */  jr         $ra
    /* 2558C 80034D8C 00000000 */   nop
endlabel SndSeqOp_Expression
