.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001D950, 0xD8

glabel func_8001D950
    /* E150 8001D950 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* E154 8001D954 5000B0AF */  sw         $s0, 0x50($sp)
    /* E158 8001D958 21808000 */  addu       $s0, $a0, $zero
    /* E15C 8001D95C 5400B1AF */  sw         $s1, 0x54($sp)
    /* E160 8001D960 2188A000 */  addu       $s1, $a1, $zero
    /* E164 8001D964 5800B2AF */  sw         $s2, 0x58($sp)
    /* E168 8001D968 2190C000 */  addu       $s2, $a2, $zero
    /* E16C 8001D96C 5C00B3AF */  sw         $s3, 0x5C($sp)
    /* E170 8001D970 2198E000 */  addu       $s3, $a3, $zero
    /* E174 8001D974 6000BFAF */  sw         $ra, 0x60($sp)
    /* E178 8001D978 0000028E */  lw         $v0, 0x0($s0)
    /* E17C 8001D97C 3000A527 */  addiu      $a1, $sp, 0x30
    /* E180 8001D980 8400428C */  lw         $v0, 0x84($v0)
    /* E184 8001D984 00000000 */  nop
    /* E188 8001D988 09F84000 */  jalr       $v0
    /* E18C 8001D98C 01000634 */   ori       $a2, $zero, 0x1
    /* E190 8001D990 0C00108E */  lw         $s0, 0xC($s0)
    /* E194 8001D994 00000000 */  nop
    /* E198 8001D998 10000012 */  beqz       $s0, .Lfunc_8001D950_8001D9DC
    /* E19C 8001D99C 21204002 */   addu      $a0, $s2, $zero
    /* E1A0 8001D9A0 21200002 */  addu       $a0, $s0, $zero
  .Lfunc_8001D950_8001D9A4:
    /* E1A4 8001D9A4 0000028E */  lw         $v0, 0x0($s0)
    /* E1A8 8001D9A8 1000A527 */  addiu      $a1, $sp, 0x10
    /* E1AC 8001D9AC 8400428C */  lw         $v0, 0x84($v0)
    /* E1B0 8001D9B0 00000000 */  nop
    /* E1B4 8001D9B4 09F84000 */  jalr       $v0
    /* E1B8 8001D9B8 01000634 */   ori       $a2, $zero, 0x1
    /* E1BC 8001D9BC 1000A427 */  addiu      $a0, $sp, 0x10
    /* E1C0 8001D9C0 FF56000C */  jal        func_80015BFC
    /* E1C4 8001D9C4 3000A527 */   addiu     $a1, $sp, 0x30
    /* E1C8 8001D9C8 0C00108E */  lw         $s0, 0xC($s0)
    /* E1CC 8001D9CC 00000000 */  nop
    /* E1D0 8001D9D0 F4FF0016 */  bnez       $s0, .Lfunc_8001D950_8001D9A4
    /* E1D4 8001D9D4 21200002 */   addu      $a0, $s0, $zero
    /* E1D8 8001D9D8 21204002 */  addu       $a0, $s2, $zero
  .Lfunc_8001D950_8001D9DC:
    /* E1DC 8001D9DC 21286002 */  addu       $a1, $s3, $zero
    /* E1E0 8001D9E0 7800A68F */  lw         $a2, 0x78($sp)
    /* E1E4 8001D9E4 3000B027 */  addiu      $s0, $sp, 0x30
    /* E1E8 8001D9E8 817B000C */  jal        func_8001EE04
    /* E1EC 8001D9EC 21380002 */   addu      $a3, $s0, $zero
    /* E1F0 8001D9F0 05002012 */  beqz       $s1, .Lfunc_8001D950_8001DA08
    /* E1F4 8001D9F4 21202002 */   addu      $a0, $s1, $zero
    /* E1F8 8001D9F8 21288000 */  addu       $a1, $a0, $zero
    /* E1FC 8001D9FC 01000634 */  ori        $a2, $zero, 0x1
    /* E200 8001DA00 817B000C */  jal        func_8001EE04
    /* E204 8001DA04 21380002 */   addu      $a3, $s0, $zero
  .Lfunc_8001D950_8001DA08:
    /* E208 8001DA08 6000BF8F */  lw         $ra, 0x60($sp)
    /* E20C 8001DA0C 5C00B38F */  lw         $s3, 0x5C($sp)
    /* E210 8001DA10 5800B28F */  lw         $s2, 0x58($sp)
    /* E214 8001DA14 5400B18F */  lw         $s1, 0x54($sp)
    /* E218 8001DA18 5000B08F */  lw         $s0, 0x50($sp)
    /* E21C 8001DA1C 6800BD27 */  addiu      $sp, $sp, 0x68
    /* E220 8001DA20 0800E003 */  jr         $ra
    /* E224 8001DA24 00000000 */   nop
endlabel func_8001D950
