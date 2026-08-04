.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamSys__PlayLinkSound, 0x120

glabel DreamSys__PlayLinkSound
    /* 4A51C 80059D1C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4A520 80059D20 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4A524 80059D24 21908000 */  addu       $s2, $a0, $zero
    /* 4A528 80059D28 2000BFAF */  sw         $ra, 0x20($sp)
    /* 4A52C 80059D2C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 4A530 80059D30 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4A534 80059D34 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4A538 80059D38 5800518E */  lw         $s1, 0x58($s2)
    /* 4A53C 80059D3C B800428E */  lw         $v0, 0xB8($s2)
    /* 4A540 80059D40 0000338E */  lw         $s3, 0x0($s1)
    /* 4A544 80059D44 35004010 */  beqz       $v0, .Lfunc_80059D1C_80059E1C
    /* 4A548 80059D48 21202002 */   addu      $a0, $s1, $zero
    /* 4A54C 80059D4C 0880013C */  lui        $at, %hi(D_80087EC8)
    /* 4A550 80059D50 C87E2124 */  addiu      $at, $at, %lo(D_80087EC8)
    /* 4A554 80059D54 21082200 */  addu       $at, $at, $v0
    /* 4A558 80059D58 00002580 */  lb         $a1, 0x0($at)
    /* 4A55C 80059D5C 0880013C */  lui        $at, %hi(D_80087EB0)
    /* 4A560 80059D60 B07E2124 */  addiu      $at, $at, %lo(D_80087EB0)
    /* 4A564 80059D64 21082200 */  addu       $at, $at, $v0
    /* 4A568 80059D68 00003080 */  lb         $s0, 0x0($at)
    /* 4A56C 80059D6C 9C00628E */  lw         $v0, 0x9C($s3)
    /* 4A570 80059D70 00000000 */  nop
    /* 4A574 80059D74 09F84000 */  jalr       $v0
    /* 4A578 80059D78 00811000 */   sll       $s0, $s0, 4
    /* 4A57C 80059D7C 21202002 */  addu       $a0, $s1, $zero
    /* 4A580 80059D80 21280002 */  addu       $a1, $s0, $zero
    /* 4A584 80059D84 6E000634 */  ori        $a2, $zero, 0x6E
    /* 4A588 80059D88 8000628E */  lw         $v0, 0x80($s3)
    /* 4A58C 80059D8C 00000000 */  nop
    /* 4A590 80059D90 09F84000 */  jalr       $v0
    /* 4A594 80059D94 6E000734 */   ori       $a3, $zero, 0x6E
    /* 4A598 80059D98 B800438E */  lw         $v1, 0xB8($s2)
    /* 4A59C 80059D9C BC0042AE */  sw         $v0, 0xBC($s2)
    /* 4A5A0 80059DA0 16000234 */  ori        $v0, $zero, 0x16
    /* 4A5A4 80059DA4 02006210 */  beq        $v1, $v0, .Lfunc_80059D1C_80059DB0
    /* 4A5A8 80059DA8 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 4A5AC 80059DAC BC0042AE */  sw         $v0, 0xBC($s2)
  .Lfunc_80059D1C_80059DB0:
    /* 4A5B0 80059DB0 B800438E */  lw         $v1, 0xB8($s2)
    /* 4A5B4 80059DB4 0B000234 */  ori        $v0, $zero, 0xB
    /* 4A5B8 80059DB8 18006214 */  bne        $v1, $v0, .Lfunc_80059D1C_80059E1C
    /* 4A5BC 80059DBC 21202002 */   addu      $a0, $s1, $zero
    /* 4A5C0 80059DC0 9C00628E */  lw         $v0, 0x9C($s3)
    /* 4A5C4 80059DC4 00000000 */  nop
    /* 4A5C8 80059DC8 09F84000 */  jalr       $v0
    /* 4A5CC 80059DCC 01000534 */   ori       $a1, $zero, 0x1
    /* 4A5D0 80059DD0 21202002 */  addu       $a0, $s1, $zero
    /* 4A5D4 80059DD4 21280002 */  addu       $a1, $s0, $zero
    /* 4A5D8 80059DD8 6E000634 */  ori        $a2, $zero, 0x6E
    /* 4A5DC 80059DDC 8000628E */  lw         $v0, 0x80($s3)
    /* 4A5E0 80059DE0 00000000 */  nop
    /* 4A5E4 80059DE4 09F84000 */  jalr       $v0
    /* 4A5E8 80059DE8 6E000734 */   ori       $a3, $zero, 0x6E
    /* 4A5EC 80059DEC 21202002 */  addu       $a0, $s1, $zero
    /* 4A5F0 80059DF0 9C00628E */  lw         $v0, 0x9C($s3)
    /* 4A5F4 80059DF4 00000000 */  nop
    /* 4A5F8 80059DF8 09F84000 */  jalr       $v0
    /* 4A5FC 80059DFC 02000534 */   ori       $a1, $zero, 0x2
    /* 4A600 80059E00 21202002 */  addu       $a0, $s1, $zero
    /* 4A604 80059E04 90000534 */  ori        $a1, $zero, 0x90
    /* 4A608 80059E08 6E000634 */  ori        $a2, $zero, 0x6E
    /* 4A60C 80059E0C 8000628E */  lw         $v0, 0x80($s3)
    /* 4A610 80059E10 00000000 */  nop
    /* 4A614 80059E14 09F84000 */  jalr       $v0
    /* 4A618 80059E18 6E000734 */   ori       $a3, $zero, 0x6E
  .Lfunc_80059D1C_80059E1C:
    /* 4A61C 80059E1C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 4A620 80059E20 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 4A624 80059E24 1800B28F */  lw         $s2, 0x18($sp)
    /* 4A628 80059E28 1400B18F */  lw         $s1, 0x14($sp)
    /* 4A62C 80059E2C 1000B08F */  lw         $s0, 0x10($sp)
    /* 4A630 80059E30 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 4A634 80059E34 0800E003 */  jr         $ra
    /* 4A638 80059E38 00000000 */   nop
endlabel DreamSys__PlayLinkSound
