.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001DA28, 0x3CC

glabel func_8001DA28
    /* E228 8001DA28 08FFBD27 */  addiu      $sp, $sp, -0xF8
    /* E22C 8001DA2C F000B0AF */  sw         $s0, 0xF0($sp)
    /* E230 8001DA30 21808000 */  addu       $s0, $a0, $zero
    /* E234 8001DA34 2138A000 */  addu       $a3, $a1, $zero
    /* E238 8001DA38 0400EC24 */  addiu      $t4, $a3, 0x4
    /* E23C 8001DA3C F400BFAF */  sw         $ra, 0xF4($sp)
    /* E240 8001DA40 0400E294 */  lhu        $v0, 0x4($a3)
    /* E244 8001DA44 0000C394 */  lhu        $v1, 0x0($a2)
    /* E248 8001DA48 00000000 */  nop
    /* E24C 8001DA4C 21104300 */  addu       $v0, $v0, $v1
    /* E250 8001DA50 0400E2A4 */  sh         $v0, 0x4($a3)
    /* E254 8001DA54 0600E294 */  lhu        $v0, 0x6($a3)
    /* E258 8001DA58 0200C394 */  lhu        $v1, 0x2($a2)
    /* E25C 8001DA5C 0000E48C */  lw         $a0, 0x0($a3)
    /* E260 8001DA60 21104300 */  addu       $v0, $v0, $v1
    /* E264 8001DA64 0600E2A4 */  sh         $v0, 0x6($a3)
    /* E268 8001DA68 40100400 */  sll        $v0, $a0, 1
    /* E26C 8001DA6C 21104400 */  addu       $v0, $v0, $a0
    /* E270 8001DA70 00110200 */  sll        $v0, $v0, 4
    /* E274 8001DA74 21688201 */  addu       $t5, $t4, $v0
    /* E278 8001DA78 0800E294 */  lhu        $v0, 0x8($a3)
    /* E27C 8001DA7C 0400C394 */  lhu        $v1, 0x4($a2)
    /* E280 8001DA80 0A00EC24 */  addiu      $t4, $a3, 0xA
    /* E284 8001DA84 21104300 */  addu       $v0, $v0, $v1
    /* E288 8001DA88 0800E2A4 */  sh         $v0, 0x8($a3)
    /* E28C 8001DA8C 0700E288 */  lwl        $v0, 0x7($a3)
    /* E290 8001DA90 0400E298 */  lwr        $v0, 0x4($a3)
    /* E294 8001DA94 0800E384 */  lh         $v1, 0x8($a3)
    /* E298 8001DA98 1300A2AB */  swl        $v0, 0x13($sp)
    /* E29C 8001DA9C 1000A2BB */  swr        $v0, 0x10($sp)
    /* E2A0 8001DAA0 1400A3A7 */  sh         $v1, 0x14($sp)
    /* E2A4 8001DAA4 0700E288 */  lwl        $v0, 0x7($a3)
    /* E2A8 8001DAA8 0400E298 */  lwr        $v0, 0x4($a3)
    /* E2AC 8001DAAC 0800E384 */  lh         $v1, 0x8($a3)
    /* E2B0 8001DAB0 1900A2AB */  swl        $v0, 0x19($sp)
    /* E2B4 8001DAB4 1600A2BB */  swr        $v0, 0x16($sp)
    /* E2B8 8001DAB8 1A00A3A7 */  sh         $v1, 0x1A($sp)
    /* E2BC 8001DABC 2B108D01 */  sltu       $v0, $t4, $t5
    /* E2C0 8001DAC0 4B004010 */  beqz       $v0, .Lfunc_8001DA28_8001DBF0
    /* E2C4 8001DAC4 1000AB27 */   addiu     $t3, $sp, 0x10
    /* E2C8 8001DAC8 0E00E424 */  addiu      $a0, $a3, 0xE
  .Lfunc_8001DA28_8001DACC:
    /* E2CC 8001DACC 00008295 */  lhu        $v0, 0x0($t4)
    /* E2D0 8001DAD0 0000C394 */  lhu        $v1, 0x0($a2)
    /* E2D4 8001DAD4 00000000 */  nop
    /* E2D8 8001DAD8 21104300 */  addu       $v0, $v0, $v1
    /* E2DC 8001DADC 000082A5 */  sh         $v0, 0x0($t4)
    /* E2E0 8001DAE0 FEFF8294 */  lhu        $v0, -0x2($a0)
    /* E2E4 8001DAE4 0200C394 */  lhu        $v1, 0x2($a2)
    /* E2E8 8001DAE8 00000000 */  nop
    /* E2EC 8001DAEC 21104300 */  addu       $v0, $v0, $v1
    /* E2F0 8001DAF0 FEFF82A4 */  sh         $v0, -0x2($a0)
    /* E2F4 8001DAF4 00008294 */  lhu        $v0, 0x0($a0)
    /* E2F8 8001DAF8 0400C394 */  lhu        $v1, 0x4($a2)
    /* E2FC 8001DAFC 00000000 */  nop
    /* E300 8001DB00 21104300 */  addu       $v0, $v0, $v1
    /* E304 8001DB04 000082A4 */  sh         $v0, 0x0($a0)
    /* E308 8001DB08 00006895 */  lhu        $t0, 0x0($t3)
    /* E30C 8001DB0C 00008285 */  lh         $v0, 0x0($t4)
    /* E310 8001DB10 00006385 */  lh         $v1, 0x0($t3)
    /* E314 8001DB14 21384000 */  addu       $a3, $v0, $zero
    /* E318 8001DB18 2A104300 */  slt        $v0, $v0, $v1
    /* E31C 8001DB1C 02004010 */  beqz       $v0, .Lfunc_8001DA28_8001DB28
    /* E320 8001DB20 00000000 */   nop
    /* E324 8001DB24 2140E000 */  addu       $t0, $a3, $zero
  .Lfunc_8001DA28_8001DB28:
    /* E328 8001DB28 02006995 */  lhu        $t1, 0x2($t3)
    /* E32C 8001DB2C 000068A5 */  sh         $t0, 0x0($t3)
    /* E330 8001DB30 FEFF8284 */  lh         $v0, -0x2($a0)
    /* E334 8001DB34 02006385 */  lh         $v1, 0x2($t3)
    /* E338 8001DB38 21384000 */  addu       $a3, $v0, $zero
    /* E33C 8001DB3C 2A104300 */  slt        $v0, $v0, $v1
    /* E340 8001DB40 02004010 */  beqz       $v0, .Lfunc_8001DA28_8001DB4C
    /* E344 8001DB44 00000000 */   nop
    /* E348 8001DB48 2148E000 */  addu       $t1, $a3, $zero
  .Lfunc_8001DA28_8001DB4C:
    /* E34C 8001DB4C 04006895 */  lhu        $t0, 0x4($t3)
    /* E350 8001DB50 020069A5 */  sh         $t1, 0x2($t3)
    /* E354 8001DB54 00008284 */  lh         $v0, 0x0($a0)
    /* E358 8001DB58 04006385 */  lh         $v1, 0x4($t3)
    /* E35C 8001DB5C 21384000 */  addu       $a3, $v0, $zero
    /* E360 8001DB60 2A104300 */  slt        $v0, $v0, $v1
    /* E364 8001DB64 02004010 */  beqz       $v0, .Lfunc_8001DA28_8001DB70
    /* E368 8001DB68 00000000 */   nop
    /* E36C 8001DB6C 2140E000 */  addu       $t0, $a3, $zero
  .Lfunc_8001DA28_8001DB70:
    /* E370 8001DB70 06006995 */  lhu        $t1, 0x6($t3)
    /* E374 8001DB74 040068A5 */  sh         $t0, 0x4($t3)
    /* E378 8001DB78 00008385 */  lh         $v1, 0x0($t4)
    /* E37C 8001DB7C 06006285 */  lh         $v0, 0x6($t3)
    /* E380 8001DB80 00000000 */  nop
    /* E384 8001DB84 2A104300 */  slt        $v0, $v0, $v1
    /* E388 8001DB88 02004010 */  beqz       $v0, .Lfunc_8001DA28_8001DB94
    /* E38C 8001DB8C 21386000 */   addu      $a3, $v1, $zero
    /* E390 8001DB90 2148E000 */  addu       $t1, $a3, $zero
  .Lfunc_8001DA28_8001DB94:
    /* E394 8001DB94 08006A95 */  lhu        $t2, 0x8($t3)
    /* E398 8001DB98 060069A5 */  sh         $t1, 0x6($t3)
    /* E39C 8001DB9C FEFF8384 */  lh         $v1, -0x2($a0)
    /* E3A0 8001DBA0 08006285 */  lh         $v0, 0x8($t3)
    /* E3A4 8001DBA4 00000000 */  nop
    /* E3A8 8001DBA8 2A104300 */  slt        $v0, $v0, $v1
    /* E3AC 8001DBAC 02004010 */  beqz       $v0, .Lfunc_8001DA28_8001DBB8
    /* E3B0 8001DBB0 21386000 */   addu      $a3, $v1, $zero
    /* E3B4 8001DBB4 2150E000 */  addu       $t2, $a3, $zero
  .Lfunc_8001DA28_8001DBB8:
    /* E3B8 8001DBB8 0A006895 */  lhu        $t0, 0xA($t3)
    /* E3BC 8001DBBC 08006AA5 */  sh         $t2, 0x8($t3)
    /* E3C0 8001DBC0 00008384 */  lh         $v1, 0x0($a0)
    /* E3C4 8001DBC4 0A006285 */  lh         $v0, 0xA($t3)
    /* E3C8 8001DBC8 00000000 */  nop
    /* E3CC 8001DBCC 2A104300 */  slt        $v0, $v0, $v1
    /* E3D0 8001DBD0 02004010 */  beqz       $v0, .Lfunc_8001DA28_8001DBDC
    /* E3D4 8001DBD4 21386000 */   addu      $a3, $v1, $zero
    /* E3D8 8001DBD8 2140E000 */  addu       $t0, $a3, $zero
  .Lfunc_8001DA28_8001DBDC:
    /* E3DC 8001DBDC 0A0068A5 */  sh         $t0, 0xA($t3)
    /* E3E0 8001DBE0 06008C25 */  addiu      $t4, $t4, 0x6
    /* E3E4 8001DBE4 2B108D01 */  sltu       $v0, $t4, $t5
    /* E3E8 8001DBE8 B8FF4014 */  bnez       $v0, .Lfunc_8001DA28_8001DACC
    /* E3EC 8001DBEC 06008424 */   addiu     $a0, $a0, 0x6
  .Lfunc_8001DA28_8001DBF0:
    /* E3F0 8001DBF0 2000048E */  lw         $a0, 0x20($s0)
    /* E3F4 8001DBF4 397D000C */  jal        func_8001F4E4
    /* E3F8 8001DBF8 00000000 */   nop
    /* E3FC 8001DBFC 2000048E */  lw         $a0, 0x20($s0)
    /* E400 8001DC00 437D000C */  jal        func_8001F50C
    /* E404 8001DC04 21280000 */   addu      $a1, $zero, $zero
    /* E408 8001DC08 2000048E */  lw         $a0, 0x20($s0)
    /* E40C 8001DC0C E97C000C */  jal        func_8001F3A4
    /* E410 8001DC10 21804000 */   addu      $s0, $v0, $zero
    /* E414 8001DC14 0300038A */  lwl        $v1, 0x3($s0)
    /* E418 8001DC18 0000039A */  lwr        $v1, 0x0($s0)
    /* E41C 8001DC1C 0700048A */  lwl        $a0, 0x7($s0)
    /* E420 8001DC20 0400049A */  lwr        $a0, 0x4($s0)
    /* E424 8001DC24 0B00058A */  lwl        $a1, 0xB($s0)
    /* E428 8001DC28 0800059A */  lwr        $a1, 0x8($s0)
    /* E42C 8001DC2C 2300A3AB */  swl        $v1, 0x23($sp)
    /* E430 8001DC30 2000A3BB */  swr        $v1, 0x20($sp)
    /* E434 8001DC34 2700A4AB */  swl        $a0, 0x27($sp)
    /* E438 8001DC38 2400A4BB */  swr        $a0, 0x24($sp)
    /* E43C 8001DC3C 2B00A5AB */  swl        $a1, 0x2B($sp)
    /* E440 8001DC40 2800A5BB */  swr        $a1, 0x28($sp)
    /* E444 8001DC44 40180200 */  sll        $v1, $v0, 1
    /* E448 8001DC48 21186200 */  addu       $v1, $v1, $v0
    /* E44C 8001DC4C 80180300 */  sll        $v1, $v1, 2
    /* E450 8001DC50 21480302 */  addu       $t1, $s0, $v1
    /* E454 8001DC54 0C001026 */  addiu      $s0, $s0, 0xC
    /* E458 8001DC58 2B100902 */  sltu       $v0, $s0, $t1
    /* E45C 8001DC5C 3C004010 */  beqz       $v0, .Lfunc_8001DA28_8001DD50
    /* E460 8001DC60 00000000 */   nop
    /* E464 8001DC64 0A000826 */  addiu      $t0, $s0, 0xA
  .Lfunc_8001DA28_8001DC68:
    /* E468 8001DC68 2000A597 */  lhu        $a1, 0x20($sp)
    /* E46C 8001DC6C 00000286 */  lh         $v0, 0x0($s0)
    /* E470 8001DC70 2000A387 */  lh         $v1, 0x20($sp)
    /* E474 8001DC74 21204000 */  addu       $a0, $v0, $zero
    /* E478 8001DC78 2A104300 */  slt        $v0, $v0, $v1
    /* E47C 8001DC7C 02004010 */  beqz       $v0, .Lfunc_8001DA28_8001DC88
    /* E480 8001DC80 00000000 */   nop
    /* E484 8001DC84 21288000 */  addu       $a1, $a0, $zero
  .Lfunc_8001DA28_8001DC88:
    /* E488 8001DC88 2200A697 */  lhu        $a2, 0x22($sp)
    /* E48C 8001DC8C 2000A5A7 */  sh         $a1, 0x20($sp)
    /* E490 8001DC90 F8FF0285 */  lh         $v0, -0x8($t0)
    /* E494 8001DC94 2200A387 */  lh         $v1, 0x22($sp)
    /* E498 8001DC98 21204000 */  addu       $a0, $v0, $zero
    /* E49C 8001DC9C 2A104300 */  slt        $v0, $v0, $v1
    /* E4A0 8001DCA0 02004010 */  beqz       $v0, .Lfunc_8001DA28_8001DCAC
    /* E4A4 8001DCA4 00000000 */   nop
    /* E4A8 8001DCA8 21308000 */  addu       $a2, $a0, $zero
  .Lfunc_8001DA28_8001DCAC:
    /* E4AC 8001DCAC 2400A597 */  lhu        $a1, 0x24($sp)
    /* E4B0 8001DCB0 2200A6A7 */  sh         $a2, 0x22($sp)
    /* E4B4 8001DCB4 FAFF0285 */  lh         $v0, -0x6($t0)
    /* E4B8 8001DCB8 2400A387 */  lh         $v1, 0x24($sp)
    /* E4BC 8001DCBC 21204000 */  addu       $a0, $v0, $zero
    /* E4C0 8001DCC0 2A104300 */  slt        $v0, $v0, $v1
    /* E4C4 8001DCC4 02004010 */  beqz       $v0, .Lfunc_8001DA28_8001DCD0
    /* E4C8 8001DCC8 00000000 */   nop
    /* E4CC 8001DCCC 21288000 */  addu       $a1, $a0, $zero
  .Lfunc_8001DA28_8001DCD0:
    /* E4D0 8001DCD0 2600A697 */  lhu        $a2, 0x26($sp)
    /* E4D4 8001DCD4 2400A5A7 */  sh         $a1, 0x24($sp)
    /* E4D8 8001DCD8 FCFF0385 */  lh         $v1, -0x4($t0)
    /* E4DC 8001DCDC 2600A287 */  lh         $v0, 0x26($sp)
    /* E4E0 8001DCE0 00000000 */  nop
    /* E4E4 8001DCE4 2A104300 */  slt        $v0, $v0, $v1
    /* E4E8 8001DCE8 02004010 */  beqz       $v0, .Lfunc_8001DA28_8001DCF4
    /* E4EC 8001DCEC 21206000 */   addu      $a0, $v1, $zero
    /* E4F0 8001DCF0 21308000 */  addu       $a2, $a0, $zero
  .Lfunc_8001DA28_8001DCF4:
    /* E4F4 8001DCF4 2800A797 */  lhu        $a3, 0x28($sp)
    /* E4F8 8001DCF8 2600A6A7 */  sh         $a2, 0x26($sp)
    /* E4FC 8001DCFC FEFF0385 */  lh         $v1, -0x2($t0)
    /* E500 8001DD00 2800A287 */  lh         $v0, 0x28($sp)
    /* E504 8001DD04 00000000 */  nop
    /* E508 8001DD08 2A104300 */  slt        $v0, $v0, $v1
    /* E50C 8001DD0C 02004010 */  beqz       $v0, .Lfunc_8001DA28_8001DD18
    /* E510 8001DD10 21206000 */   addu      $a0, $v1, $zero
    /* E514 8001DD14 21388000 */  addu       $a3, $a0, $zero
  .Lfunc_8001DA28_8001DD18:
    /* E518 8001DD18 2A00A597 */  lhu        $a1, 0x2A($sp)
    /* E51C 8001DD1C 2800A7A7 */  sh         $a3, 0x28($sp)
    /* E520 8001DD20 00000385 */  lh         $v1, 0x0($t0)
    /* E524 8001DD24 2A00A287 */  lh         $v0, 0x2A($sp)
    /* E528 8001DD28 00000000 */  nop
    /* E52C 8001DD2C 2A104300 */  slt        $v0, $v0, $v1
    /* E530 8001DD30 02004010 */  beqz       $v0, .Lfunc_8001DA28_8001DD3C
    /* E534 8001DD34 21206000 */   addu      $a0, $v1, $zero
    /* E538 8001DD38 21288000 */  addu       $a1, $a0, $zero
  .Lfunc_8001DA28_8001DD3C:
    /* E53C 8001DD3C 2A00A5A7 */  sh         $a1, 0x2A($sp)
    /* E540 8001DD40 0C001026 */  addiu      $s0, $s0, 0xC
    /* E544 8001DD44 2B100902 */  sltu       $v0, $s0, $t1
    /* E548 8001DD48 C7FF4014 */  bnez       $v0, .Lfunc_8001DA28_8001DC68
    /* E54C 8001DD4C 0C000825 */   addiu     $t0, $t0, 0xC
  .Lfunc_8001DA28_8001DD50:
    /* E550 8001DD50 1400A387 */  lh         $v1, 0x14($sp)
    /* E554 8001DD54 2A00A287 */  lh         $v0, 0x2A($sp)
    /* E558 8001DD58 00000000 */  nop
    /* E55C 8001DD5C 2A104300 */  slt        $v0, $v0, $v1
    /* E560 8001DD60 1E004014 */  bnez       $v0, .Lfunc_8001DA28_8001DDDC
    /* E564 8001DD64 21200000 */   addu      $a0, $zero, $zero
    /* E568 8001DD68 1A00A287 */  lh         $v0, 0x1A($sp)
    /* E56C 8001DD6C 2400A387 */  lh         $v1, 0x24($sp)
    /* E570 8001DD70 00000000 */  nop
    /* E574 8001DD74 2A104300 */  slt        $v0, $v0, $v1
    /* E578 8001DD78 19004014 */  bnez       $v0, .Lfunc_8001DA28_8001DDE0
    /* E57C 8001DD7C 21108000 */   addu      $v0, $a0, $zero
    /* E580 8001DD80 1000A387 */  lh         $v1, 0x10($sp)
    /* E584 8001DD84 2600A287 */  lh         $v0, 0x26($sp)
    /* E588 8001DD88 00000000 */  nop
    /* E58C 8001DD8C 2A104300 */  slt        $v0, $v0, $v1
    /* E590 8001DD90 13004014 */  bnez       $v0, .Lfunc_8001DA28_8001DDE0
    /* E594 8001DD94 21108000 */   addu      $v0, $a0, $zero
    /* E598 8001DD98 1600A287 */  lh         $v0, 0x16($sp)
    /* E59C 8001DD9C 2000A387 */  lh         $v1, 0x20($sp)
    /* E5A0 8001DDA0 00000000 */  nop
    /* E5A4 8001DDA4 2A104300 */  slt        $v0, $v0, $v1
    /* E5A8 8001DDA8 0D004014 */  bnez       $v0, .Lfunc_8001DA28_8001DDE0
    /* E5AC 8001DDAC 21108000 */   addu      $v0, $a0, $zero
    /* E5B0 8001DDB0 1200A387 */  lh         $v1, 0x12($sp)
    /* E5B4 8001DDB4 2800A287 */  lh         $v0, 0x28($sp)
    /* E5B8 8001DDB8 00000000 */  nop
    /* E5BC 8001DDBC 2A104300 */  slt        $v0, $v0, $v1
    /* E5C0 8001DDC0 07004014 */  bnez       $v0, .Lfunc_8001DA28_8001DDE0
    /* E5C4 8001DDC4 21108000 */   addu      $v0, $a0, $zero
    /* E5C8 8001DDC8 1800A287 */  lh         $v0, 0x18($sp)
    /* E5CC 8001DDCC 2200A387 */  lh         $v1, 0x22($sp)
    /* E5D0 8001DDD0 00000000 */  nop
    /* E5D4 8001DDD4 2A104300 */  slt        $v0, $v0, $v1
    /* E5D8 8001DDD8 01004438 */  xori       $a0, $v0, 0x1
  .Lfunc_8001DA28_8001DDDC:
    /* E5DC 8001DDDC 21108000 */  addu       $v0, $a0, $zero
  .Lfunc_8001DA28_8001DDE0:
    /* E5E0 8001DDE0 F400BF8F */  lw         $ra, 0xF4($sp)
    /* E5E4 8001DDE4 F000B08F */  lw         $s0, 0xF0($sp)
    /* E5E8 8001DDE8 F800BD27 */  addiu      $sp, $sp, 0xF8
    /* E5EC 8001DDEC 0800E003 */  jr         $ra
    /* E5F0 8001DDF0 00000000 */   nop
endlabel func_8001DA28
