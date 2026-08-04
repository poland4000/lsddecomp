.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SceneNode__HandleMessage, 0x6C

glabel SceneNode__HandleMessage
    /* D448 8001CC48 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* D44C 8001CC4C 1400B1AF */  sw         $s1, 0x14($sp)
    /* D450 8001CC50 21888000 */  addu       $s1, $a0, $zero
    /* D454 8001CC54 1000B0AF */  sw         $s0, 0x10($sp)
    /* D458 8001CC58 1800BFAF */  sw         $ra, 0x18($sp)
    /* D45C 8001CC5C E460000C */  jal        Get_vtable_BasicClass
    /* D460 8001CC60 2180A000 */   addu      $s0, $a1, $zero
    /* D464 8001CC64 21202002 */  addu       $a0, $s1, $zero
    /* D468 8001CC68 1000428C */  lw         $v0, 0x10($v0)
    /* D46C 8001CC6C 00000000 */  nop
    /* D470 8001CC70 09F84000 */  jalr       $v0
    /* D474 8001CC74 21280002 */   addu      $a1, $s0, $zero
    /* D478 8001CC78 0000028E */  lw         $v0, 0x0($s0)
    /* D47C 8001CC7C 00000000 */  nop
    /* D480 8001CC80 0000428C */  lw         $v0, 0x0($v0)
    /* D484 8001CC84 09000334 */  ori        $v1, $zero, 0x9
    /* D488 8001CC88 0F004230 */  andi       $v0, $v0, 0xF
    /* D48C 8001CC8C 03004314 */  bne        $v0, $v1, .Lfunc_8001CC48_8001CC9C
    /* D490 8001CC90 21202002 */   addu      $a0, $s1, $zero
    /* D494 8001CC94 DC79000C */  jal        SceneNode__SetParent
    /* D498 8001CC98 21280002 */   addu      $a1, $s0, $zero
  .Lfunc_8001CC48_8001CC9C:
    /* D49C 8001CC9C 1800BF8F */  lw         $ra, 0x18($sp)
    /* D4A0 8001CCA0 1400B18F */  lw         $s1, 0x14($sp)
    /* D4A4 8001CCA4 1000B08F */  lw         $s0, 0x10($sp)
    /* D4A8 8001CCA8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* D4AC 8001CCAC 0800E003 */  jr         $ra
    /* D4B0 8001CCB0 00000000 */   nop
endlabel SceneNode__HandleMessage
