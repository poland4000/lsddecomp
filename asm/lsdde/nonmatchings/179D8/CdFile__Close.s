.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdFile__Close, 0xA8

glabel CdFile__Close
    /* 17C80 80027480 5400828F */  lw         $v0, %gp_rel(gCdUseFileTable)($gp)
    /* 17C84 80027484 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 17C88 80027488 1800B0AF */  sw         $s0, 0x18($sp)
    /* 17C8C 8002748C 21808000 */  addu       $s0, $a0, $zero
    /* 17C90 80027490 09004014 */  bnez       $v0, .Lfunc_80027480_800274B8
    /* 17C94 80027494 1C00BFAF */   sw        $ra, 0x1C($sp)
    /* 17C98 80027498 5800828F */  lw         $v0, %gp_rel(D_8008A860)($gp)
    /* 17C9C 8002749C 00000000 */  nop
    /* 17CA0 800274A0 05004014 */  bnez       $v0, .Lfunc_80027480_800274B8
    /* 17CA4 800274A4 00000000 */   nop
    /* 17CA8 800274A8 8DA2000C */  jal        CdFile__InvalidateLoc
    /* 17CAC 800274AC 00000000 */   nop
    /* 17CB0 800274B0 459D0008 */  j          .Lfunc_80027480_80027514
    /* 17CB4 800274B4 00000000 */   nop
  .Lfunc_80027480_800274B8:
    /* 17CB8 800274B8 34A0000C */  jal        CdStreamLock
    /* 17CBC 800274BC 00000000 */   nop
    /* 17CC0 800274C0 28000296 */  lhu        $v0, 0x28($s0)
    /* 17CC4 800274C4 00000000 */  nop
    /* 17CC8 800274C8 0B004010 */  beqz       $v0, .Lfunc_80027480_800274F8
    /* 17CCC 800274CC 21200002 */   addu      $a0, $s0, $zero
    /* 17CD0 800274D0 5C00828F */  lw         $v0, %gp_rel(gCdOpActive)($gp)
    /* 17CD4 800274D4 00000000 */  nop
    /* 17CD8 800274D8 0C004014 */  bnez       $v0, .Lfunc_80027480_8002750C
    /* 17CDC 800274DC 21200000 */   addu      $a0, $zero, $zero
    /* 17CE0 800274E0 11A2000C */  jal        func_80028844
    /* 17CE4 800274E4 21280000 */   addu      $a1, $zero, $zero
    /* 17CE8 800274E8 19A2000C */  jal        func_80028864
    /* 17CEC 800274EC 0C0000AE */   sw        $zero, 0xC($s0)
    /* 17CF0 800274F0 439D0008 */  j          .Lfunc_80027480_8002750C
    /* 17CF4 800274F4 00000000 */   nop
  .Lfunc_80027480_800274F8:
    /* 17CF8 800274F8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 17CFC 800274FC 21280000 */  addu       $a1, $zero, $zero
    /* 17D00 80027500 03000634 */  ori        $a2, $zero, 0x3
    /* 17D04 80027504 ABA0000C */  jal        CdEnqueueRequest
    /* 17D08 80027508 21380000 */   addu      $a3, $zero, $zero
  .Lfunc_80027480_8002750C:
    /* 17D0C 8002750C 38A0000C */  jal        CdStreamUnlock
    /* 17D10 80027510 00000000 */   nop
  .Lfunc_80027480_80027514:
    /* 17D14 80027514 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 17D18 80027518 1800B08F */  lw         $s0, 0x18($sp)
    /* 17D1C 8002751C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 17D20 80027520 0800E003 */  jr         $ra
    /* 17D24 80027524 00000000 */   nop
endlabel CdFile__Close
