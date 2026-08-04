.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching Effect__CreateObjects, 0x174

glabel Effect__CreateObjects
    /* 2E90C 8003E10C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2E910 8003E110 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2E914 8003E114 21808000 */  addu       $s0, $a0, $zero
    /* 2E918 8003E118 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2E91C 8003E11C 2188A000 */  addu       $s1, $a1, $zero
    /* 2E920 8003E120 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2E924 8003E124 2400BFAF */  sw         $ra, 0x24($sp)
    /* 2E928 8003E128 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2E92C 8003E12C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2E930 8003E130 0800228E */  lw         $v0, 0x8($s1)
    /* 2E934 8003E134 0000138E */  lw         $s3, 0x0($s0)
    /* 2E938 8003E138 03004014 */  bnez       $v0, .Lfunc_8003E10C_8003E148
    /* 2E93C 8003E13C 21A0C000 */   addu      $s4, $a2, $zero
    /* 2E940 8003E140 0009010C */  jal        func_80042400
    /* 2E944 8003E144 00000000 */   nop
  .Lfunc_8003E10C_8003E148:
    /* 2E948 8003E148 100002AE */  sw         $v0, 0x10($s0)
    /* 2E94C 8003E14C 0C00228E */  lw         $v0, 0xC($s1)
    /* 2E950 8003E150 00000000 */  nop
    /* 2E954 8003E154 03004014 */  bnez       $v0, .Lfunc_8003E10C_8003E164
    /* 2E958 8003E158 00000000 */   nop
    /* 2E95C 8003E15C A509010C */  jal        func_80042694
    /* 2E960 8003E160 00000000 */   nop
  .Lfunc_8003E10C_8003E164:
    /* 2E964 8003E164 140002AE */  sw         $v0, 0x14($s0)
    /* 2E968 8003E168 1000228E */  lw         $v0, 0x10($s1)
    /* 2E96C 8003E16C 00000000 */  nop
    /* 2E970 8003E170 03004014 */  bnez       $v0, .Lfunc_8003E10C_8003E180
    /* 2E974 8003E174 00000000 */   nop
    /* 2E978 8003E178 76F9000C */  jal        New_ModelObj
    /* 2E97C 8003E17C 00000000 */   nop
  .Lfunc_8003E10C_8003E180:
    /* 2E980 8003E180 180002AE */  sw         $v0, 0x18($s0)
    /* 2E984 8003E184 0C0011AE */  sw         $s1, 0xC($s0)
    /* 2E988 8003E188 0000258E */  lw         $a1, 0x0($s1)
    /* 2E98C 8003E18C 1000628E */  lw         $v0, 0x10($s3)
    /* 2E990 8003E190 1800128E */  lw         $s2, 0x18($s0)
    /* 2E994 8003E194 09F84000 */  jalr       $v0
    /* 2E998 8003E198 21200002 */   addu      $a0, $s0, $zero
    /* 2E99C 8003E19C 0400258E */  lw         $a1, 0x4($s1)
    /* 2E9A0 8003E1A0 1000628E */  lw         $v0, 0x10($s3)
    /* 2E9A4 8003E1A4 00000000 */  nop
    /* 2E9A8 8003E1A8 09F84000 */  jalr       $v0
    /* 2E9AC 8003E1AC 21200002 */   addu      $a0, $s0, $zero
    /* 2E9B0 8003E1B0 1000058E */  lw         $a1, 0x10($s0)
    /* 2E9B4 8003E1B4 1000628E */  lw         $v0, 0x10($s3)
    /* 2E9B8 8003E1B8 00000000 */  nop
    /* 2E9BC 8003E1BC 09F84000 */  jalr       $v0
    /* 2E9C0 8003E1C0 21200002 */   addu      $a0, $s0, $zero
    /* 2E9C4 8003E1C4 21200002 */  addu       $a0, $s0, $zero
    /* 2E9C8 8003E1C8 21280000 */  addu       $a1, $zero, $zero
    /* 2E9CC 8003E1CC 21300000 */  addu       $a2, $zero, $zero
    /* 2E9D0 8003E1D0 4C00628E */  lw         $v0, 0x4C($s3)
    /* 2E9D4 8003E1D4 00000000 */  nop
    /* 2E9D8 8003E1D8 09F84000 */  jalr       $v0
    /* 2E9DC 8003E1DC 21380000 */   addu      $a3, $zero, $zero
    /* 2E9E0 8003E1E0 1E008016 */  bnez       $s4, .Lfunc_8003E10C_8003E25C
    /* 2E9E4 8003E1E4 240014AE */   sw        $s4, 0x24($s0)
    /* 2E9E8 8003E1E8 0000428E */  lw         $v0, 0x0($s2)
    /* 2E9EC 8003E1EC 0000258E */  lw         $a1, 0x0($s1)
    /* 2E9F0 8003E1F0 1000428C */  lw         $v0, 0x10($v0)
    /* 2E9F4 8003E1F4 00000000 */  nop
    /* 2E9F8 8003E1F8 09F84000 */  jalr       $v0
    /* 2E9FC 8003E1FC 21204002 */   addu      $a0, $s2, $zero
    /* 2EA00 8003E200 0000428E */  lw         $v0, 0x0($s2)
    /* 2EA04 8003E204 1000058E */  lw         $a1, 0x10($s0)
    /* 2EA08 8003E208 1000428C */  lw         $v0, 0x10($v0)
    /* 2EA0C 8003E20C 00000000 */  nop
    /* 2EA10 8003E210 09F84000 */  jalr       $v0
    /* 2EA14 8003E214 21204002 */   addu      $a0, $s2, $zero
    /* 2EA18 8003E218 1400048E */  lw         $a0, 0x14($s0)
    /* 2EA1C 8003E21C 00000000 */  nop
    /* 2EA20 8003E220 0000828C */  lw         $v0, 0x0($a0)
    /* 2EA24 8003E224 1000058E */  lw         $a1, 0x10($s0)
    /* 2EA28 8003E228 1000428C */  lw         $v0, 0x10($v0)
    /* 2EA2C 8003E22C 00000000 */  nop
    /* 2EA30 8003E230 09F84000 */  jalr       $v0
    /* 2EA34 8003E234 00000000 */   nop
    /* 2EA38 8003E238 21200002 */  addu       $a0, $s0, $zero
    /* 2EA3C 8003E23C 6000628E */  lw         $v0, 0x60($s3)
    /* 2EA40 8003E240 00000000 */  nop
    /* 2EA44 8003E244 09F84000 */  jalr       $v0
    /* 2EA48 8003E248 02000534 */   ori       $a1, $zero, 0x2
    /* 2EA4C 8003E24C 4800628E */  lw         $v0, 0x48($s3)
    /* 2EA50 8003E250 00000000 */  nop
    /* 2EA54 8003E254 09F84000 */  jalr       $v0
    /* 2EA58 8003E258 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_8003E10C_8003E25C:
    /* 2EA5C 8003E25C 2400BF8F */  lw         $ra, 0x24($sp)
    /* 2EA60 8003E260 2000B48F */  lw         $s4, 0x20($sp)
    /* 2EA64 8003E264 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2EA68 8003E268 1800B28F */  lw         $s2, 0x18($sp)
    /* 2EA6C 8003E26C 1400B18F */  lw         $s1, 0x14($sp)
    /* 2EA70 8003E270 1000B08F */  lw         $s0, 0x10($sp)
    /* 2EA74 8003E274 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2EA78 8003E278 0800E003 */  jr         $ra
    /* 2EA7C 8003E27C 00000000 */   nop
endlabel Effect__CreateObjects
