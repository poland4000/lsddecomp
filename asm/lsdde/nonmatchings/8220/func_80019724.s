.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80019724, 0x28

glabel func_80019724
    /* 9F24 80019724 0600A010 */  beqz       $a1, .Lfunc_80019724_80019740
    /* 9F28 80019728 14008224 */   addiu     $v0, $a0, 0x14
    /* 9F2C 8001972C 08008CE8 */  swc2       $12, 0x8($a0)
    /* 9F30 80019730 0C008DE8 */  swc2       $13, 0xC($a0)
    /* 9F34 80019734 10008EE8 */  swc2       $14, 0x10($a0)
    /* 9F38 80019738 D1650008 */  j          .Lfunc_80019724_80019744
    /* 9F3C 8001973C 00000000 */   nop
  .Lfunc_80019724_80019740:
    /* 9F40 80019740 00004EE8 */  swc2       $14, 0x0($v0)
  .Lfunc_80019724_80019744:
    /* 9F44 80019744 0800E003 */  jr         $ra
    /* 9F48 80019748 00000000 */   nop
endlabel func_80019724
