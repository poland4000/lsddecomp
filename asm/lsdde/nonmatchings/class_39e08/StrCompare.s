.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StrCompare, 0xC

glabel StrCompare
    /* 41138 80050938 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 4113C 8005093C 08004001 */  jr         $t2
    /* 41140 80050940 32000924 */   addiu     $t1, $zero, 0x32
endlabel StrCompare
    /* 41144 80050944 00000000 */  nop
