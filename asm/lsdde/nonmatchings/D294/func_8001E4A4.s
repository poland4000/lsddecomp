.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001E4A4, 0xD8

glabel func_8001E4A4
    /* ECA4 8001E4A4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* ECA8 8001E4A8 2000B2AF */  sw         $s2, 0x20($sp)
    /* ECAC 8001E4AC 21908000 */  addu       $s2, $a0, $zero
    /* ECB0 8001E4B0 1800B0AF */  sw         $s0, 0x18($sp)
    /* ECB4 8001E4B4 2180A000 */  addu       $s0, $a1, $zero
    /* ECB8 8001E4B8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* ECBC 8001E4BC 04001134 */  ori        $s1, $zero, 0x4
    /* ECC0 8001E4C0 2400BFAF */  sw         $ra, 0x24($sp)
    /* ECC4 8001E4C4 1000A0AF */  sw         $zero, 0x10($sp)
    /* ECC8 8001E4C8 21200002 */  addu       $a0, $s0, $zero
  .Lfunc_8001E4A4_8001E4CC:
    /* ECCC 8001E4CC 1000A527 */  addiu      $a1, $sp, 0x10
    /* ECD0 8001E4D0 5B60000C */  jal        BasicClass__NextChildB
    /* ECD4 8001E4D4 1400A627 */   addiu     $a2, $sp, 0x14
    /* ECD8 8001E4D8 1000A28F */  lw         $v0, 0x10($sp)
    /* ECDC 8001E4DC 00000000 */  nop
    /* ECE0 8001E4E0 08004010 */  beqz       $v0, .Lfunc_8001E4A4_8001E504
    /* ECE4 8001E4E4 00000000 */   nop
    /* ECE8 8001E4E8 0000428C */  lw         $v0, 0x0($v0)
    /* ECEC 8001E4EC 00000000 */  nop
    /* ECF0 8001E4F0 0000428C */  lw         $v0, 0x0($v0)
    /* ECF4 8001E4F4 00000000 */  nop
    /* ECF8 8001E4F8 0F004230 */  andi       $v0, $v0, 0xF
    /* ECFC 8001E4FC 06005110 */  beq        $v0, $s1, .Lfunc_8001E4A4_8001E518
    /* ED00 8001E500 00000000 */   nop
  .Lfunc_8001E4A4_8001E504:
    /* ED04 8001E504 1400A28F */  lw         $v0, 0x14($sp)
    /* ED08 8001E508 00000000 */  nop
    /* ED0C 8001E50C EFFF4014 */  bnez       $v0, .Lfunc_8001E4A4_8001E4CC
    /* ED10 8001E510 21200002 */   addu      $a0, $s0, $zero
    /* ED14 8001E514 1000A0AF */  sw         $zero, 0x10($sp)
  .Lfunc_8001E4A4_8001E518:
    /* ED18 8001E518 1000A48F */  lw         $a0, 0x10($sp)
    /* ED1C 8001E51C 00000000 */  nop
    /* ED20 8001E520 0B008010 */  beqz       $a0, .Lfunc_8001E4A4_8001E550
    /* ED24 8001E524 34000234 */   ori       $v0, $zero, 0x34
    /* ED28 8001E528 0000858C */  lw         $a1, 0x0($a0)
    /* ED2C 8001E52C 00000000 */  nop
    /* ED30 8001E530 0000A390 */  lbu        $v1, 0x0($a1)
    /* ED34 8001E534 00000000 */  nop
    /* ED38 8001E538 05006214 */  bne        $v1, $v0, .Lfunc_8001E4A4_8001E550
    /* ED3C 8001E53C 00000000 */   nop
    /* ED40 8001E540 1000A28C */  lw         $v0, 0x10($a1)
    /* ED44 8001E544 00000000 */  nop
    /* ED48 8001E548 09F84000 */  jalr       $v0
    /* ED4C 8001E54C 21284002 */   addu      $a1, $s2, $zero
  .Lfunc_8001E4A4_8001E550:
    /* ED50 8001E550 1400A28F */  lw         $v0, 0x14($sp)
    /* ED54 8001E554 00000000 */  nop
    /* ED58 8001E558 DCFF4014 */  bnez       $v0, .Lfunc_8001E4A4_8001E4CC
    /* ED5C 8001E55C 21200002 */   addu      $a0, $s0, $zero
    /* ED60 8001E560 2400BF8F */  lw         $ra, 0x24($sp)
    /* ED64 8001E564 2000B28F */  lw         $s2, 0x20($sp)
    /* ED68 8001E568 1C00B18F */  lw         $s1, 0x1C($sp)
    /* ED6C 8001E56C 1800B08F */  lw         $s0, 0x18($sp)
    /* ED70 8001E570 2800BD27 */  addiu      $sp, $sp, 0x28
    /* ED74 8001E574 0800E003 */  jr         $ra
    /* ED78 8001E578 00000000 */   nop
endlabel func_8001E4A4
