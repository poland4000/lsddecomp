.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching ListMenu__Constructor, 0xC4

glabel ListMenu__Constructor
    /* 41414 80050C14 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 41418 80050C18 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4141C 80050C1C 21808000 */  addu       $s0, $a0, $zero
    /* 41420 80050C20 1400B1AF */  sw         $s1, 0x14($sp)
    /* 41424 80050C24 2188A000 */  addu       $s1, $a1, $zero
    /* 41428 80050C28 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4142C 80050C2C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 41430 80050C30 E460000C */  jal        Get_vtable_BasicClass
    /* 41434 80050C34 2190C000 */   addu      $s2, $a2, $zero
    /* 41438 80050C38 0800428C */  lw         $v0, 0x8($v0)
    /* 4143C 80050C3C 00000000 */  nop
    /* 41440 80050C40 09F84000 */  jalr       $v0
    /* 41444 80050C44 21200002 */   addu      $a0, $s0, $zero
    /* 41448 80050C48 9346010C */  jal        ListMenu__GetVtable
    /* 4144C 80050C4C 00000000 */   nop
    /* 41450 80050C50 21202002 */  addu       $a0, $s1, $zero
    /* 41454 80050C54 D24C000C */  jal        func_80013348
    /* 41458 80050C58 000002AE */   sw        $v0, 0x0($s0)
    /* 4145C 80050C5C 04004424 */  addiu      $a0, $v0, 0x4
    /* 41460 80050C60 CD5E000C */  jal        BMemAlloc
    /* 41464 80050C64 100002AE */   sw        $v0, 0x10($s0)
    /* 41468 80050C68 DC02838F */  lw         $v1, %gp_rel(D_8008AAE4)($gp)
    /* 4146C 80050C6C 280002AE */  sw         $v0, 0x28($s0)
    /* 41470 80050C70 00006290 */  lbu        $v0, 0x0($v1)
    /* 41474 80050C74 00000000 */  nop
    /* 41478 80050C78 06004010 */  beqz       $v0, .Lfunc_80050C14_80050C94
    /* 4147C 80050C7C 21280000 */   addu      $a1, $zero, $zero
  .Lfunc_80050C14_80050C80:
    /* 41480 80050C80 01006324 */  addiu      $v1, $v1, 0x1
    /* 41484 80050C84 00006290 */  lbu        $v0, 0x0($v1)
    /* 41488 80050C88 00000000 */  nop
    /* 4148C 80050C8C FCFF4014 */  bnez       $v0, .Lfunc_80050C14_80050C80
    /* 41490 80050C90 0100A524 */   addiu     $a1, $a1, 0x1
  .Lfunc_80050C14_80050C94:
    /* 41494 80050C94 21200002 */  addu       $a0, $s0, $zero
    /* 41498 80050C98 3643010C */  jal        ListMenu__ClearFields
    /* 4149C 80050C9C 140005AE */   sw        $a1, 0x14($s0)
    /* 414A0 80050CA0 21200002 */  addu       $a0, $s0, $zero
    /* 414A4 80050CA4 0000828C */  lw         $v0, 0x0($a0)
    /* 414A8 80050CA8 21282002 */  addu       $a1, $s1, $zero
    /* 414AC 80050CAC 4000428C */  lw         $v0, 0x40($v0)
    /* 414B0 80050CB0 00000000 */  nop
    /* 414B4 80050CB4 09F84000 */  jalr       $v0
    /* 414B8 80050CB8 21304002 */   addu      $a2, $s2, $zero
    /* 414BC 80050CBC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 414C0 80050CC0 1800B28F */  lw         $s2, 0x18($sp)
    /* 414C4 80050CC4 1400B18F */  lw         $s1, 0x14($sp)
    /* 414C8 80050CC8 1000B08F */  lw         $s0, 0x10($sp)
    /* 414CC 80050CCC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 414D0 80050CD0 0800E003 */  jr         $ra
    /* 414D4 80050CD4 00000000 */   nop
endlabel ListMenu__Constructor
