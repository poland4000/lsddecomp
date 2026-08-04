.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StrLen, 0xC

glabel StrLen
    /* 41118 80050918 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 4111C 8005091C 08004001 */  jr         $t2
    /* 41120 80050920 41000924 */   addiu     $t1, $zero, 0x41
endlabel StrLen
    /* 41124 80050924 00000000 */  nop
