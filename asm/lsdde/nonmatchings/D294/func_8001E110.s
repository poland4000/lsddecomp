.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001E110, 0x1D8

glabel func_8001E110
    /* E910 8001E110 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* E914 8001E114 2400B3AF */  sw         $s3, 0x24($sp)
    /* E918 8001E118 21988000 */  addu       $s3, $a0, $zero
    /* E91C 8001E11C 2800B4AF */  sw         $s4, 0x28($sp)
    /* E920 8001E120 21A0A000 */  addu       $s4, $a1, $zero
    /* E924 8001E124 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* E928 8001E128 2188C000 */  addu       $s1, $a2, $zero
    /* E92C 8001E12C 2000B2AF */  sw         $s2, 0x20($sp)
    /* E930 8001E130 2190E000 */  addu       $s2, $a3, $zero
    /* E934 8001E134 21208002 */  addu       $a0, $s4, $zero
    /* E938 8001E138 21282002 */  addu       $a1, $s1, $zero
    /* E93C 8001E13C 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* E940 8001E140 3F7B000C */  jal        CalcBoxOutcode
    /* E944 8001E144 1800B0AF */   sw        $s0, 0x18($sp)
    /* E948 8001E148 21208002 */  addu       $a0, $s4, $zero
    /* E94C 8001E14C 21284002 */  addu       $a1, $s2, $zero
    /* E950 8001E150 3F7B000C */  jal        CalcBoxOutcode
    /* E954 8001E154 21804000 */   addu      $s0, $v0, $zero
    /* E958 8001E158 21184000 */  addu       $v1, $v0, $zero
    /* E95C 8001E15C FF000232 */  andi       $v0, $s0, 0xFF
    /* E960 8001E160 05004014 */  bnez       $v0, .Lfunc_8001E110_8001E178
    /* E964 8001E164 FF006230 */   andi      $v0, $v1, 0xFF
    /* E968 8001E168 0E004014 */  bnez       $v0, .Lfunc_8001E110_8001E1A4
    /* E96C 8001E16C FF000232 */   andi      $v0, $s0, 0xFF
    /* E970 8001E170 B1780008 */  j          .Lfunc_8001E110_8001E2C4
    /* E974 8001E174 01000234 */   ori       $v0, $zero, 0x1
  .Lfunc_8001E110_8001E178:
    /* E978 8001E178 09004014 */  bnez       $v0, .Lfunc_8001E110_8001E1A0
    /* E97C 8001E17C 00000000 */   nop
    /* E980 8001E180 05006012 */  beqz       $s3, .Lfunc_8001E110_8001E198
    /* E984 8001E184 21206002 */   addu      $a0, $s3, $zero
    /* E988 8001E188 21288002 */  addu       $a1, $s4, $zero
    /* E98C 8001E18C 21304002 */  addu       $a2, $s2, $zero
    /* E990 8001E190 BA78000C */  jal        func_8001E2E8
    /* E994 8001E194 21382002 */   addu      $a3, $s1, $zero
  .Lfunc_8001E110_8001E198:
    /* E998 8001E198 B1780008 */  j          .Lfunc_8001E110_8001E2C4
    /* E99C 8001E19C 03000234 */   ori       $v0, $zero, 0x3
  .Lfunc_8001E110_8001E1A0:
    /* E9A0 8001E1A0 FF000232 */  andi       $v0, $s0, 0xFF
  .Lfunc_8001E110_8001E1A4:
    /* E9A4 8001E1A4 09004014 */  bnez       $v0, .Lfunc_8001E110_8001E1CC
    /* E9A8 8001E1A8 00000000 */   nop
    /* E9AC 8001E1AC 05006012 */  beqz       $s3, .Lfunc_8001E110_8001E1C4
    /* E9B0 8001E1B0 21206002 */   addu      $a0, $s3, $zero
    /* E9B4 8001E1B4 21288002 */  addu       $a1, $s4, $zero
    /* E9B8 8001E1B8 21302002 */  addu       $a2, $s1, $zero
    /* E9BC 8001E1BC BA78000C */  jal        func_8001E2E8
    /* E9C0 8001E1C0 21384002 */   addu      $a3, $s2, $zero
  .Lfunc_8001E110_8001E1C4:
    /* E9C4 8001E1C4 B1780008 */  j          .Lfunc_8001E110_8001E2C4
    /* E9C8 8001E1C8 02000234 */   ori       $v0, $zero, 0x2
  .Lfunc_8001E110_8001E1CC:
    /* E9CC 8001E1CC 24100302 */  and        $v0, $s0, $v1
    /* E9D0 8001E1D0 FF004230 */  andi       $v0, $v0, 0xFF
    /* E9D4 8001E1D4 3B004014 */  bnez       $v0, .Lfunc_8001E110_8001E2C4
    /* E9D8 8001E1D8 21100000 */   addu      $v0, $zero, $zero
    /* E9DC 8001E1DC 00002486 */  lh         $a0, 0x0($s1)
    /* E9E0 8001E1E0 00004286 */  lh         $v0, 0x0($s2)
    /* E9E4 8001E1E4 00000000 */  nop
    /* E9E8 8001E1E8 21208200 */  addu       $a0, $a0, $v0
    /* E9EC 8001E1EC 43200400 */  sra        $a0, $a0, 1
    /* E9F0 8001E1F0 1000A4A7 */  sh         $a0, 0x10($sp)
    /* E9F4 8001E1F4 02002286 */  lh         $v0, 0x2($s1)
    /* E9F8 8001E1F8 02004386 */  lh         $v1, 0x2($s2)
    /* E9FC 8001E1FC 00000000 */  nop
    /* EA00 8001E200 21104300 */  addu       $v0, $v0, $v1
    /* EA04 8001E204 43280200 */  sra        $a1, $v0, 1
    /* EA08 8001E208 1200A5A7 */  sh         $a1, 0x12($sp)
    /* EA0C 8001E20C 04002286 */  lh         $v0, 0x4($s1)
    /* EA10 8001E210 04004386 */  lh         $v1, 0x4($s2)
    /* EA14 8001E214 00000000 */  nop
    /* EA18 8001E218 21104300 */  addu       $v0, $v0, $v1
    /* EA1C 8001E21C 43180200 */  sra        $v1, $v0, 1
    /* EA20 8001E220 1400A3A7 */  sh         $v1, 0x14($sp)
    /* EA24 8001E224 00002286 */  lh         $v0, 0x0($s1)
    /* EA28 8001E228 00000000 */  nop
    /* EA2C 8001E22C 09004414 */  bne        $v0, $a0, .Lfunc_8001E110_8001E254
    /* EA30 8001E230 00000000 */   nop
    /* EA34 8001E234 02002286 */  lh         $v0, 0x2($s1)
    /* EA38 8001E238 00000000 */  nop
    /* EA3C 8001E23C 05004514 */  bne        $v0, $a1, .Lfunc_8001E110_8001E254
    /* EA40 8001E240 00000000 */   nop
    /* EA44 8001E244 04002286 */  lh         $v0, 0x4($s1)
    /* EA48 8001E248 00000000 */  nop
    /* EA4C 8001E24C 1D004310 */  beq        $v0, $v1, .Lfunc_8001E110_8001E2C4
    /* EA50 8001E250 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_8001E110_8001E254:
    /* EA54 8001E254 00004386 */  lh         $v1, 0x0($s2)
    /* EA58 8001E258 1000A287 */  lh         $v0, 0x10($sp)
    /* EA5C 8001E25C 00000000 */  nop
    /* EA60 8001E260 0B006214 */  bne        $v1, $v0, .Lfunc_8001E110_8001E290
    /* EA64 8001E264 21206002 */   addu      $a0, $s3, $zero
    /* EA68 8001E268 02004386 */  lh         $v1, 0x2($s2)
    /* EA6C 8001E26C 1200A287 */  lh         $v0, 0x12($sp)
    /* EA70 8001E270 00000000 */  nop
    /* EA74 8001E274 07006214 */  bne        $v1, $v0, .Lfunc_8001E110_8001E294
    /* EA78 8001E278 21288002 */   addu      $a1, $s4, $zero
    /* EA7C 8001E27C 04004386 */  lh         $v1, 0x4($s2)
    /* EA80 8001E280 1400A287 */  lh         $v0, 0x14($sp)
    /* EA84 8001E284 00000000 */  nop
    /* EA88 8001E288 0E006210 */  beq        $v1, $v0, .Lfunc_8001E110_8001E2C4
    /* EA8C 8001E28C 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_8001E110_8001E290:
    /* EA90 8001E290 21288002 */  addu       $a1, $s4, $zero
  .Lfunc_8001E110_8001E294:
    /* EA94 8001E294 21302002 */  addu       $a2, $s1, $zero
    /* EA98 8001E298 4478000C */  jal        func_8001E110
    /* EA9C 8001E29C 1000A727 */   addiu     $a3, $sp, 0x10
    /* EAA0 8001E2A0 08004014 */  bnez       $v0, .Lfunc_8001E110_8001E2C4
    /* EAA4 8001E2A4 21206002 */   addu      $a0, $s3, $zero
    /* EAA8 8001E2A8 21288002 */  addu       $a1, $s4, $zero
    /* EAAC 8001E2AC 1000A627 */  addiu      $a2, $sp, 0x10
    /* EAB0 8001E2B0 4478000C */  jal        func_8001E110
    /* EAB4 8001E2B4 21384002 */   addu      $a3, $s2, $zero
    /* EAB8 8001E2B8 02004014 */  bnez       $v0, .Lfunc_8001E110_8001E2C4
    /* EABC 8001E2BC 00000000 */   nop
    /* EAC0 8001E2C0 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_8001E110_8001E2C4:
    /* EAC4 8001E2C4 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* EAC8 8001E2C8 2800B48F */  lw         $s4, 0x28($sp)
    /* EACC 8001E2CC 2400B38F */  lw         $s3, 0x24($sp)
    /* EAD0 8001E2D0 2000B28F */  lw         $s2, 0x20($sp)
    /* EAD4 8001E2D4 1C00B18F */  lw         $s1, 0x1C($sp)
    /* EAD8 8001E2D8 1800B08F */  lw         $s0, 0x18($sp)
    /* EADC 8001E2DC 3000BD27 */  addiu      $sp, $sp, 0x30
    /* EAE0 8001E2E0 0800E003 */  jr         $ra
    /* EAE4 8001E2E4 00000000 */   nop
endlabel func_8001E110
