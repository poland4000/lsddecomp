.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextSys__InitA, 0xC

glabel TextSys__InitA
    /* 41368 80050B68 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 4136C 80050B6C 08004001 */  jr         $t2
    /* 41370 80050B70 4A000924 */   addiu     $t1, $zero, 0x4A
endlabel TextSys__InitA
    /* 41374 80050B74 00000000 */  nop
