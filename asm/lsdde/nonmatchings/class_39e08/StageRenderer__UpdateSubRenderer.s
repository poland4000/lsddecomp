.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__UpdateSubRenderer, 0x74

glabel StageRenderer__UpdateSubRenderer
    /* 3D9D0 8004D1D0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3D9D4 8004D1D4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3D9D8 8004D1D8 21908000 */  addu       $s2, $a0, $zero
    /* 3D9DC 8004D1DC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 3D9E0 8004D1E0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3D9E4 8004D1E4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3D9E8 8004D1E8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3D9EC 8004D1EC 1000C28C */  lw         $v0, 0x10($a2)
    /* 3D9F0 8004D1F0 00000000 */  nop
    /* 3D9F4 8004D1F4 21804000 */  addu       $s0, $v0, $zero
    /* 3D9F8 8004D1F8 68061126 */  addiu      $s1, $s0, 0x668
    /* 3D9FC 8004D1FC 2B101102 */  sltu       $v0, $s0, $s1
    /* 3DA00 8004D200 08004010 */  beqz       $v0, .Lfunc_8004D1D0_8004D224
    /* 3DA04 8004D204 2198A000 */   addu      $s3, $a1, $zero
  .Lfunc_8004D1D0_8004D208:
    /* 3DA08 8004D208 0000058E */  lw         $a1, 0x0($s0)
    /* 3DA0C 8004D20C 04001026 */  addiu      $s0, $s0, 0x4
    /* 3DA10 8004D210 09F86002 */  jalr       $s3
    /* 3DA14 8004D214 21204002 */   addu      $a0, $s2, $zero
    /* 3DA18 8004D218 2B101102 */  sltu       $v0, $s0, $s1
    /* 3DA1C 8004D21C FAFF4014 */  bnez       $v0, .Lfunc_8004D1D0_8004D208
    /* 3DA20 8004D220 00000000 */   nop
  .Lfunc_8004D1D0_8004D224:
    /* 3DA24 8004D224 2000BF8F */  lw         $ra, 0x20($sp)
    /* 3DA28 8004D228 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3DA2C 8004D22C 1800B28F */  lw         $s2, 0x18($sp)
    /* 3DA30 8004D230 1400B18F */  lw         $s1, 0x14($sp)
    /* 3DA34 8004D234 1000B08F */  lw         $s0, 0x10($sp)
    /* 3DA38 8004D238 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3DA3C 8004D23C 0800E003 */  jr         $ra
    /* 3DA40 8004D240 00000000 */   nop
endlabel StageRenderer__UpdateSubRenderer
