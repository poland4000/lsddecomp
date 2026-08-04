.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001974C, 0x28

glabel func_8001974C
    /* 9F4C 8001974C 0600A010 */  beqz       $a1, .Lfunc_8001974C_80019768
    /* 9F50 80019750 20008224 */   addiu     $v0, $a0, 0x20
    /* 9F54 80019754 08008CE8 */  swc2       $12, 0x8($a0)
    /* 9F58 80019758 10008DE8 */  swc2       $13, 0x10($a0)
    /* 9F5C 8001975C 18008EE8 */  swc2       $14, 0x18($a0)
    /* 9F60 80019760 DB650008 */  j          .Lfunc_8001974C_8001976C
    /* 9F64 80019764 00000000 */   nop
  .Lfunc_8001974C_80019768:
    /* 9F68 80019768 00004EE8 */  swc2       $14, 0x0($v0)
  .Lfunc_8001974C_8001976C:
    /* 9F6C 8001976C 0800E003 */  jr         $ra
    /* 9F70 80019770 00000000 */   nop
endlabel func_8001974C
