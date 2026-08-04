.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001CCB4, 0x6C

glabel func_8001CCB4
    /* D4B4 8001CCB4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* D4B8 8001CCB8 1400B1AF */  sw         $s1, 0x14($sp)
    /* D4BC 8001CCBC 2188A000 */  addu       $s1, $a1, $zero
    /* D4C0 8001CCC0 1800BFAF */  sw         $ra, 0x18($sp)
    /* D4C4 8001CCC4 1000B0AF */  sw         $s0, 0x10($sp)
    /* D4C8 8001CCC8 0000228E */  lw         $v0, 0x0($s1)
    /* D4CC 8001CCCC 00000000 */  nop
    /* D4D0 8001CCD0 0000428C */  lw         $v0, 0x0($v0)
    /* D4D4 8001CCD4 09000334 */  ori        $v1, $zero, 0x9
    /* D4D8 8001CCD8 0F004230 */  andi       $v0, $v0, 0xF
    /* D4DC 8001CCDC 03004314 */  bne        $v0, $v1, .Lfunc_8001CCB4_8001CCEC
    /* D4E0 8001CCE0 21808000 */   addu      $s0, $a0, $zero
    /* D4E4 8001CCE4 EC79000C */  jal        SceneNode__ClearParent
    /* D4E8 8001CCE8 00000000 */   nop
  .Lfunc_8001CCB4_8001CCEC:
    /* D4EC 8001CCEC E460000C */  jal        Get_vtable_BasicClass
    /* D4F0 8001CCF0 00000000 */   nop
    /* D4F4 8001CCF4 21200002 */  addu       $a0, $s0, $zero
    /* D4F8 8001CCF8 1400428C */  lw         $v0, 0x14($v0)
    /* D4FC 8001CCFC 00000000 */  nop
    /* D500 8001CD00 09F84000 */  jalr       $v0
    /* D504 8001CD04 21282002 */   addu      $a1, $s1, $zero
    /* D508 8001CD08 1800BF8F */  lw         $ra, 0x18($sp)
    /* D50C 8001CD0C 1400B18F */  lw         $s1, 0x14($sp)
    /* D510 8001CD10 1000B08F */  lw         $s0, 0x10($sp)
    /* D514 8001CD14 2000BD27 */  addiu      $sp, $sp, 0x20
    /* D518 8001CD18 0800E003 */  jr         $ra
    /* D51C 8001CD1C 00000000 */   nop
endlabel func_8001CCB4
