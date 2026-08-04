.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamSys__InstantTeleportLink, 0xFC

glabel DreamSys__InstantTeleportLink
    /* 4B02C 8005A82C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 4B030 8005A830 2000B0AF */  sw         $s0, 0x20($sp)
    /* 4B034 8005A834 21808000 */  addu       $s0, $a0, $zero
    /* 4B038 8005A838 2800B2AF */  sw         $s2, 0x28($sp)
    /* 4B03C 8005A83C 6C011226 */  addiu      $s2, $s0, 0x16C
    /* 4B040 8005A840 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 4B044 8005A844 2400B1AF */  sw         $s1, 0x24($sp)
    /* 4B048 8005A848 6401068E */  lw         $a2, 0x164($s0)
    /* 4B04C 8005A84C DD6F010C */  jal        Test4InstantTeleporters
    /* 4B050 8005A850 21204002 */   addu      $a0, $s2, $zero
    /* 4B054 8005A854 21884000 */  addu       $s1, $v0, $zero
    /* 4B058 8005A858 2C002006 */  bltz       $s1, .Lfunc_8005A82C_8005A90C
    /* 4B05C 8005A85C 21100000 */   addu      $v0, $zero, $zero
    /* 4B060 8005A860 F16F010C */  jal        GetTeleporterTimeBonus
    /* 4B064 8005A864 00000000 */   nop
    /* 4B068 8005A868 21200002 */  addu       $a0, $s0, $zero
    /* 4B06C 8005A86C 21282002 */  addu       $a1, $s1, $zero
    /* 4B070 8005A870 11000634 */  ori        $a2, $zero, 0x11
    /* 4B074 8005A874 21884000 */  addu       $s1, $v0, $zero
    /* 4B078 8005A878 4A6A010C */  jal        ExecuteLink
    /* 4B07C 8005A87C 21380000 */   addu      $a3, $zero, $zero
    /* 4B080 8005A880 21004010 */  beqz       $v0, .Lfunc_8005A82C_8005A908
    /* 4B084 8005A884 1000A527 */   addiu     $a1, $sp, 0x10
    /* 4B088 8005A888 4C00048E */  lw         $a0, 0x4C($s0)
    /* 4B08C 8005A88C 440000AE */  sw         $zero, 0x44($s0)
    /* 4B090 8005A890 0000828C */  lw         $v0, 0x0($a0)
    /* 4B094 8005A894 00000000 */  nop
    /* 4B098 8005A898 E800428C */  lw         $v0, 0xE8($v0)
    /* 4B09C 8005A89C 00000000 */  nop
    /* 4B0A0 8005A8A0 09F84000 */  jalr       $v0
    /* 4B0A4 8005A8A4 21304002 */   addu      $a2, $s2, $zero
    /* 4B0A8 8005A8A8 0000028E */  lw         $v0, 0x0($s0)
    /* 4B0AC 8005A8AC 21200002 */  addu       $a0, $s0, $zero
    /* 4B0B0 8005A8B0 B800428C */  lw         $v0, 0xB8($v0)
    /* 4B0B4 8005A8B4 00000000 */  nop
    /* 4B0B8 8005A8B8 09F84000 */  jalr       $v0
    /* 4B0BC 8005A8BC 1000A527 */   addiu     $a1, $sp, 0x10
    /* 4B0C0 8005A8C0 12002012 */  beqz       $s1, .Lfunc_8005A82C_8005A90C
    /* 4B0C4 8005A8C4 01000234 */   ori       $v0, $zero, 0x1
    /* 4B0C8 8005A8C8 6800028E */  lw         $v0, 0x68($s0)
    /* 4B0CC 8005A8CC 00000000 */  nop
    /* 4B0D0 8005A8D0 0D004014 */  bnez       $v0, .Lfunc_8005A82C_8005A908
    /* 4B0D4 8005A8D4 00000000 */   nop
    /* 4B0D8 8005A8D8 0000028E */  lw         $v0, 0x0($s0)
    /* 4B0DC 8005A8DC 00000000 */  nop
    /* 4B0E0 8005A8E0 0801428C */  lw         $v0, 0x108($v0)
    /* 4B0E4 8005A8E4 00000000 */  nop
    /* 4B0E8 8005A8E8 09F84000 */  jalr       $v0
    /* 4B0EC 8005A8EC 21200002 */   addu      $a0, $s0, $zero
    /* 4B0F0 8005A8F0 0000038E */  lw         $v1, 0x0($s0)
    /* 4B0F4 8005A8F4 21200002 */  addu       $a0, $s0, $zero
    /* 4B0F8 8005A8F8 0401638C */  lw         $v1, 0x104($v1)
    /* 4B0FC 8005A8FC 00000000 */  nop
    /* 4B100 8005A900 09F86000 */  jalr       $v1
    /* 4B104 8005A904 21285100 */   addu      $a1, $v0, $s1
  .Lfunc_8005A82C_8005A908:
    /* 4B108 8005A908 01000234 */  ori        $v0, $zero, 0x1
  .Lfunc_8005A82C_8005A90C:
    /* 4B10C 8005A90C 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 4B110 8005A910 2800B28F */  lw         $s2, 0x28($sp)
    /* 4B114 8005A914 2400B18F */  lw         $s1, 0x24($sp)
    /* 4B118 8005A918 2000B08F */  lw         $s0, 0x20($sp)
    /* 4B11C 8005A91C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 4B120 8005A920 0800E003 */  jr         $ra
    /* 4B124 8005A924 00000000 */   nop
endlabel DreamSys__InstantTeleportLink
