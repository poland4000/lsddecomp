.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching BasicClass__func_182cc, 0x84

glabel BasicClass__func_182cc
    /* 8ACC 800182CC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8AD0 800182D0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8AD4 800182D4 21808000 */  addu       $s0, $a0, $zero
    /* 8AD8 800182D8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8ADC 800182DC 2188A000 */  addu       $s1, $a1, $zero
    /* 8AE0 800182E0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 8AE4 800182E4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8AE8 800182E8 0800028E */  lw         $v0, 0x8($s0)
    /* 8AEC 800182EC 1400A527 */  addiu      $a1, $sp, 0x14
    /* 8AF0 800182F0 C8600008 */  j          .LBasicClass__func_182cc_80018320
    /* 8AF4 800182F4 1400A2AF */   sw        $v0, 0x14($sp)
  .LBasicClass__func_182cc_800182F8:
    /* 8AF8 800182F8 1000A48F */  lw         $a0, 0x10($sp)
    /* 8AFC 800182FC 00000000 */  nop
    /* 8B00 80018300 0000828C */  lw         $v0, 0x0($a0)
    /* 8B04 80018304 00000000 */  nop
    /* 8B08 80018308 3800428C */  lw         $v0, 0x38($v0)
    /* 8B0C 8001830C 00000000 */  nop
    /* 8B10 80018310 09F84000 */  jalr       $v0
    /* 8B14 80018314 21302002 */   addu      $a2, $s1, $zero
    /* 8B18 80018318 1000A427 */  addiu      $a0, $sp, 0x10
    /* 8B1C 8001831C 1400A527 */  addiu      $a1, $sp, 0x14
  .LBasicClass__func_182cc_80018320:
    /* 8B20 80018320 E860000C */  jal        ListIterNext
    /* 8B24 80018324 00000000 */   nop
    /* 8B28 80018328 1000A28F */  lw         $v0, 0x10($sp)
    /* 8B2C 8001832C 00000000 */  nop
    /* 8B30 80018330 F1FF4014 */  bnez       $v0, .LBasicClass__func_182cc_800182F8
    /* 8B34 80018334 21280002 */   addu      $a1, $s0, $zero
    /* 8B38 80018338 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8B3C 8001833C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8B40 80018340 1800B08F */  lw         $s0, 0x18($sp)
    /* 8B44 80018344 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 8B48 80018348 0800E003 */  jr         $ra
    /* 8B4C 8001834C 00000000 */   nop
endlabel BasicClass__func_182cc
