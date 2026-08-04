.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching ListMenu__MethodA8, 0xB4

glabel ListMenu__MethodA8
    /* 42198 80051998 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4219C 8005199C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 421A0 800519A0 21808000 */  addu       $s0, $a0, $zero
    /* 421A4 800519A4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 421A8 800519A8 2188A000 */  addu       $s1, $a1, $zero
    /* 421AC 800519AC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 421B0 800519B0 2190C000 */  addu       $s2, $a2, $zero
    /* 421B4 800519B4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 421B8 800519B8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 421BC 800519BC 4800028E */  lw         $v0, 0x48($s0)
    /* 421C0 800519C0 00000000 */  nop
    /* 421C4 800519C4 19004010 */  beqz       $v0, .Lfunc_80051998_80051A2C
    /* 421C8 800519C8 2198E000 */   addu      $s3, $a3, $zero
    /* 421CC 800519CC DC02828F */  lw         $v0, %gp_rel(D_8008AAE4)($gp)
    /* 421D0 800519D0 2800038E */  lw         $v1, 0x28($s0)
    /* 421D4 800519D4 21105200 */  addu       $v0, $v0, $s2
    /* 421D8 800519D8 00004290 */  lbu        $v0, 0x0($v0)
    /* 421DC 800519DC 21187100 */  addu       $v1, $v1, $s1
    /* 421E0 800519E0 000062A0 */  sb         $v0, 0x0($v1)
    /* 421E4 800519E4 DC02828F */  lw         $v0, %gp_rel(D_8008AAE4)($gp)
    /* 421E8 800519E8 4400048E */  lw         $a0, 0x44($s0)
    /* 421EC 800519EC 21105200 */  addu       $v0, $v0, $s2
    /* 421F0 800519F0 0000838C */  lw         $v1, 0x0($a0)
    /* 421F4 800519F4 00004590 */  lbu        $a1, 0x0($v0)
    /* 421F8 800519F8 C400628C */  lw         $v0, 0xC4($v1)
    /* 421FC 800519FC 00000000 */  nop
    /* 42200 80051A00 09F84000 */  jalr       $v0
    /* 42204 80051A04 21302002 */   addu      $a2, $s1, $zero
    /* 42208 80051A08 180011AE */  sw         $s1, 0x18($s0)
    /* 4220C 80051A0C 07006012 */  beqz       $s3, .Lfunc_80051998_80051A2C
    /* 42210 80051A10 1C0012AE */   sw        $s2, 0x1C($s0)
    /* 42214 80051A14 0000028E */  lw         $v0, 0x0($s0)
    /* 42218 80051A18 21200002 */  addu       $a0, $s0, $zero
    /* 4221C 80051A1C 6000428C */  lw         $v0, 0x60($v0)
    /* 42220 80051A20 00000000 */  nop
    /* 42224 80051A24 09F84000 */  jalr       $v0
    /* 42228 80051A28 21280000 */   addu      $a1, $zero, $zero
  .Lfunc_80051998_80051A2C:
    /* 4222C 80051A2C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 42230 80051A30 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 42234 80051A34 1800B28F */  lw         $s2, 0x18($sp)
    /* 42238 80051A38 1400B18F */  lw         $s1, 0x14($sp)
    /* 4223C 80051A3C 1000B08F */  lw         $s0, 0x10($sp)
    /* 42240 80051A40 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 42244 80051A44 0800E003 */  jr         $ra
    /* 42248 80051A48 00000000 */   nop
endlabel ListMenu__MethodA8
