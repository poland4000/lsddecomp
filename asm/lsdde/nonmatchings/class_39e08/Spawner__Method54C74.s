.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching Spawner__Method54C74, 0x88

glabel Spawner__Method54C74
    /* 45474 80054C74 7804828F */  lw         $v0, %gp_rel(gSpawnCounter)($gp)
    /* 45478 80054C78 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4547C 80054C7C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 45480 80054C80 21908000 */  addu       $s2, $a0, $zero
    /* 45484 80054C84 2400BFAF */  sw         $ra, 0x24($sp)
    /* 45488 80054C88 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4548C 80054C8C 14004004 */  bltz       $v0, .Lfunc_80054C74_80054CE0
    /* 45490 80054C90 1800B0AF */   sw        $s0, 0x18($sp)
    /* 45494 80054C94 8004828F */  lw         $v0, %gp_rel(gSpawnCounterBufSize)($gp)
    /* 45498 80054C98 00000000 */  nop
    /* 4549C 80054C9C 10004018 */  blez       $v0, .Lfunc_80054C74_80054CE0
    /* 454A0 80054CA0 21800000 */   addu      $s0, $zero, $zero
    /* 454A4 80054CA4 0980113C */  lui        $s1, %hi(gSpawnCounterBuf)
    /* 454A8 80054CA8 C8E03126 */  addiu      $s1, $s1, %lo(gSpawnCounterBuf)
  .Lfunc_80054C74_80054CAC:
    /* 454AC 80054CAC 0000248E */  lw         $a0, 0x0($s1)
    /* 454B0 80054CB0 00000000 */  nop
    /* 454B4 80054CB4 0000828C */  lw         $v0, 0x0($a0)
    /* 454B8 80054CB8 04003126 */  addiu      $s1, $s1, 0x4
    /* 454BC 80054CBC EC00428C */  lw         $v0, 0xEC($v0)
    /* 454C0 80054CC0 00000000 */  nop
    /* 454C4 80054CC4 09F84000 */  jalr       $v0
    /* 454C8 80054CC8 21284002 */   addu      $a1, $s2, $zero
    /* 454CC 80054CCC 8004828F */  lw         $v0, %gp_rel(gSpawnCounterBufSize)($gp)
    /* 454D0 80054CD0 01001026 */  addiu      $s0, $s0, 0x1
    /* 454D4 80054CD4 2A100202 */  slt        $v0, $s0, $v0
    /* 454D8 80054CD8 F4FF4014 */  bnez       $v0, .Lfunc_80054C74_80054CAC
    /* 454DC 80054CDC 00000000 */   nop
  .Lfunc_80054C74_80054CE0:
    /* 454E0 80054CE0 2400BF8F */  lw         $ra, 0x24($sp)
    /* 454E4 80054CE4 2000B28F */  lw         $s2, 0x20($sp)
    /* 454E8 80054CE8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 454EC 80054CEC 1800B08F */  lw         $s0, 0x18($sp)
    /* 454F0 80054CF0 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 454F4 80054CF4 0800E003 */  jr         $ra
    /* 454F8 80054CF8 00000000 */   nop
endlabel Spawner__Method54C74
