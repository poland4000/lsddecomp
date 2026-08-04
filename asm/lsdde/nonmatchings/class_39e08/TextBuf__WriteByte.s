.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextBuf__WriteByte, 0xC

glabel TextBuf__WriteByte
    /* 410E8 800508E8 B0000A24 */  addiu      $t2, $zero, 0xB0
    /* 410EC 800508EC 08004001 */  jr         $t2
    /* 410F0 800508F0 33000924 */   addiu     $t1, $zero, 0x33
endlabel TextBuf__WriteByte
    /* 410F4 800508F4 00000000 */  nop
