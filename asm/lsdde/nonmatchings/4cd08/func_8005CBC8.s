.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005CBC8, 0x190

glabel func_8005CBC8
    /* 4D3C8 8005CBC8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4D3CC 8005CBCC 21308000 */  addu       $a2, $a0, $zero
    /* 4D3D0 8005CBD0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4D3D4 8005CBD4 2180A000 */  addu       $s0, $a1, $zero
    /* 4D3D8 8005CBD8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 4D3DC 8005CBDC 01000482 */  lb         $a0, 0x1($s0)
    /* 4D3E0 8005CBE0 01000234 */  ori        $v0, $zero, 0x1
    /* 4D3E4 8005CBE4 54008210 */  beq        $a0, $v0, .Lfunc_8005CBC8_8005CD38
    /* 4D3E8 8005CBE8 00000000 */   nop
    /* 4D3EC 8005CBEC 07008104 */  bgez       $a0, .Lfunc_8005CBC8_8005CC0C
    /* 4D3F0 8005CBF0 00000000 */   nop
    /* 4D3F4 8005CBF4 00000282 */  lb         $v0, 0x0($s0)
    /* 4D3F8 8005CBF8 00000000 */  nop
    /* 4D3FC 8005CBFC 05004010 */  beqz       $v0, .Lfunc_8005CBC8_8005CC14
    /* 4D400 8005CC00 27100400 */   nor       $v0, $zero, $a0
    /* 4D404 8005CC04 51730108 */  j          .Lfunc_8005CBC8_8005CD44
    /* 4D408 8005CC08 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_8005CBC8_8005CC0C:
    /* 4D40C 8005CC0C 06730108 */  j          .Lfunc_8005CBC8_8005CC18
    /* 4D410 8005CC10 21288000 */   addu      $a1, $a0, $zero
  .Lfunc_8005CBC8_8005CC14:
    /* 4D414 8005CC14 01004524 */  addiu      $a1, $v0, 0x1
  .Lfunc_8005CBC8_8005CC18:
    /* 4D418 8005CC18 FEFFA324 */  addiu      $v1, $a1, -0x2
    /* 4D41C 8005CC1C 1400622C */  sltiu      $v0, $v1, 0x14
    /* 4D420 8005CC20 3E004010 */  beqz       $v0, L_8005CD1C
    /* 4D424 8005CC24 80100300 */   sll       $v0, $v1, 2
    /* 4D428 8005CC28 0180013C */  lui        $at, %hi(jtbl_8001188C)
    /* 4D42C 8005CC2C 8C182124 */  addiu      $at, $at, %lo(jtbl_8001188C)
    /* 4D430 8005CC30 21082200 */  addu       $at, $at, $v0
    /* 4D434 8005CC34 0000228C */  lw         $v0, 0x0($at)
    /* 4D438 8005CC38 00000000 */  nop
    /* 4D43C 8005CC3C 08004000 */  jr         $v0
    /* 4D440 8005CC40 00000000 */   nop
  jlabel L_8005CC44
    /* 4D444 8005CC44 2120C000 */  addu       $a0, $a2, $zero
    /* 4D448 8005CC48 6A73010C */  jal EntityMgr__IsDayInCycle
    /* 4D44C 8005CC4C FFFFA524 */   addiu     $a1, $a1, -0x1
    /* 4D450 8005CC50 4C730108 */  j          .Lfunc_8005CBC8_8005CD30
    /* 4D454 8005CC54 00000000 */   nop
  jlabel L_8005CC58
    /* 4D458 8005CC58 5555023C */  lui        $v0, (0x55555556 >> 16)
    /* 4D45C 8005CC5C 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
    /* 4D460 8005CC60 1800C200 */  mult       $a2, $v0
    /* 4D464 8005CC64 C3170600 */  sra        $v0, $a2, 31
    /* 4D468 8005CC68 10180000 */  mfhi       $v1
    /* 4D46C 8005CC6C 23186200 */  subu       $v1, $v1, $v0
    /* 4D470 8005CC70 40100300 */  sll        $v0, $v1, 1
    /* 4D474 8005CC74 21104300 */  addu       $v0, $v0, $v1
    /* 4D478 8005CC78 3000C210 */  beq        $a2, $v0, .Lfunc_8005CBC8_8005CD3C
    /* 4D47C 8005CC7C 01000234 */   ori       $v0, $zero, 0x1
    /* 4D480 8005CC80 51730108 */  j          .Lfunc_8005CBC8_8005CD44
    /* 4D484 8005CC84 21100000 */   addu      $v0, $zero, $zero
  jlabel L_8005CC88
    /* 4D488 8005CC88 5555023C */  lui        $v0, (0x55555556 >> 16)
    /* 4D48C 8005CC8C 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
    /* 4D490 8005CC90 1800C200 */  mult       $a2, $v0
    /* 4D494 8005CC94 C3170600 */  sra        $v0, $a2, 31
    /* 4D498 8005CC98 10180000 */  mfhi       $v1
    /* 4D49C 8005CC9C 23186200 */  subu       $v1, $v1, $v0
    /* 4D4A0 8005CCA0 40100300 */  sll        $v0, $v1, 1
    /* 4D4A4 8005CCA4 21104300 */  addu       $v0, $v0, $v1
    /* 4D4A8 8005CCA8 2400C214 */  bne        $a2, $v0, .Lfunc_8005CBC8_8005CD3C
    /* 4D4AC 8005CCAC 01000234 */   ori       $v0, $zero, 0x1
    /* 4D4B0 8005CCB0 51730108 */  j          .Lfunc_8005CBC8_8005CD44
    /* 4D4B4 8005CCB4 21100000 */   addu      $v0, $zero, $zero
  jlabel L_8005CCB8
    /* 4D4B8 8005CCB8 C358010C */  jal        Spawner__GetParity
    /* 4D4BC 8005CCBC 00000000 */   nop
    /* 4D4C0 8005CCC0 4C730108 */  j          .Lfunc_8005CBC8_8005CD30
    /* 4D4C4 8005CCC4 00000000 */   nop
  jlabel L_8005CCC8
    /* 4D4C8 8005CCC8 5555023C */  lui        $v0, (0x55555556 >> 16)
    /* 4D4CC 8005CCCC 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
    /* 4D4D0 8005CCD0 1800C200 */  mult       $a2, $v0
    /* 4D4D4 8005CCD4 C31F0600 */  sra        $v1, $a2, 31
    /* 4D4D8 8005CCD8 10100000 */  mfhi       $v0
    /* 4D4DC 8005CCDC 23104300 */  subu       $v0, $v0, $v1
    /* 4D4E0 8005CCE0 40180200 */  sll        $v1, $v0, 1
    /* 4D4E4 8005CCE4 21186200 */  addu       $v1, $v1, $v0
    /* 4D4E8 8005CCE8 2318C300 */  subu       $v1, $a2, $v1
    /* 4D4EC 8005CCEC F9FFA224 */  addiu      $v0, $a1, -0x7
    /* 4D4F0 8005CCF0 12006210 */  beq        $v1, $v0, .Lfunc_8005CBC8_8005CD3C
    /* 4D4F4 8005CCF4 01000234 */   ori       $v0, $zero, 0x1
    /* 4D4F8 8005CCF8 51730108 */  j          .Lfunc_8005CBC8_8005CD44
    /* 4D4FC 8005CCFC 21100000 */   addu      $v0, $zero, $zero
  jlabel L_8005CD00
    /* 4D500 8005CD00 0100C230 */  andi       $v0, $a2, 0x1
    /* 4D504 8005CD04 0D004010 */  beqz       $v0, .Lfunc_8005CBC8_8005CD3C
    /* 4D508 8005CD08 01000234 */   ori       $v0, $zero, 0x1
    /* 4D50C 8005CD0C 51730108 */  j          .Lfunc_8005CBC8_8005CD44
    /* 4D510 8005CD10 21100000 */   addu      $v0, $zero, $zero
  jlabel L_8005CD14
    /* 4D514 8005CD14 4C730108 */  j          .Lfunc_8005CBC8_8005CD30
    /* 4D518 8005CD18 0100C230 */   andi      $v0, $a2, 0x1
  jlabel L_8005CD1C
    /* 4D51C 8005CD1C 0A00A228 */  slti       $v0, $a1, 0xA
    /* 4D520 8005CD20 06004014 */  bnez       $v0, .Lfunc_8005CBC8_8005CD3C
    /* 4D524 8005CD24 01000234 */   ori       $v0, $zero, 0x1
    /* 4D528 8005CD28 5673010C */  jal EntityMgr__IsSpecialDay
    /* 4D52C 8005CD2C 2120A000 */   addu      $a0, $a1, $zero
  .Lfunc_8005CBC8_8005CD30:
    /* 4D530 8005CD30 04004010 */  beqz       $v0, .Lfunc_8005CBC8_8005CD44
    /* 4D534 8005CD34 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_8005CBC8_8005CD38:
    /* 4D538 8005CD38 01000234 */  ori        $v0, $zero, 0x1
  .Lfunc_8005CBC8_8005CD3C:
    /* 4D53C 8005CD3C 000002A2 */  sb         $v0, 0x0($s0)
    /* 4D540 8005CD40 01000234 */  ori        $v0, $zero, 0x1
  .Lfunc_8005CBC8_8005CD44:
    /* 4D544 8005CD44 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4D548 8005CD48 1000B08F */  lw         $s0, 0x10($sp)
    /* 4D54C 8005CD4C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4D550 8005CD50 0800E003 */  jr         $ra
    /* 4D554 8005CD54 00000000 */   nop
endlabel func_8005CBC8
