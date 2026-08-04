.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80040CD0, 0xA4

glabel func_80040CD0
    /* 314D0 80040CD0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 314D4 80040CD4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 314D8 80040CD8 21888000 */  addu       $s1, $a0, $zero
    /* 314DC 80040CDC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 314E0 80040CE0 2000BFAF */  sw         $ra, 0x20($sp)
    /* 314E4 80040CE4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 314E8 80040CE8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 314EC 80040CEC AC002492 */  lbu        $a0, 0xAC($s1)
    /* 314F0 80040CF0 B400238E */  lw         $v1, 0xB4($s1)
    /* 314F4 80040CF4 80100400 */  sll        $v0, $a0, 2
    /* 314F8 80040CF8 21904300 */  addu       $s2, $v0, $v1
    /* 314FC 80040CFC AB002292 */  lbu        $v0, 0xAB($s1)
    /* 31500 80040D00 21808000 */  addu       $s0, $a0, $zero
    /* 31504 80040D04 21100202 */  addu       $v0, $s0, $v0
    /* 31508 80040D08 2A100202 */  slt        $v0, $s0, $v0
    /* 3150C 80040D0C 10004010 */  beqz       $v0, .Lfunc_80040CD0_80040D50
    /* 31510 80040D10 2198A000 */   addu      $s3, $a1, $zero
  .Lfunc_80040CD0_80040D14:
    /* 31514 80040D14 0000448E */  lw         $a0, 0x0($s2)
    /* 31518 80040D18 04005226 */  addiu      $s2, $s2, 0x4
    /* 3151C 80040D1C 0000828C */  lw         $v0, 0x0($a0)
    /* 31520 80040D20 01001026 */  addiu      $s0, $s0, 0x1
    /* 31524 80040D24 6000428C */  lw         $v0, 0x60($v0)
    /* 31528 80040D28 00000000 */  nop
    /* 3152C 80040D2C 09F84000 */  jalr       $v0
    /* 31530 80040D30 21286002 */   addu      $a1, $s3, $zero
    /* 31534 80040D34 AC002392 */  lbu        $v1, 0xAC($s1)
    /* 31538 80040D38 AB002492 */  lbu        $a0, 0xAB($s1)
    /* 3153C 80040D3C 00000000 */  nop
    /* 31540 80040D40 21186400 */  addu       $v1, $v1, $a0
    /* 31544 80040D44 2A180302 */  slt        $v1, $s0, $v1
    /* 31548 80040D48 F2FF6014 */  bnez       $v1, .Lfunc_80040CD0_80040D14
    /* 3154C 80040D4C 21304000 */   addu      $a2, $v0, $zero
  .Lfunc_80040CD0_80040D50:
    /* 31550 80040D50 2110C000 */  addu       $v0, $a2, $zero
    /* 31554 80040D54 2000BF8F */  lw         $ra, 0x20($sp)
    /* 31558 80040D58 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3155C 80040D5C 1800B28F */  lw         $s2, 0x18($sp)
    /* 31560 80040D60 1400B18F */  lw         $s1, 0x14($sp)
    /* 31564 80040D64 1000B08F */  lw         $s0, 0x10($sp)
    /* 31568 80040D68 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3156C 80040D6C 0800E003 */  jr         $ra
    /* 31570 80040D70 00000000 */   nop
endlabel func_80040CD0
