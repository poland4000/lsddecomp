.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__LookupTile, 0x124

glabel StageRenderer__LookupTile
    /* 3BC4C 8004B44C 0400C28C */  lw         $v0, 0x4($a2)
    /* 3BC50 8004B450 1000AA8F */  lw         $t2, 0x10($sp)
    /* 3BC54 8004B454 0A004014 */  bnez       $v0, .Lfunc_8004B44C_8004B480
    /* 3BC58 8004B458 21588000 */   addu      $t3, $a0, $zero
    /* 3BC5C 8004B45C 01004881 */  lb         $t0, 0x1($t2)
    /* 3BC60 8004B460 0000C284 */  lh         $v0, 0x0($a2)
    /* 3BC64 8004B464 00000000 */  nop
    /* 3BC68 8004B468 18004800 */  mult       $v0, $t0
    /* 3BC6C 8004B46C 0200C984 */  lh         $t1, 0x2($a2)
    /* 3BC70 8004B470 00004381 */  lb         $v1, 0x0($t2)
    /* 3BC74 8004B474 12100000 */  mflo       $v0
    /* 3BC78 8004B478 232D0108 */  j          .Lfunc_8004B44C_8004B48C
    /* 3BC7C 8004B47C 21606200 */   addu      $t4, $v1, $v0
  .Lfunc_8004B44C_8004B480:
    /* 3BC80 8004B480 01000934 */  ori        $t1, $zero, 0x1
    /* 3BC84 8004B484 21400000 */  addu       $t0, $zero, $zero
    /* 3BC88 8004B488 21600000 */  addu       $t4, $zero, $zero
  .Lfunc_8004B44C_8004B48C:
    /* 3BC8C 8004B48C 0000C384 */  lh         $v1, 0x0($a2)
    /* 3BC90 8004B490 00004481 */  lb         $a0, 0x0($t2)
    /* 3BC94 8004B494 80100300 */  sll        $v0, $v1, 2
    /* 3BC98 8004B498 21104300 */  addu       $v0, $v0, $v1
    /* 3BC9C 8004B49C 0000E38C */  lw         $v1, 0x0($a3)
    /* 3BCA0 8004B4A0 00130200 */  sll        $v0, $v0, 12
    /* 3BCA4 8004B4A4 23186200 */  subu       $v1, $v1, $v0
    /* 3BCA8 8004B4A8 80100400 */  sll        $v0, $a0, 2
    /* 3BCAC 8004B4AC 21104400 */  addu       $v0, $v0, $a0
    /* 3BCB0 8004B4B0 40130200 */  sll        $v0, $v0, 13
    /* 3BCB4 8004B4B4 21186200 */  addu       $v1, $v1, $v0
    /* 3BCB8 8004B4B8 80100900 */  sll        $v0, $t1, 2
    /* 3BCBC 8004B4BC 21104900 */  addu       $v0, $v0, $t1
    /* 3BCC0 8004B4C0 0800E48C */  lw         $a0, 0x8($a3)
    /* 3BCC4 8004B4C4 00130200 */  sll        $v0, $v0, 12
    /* 3BCC8 8004B4C8 23208200 */  subu       $a0, $a0, $v0
    /* 3BCCC 8004B4CC 01000231 */  andi       $v0, $t0, 0x1
    /* 3BCD0 8004B4D0 03004010 */  beqz       $v0, .Lfunc_8004B44C_8004B4E0
    /* 3BCD4 8004B4D4 0000A3AC */   sw        $v1, 0x0($a1)
    /* 3BCD8 8004B4D8 00B06224 */  addiu      $v0, $v1, -0x5000
    /* 3BCDC 8004B4DC 0000A2AC */  sw         $v0, 0x0($a1)
  .Lfunc_8004B44C_8004B4E0:
    /* 3BCE0 8004B4E0 80100800 */  sll        $v0, $t0, 2
    /* 3BCE4 8004B4E4 21104800 */  addu       $v0, $v0, $t0
    /* 3BCE8 8004B4E8 40130200 */  sll        $v0, $v0, 13
    /* 3BCEC 8004B4EC 21108200 */  addu       $v0, $a0, $v0
    /* 3BCF0 8004B4F0 0400E38C */  lw         $v1, 0x4($a3)
    /* 3BCF4 8004B4F4 0000A48C */  lw         $a0, 0x0($a1)
    /* 3BCF8 8004B4F8 0800A2AC */  sw         $v0, 0x8($a1)
    /* 3BCFC 8004B4FC 0400A3AC */  sw         $v1, 0x4($a1)
    /* 3BD00 8004B500 02004281 */  lb         $v0, 0x2($t2)
    /* 3BD04 8004B504 04004385 */  lh         $v1, 0x4($t2)
    /* 3BD08 8004B508 C0120200 */  sll        $v0, $v0, 11
    /* 3BD0C 8004B50C 21104400 */  addu       $v0, $v0, $a0
    /* 3BD10 8004B510 00046324 */  addiu      $v1, $v1, 0x400
    /* 3BD14 8004B514 21104300 */  addu       $v0, $v0, $v1
    /* 3BD18 8004B518 000062AD */  sw         $v0, 0x0($t3)
    /* 3BD1C 8004B51C 06004285 */  lh         $v0, 0x6($t2)
    /* 3BD20 8004B520 0400A38C */  lw         $v1, 0x4($a1)
    /* 3BD24 8004B524 00000000 */  nop
    /* 3BD28 8004B528 21104300 */  addu       $v0, $v0, $v1
    /* 3BD2C 8004B52C 040062AD */  sw         $v0, 0x4($t3)
    /* 3BD30 8004B530 03004281 */  lb         $v0, 0x3($t2)
    /* 3BD34 8004B534 0800A48C */  lw         $a0, 0x8($a1)
    /* 3BD38 8004B538 08004385 */  lh         $v1, 0x8($t2)
    /* 3BD3C 8004B53C C0120200 */  sll        $v0, $v0, 11
    /* 3BD40 8004B540 21104400 */  addu       $v0, $v0, $a0
    /* 3BD44 8004B544 00046324 */  addiu      $v1, $v1, 0x400
    /* 3BD48 8004B548 21104300 */  addu       $v0, $v0, $v1
    /* 3BD4C 8004B54C 080062AD */  sw         $v0, 0x8($t3)
    /* 3BD50 8004B550 0000A28C */  lw         $v0, 0x0($a1)
    /* 3BD54 8004B554 0800A38C */  lw         $v1, 0x8($a1)
    /* 3BD58 8004B558 00504224 */  addiu      $v0, $v0, 0x5000
    /* 3BD5C 8004B55C 00506324 */  addiu      $v1, $v1, 0x5000
    /* 3BD60 8004B560 0000A2AC */  sw         $v0, 0x0($a1)
    /* 3BD64 8004B564 21108001 */  addu       $v0, $t4, $zero
    /* 3BD68 8004B568 0800E003 */  jr         $ra
    /* 3BD6C 8004B56C 0800A3AC */   sw        $v1, 0x8($a1)
endlabel StageRenderer__LookupTile
