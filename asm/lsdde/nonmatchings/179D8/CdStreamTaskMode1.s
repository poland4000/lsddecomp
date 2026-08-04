.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdStreamTaskMode1, 0x158

glabel CdStreamTaskMode1
    /* 18D8C 8002858C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 18D90 80028590 1400BFAF */  sw         $ra, 0x14($sp)
    /* 18D94 80028594 34A0000C */  jal        CdStreamLock
    /* 18D98 80028598 1000B0AF */   sw        $s0, 0x10($sp)
    /* 18D9C 8002859C 7000908F */  lw         $s0, %gp_rel(gCdStreamState)($gp)
    /* 18DA0 800285A0 02000234 */  ori        $v0, $zero, 0x2
    /* 18DA4 800285A4 15000212 */  beq        $s0, $v0, .Lfunc_8002858C_800285FC
    /* 18DA8 800285A8 0300022A */   slti      $v0, $s0, 0x3
    /* 18DAC 800285AC 05004010 */  beqz       $v0, .Lfunc_8002858C_800285C4
    /* 18DB0 800285B0 01000234 */   ori       $v0, $zero, 0x1
    /* 18DB4 800285B4 0A000212 */  beq        $s0, $v0, .Lfunc_8002858C_800285E0
    /* 18DB8 800285B8 02000434 */   ori       $a0, $zero, 0x2
    /* 18DBC 800285BC B2A10008 */  j          .Lfunc_8002858C_800286C8
    /* 18DC0 800285C0 00000000 */   nop
  .Lfunc_8002858C_800285C4:
    /* 18DC4 800285C4 07000234 */  ori        $v0, $zero, 0x7
    /* 18DC8 800285C8 26000212 */  beq        $s0, $v0, .Lfunc_8002858C_80028664
    /* 18DCC 800285CC 08000234 */   ori       $v0, $zero, 0x8
    /* 18DD0 800285D0 2C000212 */  beq        $s0, $v0, .Lfunc_8002858C_80028684
    /* 18DD4 800285D4 01000434 */   ori       $a0, $zero, 0x1
    /* 18DD8 800285D8 B2A10008 */  j          .Lfunc_8002858C_800286C8
    /* 18DDC 800285DC 00000000 */   nop
  .Lfunc_8002858C_800285E0:
    /* 18DE0 800285E0 7400858F */  lw         $a1, %gp_rel(D_8008A87C)($gp)
    /* 18DE4 800285E4 CEA3000C */  jal        CdControlF
    /* 18DE8 800285E8 1400A524 */   addiu     $a1, $a1, 0x14
    /* 18DEC 800285EC 36004010 */  beqz       $v0, .Lfunc_8002858C_800286C8
    /* 18DF0 800285F0 02000434 */   ori       $a0, $zero, 0x2
    /* 18DF4 800285F4 B0A10008 */  j          .Lfunc_8002858C_800286C0
    /* 18DF8 800285F8 00000000 */   nop
  .Lfunc_8002858C_800285FC:
    /* 18DFC 800285FC 01000434 */  ori        $a0, $zero, 0x1
    /* 18E00 80028600 5AA3000C */  jal        CdSync
    /* 18E04 80028604 21280000 */   addu      $a1, $zero, $zero
    /* 18E08 80028608 21184000 */  addu       $v1, $v0, $zero
    /* 18E0C 8002860C 25007010 */  beq        $v1, $s0, .Lfunc_8002858C_800286A4
    /* 18E10 80028610 03006228 */   slti      $v0, $v1, 0x3
    /* 18E14 80028614 05004010 */  beqz       $v0, .Lfunc_8002858C_8002862C
    /* 18E18 80028618 00000000 */   nop
    /* 18E1C 8002861C 08006010 */  beqz       $v1, .Lfunc_8002858C_80028640
    /* 18E20 80028620 00000000 */   nop
    /* 18E24 80028624 B2A10008 */  j          .Lfunc_8002858C_800286C8
    /* 18E28 80028628 00000000 */   nop
  .Lfunc_8002858C_8002862C:
    /* 18E2C 8002862C 05000234 */  ori        $v0, $zero, 0x5
    /* 18E30 80028630 25006214 */  bne        $v1, $v0, .Lfunc_8002858C_800286C8
    /* 18E34 80028634 01000434 */   ori       $a0, $zero, 0x1
    /* 18E38 80028638 B0A10008 */  j          .Lfunc_8002858C_800286C0
    /* 18E3C 8002863C 00000000 */   nop
  .Lfunc_8002858C_80028640:
    /* 18E40 80028640 9800828F */  lw         $v0, %gp_rel(gCdStreamRetryCount)($gp)
    /* 18E44 80028644 00000000 */  nop
    /* 18E48 80028648 01004224 */  addiu      $v0, $v0, 0x1
    /* 18E4C 8002864C 980082AF */  sw         $v0, %gp_rel(gCdStreamRetryCount)($gp)
    /* 18E50 80028650 59024228 */  slti       $v0, $v0, 0x259
    /* 18E54 80028654 1C004014 */  bnez       $v0, .Lfunc_8002858C_800286C8
    /* 18E58 80028658 01000434 */   ori       $a0, $zero, 0x1
    /* 18E5C 8002865C B0A10008 */  j          .Lfunc_8002858C_800286C0
    /* 18E60 80028660 00000000 */   nop
  .Lfunc_8002858C_80028664:
    /* 18E64 80028664 7800848F */  lw         $a0, %gp_rel(D_8008A880)($gp)
    /* 18E68 80028668 7C00858F */  lw         $a1, %gp_rel(D_8008A884)($gp)
    /* 18E6C 8002866C 9DA4000C */  jal        CdRead
    /* 18E70 80028670 80000634 */   ori       $a2, $zero, 0x80
    /* 18E74 80028674 14004010 */  beqz       $v0, .Lfunc_8002858C_800286C8
    /* 18E78 80028678 08000434 */   ori       $a0, $zero, 0x8
    /* 18E7C 8002867C B0A10008 */  j          .Lfunc_8002858C_800286C0
    /* 18E80 80028680 00000000 */   nop
  .Lfunc_8002858C_80028684:
    /* 18E84 80028684 95A4000C */  jal        CdReadSync
    /* 18E88 80028688 21280000 */   addu      $a1, $zero, $zero
    /* 18E8C 8002868C 21184000 */  addu       $v1, $v0, $zero
    /* 18E90 80028690 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 18E94 80028694 07006210 */  beq        $v1, $v0, .Lfunc_8002858C_800286B4
    /* 18E98 80028698 00000000 */   nop
    /* 18E9C 8002869C 0A006014 */  bnez       $v1, .Lfunc_8002858C_800286C8
    /* 18EA0 800286A0 00000000 */   nop
  .Lfunc_8002858C_800286A4:
    /* 18EA4 800286A4 19A2000C */  jal        CdEndOp
    /* 18EA8 800286A8 00000000 */   nop
    /* 18EAC 800286AC B2A10008 */  j          .Lfunc_8002858C_800286C8
    /* 18EB0 800286B0 00000000 */   nop
  .Lfunc_8002858C_800286B4:
    /* 18EB4 800286B4 30A3000C */  jal        CdAckInterrupt
    /* 18EB8 800286B8 00000000 */   nop
    /* 18EBC 800286BC 01000434 */  ori        $a0, $zero, 0x1
  .Lfunc_8002858C_800286C0:
    /* 18EC0 800286C0 22A2000C */  jal        CdSetStreamState
    /* 18EC4 800286C4 00000000 */   nop
  .Lfunc_8002858C_800286C8:
    /* 18EC8 800286C8 38A0000C */  jal        CdStreamUnlock
    /* 18ECC 800286CC 00000000 */   nop
    /* 18ED0 800286D0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 18ED4 800286D4 1000B08F */  lw         $s0, 0x10($sp)
    /* 18ED8 800286D8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 18EDC 800286DC 0800E003 */  jr         $ra
    /* 18EE0 800286E0 00000000 */   nop
endlabel CdStreamTaskMode1
