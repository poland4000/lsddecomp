.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndSetVoiceVolumeRaw, 0x1D0

glabel SndSetVoiceVolumeRaw
    /* 1EB08 8002E308 21588000 */  addu       $t3, $a0, $zero
    /* 1EB0C 8002E30C 2140A000 */  addu       $t0, $a1, $zero
    /* 1EB10 8002E310 2148C000 */  addu       $t1, $a2, $zero
    /* 1EB14 8002E314 002C0500 */  sll        $a1, $a1, 16
    /* 1EB18 8002E318 032C0500 */  sra        $a1, $a1, 16
    /* 1EB1C 8002E31C 00340600 */  sll        $a2, $a2, 16
    /* 1EB20 8002E320 03340600 */  sra        $a2, $a2, 16
    /* 1EB24 8002E324 6A00A610 */  beq        $a1, $a2, .Lfunc_8002E308_8002E4D0
    /* 1EB28 8002E328 2150E000 */   addu      $t2, $a3, $zero
    /* 1EB2C 8002E32C 001C0400 */  sll        $v1, $a0, 16
    /* 1EB30 8002E330 031C0300 */  sra        $v1, $v1, 16
    /* 1EB34 8002E334 40100300 */  sll        $v0, $v1, 1
    /* 1EB38 8002E338 21104300 */  addu       $v0, $v0, $v1
    /* 1EB3C 8002E33C 80100200 */  sll        $v0, $v0, 2
    /* 1EB40 8002E340 21104300 */  addu       $v0, $v0, $v1
    /* 1EB44 8002E344 80100200 */  sll        $v0, $v0, 2
    /* 1EB48 8002E348 01000334 */  ori        $v1, $zero, 0x1
    /* 1EB4C 8002E34C 0980013C */  lui        $at, %hi(D_8008D9A4)
    /* 1EB50 8002E350 A4D92124 */  addiu      $at, $at, %lo(D_8008D9A4)
    /* 1EB54 8002E354 21082200 */  addu       $at, $at, $v0
    /* 1EB58 8002E358 000023A4 */  sh         $v1, 0x0($at)
    /* 1EB5C 8002E35C 0980013C */  lui        $at, %hi(D_8008D9AC)
    /* 1EB60 8002E360 ACD92124 */  addiu      $at, $at, %lo(D_8008D9AC)
    /* 1EB64 8002E364 21082200 */  addu       $at, $at, $v0
    /* 1EB68 8002E368 000028A4 */  sh         $t0, 0x0($at)
    /* 1EB6C 8002E36C 0980013C */  lui        $at, %hi(D_8008D9AC + 0x2)
    /* 1EB70 8002E370 AED92124 */  addiu      $at, $at, %lo(D_8008D9AC + 0x2)
    /* 1EB74 8002E374 21082200 */  addu       $at, $at, $v0
    /* 1EB78 8002E378 000029A4 */  sh         $t1, 0x0($at)
    /* 1EB7C 8002E37C 00140700 */  sll        $v0, $a3, 16
    /* 1EB80 8002E380 031C0200 */  sra        $v1, $v0, 16
    /* 1EB84 8002E384 2310A600 */  subu       $v0, $a1, $a2
    /* 1EB88 8002E388 05004004 */  bltz       $v0, .Lfunc_8002E308_8002E3A0
    /* 1EB8C 8002E38C 2A104300 */   slt       $v0, $v0, $v1
    /* 1EB90 8002E390 07004014 */  bnez       $v0, .Lfunc_8002E308_8002E3B0
    /* 1EB94 8002E394 00240A00 */   sll       $a0, $t2, 16
    /* 1EB98 8002E398 14B90008 */  j          .Lfunc_8002E308_8002E450
    /* 1EB9C 8002E39C 00240800 */   sll       $a0, $t0, 16
  .Lfunc_8002E308_8002E3A0:
    /* 1EBA0 8002E3A0 2310C500 */  subu       $v0, $a2, $a1
    /* 1EBA4 8002E3A4 2A104300 */  slt        $v0, $v0, $v1
    /* 1EBA8 8002E3A8 28004010 */  beqz       $v0, .Lfunc_8002E308_8002E44C
    /* 1EBAC 8002E3AC 00240A00 */   sll       $a0, $t2, 16
  .Lfunc_8002E308_8002E3B0:
    /* 1EBB0 8002E3B0 03240400 */  sra        $a0, $a0, 16
    /* 1EBB4 8002E3B4 001C0800 */  sll        $v1, $t0, 16
    /* 1EBB8 8002E3B8 031C0300 */  sra        $v1, $v1, 16
    /* 1EBBC 8002E3BC 00140900 */  sll        $v0, $t1, 16
    /* 1EBC0 8002E3C0 03140200 */  sra        $v0, $v0, 16
    /* 1EBC4 8002E3C4 23186200 */  subu       $v1, $v1, $v0
    /* 1EBC8 8002E3C8 1A008300 */  div        $zero, $a0, $v1
    /* 1EBCC 8002E3CC 02006014 */  bnez       $v1, .Lfunc_8002E308_8002E3D8
    /* 1EBD0 8002E3D0 00000000 */   nop
    /* 1EBD4 8002E3D4 0D000700 */  break      7
  .Lfunc_8002E308_8002E3D8:
    /* 1EBD8 8002E3D8 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 1EBDC 8002E3DC 04006114 */  bne        $v1, $at, .Lfunc_8002E308_8002E3F0
    /* 1EBE0 8002E3E0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 1EBE4 8002E3E4 02008114 */  bne        $a0, $at, .Lfunc_8002E308_8002E3F0
    /* 1EBE8 8002E3E8 00000000 */   nop
    /* 1EBEC 8002E3EC 0D000600 */  break      6
  .Lfunc_8002E308_8002E3F0:
    /* 1EBF0 8002E3F0 12200000 */  mflo       $a0
    /* 1EBF4 8002E3F4 001C0B00 */  sll        $v1, $t3, 16
    /* 1EBF8 8002E3F8 031C0300 */  sra        $v1, $v1, 16
    /* 1EBFC 8002E3FC 40100300 */  sll        $v0, $v1, 1
    /* 1EC00 8002E400 21104300 */  addu       $v0, $v0, $v1
    /* 1EC04 8002E404 80100200 */  sll        $v0, $v0, 2
    /* 1EC08 8002E408 21104300 */  addu       $v0, $v0, $v1
    /* 1EC0C 8002E40C 80100200 */  sll        $v0, $v0, 2
    /* 1EC10 8002E410 01000334 */  ori        $v1, $zero, 0x1
    /* 1EC14 8002E414 0980013C */  lui        $at, %hi(D_8008D9A4 + 0x2)
    /* 1EC18 8002E418 A6D92124 */  addiu      $at, $at, %lo(D_8008D9A4 + 0x2)
    /* 1EC1C 8002E41C 21082200 */  addu       $at, $at, $v0
    /* 1EC20 8002E420 000023A4 */  sh         $v1, 0x0($at)
    /* 1EC24 8002E424 0980013C */  lui        $at, %hi(D_8008D9A8)
    /* 1EC28 8002E428 A8D92124 */  addiu      $at, $at, %lo(D_8008D9A8)
    /* 1EC2C 8002E42C 21082200 */  addu       $at, $at, $v0
    /* 1EC30 8002E430 000024A4 */  sh         $a0, 0x0($at)
    /* 1EC34 8002E434 0980013C */  lui        $at, %hi(D_8008D9A8 + 0x2)
    /* 1EC38 8002E438 AAD92124 */  addiu      $at, $at, %lo(D_8008D9A8 + 0x2)
    /* 1EC3C 8002E43C 21082200 */  addu       $at, $at, $v0
    /* 1EC40 8002E440 000024A4 */  sh         $a0, 0x0($at)
    /* 1EC44 8002E444 34B90008 */  j          .Lfunc_8002E308_8002E4D0
    /* 1EC48 8002E448 00000000 */   nop
  .Lfunc_8002E308_8002E44C:
    /* 1EC4C 8002E44C 00240800 */  sll        $a0, $t0, 16
  .Lfunc_8002E308_8002E450:
    /* 1EC50 8002E450 03240400 */  sra        $a0, $a0, 16
    /* 1EC54 8002E454 00140900 */  sll        $v0, $t1, 16
    /* 1EC58 8002E458 03140200 */  sra        $v0, $v0, 16
    /* 1EC5C 8002E45C 23208200 */  subu       $a0, $a0, $v0
    /* 1EC60 8002E460 00140A00 */  sll        $v0, $t2, 16
    /* 1EC64 8002E464 03140200 */  sra        $v0, $v0, 16
    /* 1EC68 8002E468 1A008200 */  div        $zero, $a0, $v0
    /* 1EC6C 8002E46C 02004014 */  bnez       $v0, .Lfunc_8002E308_8002E478
    /* 1EC70 8002E470 00000000 */   nop
    /* 1EC74 8002E474 0D000700 */  break      7
  .Lfunc_8002E308_8002E478:
    /* 1EC78 8002E478 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 1EC7C 8002E47C 04004114 */  bne        $v0, $at, .Lfunc_8002E308_8002E490
    /* 1EC80 8002E480 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 1EC84 8002E484 02008114 */  bne        $a0, $at, .Lfunc_8002E308_8002E490
    /* 1EC88 8002E488 00000000 */   nop
    /* 1EC8C 8002E48C 0D000600 */  break      6
  .Lfunc_8002E308_8002E490:
    /* 1EC90 8002E490 12200000 */  mflo       $a0
    /* 1EC94 8002E494 001C0B00 */  sll        $v1, $t3, 16
    /* 1EC98 8002E498 031C0300 */  sra        $v1, $v1, 16
    /* 1EC9C 8002E49C 40100300 */  sll        $v0, $v1, 1
    /* 1ECA0 8002E4A0 21104300 */  addu       $v0, $v0, $v1
    /* 1ECA4 8002E4A4 80100200 */  sll        $v0, $v0, 2
    /* 1ECA8 8002E4A8 21104300 */  addu       $v0, $v0, $v1
    /* 1ECAC 8002E4AC 80100200 */  sll        $v0, $v0, 2
    /* 1ECB0 8002E4B0 0980013C */  lui        $at, %hi(D_8008D9A8)
    /* 1ECB4 8002E4B4 A8D92124 */  addiu      $at, $at, %lo(D_8008D9A8)
    /* 1ECB8 8002E4B8 21082200 */  addu       $at, $at, $v0
    /* 1ECBC 8002E4BC 000020A4 */  sh         $zero, 0x0($at)
    /* 1ECC0 8002E4C0 0980013C */  lui        $at, %hi(D_8008D9A4 + 0x2)
    /* 1ECC4 8002E4C4 A6D92124 */  addiu      $at, $at, %lo(D_8008D9A4 + 0x2)
    /* 1ECC8 8002E4C8 21082200 */  addu       $at, $at, $v0
    /* 1ECCC 8002E4CC 000024A4 */  sh         $a0, 0x0($at)
  .Lfunc_8002E308_8002E4D0:
    /* 1ECD0 8002E4D0 0800E003 */  jr         $ra
    /* 1ECD4 8002E4D4 00000000 */   nop
endlabel SndSetVoiceVolumeRaw
