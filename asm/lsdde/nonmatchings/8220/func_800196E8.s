.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800196E8, 0x14

glabel func_800196E8
    /* 9EE8 800196E8 08008CE8 */  swc2       $12, 0x8($a0)
    /* 9EEC 800196EC 10008DE8 */  swc2       $13, 0x10($a0)
    /* 9EF0 800196F0 18008EE8 */  swc2       $14, 0x18($a0)
    /* 9EF4 800196F4 0800E003 */  jr         $ra
    /* 9EF8 800196F8 00000000 */   nop
endlabel func_800196E8
