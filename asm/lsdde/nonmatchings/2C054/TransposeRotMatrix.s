.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TransposeRotMatrix, 0x50

glabel TransposeRotMatrix
    /* 304FC 8003FCFC 00008984 */  lh         $t1, 0x0($a0)
    /* 30500 8003FD00 2110A000 */  addu       $v0, $a1, $zero
    /* 30504 8003FD04 0000A9A4 */  sh         $t1, 0x0($a1)
    /* 30508 8003FD08 06008A84 */  lh         $t2, 0x6($a0)
    /* 3050C 8003FD0C 0C008984 */  lh         $t1, 0xC($a0)
    /* 30510 8003FD10 0200AAA4 */  sh         $t2, 0x2($a1)
    /* 30514 8003FD14 02008B84 */  lh         $t3, 0x2($a0)
    /* 30518 8003FD18 0400A9A4 */  sh         $t1, 0x4($a1)
    /* 3051C 8003FD1C 08008A84 */  lh         $t2, 0x8($a0)
    /* 30520 8003FD20 0600ABA4 */  sh         $t3, 0x6($a1)
    /* 30524 8003FD24 0E008984 */  lh         $t1, 0xE($a0)
    /* 30528 8003FD28 0800AAA4 */  sh         $t2, 0x8($a1)
    /* 3052C 8003FD2C 04008B84 */  lh         $t3, 0x4($a0)
    /* 30530 8003FD30 0A00A9A4 */  sh         $t1, 0xA($a1)
    /* 30534 8003FD34 0A008A84 */  lh         $t2, 0xA($a0)
    /* 30538 8003FD38 0C00ABA4 */  sh         $t3, 0xC($a1)
    /* 3053C 8003FD3C 10008984 */  lh         $t1, 0x10($a0)
    /* 30540 8003FD40 0E00AAA4 */  sh         $t2, 0xE($a1)
    /* 30544 8003FD44 0800E003 */  jr         $ra
    /* 30548 8003FD48 1000A9A4 */   sh        $t1, 0x10($a1)
endlabel TransposeRotMatrix
