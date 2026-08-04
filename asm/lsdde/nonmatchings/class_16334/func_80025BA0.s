.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80025BA0, 0x90

glabel func_80025BA0
    /* 163A0 80025BA0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 163A4 80025BA4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 163A8 80025BA8 21808000 */  addu       $s0, $a0, $zero
    /* 163AC 80025BAC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 163B0 80025BB0 2188A000 */  addu       $s1, $a1, $zero
    /* 163B4 80025BB4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 163B8 80025BB8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 163BC 80025BBC E460000C */  jal        Get_vtable_BasicClass
    /* 163C0 80025BC0 2190C000 */   addu      $s2, $a2, $zero
    /* 163C4 80025BC4 0800428C */  lw         $v0, 0x8($v0)
    /* 163C8 80025BC8 00000000 */  nop
    /* 163CC 80025BCC 09F84000 */  jalr       $v0
    /* 163D0 80025BD0 21200002 */   addu      $a0, $s0, $zero
    /* 163D4 80025BD4 A797000C */  jal        Get_vtable_Pad
    /* 163D8 80025BD8 00000000 */   nop
    /* 163DC 80025BDC 4000838F */  lw         $v1, %gp_rel(gPadInstanceCount)($gp)
    /* 163E0 80025BE0 000002AE */  sw         $v0, 0x0($s0)
    /* 163E4 80025BE4 01006224 */  addiu      $v0, $v1, 0x1
    /* 163E8 80025BE8 400082AF */  sw         $v0, %gp_rel(gPadInstanceCount)($gp)
    /* 163EC 80025BEC 03006014 */  bnez       $v1, .Lfunc_80025BA0_80025BFC
    /* 163F0 80025BF0 00000000 */   nop
    /* 163F4 80025BF4 AB97000C */  jal        func_80025EAC
    /* 163F8 80025BF8 21202002 */   addu      $a0, $s1, $zero
  .Lfunc_80025BA0_80025BFC:
    /* 163FC 80025BFC 0000028E */  lw         $v0, 0x0($s0)
    /* 16400 80025C00 21200002 */  addu       $a0, $s0, $zero
    /* 16404 80025C04 4000428C */  lw         $v0, 0x40($v0)
    /* 16408 80025C08 00000000 */  nop
    /* 1640C 80025C0C 09F84000 */  jalr       $v0
    /* 16410 80025C10 21284002 */   addu      $a1, $s2, $zero
    /* 16414 80025C14 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 16418 80025C18 1800B28F */  lw         $s2, 0x18($sp)
    /* 1641C 80025C1C 1400B18F */  lw         $s1, 0x14($sp)
    /* 16420 80025C20 1000B08F */  lw         $s0, 0x10($sp)
    /* 16424 80025C24 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 16428 80025C28 0800E003 */  jr         $ra
    /* 1642C 80025C2C 00000000 */   nop
endlabel func_80025BA0
