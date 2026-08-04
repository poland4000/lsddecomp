.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__PostInit, 0x5C

glabel StageRenderer__PostInit
    /* 3B210 8004AA10 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3B214 8004AA14 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3B218 8004AA18 21808000 */  addu       $s0, $a0, $zero
    /* 3B21C 8004AA1C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 3B220 8004AA20 0000028E */  lw         $v0, 0x0($s0)
    /* 3B224 8004AA24 7801858F */  lw         $a1, %gp_rel(D_8008A980)($gp)
    /* 3B228 8004AA28 680000AE */  sw         $zero, 0x68($s0)
    /* 3B22C 8004AA2C E80000AE */  sw         $zero, 0xE8($s0)
    /* 3B230 8004AA30 880000AE */  sw         $zero, 0x88($s0)
    /* 3B234 8004AA34 DC00428C */  lw         $v0, 0xDC($v0)
    /* 3B238 8004AA38 00000000 */  nop
    /* 3B23C 8004AA3C 09F84000 */  jalr       $v0
    /* 3B240 8004AA40 00000000 */   nop
    /* 3B244 8004AA44 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3B248 8004AA48 CC0102AE */  sw         $v0, 0x1CC($s0)
    /* 3B24C 8004AA4C D00102AE */  sw         $v0, 0x1D0($s0)
    /* 3B250 8004AA50 D40102AE */  sw         $v0, 0x1D4($s0)
    /* 3B254 8004AA54 D80102AE */  sw         $v0, 0x1D8($s0)
    /* 3B258 8004AA58 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3B25C 8004AA5C 1000B08F */  lw         $s0, 0x10($sp)
    /* 3B260 8004AA60 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3B264 8004AA64 0800E003 */  jr         $ra
    /* 3B268 8004AA68 00000000 */   nop
endlabel StageRenderer__PostInit
