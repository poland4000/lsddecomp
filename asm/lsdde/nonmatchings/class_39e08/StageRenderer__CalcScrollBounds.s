.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__CalcScrollBounds, 0xD0

glabel StageRenderer__CalcScrollBounds
    /* 3B830 8004B030 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3B834 8004B034 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3B838 8004B038 21808000 */  addu       $s0, $a0, $zero
    /* 3B83C 8004B03C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3B840 8004B040 2188C000 */  addu       $s1, $a2, $zero
    /* 3B844 8004B044 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3B848 8004B048 21A02002 */  addu       $s4, $s1, $zero
    /* 3B84C 8004B04C 2400BFAF */  sw         $ra, 0x24($sp)
    /* 3B850 8004B050 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3B854 8004B054 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3B858 8004B058 0200B280 */  lb         $s2, 0x2($a1)
    /* 3B85C 8004B05C 0300B380 */  lb         $s3, 0x3($a1)
    /* 3B860 8004B060 21184002 */  addu       $v1, $s2, $zero
    /* 3B864 8004B064 03004016 */  bnez       $s2, .Lfunc_8004B030_8004B074
    /* 3B868 8004B068 21206002 */   addu      $a0, $s3, $zero
    /* 3B86C 8004B06C 1E2C0108 */  j          .Lfunc_8004B030_8004B078
    /* 3B870 8004B070 FFFF3426 */   addiu     $s4, $s1, -0x1
  .Lfunc_8004B030_8004B074:
    /* 3B874 8004B074 FFFF5226 */  addiu      $s2, $s2, -0x1
  .Lfunc_8004B030_8004B078:
    /* 3B878 8004B078 13000234 */  ori        $v0, $zero, 0x13
    /* 3B87C 8004B07C 02006214 */  bne        $v1, $v0, .Lfunc_8004B030_8004B088
    /* 3B880 8004B080 00000000 */   nop
    /* 3B884 8004B084 FFFF9426 */  addiu      $s4, $s4, -0x1
  .Lfunc_8004B030_8004B088:
    /* 3B888 8004B088 03008014 */  bnez       $a0, .Lfunc_8004B030_8004B098
    /* 3B88C 8004B08C 00000000 */   nop
    /* 3B890 8004B090 272C0108 */  j          .Lfunc_8004B030_8004B09C
    /* 3B894 8004B094 FFFF3126 */   addiu     $s1, $s1, -0x1
  .Lfunc_8004B030_8004B098:
    /* 3B898 8004B098 FFFF7326 */  addiu      $s3, $s3, -0x1
  .Lfunc_8004B030_8004B09C:
    /* 3B89C 8004B09C 13000234 */  ori        $v0, $zero, 0x13
    /* 3B8A0 8004B0A0 02008214 */  bne        $a0, $v0, .Lfunc_8004B030_8004B0AC
    /* 3B8A4 8004B0A4 01000334 */   ori       $v1, $zero, 0x1
    /* 3B8A8 8004B0A8 FFFF3126 */  addiu      $s1, $s1, -0x1
  .Lfunc_8004B030_8004B0AC:
    /* 3B8AC 8004B0AC 0000028E */  lw         $v0, 0x0($s0)
    /* 3B8B0 8004B0B0 880003AE */  sw         $v1, 0x88($s0)
    /* 3B8B4 8004B0B4 2800A58C */  lw         $a1, 0x28($a1)
    /* 3B8B8 8004B0B8 2401428C */  lw         $v0, 0x124($v0)
    /* 3B8BC 8004B0BC 00000000 */  nop
    /* 3B8C0 8004B0C0 09F84000 */  jalr       $v0
    /* 3B8C4 8004B0C4 21200002 */   addu      $a0, $s0, $zero
    /* 3B8C8 8004B0C8 8C0002AE */  sw         $v0, 0x8C($s0)
    /* 3B8CC 8004B0CC 900012A6 */  sh         $s2, 0x90($s0)
    /* 3B8D0 8004B0D0 920013A6 */  sh         $s3, 0x92($s0)
    /* 3B8D4 8004B0D4 940014A6 */  sh         $s4, 0x94($s0)
    /* 3B8D8 8004B0D8 960011A6 */  sh         $s1, 0x96($s0)
    /* 3B8DC 8004B0DC 2400BF8F */  lw         $ra, 0x24($sp)
    /* 3B8E0 8004B0E0 2000B48F */  lw         $s4, 0x20($sp)
    /* 3B8E4 8004B0E4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3B8E8 8004B0E8 1800B28F */  lw         $s2, 0x18($sp)
    /* 3B8EC 8004B0EC 1400B18F */  lw         $s1, 0x14($sp)
    /* 3B8F0 8004B0F0 1000B08F */  lw         $s0, 0x10($sp)
    /* 3B8F4 8004B0F4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3B8F8 8004B0F8 0800E003 */  jr         $ra
    /* 3B8FC 8004B0FC 00000000 */   nop
endlabel StageRenderer__CalcScrollBounds
