.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextSys__InitC, 0xC

glabel TextSys__InitC
    /* 41388 80050B88 A0000A24 */  addiu      $t2, $zero, 0xA0
    /* 4138C 80050B8C 08004001 */  jr         $t2
    /* 41390 80050B90 70000924 */   addiu     $t1, $zero, 0x70
endlabel TextSys__InitC
    /* 41394 80050B94 00000000 */  nop
