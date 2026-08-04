.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SlotAlloc__Update, 0x210

glabel SlotAlloc__Update
    /* 1D508 8002CD08 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1D50C 8002CD0C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1D510 8002CD10 2190A000 */  addu       $s2, $a1, $zero
    /* 1D514 8002CD14 2400BFAF */  sw         $ra, 0x24($sp)
    /* 1D518 8002CD18 2000B4AF */  sw         $s4, 0x20($sp)
    /* 1D51C 8002CD1C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1D520 8002CD20 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1D524 8002CD24 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1D528 8002CD28 0000428E */  lw         $v0, 0x0($s2)
    /* 1D52C 8002CD2C 00000000 */  nop
    /* 1D530 8002CD30 70004018 */  blez       $v0, .Lfunc_8002CD08_8002CEF4
    /* 1D534 8002CD34 21808000 */   addu      $s0, $a0, $zero
    /* 1D538 8002CD38 21980000 */  addu       $s3, $zero, $zero
    /* 1D53C 8002CD3C FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 1D540 8002CD40 7F000534 */  ori        $a1, $zero, 0x7F
    /* 1D544 8002CD44 40000434 */  ori        $a0, $zero, 0x40
    /* 1D548 8002CD48 28004326 */  addiu      $v1, $s2, 0x28
  .Lfunc_8002CD08_8002CD4C:
    /* 1D54C 8002CD4C 01007326 */  addiu      $s3, $s3, 0x1
    /* 1D550 8002CD50 F4FF66AC */  sw         $a2, -0xC($v1)
    /* 1D554 8002CD54 F8FF60AC */  sw         $zero, -0x8($v1)
    /* 1D558 8002CD58 FCFF65AC */  sw         $a1, -0x4($v1)
    /* 1D55C 8002CD5C 000064AC */  sw         $a0, 0x0($v1)
    /* 1D560 8002CD60 0300622A */  slti       $v0, $s3, 0x3
    /* 1D564 8002CD64 F9FF4014 */  bnez       $v0, .Lfunc_8002CD08_8002CD4C
    /* 1D568 8002CD68 14006324 */   addiu     $v1, $v1, 0x14
    /* 1D56C 8002CD6C 0C00428E */  lw         $v0, 0xC($s2)
    /* 1D570 8002CD70 00000000 */  nop
    /* 1D574 8002CD74 04004010 */  beqz       $v0, .Lfunc_8002CD08_8002CD88
    /* 1D578 8002CD78 100040AE */   sw        $zero, 0x10($s2)
    /* 1D57C 8002CD7C 0800448E */  lw         $a0, 0x8($s2)
    /* 1D580 8002CD80 09F84000 */  jalr       $v0
    /* 1D584 8002CD84 21284002 */   addu      $a1, $s2, $zero
  .Lfunc_8002CD08_8002CD88:
    /* 1D588 8002CD88 1000428E */  lw         $v0, 0x10($s2)
    /* 1D58C 8002CD8C 00000000 */  nop
    /* 1D590 8002CD90 54004004 */  bltz       $v0, .Lfunc_8002CD08_8002CEE4
    /* 1D594 8002CD94 00000000 */   nop
    /* 1D598 8002CD98 18005426 */  addiu      $s4, $s2, 0x18
    /* 1D59C 8002CD9C 21980000 */  addu       $s3, $zero, $zero
    /* 1D5A0 8002CDA0 28005126 */  addiu      $s1, $s2, 0x28
  .Lfunc_8002CD08_8002CDA4:
    /* 1D5A4 8002CDA4 F4FF238E */  lw         $v1, -0xC($s1)
    /* 1D5A8 8002CDA8 00000000 */  nop
    /* 1D5AC 8002CDAC 3D006004 */  bltz       $v1, .Lfunc_8002CD08_8002CEA4
    /* 1D5B0 8002CDB0 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 1D5B4 8002CDB4 0000858E */  lw         $a1, 0x0($s4)
    /* 1D5B8 8002CDB8 00000000 */  nop
    /* 1D5BC 8002CDBC 0700A004 */  bltz       $a1, .Lfunc_8002CD08_8002CDDC
    /* 1D5C0 8002CDC0 01007326 */   addiu     $s3, $s3, 0x1
    /* 1D5C4 8002CDC4 0000028E */  lw         $v0, 0x0($s0)
    /* 1D5C8 8002CDC8 00000000 */  nop
    /* 1D5CC 8002CDCC 8400428C */  lw         $v0, 0x84($v0)
    /* 1D5D0 8002CDD0 00000000 */  nop
    /* 1D5D4 8002CDD4 09F84000 */  jalr       $v0
    /* 1D5D8 8002CDD8 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_8002CD08_8002CDDC:
    /* 1D5DC 8002CDDC 0000028E */  lw         $v0, 0x0($s0)
    /* 1D5E0 8002CDE0 F8FF258E */  lw         $a1, -0x8($s1)
    /* 1D5E4 8002CDE4 9C00428C */  lw         $v0, 0x9C($v0)
    /* 1D5E8 8002CDE8 00000000 */  nop
    /* 1D5EC 8002CDEC 09F84000 */  jalr       $v0
    /* 1D5F0 8002CDF0 21200002 */   addu      $a0, $s0, $zero
    /* 1D5F4 8002CDF4 FCFF278E */  lw         $a3, -0x4($s1)
    /* 1D5F8 8002CDF8 1400428E */  lw         $v0, 0x14($s2)
    /* 1D5FC 8002CDFC 00000000 */  nop
    /* 1D600 8002CE00 1A00E200 */  div        $zero, $a3, $v0
    /* 1D604 8002CE04 02004014 */  bnez       $v0, .Lfunc_8002CD08_8002CE10
    /* 1D608 8002CE08 00000000 */   nop
    /* 1D60C 8002CE0C 0D000700 */  break      7
  .Lfunc_8002CD08_8002CE10:
    /* 1D610 8002CE10 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 1D614 8002CE14 04004114 */  bne        $v0, $at, .Lfunc_8002CD08_8002CE28
    /* 1D618 8002CE18 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 1D61C 8002CE1C 0200E114 */  bne        $a3, $at, .Lfunc_8002CD08_8002CE28
    /* 1D620 8002CE20 00000000 */   nop
    /* 1D624 8002CE24 0D000600 */  break      6
  .Lfunc_8002CD08_8002CE28:
    /* 1D628 8002CE28 12200000 */  mflo       $a0
    /* 1D62C 8002CE2C 1000458E */  lw         $a1, 0x10($s2)
    /* 1D630 8002CE30 00000000 */  nop
    /* 1D634 8002CE34 18008500 */  mult       $a0, $a1
    /* 1D638 8002CE38 12300000 */  mflo       $a2
    /* 1D63C 8002CE3C 0000288E */  lw         $t0, 0x0($s1)
    /* 1D640 8002CE40 00000000 */  nop
    /* 1D644 8002CE44 1A000201 */  div        $zero, $t0, $v0
    /* 1D648 8002CE48 02004014 */  bnez       $v0, .Lfunc_8002CD08_8002CE54
    /* 1D64C 8002CE4C 00000000 */   nop
    /* 1D650 8002CE50 0D000700 */  break      7
  .Lfunc_8002CD08_8002CE54:
    /* 1D654 8002CE54 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 1D658 8002CE58 04004114 */  bne        $v0, $at, .Lfunc_8002CD08_8002CE6C
    /* 1D65C 8002CE5C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 1D660 8002CE60 02000115 */  bne        $t0, $at, .Lfunc_8002CD08_8002CE6C
    /* 1D664 8002CE64 00000000 */   nop
    /* 1D668 8002CE68 0D000600 */  break      6
  .Lfunc_8002CD08_8002CE6C:
    /* 1D66C 8002CE6C 12100000 */  mflo       $v0
    /* 1D670 8002CE70 00000000 */  nop
    /* 1D674 8002CE74 18004500 */  mult       $v0, $a1
    /* 1D678 8002CE78 21200002 */  addu       $a0, $s0, $zero
    /* 1D67C 8002CE7C 2330E600 */  subu       $a2, $a3, $a2
    /* 1D680 8002CE80 F4FF258E */  lw         $a1, -0xC($s1)
    /* 1D684 8002CE84 0000028E */  lw         $v0, 0x0($s0)
    /* 1D688 8002CE88 00290500 */  sll        $a1, $a1, 4
    /* 1D68C 8002CE8C 8000428C */  lw         $v0, 0x80($v0)
    /* 1D690 8002CE90 12380000 */  mflo       $a3
    /* 1D694 8002CE94 09F84000 */  jalr       $v0
    /* 1D698 8002CE98 23380701 */   subu      $a3, $t0, $a3
    /* 1D69C 8002CE9C B5B30008 */  j          .Lfunc_8002CD08_8002CED4
    /* 1D6A0 8002CEA0 000082AE */   sw        $v0, 0x0($s4)
  .Lfunc_8002CD08_8002CEA4:
    /* 1D6A4 8002CEA4 0B006214 */  bne        $v1, $v0, .Lfunc_8002CD08_8002CED4
    /* 1D6A8 8002CEA8 01007326 */   addiu     $s3, $s3, 0x1
    /* 1D6AC 8002CEAC 0000858E */  lw         $a1, 0x0($s4)
    /* 1D6B0 8002CEB0 00000000 */  nop
    /* 1D6B4 8002CEB4 0700A004 */  bltz       $a1, .Lfunc_8002CD08_8002CED4
    /* 1D6B8 8002CEB8 00000000 */   nop
    /* 1D6BC 8002CEBC 0000028E */  lw         $v0, 0x0($s0)
    /* 1D6C0 8002CEC0 00000000 */  nop
    /* 1D6C4 8002CEC4 8400428C */  lw         $v0, 0x84($v0)
    /* 1D6C8 8002CEC8 00000000 */  nop
    /* 1D6CC 8002CECC 09F84000 */  jalr       $v0
    /* 1D6D0 8002CED0 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_8002CD08_8002CED4:
    /* 1D6D4 8002CED4 14003126 */  addiu      $s1, $s1, 0x14
    /* 1D6D8 8002CED8 0300622A */  slti       $v0, $s3, 0x3
    /* 1D6DC 8002CEDC B1FF4014 */  bnez       $v0, .Lfunc_8002CD08_8002CDA4
    /* 1D6E0 8002CEE0 14009426 */   addiu     $s4, $s4, 0x14
  .Lfunc_8002CD08_8002CEE4:
    /* 1D6E4 8002CEE4 0400428E */  lw         $v0, 0x4($s2)
    /* 1D6E8 8002CEE8 00000000 */  nop
    /* 1D6EC 8002CEEC 01004224 */  addiu      $v0, $v0, 0x1
    /* 1D6F0 8002CEF0 040042AE */  sw         $v0, 0x4($s2)
  .Lfunc_8002CD08_8002CEF4:
    /* 1D6F4 8002CEF4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 1D6F8 8002CEF8 2000B48F */  lw         $s4, 0x20($sp)
    /* 1D6FC 8002CEFC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1D700 8002CF00 1800B28F */  lw         $s2, 0x18($sp)
    /* 1D704 8002CF04 1400B18F */  lw         $s1, 0x14($sp)
    /* 1D708 8002CF08 1000B08F */  lw         $s0, 0x10($sp)
    /* 1D70C 8002CF0C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1D710 8002CF10 0800E003 */  jr         $ra
    /* 1D714 8002CF14 00000000 */   nop
endlabel SlotAlloc__Update
