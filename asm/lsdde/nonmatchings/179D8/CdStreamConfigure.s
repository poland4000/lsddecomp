.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdStreamConfigure, 0xC0

glabel CdStreamConfigure
    /* 18718 80027F18 5C00828F */  lw         $v0, %gp_rel(gCdOpActive)($gp)
    /* 1871C 80027F1C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 18720 80027F20 1000B0AF */  sw         $s0, 0x10($sp)
    /* 18724 80027F24 21808000 */  addu       $s0, $a0, $zero
    /* 18728 80027F28 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1872C 80027F2C 2190A000 */  addu       $s2, $a1, $zero
    /* 18730 80027F30 1400B1AF */  sw         $s1, 0x14($sp)
    /* 18734 80027F34 2188C000 */  addu       $s1, $a2, $zero
    /* 18738 80027F38 1F004014 */  bnez       $v0, .Lfunc_80027F18_80027FB8
    /* 1873C 80027F3C 1C00BFAF */   sw        $ra, 0x1C($sp)
    /* 18740 80027F40 18002016 */  bnez       $s1, .Lfunc_80027F18_80027FA4
    /* 18744 80027F44 00000000 */   nop
    /* 18748 80027F48 1783000C */  jal        func_80020C5C
    /* 1874C 80027F4C 00000000 */   nop
    /* 18750 80027F50 5400838F */  lw         $v1, %gp_rel(gCdUseFileTable)($gp)
    /* 18754 80027F54 00000000 */  nop
    /* 18758 80027F58 0A006014 */  bnez       $v1, .Lfunc_80027F18_80027F84
    /* 1875C 80027F5C 21204000 */   addu      $a0, $v0, $zero
    /* 18760 80027F60 10000012 */  beqz       $s0, .Lfunc_80027F18_80027FA4
    /* 18764 80027F64 00000000 */   nop
    /* 18768 80027F68 0000828C */  lw         $v0, 0x0($a0)
    /* 1876C 80027F6C 00000000 */  nop
    /* 18770 80027F70 8400428C */  lw         $v0, 0x84($v0)
    /* 18774 80027F74 0380053C */  lui        $a1, %hi(CdStreamCallback)
    /* 18778 80027F78 EC80A524 */  addiu      $a1, $a1, %lo(CdStreamCallback)
    /* 1877C 80027F7C E69F0008 */  j          .Lfunc_80027F18_80027F98
    /* 18780 80027F80 00000000 */   nop
  .Lfunc_80027F18_80027F84:
    /* 18784 80027F84 07000016 */  bnez       $s0, .Lfunc_80027F18_80027FA4
    /* 18788 80027F88 21280000 */   addu      $a1, $zero, $zero
    /* 1878C 80027F8C 0000828C */  lw         $v0, 0x0($a0)
    /* 18790 80027F90 00000000 */  nop
    /* 18794 80027F94 8400428C */  lw         $v0, 0x84($v0)
  .Lfunc_80027F18_80027F98:
    /* 18798 80027F98 00000000 */  nop
    /* 1879C 80027F9C 09F84000 */  jalr       $v0
    /* 187A0 80027FA0 00000000 */   nop
  .Lfunc_80027F18_80027FA4:
    /* 187A4 80027FA4 9C0091AF */  sw         $s1, %gp_rel(gCdCallbackEnabled)($gp)
    /* 187A8 80027FA8 540090AF */  sw         $s0, %gp_rel(gCdUseFileTable)($gp)
    /* 187AC 80027FAC 580092AF */  sw         $s2, %gp_rel(D_8008A860)($gp)
    /* 187B0 80027FB0 EF9F0008 */  j          .Lfunc_80027F18_80027FBC
    /* 187B4 80027FB4 01000234 */   ori       $v0, $zero, 0x1
  .Lfunc_80027F18_80027FB8:
    /* 187B8 80027FB8 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_80027F18_80027FBC:
    /* 187BC 80027FBC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 187C0 80027FC0 1800B28F */  lw         $s2, 0x18($sp)
    /* 187C4 80027FC4 1400B18F */  lw         $s1, 0x14($sp)
    /* 187C8 80027FC8 1000B08F */  lw         $s0, 0x10($sp)
    /* 187CC 80027FCC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 187D0 80027FD0 0800E003 */  jr         $ra
    /* 187D4 80027FD4 00000000 */   nop
endlabel CdStreamConfigure
