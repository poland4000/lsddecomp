.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamWorld__Method94, 0x11C

glabel DreamWorld__Method94
    /* 442CC 80053ACC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 442D0 80053AD0 2000B0AF */  sw         $s0, 0x20($sp)
    /* 442D4 80053AD4 21808000 */  addu       $s0, $a0, $zero
    /* 442D8 80053AD8 2800BFAF */  sw         $ra, 0x28($sp)
    /* 442DC 80053ADC 2400B1AF */  sw         $s1, 0x24($sp)
    /* 442E0 80053AE0 3C00048E */  lw         $a0, 0x3C($s0)
    /* 442E4 80053AE4 04001134 */  ori        $s1, $zero, 0x4
    /* 442E8 80053AE8 200011AE */  sw         $s1, 0x20($s0)
    /* 442EC 80053AEC 0000828C */  lw         $v0, 0x0($a0)
    /* 442F0 80053AF0 1800A527 */  addiu      $a1, $sp, 0x18
    /* 442F4 80053AF4 F000428C */  lw         $v0, 0xF0($v0)
    /* 442F8 80053AF8 00000000 */  nop
    /* 442FC 80053AFC 09F84000 */  jalr       $v0
    /* 44300 80053B00 FFFF0624 */   addiu     $a2, $zero, -0x1
    /* 44304 80053B04 2B004014 */  bnez       $v0, .Lfunc_80053ACC_80053BB4
    /* 44308 80053B08 01000234 */   ori       $v0, $zero, 0x1
    /* 4430C 80053B0C 1C00028E */  lw         $v0, 0x1C($s0)
    /* 44310 80053B10 3800038E */  lw         $v1, 0x38($s0)
    /* 44314 80053B14 00000000 */  nop
    /* 44318 80053B18 21104300 */  addu       $v0, $v0, $v1
    /* 4431C 80053B1C 03004330 */  andi       $v1, $v0, 0x3
    /* 44320 80053B20 09006014 */  bnez       $v1, .Lfunc_80053ACC_80053B48
    /* 44324 80053B24 21206000 */   addu      $a0, $v1, $zero
    /* 44328 80053B28 0000028E */  lw         $v0, 0x0($s0)
    /* 4432C 80053B2C 21200002 */  addu       $a0, $s0, $zero
    /* 44330 80053B30 3000428C */  lw         $v0, 0x30($v0)
    /* 44334 80053B34 00000000 */  nop
    /* 44338 80053B38 09F84000 */  jalr       $v0
    /* 4433C 80053B3C 04000534 */   ori       $a1, $zero, 0x4
    /* 44340 80053B40 F44E0108 */  j          .Lfunc_80053ACC_80053BD0
    /* 44344 80053B44 00000000 */   nop
  .Lfunc_80053ACC_80053B48:
    /* 44348 80053B48 02000234 */  ori        $v0, $zero, 0x2
    /* 4434C 80053B4C 0F006210 */  beq        $v1, $v0, .Lfunc_80053ACC_80053B8C
    /* 44350 80053B50 0A000734 */   ori       $a3, $zero, 0xA
    /* 44354 80053B54 03006228 */  slti       $v0, $v1, 0x3
    /* 44358 80053B58 05004010 */  beqz       $v0, .Lfunc_80053ACC_80053B70
    /* 4435C 80053B5C 01000234 */   ori       $v0, $zero, 0x1
    /* 44360 80053B60 08006210 */  beq        $v1, $v0, .Lfunc_80053ACC_80053B84
    /* 44364 80053B64 21200002 */   addu      $a0, $s0, $zero
    /* 44368 80053B68 E94E0108 */  j          .Lfunc_80053ACC_80053BA4
    /* 4436C 80053B6C 00000000 */   nop
  .Lfunc_80053ACC_80053B70:
    /* 44370 80053B70 03000234 */  ori        $v0, $zero, 0x3
    /* 44374 80053B74 07008210 */  beq        $a0, $v0, .Lfunc_80053ACC_80053B94
    /* 44378 80053B78 07000234 */   ori       $v0, $zero, 0x7
    /* 4437C 80053B7C E84E0108 */  j          .Lfunc_80053ACC_80053BA0
    /* 44380 80053B80 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_80053ACC_80053B84:
    /* 44384 80053B84 E74E0108 */  j          .Lfunc_80053ACC_80053B9C
    /* 44388 80053B88 1800A0AF */   sw        $zero, 0x18($sp)
  .Lfunc_80053ACC_80053B8C:
    /* 4438C 80053B8C E74E0108 */  j          .Lfunc_80053ACC_80053B9C
    /* 44390 80053B90 1800B1AF */   sw        $s1, 0x18($sp)
  .Lfunc_80053ACC_80053B94:
    /* 44394 80053B94 1800A2AF */  sw         $v0, 0x18($sp)
    /* 44398 80053B98 05000734 */  ori        $a3, $zero, 0x5
  .Lfunc_80053ACC_80053B9C:
    /* 4439C 80053B9C 21200002 */  addu       $a0, $s0, $zero
  .Lfunc_80053ACC_80053BA0:
    /* 443A0 80053BA0 01000234 */  ori        $v0, $zero, 0x1
  .Lfunc_80053ACC_80053BA4:
    /* 443A4 80053BA4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 443A8 80053BA8 1800A58F */  lw         $a1, 0x18($sp)
    /* 443AC 80053BAC F24E0108 */  j          .Lfunc_80053ACC_80053BC8
    /* 443B0 80053BB0 21300000 */   addu      $a2, $zero, $zero
  .Lfunc_80053ACC_80053BB4:
    /* 443B4 80053BB4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 443B8 80053BB8 21200002 */  addu       $a0, $s0, $zero
    /* 443BC 80053BBC 21280000 */  addu       $a1, $zero, $zero
    /* 443C0 80053BC0 21300000 */  addu       $a2, $zero, $zero
    /* 443C4 80053BC4 05000734 */  ori        $a3, $zero, 0x5
  .Lfunc_80053ACC_80053BC8:
    /* 443C8 80053BC8 AD4F010C */  jal        DreamWorld__ScheduleAction
    /* 443CC 80053BCC 00000000 */   nop
  .Lfunc_80053ACC_80053BD0:
    /* 443D0 80053BD0 2800BF8F */  lw         $ra, 0x28($sp)
    /* 443D4 80053BD4 2400B18F */  lw         $s1, 0x24($sp)
    /* 443D8 80053BD8 2000B08F */  lw         $s0, 0x20($sp)
    /* 443DC 80053BDC 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 443E0 80053BE0 0800E003 */  jr         $ra
    /* 443E4 80053BE4 00000000 */   nop
endlabel DreamWorld__Method94
