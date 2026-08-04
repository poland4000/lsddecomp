.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching WorldEffect__Init, 0xF8

glabel WorldEffect__Init
    /* 2C0E4 8003B8E4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2C0E8 8003B8E8 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2C0EC 8003B8EC 3800B48F */  lw         $s4, 0x38($sp)
    /* 2C0F0 8003B8F0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2C0F4 8003B8F4 21988000 */  addu       $s3, $a0, $zero
    /* 2C0F8 8003B8F8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2C0FC 8003B8FC 2180A000 */  addu       $s0, $a1, $zero
    /* 2C100 8003B900 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2C104 8003B904 2188C000 */  addu       $s1, $a2, $zero
    /* 2C108 8003B908 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2C10C 8003B90C 2400BFAF */  sw         $ra, 0x24($sp)
    /* 2C110 8003B910 EFF7000C */  jal        Get_vtable_AnimEffect
    /* 2C114 8003B914 2190E000 */   addu      $s2, $a3, $zero
    /* 2C118 8003B918 21206002 */  addu       $a0, $s3, $zero
    /* 2C11C 8003B91C 21280002 */  addu       $a1, $s0, $zero
    /* 2C120 8003B920 21302002 */  addu       $a2, $s1, $zero
    /* 2C124 8003B924 0800428C */  lw         $v0, 0x8($v0)
    /* 2C128 8003B928 00000000 */  nop
    /* 2C12C 8003B92C 09F84000 */  jalr       $v0
    /* 2C130 8003B930 21384002 */   addu      $a3, $s2, $zero
    /* 2C134 8003B934 A1EF000C */  jal        Get_vtable_WorldEffect
    /* 2C138 8003B938 00000000 */   nop
    /* 2C13C 8003B93C 09008012 */  beqz       $s4, .Lfunc_8003B8E4_8003B964
    /* 2C140 8003B940 000062AE */   sw        $v0, 0x0($s3)
    /* 2C144 8003B944 0000828E */  lw         $v0, 0x0($s4)
    /* 2C148 8003B948 0400838E */  lw         $v1, 0x4($s4)
    /* 2C14C 8003B94C 0800848E */  lw         $a0, 0x8($s4)
    /* 2C150 8003B950 A80062AE */  sw         $v0, 0xA8($s3)
    /* 2C154 8003B954 AC0063AE */  sw         $v1, 0xAC($s3)
    /* 2C158 8003B958 B00064AE */  sw         $a0, 0xB0($s3)
    /* 2C15C 8003B95C 61EE0008 */  j          .Lfunc_8003B8E4_8003B984
    /* 2C160 8003B960 00000000 */   nop
  .Lfunc_8003B8E4_8003B964:
    /* 2C164 8003B964 F3F7000C */  jal        Get_AnimEffectDefaults
    /* 2C168 8003B968 00000000 */   nop
    /* 2C16C 8003B96C 0000438C */  lw         $v1, 0x0($v0)
    /* 2C170 8003B970 0400448C */  lw         $a0, 0x4($v0)
    /* 2C174 8003B974 0800458C */  lw         $a1, 0x8($v0)
    /* 2C178 8003B978 A80063AE */  sw         $v1, 0xA8($s3)
    /* 2C17C 8003B97C AC0064AE */  sw         $a0, 0xAC($s3)
    /* 2C180 8003B980 B00065AE */  sw         $a1, 0xB0($s3)
  .Lfunc_8003B8E4_8003B984:
    /* 2C184 8003B984 F3F7000C */  jal        Get_AnimEffectDefaults
    /* 2C188 8003B988 00000000 */   nop
    /* 2C18C 8003B98C 21204000 */  addu       $a0, $v0, $zero
    /* 2C190 8003B990 21280000 */  addu       $a1, $zero, $zero
    /* 2C194 8003B994 0E15010C */  jal        func_80045438
    /* 2C198 8003B998 21300000 */   addu      $a2, $zero, $zero
    /* 2C19C 8003B99C 0000638E */  lw         $v1, 0x0($s3)
    /* 2C1A0 8003B9A0 B40062AE */  sw         $v0, 0xB4($s3)
    /* 2C1A4 8003B9A4 B80060AE */  sw         $zero, 0xB8($s3)
    /* 2C1A8 8003B9A8 4000628C */  lw         $v0, 0x40($v1)
    /* 2C1AC 8003B9AC 00000000 */  nop
    /* 2C1B0 8003B9B0 09F84000 */  jalr       $v0
    /* 2C1B4 8003B9B4 21206002 */   addu      $a0, $s3, $zero
    /* 2C1B8 8003B9B8 2400BF8F */  lw         $ra, 0x24($sp)
    /* 2C1BC 8003B9BC 2000B48F */  lw         $s4, 0x20($sp)
    /* 2C1C0 8003B9C0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2C1C4 8003B9C4 1800B28F */  lw         $s2, 0x18($sp)
    /* 2C1C8 8003B9C8 1400B18F */  lw         $s1, 0x14($sp)
    /* 2C1CC 8003B9CC 1000B08F */  lw         $s0, 0x10($sp)
    /* 2C1D0 8003B9D0 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2C1D4 8003B9D4 0800E003 */  jr         $ra
    /* 2C1D8 8003B9D8 00000000 */   nop
endlabel WorldEffect__Init
