.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80026CFC, 0x8C

glabel func_80026CFC
    /* 174FC 80026CFC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 17500 80026D00 1000B0AF */  sw         $s0, 0x10($sp)
    /* 17504 80026D04 0780103C */  lui        $s0, %hi(D_8006D4AC)
    /* 17508 80026D08 ACD41026 */  addiu      $s0, $s0, %lo(D_8006D4AC)
    /* 1750C 80026D0C 13000234 */  ori        $v0, $zero, 0x13
    /* 17510 80026D10 1800BFAF */  sw         $ra, 0x18($sp)
    /* 17514 80026D14 1400B1AF */  sw         $s1, 0x14($sp)
    /* 17518 80026D18 440084AF */  sw         $a0, %gp_rel(gCdDriverMode)($gp)
    /* 1751C 80026D1C 05008214 */  bne        $a0, $v0, .Lfunc_80026CFC_80026D34
    /* 17520 80026D20 00000000 */   nop
    /* 17524 80026D24 9A9F000C */  jal        Get_vtable_CdFile
    /* 17528 80026D28 00000000 */   nop
    /* 1752C 80026D2C 4F9B0008 */  j          .Lfunc_80026CFC_80026D3C
    /* 17530 80026D30 00000000 */   nop
  .Lfunc_80026CFC_80026D34:
    /* 17534 80026D34 0EB1000C */  jal        Get_vtable_ClassD9BC
    /* 17538 80026D38 00000000 */   nop
  .Lfunc_80026CFC_80026D3C:
    /* 1753C 80026D3C 279B000C */  jal        Get_vtable_CdFileBase
    /* 17540 80026D40 21884000 */   addu      $s1, $v0, $zero
    /* 17544 80026D44 569B0008 */  j          .Lfunc_80026CFC_80026D58
    /* 17548 80026D48 21204000 */   addu      $a0, $v0, $zero
  .Lfunc_80026CFC_80026D4C:
    /* 1754C 80026D4C 09F84000 */  jalr       $v0
    /* 17550 80026D50 04001026 */   addiu     $s0, $s0, 0x4
    /* 17554 80026D54 21204000 */  addu       $a0, $v0, $zero
  .Lfunc_80026CFC_80026D58:
    /* 17558 80026D58 629B000C */  jal        func_80026D88
    /* 1755C 80026D5C 21282002 */   addu      $a1, $s1, $zero
    /* 17560 80026D60 0000028E */  lw         $v0, 0x0($s0)
    /* 17564 80026D64 00000000 */  nop
    /* 17568 80026D68 F8FF4014 */  bnez       $v0, .Lfunc_80026CFC_80026D4C
    /* 1756C 80026D6C 00000000 */   nop
    /* 17570 80026D70 1800BF8F */  lw         $ra, 0x18($sp)
    /* 17574 80026D74 1400B18F */  lw         $s1, 0x14($sp)
    /* 17578 80026D78 1000B08F */  lw         $s0, 0x10($sp)
    /* 1757C 80026D7C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 17580 80026D80 0800E003 */  jr         $ra
    /* 17584 80026D84 00000000 */   nop
endlabel func_80026CFC
