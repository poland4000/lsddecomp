.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching ListInsert, 0x5C

glabel ListInsert
    /* 89AC 800181AC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 89B0 800181B0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 89B4 800181B4 21808000 */  addu       $s0, $a0, $zero
    /* 89B8 800181B8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 89BC 800181BC 2188A000 */  addu       $s1, $a1, $zero
    /* 89C0 800181C0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 89C4 800181C4 CD5E000C */  jal        BMemAlloc
    /* 89C8 800181C8 08000434 */   ori       $a0, $zero, 0x8
    /* 89CC 800181CC 21204000 */  addu       $a0, $v0, $zero
    /* 89D0 800181D0 03008014 */  bnez       $a0, .Lfunc_800181AC_800181E0
    /* 89D4 800181D4 01000234 */   ori       $v0, $zero, 0x1
    /* 89D8 800181D8 7C600008 */  j          .Lfunc_800181AC_800181F0
    /* 89DC 800181DC 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_800181AC_800181E0:
    /* 89E0 800181E0 0000038E */  lw         $v1, 0x0($s0)
    /* 89E4 800181E4 040091AC */  sw         $s1, 0x4($a0)
    /* 89E8 800181E8 000083AC */  sw         $v1, 0x0($a0)
    /* 89EC 800181EC 000004AE */  sw         $a0, 0x0($s0)
  .Lfunc_800181AC_800181F0:
    /* 89F0 800181F0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 89F4 800181F4 1400B18F */  lw         $s1, 0x14($sp)
    /* 89F8 800181F8 1000B08F */  lw         $s0, 0x10($sp)
    /* 89FC 800181FC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8A00 80018200 0800E003 */  jr         $ra
    /* 8A04 80018204 00000000 */   nop
endlabel ListInsert
