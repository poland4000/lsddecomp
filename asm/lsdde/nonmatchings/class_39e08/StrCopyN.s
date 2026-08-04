.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StrCopyN, 0xC

glabel StrCopyN
    /* 41128 80050928 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 4112C 8005092C 08004001 */  jr         $t2
    /* 41130 80050930 34000924 */   addiu     $t1, $zero, 0x34
endlabel StrCopyN
    /* 41134 80050934 00000000 */  nop
