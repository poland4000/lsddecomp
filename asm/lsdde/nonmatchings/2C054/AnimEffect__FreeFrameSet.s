.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching AnimEffect__FreeFrameSet, 0x68

glabel AnimEffect__FreeFrameSet
    /* 2DED4 8003D6D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2DED8 8003D6D8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2DEDC 8003D6DC 21808000 */  addu       $s0, $a0, $zero
    /* 2DEE0 8003D6E0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2DEE4 8003D6E4 5800028E */  lw         $v0, 0x58($s0)
    /* 2DEE8 8003D6E8 6400038E */  lw         $v1, 0x64($s0)
    /* 2DEEC 8003D6EC 5C00058E */  lw         $a1, 0x5C($s0)
    /* 2DEF0 8003D6F0 80100200 */  sll        $v0, $v0, 2
    /* 2DEF4 8003D6F4 21184300 */  addu       $v1, $v0, $v1
    /* 2DEF8 8003D6F8 21104500 */  addu       $v0, $v0, $a1
    /* 2DEFC 8003D6FC 0000648C */  lw         $a0, 0x0($v1)
    /* 2DF00 8003D700 0000458C */  lw         $a1, 0x0($v0)
    /* 2DF04 8003D704 F760000C */  jal        ReleaseObjectArray
    /* 2DF08 8003D708 00000000 */   nop
    /* 2DF0C 8003D70C 5800028E */  lw         $v0, 0x58($s0)
    /* 2DF10 8003D710 6400038E */  lw         $v1, 0x64($s0)
    /* 2DF14 8003D714 80100200 */  sll        $v0, $v0, 2
    /* 2DF18 8003D718 21104300 */  addu       $v0, $v0, $v1
    /* 2DF1C 8003D71C 0000448C */  lw         $a0, 0x0($v0)
    /* 2DF20 8003D720 3F5F000C */  jal        BMemFree
    /* 2DF24 8003D724 00000000 */   nop
    /* 2DF28 8003D728 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2DF2C 8003D72C 1000B08F */  lw         $s0, 0x10($sp)
    /* 2DF30 8003D730 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2DF34 8003D734 0800E003 */  jr         $ra
    /* 2DF38 8003D738 00000000 */   nop
endlabel AnimEffect__FreeFrameSet
