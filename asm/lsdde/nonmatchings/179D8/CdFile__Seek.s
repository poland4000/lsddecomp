.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdFile__Seek, 0x1A0

glabel CdFile__Seek
    /* 17D28 80027528 5400828F */  lw         $v0, %gp_rel(gCdUseFileTable)($gp)
    /* 17D2C 8002752C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 17D30 80027530 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 17D34 80027534 21888000 */  addu       $s1, $a0, $zero
    /* 17D38 80027538 2000B2AF */  sw         $s2, 0x20($sp)
    /* 17D3C 8002753C 2190A000 */  addu       $s2, $a1, $zero
    /* 17D40 80027540 2400B3AF */  sw         $s3, 0x24($sp)
    /* 17D44 80027544 2198C000 */  addu       $s3, $a2, $zero
    /* 17D48 80027548 2800BFAF */  sw         $ra, 0x28($sp)
    /* 17D4C 8002754C 09004014 */  bnez       $v0, .Lfunc_80027528_80027574
    /* 17D50 80027550 1800B0AF */   sw        $s0, 0x18($sp)
    /* 17D54 80027554 5800828F */  lw         $v0, %gp_rel(D_8008A860)($gp)
    /* 17D58 80027558 00000000 */  nop
    /* 17D5C 8002755C 05004014 */  bnez       $v0, .Lfunc_80027528_80027574
    /* 17D60 80027560 00000000 */   nop
    /* 17D64 80027564 94A2000C */  jal        CdFile__GetAlignedSize
    /* 17D68 80027568 00000000 */   nop
    /* 17D6C 8002756C AA9D0008 */  j          .Lfunc_80027528_800276A8
    /* 17D70 80027570 00000000 */   nop
  .Lfunc_80027528_80027574:
    /* 17D74 80027574 34A0000C */  jal        CdStreamLock
    /* 17D78 80027578 00000000 */   nop
    /* 17D7C 8002757C 28002296 */  lhu        $v0, 0x28($s1)
    /* 17D80 80027580 00000000 */  nop
    /* 17D84 80027584 40004010 */  beqz       $v0, .Lfunc_80027528_80027688
    /* 17D88 80027588 21202002 */   addu      $a0, $s1, $zero
    /* 17D8C 8002758C 5C00828F */  lw         $v0, %gp_rel(gCdOpActive)($gp)
    /* 17D90 80027590 00000000 */  nop
    /* 17D94 80027594 41004014 */  bnez       $v0, .Lfunc_80027528_8002769C
    /* 17D98 80027598 00000000 */   nop
    /* 17D9C 8002759C 0C00228E */  lw         $v0, 0xC($s1)
    /* 17DA0 800275A0 00000000 */  nop
    /* 17DA4 800275A4 3D004010 */  beqz       $v0, .Lfunc_80027528_8002769C
    /* 17DA8 800275A8 02000434 */   ori       $a0, $zero, 0x2
    /* 17DAC 800275AC 11A2000C */  jal        CdBeginOp
    /* 17DB0 800275B0 01000534 */   ori       $a1, $zero, 0x1
    /* 17DB4 800275B4 FF074232 */  andi       $v0, $s2, 0x7FF
    /* 17DB8 800275B8 02004010 */  beqz       $v0, .Lfunc_80027528_800275C4
    /* 17DBC 800275BC C2821200 */   srl       $s0, $s2, 11
    /* 17DC0 800275C0 01001026 */  addiu      $s0, $s0, 0x1
  .Lfunc_80027528_800275C4:
    /* 17DC4 800275C4 FEA4000C */  jal        CdPosToInt
    /* 17DC8 800275C8 18002426 */   addiu     $a0, $s1, 0x18
    /* 17DCC 800275CC 21205000 */  addu       $a0, $v0, $s0
    /* 17DD0 800275D0 0780103C */  lui        $s0, %hi(D_8006D574)
    /* 17DD4 800275D4 74D51026 */  addiu      $s0, $s0, %lo(D_8006D574)
    /* 17DD8 800275D8 BDA4000C */  jal        CdIntToPos
    /* 17DDC 800275DC 21280002 */   addu      $a1, $s0, $zero
    /* 17DE0 800275E0 1B006016 */  bnez       $s3, .Lfunc_80027528_80027650
    /* 17DE4 800275E4 00000000 */   nop
    /* 17DE8 800275E8 5400828F */  lw         $v0, %gp_rel(gCdUseFileTable)($gp)
    /* 17DEC 800275EC 00000000 */  nop
    /* 17DF0 800275F0 06004010 */  beqz       $v0, .Lfunc_80027528_8002760C
    /* 17DF4 800275F4 ECFF0226 */   addiu     $v0, $s0, -0x14
    /* 17DF8 800275F8 740082AF */  sw         $v0, %gp_rel(D_8008A87C)($gp)
    /* 17DFC 800275FC 01000234 */  ori        $v0, $zero, 0x1
    /* 17E00 80027600 900082AF */  sw         $v0, %gp_rel(gCdStreamMode)($gp)
    /* 17E04 80027604 A79D0008 */  j          .Lfunc_80027528_8002769C
    /* 17E08 80027608 00000000 */   nop
  .Lfunc_80027528_8002760C:
    /* 17E0C 8002760C 05001034 */  ori        $s0, $zero, 0x5
    /* 17E10 80027610 02000434 */  ori        $a0, $zero, 0x2
  .Lfunc_80027528_80027614:
    /* 17E14 80027614 0780053C */  lui        $a1, %hi(D_8006D574)
    /* 17E18 80027618 74D5A524 */  addiu      $a1, $a1, %lo(D_8006D574)
    /* 17E1C 8002761C 7CA3000C */  jal        CdControl
    /* 17E20 80027620 21300000 */   addu      $a2, $zero, $zero
    /* 17E24 80027624 21200000 */  addu       $a0, $zero, $zero
  .Lfunc_80027528_80027628:
    /* 17E28 80027628 5AA3000C */  jal        CdSync
    /* 17E2C 8002762C 21280000 */   addu      $a1, $zero, $zero
    /* 17E30 80027630 FDFF4010 */  beqz       $v0, .Lfunc_80027528_80027628
    /* 17E34 80027634 21200000 */   addu      $a0, $zero, $zero
    /* 17E38 80027638 F6FF5010 */  beq        $v0, $s0, .Lfunc_80027528_80027614
    /* 17E3C 8002763C 02000434 */   ori       $a0, $zero, 0x2
    /* 17E40 80027640 19A2000C */  jal        CdEndOp
    /* 17E44 80027644 00000000 */   nop
    /* 17E48 80027648 A79D0008 */  j          .Lfunc_80027528_8002769C
    /* 17E4C 8002764C 00000000 */   nop
  .Lfunc_80027528_80027650:
    /* 17E50 80027650 19A2000C */  jal        CdEndOp
    /* 17E54 80027654 00000000 */   nop
    /* 17E58 80027658 38A0000C */  jal        CdStreamUnlock
    /* 17E5C 8002765C 00000000 */   nop
    /* 17E60 80027660 1C00248E */  lw         $a0, 0x1C($s1)
    /* 17E64 80027664 00000000 */  nop
    /* 17E68 80027668 FF078230 */  andi       $v0, $a0, 0x7FF
    /* 17E6C 8002766C 04004010 */  beqz       $v0, .Lfunc_80027528_80027680
    /* 17E70 80027670 C2120400 */   srl       $v0, $a0, 11
    /* 17E74 80027674 01004224 */  addiu      $v0, $v0, 0x1
    /* 17E78 80027678 AA9D0008 */  j          .Lfunc_80027528_800276A8
    /* 17E7C 8002767C C0120200 */   sll       $v0, $v0, 11
  .Lfunc_80027528_80027680:
    /* 17E80 80027680 AA9D0008 */  j          .Lfunc_80027528_800276A8
    /* 17E84 80027684 21108000 */   addu      $v0, $a0, $zero
  .Lfunc_80027528_80027688:
    /* 17E88 80027688 1000B3AF */  sw         $s3, 0x10($sp)
    /* 17E8C 8002768C 21280000 */  addu       $a1, $zero, $zero
    /* 17E90 80027690 04000634 */  ori        $a2, $zero, 0x4
    /* 17E94 80027694 ABA0000C */  jal        CdEnqueueRequest
    /* 17E98 80027698 21384002 */   addu      $a3, $s2, $zero
  .Lfunc_80027528_8002769C:
    /* 17E9C 8002769C 38A0000C */  jal        CdStreamUnlock
    /* 17EA0 800276A0 00000000 */   nop
    /* 17EA4 800276A4 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_80027528_800276A8:
    /* 17EA8 800276A8 2800BF8F */  lw         $ra, 0x28($sp)
    /* 17EAC 800276AC 2400B38F */  lw         $s3, 0x24($sp)
    /* 17EB0 800276B0 2000B28F */  lw         $s2, 0x20($sp)
    /* 17EB4 800276B4 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 17EB8 800276B8 1800B08F */  lw         $s0, 0x18($sp)
    /* 17EBC 800276BC 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 17EC0 800276C0 0800E003 */  jr         $ra
    /* 17EC4 800276C4 00000000 */   nop
endlabel CdFile__Seek
