.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextPanel__Method14, 0xA0

glabel TextPanel__Method14
    /* 3ECE8 8004E4E8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3ECEC 8004E4EC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3ECF0 8004E4F0 21808000 */  addu       $s0, $a0, $zero
    /* 3ECF4 8004E4F4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3ECF8 8004E4F8 2188A000 */  addu       $s1, $a1, $zero
    /* 3ECFC 8004E4FC 1C002012 */  beqz       $s1, .Lfunc_8004E4E8_8004E570
    /* 3ED00 8004E500 1800BFAF */   sw        $ra, 0x18($sp)
    /* 3ED04 8004E504 0000228E */  lw         $v0, 0x0($s1)
    /* 3ED08 8004E508 00000000 */  nop
    /* 3ED0C 8004E50C 0000448C */  lw         $a0, 0x0($v0)
    /* 3ED10 8004E510 02000234 */  ori        $v0, $zero, 0x2
    /* 3ED14 8004E514 0F008330 */  andi       $v1, $a0, 0xF
    /* 3ED18 8004E518 03006214 */  bne        $v1, $v0, .Lfunc_8004E4E8_8004E528
    /* 3ED1C 8004E51C 05000234 */   ori       $v0, $zero, 0x5
    /* 3ED20 8004E520 56390108 */  j          .Lfunc_8004E4E8_8004E558
    /* 3ED24 8004E524 600000AE */   sw        $zero, 0x60($s0)
  .Lfunc_8004E4E8_8004E528:
    /* 3ED28 8004E528 03006214 */  bne        $v1, $v0, .Lfunc_8004E4E8_8004E538
    /* 3ED2C 8004E52C FF008330 */   andi      $v1, $a0, 0xFF
    /* 3ED30 8004E530 56390108 */  j          .Lfunc_8004E4E8_8004E558
    /* 3ED34 8004E534 640000AE */   sw        $zero, 0x64($s0)
  .Lfunc_8004E4E8_8004E538:
    /* 3ED38 8004E538 10000234 */  ori        $v0, $zero, 0x10
    /* 3ED3C 8004E53C 03006214 */  bne        $v1, $v0, .Lfunc_8004E4E8_8004E54C
    /* 3ED40 8004E540 20000234 */   ori       $v0, $zero, 0x20
    /* 3ED44 8004E544 56390108 */  j          .Lfunc_8004E4E8_8004E558
    /* 3ED48 8004E548 780000AE */   sw        $zero, 0x78($s0)
  .Lfunc_8004E4E8_8004E54C:
    /* 3ED4C 8004E54C 02006214 */  bne        $v1, $v0, .Lfunc_8004E4E8_8004E558
    /* 3ED50 8004E550 00000000 */   nop
    /* 3ED54 8004E554 7C0000AE */  sw         $zero, 0x7C($s0)
  .Lfunc_8004E4E8_8004E558:
    /* 3ED58 8004E558 E460000C */  jal        Get_vtable_BasicClass
    /* 3ED5C 8004E55C 00000000 */   nop
    /* 3ED60 8004E560 1400428C */  lw         $v0, 0x14($v0)
    /* 3ED64 8004E564 21200002 */  addu       $a0, $s0, $zero
    /* 3ED68 8004E568 09F84000 */  jalr       $v0
    /* 3ED6C 8004E56C 21282002 */   addu      $a1, $s1, $zero
  .Lfunc_8004E4E8_8004E570:
    /* 3ED70 8004E570 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3ED74 8004E574 1400B18F */  lw         $s1, 0x14($sp)
    /* 3ED78 8004E578 1000B08F */  lw         $s0, 0x10($sp)
    /* 3ED7C 8004E57C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3ED80 8004E580 0800E003 */  jr         $ra
    /* 3ED84 8004E584 00000000 */   nop
endlabel TextPanel__Method14
