.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextSys__InitB, 0xC

glabel TextSys__InitB
    /* 41378 80050B78 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 4137C 80050B7C 08004001 */  jr         $t2
    /* 41380 80050B80 4B000924 */   addiu     $t1, $zero, 0x4B
endlabel TextSys__InitB
    /* 41384 80050B84 00000000 */  nop
