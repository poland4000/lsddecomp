.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndSeqOp_Pan, 0x13C

glabel SndSeqOp_Pan
    /* 252EC 80034AEC 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 252F0 80034AF0 21388000 */  addu       $a3, $a0, $zero
    /* 252F4 80034AF4 2140A000 */  addu       $t0, $a1, $zero
    /* 252F8 80034AF8 6400B7AF */  sw         $s7, 0x64($sp)
    /* 252FC 80034AFC 21B8C000 */  addu       $s7, $a2, $zero
    /* 25300 80034B00 1000A627 */  addiu      $a2, $sp, 0x10
    /* 25304 80034B04 00240700 */  sll        $a0, $a3, 16
    /* 25308 80034B08 83230400 */  sra        $a0, $a0, 14
    /* 2530C 80034B0C 001C0800 */  sll        $v1, $t0, 16
    /* 25310 80034B10 031C0300 */  sra        $v1, $v1, 16
    /* 25314 80034B14 40100300 */  sll        $v0, $v1, 1
    /* 25318 80034B18 21104300 */  addu       $v0, $v0, $v1
    /* 2531C 80034B1C 80100200 */  sll        $v0, $v0, 2
    /* 25320 80034B20 23104300 */  subu       $v0, $v0, $v1
    /* 25324 80034B24 80100200 */  sll        $v0, $v0, 2
    /* 25328 80034B28 23104300 */  subu       $v0, $v0, $v1
    /* 2532C 80034B2C 80100200 */  sll        $v0, $v0, 2
    /* 25330 80034B30 6800BFAF */  sw         $ra, 0x68($sp)
    /* 25334 80034B34 6000B6AF */  sw         $s6, 0x60($sp)
    /* 25338 80034B38 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 2533C 80034B3C 5800B4AF */  sw         $s4, 0x58($sp)
    /* 25340 80034B40 5400B3AF */  sw         $s3, 0x54($sp)
    /* 25344 80034B44 5000B2AF */  sw         $s2, 0x50($sp)
    /* 25348 80034B48 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 2534C 80034B4C 4800B0AF */  sw         $s0, 0x48($sp)
    /* 25350 80034B50 0980013C */  lui        $at, %hi(gSoundBankTable)
    /* 25354 80034B54 E8022124 */  addiu      $at, $at, %lo(gSoundBankTable)
    /* 25358 80034B58 21082400 */  addu       $at, $at, $a0
    /* 2535C 80034B5C 0000238C */  lw         $v1, 0x0($at)
    /* 25360 80034B60 21A8E000 */  addu       $s5, $a3, $zero
    /* 25364 80034B64 21904300 */  addu       $s2, $v0, $v1
    /* 25368 80034B68 12004292 */  lbu        $v0, 0x12($s2)
    /* 2536C 80034B6C 4C004486 */  lh         $a0, 0x4C($s2)
    /* 25370 80034B70 21804202 */  addu       $s0, $s2, $v0
    /* 25374 80034B74 2C000592 */  lbu        $a1, 0x2C($s0)
    /* 25378 80034B78 3CCD000C */  jal        SndSetSlotVolume
    /* 2537C 80034B7C 21B00001 */   addu      $s6, $t0, $zero
    /* 25380 80034B80 1000A293 */  lbu        $v0, 0x10($sp)
    /* 25384 80034B84 00000000 */  nop
    /* 25388 80034B88 15004018 */  blez       $v0, .Lfunc_80034AEC_80034BE0
    /* 2538C 80034B8C 21880000 */   addu      $s1, $zero, $zero
    /* 25390 80034B90 21A00002 */  addu       $s4, $s0, $zero
    /* 25394 80034B94 2000B327 */  addiu      $s3, $sp, 0x20
    /* 25398 80034B98 00841100 */  sll        $s0, $s1, 16
  .Lfunc_80034AEC_80034B9C:
    /* 2539C 80034B9C 03841000 */  sra        $s0, $s0, 16
    /* 253A0 80034BA0 21300002 */  addu       $a2, $s0, $zero
    /* 253A4 80034BA4 4C004486 */  lh         $a0, 0x4C($s2)
    /* 253A8 80034BA8 2C008592 */  lbu        $a1, 0x2C($s4)
    /* 253AC 80034BAC 98CC000C */  jal        SndSetSlotParam
    /* 253B0 80034BB0 21386002 */   addu      $a3, $s3, $zero
    /* 253B4 80034BB4 21300002 */  addu       $a2, $s0, $zero
    /* 253B8 80034BB8 2B00B7A3 */  sb         $s7, 0x2B($sp)
    /* 253BC 80034BBC 4C004486 */  lh         $a0, 0x4C($s2)
    /* 253C0 80034BC0 2C008592 */  lbu        $a1, 0x2C($s4)
    /* 253C4 80034BC4 8CD8000C */  jal        func_80036230
    /* 253C8 80034BC8 21386002 */   addu      $a3, $s3, $zero
    /* 253CC 80034BCC 1000A293 */  lbu        $v0, 0x10($sp)
    /* 253D0 80034BD0 01003126 */  addiu      $s1, $s1, 0x1
    /* 253D4 80034BD4 2A102202 */  slt        $v0, $s1, $v0
    /* 253D8 80034BD8 F0FF4014 */  bnez       $v0, .Lfunc_80034AEC_80034B9C
    /* 253DC 80034BDC 00841100 */   sll       $s0, $s1, 16
  .Lfunc_80034AEC_80034BE0:
    /* 253E0 80034BE0 00241500 */  sll        $a0, $s5, 16
    /* 253E4 80034BE4 03240400 */  sra        $a0, $a0, 16
    /* 253E8 80034BE8 002C1600 */  sll        $a1, $s6, 16
    /* 253EC 80034BEC A0D7000C */  jal        SndGetBankEntryField
    /* 253F0 80034BF0 032C0500 */   sra       $a1, $a1, 16
    /* 253F4 80034BF4 880042AE */  sw         $v0, 0x88($s2)
    /* 253F8 80034BF8 6800BF8F */  lw         $ra, 0x68($sp)
    /* 253FC 80034BFC 6400B78F */  lw         $s7, 0x64($sp)
    /* 25400 80034C00 6000B68F */  lw         $s6, 0x60($sp)
    /* 25404 80034C04 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 25408 80034C08 5800B48F */  lw         $s4, 0x58($sp)
    /* 2540C 80034C0C 5400B38F */  lw         $s3, 0x54($sp)
    /* 25410 80034C10 5000B28F */  lw         $s2, 0x50($sp)
    /* 25414 80034C14 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 25418 80034C18 4800B08F */  lw         $s0, 0x48($sp)
    /* 2541C 80034C1C 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 25420 80034C20 0800E003 */  jr         $ra
    /* 25424 80034C24 00000000 */   nop
endlabel SndSeqOp_Pan
