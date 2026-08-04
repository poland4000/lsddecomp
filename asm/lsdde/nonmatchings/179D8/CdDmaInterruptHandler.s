.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdDmaInterruptHandler, 0xE0

glabel CdDmaInterruptHandler
    /* 1BBF4 8002B3F4 0780023C */  lui        $v0, %hi(gpCdRegIndex)
    /* 1BBF8 8002B3F8 C0D8428C */  lw         $v0, %lo(gpCdRegIndex)($v0)
    /* 1BBFC 8002B3FC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1BC00 8002B400 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 1BC04 8002B404 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1BC08 8002B408 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1BC0C 8002B40C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1BC10 8002B410 00004290 */  lbu        $v0, 0x0($v0)
    /* 1BC14 8002B414 0780123C */  lui        $s2, %hi(D_8006D8D9)
    /* 1BC18 8002B418 D9D85226 */  addiu      $s2, $s2, %lo(D_8006D8D9)
    /* 1BC1C 8002B41C 03005130 */  andi       $s1, $v0, 0x3
  .Lfunc_8002B3F4_8002B420:
    /* 1BC20 8002B420 1EA5000C */  jal        CdInterruptHandler
    /* 1BC24 8002B424 00000000 */   nop
    /* 1BC28 8002B428 21804000 */  addu       $s0, $v0, $zero
    /* 1BC2C 8002B42C 1E000012 */  beqz       $s0, .Lfunc_8002B3F4_8002B4A8
    /* 1BC30 8002B430 04000232 */   andi      $v0, $s0, 0x4
    /* 1BC34 8002B434 0C004010 */  beqz       $v0, .Lfunc_8002B3F4_8002B468
    /* 1BC38 8002B438 02000232 */   andi      $v0, $s0, 0x2
    /* 1BC3C 8002B43C 0780023C */  lui        $v0, %hi(D_8006D600)
    /* 1BC40 8002B440 00D6428C */  lw         $v0, %lo(D_8006D600)($v0)
    /* 1BC44 8002B444 00000000 */  nop
    /* 1BC48 8002B448 06004010 */  beqz       $v0, .Lfunc_8002B3F4_8002B464
    /* 1BC4C 8002B44C 00000000 */   nop
    /* 1BC50 8002B450 00004492 */  lbu        $a0, 0x0($s2)
    /* 1BC54 8002B454 0980053C */  lui        $a1, %hi(D_8008B3D4)
    /* 1BC58 8002B458 D4B3A524 */  addiu      $a1, $a1, %lo(D_8008B3D4)
    /* 1BC5C 8002B45C 09F84000 */  jalr       $v0
    /* 1BC60 8002B460 00000000 */   nop
  .Lfunc_8002B3F4_8002B464:
    /* 1BC64 8002B464 02000232 */  andi       $v0, $s0, 0x2
  .Lfunc_8002B3F4_8002B468:
    /* 1BC68 8002B468 EDFF4010 */  beqz       $v0, .Lfunc_8002B3F4_8002B420
    /* 1BC6C 8002B46C 00000000 */   nop
    /* 1BC70 8002B470 0780033C */  lui        $v1, %hi(D_8006D5FC)
    /* 1BC74 8002B474 FCD5638C */  lw         $v1, %lo(D_8006D5FC)($v1)
    /* 1BC78 8002B478 00000000 */  nop
    /* 1BC7C 8002B47C E8FF6010 */  beqz       $v1, .Lfunc_8002B3F4_8002B420
    /* 1BC80 8002B480 00000000 */   nop
    /* 1BC84 8002B484 0780023C */  lui        $v0, %hi(D_8006D8D8)
    /* 1BC88 8002B488 D8D84224 */  addiu      $v0, $v0, %lo(D_8006D8D8)
    /* 1BC8C 8002B48C 00004490 */  lbu        $a0, 0x0($v0)
    /* 1BC90 8002B490 0980053C */  lui        $a1, %hi(D_8008B3CC)
    /* 1BC94 8002B494 CCB3A524 */  addiu      $a1, $a1, %lo(D_8008B3CC)
    /* 1BC98 8002B498 09F86000 */  jalr       $v1
    /* 1BC9C 8002B49C 00000000 */   nop
    /* 1BCA0 8002B4A0 08AD0008 */  j          .Lfunc_8002B3F4_8002B420
    /* 1BCA4 8002B4A4 00000000 */   nop
  .Lfunc_8002B3F4_8002B4A8:
    /* 1BCA8 8002B4A8 0780023C */  lui        $v0, %hi(gpCdRegIndex)
    /* 1BCAC 8002B4AC C0D8428C */  lw         $v0, %lo(gpCdRegIndex)($v0)
    /* 1BCB0 8002B4B0 00000000 */  nop
    /* 1BCB4 8002B4B4 000051A0 */  sb         $s1, 0x0($v0)
    /* 1BCB8 8002B4B8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 1BCBC 8002B4BC 1800B28F */  lw         $s2, 0x18($sp)
    /* 1BCC0 8002B4C0 1400B18F */  lw         $s1, 0x14($sp)
    /* 1BCC4 8002B4C4 1000B08F */  lw         $s0, 0x10($sp)
    /* 1BCC8 8002B4C8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1BCCC 8002B4CC 0800E003 */  jr         $ra
    /* 1BCD0 8002B4D0 00000000 */   nop
endlabel CdDmaInterruptHandler
