.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextSys__SetField, 0xC

glabel TextSys__SetField
    /* 41358 80050B58 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 4135C 80050B5C 08004001 */  jr         $t2
    /* 41360 80050B60 4E000924 */   addiu     $t1, $zero, 0x4E
endlabel TextSys__SetField
    /* 41364 80050B64 00000000 */  nop
