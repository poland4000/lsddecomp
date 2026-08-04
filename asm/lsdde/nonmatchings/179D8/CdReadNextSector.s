.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdReadNextSector, 0x16C

glabel CdReadNextSector
    /* 1BCD4 8002B4D4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1BCD8 8002B4D8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1BCDC 8002B4DC 2188A000 */  addu       $s1, $a1, $zero
    /* 1BCE0 8002B4E0 01000234 */  ori        $v0, $zero, 0x1
    /* 1BCE4 8002B4E4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1BCE8 8002B4E8 1C008214 */  bne        $a0, $v0, .Lfunc_8002B4D4_8002B55C
    /* 1BCEC 8002B4EC 1000B0AF */   sw        $s0, 0x10($sp)
    /* 1BCF0 8002B4F0 0780103C */  lui        $s0, %hi(D_8006D8F4)
    /* 1BCF4 8002B4F4 F4D81026 */  addiu      $s0, $s0, %lo(D_8006D8F4)
    /* 1BCF8 8002B4F8 0000028E */  lw         $v0, 0x0($s0)
    /* 1BCFC 8002B4FC 00000000 */  nop
    /* 1BD00 8002B500 1A004018 */  blez       $v0, .Lfunc_8002B4D4_8002B56C
    /* 1BD04 8002B504 00000000 */   nop
    /* 1BD08 8002B508 0780043C */  lui        $a0, %hi(D_8006D8E8)
    /* 1BD0C 8002B50C E8D8848C */  lw         $a0, %lo(D_8006D8E8)($a0)
    /* 1BD10 8002B510 0780053C */  lui        $a1, %hi(D_8006D8F0)
    /* 1BD14 8002B514 F0D8A58C */  lw         $a1, %lo(D_8006D8F0)($a1)
    /* 1BD18 8002B518 C1AC000C */  jal        CdStartDma
    /* 1BD1C 8002B51C 00000000 */   nop
    /* 1BD20 8002B520 0780023C */  lui        $v0, %hi(D_8006D8F0)
    /* 1BD24 8002B524 F0D8428C */  lw         $v0, %lo(D_8006D8F0)($v0)
    /* 1BD28 8002B528 0780033C */  lui        $v1, %hi(D_8006D8E8)
    /* 1BD2C 8002B52C E8D8638C */  lw         $v1, %lo(D_8006D8E8)($v1)
    /* 1BD30 8002B530 80100200 */  sll        $v0, $v0, 2
    /* 1BD34 8002B534 21104300 */  addu       $v0, $v0, $v1
    /* 1BD38 8002B538 0780013C */  lui        $at, %hi(D_8006D8E8)
    /* 1BD3C 8002B53C E8D822AC */  sw         $v0, %lo(D_8006D8E8)($at)
    /* 1BD40 8002B540 0000028E */  lw         $v0, 0x0($s0)
    /* 1BD44 8002B544 00000000 */  nop
    /* 1BD48 8002B548 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1BD4C 8002B54C 000002AE */  sw         $v0, 0x0($s0)
    /* 1BD50 8002B550 0000028E */  lw         $v0, 0x0($s0)
    /* 1BD54 8002B554 5BAD0008 */  j          .Lfunc_8002B4D4_8002B56C
    /* 1BD58 8002B558 00000000 */   nop
  .Lfunc_8002B4D4_8002B55C:
    /* 1BD5C 8002B55C 0780033C */  lui        $v1, %hi(D_8006D8F4)
    /* 1BD60 8002B560 F4D86324 */  addiu      $v1, $v1, %lo(D_8006D8F4)
    /* 1BD64 8002B564 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 1BD68 8002B568 000062AC */  sw         $v0, 0x0($v1)
  .Lfunc_8002B4D4_8002B56C:
    /* 1BD6C 8002B56C 4096000C */  jal        GetSystemTick
    /* 1BD70 8002B570 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 1BD74 8002B574 0780033C */  lui        $v1, %hi(D_8006D8F8)
    /* 1BD78 8002B578 F8D86324 */  addiu      $v1, $v1, %lo(D_8006D8F8)
    /* 1BD7C 8002B57C 000062AC */  sw         $v0, 0x0($v1)
    /* 1BD80 8002B580 0780023C */  lui        $v0, %hi(D_8006D8F4)
    /* 1BD84 8002B584 F4D8428C */  lw         $v0, %lo(D_8006D8F4)($v0)
    /* 1BD88 8002B588 00000000 */  nop
    /* 1BD8C 8002B58C 08004104 */  bgez       $v0, .Lfunc_8002B4D4_8002B5B0
    /* 1BD90 8002B590 00000000 */   nop
    /* 1BD94 8002B594 0780023C */  lui        $v0, %hi(D_8006D8DC)
    /* 1BD98 8002B598 DCD8428C */  lw         $v0, %lo(D_8006D8DC)($v0)
    /* 1BD9C 8002B59C 00000000 */  nop
    /* 1BDA0 8002B5A0 03004018 */  blez       $v0, .Lfunc_8002B4D4_8002B5B0
    /* 1BDA4 8002B5A4 00000000 */   nop
    /* 1BDA8 8002B5A8 9BAA000C */  jal        CdRecover
    /* 1BDAC 8002B5AC 00000000 */   nop
  .Lfunc_8002B4D4_8002B5B0:
    /* 1BDB0 8002B5B0 0780103C */  lui        $s0, %hi(D_8006D8F4)
    /* 1BDB4 8002B5B4 F4D81026 */  addiu      $s0, $s0, %lo(D_8006D8F4)
    /* 1BDB8 8002B5B8 0000028E */  lw         $v0, 0x0($s0)
    /* 1BDBC 8002B5BC 00000000 */  nop
    /* 1BDC0 8002B5C0 1900401C */  bgtz       $v0, .Lfunc_8002B4D4_8002B628
    /* 1BDC4 8002B5C4 09000434 */   ori       $a0, $zero, 0x9
    /* 1BDC8 8002B5C8 21280000 */  addu       $a1, $zero, $zero
    /* 1BDCC 8002B5CC 21300000 */  addu       $a2, $zero, $zero
    /* 1BDD0 8002B5D0 0780023C */  lui        $v0, %hi(D_8006D8FC)
    /* 1BDD4 8002B5D4 FCD8428C */  lw         $v0, %lo(D_8006D8FC)($v0)
    /* 1BDD8 8002B5D8 0780033C */  lui        $v1, %hi(D_8006D900)
    /* 1BDDC 8002B5DC 00D9638C */  lw         $v1, %lo(D_8006D900)($v1)
    /* 1BDE0 8002B5E0 0780013C */  lui        $at, %hi(D_8006D5FC)
    /* 1BDE4 8002B5E4 FCD522AC */  sw         $v0, %lo(D_8006D5FC)($at)
    /* 1BDE8 8002B5E8 0780013C */  lui        $at, %hi(D_8006D600)
    /* 1BDEC 8002B5EC 00D623AC */  sw         $v1, %lo(D_8006D600)($at)
    /* 1BDF0 8002B5F0 C4A7000C */  jal        CdCommand
    /* 1BDF4 8002B5F4 21380000 */   addu      $a3, $zero, $zero
    /* 1BDF8 8002B5F8 0780033C */  lui        $v1, %hi(D_8006D604)
    /* 1BDFC 8002B5FC 04D6638C */  lw         $v1, %lo(D_8006D604)($v1)
    /* 1BE00 8002B600 00000000 */  nop
    /* 1BE04 8002B604 08006010 */  beqz       $v1, .Lfunc_8002B4D4_8002B628
    /* 1BE08 8002B608 00000000 */   nop
    /* 1BE0C 8002B60C 0000028E */  lw         $v0, 0x0($s0)
    /* 1BE10 8002B610 00000000 */  nop
    /* 1BE14 8002B614 02004014 */  bnez       $v0, .Lfunc_8002B4D4_8002B620
    /* 1BE18 8002B618 05000434 */   ori       $a0, $zero, 0x5
    /* 1BE1C 8002B61C 02000434 */  ori        $a0, $zero, 0x2
  .Lfunc_8002B4D4_8002B620:
    /* 1BE20 8002B620 09F86000 */  jalr       $v1
    /* 1BE24 8002B624 21282002 */   addu      $a1, $s1, $zero
  .Lfunc_8002B4D4_8002B628:
    /* 1BE28 8002B628 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1BE2C 8002B62C 1400B18F */  lw         $s1, 0x14($sp)
    /* 1BE30 8002B630 1000B08F */  lw         $s0, 0x10($sp)
    /* 1BE34 8002B634 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1BE38 8002B638 0800E003 */  jr         $ra
    /* 1BE3C 8002B63C 00000000 */   nop
endlabel CdReadNextSector
