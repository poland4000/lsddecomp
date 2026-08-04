.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdFile__QueueLoadByName, 0xC0

glabel CdFile__QueueLoadByName
    /* 18480 80027C80 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 18484 80027C84 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 18488 80027C88 21888000 */  addu       $s1, $a0, $zero
    /* 1848C 80027C8C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 18490 80027C90 2180A000 */  addu       $s0, $a1, $zero
    /* 18494 80027C94 2400BFAF */  sw         $ra, 0x24($sp)
    /* 18498 80027C98 34A0000C */  jal        CdStreamLock
    /* 1849C 80027C9C 2000B2AF */   sw        $s2, 0x20($sp)
    /* 184A0 80027CA0 1E000012 */  beqz       $s0, .Lfunc_80027C80_80027D1C
    /* 184A4 80027CA4 00000000 */   nop
    /* 184A8 80027CA8 5400828F */  lw         $v0, %gp_rel(gCdUseFileTable)($gp)
    /* 184AC 80027CAC 00000000 */  nop
    /* 184B0 80027CB0 0C004010 */  beqz       $v0, .Lfunc_80027C80_80027CE4
    /* 184B4 80027CB4 21200002 */   addu      $a0, $s0, $zero
    /* 184B8 80027CB8 01000234 */  ori        $v0, $zero, 0x1
    /* 184BC 80027CBC 31A1000C */  jal        FindCdFileIndex
    /* 184C0 80027CC0 040042AE */   sw        $v0, 0x4($s2)
    /* 184C4 80027CC4 21202002 */  addu       $a0, $s1, $zero
    /* 184C8 80027CC8 21284000 */  addu       $a1, $v0, $zero
    /* 184CC 80027CCC 07000634 */  ori        $a2, $zero, 0x7
    /* 184D0 80027CD0 21380000 */  addu       $a3, $zero, $zero
    /* 184D4 80027CD4 ABA0000C */  jal        CdEnqueueRequest
    /* 184D8 80027CD8 1000A0AF */   sw        $zero, 0x10($sp)
    /* 184DC 80027CDC 479F0008 */  j          .Lfunc_80027C80_80027D1C
    /* 184E0 80027CE0 00000000 */   nop
  .Lfunc_80027C80_80027CE4:
    /* 184E4 80027CE4 0000228E */  lw         $v0, 0x0($s1)
    /* 184E8 80027CE8 21202002 */  addu       $a0, $s1, $zero
    /* 184EC 80027CEC 5800428C */  lw         $v0, 0x58($v0)
    /* 184F0 80027CF0 00000000 */  nop
    /* 184F4 80027CF4 09F84000 */  jalr       $v0
    /* 184F8 80027CF8 21280002 */   addu      $a1, $s0, $zero
    /* 184FC 80027CFC 22002296 */  lhu        $v0, 0x22($s1)
    /* 18500 80027D00 00000000 */  nop
    /* 18504 80027D04 05004014 */  bnez       $v0, .Lfunc_80027C80_80027D1C
    /* 18508 80027D08 00000000 */   nop
    /* 1850C 80027D0C 2400228E */  lw         $v0, 0x24($s1)
    /* 18510 80027D10 00000000 */  nop
    /* 18514 80027D14 04004234 */  ori        $v0, $v0, 0x4
    /* 18518 80027D18 240022AE */  sw         $v0, 0x24($s1)
  .Lfunc_80027C80_80027D1C:
    /* 1851C 80027D1C 38A0000C */  jal        CdStreamUnlock
    /* 18520 80027D20 00000000 */   nop
    /* 18524 80027D24 2400BF8F */  lw         $ra, 0x24($sp)
    /* 18528 80027D28 2000B28F */  lw         $s2, 0x20($sp)
    /* 1852C 80027D2C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 18530 80027D30 1800B08F */  lw         $s0, 0x18($sp)
    /* 18534 80027D34 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 18538 80027D38 0800E003 */  jr         $ra
    /* 1853C 80027D3C 00000000 */   nop
endlabel CdFile__QueueLoadByName
