.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80019774, 0x28

glabel func_80019774
    /* 9F74 80019774 0600A010 */  beqz       $a1, .Lfunc_80019774_80019790
    /* 9F78 80019778 20008224 */   addiu     $v0, $a0, 0x20
    /* 9F7C 8001977C 08008CE8 */  swc2       $12, 0x8($a0)
    /* 9F80 80019780 10008DE8 */  swc2       $13, 0x10($a0)
    /* 9F84 80019784 18008EE8 */  swc2       $14, 0x18($a0)
    /* 9F88 80019788 E5650008 */  j          .Lfunc_80019774_80019794
    /* 9F8C 8001978C 00000000 */   nop
  .Lfunc_80019774_80019790:
    /* 9F90 80019790 00004EE8 */  swc2       $14, 0x0($v0)
  .Lfunc_80019774_80019794:
    /* 9F94 80019794 0800E003 */  jr         $ra
    /* 9F98 80019798 00000000 */   nop
endlabel func_80019774
