.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndEncodeAdsr, 0x8C

glabel SndEncodeAdsr
    /* 26798 80035F98 21388000 */  addu       $a3, $a0, $zero
    /* 2679C 80035F9C 00800424 */  addiu      $a0, $zero, -0x8000
    /* 267A0 80035FA0 0C00E284 */  lh         $v0, 0xC($a3)
    /* 267A4 80035FA4 1000E384 */  lh         $v1, 0x10($a3)
    /* 267A8 80035FA8 2B100200 */  sltu       $v0, $zero, $v0
    /* 267AC 80035FAC 23100200 */  negu       $v0, $v0
    /* 267B0 80035FB0 24484400 */  and        $t1, $v0, $a0
    /* 267B4 80035FB4 0A00E284 */  lh         $v0, 0xA($a3)
    /* 267B8 80035FB8 21402001 */  addu       $t0, $t1, $zero
    /* 267BC 80035FBC 2B100200 */  sltu       $v0, $zero, $v0
    /* 267C0 80035FC0 23100200 */  negu       $v0, $v0
    /* 267C4 80035FC4 02006010 */  beqz       $v1, .Lfunc_80035F98_80035FD0
    /* 267C8 80035FC8 24504400 */   and       $t2, $v0, $a0
    /* 267CC 80035FCC 00402835 */  ori        $t0, $t1, 0x4000
  .Lfunc_80035F98_80035FD0:
    /* 267D0 80035FD0 0000E494 */  lhu        $a0, 0x0($a3)
    /* 267D4 80035FD4 0200E294 */  lhu        $v0, 0x2($a3)
    /* 267D8 80035FD8 0400E394 */  lhu        $v1, 0x4($a3)
    /* 267DC 80035FDC 00220400 */  sll        $a0, $a0, 8
    /* 267E0 80035FE0 007F8430 */  andi       $a0, $a0, 0x7F00
    /* 267E4 80035FE4 25204401 */  or         $a0, $t2, $a0
    /* 267E8 80035FE8 00110200 */  sll        $v0, $v0, 4
    /* 267EC 80035FEC F0004230 */  andi       $v0, $v0, 0xF0
    /* 267F0 80035FF0 25208200 */  or         $a0, $a0, $v0
    /* 267F4 80035FF4 0F006330 */  andi       $v1, $v1, 0xF
    /* 267F8 80035FF8 25208300 */  or         $a0, $a0, $v1
    /* 267FC 80035FFC 0600E294 */  lhu        $v0, 0x6($a3)
    /* 26800 80036000 0800E394 */  lhu        $v1, 0x8($a3)
    /* 26804 80036004 0000A4A4 */  sh         $a0, 0x0($a1)
    /* 26808 80036008 80110200 */  sll        $v0, $v0, 6
    /* 2680C 8003600C C01F4230 */  andi       $v0, $v0, 0x1FC0
    /* 26810 80036010 25100201 */  or         $v0, $t0, $v0
    /* 26814 80036014 1F006330 */  andi       $v1, $v1, 0x1F
    /* 26818 80036018 25404300 */  or         $t0, $v0, $v1
    /* 2681C 8003601C 0800E003 */  jr         $ra
    /* 26820 80036020 0000C8A4 */   sh        $t0, 0x0($a2)
endlabel SndEncodeAdsr
