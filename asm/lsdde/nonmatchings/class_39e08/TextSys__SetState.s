.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextSys__SetState, 0x30

glabel TextSys__SetState
    /* 41328 80050B28 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4132C 80050B2C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 41330 80050B30 E642010C */  jal        TextSys__Flush
    /* 41334 80050B34 2000A4AF */   sw        $a0, 0x20($sp)
    /* 41338 80050B38 2000A48F */  lw         $a0, 0x20($sp)
    /* 4133C 80050B3C 3F000524 */  addiu      $a1, $zero, 0x3F
    /* 41340 80050B40 D642010C */  jal        TextSys__SetField
    /* 41344 80050B44 21300000 */   addu      $a2, $zero, $zero
    /* 41348 80050B48 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4134C 80050B4C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 41350 80050B50 0800E003 */  jr         $ra
    /* 41354 80050B54 00000000 */   nop
endlabel TextSys__SetState
