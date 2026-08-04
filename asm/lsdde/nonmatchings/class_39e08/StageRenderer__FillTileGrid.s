.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__FillTileGrid, 0x184

glabel StageRenderer__FillTileGrid
    /* 3D2F0 8004CAF0 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 3D2F4 8004CAF4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3D2F8 8004CAF8 21888000 */  addu       $s1, $a0, $zero
    /* 3D2FC 8004CAFC 4C00A28F */  lw         $v0, 0x4C($sp)
    /* 3D300 8004CB00 5400A48F */  lw         $a0, 0x54($sp)
    /* 3D304 8004CB04 2800B6AF */  sw         $s6, 0x28($sp)
    /* 3D308 8004CB08 4800B68F */  lw         $s6, 0x48($sp)
    /* 3D30C 8004CB0C 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 3D310 8004CB10 5000B78F */  lw         $s7, 0x50($sp)
    /* 3D314 8004CB14 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3D318 8004CB18 2180A000 */  addu       $s0, $a1, $zero
    /* 3D31C 8004CB1C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3D320 8004CB20 2190C000 */  addu       $s2, $a2, $zero
    /* 3D324 8004CB24 3000BFAF */  sw         $ra, 0x30($sp)
    /* 3D328 8004CB28 2400B5AF */  sw         $s5, 0x24($sp)
    /* 3D32C 8004CB2C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3D330 8004CB30 21184400 */  addu       $v1, $v0, $a0
    /* 3D334 8004CB34 15006228 */  slti       $v0, $v1, 0x15
    /* 3D338 8004CB38 40004014 */  bnez       $v0, .Lfunc_8004CAF0_8004CC3C
    /* 3D33C 8004CB3C 1C00B3AF */   sw        $s3, 0x1C($sp)
    /* 3D340 8004CB40 ECFF7524 */  addiu      $s5, $v1, -0x14
    /* 3D344 8004CB44 23109500 */  subu       $v0, $a0, $s5
    /* 3D348 8004CB48 0A0002A6 */  sh         $v0, 0xA($s0)
    /* 3D34C 8004CB4C 01005226 */  addiu      $s2, $s2, 0x1
    /* 3D350 8004CB50 40101200 */  sll        $v0, $s2, 1
    /* 3D354 8004CB54 21105200 */  addu       $v0, $v0, $s2
    /* 3D358 8004CB58 80100200 */  sll        $v0, $v0, 2
    /* 3D35C 8004CB5C 8C004224 */  addiu      $v0, $v0, 0x8C
    /* 3D360 8004CB60 21802202 */  addu       $s0, $s1, $v0
    /* 3D364 8004CB64 0A00C22A */  slti       $v0, $s6, 0xA
    /* 3D368 8004CB68 0B004010 */  beqz       $v0, .Lfunc_8004CAF0_8004CB98
    /* 3D36C 8004CB6C 2198A002 */   addu      $s3, $s5, $zero
    /* 3D370 8004CB70 0200F424 */  addiu      $s4, $a3, 0x2
    /* 3D374 8004CB74 0000228E */  lw         $v0, 0x0($s1)
    /* 3D378 8004CB78 21202002 */  addu       $a0, $s1, $zero
    /* 3D37C 8004CB7C 2001428C */  lw         $v0, 0x120($v0)
    /* 3D380 8004CB80 00000000 */  nop
    /* 3D384 8004CB84 09F84000 */  jalr       $v0
    /* 3D388 8004CB88 21288002 */   addu      $a1, $s4, $zero
    /* 3D38C 8004CB8C 000002AE */  sw         $v0, 0x0($s0)
    /* 3D390 8004CB90 EF320108 */  j          .Lfunc_8004CAF0_8004CBBC
    /* 3D394 8004CB94 0A00C226 */   addiu     $v0, $s6, 0xA
  .Lfunc_8004CAF0_8004CB98:
    /* 3D398 8004CB98 0300F424 */  addiu      $s4, $a3, 0x3
    /* 3D39C 8004CB9C 0000228E */  lw         $v0, 0x0($s1)
    /* 3D3A0 8004CBA0 21202002 */  addu       $a0, $s1, $zero
    /* 3D3A4 8004CBA4 2001428C */  lw         $v0, 0x120($v0)
    /* 3D3A8 8004CBA8 00000000 */  nop
    /* 3D3AC 8004CBAC 09F84000 */  jalr       $v0
    /* 3D3B0 8004CBB0 21288002 */   addu      $a1, $s4, $zero
    /* 3D3B4 8004CBB4 000002AE */  sw         $v0, 0x0($s0)
    /* 3D3B8 8004CBB8 F6FFC226 */  addiu      $v0, $s6, -0xA
  .Lfunc_8004CAF0_8004CBBC:
    /* 3D3BC 8004CBBC 040002A6 */  sh         $v0, 0x4($s0)
    /* 3D3C0 8004CBC0 0A0013A6 */  sh         $s3, 0xA($s0)
    /* 3D3C4 8004CBC4 04000286 */  lh         $v0, 0x4($s0)
    /* 3D3C8 8004CBC8 00000000 */  nop
    /* 3D3CC 8004CBCC 21985700 */  addu       $s3, $v0, $s7
    /* 3D3D0 8004CBD0 1500622A */  slti       $v0, $s3, 0x15
    /* 3D3D4 8004CBD4 17004014 */  bnez       $v0, .Lfunc_8004CAF0_8004CC34
    /* 3D3D8 8004CBD8 060000A6 */   sh        $zero, 0x6($s0)
    /* 3D3DC 8004CBDC 01005226 */  addiu      $s2, $s2, 0x1
    /* 3D3E0 8004CBE0 1400E226 */  addiu      $v0, $s7, 0x14
    /* 3D3E4 8004CBE4 23105300 */  subu       $v0, $v0, $s3
    /* 3D3E8 8004CBE8 080002A6 */  sh         $v0, 0x8($s0)
    /* 3D3EC 8004CBEC 40101200 */  sll        $v0, $s2, 1
    /* 3D3F0 8004CBF0 21105200 */  addu       $v0, $v0, $s2
    /* 3D3F4 8004CBF4 80100200 */  sll        $v0, $v0, 2
    /* 3D3F8 8004CBF8 8C004224 */  addiu      $v0, $v0, 0x8C
    /* 3D3FC 8004CBFC 21802202 */  addu       $s0, $s1, $v0
    /* 3D400 8004CC00 0000228E */  lw         $v0, 0x0($s1)
    /* 3D404 8004CC04 21202002 */  addu       $a0, $s1, $zero
    /* 3D408 8004CC08 2001428C */  lw         $v0, 0x120($v0)
    /* 3D40C 8004CC0C 00000000 */  nop
    /* 3D410 8004CC10 09F84000 */  jalr       $v0
    /* 3D414 8004CC14 01008526 */   addiu     $a1, $s4, 0x1
    /* 3D418 8004CC18 000002AE */  sw         $v0, 0x0($s0)
    /* 3D41C 8004CC1C ECFF6226 */  addiu      $v0, $s3, -0x14
    /* 3D420 8004CC20 040000A6 */  sh         $zero, 0x4($s0)
    /* 3D424 8004CC24 060000A6 */  sh         $zero, 0x6($s0)
    /* 3D428 8004CC28 080002A6 */  sh         $v0, 0x8($s0)
    /* 3D42C 8004CC2C 10330108 */  j          .Lfunc_8004CAF0_8004CC40
    /* 3D430 8004CC30 0A0015A6 */   sh        $s5, 0xA($s0)
  .Lfunc_8004CAF0_8004CC34:
    /* 3D434 8004CC34 10330108 */  j          .Lfunc_8004CAF0_8004CC40
    /* 3D438 8004CC38 080017A6 */   sh        $s7, 0x8($s0)
  .Lfunc_8004CAF0_8004CC3C:
    /* 3D43C 8004CC3C 0A0004A6 */  sh         $a0, 0xA($s0)
  .Lfunc_8004CAF0_8004CC40:
    /* 3D440 8004CC40 21104002 */  addu       $v0, $s2, $zero
    /* 3D444 8004CC44 3000BF8F */  lw         $ra, 0x30($sp)
    /* 3D448 8004CC48 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 3D44C 8004CC4C 2800B68F */  lw         $s6, 0x28($sp)
    /* 3D450 8004CC50 2400B58F */  lw         $s5, 0x24($sp)
    /* 3D454 8004CC54 2000B48F */  lw         $s4, 0x20($sp)
    /* 3D458 8004CC58 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3D45C 8004CC5C 1800B28F */  lw         $s2, 0x18($sp)
    /* 3D460 8004CC60 1400B18F */  lw         $s1, 0x14($sp)
    /* 3D464 8004CC64 1000B08F */  lw         $s0, 0x10($sp)
    /* 3D468 8004CC68 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 3D46C 8004CC6C 0800E003 */  jr         $ra
    /* 3D470 8004CC70 00000000 */   nop
endlabel StageRenderer__FillTileGrid
