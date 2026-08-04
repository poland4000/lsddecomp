.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__Method11C, 0x118

glabel StageRenderer__Method11C
    /* 3CC70 8004C470 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3CC74 8004C474 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3CC78 8004C478 21908000 */  addu       $s2, $a0, $zero
    /* 3CC7C 8004C47C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3CC80 8004C480 2198A000 */  addu       $s3, $a1, $zero
    /* 3CC84 8004C484 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3CC88 8004C488 21880000 */  addu       $s1, $zero, $zero
    /* 3CC8C 8004C48C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3CC90 8004C490 00A01434 */  ori        $s4, $zero, 0xA000
    /* 3CC94 8004C494 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3CC98 8004C498 21800000 */  addu       $s0, $zero, $zero
    /* 3CC9C 8004C49C 2400BFAF */  sw         $ra, 0x24($sp)
  .Lfunc_8004C470_8004C4A0:
    /* 3CCA0 8004C4A0 0000428E */  lw         $v0, 0x0($s2)
    /* 3CCA4 8004C4A4 21204002 */  addu       $a0, $s2, $zero
    /* 3CCA8 8004C4A8 1801428C */  lw         $v0, 0x118($v0)
    /* 3CCAC 8004C4AC 00000000 */  nop
    /* 3CCB0 8004C4B0 09F84000 */  jalr       $v0
    /* 3CCB4 8004C4B4 21282002 */   addu      $a1, $s1, $zero
    /* 3CCB8 8004C4B8 21304000 */  addu       $a2, $v0, $zero
    /* 3CCBC 8004C4BC 0C00C28C */  lw         $v0, 0xC($a2)
    /* 3CCC0 8004C4C0 00000000 */  nop
    /* 3CCC4 8004C4C4 1400458C */  lw         $a1, 0x14($v0)
    /* 3CCC8 8004C4C8 0000648E */  lw         $a0, 0x0($s3)
    /* 3CCCC 8004C4CC 1800A38C */  lw         $v1, 0x18($a1)
    /* 3CCD0 8004C4D0 00000000 */  nop
    /* 3CCD4 8004C4D4 2A108300 */  slt        $v0, $a0, $v1
    /* 3CCD8 8004C4D8 1D004014 */  bnez       $v0, .Lfunc_8004C470_8004C550
    /* 3CCDC 8004C4DC 21107400 */   addu      $v0, $v1, $s4
    /* 3CCE0 8004C4E0 2A108200 */  slt        $v0, $a0, $v0
    /* 3CCE4 8004C4E4 1A004010 */  beqz       $v0, .Lfunc_8004C470_8004C550
    /* 3CCE8 8004C4E8 00000000 */   nop
    /* 3CCEC 8004C4EC 0800648E */  lw         $a0, 0x8($s3)
    /* 3CCF0 8004C4F0 2000A38C */  lw         $v1, 0x20($a1)
    /* 3CCF4 8004C4F4 00000000 */  nop
    /* 3CCF8 8004C4F8 2A108300 */  slt        $v0, $a0, $v1
    /* 3CCFC 8004C4FC 14004014 */  bnez       $v0, .Lfunc_8004C470_8004C550
    /* 3CD00 8004C500 21107400 */   addu      $v0, $v1, $s4
    /* 3CD04 8004C504 2A108200 */  slt        $v0, $a0, $v0
    /* 3CD08 8004C508 11004010 */  beqz       $v0, .Lfunc_8004C470_8004C550
    /* 3CD0C 8004C50C 00000000 */   nop
    /* 3CD10 8004C510 6800428E */  lw         $v0, 0x68($s2)
    /* 3CD14 8004C514 00000000 */  nop
    /* 3CD18 8004C518 0400428C */  lw         $v0, 0x4($v0)
    /* 3CD1C 8004C51C 00000000 */  nop
    /* 3CD20 8004C520 10004010 */  beqz       $v0, .Lfunc_8004C470_8004C564
    /* 3CD24 8004C524 2110C000 */   addu      $v0, $a2, $zero
    /* 3CD28 8004C528 0400638E */  lw         $v1, 0x4($s3)
    /* 3CD2C 8004C52C 00000000 */  nop
    /* 3CD30 8004C530 2A100302 */  slt        $v0, $s0, $v1
    /* 3CD34 8004C534 06004014 */  bnez       $v0, .Lfunc_8004C470_8004C550
    /* 3CD38 8004C538 00F80226 */   addiu     $v0, $s0, -0x800
    /* 3CD3C 8004C53C 2A104300 */  slt        $v0, $v0, $v1
    /* 3CD40 8004C540 04004010 */  beqz       $v0, .Lfunc_8004C470_8004C554
    /* 3CD44 8004C544 01003126 */   addiu     $s1, $s1, 0x1
    /* 3CD48 8004C548 59310108 */  j          .Lfunc_8004C470_8004C564
    /* 3CD4C 8004C54C 2110C000 */   addu      $v0, $a2, $zero
  .Lfunc_8004C470_8004C550:
    /* 3CD50 8004C550 01003126 */  addiu      $s1, $s1, 0x1
  .Lfunc_8004C470_8004C554:
    /* 3CD54 8004C554 0700222A */  slti       $v0, $s1, 0x7
    /* 3CD58 8004C558 D1FF4014 */  bnez       $v0, .Lfunc_8004C470_8004C4A0
    /* 3CD5C 8004C55C 00F81026 */   addiu     $s0, $s0, -0x800
    /* 3CD60 8004C560 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_8004C470_8004C564:
    /* 3CD64 8004C564 2400BF8F */  lw         $ra, 0x24($sp)
    /* 3CD68 8004C568 2000B48F */  lw         $s4, 0x20($sp)
    /* 3CD6C 8004C56C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3CD70 8004C570 1800B28F */  lw         $s2, 0x18($sp)
    /* 3CD74 8004C574 1400B18F */  lw         $s1, 0x14($sp)
    /* 3CD78 8004C578 1000B08F */  lw         $s0, 0x10($sp)
    /* 3CD7C 8004C57C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3CD80 8004C580 0800E003 */  jr         $ra
    /* 3CD84 8004C584 00000000 */   nop
endlabel StageRenderer__Method11C
