.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching ActorBase__AnimFallback, 0x11C

glabel ActorBase__AnimFallback
    /* 47E68 80057668 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* 47E6C 8005766C A000B2AF */  sw         $s2, 0xA0($sp)
    /* 47E70 80057670 21908000 */  addu       $s2, $a0, $zero
    /* 47E74 80057674 AC00BFAF */  sw         $ra, 0xAC($sp)
    /* 47E78 80057678 A800B4AF */  sw         $s4, 0xA8($sp)
    /* 47E7C 8005767C A400B3AF */  sw         $s3, 0xA4($sp)
    /* 47E80 80057680 9C00B1AF */  sw         $s1, 0x9C($sp)
    /* 47E84 80057684 9800B0AF */  sw         $s0, 0x98($sp)
    /* 47E88 80057688 4C00448E */  lw         $a0, 0x4C($s2)
    /* 47E8C 8005768C 00000000 */  nop
    /* 47E90 80057690 33008010 */  beqz       $a0, .Lfunc_80057668_80057760
    /* 47E94 80057694 21100000 */   addu      $v0, $zero, $zero
    /* 47E98 80057698 1800A527 */  addiu      $a1, $sp, 0x18
    /* 47E9C 8005769C 1400428E */  lw         $v0, 0x14($s2)
    /* 47EA0 800576A0 0000838C */  lw         $v1, 0x0($a0)
    /* 47EA4 800576A4 18005424 */  addiu      $s4, $v0, 0x18
    /* 47EA8 800576A8 1001628C */  lw         $v0, 0x110($v1)
    /* 47EAC 800576AC 00000000 */  nop
    /* 47EB0 800576B0 09F84000 */  jalr       $v0
    /* 47EB4 800576B4 21308002 */   addu      $a2, $s4, $zero
    /* 47EB8 800576B8 29004014 */  bnez       $v0, .Lfunc_80057668_80057760
    /* 47EBC 800576BC 21100000 */   addu      $v0, $zero, $zero
    /* 47EC0 800576C0 21204002 */  addu       $a0, $s2, $zero
    /* 47EC4 800576C4 4800B127 */  addiu      $s1, $sp, 0x48
    /* 47EC8 800576C8 21282002 */  addu       $a1, $s1, $zero
    /* 47ECC 800576CC 7800B027 */  addiu      $s0, $sp, 0x78
    /* 47ED0 800576D0 21300002 */  addu       $a2, $s0, $zero
    /* 47ED4 800576D4 1800A727 */  addiu      $a3, $sp, 0x18
    /* 47ED8 800576D8 01000234 */  ori        $v0, $zero, 0x1
    /* 47EDC 800576DC E15D010C */  jal        ActorBase__Method57784
    /* 47EE0 800576E0 1000A2AF */   sw        $v0, 0x10($sp)
    /* 47EE4 800576E4 21204002 */  addu       $a0, $s2, $zero
    /* 47EE8 800576E8 8800B327 */  addiu      $s3, $sp, 0x88
    /* 47EEC 800576EC 21286002 */  addu       $a1, $s3, $zero
    /* 47EF0 800576F0 21308002 */  addu       $a2, $s4, $zero
    /* 47EF4 800576F4 21384000 */  addu       $a3, $v0, $zero
    /* 47EF8 800576F8 1000B1AF */  sw         $s1, 0x10($sp)
    /* 47EFC 800576FC 555E010C */  jal        ActorBase__Method57954
    /* 47F00 80057700 1400B0AF */   sw        $s0, 0x14($sp)
    /* 47F04 80057704 0F004010 */  beqz       $v0, .Lfunc_80057668_80057744
    /* 47F08 80057708 280042AE */   sw        $v0, 0x28($s2)
    /* 47F0C 8005770C 0000428E */  lw         $v0, 0x0($s2)
    /* 47F10 80057710 21204002 */  addu       $a0, $s2, $zero
    /* 47F14 80057714 BC00428C */  lw         $v0, 0xBC($v0)
    /* 47F18 80057718 00000000 */  nop
    /* 47F1C 8005771C 09F84000 */  jalr       $v0
    /* 47F20 80057720 21286002 */   addu      $a1, $s3, $zero
    /* 47F24 80057724 0000428E */  lw         $v0, 0x0($s2)
    /* 47F28 80057728 21204002 */  addu       $a0, $s2, $zero
    /* 47F2C 8005772C 8800428C */  lw         $v0, 0x88($v0)
    /* 47F30 80057730 00000000 */  nop
    /* 47F34 80057734 09F84000 */  jalr       $v0
    /* 47F38 80057738 FFFF0524 */   addiu     $a1, $zero, -0x1
    /* 47F3C 8005773C D85D0108 */  j          .Lfunc_80057668_80057760
    /* 47F40 80057740 01000234 */   ori       $v0, $zero, 0x1
  .Lfunc_80057668_80057744:
    /* 47F44 80057744 0000428E */  lw         $v0, 0x0($s2)
    /* 47F48 80057748 21204002 */  addu       $a0, $s2, $zero
    /* 47F4C 8005774C 8800428C */  lw         $v0, 0x88($v0)
    /* 47F50 80057750 00000000 */  nop
    /* 47F54 80057754 09F84000 */  jalr       $v0
    /* 47F58 80057758 FEFF0524 */   addiu     $a1, $zero, -0x2
    /* 47F5C 8005775C 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_80057668_80057760:
    /* 47F60 80057760 AC00BF8F */  lw         $ra, 0xAC($sp)
    /* 47F64 80057764 A800B48F */  lw         $s4, 0xA8($sp)
    /* 47F68 80057768 A400B38F */  lw         $s3, 0xA4($sp)
    /* 47F6C 8005776C A000B28F */  lw         $s2, 0xA0($sp)
    /* 47F70 80057770 9C00B18F */  lw         $s1, 0x9C($sp)
    /* 47F74 80057774 9800B08F */  lw         $s0, 0x98($sp)
    /* 47F78 80057778 B000BD27 */  addiu      $sp, $sp, 0xB0
    /* 47F7C 8005777C 0800E003 */  jr         $ra
    /* 47F80 80057780 00000000 */   nop
endlabel ActorBase__AnimFallback
