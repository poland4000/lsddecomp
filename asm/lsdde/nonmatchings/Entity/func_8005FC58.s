.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005FC58, 0x1A4

glabel func_8005FC58
    /* 50458 8005FC58 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5045C 8005FC5C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 50460 8005FC60 21808000 */  addu       $s0, $a0, $zero
    /* 50464 8005FC64 6210023C */  lui        $v0, (0x10624DD3 >> 16)
    /* 50468 8005FC68 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 5046C 8005FC6C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 50470 8005FC70 1400B1AF */  sw         $s1, 0x14($sp)
    /* 50474 8005FC74 FC00048E */  lw         $a0, 0xFC($s0)
    /* 50478 8005FC78 D34D4234 */  ori        $v0, $v0, (0x10624DD3 & 0xFFFF)
    /* 5047C 8005FC7C 18008200 */  mult       $a0, $v0
    /* 50480 8005FC80 10100000 */  mfhi       $v0
    /* 50484 8005FC84 AA2A123C */  lui        $s2, (0x2AAAAAAB >> 16)
    /* 50488 8005FC88 ABAA5236 */  ori        $s2, $s2, (0x2AAAAAAB & 0xFFFF)
    /* 5048C 8005FC8C 18009200 */  mult       $a0, $s2
    /* 50490 8005FC90 C32F0400 */  sra        $a1, $a0, 31
    /* 50494 8005FC94 43110200 */  sra        $v0, $v0, 5
    /* 50498 8005FC98 23884500 */  subu       $s1, $v0, $a1
    /* 5049C 8005FC9C 40111100 */  sll        $v0, $s1, 5
    /* 504A0 8005FCA0 23105100 */  subu       $v0, $v0, $s1
    /* 504A4 8005FCA4 80100200 */  sll        $v0, $v0, 2
    /* 504A8 8005FCA8 21105100 */  addu       $v0, $v0, $s1
    /* 504AC 8005FCAC 80100200 */  sll        $v0, $v0, 2
    /* 504B0 8005FCB0 23888200 */  subu       $s1, $a0, $v0
    /* 504B4 8005FCB4 10180000 */  mfhi       $v1
    /* 504B8 8005FCB8 23186500 */  subu       $v1, $v1, $a1
    /* 504BC 8005FCBC 40100300 */  sll        $v0, $v1, 1
    /* 504C0 8005FCC0 21104300 */  addu       $v0, $v0, $v1
    /* 504C4 8005FCC4 40100200 */  sll        $v0, $v0, 1
    /* 504C8 8005FCC8 23208200 */  subu       $a0, $a0, $v0
    /* 504CC 8005FCCC 03008428 */  slti       $a0, $a0, 0x3
    /* 504D0 8005FCD0 0000028E */  lw         $v0, 0x0($s0)
    /* 504D4 8005FCD4 02008010 */  beqz       $a0, .Lfunc_8005FC58_8005FCE0
    /* 504D8 8005FCD8 40000634 */   ori       $a2, $zero, 0x40
    /* 504DC 8005FCDC C0FF0624 */  addiu      $a2, $zero, -0x40
  .Lfunc_8005FC58_8005FCE0:
    /* 504E0 8005FCE0 21200002 */  addu       $a0, $s0, $zero
    /* 504E4 8005FCE4 2128C000 */  addu       $a1, $a2, $zero
    /* 504E8 8005FCE8 CC00428C */  lw         $v0, 0xCC($v0)
    /* 504EC 8005FCEC 00000000 */  nop
    /* 504F0 8005FCF0 09F84000 */  jalr       $v0
    /* 504F4 8005FCF4 21300000 */   addu      $a2, $zero, $zero
    /* 504F8 8005FCF8 FC00048E */  lw         $a0, 0xFC($s0)
    /* 504FC 8005FCFC 00000000 */  nop
    /* 50500 8005FD00 18009200 */  mult       $a0, $s2
    /* 50504 8005FD04 C3170400 */  sra        $v0, $a0, 31
    /* 50508 8005FD08 10180000 */  mfhi       $v1
    /* 5050C 8005FD0C 43180300 */  sra        $v1, $v1, 1
    /* 50510 8005FD10 23186200 */  subu       $v1, $v1, $v0
    /* 50514 8005FD14 40100300 */  sll        $v0, $v1, 1
    /* 50518 8005FD18 21104300 */  addu       $v0, $v0, $v1
    /* 5051C 8005FD1C 80100200 */  sll        $v0, $v0, 2
    /* 50520 8005FD20 23208200 */  subu       $a0, $a0, $v0
    /* 50524 8005FD24 06008428 */  slti       $a0, $a0, 0x6
    /* 50528 8005FD28 0000028E */  lw         $v0, 0x0($s0)
    /* 5052C 8005FD2C 02008010 */  beqz       $a0, .Lfunc_8005FC58_8005FD38
    /* 50530 8005FD30 40000534 */   ori       $a1, $zero, 0x40
    /* 50534 8005FD34 C0FF0524 */  addiu      $a1, $zero, -0x40
  .Lfunc_8005FC58_8005FD38:
    /* 50538 8005FD38 21200002 */  addu       $a0, $s0, $zero
    /* 5053C 8005FD3C C800428C */  lw         $v0, 0xC8($v0)
    /* 50540 8005FD40 00000000 */  nop
    /* 50544 8005FD44 09F84000 */  jalr       $v0
    /* 50548 8005FD48 21300000 */   addu      $a2, $zero, $zero
    /* 5054C 8005FD4C FC00038E */  lw         $v1, 0xFC($s0)
    /* 50550 8005FD50 0000068E */  lw         $a2, 0x0($s0)
    /* 50554 8005FD54 02006104 */  bgez       $v1, .Lfunc_8005FC58_8005FD60
    /* 50558 8005FD58 21106000 */   addu      $v0, $v1, $zero
    /* 5055C 8005FD5C 3F006224 */  addiu      $v0, $v1, 0x3F
  .Lfunc_8005FC58_8005FD60:
    /* 50560 8005FD60 83110200 */  sra        $v0, $v0, 6
    /* 50564 8005FD64 80110200 */  sll        $v0, $v0, 6
    /* 50568 8005FD68 23106200 */  subu       $v0, $v1, $v0
    /* 5056C 8005FD6C 20004228 */  slti       $v0, $v0, 0x20
    /* 50570 8005FD70 02004010 */  beqz       $v0, .Lfunc_8005FC58_8005FD7C
    /* 50574 8005FD74 80000534 */   ori       $a1, $zero, 0x80
    /* 50578 8005FD78 80FF0524 */  addiu      $a1, $zero, -0x80
  .Lfunc_8005FC58_8005FD7C:
    /* 5057C 8005FD7C 21200002 */  addu       $a0, $s0, $zero
    /* 50580 8005FD80 C400C28C */  lw         $v0, 0xC4($a2)
    /* 50584 8005FD84 00000000 */  nop
    /* 50588 8005FD88 09F84000 */  jalr       $v0
    /* 5058C 8005FD8C 21300000 */   addu      $a2, $zero, $zero
    /* 50590 8005FD90 2000222A */  slti       $v0, $s1, 0x20
    /* 50594 8005FD94 08004010 */  beqz       $v0, .Lfunc_8005FC58_8005FDB8
    /* 50598 8005FD98 21200002 */   addu      $a0, $s0, $zero
    /* 5059C 8005FD9C 0000028E */  lw         $v0, 0x0($s0)
    /* 505A0 8005FDA0 00000000 */  nop
    /* 505A4 8005FDA4 BC00428C */  lw         $v0, 0xBC($v0)
    /* 505A8 8005FDA8 0980053C */  lui        $a1, %hi(D_80089D78)
    /* 505AC 8005FDAC 789DA524 */  addiu      $a1, $a1, %lo(D_80089D78)
    /* 505B0 8005FDB0 767F0108 */  j          .Lfunc_8005FC58_8005FDD8
    /* 505B4 8005FDB4 00000000 */   nop
  .Lfunc_8005FC58_8005FDB8:
    /* 505B8 8005FDB8 4000222A */  slti       $v0, $s1, 0x40
    /* 505BC 8005FDBC 08004010 */  beqz       $v0, .Lfunc_8005FC58_8005FDE0
    /* 505C0 8005FDC0 00000000 */   nop
    /* 505C4 8005FDC4 0000028E */  lw         $v0, 0x0($s0)
    /* 505C8 8005FDC8 00000000 */  nop
    /* 505CC 8005FDCC BC00428C */  lw         $v0, 0xBC($v0)
    /* 505D0 8005FDD0 0980053C */  lui        $a1, %hi(D_80089D60)
    /* 505D4 8005FDD4 609DA524 */  addiu      $a1, $a1, %lo(D_80089D60)
  .Lfunc_8005FC58_8005FDD8:
    /* 505D8 8005FDD8 09F84000 */  jalr       $v0
    /* 505DC 8005FDDC 00000000 */   nop
  .Lfunc_8005FC58_8005FDE0:
    /* 505E0 8005FDE0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 505E4 8005FDE4 1800B28F */  lw         $s2, 0x18($sp)
    /* 505E8 8005FDE8 1400B18F */  lw         $s1, 0x14($sp)
    /* 505EC 8005FDEC 1000B08F */  lw         $s0, 0x10($sp)
    /* 505F0 8005FDF0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 505F4 8005FDF4 0800E003 */  jr         $ra
    /* 505F8 8005FDF8 00000000 */   nop
endlabel func_8005FC58
