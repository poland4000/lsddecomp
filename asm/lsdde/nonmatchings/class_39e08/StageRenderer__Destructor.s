.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__Destructor, 0x1C4

glabel StageRenderer__Destructor
    /* 3AFC0 8004A7C0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 3AFC4 8004A7C4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3AFC8 8004A7C8 21A08000 */  addu       $s4, $a0, $zero
    /* 3AFCC 8004A7CC 2800BFAF */  sw         $ra, 0x28($sp)
    /* 3AFD0 8004A7D0 2400B5AF */  sw         $s5, 0x24($sp)
    /* 3AFD4 8004A7D4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3AFD8 8004A7D8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3AFDC 8004A7DC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3AFE0 8004A7E0 1783000C */  jal        func_80020C5C
    /* 3AFE4 8004A7E4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3AFE8 8004A7E8 21208002 */  addu       $a0, $s4, $zero
    /* 3AFEC 8004A7EC 21284000 */  addu       $a1, $v0, $zero
    /* 3AFF0 8004A7F0 0000828E */  lw         $v0, 0x0($s4)
    /* 3AFF4 8004A7F4 21980000 */  addu       $s3, $zero, $zero
    /* 3AFF8 8004A7F8 1400428C */  lw         $v0, 0x14($v0)
    /* 3AFFC 8004A7FC 00000000 */  nop
    /* 3B000 8004A800 09F84000 */  jalr       $v0
    /* 3B004 8004A804 EC001534 */   ori       $s5, $zero, 0xEC
    /* 3B008 8004A808 21208002 */  addu       $a0, $s4, $zero
  .Lfunc_8004A7C0_8004A80C:
    /* 3B00C 8004A80C 06000534 */  ori        $a1, $zero, 0x6
    /* 3B010 8004A810 21889502 */  addu       $s1, $s4, $s5
    /* 3B014 8004A814 0000828E */  lw         $v0, 0x0($s4)
    /* 3B018 8004A818 21302002 */  addu       $a2, $s1, $zero
    /* 3B01C 8004A81C 8800428C */  lw         $v0, 0x88($v0)
    /* 3B020 8004A820 00000000 */  nop
    /* 3B024 8004A824 09F84000 */  jalr       $v0
    /* 3B028 8004A828 21386002 */   addu      $a3, $s3, $zero
    /* 3B02C 8004A82C 0400248E */  lw         $a0, 0x4($s1)
    /* 3B030 8004A830 00000000 */  nop
    /* 3B034 8004A834 07008010 */  beqz       $a0, .Lfunc_8004A7C0_8004A854
    /* 3B038 8004A838 00000000 */   nop
    /* 3B03C 8004A83C 0000828C */  lw         $v0, 0x0($a0)
    /* 3B040 8004A840 00000000 */  nop
    /* 3B044 8004A844 0400428C */  lw         $v0, 0x4($v0)
    /* 3B048 8004A848 00000000 */  nop
    /* 3B04C 8004A84C 09F84000 */  jalr       $v0
    /* 3B050 8004A850 00000000 */   nop
  .Lfunc_8004A7C0_8004A854:
    /* 3B054 8004A854 0800228E */  lw         $v0, 0x8($s1)
    /* 3B058 8004A858 00000000 */  nop
    /* 3B05C 8004A85C 14004010 */  beqz       $v0, .Lfunc_8004A7C0_8004A8B0
    /* 3B060 8004A860 00000000 */   nop
    /* 3B064 8004A864 2C00448C */  lw         $a0, 0x2C($v0)
    /* 3B068 8004A868 00000000 */  nop
    /* 3B06C 8004A86C 07008010 */  beqz       $a0, .Lfunc_8004A7C0_8004A88C
    /* 3B070 8004A870 00000000 */   nop
    /* 3B074 8004A874 0000828C */  lw         $v0, 0x0($a0)
    /* 3B078 8004A878 00000000 */  nop
    /* 3B07C 8004A87C 0400428C */  lw         $v0, 0x4($v0)
    /* 3B080 8004A880 00000000 */  nop
    /* 3B084 8004A884 09F84000 */  jalr       $v0
    /* 3B088 8004A888 00000000 */   nop
  .Lfunc_8004A7C0_8004A88C:
    /* 3B08C 8004A88C 0800248E */  lw         $a0, 0x8($s1)
    /* 3B090 8004A890 00000000 */  nop
    /* 3B094 8004A894 0000828C */  lw         $v0, 0x0($a0)
    /* 3B098 8004A898 00000000 */  nop
    /* 3B09C 8004A89C 0400428C */  lw         $v0, 0x4($v0)
    /* 3B0A0 8004A8A0 00000000 */  nop
    /* 3B0A4 8004A8A4 09F84000 */  jalr       $v0
    /* 3B0A8 8004A8A8 00000000 */   nop
    /* 3B0AC 8004A8AC 080022AE */  sw         $v0, 0x8($s1)
  .Lfunc_8004A7C0_8004A8B0:
    /* 3B0B0 8004A8B0 0C00248E */  lw         $a0, 0xC($s1)
    /* 3B0B4 8004A8B4 00000000 */  nop
    /* 3B0B8 8004A8B8 07008010 */  beqz       $a0, .Lfunc_8004A7C0_8004A8D8
    /* 3B0BC 8004A8BC 00000000 */   nop
    /* 3B0C0 8004A8C0 0000828C */  lw         $v0, 0x0($a0)
    /* 3B0C4 8004A8C4 00000000 */  nop
    /* 3B0C8 8004A8C8 0400428C */  lw         $v0, 0x4($v0)
    /* 3B0CC 8004A8CC 00000000 */  nop
    /* 3B0D0 8004A8D0 09F84000 */  jalr       $v0
    /* 3B0D4 8004A8D4 00000000 */   nop
  .Lfunc_8004A7C0_8004A8D8:
    /* 3B0D8 8004A8D8 1000228E */  lw         $v0, 0x10($s1)
    /* 3B0DC 8004A8DC 00000000 */  nop
    /* 3B0E0 8004A8E0 21804000 */  addu       $s0, $v0, $zero
    /* 3B0E4 8004A8E4 68061226 */  addiu      $s2, $s0, 0x668
    /* 3B0E8 8004A8E8 2B101202 */  sltu       $v0, $s0, $s2
    /* 3B0EC 8004A8EC 0E004010 */  beqz       $v0, .Lfunc_8004A7C0_8004A928
    /* 3B0F0 8004A8F0 00000000 */   nop
  .Lfunc_8004A7C0_8004A8F4:
    /* 3B0F4 8004A8F4 0000048E */  lw         $a0, 0x0($s0)
    /* 3B0F8 8004A8F8 00000000 */  nop
    /* 3B0FC 8004A8FC 07008010 */  beqz       $a0, .Lfunc_8004A7C0_8004A91C
    /* 3B100 8004A900 04001026 */   addiu     $s0, $s0, 0x4
    /* 3B104 8004A904 0000828C */  lw         $v0, 0x0($a0)
    /* 3B108 8004A908 00000000 */  nop
    /* 3B10C 8004A90C 0400428C */  lw         $v0, 0x4($v0)
    /* 3B110 8004A910 00000000 */  nop
    /* 3B114 8004A914 09F84000 */  jalr       $v0
    /* 3B118 8004A918 00000000 */   nop
  .Lfunc_8004A7C0_8004A91C:
    /* 3B11C 8004A91C 2B101202 */  sltu       $v0, $s0, $s2
    /* 3B120 8004A920 F4FF4014 */  bnez       $v0, .Lfunc_8004A7C0_8004A8F4
    /* 3B124 8004A924 00000000 */   nop
  .Lfunc_8004A7C0_8004A928:
    /* 3B128 8004A928 1000248E */  lw         $a0, 0x10($s1)
    /* 3B12C 8004A92C 1C00B526 */  addiu      $s5, $s5, 0x1C
    /* 3B130 8004A930 3F5F000C */  jal        BMemFree
    /* 3B134 8004A934 01007326 */   addiu     $s3, $s3, 0x1
    /* 3B138 8004A938 0700622A */  slti       $v0, $s3, 0x7
    /* 3B13C 8004A93C B3FF4014 */  bnez       $v0, .Lfunc_8004A7C0_8004A80C
    /* 3B140 8004A940 21208002 */   addu      $a0, $s4, $zero
    /* 3B144 8004A944 390A010C */  jal        func_800428E4
    /* 3B148 8004A948 00000000 */   nop
    /* 3B14C 8004A94C 0C00428C */  lw         $v0, 0xC($v0)
    /* 3B150 8004A950 00000000 */  nop
    /* 3B154 8004A954 09F84000 */  jalr       $v0
    /* 3B158 8004A958 21208002 */   addu      $a0, $s4, $zero
    /* 3B15C 8004A95C 2800BF8F */  lw         $ra, 0x28($sp)
    /* 3B160 8004A960 2400B58F */  lw         $s5, 0x24($sp)
    /* 3B164 8004A964 2000B48F */  lw         $s4, 0x20($sp)
    /* 3B168 8004A968 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3B16C 8004A96C 1800B28F */  lw         $s2, 0x18($sp)
    /* 3B170 8004A970 1400B18F */  lw         $s1, 0x14($sp)
    /* 3B174 8004A974 1000B08F */  lw         $s0, 0x10($sp)
    /* 3B178 8004A978 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 3B17C 8004A97C 0800E003 */  jr         $ra
    /* 3B180 8004A980 00000000 */   nop
endlabel StageRenderer__Destructor
