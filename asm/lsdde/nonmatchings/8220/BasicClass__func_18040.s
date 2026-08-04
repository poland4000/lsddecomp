.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching BasicClass__func_18040, 0x7C

glabel BasicClass__func_18040
    /* 8840 80018040 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8844 80018044 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8848 80018048 21808000 */  addu       $s0, $a0, $zero
    /* 884C 8001804C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8850 80018050 1000B127 */  addiu      $s1, $sp, 0x10
    /* 8854 80018054 21202002 */  addu       $a0, $s1, $zero
    /* 8858 80018058 2000BFAF */  sw         $ra, 0x20($sp)
    /* 885C 8001805C 0400028E */  lw         $v0, 0x4($s0)
    /* 8860 80018060 1400A527 */  addiu      $a1, $sp, 0x14
    /* 8864 80018064 23600008 */  j          .LBasicClass__func_18040_8001808C
    /* 8868 80018068 1400A2AF */   sw        $v0, 0x14($sp)
  .LBasicClass__func_18040_8001806C:
    /* 886C 8001806C 0000028E */  lw         $v0, 0x0($s0)
    /* 8870 80018070 1000A58F */  lw         $a1, 0x10($sp)
    /* 8874 80018074 1400428C */  lw         $v0, 0x14($v0)
    /* 8878 80018078 00000000 */  nop
    /* 887C 8001807C 09F84000 */  jalr       $v0
    /* 8880 80018080 21200002 */   addu      $a0, $s0, $zero
    /* 8884 80018084 21202002 */  addu       $a0, $s1, $zero
    /* 8888 80018088 1400A527 */  addiu      $a1, $sp, 0x14
  .LBasicClass__func_18040_8001808C:
    /* 888C 8001808C E860000C */  jal        ListIterNext
    /* 8890 80018090 00000000 */   nop
    /* 8894 80018094 1000A28F */  lw         $v0, 0x10($sp)
    /* 8898 80018098 00000000 */  nop
    /* 889C 8001809C F3FF4014 */  bnez       $v0, .LBasicClass__func_18040_8001806C
    /* 88A0 800180A0 00000000 */   nop
    /* 88A4 800180A4 2000BF8F */  lw         $ra, 0x20($sp)
    /* 88A8 800180A8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 88AC 800180AC 1800B08F */  lw         $s0, 0x18($sp)
    /* 88B0 800180B0 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 88B4 800180B4 0800E003 */  jr         $ra
    /* 88B8 800180B8 00000000 */   nop
endlabel BasicClass__func_18040
