.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80065E1C, 0x110

glabel func_80065E1C
    /* 5661C 80065E1C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 56620 80065E20 2800B2AF */  sw         $s2, 0x28($sp)
    /* 56624 80065E24 21908000 */  addu       $s2, $a0, $zero
    /* 56628 80065E28 3000BFAF */  sw         $ra, 0x30($sp)
    /* 5662C 80065E2C 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 56630 80065E30 2400B1AF */  sw         $s1, 0x24($sp)
    /* 56634 80065E34 2000B0AF */  sw         $s0, 0x20($sp)
    /* 56638 80065E38 5C00448E */  lw         $a0, 0x5C($s2)
    /* 5663C 80065E3C 00000000 */  nop
    /* 56640 80065E40 0000828C */  lw         $v0, 0x0($a0)
    /* 56644 80065E44 21280000 */  addu       $a1, $zero, $zero
    /* 56648 80065E48 8000428C */  lw         $v0, 0x80($v0)
    /* 5664C 80065E4C 00000000 */  nop
    /* 56650 80065E50 09F84000 */  jalr       $v0
    /* 56654 80065E54 1000A627 */   addiu     $a2, $sp, 0x10
    /* 56658 80065E58 FF005330 */  andi       $s3, $v0, 0xFF
    /* 5665C 80065E5C CD5E000C */  jal        BMemAlloc
    /* 56660 80065E60 80201300 */   sll       $a0, $s3, 2
    /* 56664 80065E64 25004010 */  beqz       $v0, .Lfunc_80065E1C_80065EFC
    /* 56668 80065E68 700042AE */   sw        $v0, 0x70($s2)
    /* 5666C 80065E6C CD5E000C */  jal        BMemAlloc
    /* 56670 80065E70 21206002 */   addu      $a0, $s3, $zero
    /* 56674 80065E74 21004010 */  beqz       $v0, .Lfunc_80065E1C_80065EFC
    /* 56678 80065E78 740042AE */   sw        $v0, 0x74($s2)
    /* 5667C 80065E7C 5C00448E */  lw         $a0, 0x5C($s2)
    /* 56680 80065E80 21284000 */  addu       $a1, $v0, $zero
    /* 56684 80065E84 0000828C */  lw         $v0, 0x0($a0)
    /* 56688 80065E88 00000000 */  nop
    /* 5668C 80065E8C 8000428C */  lw         $v0, 0x80($v0)
    /* 56690 80065E90 00000000 */  nop
    /* 56694 80065E94 09F84000 */  jalr       $v0
    /* 56698 80065E98 1000A627 */   addiu     $a2, $sp, 0x10
    /* 5669C 80065E9C 7000518E */  lw         $s1, 0x70($s2)
    /* 566A0 80065EA0 21800000 */  addu       $s0, $zero, $zero
    /* 566A4 80065EA4 0D006012 */  beqz       $s3, .Lfunc_80065E1C_80065EDC
    /* 566A8 80065EA8 6C0040AE */   sw        $zero, 0x6C($s2)
  .Lfunc_80065E1C_80065EAC:
    /* 566AC 80065EAC F95B010C */  jal        ActorBase__Create
    /* 566B0 80065EB0 00000000 */   nop
    /* 566B4 80065EB4 000022AE */  sw         $v0, 0x0($s1)
    /* 566B8 80065EB8 11004010 */  beqz       $v0, .Lfunc_80065E1C_80065F00
    /* 566BC 80065EBC 04003126 */   addiu     $s1, $s1, 0x4
    /* 566C0 80065EC0 6C00428E */  lw         $v0, 0x6C($s2)
    /* 566C4 80065EC4 01001026 */  addiu      $s0, $s0, 0x1
    /* 566C8 80065EC8 01004224 */  addiu      $v0, $v0, 0x1
    /* 566CC 80065ECC 6C0042AE */  sw         $v0, 0x6C($s2)
    /* 566D0 80065ED0 2A101302 */  slt        $v0, $s0, $s3
    /* 566D4 80065ED4 F5FF4014 */  bnez       $v0, .Lfunc_80065E1C_80065EAC
    /* 566D8 80065ED8 00000000 */   nop
  .Lfunc_80065E1C_80065EDC:
    /* 566DC 80065EDC 1000A28F */  lw         $v0, 0x10($sp)
    /* 566E0 80065EE0 7000438E */  lw         $v1, 0x70($s2)
    /* 566E4 80065EE4 80100200 */  sll        $v0, $v0, 2
    /* 566E8 80065EE8 21104300 */  addu       $v0, $v0, $v1
    /* 566EC 80065EEC 0000438C */  lw         $v1, 0x0($v0)
    /* 566F0 80065EF0 21100000 */  addu       $v0, $zero, $zero
    /* 566F4 80065EF4 C3970108 */  j          .Lfunc_80065E1C_80065F0C
    /* 566F8 80065EF8 680043AE */   sw        $v1, 0x68($s2)
  .Lfunc_80065E1C_80065EFC:
    /* 566FC 80065EFC 740040AE */  sw         $zero, 0x74($s2)
  .Lfunc_80065E1C_80065F00:
    /* 56700 80065F00 CB97010C */  jal        func_80065F2C
    /* 56704 80065F04 21204002 */   addu      $a0, $s2, $zero
    /* 56708 80065F08 01000234 */  ori        $v0, $zero, 0x1
  .Lfunc_80065E1C_80065F0C:
    /* 5670C 80065F0C 3000BF8F */  lw         $ra, 0x30($sp)
    /* 56710 80065F10 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 56714 80065F14 2800B28F */  lw         $s2, 0x28($sp)
    /* 56718 80065F18 2400B18F */  lw         $s1, 0x24($sp)
    /* 5671C 80065F1C 2000B08F */  lw         $s0, 0x20($sp)
    /* 56720 80065F20 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 56724 80065F24 0800E003 */  jr         $ra
    /* 56728 80065F28 00000000 */   nop
endlabel func_80065E1C
