.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SceneNode__SetParent, 0x40

glabel SceneNode__SetParent
    /* EF70 8001E770 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* EF74 8001E774 21108000 */  addu       $v0, $a0, $zero
    /* EF78 8001E778 1000BFAF */  sw         $ra, 0x10($sp)
    /* EF7C 8001E77C 200045AC */  sw         $a1, 0x20($v0)
    /* EF80 8001E780 1000A38C */  lw         $v1, 0x10($a1)
    /* EF84 8001E784 2000448C */  lw         $a0, 0x20($v0)
    /* EF88 8001E788 10004524 */  addiu      $a1, $v0, 0x10
    /* EF8C 8001E78C 180043AC */  sw         $v1, 0x18($v0)
    /* EF90 8001E790 0C00848C */  lw         $a0, 0xC($a0)
    /* EF94 8001E794 21300000 */  addu       $a2, $zero, $zero
    /* EF98 8001E798 DC7B000C */  jal        func_8001EF70
    /* EF9C 8001E79C 0C008424 */   addiu     $a0, $a0, 0xC
    /* EFA0 8001E7A0 1000BF8F */  lw         $ra, 0x10($sp)
    /* EFA4 8001E7A4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* EFA8 8001E7A8 0800E003 */  jr         $ra
    /* EFAC 8001E7AC 00000000 */   nop
endlabel SceneNode__SetParent
