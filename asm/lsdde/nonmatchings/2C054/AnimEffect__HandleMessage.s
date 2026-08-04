.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching AnimEffect__HandleMessage, 0x90

glabel AnimEffect__HandleMessage
    /* 2CC8C 8003C48C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2CC90 8003C490 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2CC94 8003C494 3C00828C */  lw         $v0, 0x3C($a0)
    /* 2CC98 8003C498 0000838C */  lw         $v1, 0x0($a0)
    /* 2CC9C 8003C49C 1B004010 */  beqz       $v0, L_8003C50C
    /* 2CCA0 8003C4A0 EEFFC624 */   addiu     $a2, $a2, -0x12
    /* 2CCA4 8003C4A4 1000C22C */  sltiu      $v0, $a2, 0x10
    /* 2CCA8 8003C4A8 18004010 */  beqz       $v0, L_8003C50C
    /* 2CCAC 8003C4AC 80100600 */   sll       $v0, $a2, 2
    /* 2CCB0 8003C4B0 0180013C */  lui        $at, %hi(jtbl_80011090)
    /* 2CCB4 8003C4B4 90102124 */  addiu      $at, $at, %lo(jtbl_80011090)
    /* 2CCB8 8003C4B8 21082200 */  addu       $at, $at, $v0
    /* 2CCBC 8003C4BC 0000228C */  lw         $v0, 0x0($at)
    /* 2CCC0 8003C4C0 00000000 */  nop
    /* 2CCC4 8003C4C4 08004000 */  jr         $v0
    /* 2CCC8 8003C4C8 00000000 */   nop
  jlabel L_8003C4CC
    /* 2CCCC 8003C4CC 8000628C */  lw         $v0, 0x80($v1)
    /* 2CCD0 8003C4D0 40F10008 */  j          .Lfunc_8003C48C_8003C500
    /* 2CCD4 8003C4D4 00000000 */   nop
  jlabel L_8003C4D8
    /* 2CCD8 8003C4D8 8400628C */  lw         $v0, 0x84($v1)
    /* 2CCDC 8003C4DC 40F10008 */  j          .Lfunc_8003C48C_8003C500
    /* 2CCE0 8003C4E0 00000000 */   nop
  jlabel L_8003C4E4
    /* 2CCE4 8003C4E4 7400628C */  lw         $v0, 0x74($v1)
    /* 2CCE8 8003C4E8 40F10008 */  j          .Lfunc_8003C48C_8003C500
    /* 2CCEC 8003C4EC 00000000 */   nop
  jlabel L_8003C4F0
    /* 2CCF0 8003C4F0 7C00628C */  lw         $v0, 0x7C($v1)
    /* 2CCF4 8003C4F4 40F10008 */  j          .Lfunc_8003C48C_8003C500
    /* 2CCF8 8003C4F8 00000000 */   nop
  jlabel L_8003C4FC
    /* 2CCFC 8003C4FC 7800628C */  lw         $v0, 0x78($v1)
  .Lfunc_8003C48C_8003C500:
    /* 2CD00 8003C500 00000000 */  nop
    /* 2CD04 8003C504 09F84000 */  jalr       $v0
    /* 2CD08 8003C508 00000000 */   nop
  jlabel L_8003C50C
    /* 2CD0C 8003C50C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2CD10 8003C510 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2CD14 8003C514 0800E003 */  jr         $ra
    /* 2CD18 8003C518 00000000 */   nop
endlabel AnimEffect__HandleMessage
