.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdFile__CancelRequests, 0xF8

glabel CdFile__CancelRequests
    /* 18570 80027D70 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 18574 80027D74 1000B0AF */  sw         $s0, 0x10($sp)
    /* 18578 80027D78 21808000 */  addu       $s0, $a0, $zero
    /* 1857C 80027D7C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 18580 80027D80 1800B2AF */  sw         $s2, 0x18($sp)
    /* 18584 80027D84 34A0000C */  jal        CdStreamLock
    /* 18588 80027D88 1400B1AF */   sw        $s1, 0x14($sp)
    /* 1858C 80027D8C 8C00838F */  lw         $v1, %gp_rel(gpCdRequestQueue)($gp)
    /* 18590 80027D90 00000000 */  nop
    /* 18594 80027D94 2B006010 */  beqz       $v1, .Lfunc_80027D70_80027E44
    /* 18598 80027D98 00000000 */   nop
    /* 1859C 80027D9C 22000296 */  lhu        $v0, 0x22($s0)
    /* 185A0 80027DA0 00000000 */  nop
    /* 185A4 80027DA4 27004010 */  beqz       $v0, .Lfunc_80027D70_80027E44
    /* 185A8 80027DA8 00000000 */   nop
    /* 185AC 80027DAC 240000AE */  sw         $zero, 0x24($s0)
    /* 185B0 80027DB0 0C00628C */  lw         $v0, 0xC($v1)
    /* 185B4 80027DB4 00000000 */  nop
    /* 185B8 80027DB8 10005014 */  bne        $v0, $s0, .Lfunc_80027D70_80027DFC
    /* 185BC 80027DBC 00000000 */   nop
    /* 185C0 80027DC0 0000628C */  lw         $v0, 0x0($v1)
    /* 185C4 80027DC4 00000000 */  nop
    /* 185C8 80027DC8 0C004010 */  beqz       $v0, .Lfunc_80027D70_80027DFC
    /* 185CC 80027DCC 00000000 */   nop
    /* 185D0 80027DD0 6800828F */  lw         $v0, %gp_rel(gCdOpIdle)($gp)
    /* 185D4 80027DD4 00000000 */  nop
    /* 185D8 80027DD8 08004014 */  bnez       $v0, .Lfunc_80027D70_80027DFC
    /* 185DC 80027DDC 00000000 */   nop
    /* 185E0 80027DE0 30A3000C */  jal        CdAckInterrupt
    /* 185E4 80027DE4 00000000 */   nop
    /* 185E8 80027DE8 19A2000C */  jal        CdEndOp
    /* 185EC 80027DEC 00000000 */   nop
    /* 185F0 80027DF0 8000828F */  lw         $v0, %gp_rel(D_8008A888)($gp)
    /* 185F4 80027DF4 800080AF */  sw         $zero, %gp_rel(D_8008A888)($gp)
    /* 185F8 80027DF8 740082AF */  sw         $v0, %gp_rel(D_8008A87C)($gp)
  .Lfunc_80027D70_80027DFC:
    /* 185FC 80027DFC 8C00848F */  lw         $a0, %gp_rel(gpCdRequestQueue)($gp)
    /* 18600 80027E00 00000000 */  nop
    /* 18604 80027E04 0F008010 */  beqz       $a0, .Lfunc_80027D70_80027E44
    /* 18608 80027E08 00000000 */   nop
    /* 1860C 80027E0C FFFF1234 */  ori        $s2, $zero, 0xFFFF
  .Lfunc_80027D70_80027E10:
    /* 18610 80027E10 0C00828C */  lw         $v0, 0xC($a0)
    /* 18614 80027E14 2000918C */  lw         $s1, 0x20($a0)
    /* 18618 80027E18 07005014 */  bne        $v0, $s0, .Lfunc_80027D70_80027E38
    /* 1861C 80027E1C 00000000 */   nop
    /* 18620 80027E20 F1A0000C */  jal        CdFreeRequest
    /* 18624 80027E24 00000000 */   nop
    /* 18628 80027E28 22000296 */  lhu        $v0, 0x22($s0)
    /* 1862C 80027E2C 00000000 */  nop
    /* 18630 80027E30 21105200 */  addu       $v0, $v0, $s2
    /* 18634 80027E34 220002A6 */  sh         $v0, 0x22($s0)
  .Lfunc_80027D70_80027E38:
    /* 18638 80027E38 21202002 */  addu       $a0, $s1, $zero
    /* 1863C 80027E3C F4FF8014 */  bnez       $a0, .Lfunc_80027D70_80027E10
    /* 18640 80027E40 00000000 */   nop
  .Lfunc_80027D70_80027E44:
    /* 18644 80027E44 38A0000C */  jal        CdStreamUnlock
    /* 18648 80027E48 00000000 */   nop
    /* 1864C 80027E4C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 18650 80027E50 1800B28F */  lw         $s2, 0x18($sp)
    /* 18654 80027E54 1400B18F */  lw         $s1, 0x14($sp)
    /* 18658 80027E58 1000B08F */  lw         $s0, 0x10($sp)
    /* 1865C 80027E5C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 18660 80027E60 0800E003 */  jr         $ra
    /* 18664 80027E64 00000000 */   nop
endlabel CdFile__CancelRequests
