.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching Entity__PlayEventVideo, 0x84

glabel Entity__PlayEventVideo
    /* 4E82C 8005E02C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4E830 8005E030 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4E834 8005E034 2180A000 */  addu       $s0, $a1, $zero
    /* 4E838 8005E038 1400BFAF */  sw         $ra, 0x14($sp)
    /* 4E83C 8005E03C 9400858C */  lw         $a1, 0x94($a0)
    /* 4E840 8005E040 00000000 */  nop
    /* 4E844 8005E044 1400A28C */  lw         $v0, 0x14($a1)
    /* 4E848 8005E048 1400838C */  lw         $v1, 0x14($a0)
    /* 4E84C 8005E04C 1C00468C */  lw         $a2, 0x1C($v0)
    /* 4E850 8005E050 1C00638C */  lw         $v1, 0x1C($v1)
    /* 4E854 8005E054 0002C224 */  addiu      $v0, $a2, 0x200
    /* 4E858 8005E058 2A104300 */  slt        $v0, $v0, $v1
    /* 4E85C 8005E05C 0F004014 */  bnez       $v0, .Lfunc_8005E02C_8005E09C
    /* 4E860 8005E060 21100000 */   addu      $v0, $zero, $zero
    /* 4E864 8005E064 00FEC224 */  addiu      $v0, $a2, -0x200
    /* 4E868 8005E068 2A106200 */  slt        $v0, $v1, $v0
    /* 4E86C 8005E06C 0B004014 */  bnez       $v0, .Lfunc_8005E02C_8005E09C
    /* 4E870 8005E070 21100000 */   addu      $v0, $zero, $zero
    /* 4E874 8005E074 0000828C */  lw         $v0, 0x0($a0)
    /* 4E878 8005E078 00000000 */  nop
    /* 4E87C 8005E07C 4401428C */  lw         $v0, 0x144($v0)
    /* 4E880 8005E080 00000000 */  nop
    /* 4E884 8005E084 09F84000 */  jalr       $v0
    /* 4E888 8005E088 00000000 */   nop
    /* 4E88C 8005E08C 2A105000 */  slt        $v0, $v0, $s0
    /* 4E890 8005E090 02004014 */  bnez       $v0, .Lfunc_8005E02C_8005E09C
    /* 4E894 8005E094 01000234 */   ori       $v0, $zero, 0x1
    /* 4E898 8005E098 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_8005E02C_8005E09C:
    /* 4E89C 8005E09C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4E8A0 8005E0A0 1000B08F */  lw         $s0, 0x10($sp)
    /* 4E8A4 8005E0A4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4E8A8 8005E0A8 0800E003 */  jr         $ra
    /* 4E8AC 8005E0AC 00000000 */   nop
endlabel Entity__PlayEventVideo
