.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdFile__Open, 0x1B0

glabel CdFile__Open
    /* 17AD0 800272D0 5400828F */  lw         $v0, %gp_rel(gCdUseFileTable)($gp)
    /* 17AD4 800272D4 78FFBD27 */  addiu      $sp, $sp, -0x88
    /* 17AD8 800272D8 7000B0AF */  sw         $s0, 0x70($sp)
    /* 17ADC 800272DC 21808000 */  addu       $s0, $a0, $zero
    /* 17AE0 800272E0 7400B1AF */  sw         $s1, 0x74($sp)
    /* 17AE4 800272E4 2188A000 */  addu       $s1, $a1, $zero
    /* 17AE8 800272E8 7C00B3AF */  sw         $s3, 0x7C($sp)
    /* 17AEC 800272EC 2198C000 */  addu       $s3, $a2, $zero
    /* 17AF0 800272F0 7800B2AF */  sw         $s2, 0x78($sp)
    /* 17AF4 800272F4 2190E000 */  addu       $s2, $a3, $zero
    /* 17AF8 800272F8 09004014 */  bnez       $v0, .Lfunc_800272D0_80027320
    /* 17AFC 800272FC 8000BFAF */   sw        $ra, 0x80($sp)
    /* 17B00 80027300 5800828F */  lw         $v0, %gp_rel(D_8008A860)($gp)
    /* 17B04 80027304 00000000 */  nop
    /* 17B08 80027308 05004014 */  bnez       $v0, .Lfunc_800272D0_80027320
    /* 17B0C 8002730C 00000000 */   nop
    /* 17B10 80027310 48A2000C */  jal        CdFile__LocateOnDisc
    /* 17B14 80027314 00000000 */   nop
    /* 17B18 80027318 189D0008 */  j          .Lfunc_800272D0_80027460
    /* 17B1C 8002731C 00000000 */   nop
  .Lfunc_800272D0_80027320:
    /* 17B20 80027320 34A0000C */  jal        CdStreamLock
    /* 17B24 80027324 00000000 */   nop
    /* 17B28 80027328 28000296 */  lhu        $v0, 0x28($s0)
    /* 17B2C 8002732C 00000000 */  nop
    /* 17B30 80027330 41004010 */  beqz       $v0, .Lfunc_800272D0_80027438
    /* 17B34 80027334 00000000 */   nop
    /* 17B38 80027338 5C00828F */  lw         $v0, %gp_rel(gCdOpActive)($gp)
    /* 17B3C 8002733C 00000000 */  nop
    /* 17B40 80027340 45004014 */  bnez       $v0, .Lfunc_800272D0_80027458
    /* 17B44 80027344 00000000 */   nop
    /* 17B48 80027348 0C00028E */  lw         $v0, 0xC($s0)
    /* 17B4C 8002734C 00000000 */  nop
    /* 17B50 80027350 41004014 */  bnez       $v0, .Lfunc_800272D0_80027458
    /* 17B54 80027354 01000434 */   ori       $a0, $zero, 0x1
    /* 17B58 80027358 11A2000C */  jal        CdBeginOp
    /* 17B5C 8002735C 01000534 */   ori       $a1, $zero, 0x1
    /* 17B60 80027360 5400828F */  lw         $v0, %gp_rel(gCdUseFileTable)($gp)
    /* 17B64 80027364 00000000 */  nop
    /* 17B68 80027368 14004010 */  beqz       $v0, .Lfunc_800272D0_800273BC
    /* 17B6C 8002736C 1800A427 */   addiu     $a0, $sp, 0x18
    /* 17B70 80027370 12A1000C */  jal        FindCdFileEntry
    /* 17B74 80027374 21202002 */   addu      $a0, $s1, $zero
    /* 17B78 80027378 21304000 */  addu       $a2, $v0, $zero
    /* 17B7C 8002737C 740086AF */  sw         $a2, %gp_rel(D_8008A87C)($gp)
    /* 17B80 80027380 3700C010 */  beqz       $a2, .Lfunc_800272D0_80027460
    /* 17B84 80027384 00000000 */   nop
    /* 17B88 80027388 1700C288 */  lwl        $v0, 0x17($a2)
    /* 17B8C 8002738C 1400C298 */  lwr        $v0, 0x14($a2)
    /* 17B90 80027390 00000000 */  nop
    /* 17B94 80027394 1B0002AA */  swl        $v0, 0x1B($s0)
    /* 17B98 80027398 180002BA */  swr        $v0, 0x18($s0)
    /* 17B9C 8002739C 7400828F */  lw         $v0, %gp_rel(D_8008A87C)($gp)
    /* 17BA0 800273A0 00000000 */  nop
    /* 17BA4 800273A4 1800438C */  lw         $v1, 0x18($v0)
    /* 17BA8 800273A8 01000234 */  ori        $v0, $zero, 0x1
    /* 17BAC 800273AC 900082AF */  sw         $v0, %gp_rel(gCdStreamMode)($gp)
    /* 17BB0 800273B0 0C0002AE */  sw         $v0, 0xC($s0)
    /* 17BB4 800273B4 169D0008 */  j          .Lfunc_800272D0_80027458
    /* 17BB8 800273B8 1C0003AE */   sw        $v1, 0x1C($s0)
  .Lfunc_800272D0_800273BC:
    /* 17BBC 800273BC 73A2000C */  jal        CdBuildSearchPattern
    /* 17BC0 800273C0 21282002 */   addu      $a1, $s1, $zero
    /* 17BC4 800273C4 5800A427 */  addiu      $a0, $sp, 0x58
  .Lfunc_800272D0_800273C8:
    /* 17BC8 800273C8 90AD000C */  jal        CdSearchFile
    /* 17BCC 800273CC 1800A527 */   addiu     $a1, $sp, 0x18
    /* 17BD0 800273D0 FDFF4010 */  beqz       $v0, .Lfunc_800272D0_800273C8
    /* 17BD4 800273D4 5800A427 */   addiu     $a0, $sp, 0x58
    /* 17BD8 800273D8 5B00A28B */  lwl        $v0, 0x5B($sp)
    /* 17BDC 800273DC 5800A29B */  lwr        $v0, 0x58($sp)
    /* 17BE0 800273E0 00000000 */  nop
    /* 17BE4 800273E4 1B0002AA */  swl        $v0, 0x1B($s0)
    /* 17BE8 800273E8 180002BA */  swr        $v0, 0x18($s0)
    /* 17BEC 800273EC 5C00A28F */  lw         $v0, 0x5C($sp)
    /* 17BF0 800273F0 05001134 */  ori        $s1, $zero, 0x5
    /* 17BF4 800273F4 1C0002AE */  sw         $v0, 0x1C($s0)
    /* 17BF8 800273F8 02000434 */  ori        $a0, $zero, 0x2
  .Lfunc_800272D0_800273FC:
    /* 17BFC 800273FC 18000526 */  addiu      $a1, $s0, 0x18
    /* 17C00 80027400 7CA3000C */  jal        CdControl
    /* 17C04 80027404 21300000 */   addu      $a2, $zero, $zero
    /* 17C08 80027408 21200000 */  addu       $a0, $zero, $zero
  .Lfunc_800272D0_8002740C:
    /* 17C0C 8002740C 5AA3000C */  jal        CdSync
    /* 17C10 80027410 21280000 */   addu      $a1, $zero, $zero
    /* 17C14 80027414 FDFF4010 */  beqz       $v0, .Lfunc_800272D0_8002740C
    /* 17C18 80027418 21200000 */   addu      $a0, $zero, $zero
    /* 17C1C 8002741C F7FF5110 */  beq        $v0, $s1, .Lfunc_800272D0_800273FC
    /* 17C20 80027420 02000434 */   ori       $a0, $zero, 0x2
    /* 17C24 80027424 01000234 */  ori        $v0, $zero, 0x1
    /* 17C28 80027428 19A2000C */  jal        CdEndOp
    /* 17C2C 8002742C 0C0002AE */   sw        $v0, 0xC($s0)
    /* 17C30 80027430 169D0008 */  j          .Lfunc_800272D0_80027458
    /* 17C34 80027434 00000000 */   nop
  .Lfunc_800272D0_80027438:
    /* 17C38 80027438 31A1000C */  jal        FindCdFileIndex
    /* 17C3C 8002743C 21202002 */   addu      $a0, $s1, $zero
    /* 17C40 80027440 1000B2AF */  sw         $s2, 0x10($sp)
    /* 17C44 80027444 21200002 */  addu       $a0, $s0, $zero
    /* 17C48 80027448 21284000 */  addu       $a1, $v0, $zero
    /* 17C4C 8002744C 02000634 */  ori        $a2, $zero, 0x2
    /* 17C50 80027450 ABA0000C */  jal        CdEnqueueRequest
    /* 17C54 80027454 21386002 */   addu      $a3, $s3, $zero
  .Lfunc_800272D0_80027458:
    /* 17C58 80027458 38A0000C */  jal        CdStreamUnlock
    /* 17C5C 8002745C 00000000 */   nop
  .Lfunc_800272D0_80027460:
    /* 17C60 80027460 8000BF8F */  lw         $ra, 0x80($sp)
    /* 17C64 80027464 7C00B38F */  lw         $s3, 0x7C($sp)
    /* 17C68 80027468 7800B28F */  lw         $s2, 0x78($sp)
    /* 17C6C 8002746C 7400B18F */  lw         $s1, 0x74($sp)
    /* 17C70 80027470 7000B08F */  lw         $s0, 0x70($sp)
    /* 17C74 80027474 8800BD27 */  addiu      $sp, $sp, 0x88
    /* 17C78 80027478 0800E003 */  jr         $ra
    /* 17C7C 8002747C 00000000 */   nop
endlabel CdFile__Open
