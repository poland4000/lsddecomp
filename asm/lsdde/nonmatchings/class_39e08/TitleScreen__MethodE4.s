.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TitleScreen__MethodE4, 0x138

glabel TitleScreen__MethodE4
    /* 3E4D0 8004DCD0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3E4D4 8004DCD4 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3E4D8 8004DCD8 21908000 */  addu       $s2, $a0, $zero
    /* 3E4DC 8004DCDC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3E4E0 8004DCE0 2180A000 */  addu       $s0, $a1, $zero
    /* 3E4E4 8004DCE4 2400BFAF */  sw         $ra, 0x24($sp)
    /* 3E4E8 8004DCE8 EFF7000C */  jal        Get_vtable_AnimEffect
    /* 3E4EC 8004DCEC 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 3E4F0 8004DCF0 21204002 */  addu       $a0, $s2, $zero
    /* 3E4F4 8004DCF4 E400428C */  lw         $v0, 0xE4($v0)
    /* 3E4F8 8004DCF8 00000000 */  nop
    /* 3E4FC 8004DCFC 09F84000 */  jalr       $v0
    /* 3E500 8004DD00 21280002 */   addu      $a1, $s0, $zero
    /* 3E504 8004DD04 3C00428E */  lw         $v0, 0x3C($s2)
    /* 3E508 8004DD08 00000000 */  nop
    /* 3E50C 8004DD0C 08004010 */  beqz       $v0, .Lfunc_8004DCD0_8004DD30
    /* 3E510 8004DD10 1000B127 */   addiu     $s1, $sp, 0x10
    /* 3E514 8004DD14 20028393 */  lbu        $v1, %gp_rel(D_8008AA28)($gp)
    /* 3E518 8004DD18 80000234 */  ori        $v0, $zero, 0x80
    /* 3E51C 8004DD1C 1000A0A3 */  sb         $zero, 0x10($sp)
    /* 3E520 8004DD20 1100A0A3 */  sb         $zero, 0x11($sp)
    /* 3E524 8004DD24 1200A0A3 */  sb         $zero, 0x12($sp)
    /* 3E528 8004DD28 61370108 */  j          .Lfunc_8004DCD0_8004DD84
    /* 3E52C 8004DD2C 21182302 */   addu      $v1, $s1, $v1
  .Lfunc_8004DCD0_8004DD30:
    /* 3E530 8004DD30 2402828F */  lw         $v0, %gp_rel(D_8008AA2C)($gp)
    /* 3E534 8004DD34 00000382 */  lb         $v1, 0x0($s0)
    /* 3E538 8004DD38 01000482 */  lb         $a0, 0x1($s0)
    /* 3E53C 8004DD3C 02000582 */  lb         $a1, 0x2($s0)
    /* 3E540 8004DD40 1000A3A3 */  sb         $v1, 0x10($sp)
    /* 3E544 8004DD44 1100A4A3 */  sb         $a0, 0x11($sp)
    /* 3E548 8004DD48 1200A5A3 */  sb         $a1, 0x12($sp)
    /* 3E54C 8004DD4C 80004228 */  slti       $v0, $v0, 0x80
    /* 3E550 8004DD50 06004010 */  beqz       $v0, .Lfunc_8004DCD0_8004DD6C
    /* 3E554 8004DD54 00000000 */   nop
    /* 3E558 8004DD58 1000A293 */  lbu        $v0, 0x10($sp)
    /* 3E55C 8004DD5C 00000000 */  nop
    /* 3E560 8004DD60 80004224 */  addiu      $v0, $v0, 0x80
    /* 3E564 8004DD64 62370108 */  j          .Lfunc_8004DCD0_8004DD88
    /* 3E568 8004DD68 1000A2A3 */   sb        $v0, 0x10($sp)
  .Lfunc_8004DCD0_8004DD6C:
    /* 3E56C 8004DD6C 20028393 */  lbu        $v1, %gp_rel(D_8008AA28)($gp)
    /* 3E570 8004DD70 00000000 */  nop
    /* 3E574 8004DD74 21182302 */  addu       $v1, $s1, $v1
    /* 3E578 8004DD78 00006290 */  lbu        $v0, 0x0($v1)
    /* 3E57C 8004DD7C 00000000 */  nop
    /* 3E580 8004DD80 80004224 */  addiu      $v0, $v0, 0x80
  .Lfunc_8004DCD0_8004DD84:
    /* 3E584 8004DD84 000062A0 */  sb         $v0, 0x0($v1)
  .Lfunc_8004DCD0_8004DD88:
    /* 3E588 8004DD88 20028293 */  lbu        $v0, %gp_rel(D_8008AA28)($gp)
    /* 3E58C 8004DD8C 00000000 */  nop
    /* 3E590 8004DD90 01004224 */  addiu      $v0, $v0, 0x1
    /* 3E594 8004DD94 200282A3 */  sb         $v0, %gp_rel(D_8008AA28)($gp)
    /* 3E598 8004DD98 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3E59C 8004DD9C 0300422C */  sltiu      $v0, $v0, 0x3
    /* 3E5A0 8004DDA0 02004014 */  bnez       $v0, .Lfunc_8004DCD0_8004DDAC
    /* 3E5A4 8004DDA4 00000000 */   nop
    /* 3E5A8 8004DDA8 200280A3 */  sb         $zero, %gp_rel(D_8008AA28)($gp)
  .Lfunc_8004DCD0_8004DDAC:
    /* 3E5AC 8004DDAC 2402828F */  lw         $v0, %gp_rel(D_8008AA2C)($gp)
    /* 3E5B0 8004DDB0 00000000 */  nop
    /* 3E5B4 8004DDB4 01004224 */  addiu      $v0, $v0, 0x1
    /* 3E5B8 8004DDB8 240282AF */  sw         $v0, %gp_rel(D_8008AA2C)($gp)
    /* 3E5BC 8004DDBC 01014228 */  slti       $v0, $v0, 0x101
    /* 3E5C0 8004DDC0 02004014 */  bnez       $v0, .Lfunc_8004DCD0_8004DDCC
    /* 3E5C4 8004DDC4 00000000 */   nop
    /* 3E5C8 8004DDC8 240280AF */  sw         $zero, %gp_rel(D_8008AA2C)($gp)
  .Lfunc_8004DCD0_8004DDCC:
    /* 3E5CC 8004DDCC B000448E */  lw         $a0, 0xB0($s2)
    /* 3E5D0 8004DDD0 00000000 */  nop
    /* 3E5D4 8004DDD4 0000828C */  lw         $v0, 0x0($a0)
    /* 3E5D8 8004DDD8 00000000 */  nop
    /* 3E5DC 8004DDDC B800428C */  lw         $v0, 0xB8($v0)
    /* 3E5E0 8004DDE0 00000000 */  nop
    /* 3E5E4 8004DDE4 09F84000 */  jalr       $v0
    /* 3E5E8 8004DDE8 1000A527 */   addiu     $a1, $sp, 0x10
    /* 3E5EC 8004DDEC 2400BF8F */  lw         $ra, 0x24($sp)
    /* 3E5F0 8004DDF0 2000B28F */  lw         $s2, 0x20($sp)
    /* 3E5F4 8004DDF4 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3E5F8 8004DDF8 1800B08F */  lw         $s0, 0x18($sp)
    /* 3E5FC 8004DDFC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3E600 8004DE00 0800E003 */  jr         $ra
    /* 3E604 8004DE04 00000000 */   nop
endlabel TitleScreen__MethodE4
