.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdFile__LocateOnDisc, 0xAC

glabel CdFile__LocateOnDisc
    /* 19120 80028920 88FFBD27 */  addiu      $sp, $sp, -0x78
    /* 19124 80028924 6C00B1AF */  sw         $s1, 0x6C($sp)
    /* 19128 80028928 21888000 */  addu       $s1, $a0, $zero
    /* 1912C 8002892C 7400BFAF */  sw         $ra, 0x74($sp)
    /* 19130 80028930 7000B2AF */  sw         $s2, 0x70($sp)
    /* 19134 80028934 6800B0AF */  sw         $s0, 0x68($sp)
    /* 19138 80028938 0C00228E */  lw         $v0, 0xC($s1)
    /* 1913C 8002893C 00000000 */  nop
    /* 19140 80028940 1B004014 */  bnez       $v0, .Lfunc_80028920_800289B0
    /* 19144 80028944 21800000 */   addu      $s0, $zero, $zero
    /* 19148 80028948 73A2000C */  jal        CdBuildSearchPattern
    /* 1914C 8002894C 2800A427 */   addiu     $a0, $sp, 0x28
  .Lfunc_80028920_80028950:
    /* 19150 80028950 1000A427 */  addiu      $a0, $sp, 0x10
    /* 19154 80028954 2800B227 */  addiu      $s2, $sp, 0x28
    /* 19158 80028958 90AD000C */  jal        CdSearchFile
    /* 1915C 8002895C 21284002 */   addu      $a1, $s2, $zero
    /* 19160 80028960 0A004014 */  bnez       $v0, .Lfunc_80028920_8002898C
    /* 19164 80028964 21100002 */   addu      $v0, $s0, $zero
    /* 19168 80028968 64004228 */  slti       $v0, $v0, 0x64
    /* 1916C 8002896C F8FF4014 */  bnez       $v0, .Lfunc_80028920_80028950
    /* 19170 80028970 01001026 */   addiu     $s0, $s0, 0x1
    /* 19174 80028974 0180043C */  lui        $a0, %hi(D_800107F4)
    /* 19178 80028978 F4078424 */  addiu      $a0, $a0, %lo(D_800107F4)
    /* 1917C 8002897C 084B000C */  jal        DebugPrintf
    /* 19180 80028980 21284002 */   addu      $a1, $s2, $zero
    /* 19184 80028984 6CA20008 */  j          .Lfunc_80028920_800289B0
    /* 19188 80028988 00000000 */   nop
  .Lfunc_80028920_8002898C:
    /* 1918C 8002898C 1300A28B */  lwl        $v0, 0x13($sp)
    /* 19190 80028990 1000A29B */  lwr        $v0, 0x10($sp)
    /* 19194 80028994 00000000 */  nop
    /* 19198 80028998 1B0022AA */  swl        $v0, 0x1B($s1)
    /* 1919C 8002899C 180022BA */  swr        $v0, 0x18($s1)
    /* 191A0 800289A0 1400A38F */  lw         $v1, 0x14($sp)
    /* 191A4 800289A4 01000234 */  ori        $v0, $zero, 0x1
    /* 191A8 800289A8 0C0022AE */  sw         $v0, 0xC($s1)
    /* 191AC 800289AC 1C0023AE */  sw         $v1, 0x1C($s1)
  .Lfunc_80028920_800289B0:
    /* 191B0 800289B0 7400BF8F */  lw         $ra, 0x74($sp)
    /* 191B4 800289B4 7000B28F */  lw         $s2, 0x70($sp)
    /* 191B8 800289B8 6C00B18F */  lw         $s1, 0x6C($sp)
    /* 191BC 800289BC 6800B08F */  lw         $s0, 0x68($sp)
    /* 191C0 800289C0 7800BD27 */  addiu      $sp, $sp, 0x78
    /* 191C4 800289C4 0800E003 */  jr         $ra
    /* 191C8 800289C8 00000000 */   nop
endlabel CdFile__LocateOnDisc
