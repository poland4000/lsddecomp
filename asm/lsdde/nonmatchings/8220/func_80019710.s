.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80019710, 0x14

glabel func_80019710
    /* 9F10 80019710 08008CE8 */  swc2       $12, 0x8($a0)
    /* 9F14 80019714 14008DE8 */  swc2       $13, 0x14($a0)
    /* 9F18 80019718 20008EE8 */  swc2       $14, 0x20($a0)
    /* 9F1C 8001971C 0800E003 */  jr         $ra
    /* 9F20 80019720 00000000 */   nop
endlabel func_80019710
