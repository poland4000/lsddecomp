.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80019B24, 0xE0

glabel func_80019B24
    /* A324 80019B24 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A328 80019B28 2000B2AF */  sw         $s2, 0x20($sp)
    /* A32C 80019B2C 2190A000 */  addu       $s2, $a1, $zero
    /* A330 80019B30 2400BFAF */  sw         $ra, 0x24($sp)
    /* A334 80019B34 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A338 80019B38 1800B0AF */  sw         $s0, 0x18($sp)
    /* A33C 80019B3C 7800428E */  lw         $v0, 0x78($s2)
    /* A340 80019B40 00000000 */  nop
    /* A344 80019B44 13004014 */  bnez       $v0, .Lfunc_80019B24_80019B94
    /* A348 80019B48 21888000 */   addu      $s1, $a0, $zero
    /* A34C 80019B4C FF00043C */  lui        $a0, (0xFFFFFF >> 16)
    /* A350 80019B50 FFFF8434 */  ori        $a0, $a0, (0xFFFFFF & 0xFFFF)
    /* A354 80019B54 00FF063C */  lui        $a2, (0xFF000000 >> 16)
    /* A358 80019B58 3000428E */  lw         $v0, 0x30($s2)
    /* A35C 80019B5C 0000238E */  lw         $v1, 0x0($s1)
    /* A360 80019B60 0000428C */  lw         $v0, 0x0($v0)
    /* A364 80019B64 24186600 */  and        $v1, $v1, $a2
    /* A368 80019B68 24104400 */  and        $v0, $v0, $a0
    /* A36C 80019B6C 25186200 */  or         $v1, $v1, $v0
    /* A370 80019B70 000023AE */  sw         $v1, 0x0($s1)
    /* A374 80019B74 3000458E */  lw         $a1, 0x30($s2)
    /* A378 80019B78 18002226 */  addiu      $v0, $s1, 0x18
    /* A37C 80019B7C 0000A38C */  lw         $v1, 0x0($a1)
    /* A380 80019B80 24202402 */  and        $a0, $s1, $a0
    /* A384 80019B84 24186600 */  and        $v1, $v1, $a2
    /* A388 80019B88 25186400 */  or         $v1, $v1, $a0
    /* A38C 80019B8C FA660008 */  j          .Lfunc_80019B24_80019BE8
    /* A390 80019B90 0000A3AC */   sw        $v1, 0x0($a1)
  .Lfunc_80019B24_80019B94:
    /* A394 80019B94 0980103C */  lui        $s0, %hi(D_8008AEE8)
    /* A398 80019B98 E8AE1026 */  addiu      $s0, $s0, %lo(D_8008AEE8)
    /* A39C 80019B9C 21200002 */  addu       $a0, $s0, $zero
    /* A3A0 80019BA0 21284002 */  addu       $a1, $s2, $zero
    /* A3A4 80019BA4 04002626 */  addiu      $a2, $s1, 0x4
    /* A3A8 80019BA8 21380000 */  addu       $a3, $zero, $zero
    /* A3AC 80019BAC 1000A0AF */  sw         $zero, 0x10($sp)
    /* A3B0 80019BB0 E068000C */  jal        func_8001A380
    /* A3B4 80019BB4 1400A0AF */   sw        $zero, 0x14($sp)
    /* A3B8 80019BB8 94004426 */  addiu      $a0, $s2, 0x94
    /* A3BC 80019BBC A4004526 */  addiu      $a1, $s2, 0xA4
    /* A3C0 80019BC0 08002626 */  addiu      $a2, $s1, 0x8
    /* A3C4 80019BC4 0C002726 */  addiu      $a3, $s1, 0xC
    /* A3C8 80019BC8 10002226 */  addiu      $v0, $s1, 0x10
    /* A3CC 80019BCC 1000A2AF */  sw         $v0, 0x10($sp)
    /* A3D0 80019BD0 14002226 */  addiu      $v0, $s1, 0x14
    /* A3D4 80019BD4 3069000C */  jal        CopyPrimQuad
    /* A3D8 80019BD8 1400A2AF */   sw        $v0, 0x14($sp)
    /* A3DC 80019BDC 21202002 */  addu       $a0, $s1, $zero
    /* A3E0 80019BE0 356A000C */  jal        func_8001A8D4
    /* A3E4 80019BE4 21280002 */   addu      $a1, $s0, $zero
  .Lfunc_80019B24_80019BE8:
    /* A3E8 80019BE8 2400BF8F */  lw         $ra, 0x24($sp)
    /* A3EC 80019BEC 2000B28F */  lw         $s2, 0x20($sp)
    /* A3F0 80019BF0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A3F4 80019BF4 1800B08F */  lw         $s0, 0x18($sp)
    /* A3F8 80019BF8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* A3FC 80019BFC 0800E003 */  jr         $ra
    /* A400 80019C00 00000000 */   nop
endlabel func_80019B24
