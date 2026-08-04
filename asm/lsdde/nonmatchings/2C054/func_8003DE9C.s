.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003DE9C, 0x104

glabel func_8003DE9C
    /* 2E69C 8003DE9C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2E6A0 8003DEA0 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2E6A4 8003DEA4 21A08000 */  addu       $s4, $a0, $zero
    /* 2E6A8 8003DEA8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2E6AC 8003DEAC 2190A000 */  addu       $s2, $a1, $zero
    /* 2E6B0 8003DEB0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2E6B4 8003DEB4 2198C000 */  addu       $s3, $a2, $zero
    /* 2E6B8 8003DEB8 2400BFAF */  sw         $ra, 0x24($sp)
    /* 2E6BC 8003DEBC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2E6C0 8003DEC0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2E6C4 8003DEC4 5800908E */  lw         $s0, 0x58($s4)
    /* 2E6C8 8003DEC8 6000828E */  lw         $v0, 0x60($s4)
    /* 2E6CC 8003DECC 6400838E */  lw         $v1, 0x64($s4)
    /* 2E6D0 8003DED0 4C00858E */  lw         $a1, 0x4C($s4)
    /* 2E6D4 8003DED4 80801000 */  sll        $s0, $s0, 2
    /* 2E6D8 8003DED8 21100202 */  addu       $v0, $s0, $v0
    /* 2E6DC 8003DEDC 21180302 */  addu       $v1, $s0, $v1
    /* 2E6E0 8003DEE0 0000428C */  lw         $v0, 0x0($v0)
    /* 2E6E4 8003DEE4 0000668C */  lw         $a2, 0x0($v1)
    /* 2E6E8 8003DEE8 80100200 */  sll        $v0, $v0, 2
    /* 2E6EC 8003DEEC 21104600 */  addu       $v0, $v0, $a2
    /* 2E6F0 8003DEF0 0000448C */  lw         $a0, 0x0($v0)
    /* 2E6F4 8003DEF4 80101200 */  sll        $v0, $s2, 2
    /* 2E6F8 8003DEF8 0000838C */  lw         $v1, 0x0($a0)
    /* 2E6FC 8003DEFC 21104600 */  addu       $v0, $v0, $a2
    /* 2E700 8003DF00 B800638C */  lw         $v1, 0xB8($v1)
    /* 2E704 8003DF04 0000518C */  lw         $s1, 0x0($v0)
    /* 2E708 8003DF08 09F86000 */  jalr       $v1
    /* 2E70C 8003DF0C 1000A524 */   addiu     $a1, $a1, 0x10
    /* 2E710 8003DF10 4C00828E */  lw         $v0, 0x4C($s4)
    /* 2E714 8003DF14 21202002 */  addu       $a0, $s1, $zero
    /* 2E718 8003DF18 2400428C */  lw         $v0, 0x24($v0)
    /* 2E71C 8003DF1C 0000838C */  lw         $v1, 0x0($a0)
    /* 2E720 8003DF20 21100202 */  addu       $v0, $s0, $v0
    /* 2E724 8003DF24 0000458C */  lw         $a1, 0x0($v0)
    /* 2E728 8003DF28 B800628C */  lw         $v0, 0xB8($v1)
    /* 2E72C 8003DF2C 00000000 */  nop
    /* 2E730 8003DF30 09F84000 */  jalr       $v0
    /* 2E734 8003DF34 0800A524 */   addiu     $a1, $a1, 0x8
    /* 2E738 8003DF38 6000828E */  lw         $v0, 0x60($s4)
    /* 2E73C 8003DF3C 00000000 */  nop
    /* 2E740 8003DF40 21800202 */  addu       $s0, $s0, $v0
    /* 2E744 8003DF44 07006012 */  beqz       $s3, .Lfunc_8003DE9C_8003DF64
    /* 2E748 8003DF48 000012AE */   sw        $s2, 0x0($s0)
    /* 2E74C 8003DF4C 0000828E */  lw         $v0, 0x0($s4)
    /* 2E750 8003DF50 21208002 */  addu       $a0, $s4, $zero
    /* 2E754 8003DF54 7000428C */  lw         $v0, 0x70($v0)
    /* 2E758 8003DF58 00000000 */  nop
    /* 2E75C 8003DF5C 09F84000 */  jalr       $v0
    /* 2E760 8003DF60 21280000 */   addu      $a1, $zero, $zero
  .Lfunc_8003DE9C_8003DF64:
    /* 2E764 8003DF64 0000828E */  lw         $v0, 0x0($s4)
    /* 2E768 8003DF68 21208002 */  addu       $a0, $s4, $zero
    /* 2E76C 8003DF6C 6000428C */  lw         $v0, 0x60($v0)
    /* 2E770 8003DF70 00000000 */  nop
    /* 2E774 8003DF74 09F84000 */  jalr       $v0
    /* 2E778 8003DF78 09000534 */   ori       $a1, $zero, 0x9
    /* 2E77C 8003DF7C 2400BF8F */  lw         $ra, 0x24($sp)
    /* 2E780 8003DF80 2000B48F */  lw         $s4, 0x20($sp)
    /* 2E784 8003DF84 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2E788 8003DF88 1800B28F */  lw         $s2, 0x18($sp)
    /* 2E78C 8003DF8C 1400B18F */  lw         $s1, 0x14($sp)
    /* 2E790 8003DF90 1000B08F */  lw         $s0, 0x10($sp)
    /* 2E794 8003DF94 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2E798 8003DF98 0800E003 */  jr         $ra
    /* 2E79C 8003DF9C 00000000 */   nop
endlabel func_8003DE9C
