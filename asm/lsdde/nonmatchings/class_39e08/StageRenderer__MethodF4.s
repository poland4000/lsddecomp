.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__MethodF4, 0x144

glabel StageRenderer__MethodF4
    /* 3BDBC 8004B5BC B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 3BDC0 8004B5C0 4000B0AF */  sw         $s0, 0x40($sp)
    /* 3BDC4 8004B5C4 21808000 */  addu       $s0, $a0, $zero
    /* 3BDC8 8004B5C8 4800BFAF */  sw         $ra, 0x48($sp)
    /* 3BDCC 8004B5CC 4400B1AF */  sw         $s1, 0x44($sp)
    /* 3BDD0 8004B5D0 0000028E */  lw         $v0, 0x0($s0)
    /* 3BDD4 8004B5D4 1000A527 */  addiu      $a1, $sp, 0x10
    /* 3BDD8 8004B5D8 0C01428C */  lw         $v0, 0x10C($v0)
    /* 3BDDC 8004B5DC 00000000 */  nop
    /* 3BDE0 8004B5E0 09F84000 */  jalr       $v0
    /* 3BDE4 8004B5E4 21300000 */   addu      $a2, $zero, $zero
    /* 3BDE8 8004B5E8 3F004010 */  beqz       $v0, .Lfunc_8004B5BC_8004B6E8
    /* 3BDEC 8004B5EC 21100000 */   addu      $v0, $zero, $zero
    /* 3BDF0 8004B5F0 3400A28F */  lw         $v0, 0x34($sp)
    /* 3BDF4 8004B5F4 00000000 */  nop
    /* 3BDF8 8004B5F8 0400428C */  lw         $v0, 0x4($v0)
    /* 3BDFC 8004B5FC 6800038E */  lw         $v1, 0x68($s0)
    /* 3BE00 8004B600 32004284 */  lh         $v0, 0x32($v0)
    /* 3BE04 8004B604 0400638C */  lw         $v1, 0x4($v1)
    /* 3BE08 8004B608 0880013C */  lui        $at, %hi(D_800868FC)
    /* 3BE0C 8004B60C FC682124 */  addiu      $at, $at, %lo(D_800868FC)
    /* 3BE10 8004B610 21082200 */  addu       $at, $at, $v0
    /* 3BE14 8004B614 00003180 */  lb         $s1, 0x0($at)
    /* 3BE18 8004B618 0C006014 */  bnez       $v1, .Lfunc_8004B5BC_8004B64C
    /* 3BE1C 8004B61C 21200002 */   addu      $a0, $s0, $zero
    /* 3BE20 8004B620 80181100 */  sll        $v1, $s1, 2
    /* 3BE24 8004B624 3800A58F */  lw         $a1, 0x38($sp)
    /* 3BE28 8004B628 0000028E */  lw         $v0, 0x0($s0)
    /* 3BE2C 8004B62C 0880013C */  lui        $at, %hi(D_80086974)
    /* 3BE30 8004B630 74692124 */  addiu      $at, $at, %lo(D_80086974)
    /* 3BE34 8004B634 21082300 */  addu       $at, $at, $v1
    /* 3BE38 8004B638 0000278C */  lw         $a3, 0x0($at)
    /* 3BE3C 8004B63C F800428C */  lw         $v0, 0xF8($v0)
    /* 3BE40 8004B640 00000000 */  nop
    /* 3BE44 8004B644 09F84000 */  jalr       $v0
    /* 3BE48 8004B648 1C00A627 */   addiu     $a2, $sp, 0x1C
  .Lfunc_8004B5BC_8004B64C:
    /* 3BE4C 8004B64C 0000028E */  lw         $v0, 0x0($s0)
    /* 3BE50 8004B650 00000000 */  nop
    /* 3BE54 8004B654 2801428C */  lw         $v0, 0x128($v0)
    /* 3BE58 8004B658 00000000 */  nop
    /* 3BE5C 8004B65C 09F84000 */  jalr       $v0
    /* 3BE60 8004B660 21200002 */   addu      $a0, $s0, $zero
    /* 3BE64 8004B664 BC000726 */  addiu      $a3, $s0, 0xBC
    /* 3BE68 8004B668 1000A627 */  addiu      $a2, $sp, 0x10
    /* 3BE6C 8004B66C 3000A827 */  addiu      $t0, $sp, 0x30
    /* 3BE70 8004B670 BC000996 */  lhu        $t1, 0xBC($s0)
  .Lfunc_8004B5BC_8004B674:
    /* 3BE74 8004B674 0000C28C */  lw         $v0, 0x0($a2)
    /* 3BE78 8004B678 0400C38C */  lw         $v1, 0x4($a2)
    /* 3BE7C 8004B67C 0800C48C */  lw         $a0, 0x8($a2)
    /* 3BE80 8004B680 0C00C58C */  lw         $a1, 0xC($a2)
    /* 3BE84 8004B684 0000E2AC */  sw         $v0, 0x0($a3)
    /* 3BE88 8004B688 0400E3AC */  sw         $v1, 0x4($a3)
    /* 3BE8C 8004B68C 0800E4AC */  sw         $a0, 0x8($a3)
    /* 3BE90 8004B690 0C00E5AC */  sw         $a1, 0xC($a3)
    /* 3BE94 8004B694 1000C624 */  addiu      $a2, $a2, 0x10
    /* 3BE98 8004B698 F6FFC814 */  bne        $a2, $t0, .Lfunc_8004B5BC_8004B674
    /* 3BE9C 8004B69C 1000E724 */   addiu     $a3, $a3, 0x10
    /* 3BEA0 8004B6A0 0000C28C */  lw         $v0, 0x0($a2)
    /* 3BEA4 8004B6A4 0400C38C */  lw         $v1, 0x4($a2)
    /* 3BEA8 8004B6A8 0800C48C */  lw         $a0, 0x8($a2)
    /* 3BEAC 8004B6AC 0000E2AC */  sw         $v0, 0x0($a3)
    /* 3BEB0 8004B6B0 0400E3AC */  sw         $v1, 0x4($a3)
    /* 3BEB4 8004B6B4 0800E4AC */  sw         $a0, 0x8($a3)
    /* 3BEB8 8004B6B8 00140900 */  sll        $v0, $t1, 16
    /* 3BEBC 8004B6BC 1000A387 */  lh         $v1, 0x10($sp)
    /* 3BEC0 8004B6C0 03140200 */  sra        $v0, $v0, 16
    /* 3BEC4 8004B6C4 07004310 */  beq        $v0, $v1, .Lfunc_8004B5BC_8004B6E4
    /* 3BEC8 8004B6C8 21200002 */   addu      $a0, $s0, $zero
    /* 3BECC 8004B6CC 0000028E */  lw         $v0, 0x0($s0)
    /* 3BED0 8004B6D0 00000000 */  nop
    /* 3BED4 8004B6D4 3000428C */  lw         $v0, 0x30($v0)
    /* 3BED8 8004B6D8 00000000 */  nop
    /* 3BEDC 8004B6DC 09F84000 */  jalr       $v0
    /* 3BEE0 8004B6E0 05000534 */   ori       $a1, $zero, 0x5
  .Lfunc_8004B5BC_8004B6E4:
    /* 3BEE4 8004B6E4 21102002 */  addu       $v0, $s1, $zero
  .Lfunc_8004B5BC_8004B6E8:
    /* 3BEE8 8004B6E8 4800BF8F */  lw         $ra, 0x48($sp)
    /* 3BEEC 8004B6EC 4400B18F */  lw         $s1, 0x44($sp)
    /* 3BEF0 8004B6F0 4000B08F */  lw         $s0, 0x40($sp)
    /* 3BEF4 8004B6F4 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 3BEF8 8004B6F8 0800E003 */  jr         $ra
    /* 3BEFC 8004B6FC 00000000 */   nop
endlabel StageRenderer__MethodF4
