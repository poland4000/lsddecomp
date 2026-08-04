.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003D444, 0x98

glabel func_8003D444
    /* 2DC44 8003D444 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2DC48 8003D448 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2DC4C 8003D44C 4C00828C */  lw         $v0, 0x4C($a0)
    /* 2DC50 8003D450 00000000 */  nop
    /* 2DC54 8003D454 1D004010 */  beqz       $v0, .Lfunc_8003D444_8003D4CC
    /* 2DC58 8003D458 00000000 */   nop
    /* 2DC5C 8003D45C 5800858C */  lw         $a1, 0x58($a0)
    /* 2DC60 8003D460 00000000 */  nop
    /* 2DC64 8003D464 FFFFA524 */  addiu      $a1, $a1, -0x1
  .Lfunc_8003D444_8003D468:
    /* 2DC68 8003D468 0400A104 */  bgez       $a1, .Lfunc_8003D444_8003D47C
    /* 2DC6C 8003D46C 00000000 */   nop
    /* 2DC70 8003D470 5000828C */  lw         $v0, 0x50($a0)
    /* 2DC74 8003D474 00000000 */  nop
    /* 2DC78 8003D478 FFFF4524 */  addiu      $a1, $v0, -0x1
  .Lfunc_8003D444_8003D47C:
    /* 2DC7C 8003D47C 5800828C */  lw         $v0, 0x58($a0)
    /* 2DC80 8003D480 00000000 */  nop
    /* 2DC84 8003D484 0B00A210 */  beq        $a1, $v0, .Lfunc_8003D444_8003D4B4
    /* 2DC88 8003D488 00000000 */   nop
    /* 2DC8C 8003D48C 4C00828C */  lw         $v0, 0x4C($a0)
    /* 2DC90 8003D490 00000000 */  nop
    /* 2DC94 8003D494 1800438C */  lw         $v1, 0x18($v0)
    /* 2DC98 8003D498 80100500 */  sll        $v0, $a1, 2
    /* 2DC9C 8003D49C 21104300 */  addu       $v0, $v0, $v1
    /* 2DCA0 8003D4A0 0000428C */  lw         $v0, 0x0($v0)
    /* 2DCA4 8003D4A4 00000000 */  nop
    /* 2DCA8 8003D4A8 EFFF4014 */  bnez       $v0, .Lfunc_8003D444_8003D468
    /* 2DCAC 8003D4AC FFFFA524 */   addiu     $a1, $a1, -0x1
    /* 2DCB0 8003D4B0 0100A524 */  addiu      $a1, $a1, 0x1
  .Lfunc_8003D444_8003D4B4:
    /* 2DCB4 8003D4B4 0000828C */  lw         $v0, 0x0($a0)
    /* 2DCB8 8003D4B8 00000000 */  nop
    /* 2DCBC 8003D4BC F000428C */  lw         $v0, 0xF0($v0)
    /* 2DCC0 8003D4C0 00000000 */  nop
    /* 2DCC4 8003D4C4 09F84000 */  jalr       $v0
    /* 2DCC8 8003D4C8 01000634 */   ori       $a2, $zero, 0x1
  .Lfunc_8003D444_8003D4CC:
    /* 2DCCC 8003D4CC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2DCD0 8003D4D0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2DCD4 8003D4D4 0800E003 */  jr         $ra
    /* 2DCD8 8003D4D8 00000000 */   nop
endlabel func_8003D444
