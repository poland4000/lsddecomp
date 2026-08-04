.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80065C5C, 0x90

glabel func_80065C5C
    /* 5645C 80065C5C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 56460 80065C60 1000B0AF */  sw         $s0, 0x10($sp)
    /* 56464 80065C64 21808000 */  addu       $s0, $a0, $zero
    /* 56468 80065C68 2120A000 */  addu       $a0, $a1, $zero
    /* 5646C 80065C6C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 56470 80065C70 0C00828C */  lw         $v0, 0xC($a0)
    /* 56474 80065C74 00000000 */  nop
    /* 56478 80065C78 04004010 */  beqz       $v0, .Lfunc_80065C5C_80065C8C
    /* 5647C 80065C7C 00000000 */   nop
    /* 56480 80065C80 5C0002AE */  sw         $v0, 0x5C($s0)
    /* 56484 80065C84 28970108 */  j          .Lfunc_80065C5C_80065CA0
    /* 56488 80065C88 600000AE */   sw        $zero, 0x60($s0)
  .Lfunc_80065C5C_80065C8C:
    /* 5648C 80065C8C A311010C */  jal        func_8004468C
    /* 56490 80065C90 00000000 */   nop
    /* 56494 80065C94 5C0002AE */  sw         $v0, 0x5C($s0)
    /* 56498 80065C98 01000234 */  ori        $v0, $zero, 0x1
    /* 5649C 80065C9C 600002AE */  sw         $v0, 0x60($s0)
  .Lfunc_80065C5C_80065CA0:
    /* 564A0 80065CA0 5C00028E */  lw         $v0, 0x5C($s0)
    /* 564A4 80065CA4 00000000 */  nop
    /* 564A8 80065CA8 05004014 */  bnez       $v0, .Lfunc_80065C5C_80065CC0
    /* 564AC 80065CAC 00000000 */   nop
    /* 564B0 80065CB0 3B97010C */  jal        func_80065CEC
    /* 564B4 80065CB4 21200002 */   addu      $a0, $s0, $zero
    /* 564B8 80065CB8 36970108 */  j          .Lfunc_80065C5C_80065CD8
    /* 564BC 80065CBC 01000234 */   ori       $v0, $zero, 0x1
  .Lfunc_80065C5C_80065CC0:
    /* 564C0 80065CC0 0000028E */  lw         $v0, 0x0($s0)
    /* 564C4 80065CC4 00000000 */  nop
    /* 564C8 80065CC8 0001428C */  lw         $v0, 0x100($v0)
    /* 564CC 80065CCC 00000000 */  nop
    /* 564D0 80065CD0 09F84000 */  jalr       $v0
    /* 564D4 80065CD4 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_80065C5C_80065CD8:
    /* 564D8 80065CD8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 564DC 80065CDC 1000B08F */  lw         $s0, 0x10($sp)
    /* 564E0 80065CE0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 564E4 80065CE4 0800E003 */  jr         $ra
    /* 564E8 80065CE8 00000000 */   nop
endlabel func_80065C5C
