.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextPanel__Method5C, 0xD4

glabel TextPanel__Method5C
    /* 3F388 8004EB88 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 3F38C 8004EB8C 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3F390 8004EB90 6000B08F */  lw         $s0, 0x60($sp)
    /* 3F394 8004EB94 4000B4AF */  sw         $s4, 0x40($sp)
    /* 3F398 8004EB98 21A08000 */  addu       $s4, $a0, $zero
    /* 3F39C 8004EB9C 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3F3A0 8004EBA0 2188A000 */  addu       $s1, $a1, $zero
    /* 3F3A4 8004EBA4 3800B2AF */  sw         $s2, 0x38($sp)
    /* 3F3A8 8004EBA8 2190C000 */  addu       $s2, $a2, $zero
    /* 3F3AC 8004EBAC 4400B5AF */  sw         $s5, 0x44($sp)
    /* 3F3B0 8004EBB0 21A8E000 */  addu       $s5, $a3, $zero
    /* 3F3B4 8004EBB4 4800BFAF */  sw         $ra, 0x48($sp)
    /* 3F3B8 8004EBB8 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3F3BC 8004EBBC 0000028E */  lw         $v0, 0x0($s0)
    /* 3F3C0 8004EBC0 00000000 */  nop
    /* 3F3C4 8004EBC4 1A004010 */  beqz       $v0, .Lfunc_8004EB88_8004EC30
    /* 3F3C8 8004EBC8 21980000 */   addu      $s3, $zero, $zero
    /* 3F3CC 8004EBCC 1000A427 */  addiu      $a0, $sp, 0x10
  .Lfunc_8004EB88_8004EBD0:
    /* 3F3D0 8004EBD0 DEA2000C */  jal        Str_Copy
    /* 3F3D4 8004EBD4 2128A002 */   addu      $a1, $s5, $zero
    /* 3F3D8 8004EBD8 0000058E */  lw         $a1, 0x0($s0)
    /* 3F3DC 8004EBDC 4C9C000C */  jal        Str_Concat
    /* 3F3E0 8004EBE0 1000A427 */   addiu     $a0, $sp, 0x10
    /* 3F3E4 8004EBE4 21208002 */  addu       $a0, $s4, $zero
    /* 3F3E8 8004EBE8 0000828E */  lw         $v0, 0x0($s4)
    /* 3F3EC 8004EBEC 0000258E */  lw         $a1, 0x0($s1)
    /* 3F3F0 8004EBF0 5400428C */  lw         $v0, 0x54($v0)
    /* 3F3F4 8004EBF4 00000000 */  nop
    /* 3F3F8 8004EBF8 09F84000 */  jalr       $v0
    /* 3F3FC 8004EBFC 1000A627 */   addiu     $a2, $sp, 0x10
    /* 3F400 8004EC00 06004010 */  beqz       $v0, .Lfunc_8004EB88_8004EC1C
    /* 3F404 8004EC04 00000000 */   nop
    /* 3F408 8004EC08 01007326 */  addiu      $s3, $s3, 0x1
    /* 3F40C 8004EC0C 0000028E */  lw         $v0, 0x0($s0)
    /* 3F410 8004EC10 04003126 */  addiu      $s1, $s1, 0x4
    /* 3F414 8004EC14 000042AE */  sw         $v0, 0x0($s2)
    /* 3F418 8004EC18 04005226 */  addiu      $s2, $s2, 0x4
  .Lfunc_8004EB88_8004EC1C:
    /* 3F41C 8004EC1C 04001026 */  addiu      $s0, $s0, 0x4
    /* 3F420 8004EC20 0000028E */  lw         $v0, 0x0($s0)
    /* 3F424 8004EC24 00000000 */  nop
    /* 3F428 8004EC28 E9FF4014 */  bnez       $v0, .Lfunc_8004EB88_8004EBD0
    /* 3F42C 8004EC2C 1000A427 */   addiu     $a0, $sp, 0x10
  .Lfunc_8004EB88_8004EC30:
    /* 3F430 8004EC30 21106002 */  addu       $v0, $s3, $zero
    /* 3F434 8004EC34 4800BF8F */  lw         $ra, 0x48($sp)
    /* 3F438 8004EC38 4400B58F */  lw         $s5, 0x44($sp)
    /* 3F43C 8004EC3C 4000B48F */  lw         $s4, 0x40($sp)
    /* 3F440 8004EC40 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 3F444 8004EC44 3800B28F */  lw         $s2, 0x38($sp)
    /* 3F448 8004EC48 3400B18F */  lw         $s1, 0x34($sp)
    /* 3F44C 8004EC4C 3000B08F */  lw         $s0, 0x30($sp)
    /* 3F450 8004EC50 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 3F454 8004EC54 0800E003 */  jr         $ra
    /* 3F458 8004EC58 00000000 */   nop
endlabel TextPanel__Method5C
