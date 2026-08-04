.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextBuf__Rewind, 0xC

glabel TextBuf__Rewind
    /* 41108 80050908 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 4110C 8005090C 08004001 */  jr         $t2
    /* 41110 80050910 45000924 */   addiu     $t1, $zero, 0x45
endlabel TextBuf__Rewind
    /* 41114 80050914 00000000 */  nop
