.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005CAB4, 0x114

glabel func_8005CAB4
    /* 4D2B4 8005CAB4 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 4D2B8 8005CAB8 3800B6AF */  sw         $s6, 0x38($sp)
    /* 4D2BC 8005CABC 21B08000 */  addu       $s6, $a0, $zero
    /* 4D2C0 8005CAC0 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 4D2C4 8005CAC4 2198A000 */  addu       $s3, $a1, $zero
    /* 4D2C8 8005CAC8 2400B1AF */  sw         $s1, 0x24($sp)
    /* 4D2CC 8005CACC 2188C000 */  addu       $s1, $a2, $zero
    /* 4D2D0 8005CAD0 3000B4AF */  sw         $s4, 0x30($sp)
    /* 4D2D4 8005CAD4 21A0E000 */  addu       $s4, $a3, $zero
    /* 4D2D8 8005CAD8 21282002 */  addu       $a1, $s1, $zero
    /* 4D2DC 8005CADC 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 4D2E0 8005CAE0 3400B5AF */  sw         $s5, 0x34($sp)
    /* 4D2E4 8005CAE4 2800B2AF */  sw         $s2, 0x28($sp)
    /* 4D2E8 8005CAE8 F272010C */  jal        func_8005CBC8
    /* 4D2EC 8005CAEC 2000B0AF */   sw        $s0, 0x20($sp)
    /* 4D2F0 8005CAF0 2A004010 */  beqz       $v0, .Lfunc_8005CAB4_8005CB9C
    /* 4D2F4 8005CAF4 21100000 */   addu      $v0, $zero, $zero
    /* 4D2F8 8005CAF8 03002492 */  lbu        $a0, 0x3($s1)
    /* 4D2FC 8005CAFC C571010C */  jal TriggerDayEvent
    /* 4D300 8005CB00 04003026 */   addiu     $s0, $s1, 0x4
    /* 4D304 8005CB04 0000828E */  lw         $v0, 0x0($s4)
    /* 4D308 8005CB08 02002582 */  lb         $a1, 0x2($s1)
    /* 4D30C 8005CB0C 8800428C */  lw         $v0, 0x88($v0)
    /* 4D310 8005CB10 00000000 */  nop
    /* 4D314 8005CB14 09F84000 */  jalr       $v0
    /* 4D318 8005CB18 21208002 */   addu      $a0, $s4, $zero
    /* 4D31C 8005CB1C 08003226 */  addiu      $s2, $s1, 0x8
    /* 4D320 8005CB20 12004010 */  beqz       $v0, .Lfunc_8005CAB4_8005CB6C
    /* 4D324 8005CB24 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 4D328 8005CB28 2B101202 */  sltu       $v0, $s0, $s2
    /* 4D32C 8005CB2C 0F004010 */  beqz       $v0, .Lfunc_8005CAB4_8005CB6C
    /* 4D330 8005CB30 00000000 */   nop
    /* 4D334 8005CB34 FFFF1524 */  addiu      $s5, $zero, -0x1
  .Lfunc_8005CAB4_8005CB38:
    /* 4D338 8005CB38 00000282 */  lb         $v0, 0x0($s0)
    /* 4D33C 8005CB3C 00000000 */  nop
    /* 4D340 8005CB40 0A005510 */  beq        $v0, $s5, .Lfunc_8005CAB4_8005CB6C
    /* 4D344 8005CB44 1000A527 */   addiu     $a1, $sp, 0x10
    /* 4D348 8005CB48 03002492 */  lbu        $a0, 0x3($s1)
    /* 4D34C 8005CB4C 00000792 */  lbu        $a3, 0x0($s0)
    /* 4D350 8005CB50 7E73010C */  jal        func_8005CDF8
    /* 4D354 8005CB54 21306002 */   addu      $a2, $s3, $zero
    /* 4D358 8005CB58 0F004014 */  bnez       $v0, .Lfunc_8005CAB4_8005CB98
    /* 4D35C 8005CB5C 01001026 */   addiu     $s0, $s0, 0x1
    /* 4D360 8005CB60 2B101202 */  sltu       $v0, $s0, $s2
    /* 4D364 8005CB64 F4FF4014 */  bnez       $v0, .Lfunc_8005CAB4_8005CB38
    /* 4D368 8005CB68 00000000 */   nop
  .Lfunc_8005CAB4_8005CB6C:
    /* 4D36C 8005CB6C 03002392 */  lbu        $v1, 0x3($s1)
    /* 4D370 8005CB70 02000234 */  ori        $v0, $zero, 0x2
    /* 4D374 8005CB74 09006214 */  bne        $v1, $v0, .Lfunc_8005CAB4_8005CB9C
    /* 4D378 8005CB78 21100000 */   addu      $v0, $zero, $zero
    /* 4D37C 8005CB7C 2120C002 */  addu       $a0, $s6, $zero
    /* 4D380 8005CB80 21286002 */  addu       $a1, $s3, $zero
    /* 4D384 8005CB84 38002626 */  addiu      $a2, $s1, 0x38
    /* 4D388 8005CB88 AD72010C */  jal        func_8005CAB4
    /* 4D38C 8005CB8C 21388002 */   addu      $a3, $s4, $zero
    /* 4D390 8005CB90 E7720108 */  j          .Lfunc_8005CAB4_8005CB9C
    /* 4D394 8005CB94 00000000 */   nop
  .Lfunc_8005CAB4_8005CB98:
    /* 4D398 8005CB98 01000234 */  ori        $v0, $zero, 0x1
  .Lfunc_8005CAB4_8005CB9C:
    /* 4D39C 8005CB9C 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 4D3A0 8005CBA0 3800B68F */  lw         $s6, 0x38($sp)
    /* 4D3A4 8005CBA4 3400B58F */  lw         $s5, 0x34($sp)
    /* 4D3A8 8005CBA8 3000B48F */  lw         $s4, 0x30($sp)
    /* 4D3AC 8005CBAC 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 4D3B0 8005CBB0 2800B28F */  lw         $s2, 0x28($sp)
    /* 4D3B4 8005CBB4 2400B18F */  lw         $s1, 0x24($sp)
    /* 4D3B8 8005CBB8 2000B08F */  lw         $s0, 0x20($sp)
    /* 4D3BC 8005CBBC 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 4D3C0 8005CBC0 0800E003 */  jr         $ra
    /* 4D3C4 8005CBC4 00000000 */   nop
endlabel func_8005CAB4
