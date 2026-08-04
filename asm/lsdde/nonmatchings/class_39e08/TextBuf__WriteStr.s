.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextBuf__WriteStr, 0xC

glabel TextBuf__WriteStr
    /* 410F8 800508F8 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 410FC 800508FC 08004001 */  jr         $t2
    /* 41100 80050900 36000924 */   addiu     $t1, $zero, 0x36
endlabel TextBuf__WriteStr
    /* 41104 80050904 00000000 */  nop
