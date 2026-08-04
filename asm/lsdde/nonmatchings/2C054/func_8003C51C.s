.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003C51C, 0x120

glabel func_8003C51C
    /* 2CD1C 8003C51C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2CD20 8003C520 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2CD24 8003C524 21908000 */  addu       $s2, $a0, $zero
    /* 2CD28 8003C528 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2CD2C 8003C52C 2180A000 */  addu       $s0, $a1, $zero
    /* 2CD30 8003C530 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2CD34 8003C534 2000BFAF */  sw         $ra, 0x20($sp)
    /* 2CD38 8003C538 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2CD3C 8003C53C 0000538E */  lw         $s3, 0x0($s2)
    /* 2CD40 8003C540 72F9000C */  jal        Get_vtable_Effect
    /* 2CD44 8003C544 2188C000 */   addu      $s1, $a2, $zero
    /* 2CD48 8003C548 21204002 */  addu       $a0, $s2, $zero
    /* 2CD4C 8003C54C 21280002 */  addu       $a1, $s0, $zero
    /* 2CD50 8003C550 5C00428C */  lw         $v0, 0x5C($v0)
    /* 2CD54 8003C554 00000000 */  nop
    /* 2CD58 8003C558 09F84000 */  jalr       $v0
    /* 2CD5C 8003C55C 21302002 */   addu      $a2, $s1, $zero
    /* 2CD60 8003C560 3C00428E */  lw         $v0, 0x3C($s2)
    /* 2CD64 8003C564 00000000 */  nop
    /* 2CD68 8003C568 0B004010 */  beqz       $v0, .Lfunc_8003C51C_8003C598
    /* 2CD6C 8003C56C 00000000 */   nop
    /* 2CD70 8003C570 1C00438E */  lw         $v1, 0x1C($s2)
    /* 2CD74 8003C574 4000428E */  lw         $v0, 0x40($s2)
    /* 2CD78 8003C578 00000000 */  nop
    /* 2CD7C 8003C57C 2B104300 */  sltu       $v0, $v0, $v1
    /* 2CD80 8003C580 05004010 */  beqz       $v0, .Lfunc_8003C51C_8003C598
    /* 2CD84 8003C584 21204002 */   addu      $a0, $s2, $zero
    /* 2CD88 8003C588 6000628E */  lw         $v0, 0x60($s3)
    /* 2CD8C 8003C58C 00000000 */  nop
    /* 2CD90 8003C590 09F84000 */  jalr       $v0
    /* 2CD94 8003C594 06000534 */   ori       $a1, $zero, 0x6
  .Lfunc_8003C51C_8003C598:
    /* 2CD98 8003C598 2000438E */  lw         $v1, 0x20($s2)
    /* 2CD9C 8003C59C 04000234 */  ori        $v0, $zero, 0x4
    /* 2CDA0 8003C5A0 11006210 */  beq        $v1, $v0, .Lfunc_8003C51C_8003C5E8
    /* 2CDA4 8003C5A4 05006228 */   slti      $v0, $v1, 0x5
    /* 2CDA8 8003C5A8 05004010 */  beqz       $v0, .Lfunc_8003C51C_8003C5C0
    /* 2CDAC 8003C5AC 02000234 */   ori       $v0, $zero, 0x2
    /* 2CDB0 8003C5B0 0A006210 */  beq        $v1, $v0, .Lfunc_8003C51C_8003C5DC
    /* 2CDB4 8003C5B4 21204002 */   addu      $a0, $s2, $zero
    /* 2CDB8 8003C5B8 87F10008 */  j          .Lfunc_8003C51C_8003C61C
    /* 2CDBC 8003C5BC 00000000 */   nop
  .Lfunc_8003C51C_8003C5C0:
    /* 2CDC0 8003C5C0 07000234 */  ori        $v0, $zero, 0x7
    /* 2CDC4 8003C5C4 0B006210 */  beq        $v1, $v0, .Lfunc_8003C51C_8003C5F4
    /* 2CDC8 8003C5C8 08000234 */   ori       $v0, $zero, 0x8
    /* 2CDCC 8003C5CC 0F006210 */  beq        $v1, $v0, .Lfunc_8003C51C_8003C60C
    /* 2CDD0 8003C5D0 21204002 */   addu      $a0, $s2, $zero
    /* 2CDD4 8003C5D4 87F10008 */  j          .Lfunc_8003C51C_8003C61C
    /* 2CDD8 8003C5D8 00000000 */   nop
  .Lfunc_8003C51C_8003C5DC:
    /* 2CDDC 8003C5DC 6000628E */  lw         $v0, 0x60($s3)
    /* 2CDE0 8003C5E0 85F10008 */  j          .Lfunc_8003C51C_8003C614
    /* 2CDE4 8003C5E4 04000534 */   ori       $a1, $zero, 0x4
  .Lfunc_8003C51C_8003C5E8:
    /* 2CDE8 8003C5E8 AC00628E */  lw         $v0, 0xAC($s3)
    /* 2CDEC 8003C5EC 7EF10008 */  j          .Lfunc_8003C51C_8003C5F8
    /* 2CDF0 8003C5F0 00000000 */   nop
  .Lfunc_8003C51C_8003C5F4:
    /* 2CDF4 8003C5F4 C000628E */  lw         $v0, 0xC0($s3)
  .Lfunc_8003C51C_8003C5F8:
    /* 2CDF8 8003C5F8 00000000 */  nop
    /* 2CDFC 8003C5FC 09F84000 */  jalr       $v0
    /* 2CE00 8003C600 21204002 */   addu      $a0, $s2, $zero
    /* 2CE04 8003C604 87F10008 */  j          .Lfunc_8003C51C_8003C61C
    /* 2CE08 8003C608 00000000 */   nop
  .Lfunc_8003C51C_8003C60C:
    /* 2CE0C 8003C60C 6000628E */  lw         $v0, 0x60($s3)
    /* 2CE10 8003C610 03000534 */  ori        $a1, $zero, 0x3
  .Lfunc_8003C51C_8003C614:
    /* 2CE14 8003C614 09F84000 */  jalr       $v0
    /* 2CE18 8003C618 00000000 */   nop
  .Lfunc_8003C51C_8003C61C:
    /* 2CE1C 8003C61C 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2CE20 8003C620 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2CE24 8003C624 1800B28F */  lw         $s2, 0x18($sp)
    /* 2CE28 8003C628 1400B18F */  lw         $s1, 0x14($sp)
    /* 2CE2C 8003C62C 1000B08F */  lw         $s0, 0x10($sp)
    /* 2CE30 8003C630 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2CE34 8003C634 0800E003 */  jr         $ra
    /* 2CE38 8003C638 00000000 */   nop
endlabel func_8003C51C
