.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80065D64, 0x58

glabel func_80065D64
    /* 56564 80065D64 7400828C */  lw         $v0, 0x74($a0)
    /* 56568 80065D68 00000000 */  nop
    /* 5656C 80065D6C 0F004010 */  beqz       $v0, .Lfunc_80065D64_80065DAC
    /* 56570 80065D70 F8FFBD27 */   addiu     $sp, $sp, -0x8
    /* 56574 80065D74 21304000 */  addu       $a2, $v0, $zero
    /* 56578 80065D78 6C00848C */  lw         $a0, 0x6C($a0)
    /* 5657C 80065D7C 00000000 */  nop
    /* 56580 80065D80 0A008018 */  blez       $a0, .Lfunc_80065D64_80065DAC
    /* 56584 80065D84 21180000 */   addu      $v1, $zero, $zero
    /* 56588 80065D88 FF00A530 */  andi       $a1, $a1, 0xFF
  .Lfunc_80065D64_80065D8C:
    /* 5658C 80065D8C 0000C290 */  lbu        $v0, 0x0($a2)
    /* 56590 80065D90 00000000 */  nop
    /* 56594 80065D94 06004510 */  beq        $v0, $a1, .Lfunc_80065D64_80065DB0
    /* 56598 80065D98 21106000 */   addu      $v0, $v1, $zero
    /* 5659C 80065D9C 01006324 */  addiu      $v1, $v1, 0x1
    /* 565A0 80065DA0 2A106400 */  slt        $v0, $v1, $a0
    /* 565A4 80065DA4 F9FF4014 */  bnez       $v0, .Lfunc_80065D64_80065D8C
    /* 565A8 80065DA8 0100C624 */   addiu     $a2, $a2, 0x1
  .Lfunc_80065D64_80065DAC:
    /* 565AC 80065DAC FFFF0224 */  addiu      $v0, $zero, -0x1
  .Lfunc_80065D64_80065DB0:
    /* 565B0 80065DB0 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 565B4 80065DB4 0800E003 */  jr         $ra
    /* 565B8 80065DB8 00000000 */   nop
endlabel func_80065D64
