.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SoundPlayer__Release, 0xC4

glabel SoundPlayer__Release
    /* 1CE38 8002C638 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1CE3C 8002C63C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1CE40 8002C640 21808000 */  addu       $s0, $a0, $zero
    /* 1CE44 8002C644 1400BFAF */  sw         $ra, 0x14($sp)
    /* 1CE48 8002C648 54000486 */  lh         $a0, 0x54($s0)
    /* 1CE4C 8002C64C 08D0000C */  jal        SndStopSeq
    /* 1CE50 8002C650 00000000 */   nop
    /* 1CE54 8002C654 BC00828F */  lw         $v0, %gp_rel(gSoundPlayerCount)($gp)
    /* 1CE58 8002C658 00000000 */  nop
    /* 1CE5C 8002C65C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1CE60 8002C660 BC0082AF */  sw         $v0, %gp_rel(gSoundPlayerCount)($gp)
    /* 1CE64 8002C664 02004104 */  bgez       $v0, .Lfunc_8002C638_8002C670
    /* 1CE68 8002C668 00000000 */   nop
    /* 1CE6C 8002C66C BC0080AF */  sw         $zero, %gp_rel(gSoundPlayerCount)($gp)
  .Lfunc_8002C638_8002C670:
    /* 1CE70 8002C670 BC00828F */  lw         $v0, %gp_rel(gSoundPlayerCount)($gp)
    /* 1CE74 8002C674 00000000 */  nop
    /* 1CE78 8002C678 0C004014 */  bnez       $v0, .Lfunc_8002C638_8002C6AC
    /* 1CE7C 8002C67C 00000000 */   nop
    /* 1CE80 8002C680 17E8000C */  jal        func_8003A05C
    /* 1CE84 8002C684 00000000 */   nop
    /* 1CE88 8002C688 08004014 */  bnez       $v0, .Lfunc_8002C638_8002C6AC
    /* 1CE8C 8002C68C 00000000 */   nop
    /* 1CE90 8002C690 B00080AF */  sw         $zero, %gp_rel(D_8008A8B8)($gp)
    /* 1CE94 8002C694 B80080AF */  sw         $zero, %gp_rel(D_8008A8C0)($gp)
    /* 1CE98 8002C698 B40080AF */  sw         $zero, %gp_rel(D_8008A8BC)($gp)
    /* 1CE9C 8002C69C 76CA000C */  jal        SndTickHandler
    /* 1CEA0 8002C6A0 00000000 */   nop
    /* 1CEA4 8002C6A4 9FCA000C */  jal        SndUpdateDefault
    /* 1CEA8 8002C6A8 00000000 */   nop
  .Lfunc_8002C638_8002C6AC:
    /* 1CEAC 8002C6AC 4C00048E */  lw         $a0, 0x4C($s0)
    /* 1CEB0 8002C6B0 3F5F000C */  jal        BMemFree
    /* 1CEB4 8002C6B4 00000000 */   nop
    /* 1CEB8 8002C6B8 5000048E */  lw         $a0, 0x50($s0)
    /* 1CEBC 8002C6BC 3F5F000C */  jal        BMemFree
    /* 1CEC0 8002C6C0 00000000 */   nop
    /* 1CEC4 8002C6C4 5C00048E */  lw         $a0, 0x5C($s0)
    /* 1CEC8 8002C6C8 3F5F000C */  jal        BMemFree
    /* 1CECC 8002C6CC 00000000 */   nop
    /* 1CED0 8002C6D0 2B9B000C */  jal        GetActiveCdVtable
    /* 1CED4 8002C6D4 00000000 */   nop
    /* 1CED8 8002C6D8 0C00428C */  lw         $v0, 0xC($v0)
    /* 1CEDC 8002C6DC 00000000 */  nop
    /* 1CEE0 8002C6E0 09F84000 */  jalr       $v0
    /* 1CEE4 8002C6E4 21200002 */   addu      $a0, $s0, $zero
    /* 1CEE8 8002C6E8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 1CEEC 8002C6EC 1000B08F */  lw         $s0, 0x10($sp)
    /* 1CEF0 8002C6F0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1CEF4 8002C6F4 0800E003 */  jr         $ra
    /* 1CEF8 8002C6F8 00000000 */   nop
endlabel SoundPlayer__Release
