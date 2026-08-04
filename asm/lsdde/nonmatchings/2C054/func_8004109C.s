.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004109C, 0xE0

glabel func_8004109C
    /* 3189C 8004109C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 318A0 800410A0 2800BEAF */  sw         $fp, 0x28($sp)
    /* 318A4 800410A4 21F0A003 */  addu       $fp, $sp, $zero
    /* 318A8 800410A8 2400B5AF */  sw         $s5, 0x24($sp)
    /* 318AC 800410AC 21A88000 */  addu       $s5, $a0, $zero
    /* 318B0 800410B0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 318B4 800410B4 2190C000 */  addu       $s2, $a2, $zero
    /* 318B8 800410B8 0F004226 */  addiu      $v0, $s2, 0xF
    /* 318BC 800410BC C2100200 */  srl        $v0, $v0, 3
    /* 318C0 800410C0 C0100200 */  sll        $v0, $v0, 3
    /* 318C4 800410C4 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 318C8 800410C8 2000B4AF */  sw         $s4, 0x20($sp)
    /* 318CC 800410CC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 318D0 800410D0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 318D4 800410D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 318D8 800410D8 23E8A203 */  subu       $sp, $sp, $v0
    /* 318DC 800410DC 1000B327 */  addiu      $s3, $sp, 0x10
    /* 318E0 800410E0 0000A38F */  lw         $v1, 0x0($sp)
    /* 318E4 800410E4 23E8A203 */  subu       $sp, $sp, $v0
    /* 318E8 800410E8 2120A000 */  addu       $a0, $a1, $zero
    /* 318EC 800410EC 21A0E000 */  addu       $s4, $a3, $zero
    /* 318F0 800410F0 1000B127 */  addiu      $s1, $sp, 0x10
    /* 318F4 800410F4 0000A28F */  lw         $v0, 0x0($sp)
    /* 318F8 800410F8 6A04010C */  jal        func_800411A8
    /* 318FC 800410FC 00000000 */   nop
    /* 31900 80041100 21206002 */  addu       $a0, $s3, $zero
    /* 31904 80041104 DEA2000C */  jal        Str_Copy
    /* 31908 80041108 21284000 */   addu      $a1, $v0, $zero
    /* 3190C 8004110C D24C000C */  jal        func_80013348
    /* 31910 80041110 21204000 */   addu      $a0, $v0, $zero
    /* 31914 80041114 08008016 */  bnez       $s4, .Lfunc_8004109C_80041138
    /* 31918 80041118 23804202 */   subu      $s0, $s2, $v0
    /* 3191C 8004111C 21202002 */  addu       $a0, $s1, $zero
    /* 31920 80041120 30000534 */  ori        $a1, $zero, 0x30
    /* 31924 80041124 5F04010C */  jal        memset
    /* 31928 80041128 21304002 */   addu      $a2, $s2, $zero
    /* 3192C 8004112C 21203002 */  addu       $a0, $s1, $s0
    /* 31930 80041130 DEA2000C */  jal        Str_Copy
    /* 31934 80041134 21286002 */   addu      $a1, $s3, $zero
  .Lfunc_8004109C_80041138:
    /* 31938 80041138 02008012 */  beqz       $s4, .Lfunc_8004109C_80041144
    /* 3193C 8004113C 21282002 */   addu      $a1, $s1, $zero
    /* 31940 80041140 21286002 */  addu       $a1, $s3, $zero
  .Lfunc_8004109C_80041144:
    /* 31944 80041144 0804010C */  jal        func_80041020
    /* 31948 80041148 2120A002 */   addu      $a0, $s5, $zero
    /* 3194C 8004114C 21E8C003 */  addu       $sp, $fp, $zero
    /* 31950 80041150 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 31954 80041154 2800BE8F */  lw         $fp, 0x28($sp)
    /* 31958 80041158 2400B58F */  lw         $s5, 0x24($sp)
    /* 3195C 8004115C 2000B48F */  lw         $s4, 0x20($sp)
    /* 31960 80041160 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 31964 80041164 1800B28F */  lw         $s2, 0x18($sp)
    /* 31968 80041168 1400B18F */  lw         $s1, 0x14($sp)
    /* 3196C 8004116C 1000B08F */  lw         $s0, 0x10($sp)
    /* 31970 80041170 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 31974 80041174 0800E003 */  jr         $ra
    /* 31978 80041178 00000000 */   nop
endlabel func_8004109C
