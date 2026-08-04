.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdFile__Read, 0x130

glabel CdFile__Read
    /* 17ED0 800276D0 5400828F */  lw         $v0, %gp_rel(gCdUseFileTable)($gp)
    /* 17ED4 800276D4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 17ED8 800276D8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 17EDC 800276DC 21808000 */  addu       $s0, $a0, $zero
    /* 17EE0 800276E0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 17EE4 800276E4 2190A000 */  addu       $s2, $a1, $zero
    /* 17EE8 800276E8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 17EEC 800276EC 2188C000 */  addu       $s1, $a2, $zero
    /* 17EF0 800276F0 09004014 */  bnez       $v0, .Lfunc_800276D0_80027718
    /* 17EF4 800276F4 2400BFAF */   sw        $ra, 0x24($sp)
    /* 17EF8 800276F8 5800828F */  lw         $v0, %gp_rel(D_8008A860)($gp)
    /* 17EFC 800276FC 00000000 */  nop
    /* 17F00 80027700 05004014 */  bnez       $v0, .Lfunc_800276D0_80027718
    /* 17F04 80027704 00000000 */   nop
    /* 17F08 80027708 A1A2000C */  jal        CdFile__ReadSync
    /* 17F0C 8002770C 00000000 */   nop
    /* 17F10 80027710 F99D0008 */  j          .Lfunc_800276D0_800277E4
    /* 17F14 80027714 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_800276D0_80027718:
    /* 17F18 80027718 34A0000C */  jal        CdStreamLock
    /* 17F1C 8002771C 00000000 */   nop
    /* 17F20 80027720 28000296 */  lhu        $v0, 0x28($s0)
    /* 17F24 80027724 00000000 */  nop
    /* 17F28 80027728 26004010 */  beqz       $v0, .Lfunc_800276D0_800277C4
    /* 17F2C 8002772C 21200002 */   addu      $a0, $s0, $zero
    /* 17F30 80027730 5C00828F */  lw         $v0, %gp_rel(gCdOpActive)($gp)
    /* 17F34 80027734 00000000 */  nop
    /* 17F38 80027738 27004014 */  bnez       $v0, .Lfunc_800276D0_800277D8
    /* 17F3C 8002773C 00000000 */   nop
    /* 17F40 80027740 0C00028E */  lw         $v0, 0xC($s0)
    /* 17F44 80027744 00000000 */  nop
    /* 17F48 80027748 23004010 */  beqz       $v0, .Lfunc_800276D0_800277D8
    /* 17F4C 8002774C 03000434 */   ori       $a0, $zero, 0x3
    /* 17F50 80027750 11A2000C */  jal        CdBeginOp
    /* 17F54 80027754 07000534 */   ori       $a1, $zero, 0x7
    /* 17F58 80027758 5400828F */  lw         $v0, %gp_rel(gCdUseFileTable)($gp)
    /* 17F5C 8002775C 00000000 */  nop
    /* 17F60 80027760 07004010 */  beqz       $v0, .Lfunc_800276D0_80027780
    /* 17F64 80027764 C2121100 */   srl       $v0, $s1, 11
    /* 17F68 80027768 780082AF */  sw         $v0, %gp_rel(D_8008A880)($gp)
    /* 17F6C 8002776C 01000234 */  ori        $v0, $zero, 0x1
    /* 17F70 80027770 7C0092AF */  sw         $s2, %gp_rel(D_8008A884)($gp)
    /* 17F74 80027774 900082AF */  sw         $v0, %gp_rel(gCdStreamMode)($gp)
    /* 17F78 80027778 F69D0008 */  j          .Lfunc_800276D0_800277D8
    /* 17F7C 8002777C 00000000 */   nop
  .Lfunc_800276D0_80027780:
    /* 17F80 80027780 C2221100 */  srl        $a0, $s1, 11
  .Lfunc_800276D0_80027784:
    /* 17F84 80027784 21284002 */  addu       $a1, $s2, $zero
    /* 17F88 80027788 9DA4000C */  jal        CdRead
    /* 17F8C 8002778C 80000634 */   ori       $a2, $zero, 0x80
    /* 17F90 80027790 21200000 */  addu       $a0, $zero, $zero
  .Lfunc_800276D0_80027794:
    /* 17F94 80027794 95A4000C */  jal        CdReadSync
    /* 17F98 80027798 21280000 */   addu      $a1, $zero, $zero
    /* 17F9C 8002779C 21184000 */  addu       $v1, $v0, $zero
    /* 17FA0 800277A0 FCFF601C */  bgtz       $v1, .Lfunc_800276D0_80027794
    /* 17FA4 800277A4 21200000 */   addu      $a0, $zero, $zero
    /* 17FA8 800277A8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 17FAC 800277AC F5FF6210 */  beq        $v1, $v0, .Lfunc_800276D0_80027784
    /* 17FB0 800277B0 C2221100 */   srl       $a0, $s1, 11
    /* 17FB4 800277B4 19A2000C */  jal        CdEndOp
    /* 17FB8 800277B8 00000000 */   nop
    /* 17FBC 800277BC F69D0008 */  j          .Lfunc_800276D0_800277D8
    /* 17FC0 800277C0 00000000 */   nop
  .Lfunc_800276D0_800277C4:
    /* 17FC4 800277C4 1000B1AF */  sw         $s1, 0x10($sp)
    /* 17FC8 800277C8 21280000 */  addu       $a1, $zero, $zero
    /* 17FCC 800277CC 05000634 */  ori        $a2, $zero, 0x5
    /* 17FD0 800277D0 ABA0000C */  jal        CdEnqueueRequest
    /* 17FD4 800277D4 21384002 */   addu      $a3, $s2, $zero
  .Lfunc_800276D0_800277D8:
    /* 17FD8 800277D8 38A0000C */  jal        CdStreamUnlock
    /* 17FDC 800277DC 00000000 */   nop
    /* 17FE0 800277E0 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_800276D0_800277E4:
    /* 17FE4 800277E4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 17FE8 800277E8 2000B28F */  lw         $s2, 0x20($sp)
    /* 17FEC 800277EC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 17FF0 800277F0 1800B08F */  lw         $s0, 0x18($sp)
    /* 17FF4 800277F4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 17FF8 800277F8 0800E003 */  jr         $ra
    /* 17FFC 800277FC 00000000 */   nop
endlabel CdFile__Read
