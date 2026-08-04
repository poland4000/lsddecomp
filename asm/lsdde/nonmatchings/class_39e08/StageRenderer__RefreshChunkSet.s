.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__RefreshChunkSet, 0x1A4

glabel StageRenderer__RefreshChunkSet
    /* 3C33C 8004BB3C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 3C340 8004BB40 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3C344 8004BB44 21888000 */  addu       $s1, $a0, $zero
    /* 3C348 8004BB48 2800B4AF */  sw         $s4, 0x28($sp)
    /* 3C34C 8004BB4C 21A0A000 */  addu       $s4, $a1, $zero
    /* 3C350 8004BB50 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 3C354 8004BB54 21A8C000 */  addu       $s5, $a2, $zero
    /* 3C358 8004BB58 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3C35C 8004BB5C 21900000 */  addu       $s2, $zero, $zero
    /* 3C360 8004BB60 3400BFAF */  sw         $ra, 0x34($sp)
    /* 3C364 8004BB64 3000B6AF */  sw         $s6, 0x30($sp)
    /* 3C368 8004BB68 2400B3AF */  sw         $s3, 0x24($sp)
    /* 3C36C 8004BB6C 4E00A01A */  blez       $s5, .Lfunc_8004BB3C_8004BCA8
    /* 3C370 8004BB70 1800B0AF */   sw        $s0, 0x18($sp)
    /* 3C374 8004BB74 01001634 */  ori        $s6, $zero, 0x1
    /* 3C378 8004BB78 0400B324 */  addiu      $s3, $a1, 0x4
  .Lfunc_8004BB3C_8004BB7C:
    /* 3C37C 8004BB7C 0000228E */  lw         $v0, 0x0($s1)
    /* 3C380 8004BB80 0400658E */  lw         $a1, 0x4($s3)
    /* 3C384 8004BB84 1801428C */  lw         $v0, 0x118($v0)
    /* 3C388 8004BB88 00000000 */  nop
    /* 3C38C 8004BB8C 09F84000 */  jalr       $v0
    /* 3C390 8004BB90 21202002 */   addu      $a0, $s1, $zero
    /* 3C394 8004BB94 21202002 */  addu       $a0, $s1, $zero
    /* 3C398 8004BB98 06000534 */  ori        $a1, $zero, 0x6
    /* 3C39C 8004BB9C 21804000 */  addu       $s0, $v0, $zero
    /* 3C3A0 8004BBA0 0000228E */  lw         $v0, 0x0($s1)
    /* 3C3A4 8004BBA4 21300002 */  addu       $a2, $s0, $zero
    /* 3C3A8 8004BBA8 8800428C */  lw         $v0, 0x88($v0)
    /* 3C3AC 8004BBAC 00000000 */  nop
    /* 3C3B0 8004BBB0 09F84000 */  jalr       $v0
    /* 3C3B4 8004BBB4 21384002 */   addu      $a3, $s2, $zero
    /* 3C3B8 8004BBB8 0000828E */  lw         $v0, 0x0($s4)
    /* 3C3BC 8004BBBC 00000000 */  nop
    /* 3C3C0 8004BBC0 1C004010 */  beqz       $v0, .Lfunc_8004BB3C_8004BC34
    /* 3C3C4 8004BBC4 00000000 */   nop
    /* 3C3C8 8004BBC8 0400028E */  lw         $v0, 0x4($s0)
    /* 3C3CC 8004BBCC 00000000 */  nop
    /* 3C3D0 8004BBD0 2C004284 */  lh         $v0, 0x2C($v0)
    /* 3C3D4 8004BBD4 00000000 */  nop
    /* 3C3D8 8004BBD8 07004010 */  beqz       $v0, .Lfunc_8004BB3C_8004BBF8
    /* 3C3DC 8004BBDC 21202002 */   addu      $a0, $s1, $zero
    /* 3C3E0 8004BBE0 0000228E */  lw         $v0, 0x0($s1)
    /* 3C3E4 8004BBE4 00000000 */  nop
    /* 3C3E8 8004BBE8 0801428C */  lw         $v0, 0x108($v0)
    /* 3C3EC 8004BBEC 00000000 */  nop
    /* 3C3F0 8004BBF0 09F84000 */  jalr       $v0
    /* 3C3F4 8004BBF4 21280002 */   addu      $a1, $s0, $zero
  .Lfunc_8004BB3C_8004BBF8:
    /* 3C3F8 8004BBF8 0400038E */  lw         $v1, 0x4($s0)
    /* 3C3FC 8004BBFC 00006296 */  lhu        $v0, 0x0($s3)
    /* 3C400 8004BC00 00000000 */  nop
    /* 3C404 8004BC04 300062A4 */  sh         $v0, 0x30($v1)
    /* 3C408 8004BC08 0400048E */  lw         $a0, 0x4($s0)
    /* 3C40C 8004BC0C 00000000 */  nop
    /* 3C410 8004BC10 0000828C */  lw         $v0, 0x0($a0)
    /* 3C414 8004BC14 0000858E */  lw         $a1, 0x0($s4)
    /* 3C418 8004BC18 7800428C */  lw         $v0, 0x78($v0)
    /* 3C41C 8004BC1C 00000000 */  nop
    /* 3C420 8004BC20 09F84000 */  jalr       $v0
    /* 3C424 8004BC24 0C007326 */   addiu     $s3, $s3, 0xC
    /* 3C428 8004BC28 000016A6 */  sh         $s6, 0x0($s0)
    /* 3C42C 8004BC2C 262F0108 */  j          .Lfunc_8004BB3C_8004BC98
    /* 3C430 8004BC30 B00136AE */   sw        $s6, 0x1B0($s1)
  .Lfunc_8004BB3C_8004BC34:
    /* 3C434 8004BC34 0400028E */  lw         $v0, 0x4($s0)
    /* 3C438 8004BC38 00000000 */  nop
    /* 3C43C 8004BC3C 2C004284 */  lh         $v0, 0x2C($v0)
    /* 3C440 8004BC40 00000000 */  nop
    /* 3C444 8004BC44 07004010 */  beqz       $v0, .Lfunc_8004BB3C_8004BC64
    /* 3C448 8004BC48 21202002 */   addu      $a0, $s1, $zero
    /* 3C44C 8004BC4C 0000228E */  lw         $v0, 0x0($s1)
    /* 3C450 8004BC50 00000000 */  nop
    /* 3C454 8004BC54 0801428C */  lw         $v0, 0x108($v0)
    /* 3C458 8004BC58 00000000 */  nop
    /* 3C45C 8004BC5C 09F84000 */  jalr       $v0
    /* 3C460 8004BC60 21280002 */   addu      $a1, $s0, $zero
  .Lfunc_8004BB3C_8004BC64:
    /* 3C464 8004BC64 0400048E */  lw         $a0, 0x4($s0)
    /* 3C468 8004BC68 00000000 */  nop
    /* 3C46C 8004BC6C 2A008294 */  lhu        $v0, 0x2A($a0)
    /* 3C470 8004BC70 00000000 */  nop
    /* 3C474 8004BC74 08004010 */  beqz       $v0, .Lfunc_8004BB3C_8004BC98
    /* 3C478 8004BC78 0C007326 */   addiu     $s3, $s3, 0xC
    /* 3C47C 8004BC7C 0000828C */  lw         $v0, 0x0($a0)
    /* 3C480 8004BC80 00000000 */  nop
    /* 3C484 8004BC84 7400428C */  lw         $v0, 0x74($v0)
    /* 3C488 8004BC88 00000000 */  nop
    /* 3C48C 8004BC8C 09F84000 */  jalr       $v0
    /* 3C490 8004BC90 00000000 */   nop
    /* 3C494 8004BC94 000000A6 */  sh         $zero, 0x0($s0)
  .Lfunc_8004BB3C_8004BC98:
    /* 3C498 8004BC98 01005226 */  addiu      $s2, $s2, 0x1
    /* 3C49C 8004BC9C 2A105502 */  slt        $v0, $s2, $s5
    /* 3C4A0 8004BCA0 B6FF4014 */  bnez       $v0, .Lfunc_8004BB3C_8004BB7C
    /* 3C4A4 8004BCA4 0C009426 */   addiu     $s4, $s4, 0xC
  .Lfunc_8004BB3C_8004BCA8:
    /* 3C4A8 8004BCA8 382F010C */  jal        StageRenderer__CountActiveSubRenderers
    /* 3C4AC 8004BCAC 21202002 */   addu      $a0, $s1, $zero
    /* 3C4B0 8004BCB0 B40122A6 */  sh         $v0, 0x1B4($s1)
    /* 3C4B4 8004BCB4 3400BF8F */  lw         $ra, 0x34($sp)
    /* 3C4B8 8004BCB8 3000B68F */  lw         $s6, 0x30($sp)
    /* 3C4BC 8004BCBC 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 3C4C0 8004BCC0 2800B48F */  lw         $s4, 0x28($sp)
    /* 3C4C4 8004BCC4 2400B38F */  lw         $s3, 0x24($sp)
    /* 3C4C8 8004BCC8 2000B28F */  lw         $s2, 0x20($sp)
    /* 3C4CC 8004BCCC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3C4D0 8004BCD0 1800B08F */  lw         $s0, 0x18($sp)
    /* 3C4D4 8004BCD4 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 3C4D8 8004BCD8 0800E003 */  jr         $ra
    /* 3C4DC 8004BCDC 00000000 */   nop
endlabel StageRenderer__RefreshChunkSet
