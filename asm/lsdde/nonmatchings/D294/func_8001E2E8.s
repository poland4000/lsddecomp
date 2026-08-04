.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001E2E8, 0x1B4

glabel func_8001E2E8
    /* EAE8 8001E2E8 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* EAEC 8001E2EC 21488000 */  addu       $t1, $a0, $zero
    /* EAF0 8001E2F0 2150A000 */  addu       $t2, $a1, $zero
  .Lfunc_8001E2E8_8001E2F4:
    /* EAF4 8001E2F4 0000C284 */  lh         $v0, 0x0($a2)
    /* EAF8 8001E2F8 0000E384 */  lh         $v1, 0x0($a3)
    /* EAFC 8001E2FC 00000000 */  nop
    /* EB00 8001E300 21104300 */  addu       $v0, $v0, $v1
    /* EB04 8001E304 43100200 */  sra        $v0, $v0, 1
    /* EB08 8001E308 000022A5 */  sh         $v0, 0x0($t1)
    /* EB0C 8001E30C 0200C284 */  lh         $v0, 0x2($a2)
    /* EB10 8001E310 0200E384 */  lh         $v1, 0x2($a3)
    /* EB14 8001E314 00000000 */  nop
    /* EB18 8001E318 21104300 */  addu       $v0, $v0, $v1
    /* EB1C 8001E31C 43100200 */  sra        $v0, $v0, 1
    /* EB20 8001E320 020022A5 */  sh         $v0, 0x2($t1)
    /* EB24 8001E324 0400C284 */  lh         $v0, 0x4($a2)
    /* EB28 8001E328 0400E384 */  lh         $v1, 0x4($a3)
    /* EB2C 8001E32C 00000000 */  nop
    /* EB30 8001E330 21104300 */  addu       $v0, $v0, $v1
    /* EB34 8001E334 00002385 */  lh         $v1, 0x0($t1)
    /* EB38 8001E338 43200200 */  sra        $a0, $v0, 1
    /* EB3C 8001E33C 040024A5 */  sh         $a0, 0x4($t1)
    /* EB40 8001E340 0000C284 */  lh         $v0, 0x0($a2)
    /* EB44 8001E344 00000000 */  nop
    /* EB48 8001E348 0A006214 */  bne        $v1, $v0, .Lfunc_8001E2E8_8001E374
    /* EB4C 8001E34C 00000000 */   nop
    /* EB50 8001E350 02002385 */  lh         $v1, 0x2($t1)
    /* EB54 8001E354 0200C284 */  lh         $v0, 0x2($a2)
    /* EB58 8001E358 00000000 */  nop
    /* EB5C 8001E35C 05006214 */  bne        $v1, $v0, .Lfunc_8001E2E8_8001E374
    /* EB60 8001E360 00000000 */   nop
    /* EB64 8001E364 0400C284 */  lh         $v0, 0x4($a2)
    /* EB68 8001E368 00000000 */  nop
    /* EB6C 8001E36C 48008210 */  beq        $a0, $v0, .Lfunc_8001E2E8_8001E490
    /* EB70 8001E370 00000000 */   nop
  .Lfunc_8001E2E8_8001E374:
    /* EB74 8001E374 00002385 */  lh         $v1, 0x0($t1)
    /* EB78 8001E378 0000E284 */  lh         $v0, 0x0($a3)
    /* EB7C 8001E37C 00000000 */  nop
    /* EB80 8001E380 0B006214 */  bne        $v1, $v0, .Lfunc_8001E2E8_8001E3B0
    /* EB84 8001E384 00000000 */   nop
    /* EB88 8001E388 02002385 */  lh         $v1, 0x2($t1)
    /* EB8C 8001E38C 0200E284 */  lh         $v0, 0x2($a3)
    /* EB90 8001E390 00000000 */  nop
    /* EB94 8001E394 06006214 */  bne        $v1, $v0, .Lfunc_8001E2E8_8001E3B0
    /* EB98 8001E398 00000000 */   nop
    /* EB9C 8001E39C 04002385 */  lh         $v1, 0x4($t1)
    /* EBA0 8001E3A0 0400E284 */  lh         $v0, 0x4($a3)
    /* EBA4 8001E3A4 00000000 */  nop
    /* EBA8 8001E3A8 39006210 */  beq        $v1, $v0, .Lfunc_8001E2E8_8001E490
    /* EBAC 8001E3AC 00000000 */   nop
  .Lfunc_8001E2E8_8001E3B0:
    /* EBB0 8001E3B0 06004285 */  lh         $v0, 0x6($t2)
    /* EBB4 8001E3B4 00002485 */  lh         $a0, 0x0($t1)
    /* EBB8 8001E3B8 00000000 */  nop
    /* EBBC 8001E3BC 2A104400 */  slt        $v0, $v0, $a0
    /* EBC0 8001E3C0 03004010 */  beqz       $v0, .Lfunc_8001E2E8_8001E3D0
    /* EBC4 8001E3C4 21180000 */   addu      $v1, $zero, $zero
    /* EBC8 8001E3C8 FA780008 */  j          .Lfunc_8001E2E8_8001E3E8
    /* EBCC 8001E3CC 08000334 */   ori       $v1, $zero, 0x8
  .Lfunc_8001E2E8_8001E3D0:
    /* EBD0 8001E3D0 00004285 */  lh         $v0, 0x0($t2)
    /* EBD4 8001E3D4 00000000 */  nop
    /* EBD8 8001E3D8 2A108200 */  slt        $v0, $a0, $v0
    /* EBDC 8001E3DC 02004010 */  beqz       $v0, .Lfunc_8001E2E8_8001E3E8
    /* EBE0 8001E3E0 00000000 */   nop
    /* EBE4 8001E3E4 04000334 */  ori        $v1, $zero, 0x4
  .Lfunc_8001E2E8_8001E3E8:
    /* EBE8 8001E3E8 08004285 */  lh         $v0, 0x8($t2)
    /* EBEC 8001E3EC 02002485 */  lh         $a0, 0x2($t1)
    /* EBF0 8001E3F0 00000000 */  nop
    /* EBF4 8001E3F4 2A104400 */  slt        $v0, $v0, $a0
    /* EBF8 8001E3F8 03004010 */  beqz       $v0, .Lfunc_8001E2E8_8001E408
    /* EBFC 8001E3FC 00000000 */   nop
    /* EC00 8001E400 08790008 */  j          .Lfunc_8001E2E8_8001E420
    /* EC04 8001E404 02006334 */   ori       $v1, $v1, 0x2
  .Lfunc_8001E2E8_8001E408:
    /* EC08 8001E408 02004285 */  lh         $v0, 0x2($t2)
    /* EC0C 8001E40C 00000000 */  nop
    /* EC10 8001E410 2A108200 */  slt        $v0, $a0, $v0
    /* EC14 8001E414 02004010 */  beqz       $v0, .Lfunc_8001E2E8_8001E420
    /* EC18 8001E418 00000000 */   nop
    /* EC1C 8001E41C 01006334 */  ori        $v1, $v1, 0x1
  .Lfunc_8001E2E8_8001E420:
    /* EC20 8001E420 0A004285 */  lh         $v0, 0xA($t2)
    /* EC24 8001E424 04002485 */  lh         $a0, 0x4($t1)
    /* EC28 8001E428 00000000 */  nop
    /* EC2C 8001E42C 2A104400 */  slt        $v0, $v0, $a0
    /* EC30 8001E430 03004010 */  beqz       $v0, .Lfunc_8001E2E8_8001E440
    /* EC34 8001E434 00000000 */   nop
    /* EC38 8001E438 16790008 */  j          .Lfunc_8001E2E8_8001E458
    /* EC3C 8001E43C 20006334 */   ori       $v1, $v1, 0x20
  .Lfunc_8001E2E8_8001E440:
    /* EC40 8001E440 04004285 */  lh         $v0, 0x4($t2)
    /* EC44 8001E444 00000000 */  nop
    /* EC48 8001E448 2A108200 */  slt        $v0, $a0, $v0
    /* EC4C 8001E44C 03004010 */  beqz       $v0, .Lfunc_8001E2E8_8001E45C
    /* EC50 8001E450 FF006230 */   andi      $v0, $v1, 0xFF
    /* EC54 8001E454 10006334 */  ori        $v1, $v1, 0x10
  .Lfunc_8001E2E8_8001E458:
    /* EC58 8001E458 FF006230 */  andi       $v0, $v1, 0xFF
  .Lfunc_8001E2E8_8001E45C:
    /* EC5C 8001E45C 03004010 */  beqz       $v0, .Lfunc_8001E2E8_8001E46C
    /* EC60 8001E460 0800A827 */   addiu     $t0, $sp, 0x8
    /* EC64 8001E464 1D790008 */  j          .Lfunc_8001E2E8_8001E474
    /* EC68 8001E468 21380001 */   addu      $a3, $t0, $zero
  .Lfunc_8001E2E8_8001E46C:
    /* EC6C 8001E46C 2140A003 */  addu       $t0, $sp, $zero
    /* EC70 8001E470 2130A003 */  addu       $a2, $sp, $zero
  .Lfunc_8001E2E8_8001E474:
    /* EC74 8001E474 03002289 */  lwl        $v0, 0x3($t1)
    /* EC78 8001E478 00002299 */  lwr        $v0, 0x0($t1)
    /* EC7C 8001E47C 04002385 */  lh         $v1, 0x4($t1)
    /* EC80 8001E480 030002A9 */  swl        $v0, 0x3($t0)
    /* EC84 8001E484 000002B9 */  swr        $v0, 0x0($t0)
    /* EC88 8001E488 BD780008 */  j          .Lfunc_8001E2E8_8001E2F4
    /* EC8C 8001E48C 040003A5 */   sh        $v1, 0x4($t0)
  .Lfunc_8001E2E8_8001E490:
    /* EC90 8001E490 1000BD27 */  addiu      $sp, $sp, 0x10
    /* EC94 8001E494 0800E003 */  jr         $ra
    /* EC98 8001E498 00000000 */   nop
endlabel func_8001E2E8
