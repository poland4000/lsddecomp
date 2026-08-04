.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdFile__ReadSync, 0xE0

glabel CdFile__ReadSync
    /* 19284 80028A84 C8F7BD27 */  addiu      $sp, $sp, -0x838
    /* 19288 80028A88 2008B0AF */  sw         $s0, 0x820($sp)
    /* 1928C 80028A8C 21808000 */  addu       $s0, $a0, $zero
    /* 19290 80028A90 2808B2AF */  sw         $s2, 0x828($sp)
    /* 19294 80028A94 2190A000 */  addu       $s2, $a1, $zero
    /* 19298 80028A98 3008BFAF */  sw         $ra, 0x830($sp)
    /* 1929C 80028A9C 2C08B3AF */  sw         $s3, 0x82C($sp)
    /* 192A0 80028AA0 2408B1AF */  sw         $s1, 0x824($sp)
    /* 192A4 80028AA4 0C00028E */  lw         $v0, 0xC($s0)
    /* 192A8 80028AA8 00000000 */  nop
    /* 192AC 80028AAC 1E004010 */  beqz       $v0, .Lfunc_80028A84_80028B28
    /* 192B0 80028AB0 2198C000 */   addu      $s3, $a2, $zero
    /* 192B4 80028AB4 02000434 */  ori        $a0, $zero, 0x2
  .Lfunc_80028A84_80028AB8:
    /* 192B8 80028AB8 18000526 */  addiu      $a1, $s0, 0x18
    /* 192BC 80028ABC 21300000 */  addu       $a2, $zero, $zero
    /* 192C0 80028AC0 7CA3000C */  jal        CdControl
    /* 192C4 80028AC4 C28A1300 */   srl       $s1, $s3, 11
  .Lfunc_80028A84_80028AC8:
    /* 192C8 80028AC8 21200000 */  addu       $a0, $zero, $zero
    /* 192CC 80028ACC 5AA3000C */  jal        CdSync
    /* 192D0 80028AD0 1008A527 */   addiu     $a1, $sp, 0x810
    /* 192D4 80028AD4 21184000 */  addu       $v1, $v0, $zero
    /* 192D8 80028AD8 FBFF6010 */  beqz       $v1, .Lfunc_80028A84_80028AC8
    /* 192DC 80028ADC 05000234 */   ori       $v0, $zero, 0x5
    /* 192E0 80028AE0 F5FF6210 */  beq        $v1, $v0, .Lfunc_80028A84_80028AB8
    /* 192E4 80028AE4 02000434 */   ori       $a0, $zero, 0x2
    /* 192E8 80028AE8 15002012 */  beqz       $s1, .Lfunc_80028A84_80028B40
    /* 192EC 80028AEC 21284002 */   addu      $a1, $s2, $zero
    /* 192F0 80028AF0 21202002 */  addu       $a0, $s1, $zero
    /* 192F4 80028AF4 9DA4000C */  jal        CdRead
    /* 192F8 80028AF8 80000634 */   ori       $a2, $zero, 0x80
    /* 192FC 80028AFC 21200000 */  addu       $a0, $zero, $zero
  .Lfunc_80028A84_80028B00:
    /* 19300 80028B00 95A4000C */  jal        CdReadSync
    /* 19304 80028B04 21280000 */   addu      $a1, $zero, $zero
    /* 19308 80028B08 21184000 */  addu       $v1, $v0, $zero
    /* 1930C 80028B0C FCFF601C */  bgtz       $v1, .Lfunc_80028A84_80028B00
    /* 19310 80028B10 21200000 */   addu      $a0, $zero, $zero
    /* 19314 80028B14 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 19318 80028B18 E7FF6210 */  beq        $v1, $v0, .Lfunc_80028A84_80028AB8
    /* 1931C 80028B1C 02000434 */   ori       $a0, $zero, 0x2
    /* 19320 80028B20 D1A20008 */  j          .Lfunc_80028A84_80028B44
    /* 19324 80028B24 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_80028A84_80028B28:
    /* 19328 80028B28 0000028E */  lw         $v0, 0x0($s0)
    /* 1932C 80028B2C 00000000 */  nop
    /* 19330 80028B30 4800428C */  lw         $v0, 0x48($v0)
    /* 19334 80028B34 00000000 */  nop
    /* 19338 80028B38 09F84000 */  jalr       $v0
    /* 1933C 80028B3C 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_80028A84_80028B40:
    /* 19340 80028B40 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_80028A84_80028B44:
    /* 19344 80028B44 3008BF8F */  lw         $ra, 0x830($sp)
    /* 19348 80028B48 2C08B38F */  lw         $s3, 0x82C($sp)
    /* 1934C 80028B4C 2808B28F */  lw         $s2, 0x828($sp)
    /* 19350 80028B50 2408B18F */  lw         $s1, 0x824($sp)
    /* 19354 80028B54 2008B08F */  lw         $s0, 0x820($sp)
    /* 19358 80028B58 3808BD27 */  addiu      $sp, $sp, 0x838
    /* 1935C 80028B5C 0800E003 */  jr         $ra
    /* 19360 80028B60 00000000 */   nop
endlabel CdFile__ReadSync
