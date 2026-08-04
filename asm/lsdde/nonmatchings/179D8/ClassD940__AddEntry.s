.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching ClassD940__AddEntry, 0x130

glabel ClassD940__AddEntry
    /* 1CA78 8002C278 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1CA7C 8002C27C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1CA80 8002C280 9001C228 */  slti       $v0, $a2, 0x190
    /* 1CA84 8002C284 43004010 */  beqz       $v0, .Lfunc_8002C278_8002C394
    /* 1CA88 8002C288 2138A000 */   addu      $a3, $a1, $zero
    /* 1CA8C 8002C28C 3400E58C */  lw         $a1, 0x34($a3)
    /* 1CA90 8002C290 00000000 */  nop
    /* 1CA94 8002C294 0500A010 */  beqz       $a1, .Lfunc_8002C278_8002C2AC
    /* 1CA98 8002C298 01000234 */   ori       $v0, $zero, 0x1
    /* 1CA9C 8002C29C 1000838C */  lw         $v1, 0x10($a0)
    /* 1CAA0 8002C2A0 3000E2AC */  sw         $v0, 0x30($a3)
    /* 1CAA4 8002C2A4 B2B00008 */  j          .Lfunc_8002C278_8002C2C8
    /* 1CAA8 8002C2A8 21286500 */   addu      $a1, $v1, $a1
  .Lfunc_8002C278_8002C2AC:
    /* 1CAAC 8002C2AC 40100600 */  sll        $v0, $a2, 1
    /* 1CAB0 8002C2B0 21104600 */  addu       $v0, $v0, $a2
    /* 1CAB4 8002C2B4 80100200 */  sll        $v0, $v0, 2
    /* 1CAB8 8002C2B8 1000838C */  lw         $v1, 0x10($a0)
    /* 1CABC 8002C2BC 08004224 */  addiu      $v0, $v0, 0x8
    /* 1CAC0 8002C2C0 3000E0AC */  sw         $zero, 0x30($a3)
    /* 1CAC4 8002C2C4 21284300 */  addu       $a1, $v0, $v1
  .Lfunc_8002C278_8002C2C8:
    /* 1CAC8 8002C2C8 0800A28C */  lw         $v0, 0x8($a1)
    /* 1CACC 8002C2CC 00000000 */  nop
    /* 1CAD0 8002C2D0 3400E2AC */  sw         $v0, 0x34($a3)
    /* 1CAD4 8002C2D4 0000A290 */  lbu        $v0, 0x0($a1)
    /* 1CAD8 8002C2D8 00000000 */  nop
    /* 1CADC 8002C2DC 2B004010 */  beqz       $v0, .Lfunc_8002C278_8002C38C
    /* 1CAE0 8002C2E0 6666023C */   lui       $v0, (0x66666667 >> 16)
    /* 1CAE4 8002C2E4 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 1CAE8 8002C2E8 1800C200 */  mult       $a2, $v0
    /* 1CAEC 8002C2EC C3170600 */  sra        $v0, $a2, 31
    /* 1CAF0 8002C2F0 10180000 */  mfhi       $v1
    /* 1CAF4 8002C2F4 C3180300 */  sra        $v1, $v1, 3
    /* 1CAF8 8002C2F8 23186200 */  subu       $v1, $v1, $v0
    /* 1CAFC 8002C2FC 80100300 */  sll        $v0, $v1, 2
    /* 1CB00 8002C300 21104300 */  addu       $v0, $v0, $v1
    /* 1CB04 8002C304 80100200 */  sll        $v0, $v0, 2
    /* 1CB08 8002C308 2310C200 */  subu       $v0, $a2, $v0
    /* 1CB0C 8002C30C C0120200 */  sll        $v0, $v0, 11
    /* 1CB10 8002C310 00044224 */  addiu      $v0, $v0, 0x400
    /* 1CB14 8002C314 C01A0300 */  sll        $v1, $v1, 11
    /* 1CB18 8002C318 0C00E2AC */  sw         $v0, 0xC($a3)
    /* 1CB1C 8002C31C 0600A284 */  lh         $v0, 0x6($a1)
    /* 1CB20 8002C320 00046324 */  addiu      $v1, $v1, 0x400
    /* 1CB24 8002C324 1400E3AC */  sw         $v1, 0x14($a3)
    /* 1CB28 8002C328 C0120200 */  sll        $v0, $v0, 11
    /* 1CB2C 8002C32C 1000E2AC */  sw         $v0, 0x10($a3)
    /* 1CB30 8002C330 0500A290 */  lbu        $v0, 0x5($a1)
    /* 1CB34 8002C334 00000000 */  nop
    /* 1CB38 8002C338 80120200 */  sll        $v0, $v0, 10
    /* 1CB3C 8002C33C 1A00E2A4 */  sh         $v0, 0x1A($a3)
    /* 1CB40 8002C340 0100A290 */  lbu        $v0, 0x1($a1)
    /* 1CB44 8002C344 00000000 */  nop
    /* 1CB48 8002C348 2C00E2A4 */  sh         $v0, 0x2C($a3)
    /* 1CB4C 8002C34C 0400A290 */  lbu        $v0, 0x4($a1)
    /* 1CB50 8002C350 00000000 */  nop
    /* 1CB54 8002C354 2E00E2A4 */  sh         $v0, 0x2E($a3)
    /* 1CB58 8002C358 0200A594 */  lhu        $a1, 0x2($a1)
    /* 1CB5C 8002C35C 00000000 */  nop
    /* 1CB60 8002C360 3800E5AC */  sw         $a1, 0x38($a3)
    /* 1CB64 8002C364 2C00848C */  lw         $a0, 0x2C($a0)
    /* 1CB68 8002C368 00000000 */  nop
    /* 1CB6C 8002C36C 0000828C */  lw         $v0, 0x0($a0)
    /* 1CB70 8002C370 00000000 */  nop
    /* 1CB74 8002C374 8000428C */  lw         $v0, 0x80($v0)
    /* 1CB78 8002C378 00000000 */  nop
    /* 1CB7C 8002C37C 09F84000 */  jalr       $v0
    /* 1CB80 8002C380 00000000 */   nop
    /* 1CB84 8002C384 E6B00008 */  j          .Lfunc_8002C278_8002C398
    /* 1CB88 8002C388 00000000 */   nop
  .Lfunc_8002C278_8002C38C:
    /* 1CB8C 8002C38C E6B00008 */  j          .Lfunc_8002C278_8002C398
    /* 1CB90 8002C390 FFFF0224 */   addiu     $v0, $zero, -0x1
  .Lfunc_8002C278_8002C394:
    /* 1CB94 8002C394 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_8002C278_8002C398:
    /* 1CB98 8002C398 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1CB9C 8002C39C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1CBA0 8002C3A0 0800E003 */  jr         $ra
    /* 1CBA4 8002C3A4 00000000 */   nop
endlabel ClassD940__AddEntry
