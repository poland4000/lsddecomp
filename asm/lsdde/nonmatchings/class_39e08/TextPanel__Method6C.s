.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextPanel__Method6C, 0x80

glabel TextPanel__Method6C
    /* 3FD5C 8004F55C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3FD60 8004F560 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3FD64 8004F564 21808000 */  addu       $s0, $a0, $zero
    /* 3FD68 8004F568 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3FD6C 8004F56C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3FD70 8004F570 300005AE */  sw         $a1, 0x30($s0)
    /* 3FD74 8004F574 3400A28F */  lw         $v0, 0x34($sp)
    /* 3FD78 8004F578 3800A38F */  lw         $v1, 0x38($sp)
    /* 3FD7C 8004F57C 0000088E */  lw         $t0, 0x0($s0)
    /* 3FD80 8004F580 340006AE */  sw         $a2, 0x34($s0)
    /* 3FD84 8004F584 380000AE */  sw         $zero, 0x38($s0)
    /* 3FD88 8004F588 680002AE */  sw         $v0, 0x68($s0)
    /* 3FD8C 8004F58C 6C0003AE */  sw         $v1, 0x6C($s0)
    /* 3FD90 8004F590 1000028D */  lw         $v0, 0x10($t0)
    /* 3FD94 8004F594 3000B18F */  lw         $s1, 0x30($sp)
    /* 3FD98 8004F598 09F84000 */  jalr       $v0
    /* 3FD9C 8004F59C 2128E000 */   addu      $a1, $a3, $zero
    /* 3FDA0 8004F5A0 0000028E */  lw         $v0, 0x0($s0)
    /* 3FDA4 8004F5A4 21200002 */  addu       $a0, $s0, $zero
    /* 3FDA8 8004F5A8 1000428C */  lw         $v0, 0x10($v0)
    /* 3FDAC 8004F5AC 00000000 */  nop
    /* 3FDB0 8004F5B0 09F84000 */  jalr       $v0
    /* 3FDB4 8004F5B4 21282002 */   addu      $a1, $s1, $zero
    /* 3FDB8 8004F5B8 700000AE */  sw         $zero, 0x70($s0)
    /* 3FDBC 8004F5BC 280000AE */  sw         $zero, 0x28($s0)
    /* 3FDC0 8004F5C0 240000AE */  sw         $zero, 0x24($s0)
    /* 3FDC4 8004F5C4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3FDC8 8004F5C8 1400B18F */  lw         $s1, 0x14($sp)
    /* 3FDCC 8004F5CC 1000B08F */  lw         $s0, 0x10($sp)
    /* 3FDD0 8004F5D0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3FDD4 8004F5D4 0800E003 */  jr         $ra
    /* 3FDD8 8004F5D8 00000000 */   nop
endlabel TextPanel__Method6C
