.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800196D4, 0x14

glabel func_800196D4
    /* 9ED4 800196D4 08008CE8 */  swc2       $12, 0x8($a0)
    /* 9ED8 800196D8 0C008DE8 */  swc2       $13, 0xC($a0)
    /* 9EDC 800196DC 10008EE8 */  swc2       $14, 0x10($a0)
    /* 9EE0 800196E0 0800E003 */  jr         $ra
    /* 9EE4 800196E4 00000000 */   nop
endlabel func_800196D4
