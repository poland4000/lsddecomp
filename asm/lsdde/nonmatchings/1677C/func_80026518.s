.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80026518, 0x74

glabel func_80026518
    /* 16D18 80026518 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 16D1C 8002651C 21108000 */  addu       $v0, $a0, $zero
    /* 16D20 80026520 2120A000 */  addu       $a0, $a1, $zero
    /* 16D24 80026524 1400B1AF */  sw         $s1, 0x14($sp)
    /* 16D28 80026528 2188C000 */  addu       $s1, $a2, $zero
    /* 16D2C 8002652C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 16D30 80026530 09F84000 */  jalr       $v0
    /* 16D34 80026534 1000B0AF */   sw        $s0, 0x10($sp)
    /* 16D38 80026538 21804000 */  addu       $s0, $v0, $zero
    /* 16D3C 8002653C 21200002 */  addu       $a0, $s0, $zero
    /* 16D40 80026540 0000028E */  lw         $v0, 0x0($s0)
    /* 16D44 80026544 21282002 */  addu       $a1, $s1, $zero
    /* 16D48 80026548 4400428C */  lw         $v0, 0x44($v0)
    /* 16D4C 8002654C 00000000 */  nop
    /* 16D50 80026550 09F84000 */  jalr       $v0
    /* 16D54 80026554 21300000 */   addu      $a2, $zero, $zero
    /* 16D58 80026558 0000038E */  lw         $v1, 0x0($s0)
    /* 16D5C 8002655C 21200002 */  addu       $a0, $s0, $zero
    /* 16D60 80026560 0400638C */  lw         $v1, 0x4($v1)
    /* 16D64 80026564 00000000 */  nop
    /* 16D68 80026568 09F86000 */  jalr       $v1
    /* 16D6C 8002656C 21804000 */   addu      $s0, $v0, $zero
    /* 16D70 80026570 21100002 */  addu       $v0, $s0, $zero
    /* 16D74 80026574 1800BF8F */  lw         $ra, 0x18($sp)
    /* 16D78 80026578 1400B18F */  lw         $s1, 0x14($sp)
    /* 16D7C 8002657C 1000B08F */  lw         $s0, 0x10($sp)
    /* 16D80 80026580 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 16D84 80026584 0800E003 */  jr         $ra
    /* 16D88 80026588 00000000 */   nop
endlabel func_80026518
