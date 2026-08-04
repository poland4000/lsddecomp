.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextSys__GetState, 0xC

glabel TextSys__GetState
    /* 41308 80050B08 A0000A24 */  addiu      $t2, $zero, 0xA0
    /* 4130C 80050B0C 08004001 */  jr         $t2
    /* 41310 80050B10 AC000924 */   addiu     $t1, $zero, 0xAC
endlabel TextSys__GetState
    /* 41314 80050B14 00000000 */  nop
