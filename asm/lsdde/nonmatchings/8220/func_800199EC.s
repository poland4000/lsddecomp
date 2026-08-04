.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800199EC, 0x138

glabel func_800199EC
    /* A1EC 800199EC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A1F0 800199F0 2000B2AF */  sw         $s2, 0x20($sp)
    /* A1F4 800199F4 2190A000 */  addu       $s2, $a1, $zero
    /* A1F8 800199F8 2400BFAF */  sw         $ra, 0x24($sp)
    /* A1FC 800199FC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A200 80019A00 1800B0AF */  sw         $s0, 0x18($sp)
    /* A204 80019A04 7800428E */  lw         $v0, 0x78($s2)
    /* A208 80019A08 00000000 */  nop
    /* A20C 80019A0C 13004014 */  bnez       $v0, .Lfunc_800199EC_80019A5C
    /* A210 80019A10 21888000 */   addu      $s1, $a0, $zero
    /* A214 80019A14 FF00043C */  lui        $a0, (0xFFFFFF >> 16)
    /* A218 80019A18 FFFF8434 */  ori        $a0, $a0, (0xFFFFFF & 0xFFFF)
    /* A21C 80019A1C 00FF063C */  lui        $a2, (0xFF000000 >> 16)
    /* A220 80019A20 3000428E */  lw         $v0, 0x30($s2)
    /* A224 80019A24 0000238E */  lw         $v1, 0x0($s1)
    /* A228 80019A28 0000428C */  lw         $v0, 0x0($v0)
    /* A22C 80019A2C 24186600 */  and        $v1, $v1, $a2
    /* A230 80019A30 24104400 */  and        $v0, $v0, $a0
    /* A234 80019A34 25186200 */  or         $v1, $v1, $v0
    /* A238 80019A38 000023AE */  sw         $v1, 0x0($s1)
    /* A23C 80019A3C 3000458E */  lw         $a1, 0x30($s2)
    /* A240 80019A40 20002226 */  addiu      $v0, $s1, 0x20
    /* A244 80019A44 0000A38C */  lw         $v1, 0x0($a1)
    /* A248 80019A48 24202402 */  and        $a0, $s1, $a0
    /* A24C 80019A4C 24186600 */  and        $v1, $v1, $a2
    /* A250 80019A50 25186400 */  or         $v1, $v1, $a0
    /* A254 80019A54 C2660008 */  j          .Lfunc_800199EC_80019B08
    /* A258 80019A58 0000A3AC */   sw        $v1, 0x0($a1)
  .Lfunc_800199EC_80019A5C:
    /* A25C 80019A5C 0980103C */  lui        $s0, %hi(D_8008ACD0)
    /* A260 80019A60 D0AC1026 */  addiu      $s0, $s0, %lo(D_8008ACD0)
    /* A264 80019A64 21200002 */  addu       $a0, $s0, $zero
    /* A268 80019A68 21284002 */  addu       $a1, $s2, $zero
    /* A26C 80019A6C 0E002296 */  lhu        $v0, 0xE($s1)
    /* A270 80019A70 04002626 */  addiu      $a2, $s1, 0x4
    /* A274 80019A74 1000A2AF */  sw         $v0, 0x10($sp)
    /* A278 80019A78 16002296 */  lhu        $v0, 0x16($s1)
    /* A27C 80019A7C 01000734 */  ori        $a3, $zero, 0x1
    /* A280 80019A80 E068000C */  jal        func_8001A380
    /* A284 80019A84 1400A2AF */   sw        $v0, 0x14($sp)
    /* A288 80019A88 88004426 */  addiu      $a0, $s2, 0x88
    /* A28C 80019A8C A4004526 */  addiu      $a1, $s2, 0xA4
    /* A290 80019A90 08002626 */  addiu      $a2, $s1, 0x8
    /* A294 80019A94 10002726 */  addiu      $a3, $s1, 0x10
    /* A298 80019A98 18002226 */  addiu      $v0, $s1, 0x18
    /* A29C 80019A9C FB68000C */  jal        CopyPrimTriple
    /* A2A0 80019AA0 1000A2AF */   sw        $v0, 0x10($sp)
    /* A2A4 80019AA4 8800438E */  lw         $v1, 0x88($s2)
    /* A2A8 80019AA8 1E002296 */  lhu        $v0, 0x1E($s1)
    /* A2AC 80019AAC 00000000 */  nop
    /* A2B0 80019AB0 0A0062A4 */  sh         $v0, 0xA($v1)
    /* A2B4 80019AB4 8C00438E */  lw         $v1, 0x8C($s2)
    /* A2B8 80019AB8 1E002296 */  lhu        $v0, 0x1E($s1)
    /* A2BC 80019ABC 00000000 */  nop
    /* A2C0 80019AC0 0A0062A4 */  sh         $v0, 0xA($v1)
    /* A2C4 80019AC4 9000438E */  lw         $v1, 0x90($s2)
    /* A2C8 80019AC8 1E002296 */  lhu        $v0, 0x1E($s1)
    /* A2CC 80019ACC 00000000 */  nop
    /* A2D0 80019AD0 0A0062A4 */  sh         $v0, 0xA($v1)
    /* A2D4 80019AD4 8800438E */  lw         $v1, 0x88($s2)
    /* A2D8 80019AD8 0C002296 */  lhu        $v0, 0xC($s1)
    /* A2DC 80019ADC 00000000 */  nop
    /* A2E0 80019AE0 080062A4 */  sh         $v0, 0x8($v1)
    /* A2E4 80019AE4 8C00438E */  lw         $v1, 0x8C($s2)
    /* A2E8 80019AE8 14002296 */  lhu        $v0, 0x14($s1)
    /* A2EC 80019AEC 21202002 */  addu       $a0, $s1, $zero
    /* A2F0 80019AF0 080062A4 */  sh         $v0, 0x8($v1)
    /* A2F4 80019AF4 9000438E */  lw         $v1, 0x90($s2)
    /* A2F8 80019AF8 1C008294 */  lhu        $v0, 0x1C($a0)
    /* A2FC 80019AFC 21280002 */  addu       $a1, $s0, $zero
    /* A300 80019B00 AD6D000C */  jal        func_8001B6B4
    /* A304 80019B04 080062A4 */   sh        $v0, 0x8($v1)
  .Lfunc_800199EC_80019B08:
    /* A308 80019B08 2400BF8F */  lw         $ra, 0x24($sp)
    /* A30C 80019B0C 2000B28F */  lw         $s2, 0x20($sp)
    /* A310 80019B10 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A314 80019B14 1800B08F */  lw         $s0, 0x18($sp)
    /* A318 80019B18 2800BD27 */  addiu      $sp, $sp, 0x28
    /* A31C 80019B1C 0800E003 */  jr         $ra
    /* A320 80019B20 00000000 */   nop
endlabel func_800199EC
