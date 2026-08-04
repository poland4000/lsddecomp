.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001A268, 0x118

glabel func_8001A268
    /* AA68 8001A268 21388000 */  addu       $a3, $a0, $zero
    /* AA6C 8001A26C 6300E288 */  lwl        $v0, 0x63($a3)
    /* AA70 8001A270 6000E298 */  lwr        $v0, 0x60($a3)
    /* AA74 8001A274 00000000 */  nop
    /* AA78 8001A278 7700E2A8 */  swl        $v0, 0x77($a3)
    /* AA7C 8001A27C 7400E2B8 */  swr        $v0, 0x74($a3)
    /* AA80 8001A280 7700E288 */  lwl        $v0, 0x77($a3)
    /* AA84 8001A284 7400E298 */  lwr        $v0, 0x74($a3)
    /* AA88 8001A288 00000000 */  nop
    /* AA8C 8001A28C 7300E2A8 */  swl        $v0, 0x73($a3)
    /* AA90 8001A290 7000E2B8 */  swr        $v0, 0x70($a3)
    /* AA94 8001A294 6400E624 */  addiu      $a2, $a3, 0x64
    /* AA98 8001A298 80280500 */  sll        $a1, $a1, 2
    /* AA9C 8001A29C 2128E500 */  addu       $a1, $a3, $a1
    /* AAA0 8001A2A0 5C00A524 */  addiu      $a1, $a1, 0x5C
    /* AAA4 8001A2A4 2B10C500 */  sltu       $v0, $a2, $a1
    /* AAA8 8001A2A8 22004010 */  beqz       $v0, .Lfunc_8001A268_8001A334
    /* AAAC 8001A2AC E0FFBD27 */   addiu     $sp, $sp, -0x20
    /* AAB0 8001A2B0 6600E824 */  addiu      $t0, $a3, 0x66
  .Lfunc_8001A268_8001A2B4:
    /* AAB4 8001A2B4 0000C284 */  lh         $v0, 0x0($a2)
    /* AAB8 8001A2B8 7000E384 */  lh         $v1, 0x70($a3)
    /* AABC 8001A2BC 21204000 */  addu       $a0, $v0, $zero
    /* AAC0 8001A2C0 2A104300 */  slt        $v0, $v0, $v1
    /* AAC4 8001A2C4 02004010 */  beqz       $v0, .Lfunc_8001A268_8001A2D0
    /* AAC8 8001A2C8 00000000 */   nop
    /* AACC 8001A2CC 7000E4A4 */  sh         $a0, 0x70($a3)
  .Lfunc_8001A268_8001A2D0:
    /* AAD0 8001A2D0 00000285 */  lh         $v0, 0x0($t0)
    /* AAD4 8001A2D4 7200E384 */  lh         $v1, 0x72($a3)
    /* AAD8 8001A2D8 21204000 */  addu       $a0, $v0, $zero
    /* AADC 8001A2DC 2A104300 */  slt        $v0, $v0, $v1
    /* AAE0 8001A2E0 02004010 */  beqz       $v0, .Lfunc_8001A268_8001A2EC
    /* AAE4 8001A2E4 00000000 */   nop
    /* AAE8 8001A2E8 7200E4A4 */  sh         $a0, 0x72($a3)
  .Lfunc_8001A268_8001A2EC:
    /* AAEC 8001A2EC 0000C384 */  lh         $v1, 0x0($a2)
    /* AAF0 8001A2F0 7400E284 */  lh         $v0, 0x74($a3)
    /* AAF4 8001A2F4 00000000 */  nop
    /* AAF8 8001A2F8 2A104300 */  slt        $v0, $v0, $v1
    /* AAFC 8001A2FC 02004010 */  beqz       $v0, .Lfunc_8001A268_8001A308
    /* AB00 8001A300 21206000 */   addu      $a0, $v1, $zero
    /* AB04 8001A304 7400E4A4 */  sh         $a0, 0x74($a3)
  .Lfunc_8001A268_8001A308:
    /* AB08 8001A308 00000385 */  lh         $v1, 0x0($t0)
    /* AB0C 8001A30C 7600E284 */  lh         $v0, 0x76($a3)
    /* AB10 8001A310 00000000 */  nop
    /* AB14 8001A314 2A104300 */  slt        $v0, $v0, $v1
    /* AB18 8001A318 02004010 */  beqz       $v0, .Lfunc_8001A268_8001A324
    /* AB1C 8001A31C 21206000 */   addu      $a0, $v1, $zero
    /* AB20 8001A320 7600E4A4 */  sh         $a0, 0x76($a3)
  .Lfunc_8001A268_8001A324:
    /* AB24 8001A324 0400C624 */  addiu      $a2, $a2, 0x4
    /* AB28 8001A328 2B10C500 */  sltu       $v0, $a2, $a1
    /* AB2C 8001A32C E1FF4014 */  bnez       $v0, .Lfunc_8001A268_8001A2B4
    /* AB30 8001A330 04000825 */   addiu     $t0, $t0, 0x4
  .Lfunc_8001A268_8001A334:
    /* AB34 8001A334 7400E284 */  lh         $v0, 0x74($a3)
    /* AB38 8001A338 7000E384 */  lh         $v1, 0x70($a3)
    /* AB3C 8001A33C 00000000 */  nop
    /* AB40 8001A340 23104300 */  subu       $v0, $v0, $v1
    /* AB44 8001A344 01014228 */  slti       $v0, $v0, 0x101
    /* AB48 8001A348 02004014 */  bnez       $v0, .Lfunc_8001A268_8001A354
    /* AB4C 8001A34C 01000234 */   ori       $v0, $zero, 0x1
    /* AB50 8001A350 7800E2AC */  sw         $v0, 0x78($a3)
  .Lfunc_8001A268_8001A354:
    /* AB54 8001A354 7600E284 */  lh         $v0, 0x76($a3)
    /* AB58 8001A358 7200E384 */  lh         $v1, 0x72($a3)
    /* AB5C 8001A35C 00000000 */  nop
    /* AB60 8001A360 23104300 */  subu       $v0, $v0, $v1
    /* AB64 8001A364 01014228 */  slti       $v0, $v0, 0x101
    /* AB68 8001A368 02004014 */  bnez       $v0, .Lfunc_8001A268_8001A374
    /* AB6C 8001A36C 01000234 */   ori       $v0, $zero, 0x1
    /* AB70 8001A370 7800E2AC */  sw         $v0, 0x78($a3)
  .Lfunc_8001A268_8001A374:
    /* AB74 8001A374 2000BD27 */  addiu      $sp, $sp, 0x20
    /* AB78 8001A378 0800E003 */  jr         $ra
    /* AB7C 8001A37C 00000000 */   nop
endlabel func_8001A268
