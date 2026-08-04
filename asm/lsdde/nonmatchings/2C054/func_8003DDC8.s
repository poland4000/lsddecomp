.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003DDC8, 0x68

glabel func_8003DDC8
    /* 2E5C8 8003DDC8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2E5CC 8003DDCC 21308000 */  addu       $a2, $a0, $zero
    /* 2E5D0 8003DDD0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2E5D4 8003DDD4 5800C28C */  lw         $v0, 0x58($a2)
    /* 2E5D8 8003DDD8 6000C38C */  lw         $v1, 0x60($a2)
    /* 2E5DC 8003DDDC 5C00C48C */  lw         $a0, 0x5C($a2)
    /* 2E5E0 8003DDE0 80100200 */  sll        $v0, $v0, 2
    /* 2E5E4 8003DDE4 21184300 */  addu       $v1, $v0, $v1
    /* 2E5E8 8003DDE8 21104400 */  addu       $v0, $v0, $a0
    /* 2E5EC 8003DDEC 0000658C */  lw         $a1, 0x0($v1)
    /* 2E5F0 8003DDF0 0000428C */  lw         $v0, 0x0($v0)
    /* 2E5F4 8003DDF4 0100A524 */  addiu      $a1, $a1, 0x1
    /* 2E5F8 8003DDF8 2A10A200 */  slt        $v0, $a1, $v0
    /* 2E5FC 8003DDFC 02004014 */  bnez       $v0, .Lfunc_8003DDC8_8003DE08
    /* 2E600 8003DE00 2120C000 */   addu      $a0, $a2, $zero
    /* 2E604 8003DE04 21280000 */  addu       $a1, $zero, $zero
  .Lfunc_8003DDC8_8003DE08:
    /* 2E608 8003DE08 0000828C */  lw         $v0, 0x0($a0)
    /* 2E60C 8003DE0C 00000000 */  nop
    /* 2E610 8003DE10 1C01428C */  lw         $v0, 0x11C($v0)
    /* 2E614 8003DE14 00000000 */  nop
    /* 2E618 8003DE18 09F84000 */  jalr       $v0
    /* 2E61C 8003DE1C 01000634 */   ori       $a2, $zero, 0x1
    /* 2E620 8003DE20 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2E624 8003DE24 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2E628 8003DE28 0800E003 */  jr         $ra
    /* 2E62C 8003DE2C 00000000 */   nop
endlabel func_8003DDC8
