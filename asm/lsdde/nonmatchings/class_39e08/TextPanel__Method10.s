.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextPanel__Method10, 0xA4

glabel TextPanel__Method10
    /* 3EC44 8004E444 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3EC48 8004E448 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3EC4C 8004E44C 21888000 */  addu       $s1, $a0, $zero
    /* 3EC50 8004E450 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3EC54 8004E454 2180A000 */  addu       $s0, $a1, $zero
    /* 3EC58 8004E458 1D000012 */  beqz       $s0, .Lfunc_8004E444_8004E4D0
    /* 3EC5C 8004E45C 1800BFAF */   sw        $ra, 0x18($sp)
    /* 3EC60 8004E460 E460000C */  jal        Get_vtable_BasicClass
    /* 3EC64 8004E464 00000000 */   nop
    /* 3EC68 8004E468 21202002 */  addu       $a0, $s1, $zero
    /* 3EC6C 8004E46C 1000428C */  lw         $v0, 0x10($v0)
    /* 3EC70 8004E470 00000000 */  nop
    /* 3EC74 8004E474 09F84000 */  jalr       $v0
    /* 3EC78 8004E478 21280002 */   addu      $a1, $s0, $zero
    /* 3EC7C 8004E47C 0000028E */  lw         $v0, 0x0($s0)
    /* 3EC80 8004E480 00000000 */  nop
    /* 3EC84 8004E484 0000448C */  lw         $a0, 0x0($v0)
    /* 3EC88 8004E488 02000234 */  ori        $v0, $zero, 0x2
    /* 3EC8C 8004E48C 0F008330 */  andi       $v1, $a0, 0xF
    /* 3EC90 8004E490 03006214 */  bne        $v1, $v0, .Lfunc_8004E444_8004E4A0
    /* 3EC94 8004E494 05000234 */   ori       $v0, $zero, 0x5
    /* 3EC98 8004E498 34390108 */  j          .Lfunc_8004E444_8004E4D0
    /* 3EC9C 8004E49C 600030AE */   sw        $s0, 0x60($s1)
  .Lfunc_8004E444_8004E4A0:
    /* 3ECA0 8004E4A0 03006214 */  bne        $v1, $v0, .Lfunc_8004E444_8004E4B0
    /* 3ECA4 8004E4A4 FF008330 */   andi      $v1, $a0, 0xFF
    /* 3ECA8 8004E4A8 34390108 */  j          .Lfunc_8004E444_8004E4D0
    /* 3ECAC 8004E4AC 640030AE */   sw        $s0, 0x64($s1)
  .Lfunc_8004E444_8004E4B0:
    /* 3ECB0 8004E4B0 10000234 */  ori        $v0, $zero, 0x10
    /* 3ECB4 8004E4B4 03006214 */  bne        $v1, $v0, .Lfunc_8004E444_8004E4C4
    /* 3ECB8 8004E4B8 20000234 */   ori       $v0, $zero, 0x20
    /* 3ECBC 8004E4BC 34390108 */  j          .Lfunc_8004E444_8004E4D0
    /* 3ECC0 8004E4C0 780030AE */   sw        $s0, 0x78($s1)
  .Lfunc_8004E444_8004E4C4:
    /* 3ECC4 8004E4C4 02006214 */  bne        $v1, $v0, .Lfunc_8004E444_8004E4D0
    /* 3ECC8 8004E4C8 00000000 */   nop
    /* 3ECCC 8004E4CC 7C0030AE */  sw         $s0, 0x7C($s1)
  .Lfunc_8004E444_8004E4D0:
    /* 3ECD0 8004E4D0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3ECD4 8004E4D4 1400B18F */  lw         $s1, 0x14($sp)
    /* 3ECD8 8004E4D8 1000B08F */  lw         $s0, 0x10($sp)
    /* 3ECDC 8004E4DC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3ECE0 8004E4E0 0800E003 */  jr         $ra
    /* 3ECE4 8004E4E4 00000000 */   nop
endlabel TextPanel__Method10
