.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001D4DC, 0x8C

glabel func_8001D4DC
    /* DCDC 8001D4DC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* DCE0 8001D4E0 1800BFAF */  sw         $ra, 0x18($sp)
    /* DCE4 8001D4E4 1400828C */  lw         $v0, 0x14($a0)
    /* DCE8 8001D4E8 00000000 */  nop
    /* DCEC 8001D4EC 4400478C */  lw         $a3, 0x44($v0)
    /* DCF0 8001D4F0 0E00C010 */  beqz       $a2, .Lfunc_8001D4DC_8001D52C
    /* DCF4 8001D4F4 2140A000 */   addu      $t0, $a1, $zero
    /* DCF8 8001D4F8 1000E294 */  lhu        $v0, 0x10($a3)
    /* DCFC 8001D4FC 00000000 */  nop
    /* DD00 8001D500 23100200 */  negu       $v0, $v0
    /* DD04 8001D504 1000A2A7 */  sh         $v0, 0x10($sp)
    /* DD08 8001D508 1200E294 */  lhu        $v0, 0x12($a3)
    /* DD0C 8001D50C 00000000 */  nop
    /* DD10 8001D510 23100200 */  negu       $v0, $v0
    /* DD14 8001D514 1200A2A7 */  sh         $v0, 0x12($sp)
    /* DD18 8001D518 1400E294 */  lhu        $v0, 0x14($a3)
    /* DD1C 8001D51C 00000000 */  nop
    /* DD20 8001D520 23100200 */  negu       $v0, $v0
    /* DD24 8001D524 53750008 */  j          .Lfunc_8001D4DC_8001D54C
    /* DD28 8001D528 1400A2A7 */   sh        $v0, 0x14($sp)
  .Lfunc_8001D4DC_8001D52C:
    /* DD2C 8001D52C 1300E288 */  lwl        $v0, 0x13($a3)
    /* DD30 8001D530 1000E298 */  lwr        $v0, 0x10($a3)
    /* DD34 8001D534 1700E388 */  lwl        $v1, 0x17($a3)
    /* DD38 8001D538 1400E398 */  lwr        $v1, 0x14($a3)
    /* DD3C 8001D53C 1300A2AB */  swl        $v0, 0x13($sp)
    /* DD40 8001D540 1000A2BB */  swr        $v0, 0x10($sp)
    /* DD44 8001D544 1700A3AB */  swl        $v1, 0x17($sp)
    /* DD48 8001D548 1400A3BB */  swr        $v1, 0x14($sp)
  .Lfunc_8001D4DC_8001D54C:
    /* DD4C 8001D54C 1000A427 */  addiu      $a0, $sp, 0x10
    /* DD50 8001D550 2C58000C */  jal        func_800160B0
    /* DD54 8001D554 21280001 */   addu      $a1, $t0, $zero
    /* DD58 8001D558 1800BF8F */  lw         $ra, 0x18($sp)
    /* DD5C 8001D55C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* DD60 8001D560 0800E003 */  jr         $ra
    /* DD64 8001D564 00000000 */   nop
endlabel func_8001D4DC
