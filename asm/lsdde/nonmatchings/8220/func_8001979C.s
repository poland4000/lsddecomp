.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001979C, 0x28

glabel func_8001979C
    /* 9F9C 8001979C 0600A010 */  beqz       $a1, .Lfunc_8001979C_800197B8
    /* 9FA0 800197A0 2C008224 */   addiu     $v0, $a0, 0x2C
    /* 9FA4 800197A4 08008CE8 */  swc2       $12, 0x8($a0)
    /* 9FA8 800197A8 14008DE8 */  swc2       $13, 0x14($a0)
    /* 9FAC 800197AC 20008EE8 */  swc2       $14, 0x20($a0)
    /* 9FB0 800197B0 EF650008 */  j          .Lfunc_8001979C_800197BC
    /* 9FB4 800197B4 00000000 */   nop
  .Lfunc_8001979C_800197B8:
    /* 9FB8 800197B8 00004EE8 */  swc2       $14, 0x0($v0)
  .Lfunc_8001979C_800197BC:
    /* 9FBC 800197BC 0800E003 */  jr         $ra
    /* 9FC0 800197C0 00000000 */   nop
endlabel func_8001979C
