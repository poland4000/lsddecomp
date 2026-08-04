.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001A064, 0x1C0

glabel func_8001A064
    /* A864 8001A064 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A868 8001A068 2000B2AF */  sw         $s2, 0x20($sp)
    /* A86C 8001A06C 2190A000 */  addu       $s2, $a1, $zero
    /* A870 8001A070 2400BFAF */  sw         $ra, 0x24($sp)
    /* A874 8001A074 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A878 8001A078 1800B0AF */  sw         $s0, 0x18($sp)
    /* A87C 8001A07C 7800428E */  lw         $v0, 0x78($s2)
    /* A880 8001A080 00000000 */  nop
    /* A884 8001A084 13004014 */  bnez       $v0, .Lfunc_8001A064_8001A0D4
    /* A888 8001A088 21888000 */   addu      $s1, $a0, $zero
    /* A88C 8001A08C FF00043C */  lui        $a0, (0xFFFFFF >> 16)
    /* A890 8001A090 FFFF8434 */  ori        $a0, $a0, (0xFFFFFF & 0xFFFF)
    /* A894 8001A094 00FF063C */  lui        $a2, (0xFF000000 >> 16)
    /* A898 8001A098 3000428E */  lw         $v0, 0x30($s2)
    /* A89C 8001A09C 0000238E */  lw         $v1, 0x0($s1)
    /* A8A0 8001A0A0 0000428C */  lw         $v0, 0x0($v0)
    /* A8A4 8001A0A4 24186600 */  and        $v1, $v1, $a2
    /* A8A8 8001A0A8 24104400 */  and        $v0, $v0, $a0
    /* A8AC 8001A0AC 25186200 */  or         $v1, $v1, $v0
    /* A8B0 8001A0B0 000023AE */  sw         $v1, 0x0($s1)
    /* A8B4 8001A0B4 3000458E */  lw         $a1, 0x30($s2)
    /* A8B8 8001A0B8 34002226 */  addiu      $v0, $s1, 0x34
    /* A8BC 8001A0BC 0000A38C */  lw         $v1, 0x0($a1)
    /* A8C0 8001A0C0 24202402 */  and        $a0, $s1, $a0
    /* A8C4 8001A0C4 24186600 */  and        $v1, $v1, $a2
    /* A8C8 8001A0C8 25186400 */  or         $v1, $v1, $a0
    /* A8CC 8001A0CC 82680008 */  j          .Lfunc_8001A064_8001A208
    /* A8D0 8001A0D0 0000A3AC */   sw        $v1, 0x0($a1)
  .Lfunc_8001A064_8001A0D4:
    /* A8D4 8001A0D4 0980103C */  lui        $s0, %hi(D_8008AEE8)
    /* A8D8 8001A0D8 E8AE1026 */  addiu      $s0, $s0, %lo(D_8008AEE8)
    /* A8DC 8001A0DC 21200002 */  addu       $a0, $s0, $zero
    /* A8E0 8001A0E0 21284002 */  addu       $a1, $s2, $zero
    /* A8E4 8001A0E4 0E002296 */  lhu        $v0, 0xE($s1)
    /* A8E8 8001A0E8 04002626 */  addiu      $a2, $s1, 0x4
    /* A8EC 8001A0EC 1000A2AF */  sw         $v0, 0x10($sp)
    /* A8F0 8001A0F0 1A002296 */  lhu        $v0, 0x1A($s1)
    /* A8F4 8001A0F4 01000734 */  ori        $a3, $zero, 0x1
    /* A8F8 8001A0F8 E068000C */  jal        func_8001A380
    /* A8FC 8001A0FC 1400A2AF */   sw        $v0, 0x14($sp)
    /* A900 8001A100 94004426 */  addiu      $a0, $s2, 0x94
    /* A904 8001A104 A4004526 */  addiu      $a1, $s2, 0xA4
    /* A908 8001A108 08002626 */  addiu      $a2, $s1, 0x8
    /* A90C 8001A10C 14002726 */  addiu      $a3, $s1, 0x14
    /* A910 8001A110 20002226 */  addiu      $v0, $s1, 0x20
    /* A914 8001A114 1000A2AF */  sw         $v0, 0x10($sp)
    /* A918 8001A118 2C002226 */  addiu      $v0, $s1, 0x2C
    /* A91C 8001A11C 3069000C */  jal        CopyPrimQuad
    /* A920 8001A120 1400A2AF */   sw        $v0, 0x14($sp)
    /* A924 8001A124 9400438E */  lw         $v1, 0x94($s2)
    /* A928 8001A128 26002296 */  lhu        $v0, 0x26($s1)
    /* A92C 8001A12C 00000000 */  nop
    /* A930 8001A130 0A0062A4 */  sh         $v0, 0xA($v1)
    /* A934 8001A134 9800438E */  lw         $v1, 0x98($s2)
    /* A938 8001A138 26002296 */  lhu        $v0, 0x26($s1)
    /* A93C 8001A13C 00000000 */  nop
    /* A940 8001A140 0A0062A4 */  sh         $v0, 0xA($v1)
    /* A944 8001A144 9C00438E */  lw         $v1, 0x9C($s2)
    /* A948 8001A148 32002296 */  lhu        $v0, 0x32($s1)
    /* A94C 8001A14C 00000000 */  nop
    /* A950 8001A150 0A0062A4 */  sh         $v0, 0xA($v1)
    /* A954 8001A154 A000438E */  lw         $v1, 0xA0($s2)
    /* A958 8001A158 32002296 */  lhu        $v0, 0x32($s1)
    /* A95C 8001A15C 00000000 */  nop
    /* A960 8001A160 0A0062A4 */  sh         $v0, 0xA($v1)
    /* A964 8001A164 9400428E */  lw         $v0, 0x94($s2)
    /* A968 8001A168 0700238A */  lwl        $v1, 0x7($s1)
    /* A96C 8001A16C 0400239A */  lwr        $v1, 0x4($s1)
    /* A970 8001A170 00000000 */  nop
    /* A974 8001A174 0F0043A8 */  swl        $v1, 0xF($v0)
    /* A978 8001A178 0C0043B8 */  swr        $v1, 0xC($v0)
    /* A97C 8001A17C 9800428E */  lw         $v0, 0x98($s2)
    /* A980 8001A180 1300238A */  lwl        $v1, 0x13($s1)
    /* A984 8001A184 1000239A */  lwr        $v1, 0x10($s1)
    /* A988 8001A188 00000000 */  nop
    /* A98C 8001A18C 0F0043A8 */  swl        $v1, 0xF($v0)
    /* A990 8001A190 0C0043B8 */  swr        $v1, 0xC($v0)
    /* A994 8001A194 9C00428E */  lw         $v0, 0x9C($s2)
    /* A998 8001A198 1F00238A */  lwl        $v1, 0x1F($s1)
    /* A99C 8001A19C 1C00239A */  lwr        $v1, 0x1C($s1)
    /* A9A0 8001A1A0 00000000 */  nop
    /* A9A4 8001A1A4 0F0043A8 */  swl        $v1, 0xF($v0)
    /* A9A8 8001A1A8 0C0043B8 */  swr        $v1, 0xC($v0)
    /* A9AC 8001A1AC A000428E */  lw         $v0, 0xA0($s2)
    /* A9B0 8001A1B0 2B00238A */  lwl        $v1, 0x2B($s1)
    /* A9B4 8001A1B4 2800239A */  lwr        $v1, 0x28($s1)
    /* A9B8 8001A1B8 00000000 */  nop
    /* A9BC 8001A1BC 0F0043A8 */  swl        $v1, 0xF($v0)
    /* A9C0 8001A1C0 0C0043B8 */  swr        $v1, 0xC($v0)
    /* A9C4 8001A1C4 9400438E */  lw         $v1, 0x94($s2)
    /* A9C8 8001A1C8 0C002296 */  lhu        $v0, 0xC($s1)
    /* A9CC 8001A1CC 00000000 */  nop
    /* A9D0 8001A1D0 080062A4 */  sh         $v0, 0x8($v1)
    /* A9D4 8001A1D4 9800438E */  lw         $v1, 0x98($s2)
    /* A9D8 8001A1D8 18002296 */  lhu        $v0, 0x18($s1)
    /* A9DC 8001A1DC 00000000 */  nop
    /* A9E0 8001A1E0 080062A4 */  sh         $v0, 0x8($v1)
    /* A9E4 8001A1E4 9C00438E */  lw         $v1, 0x9C($s2)
    /* A9E8 8001A1E8 24002296 */  lhu        $v0, 0x24($s1)
    /* A9EC 8001A1EC 21202002 */  addu       $a0, $s1, $zero
    /* A9F0 8001A1F0 080062A4 */  sh         $v0, 0x8($v1)
    /* A9F4 8001A1F4 A000438E */  lw         $v1, 0xA0($s2)
    /* A9F8 8001A1F8 30008294 */  lhu        $v0, 0x30($a0)
    /* A9FC 8001A1FC 21280002 */  addu       $a1, $s0, $zero
    /* AA00 8001A200 1D71000C */  jal        func_8001C474
    /* AA04 8001A204 080062A4 */   sh        $v0, 0x8($v1)
  .Lfunc_8001A064_8001A208:
    /* AA08 8001A208 2400BF8F */  lw         $ra, 0x24($sp)
    /* AA0C 8001A20C 2000B28F */  lw         $s2, 0x20($sp)
    /* AA10 8001A210 1C00B18F */  lw         $s1, 0x1C($sp)
    /* AA14 8001A214 1800B08F */  lw         $s0, 0x18($sp)
    /* AA18 8001A218 2800BD27 */  addiu      $sp, $sp, 0x28
    /* AA1C 8001A21C 0800E003 */  jr         $ra
    /* AA20 8001A220 00000000 */   nop
endlabel func_8001A064
