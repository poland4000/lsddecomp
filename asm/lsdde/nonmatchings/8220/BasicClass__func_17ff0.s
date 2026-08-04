.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching BasicClass__func_17ff0, 0x50

glabel BasicClass__func_17ff0
    /* 87F0 80017FF0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 87F4 80017FF4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 87F8 80017FF8 21888000 */  addu       $s1, $a0, $zero
    /* 87FC 80017FFC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8800 80018000 2180A000 */  addu       $s0, $a1, $zero
    /* 8804 80018004 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8808 80018008 8260000C */  jal        ListRemove
    /* 880C 8001800C 04002426 */   addiu     $a0, $s1, 0x4
    /* 8810 80018010 0000028E */  lw         $v0, 0x0($s0)
    /* 8814 80018014 21200002 */  addu       $a0, $s0, $zero
    /* 8818 80018018 2400428C */  lw         $v0, 0x24($v0)
    /* 881C 8001801C 00000000 */  nop
    /* 8820 80018020 09F84000 */  jalr       $v0
    /* 8824 80018024 21282002 */   addu      $a1, $s1, $zero
    /* 8828 80018028 1800BF8F */  lw         $ra, 0x18($sp)
    /* 882C 8001802C 1400B18F */  lw         $s1, 0x14($sp)
    /* 8830 80018030 1000B08F */  lw         $s0, 0x10($sp)
    /* 8834 80018034 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8838 80018038 0800E003 */  jr         $ra
    /* 883C 8001803C 00000000 */   nop
endlabel BasicClass__func_17ff0
