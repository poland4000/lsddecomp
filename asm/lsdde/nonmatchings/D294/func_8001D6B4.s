.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001D6B4, 0x60

glabel func_8001D6B4
    /* DEB4 8001D6B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* DEB8 8001D6B8 0200C228 */  slti       $v0, $a2, 0x2
    /* DEBC 8001D6BC 11004014 */  bnez       $v0, .Lfunc_8001D6B4_8001D704
    /* DEC0 8001D6C0 1000BFAF */   sw        $ra, 0x10($sp)
    /* DEC4 8001D6C4 0400C228 */  slti       $v0, $a2, 0x4
    /* DEC8 8001D6C8 05004014 */  bnez       $v0, .Lfunc_8001D6B4_8001D6E0
    /* DECC 8001D6CC 04000234 */   ori       $v0, $zero, 0x4
    /* DED0 8001D6D0 0B00C210 */  beq        $a2, $v0, .Lfunc_8001D6B4_8001D700
    /* DED4 8001D6D4 00000000 */   nop
    /* DED8 8001D6D8 C1750008 */  j          .Lfunc_8001D6B4_8001D704
    /* DEDC 8001D6DC 00000000 */   nop
  .Lfunc_8001D6B4_8001D6E0:
    /* DEE0 8001D6E0 0000828C */  lw         $v0, 0x0($a0)
    /* DEE4 8001D6E4 00000000 */  nop
    /* DEE8 8001D6E8 A000428C */  lw         $v0, 0xA0($v0)
    /* DEEC 8001D6EC 00000000 */  nop
    /* DEF0 8001D6F0 09F84000 */  jalr       $v0
    /* DEF4 8001D6F4 00000000 */   nop
    /* DEF8 8001D6F8 C1750008 */  j          .Lfunc_8001D6B4_8001D704
    /* DEFC 8001D6FC 00000000 */   nop
  .Lfunc_8001D6B4_8001D700:
    /* DF00 8001D700 280085AC */  sw         $a1, 0x28($a0)
  .Lfunc_8001D6B4_8001D704:
    /* DF04 8001D704 1000BF8F */  lw         $ra, 0x10($sp)
    /* DF08 8001D708 1800BD27 */  addiu      $sp, $sp, 0x18
    /* DF0C 8001D70C 0800E003 */  jr         $ra
    /* DF10 8001D710 00000000 */   nop
endlabel func_8001D6B4
