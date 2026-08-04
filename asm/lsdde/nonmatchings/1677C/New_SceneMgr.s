.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching New_SceneMgr, 0x60

glabel New_SceneMgr
    /* 1677C 80025F7C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 16780 80025F80 1400B1AF */  sw         $s1, 0x14($sp)
    /* 16784 80025F84 21888000 */  addu       $s1, $a0, $zero
    /* 16788 80025F88 2C000434 */  ori        $a0, $zero, 0x2C
    /* 1678C 80025F8C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 16790 80025F90 CD5E000C */  jal        BMemAlloc
    /* 16794 80025F94 1000B0AF */   sw        $s0, 0x10($sp)
    /* 16798 80025F98 21804000 */  addu       $s0, $v0, $zero
    /* 1679C 80025F9C 09000012 */  beqz       $s0, .Lfunc_80025F7C_80025FC4
    /* 167A0 80025FA0 00000000 */   nop
    /* 167A4 80025FA4 789A000C */  jal        Get_vtable_ClassD3C8
    /* 167A8 80025FA8 00000000 */   nop
    /* 167AC 80025FAC 21200002 */  addu       $a0, $s0, $zero
    /* 167B0 80025FB0 0800428C */  lw         $v0, 0x8($v0)
    /* 167B4 80025FB4 00000000 */  nop
    /* 167B8 80025FB8 09F84000 */  jalr       $v0
    /* 167BC 80025FBC 21282002 */   addu      $a1, $s1, $zero
    /* 167C0 80025FC0 21100002 */  addu       $v0, $s0, $zero
  .Lfunc_80025F7C_80025FC4:
    /* 167C4 80025FC4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 167C8 80025FC8 1400B18F */  lw         $s1, 0x14($sp)
    /* 167CC 80025FCC 1000B08F */  lw         $s0, 0x10($sp)
    /* 167D0 80025FD0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 167D4 80025FD4 0800E003 */  jr         $ra
    /* 167D8 80025FD8 00000000 */   nop
endlabel New_SceneMgr
