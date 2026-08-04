.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800196FC, 0x14

glabel func_800196FC
    /* 9EFC 800196FC 08008CE8 */  swc2       $12, 0x8($a0)
    /* 9F00 80019700 10008DE8 */  swc2       $13, 0x10($a0)
    /* 9F04 80019704 18008EE8 */  swc2       $14, 0x18($a0)
    /* 9F08 80019708 0800E003 */  jr         $ra
    /* 9F0C 8001970C 00000000 */   nop
endlabel func_800196FC
