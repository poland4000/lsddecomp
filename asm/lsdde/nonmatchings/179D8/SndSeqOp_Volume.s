.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndSeqOp_Volume, 0x13C

glabel SndSeqOp_Volume
    /* 251B0 800349B0 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 251B4 800349B4 21388000 */  addu       $a3, $a0, $zero
    /* 251B8 800349B8 2140A000 */  addu       $t0, $a1, $zero
    /* 251BC 800349BC 6400B7AF */  sw         $s7, 0x64($sp)
    /* 251C0 800349C0 21B8C000 */  addu       $s7, $a2, $zero
    /* 251C4 800349C4 1000A627 */  addiu      $a2, $sp, 0x10
    /* 251C8 800349C8 00240700 */  sll        $a0, $a3, 16
    /* 251CC 800349CC 83230400 */  sra        $a0, $a0, 14
    /* 251D0 800349D0 001C0800 */  sll        $v1, $t0, 16
    /* 251D4 800349D4 031C0300 */  sra        $v1, $v1, 16
    /* 251D8 800349D8 40100300 */  sll        $v0, $v1, 1
    /* 251DC 800349DC 21104300 */  addu       $v0, $v0, $v1
    /* 251E0 800349E0 80100200 */  sll        $v0, $v0, 2
    /* 251E4 800349E4 23104300 */  subu       $v0, $v0, $v1
    /* 251E8 800349E8 80100200 */  sll        $v0, $v0, 2
    /* 251EC 800349EC 23104300 */  subu       $v0, $v0, $v1
    /* 251F0 800349F0 80100200 */  sll        $v0, $v0, 2
    /* 251F4 800349F4 6800BFAF */  sw         $ra, 0x68($sp)
    /* 251F8 800349F8 6000B6AF */  sw         $s6, 0x60($sp)
    /* 251FC 800349FC 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 25200 80034A00 5800B4AF */  sw         $s4, 0x58($sp)
    /* 25204 80034A04 5400B3AF */  sw         $s3, 0x54($sp)
    /* 25208 80034A08 5000B2AF */  sw         $s2, 0x50($sp)
    /* 2520C 80034A0C 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 25210 80034A10 4800B0AF */  sw         $s0, 0x48($sp)
    /* 25214 80034A14 0980013C */  lui        $at, %hi(gSoundBankTable)
    /* 25218 80034A18 E8022124 */  addiu      $at, $at, %lo(gSoundBankTable)
    /* 2521C 80034A1C 21082400 */  addu       $at, $at, $a0
    /* 25220 80034A20 0000238C */  lw         $v1, 0x0($at)
    /* 25224 80034A24 21A8E000 */  addu       $s5, $a3, $zero
    /* 25228 80034A28 21904300 */  addu       $s2, $v0, $v1
    /* 2522C 80034A2C 12004292 */  lbu        $v0, 0x12($s2)
    /* 25230 80034A30 4C004486 */  lh         $a0, 0x4C($s2)
    /* 25234 80034A34 21804202 */  addu       $s0, $s2, $v0
    /* 25238 80034A38 2C000592 */  lbu        $a1, 0x2C($s0)
    /* 2523C 80034A3C 3CCD000C */  jal        SndSetSlotVolume
    /* 25240 80034A40 21B00001 */   addu      $s6, $t0, $zero
    /* 25244 80034A44 1000A293 */  lbu        $v0, 0x10($sp)
    /* 25248 80034A48 00000000 */  nop
    /* 2524C 80034A4C 15004018 */  blez       $v0, .Lfunc_800349B0_80034AA4
    /* 25250 80034A50 21880000 */   addu      $s1, $zero, $zero
    /* 25254 80034A54 21A00002 */  addu       $s4, $s0, $zero
    /* 25258 80034A58 2000B327 */  addiu      $s3, $sp, 0x20
    /* 2525C 80034A5C 00841100 */  sll        $s0, $s1, 16
  .Lfunc_800349B0_80034A60:
    /* 25260 80034A60 03841000 */  sra        $s0, $s0, 16
    /* 25264 80034A64 21300002 */  addu       $a2, $s0, $zero
    /* 25268 80034A68 4C004486 */  lh         $a0, 0x4C($s2)
    /* 2526C 80034A6C 2C008592 */  lbu        $a1, 0x2C($s4)
    /* 25270 80034A70 98CC000C */  jal        SndSetSlotParam
    /* 25274 80034A74 21386002 */   addu      $a3, $s3, $zero
    /* 25278 80034A78 21300002 */  addu       $a2, $s0, $zero
    /* 2527C 80034A7C 2800B7A3 */  sb         $s7, 0x28($sp)
    /* 25280 80034A80 4C004486 */  lh         $a0, 0x4C($s2)
    /* 25284 80034A84 2C008592 */  lbu        $a1, 0x2C($s4)
    /* 25288 80034A88 8CD8000C */  jal        func_80036230
    /* 2528C 80034A8C 21386002 */   addu      $a3, $s3, $zero
    /* 25290 80034A90 1000A293 */  lbu        $v0, 0x10($sp)
    /* 25294 80034A94 01003126 */  addiu      $s1, $s1, 0x1
    /* 25298 80034A98 2A102202 */  slt        $v0, $s1, $v0
    /* 2529C 80034A9C F0FF4014 */  bnez       $v0, .Lfunc_800349B0_80034A60
    /* 252A0 80034AA0 00841100 */   sll       $s0, $s1, 16
  .Lfunc_800349B0_80034AA4:
    /* 252A4 80034AA4 00241500 */  sll        $a0, $s5, 16
    /* 252A8 80034AA8 03240400 */  sra        $a0, $a0, 16
    /* 252AC 80034AAC 002C1600 */  sll        $a1, $s6, 16
    /* 252B0 80034AB0 A0D7000C */  jal        SndGetBankEntryField
    /* 252B4 80034AB4 032C0500 */   sra       $a1, $a1, 16
    /* 252B8 80034AB8 880042AE */  sw         $v0, 0x88($s2)
    /* 252BC 80034ABC 6800BF8F */  lw         $ra, 0x68($sp)
    /* 252C0 80034AC0 6400B78F */  lw         $s7, 0x64($sp)
    /* 252C4 80034AC4 6000B68F */  lw         $s6, 0x60($sp)
    /* 252C8 80034AC8 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 252CC 80034ACC 5800B48F */  lw         $s4, 0x58($sp)
    /* 252D0 80034AD0 5400B38F */  lw         $s3, 0x54($sp)
    /* 252D4 80034AD4 5000B28F */  lw         $s2, 0x50($sp)
    /* 252D8 80034AD8 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 252DC 80034ADC 4800B08F */  lw         $s0, 0x48($sp)
    /* 252E0 80034AE0 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 252E4 80034AE4 0800E003 */  jr         $ra
    /* 252E8 80034AE8 00000000 */   nop
endlabel SndSeqOp_Volume
