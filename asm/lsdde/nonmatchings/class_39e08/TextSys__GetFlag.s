.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextSys__GetFlag, 0xC

glabel TextSys__GetFlag
    /* 41318 80050B18 A0000A24 */  addiu      $t2, $zero, 0xA0
    /* 4131C 80050B1C 08004001 */  jr         $t2
    /* 41320 80050B20 AB000924 */   addiu     $t1, $zero, 0xAB
endlabel TextSys__GetFlag
    /* 41324 80050B24 00000000 */  nop
