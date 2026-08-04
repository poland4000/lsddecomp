.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80065CEC, 0x78

glabel func_80065CEC
    /* 564EC 80065CEC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 564F0 80065CF0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 564F4 80065CF4 21808000 */  addu       $s0, $a0, $zero
    /* 564F8 80065CF8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 564FC 80065CFC 0000028E */  lw         $v0, 0x0($s0)
    /* 56500 80065D00 00000000 */  nop
    /* 56504 80065D04 0401428C */  lw         $v0, 0x104($v0)
    /* 56508 80065D08 00000000 */  nop
    /* 5650C 80065D0C 09F84000 */  jalr       $v0
    /* 56510 80065D10 00000000 */   nop
    /* 56514 80065D14 6000028E */  lw         $v0, 0x60($s0)
    /* 56518 80065D18 00000000 */  nop
    /* 5651C 80065D1C 0B004010 */  beqz       $v0, .Lfunc_80065CEC_80065D4C
    /* 56520 80065D20 21100000 */   addu      $v0, $zero, $zero
    /* 56524 80065D24 5C00048E */  lw         $a0, 0x5C($s0)
    /* 56528 80065D28 00000000 */  nop
    /* 5652C 80065D2C 0000828C */  lw         $v0, 0x0($a0)
    /* 56530 80065D30 00000000 */  nop
    /* 56534 80065D34 0400428C */  lw         $v0, 0x4($v0)
    /* 56538 80065D38 00000000 */  nop
    /* 5653C 80065D3C 09F84000 */  jalr       $v0
    /* 56540 80065D40 00000000 */   nop
    /* 56544 80065D44 54970108 */  j          .Lfunc_80065CEC_80065D50
    /* 56548 80065D48 5C0002AE */   sw        $v0, 0x5C($s0)
  .Lfunc_80065CEC_80065D4C:
    /* 5654C 80065D4C 5C0002AE */  sw         $v0, 0x5C($s0)
  .Lfunc_80065CEC_80065D50:
    /* 56550 80065D50 1400BF8F */  lw         $ra, 0x14($sp)
    /* 56554 80065D54 1000B08F */  lw         $s0, 0x10($sp)
    /* 56558 80065D58 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 5655C 80065D5C 0800E003 */  jr         $ra
    /* 56560 80065D60 00000000 */   nop
endlabel func_80065CEC
