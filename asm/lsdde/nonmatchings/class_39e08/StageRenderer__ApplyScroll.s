.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__ApplyScroll, 0x1D4

glabel StageRenderer__ApplyScroll
    /* 3B900 8004B100 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 3B904 8004B104 4400B5AF */  sw         $s5, 0x44($sp)
    /* 3B908 8004B108 21A88000 */  addu       $s5, $a0, $zero
    /* 3B90C 8004B10C 4800B6AF */  sw         $s6, 0x48($sp)
    /* 3B910 8004B110 21B0A000 */  addu       $s6, $a1, $zero
    /* 3B914 8004B114 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* 3B918 8004B118 21B8C000 */  addu       $s7, $a2, $zero
    /* 3B91C 8004B11C 8C00A726 */  addiu      $a3, $s5, 0x8C
    /* 3B920 8004B120 5400BFAF */  sw         $ra, 0x54($sp)
    /* 3B924 8004B124 5000BEAF */  sw         $fp, 0x50($sp)
    /* 3B928 8004B128 4000B4AF */  sw         $s4, 0x40($sp)
    /* 3B92C 8004B12C 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 3B930 8004B130 3800B2AF */  sw         $s2, 0x38($sp)
    /* 3B934 8004B134 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3B938 8004B138 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3B93C 8004B13C 1000A7AF */  sw         $a3, 0x10($sp)
    /* 3B940 8004B140 8800A28E */  lw         $v0, 0x88($s5)
    /* 3B944 8004B144 00000000 */  nop
    /* 3B948 8004B148 55004018 */  blez       $v0, .Lfunc_8004B100_8004B2A0
    /* 3B94C 8004B14C 21F00000 */   addu      $fp, $zero, $zero
    /* 3B950 8004B150 9600B226 */  addiu      $s2, $s5, 0x96
  .Lfunc_8004B100_8004B154:
    /* 3B954 8004B154 1000A78F */  lw         $a3, 0x10($sp)
    /* 3B958 8004B158 00000000 */  nop
    /* 3B95C 8004B15C 0000E38C */  lw         $v1, 0x0($a3)
    /* 3B960 8004B160 00000000 */  nop
    /* 3B964 8004B164 C0100300 */  sll        $v0, $v1, 3
    /* 3B968 8004B168 23104300 */  subu       $v0, $v0, $v1
    /* 3B96C 8004B16C 80100200 */  sll        $v0, $v0, 2
    /* 3B970 8004B170 EC004224 */  addiu      $v0, $v0, 0xEC
    /* 3B974 8004B174 2118A202 */  addu       $v1, $s5, $v0
    /* 3B978 8004B178 0400628C */  lw         $v0, 0x4($v1)
    /* 3B97C 8004B17C 00000000 */  nop
    /* 3B980 8004B180 2C004284 */  lh         $v0, 0x2C($v0)
    /* 3B984 8004B184 00000000 */  nop
    /* 3B988 8004B188 3D004010 */  beqz       $v0, .Lfunc_8004B100_8004B280
    /* 3B98C 8004B18C 00000000 */   nop
    /* 3B990 8004B190 21A00000 */  addu       $s4, $zero, $zero
    /* 3B994 8004B194 FAFF4486 */  lh         $a0, -0x6($s2)
    /* 3B998 8004B198 1000628C */  lw         $v0, 0x10($v1)
    /* 3B99C 8004B19C FCFF4386 */  lh         $v1, -0x4($s2)
    /* 3B9A0 8004B1A0 80200400 */  sll        $a0, $a0, 2
    /* 3B9A4 8004B1A4 21208200 */  addu       $a0, $a0, $v0
    /* 3B9A8 8004B1A8 80100300 */  sll        $v0, $v1, 2
    /* 3B9AC 8004B1AC 21104300 */  addu       $v0, $v0, $v1
    /* 3B9B0 8004B1B0 00110200 */  sll        $v0, $v0, 4
    /* 3B9B4 8004B1B4 00004386 */  lh         $v1, 0x0($s2)
    /* 3B9B8 8004B1B8 00000000 */  nop
    /* 3B9BC 8004B1BC 30006018 */  blez       $v1, .Lfunc_8004B100_8004B280
    /* 3B9C0 8004B1C0 21988200 */   addu      $s3, $a0, $v0
  .Lfunc_8004B100_8004B1C4:
    /* 3B9C4 8004B1C4 FEFF4286 */  lh         $v0, -0x2($s2)
    /* 3B9C8 8004B1C8 00000000 */  nop
    /* 3B9CC 8004B1CC 21004018 */  blez       $v0, .Lfunc_8004B100_8004B254
    /* 3B9D0 8004B1D0 21880000 */   addu      $s1, $zero, $zero
  .Lfunc_8004B100_8004B1D4:
    /* 3B9D4 8004B1D4 BC00A296 */  lhu        $v0, 0xBC($s5)
    /* 3B9D8 8004B1D8 00000000 */  nop
    /* 3B9DC 8004B1DC C001A2A6 */  sh         $v0, 0x1C0($s5)
    /* 3B9E0 8004B1E0 FAFF4292 */  lbu        $v0, -0x6($s2)
    /* 3B9E4 8004B1E4 00000000 */  nop
    /* 3B9E8 8004B1E8 21105100 */  addu       $v0, $v0, $s1
    /* 3B9EC 8004B1EC C201A2A2 */  sb         $v0, 0x1C2($s5)
    /* 3B9F0 8004B1F0 FCFF4292 */  lbu        $v0, -0x4($s2)
    /* 3B9F4 8004B1F4 2128C002 */  addu       $a1, $s6, $zero
    /* 3B9F8 8004B1F8 21105400 */  addu       $v0, $v0, $s4
    /* 3B9FC 8004B1FC C301A2A2 */  sb         $v0, 0x1C3($s5)
    /* 3BA00 8004B200 0000648E */  lw         $a0, 0x0($s3)
    /* 3BA04 8004B204 B52C010C */  jal        StageRenderer__TeardownIfFlagged
    /* 3BA08 8004B208 2130E002 */   addu      $a2, $s7, $zero
    /* 3BA0C 8004B20C 0000628E */  lw         $v0, 0x0($s3)
    /* 3BA10 8004B210 00000000 */  nop
    /* 3BA14 8004B214 3800508C */  lw         $s0, 0x38($v0)
    /* 3BA18 8004B218 00000000 */  nop
    /* 3BA1C 8004B21C 08000012 */  beqz       $s0, .Lfunc_8004B100_8004B240
    /* 3BA20 8004B220 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_8004B100_8004B224:
    /* 3BA24 8004B224 2128C002 */  addu       $a1, $s6, $zero
    /* 3BA28 8004B228 B52C010C */  jal        StageRenderer__TeardownIfFlagged
    /* 3BA2C 8004B22C 2130E002 */   addu      $a2, $s7, $zero
    /* 3BA30 8004B230 3800108E */  lw         $s0, 0x38($s0)
    /* 3BA34 8004B234 00000000 */  nop
    /* 3BA38 8004B238 FAFF0016 */  bnez       $s0, .Lfunc_8004B100_8004B224
    /* 3BA3C 8004B23C 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_8004B100_8004B240:
    /* 3BA40 8004B240 FEFF4286 */  lh         $v0, -0x2($s2)
    /* 3BA44 8004B244 01003126 */  addiu      $s1, $s1, 0x1
    /* 3BA48 8004B248 2A102202 */  slt        $v0, $s1, $v0
    /* 3BA4C 8004B24C E1FF4014 */  bnez       $v0, .Lfunc_8004B100_8004B1D4
    /* 3BA50 8004B250 04007326 */   addiu     $s3, $s3, 0x4
  .Lfunc_8004B100_8004B254:
    /* 3BA54 8004B254 01009426 */  addiu      $s4, $s4, 0x1
    /* 3BA58 8004B258 FEFF4286 */  lh         $v0, -0x2($s2)
    /* 3BA5C 8004B25C 14000334 */  ori        $v1, $zero, 0x14
    /* 3BA60 8004B260 23186200 */  subu       $v1, $v1, $v0
    /* 3BA64 8004B264 80180300 */  sll        $v1, $v1, 2
    /* 3BA68 8004B268 00004286 */  lh         $v0, 0x0($s2)
    /* 3BA6C 8004B26C 00000000 */  nop
    /* 3BA70 8004B270 2A108202 */  slt        $v0, $s4, $v0
    /* 3BA74 8004B274 D3FF4014 */  bnez       $v0, .Lfunc_8004B100_8004B1C4
    /* 3BA78 8004B278 21986302 */   addu      $s3, $s3, $v1
    /* 3BA7C 8004B27C 1000A78F */  lw         $a3, 0x10($sp)
  .Lfunc_8004B100_8004B280:
    /* 3BA80 8004B280 00000000 */  nop
    /* 3BA84 8004B284 0C00E724 */  addiu      $a3, $a3, 0xC
    /* 3BA88 8004B288 1000A7AF */  sw         $a3, 0x10($sp)
    /* 3BA8C 8004B28C 8800A28E */  lw         $v0, 0x88($s5)
    /* 3BA90 8004B290 0100DE27 */  addiu      $fp, $fp, 0x1
    /* 3BA94 8004B294 2A10C203 */  slt        $v0, $fp, $v0
    /* 3BA98 8004B298 AEFF4014 */  bnez       $v0, .Lfunc_8004B100_8004B154
    /* 3BA9C 8004B29C 0C005226 */   addiu     $s2, $s2, 0xC
  .Lfunc_8004B100_8004B2A0:
    /* 3BAA0 8004B2A0 5400BF8F */  lw         $ra, 0x54($sp)
    /* 3BAA4 8004B2A4 5000BE8F */  lw         $fp, 0x50($sp)
    /* 3BAA8 8004B2A8 4C00B78F */  lw         $s7, 0x4C($sp)
    /* 3BAAC 8004B2AC 4800B68F */  lw         $s6, 0x48($sp)
    /* 3BAB0 8004B2B0 4400B58F */  lw         $s5, 0x44($sp)
    /* 3BAB4 8004B2B4 4000B48F */  lw         $s4, 0x40($sp)
    /* 3BAB8 8004B2B8 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 3BABC 8004B2BC 3800B28F */  lw         $s2, 0x38($sp)
    /* 3BAC0 8004B2C0 3400B18F */  lw         $s1, 0x34($sp)
    /* 3BAC4 8004B2C4 3000B08F */  lw         $s0, 0x30($sp)
    /* 3BAC8 8004B2C8 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 3BACC 8004B2CC 0800E003 */  jr         $ra
    /* 3BAD0 8004B2D0 00000000 */   nop
endlabel StageRenderer__ApplyScroll
