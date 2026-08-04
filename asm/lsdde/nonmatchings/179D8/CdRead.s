.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdRead, 0x80

glabel CdRead
    /* 19A74 80029274 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 19A78 80029278 1400B1AF */  sw         $s1, 0x14($sp)
    /* 19A7C 8002927C 21888000 */  addu       $s1, $a0, $zero
    /* 19A80 80029280 1800B2AF */  sw         $s2, 0x18($sp)
    /* 19A84 80029284 2190A000 */  addu       $s2, $a1, $zero
    /* 19A88 80029288 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 19A8C 8002928C 2198C000 */  addu       $s3, $a2, $zero
    /* 19A90 80029290 1000B0AF */  sw         $s0, 0x10($sp)
    /* 19A94 80029294 03001034 */  ori        $s0, $zero, 0x3
    /* 19A98 80029298 2000B4AF */  sw         $s4, 0x20($sp)
    /* 19A9C 8002929C FFFF1424 */  addiu      $s4, $zero, -0x1
    /* 19AA0 800292A0 2400BFAF */  sw         $ra, 0x24($sp)
    /* 19AA4 800292A4 21204002 */  addu       $a0, $s2, $zero
  .Lfunc_80029274_800292A8:
    /* 19AA8 800292A8 21282002 */  addu       $a1, $s1, $zero
    /* 19AAC 800292AC 7AAB000C */  jal        CdReadSetup
    /* 19AB0 800292B0 21306002 */   addu      $a2, $s3, $zero
    /* 19AB4 800292B4 03004014 */  bnez       $v0, .Lfunc_80029274_800292C4
    /* 19AB8 800292B8 FFFF1026 */   addiu     $s0, $s0, -0x1
    /* 19ABC 800292BC B4A40008 */  j          .Lfunc_80029274_800292D0
    /* 19AC0 800292C0 01000234 */   ori       $v0, $zero, 0x1
  .Lfunc_80029274_800292C4:
    /* 19AC4 800292C4 F8FF1416 */  bne        $s0, $s4, .Lfunc_80029274_800292A8
    /* 19AC8 800292C8 21204002 */   addu      $a0, $s2, $zero
    /* 19ACC 800292CC 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_80029274_800292D0:
    /* 19AD0 800292D0 2400BF8F */  lw         $ra, 0x24($sp)
    /* 19AD4 800292D4 2000B48F */  lw         $s4, 0x20($sp)
    /* 19AD8 800292D8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 19ADC 800292DC 1800B28F */  lw         $s2, 0x18($sp)
    /* 19AE0 800292E0 1400B18F */  lw         $s1, 0x14($sp)
    /* 19AE4 800292E4 1000B08F */  lw         $s0, 0x10($sp)
    /* 19AE8 800292E8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 19AEC 800292EC 0800E003 */  jr         $ra
    /* 19AF0 800292F0 00000000 */   nop
endlabel CdRead
