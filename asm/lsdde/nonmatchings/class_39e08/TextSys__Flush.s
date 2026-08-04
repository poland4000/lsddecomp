.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextSys__Flush, 0xC

glabel TextSys__Flush
    /* 41398 80050B98 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 4139C 80050B9C 08004001 */  jr         $t2
    /* 413A0 80050BA0 50000924 */   addiu     $t1, $zero, 0x50
endlabel TextSys__Flush
    /* 413A4 80050BA4 00000000 */  nop
