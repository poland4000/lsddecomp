.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__SetupScroll, 0x13C

glabel StageRenderer__SetupScroll
    /* 3B6A4 8004AEA4 78FFBD27 */  addiu      $sp, $sp, -0x88
    /* 3B6A8 8004AEA8 7000B0AF */  sw         $s0, 0x70($sp)
    /* 3B6AC 8004AEAC 21808000 */  addu       $s0, $a0, $zero
    /* 3B6B0 8004AEB0 7400B1AF */  sw         $s1, 0x74($sp)
    /* 3B6B4 8004AEB4 2188A000 */  addu       $s1, $a1, $zero
    /* 3B6B8 8004AEB8 8000BFAF */  sw         $ra, 0x80($sp)
    /* 3B6BC 8004AEBC 7C00B3AF */  sw         $s3, 0x7C($sp)
    /* 3B6C0 8004AEC0 7800B2AF */  sw         $s2, 0x78($sp)
    /* 3B6C4 8004AEC4 0C00228E */  lw         $v0, 0xC($s1)
    /* 3B6C8 8004AEC8 00000000 */  nop
    /* 3B6CC 8004AECC 04004010 */  beqz       $v0, .Lfunc_8004AEA4_8004AEE0
    /* 3B6D0 8004AED0 2198C000 */   addu      $s3, $a2, $zero
    /* 3B6D4 8004AED4 1400228E */  lw         $v0, 0x14($s1)
    /* 3B6D8 8004AED8 B92B0108 */  j          .Lfunc_8004AEA4_8004AEE4
    /* 3B6DC 8004AEDC 38004624 */   addiu     $a2, $v0, 0x38
  .Lfunc_8004AEA4_8004AEE0:
    /* 3B6E0 8004AEE0 21300000 */  addu       $a2, $zero, $zero
  .Lfunc_8004AEA4_8004AEE4:
    /* 3B6E4 8004AEE4 0000028E */  lw         $v0, 0x0($s0)
    /* 3B6E8 8004AEE8 21200002 */  addu       $a0, $s0, $zero
    /* 3B6EC 8004AEEC 1001428C */  lw         $v0, 0x110($v0)
    /* 3B6F0 8004AEF0 00000000 */  nop
    /* 3B6F4 8004AEF4 09F84000 */  jalr       $v0
    /* 3B6F8 8004AEF8 4000A527 */   addiu     $a1, $sp, 0x40
    /* 3B6FC 8004AEFC 30004014 */  bnez       $v0, .Lfunc_8004AEA4_8004AFC0
    /* 3B700 8004AF00 1000A727 */   addiu     $a3, $sp, 0x10
    /* 3B704 8004AF04 8800128E */  lw         $s2, 0x88($s0)
    /* 3B708 8004AF08 8C000626 */  addiu      $a2, $s0, 0x8C
    /* 3B70C 8004AF0C BC000826 */  addiu      $t0, $s0, 0xBC
  .Lfunc_8004AEA4_8004AF10:
    /* 3B710 8004AF10 0000C28C */  lw         $v0, 0x0($a2)
    /* 3B714 8004AF14 0400C38C */  lw         $v1, 0x4($a2)
    /* 3B718 8004AF18 0800C48C */  lw         $a0, 0x8($a2)
    /* 3B71C 8004AF1C 0C00C58C */  lw         $a1, 0xC($a2)
    /* 3B720 8004AF20 0000E2AC */  sw         $v0, 0x0($a3)
    /* 3B724 8004AF24 0400E3AC */  sw         $v1, 0x4($a3)
    /* 3B728 8004AF28 0800E4AC */  sw         $a0, 0x8($a3)
    /* 3B72C 8004AF2C 0C00E5AC */  sw         $a1, 0xC($a3)
    /* 3B730 8004AF30 1000C624 */  addiu      $a2, $a2, 0x10
    /* 3B734 8004AF34 F6FFC814 */  bne        $a2, $t0, .Lfunc_8004AEA4_8004AF10
    /* 3B738 8004AF38 1000E724 */   addiu     $a3, $a3, 0x10
    /* 3B73C 8004AF3C 6800028E */  lw         $v0, 0x68($s0)
    /* 3B740 8004AF40 00000000 */  nop
    /* 3B744 8004AF44 0400428C */  lw         $v0, 0x4($v0)
    /* 3B748 8004AF48 00000000 */  nop
    /* 3B74C 8004AF4C 06004014 */  bnez       $v0, .Lfunc_8004AEA4_8004AF68
    /* 3B750 8004AF50 21200002 */   addu      $a0, $s0, $zero
    /* 3B754 8004AF54 4000A527 */  addiu      $a1, $sp, 0x40
    /* 3B758 8004AF58 F82B010C */  jal        StageRenderer__InitScroll
    /* 3B75C 8004AF5C 03000634 */   ori       $a2, $zero, 0x3
    /* 3B760 8004AF60 DE2B0108 */  j          .Lfunc_8004AEA4_8004AF78
    /* 3B764 8004AF64 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_8004AEA4_8004AF68:
    /* 3B768 8004AF68 4000A527 */  addiu      $a1, $sp, 0x40
    /* 3B76C 8004AF6C 0C2C010C */  jal        StageRenderer__CalcScrollBounds
    /* 3B770 8004AF70 03000634 */   ori       $a2, $zero, 0x3
    /* 3B774 8004AF74 21200002 */  addu       $a0, $s0, $zero
  .Lfunc_8004AEA4_8004AF78:
    /* 3B778 8004AF78 21282002 */  addu       $a1, $s1, $zero
    /* 3B77C 8004AF7C 402C010C */  jal        StageRenderer__ApplyScroll
    /* 3B780 8004AF80 21306002 */   addu      $a2, $s3, $zero
    /* 3B784 8004AF84 880012AE */  sw         $s2, 0x88($s0)
    /* 3B788 8004AF88 8C000726 */  addiu      $a3, $s0, 0x8C
    /* 3B78C 8004AF8C 1000A627 */  addiu      $a2, $sp, 0x10
    /* 3B790 8004AF90 4000A827 */  addiu      $t0, $sp, 0x40
  .Lfunc_8004AEA4_8004AF94:
    /* 3B794 8004AF94 0000C28C */  lw         $v0, 0x0($a2)
    /* 3B798 8004AF98 0400C38C */  lw         $v1, 0x4($a2)
    /* 3B79C 8004AF9C 0800C48C */  lw         $a0, 0x8($a2)
    /* 3B7A0 8004AFA0 0C00C58C */  lw         $a1, 0xC($a2)
    /* 3B7A4 8004AFA4 0000E2AC */  sw         $v0, 0x0($a3)
    /* 3B7A8 8004AFA8 0400E3AC */  sw         $v1, 0x4($a3)
    /* 3B7AC 8004AFAC 0800E4AC */  sw         $a0, 0x8($a3)
    /* 3B7B0 8004AFB0 0C00E5AC */  sw         $a1, 0xC($a3)
    /* 3B7B4 8004AFB4 1000C624 */  addiu      $a2, $a2, 0x10
    /* 3B7B8 8004AFB8 F6FFC814 */  bne        $a2, $t0, .Lfunc_8004AEA4_8004AF94
    /* 3B7BC 8004AFBC 1000E724 */   addiu     $a3, $a3, 0x10
  .Lfunc_8004AEA4_8004AFC0:
    /* 3B7C0 8004AFC0 8000BF8F */  lw         $ra, 0x80($sp)
    /* 3B7C4 8004AFC4 7C00B38F */  lw         $s3, 0x7C($sp)
    /* 3B7C8 8004AFC8 7800B28F */  lw         $s2, 0x78($sp)
    /* 3B7CC 8004AFCC 7400B18F */  lw         $s1, 0x74($sp)
    /* 3B7D0 8004AFD0 7000B08F */  lw         $s0, 0x70($sp)
    /* 3B7D4 8004AFD4 8800BD27 */  addiu      $sp, $sp, 0x88
    /* 3B7D8 8004AFD8 0800E003 */  jr         $ra
    /* 3B7DC 8004AFDC 00000000 */   nop
endlabel StageRenderer__SetupScroll
