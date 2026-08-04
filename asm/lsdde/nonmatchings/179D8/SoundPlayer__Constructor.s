.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SoundPlayer__Constructor, 0x158

glabel SoundPlayer__Constructor
    /* 1CCE0 8002C4E0 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1CCE4 8002C4E4 3400B1AF */  sw         $s1, 0x34($sp)
    /* 1CCE8 8002C4E8 21888000 */  addu       $s1, $a0, $zero
    /* 1CCEC 8002C4EC 3800B2AF */  sw         $s2, 0x38($sp)
    /* 1CCF0 8002C4F0 2190A000 */  addu       $s2, $a1, $zero
    /* 1CCF4 8002C4F4 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 1CCF8 8002C4F8 2B9B000C */  jal        GetActiveCdVtable
    /* 1CCFC 8002C4FC 3000B0AF */   sw        $s0, 0x30($sp)
    /* 1CD00 8002C500 0800428C */  lw         $v0, 0x8($v0)
    /* 1CD04 8002C504 00000000 */  nop
    /* 1CD08 8002C508 09F84000 */  jalr       $v0
    /* 1CD0C 8002C50C 21202002 */   addu      $a0, $s1, $zero
    /* 1CD10 8002C510 03B3000C */  jal        Get_vtable_SoundPlayer
    /* 1CD14 8002C514 00000000 */   nop
    /* 1CD18 8002C518 000022AE */  sw         $v0, 0x0($s1)
    /* 1CD1C 8002C51C 0000228E */  lw         $v0, 0x0($s1)
    /* 1CD20 8002C520 21202002 */  addu       $a0, $s1, $zero
    /* 1CD24 8002C524 4C0020AE */  sw         $zero, 0x4C($s1)
    /* 1CD28 8002C528 500020AE */  sw         $zero, 0x50($s1)
    /* 1CD2C 8002C52C 540020A6 */  sh         $zero, 0x54($s1)
    /* 1CD30 8002C530 560020A6 */  sh         $zero, 0x56($s1)
    /* 1CD34 8002C534 9C00428C */  lw         $v0, 0x9C($v0)
    /* 1CD38 8002C538 00000000 */  nop
    /* 1CD3C 8002C53C 09F84000 */  jalr       $v0
    /* 1CD40 8002C540 21280000 */   addu      $a1, $zero, $zero
    /* 1CD44 8002C544 B000828F */  lw         $v0, %gp_rel(D_8008A8B8)($gp)
    /* 1CD48 8002C548 580020A6 */  sh         $zero, 0x58($s1)
    /* 1CD4C 8002C54C 5A0020A6 */  sh         $zero, 0x5A($s1)
    /* 1CD50 8002C550 0B004014 */  bnez       $v0, .Lfunc_8002C4E0_8002C580
    /* 1CD54 8002C554 5C0020AE */   sw        $zero, 0x5C($s1)
    /* 1CD58 8002C558 DAC8000C */  jal        SndSysInit
    /* 1CD5C 8002C55C 00000000 */   nop
    /* 1CD60 8002C560 01000234 */  ori        $v0, $zero, 0x1
    /* 1CD64 8002C564 B00082AF */  sw         $v0, %gp_rel(D_8008A8B8)($gp)
    /* 1CD68 8002C568 1AE8000C */  jal        func_8003A068
    /* 1CD6C 8002C56C 00000000 */   nop
    /* 1CD70 8002C570 21204000 */  addu       $a0, $v0, $zero
    /* 1CD74 8002C574 02000534 */  ori        $a1, $zero, 0x2
    /* 1CD78 8002C578 EAC8000C */  jal        SndSetBankRange
    /* 1CD7C 8002C57C 01000634 */   ori       $a2, $zero, 0x1
  .Lfunc_8002C4E0_8002C580:
    /* 1CD80 8002C580 B400828F */  lw         $v0, %gp_rel(D_8008A8BC)($gp)
    /* 1CD84 8002C584 00000000 */  nop
    /* 1CD88 8002C588 06004014 */  bnez       $v0, .Lfunc_8002C4E0_8002C5A4
    /* 1CD8C 8002C58C 3C000234 */   ori       $v0, $zero, 0x3C
    /* 1CD90 8002C590 C40082AF */  sw         $v0, %gp_rel(D_8008A8CC)($gp)
    /* 1CD94 8002C594 62C9000C */  jal        SndSetTickMode
    /* 1CD98 8002C598 01000434 */   ori       $a0, $zero, 0x1
    /* 1CD9C 8002C59C 01000234 */  ori        $v0, $zero, 0x1
    /* 1CDA0 8002C5A0 B40082AF */  sw         $v0, %gp_rel(D_8008A8BC)($gp)
  .Lfunc_8002C4E0_8002C5A4:
    /* 1CDA4 8002C5A4 BC00828F */  lw         $v0, %gp_rel(gSoundPlayerCount)($gp)
    /* 1CDA8 8002C5A8 00000000 */  nop
    /* 1CDAC 8002C5AC 01004224 */  addiu      $v0, $v0, 0x1
    /* 1CDB0 8002C5B0 BC0082AF */  sw         $v0, %gp_rel(gSoundPlayerCount)($gp)
    /* 1CDB4 8002C5B4 19004012 */  beqz       $s2, .Lfunc_8002C4E0_8002C61C
    /* 1CDB8 8002C5B8 00000000 */   nop
    /* 1CDBC 8002C5BC D24C000C */  jal        func_80013348
    /* 1CDC0 8002C5C0 21204002 */   addu      $a0, $s2, $zero
    /* 1CDC4 8002C5C4 CD5E000C */  jal        BMemAlloc
    /* 1CDC8 8002C5C8 01004424 */   addiu     $a0, $v0, 0x1
    /* 1CDCC 8002C5CC 21804000 */  addu       $s0, $v0, $zero
    /* 1CDD0 8002C5D0 12000012 */  beqz       $s0, .Lfunc_8002C4E0_8002C61C
    /* 1CDD4 8002C5D4 21200002 */   addu      $a0, $s0, $zero
    /* 1CDD8 8002C5D8 21284002 */  addu       $a1, $s2, $zero
    /* 1CDDC 8002C5DC DEA2000C */  jal        Str_Copy
    /* 1CDE0 8002C5E0 5C0030AE */   sw        $s0, 0x5C($s1)
    /* 1CDE4 8002C5E4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1CDE8 8002C5E8 21280002 */  addu       $a1, $s0, $zero
    /* 1CDEC 8002C5EC 0980073C */  lui        $a3, %hi(D_8008A8D0)
    /* 1CDF0 8002C5F0 D0A8E724 */  addiu      $a3, $a3, %lo(D_8008A8D0)
    /* 1CDF4 8002C5F4 319C000C */  jal        Str_Concat3
    /* 1CDF8 8002C5F8 21300000 */   addu      $a2, $zero, $zero
    /* 1CDFC 8002C5FC 21202002 */  addu       $a0, $s1, $zero
    /* 1CE00 8002C600 0000828C */  lw         $v0, 0x0($a0)
    /* 1CE04 8002C604 01000334 */  ori        $v1, $zero, 0x1
    /* 1CE08 8002C608 2A0083A4 */  sh         $v1, 0x2A($a0)
    /* 1CE0C 8002C60C 6C00428C */  lw         $v0, 0x6C($v0)
    /* 1CE10 8002C610 00000000 */  nop
    /* 1CE14 8002C614 09F84000 */  jalr       $v0
    /* 1CE18 8002C618 1000A527 */   addiu     $a1, $sp, 0x10
  .Lfunc_8002C4E0_8002C61C:
    /* 1CE1C 8002C61C 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 1CE20 8002C620 3800B28F */  lw         $s2, 0x38($sp)
    /* 1CE24 8002C624 3400B18F */  lw         $s1, 0x34($sp)
    /* 1CE28 8002C628 3000B08F */  lw         $s0, 0x30($sp)
    /* 1CE2C 8002C62C 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 1CE30 8002C630 0800E003 */  jr         $ra
    /* 1CE34 8002C634 00000000 */   nop
endlabel SoundPlayer__Constructor
