.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TitleScreen__Method124, 0x15C

glabel TitleScreen__Method124
    /* 3E608 8004DE08 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3E60C 8004DE0C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3E610 8004DE10 21808000 */  addu       $s0, $a0, $zero
    /* 3E614 8004DE14 2400BFAF */  sw         $ra, 0x24($sp)
    /* 3E618 8004DE18 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3E61C 8004DE1C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3E620 8004DE20 B000028E */  lw         $v0, 0xB0($s0)
    /* 3E624 8004DE24 00000000 */  nop
    /* 3E628 8004DE28 A9004490 */  lbu        $a0, 0xA9($v0)
    /* 3E62C 8004DE2C 5800128E */  lw         $s2, 0x58($s0)
    /* 3E630 8004DE30 CD5E000C */  jal        BMemAlloc
    /* 3E634 8004DE34 00000000 */   nop
    /* 3E638 8004DE38 21884000 */  addu       $s1, $v0, $zero
    /* 3E63C 8004DE3C 1002858F */  lw         $a1, %gp_rel(D_8008AA18)($gp)
    /* 3E640 8004DE40 F003010C */  jal        func_80040FC0
    /* 3E644 8004DE44 21202002 */   addu      $a0, $s1, $zero
    /* 3E648 8004DE48 B000048E */  lw         $a0, 0xB0($s0)
    /* 3E64C 8004DE4C 00000000 */  nop
    /* 3E650 8004DE50 0000828C */  lw         $v0, 0x0($a0)
    /* 3E654 8004DE54 00000000 */  nop
    /* 3E658 8004DE58 CC00428C */  lw         $v0, 0xCC($v0)
    /* 3E65C 8004DE5C 00000000 */  nop
    /* 3E660 8004DE60 09F84000 */  jalr       $v0
    /* 3E664 8004DE64 21282002 */   addu      $a1, $s1, $zero
    /* 3E668 8004DE68 3F5F000C */  jal        BMemFree
    /* 3E66C 8004DE6C 21202002 */   addu      $a0, $s1, $zero
    /* 3E670 8004DE70 4C00058E */  lw         $a1, 0x4C($s0)
    /* 3E674 8004DE74 A400068E */  lw         $a2, 0xA4($s0)
    /* 3E678 8004DE78 9E35010C */  jal        TitleScreen__CapPlayCounter
    /* 3E67C 8004DE7C 21200002 */   addu      $a0, $s0, $zero
    /* 3E680 8004DE80 0000028E */  lw         $v0, 0x0($s0)
    /* 3E684 8004DE84 1400058E */  lw         $a1, 0x14($s0)
    /* 3E688 8004DE88 E000428C */  lw         $v0, 0xE0($v0)
    /* 3E68C 8004DE8C 00000000 */  nop
    /* 3E690 8004DE90 09F84000 */  jalr       $v0
    /* 3E694 8004DE94 21200002 */   addu      $a0, $s0, $zero
    /* 3E698 8004DE98 A400048E */  lw         $a0, 0xA4($s0)
    /* 3E69C 8004DE9C 00000000 */  nop
    /* 3E6A0 8004DEA0 0000828C */  lw         $v0, 0x0($a0)
    /* 3E6A4 8004DEA4 00000000 */  nop
    /* 3E6A8 8004DEA8 9C01428C */  lw         $v0, 0x19C($v0)
    /* 3E6AC 8004DEAC 00000000 */  nop
    /* 3E6B0 8004DEB0 09F84000 */  jalr       $v0
    /* 3E6B4 8004DEB4 1000A527 */   addiu     $a1, $sp, 0x10
    /* 3E6B8 8004DEB8 21200002 */  addu       $a0, $s0, $zero
    /* 3E6BC 8004DEBC 0000038E */  lw         $v1, 0x0($s0)
    /* 3E6C0 8004DEC0 05000234 */  ori        $v0, $zero, 0x5
    /* 3E6C4 8004DEC4 580002AE */  sw         $v0, 0x58($s0)
    /* 3E6C8 8004DEC8 6000628C */  lw         $v0, 0x60($v1)
    /* 3E6CC 8004DECC 00000000 */  nop
    /* 3E6D0 8004DED0 09F84000 */  jalr       $v0
    /* 3E6D4 8004DED4 0B000534 */   ori       $a1, $zero, 0xB
    /* 3E6D8 8004DED8 21200002 */  addu       $a0, $s0, $zero
    /* 3E6DC 8004DEDC 0000028E */  lw         $v0, 0x0($s0)
    /* 3E6E0 8004DEE0 1000A58F */  lw         $a1, 0x10($sp)
    /* 3E6E4 8004DEE4 1C01428C */  lw         $v0, 0x11C($v0)
    /* 3E6E8 8004DEE8 00000000 */  nop
    /* 3E6EC 8004DEEC 09F84000 */  jalr       $v0
    /* 3E6F0 8004DEF0 01000634 */   ori       $a2, $zero, 0x1
    /* 3E6F4 8004DEF4 0000028E */  lw         $v0, 0x0($s0)
    /* 3E6F8 8004DEF8 21200002 */  addu       $a0, $s0, $zero
    /* 3E6FC 8004DEFC 6000428C */  lw         $v0, 0x60($v0)
    /* 3E700 8004DF00 00000000 */  nop
    /* 3E704 8004DF04 09F84000 */  jalr       $v0
    /* 3E708 8004DF08 0F000534 */   ori       $a1, $zero, 0xF
    /* 3E70C 8004DF0C 21200002 */  addu       $a0, $s0, $zero
    /* 3E710 8004DF10 0000028E */  lw         $v0, 0x0($s0)
    /* 3E714 8004DF14 21284002 */  addu       $a1, $s2, $zero
    /* 3E718 8004DF18 F000428C */  lw         $v0, 0xF0($v0)
    /* 3E71C 8004DF1C 00000000 */  nop
    /* 3E720 8004DF20 09F84000 */  jalr       $v0
    /* 3E724 8004DF24 21300000 */   addu      $a2, $zero, $zero
    /* 3E728 8004DF28 A400048E */  lw         $a0, 0xA4($s0)
    /* 3E72C 8004DF2C 00000000 */  nop
    /* 3E730 8004DF30 0000828C */  lw         $v0, 0x0($a0)
    /* 3E734 8004DF34 00000000 */  nop
    /* 3E738 8004DF38 9C01428C */  lw         $v0, 0x19C($v0)
    /* 3E73C 8004DF3C 00000000 */  nop
    /* 3E740 8004DF40 09F84000 */  jalr       $v0
    /* 3E744 8004DF44 1000A527 */   addiu     $a1, $sp, 0x10
    /* 3E748 8004DF48 2400BF8F */  lw         $ra, 0x24($sp)
    /* 3E74C 8004DF4C 2000B28F */  lw         $s2, 0x20($sp)
    /* 3E750 8004DF50 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3E754 8004DF54 1800B08F */  lw         $s0, 0x18($sp)
    /* 3E758 8004DF58 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3E75C 8004DF5C 0800E003 */  jr         $ra
    /* 3E760 8004DF60 00000000 */   nop
endlabel TitleScreen__Method124
