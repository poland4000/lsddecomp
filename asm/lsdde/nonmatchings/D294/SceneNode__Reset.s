.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SceneNode__Reset, 0x40

glabel SceneNode__Reset
    /* D520 8001CD20 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D524 8001CD24 1000B0AF */  sw         $s0, 0x10($sp)
    /* D528 8001CD28 1400BFAF */  sw         $ra, 0x14($sp)
    /* D52C 8001CD2C EC79000C */  jal        SceneNode__ClearParent
    /* D530 8001CD30 21808000 */   addu      $s0, $a0, $zero
    /* D534 8001CD34 E460000C */  jal        Get_vtable_BasicClass
    /* D538 8001CD38 00000000 */   nop
    /* D53C 8001CD3C 1800428C */  lw         $v0, 0x18($v0)
    /* D540 8001CD40 00000000 */  nop
    /* D544 8001CD44 09F84000 */  jalr       $v0
    /* D548 8001CD48 21200002 */   addu      $a0, $s0, $zero
    /* D54C 8001CD4C 1400BF8F */  lw         $ra, 0x14($sp)
    /* D550 8001CD50 1000B08F */  lw         $s0, 0x10($sp)
    /* D554 8001CD54 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D558 8001CD58 0800E003 */  jr         $ra
    /* D55C 8001CD5C 00000000 */   nop
endlabel SceneNode__Reset
