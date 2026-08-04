.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching Spawner__Method549A8, 0x174

glabel Spawner__Method549A8
    /* 451A8 800549A8 4803828F */  lw         $v0, %gp_rel(D_8008AB50)($gp)
    /* 451AC 800549AC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 451B0 800549B0 3400BFAF */  sw         $ra, 0x34($sp)
    /* 451B4 800549B4 3000B4AF */  sw         $s4, 0x30($sp)
    /* 451B8 800549B8 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 451BC 800549BC 2800B2AF */  sw         $s2, 0x28($sp)
    /* 451C0 800549C0 2400B1AF */  sw         $s1, 0x24($sp)
    /* 451C4 800549C4 4C004010 */  beqz       $v0, .Lfunc_800549A8_80054AF8
    /* 451C8 800549C8 2000B0AF */   sw        $s0, 0x20($sp)
    /* 451CC 800549CC 7404828F */  lw         $v0, %gp_rel(gSpawnListHead)($gp)
    /* 451D0 800549D0 00000000 */  nop
    /* 451D4 800549D4 0C00548C */  lw         $s4, 0xC($v0)
    /* 451D8 800549D8 4E1B043C */  lui        $a0, (0x1B4E81B5 >> 16)
    /* 451DC 800549DC 1800838E */  lw         $v1, 0x18($s4)
    /* 451E0 800549E0 2400828E */  lw         $v0, 0x24($s4)
    /* 451E4 800549E4 B5818434 */  ori        $a0, $a0, (0x1B4E81B5 & 0xFFFF)
    /* 451E8 800549E8 23186200 */  subu       $v1, $v1, $v0
    /* 451EC 800549EC 18006400 */  mult       $v1, $a0
    /* 451F0 800549F0 C31F0300 */  sra        $v1, $v1, 31
    /* 451F4 800549F4 10100000 */  mfhi       $v0
    /* 451F8 800549F8 83110200 */  sra        $v0, $v0, 6
    /* 451FC 800549FC 23104300 */  subu       $v0, $v0, $v1
    /* 45200 80054A00 40180200 */  sll        $v1, $v0, 1
    /* 45204 80054A04 21986200 */  addu       $s3, $v1, $v0
    /* 45208 80054A08 3B00601A */  blez       $s3, .Lfunc_800549A8_80054AF8
    /* 4520C 80054A0C 00000000 */   nop
    /* 45210 80054A10 6003828F */  lw         $v0, %gp_rel(D_8008AB68)($gp)
    /* 45214 80054A14 6403838F */  lw         $v1, %gp_rel(D_8008AB6C)($gp)
    /* 45218 80054A18 1800A2AF */  sw         $v0, 0x18($sp)
    /* 4521C 80054A1C 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* 45220 80054A20 4803838F */  lw         $v1, %gp_rel(D_8008AB50)($gp)
    /* 45224 80054A24 02000234 */  ori        $v0, $zero, 0x2
    /* 45228 80054A28 05006214 */  bne        $v1, $v0, .Lfunc_800549A8_80054A40
    /* 4522C 80054A2C 21900000 */   addu      $s2, $zero, $zero
    /* 45230 80054A30 1C00A28F */  lw         $v0, 0x1C($sp)
    /* 45234 80054A34 00000000 */  nop
    /* 45238 80054A38 1E004224 */  addiu      $v0, $v0, 0x1E
    /* 4523C 80054A3C 1C00A2AF */  sw         $v0, 0x1C($sp)
  .Lfunc_800549A8_80054A40:
    /* 45240 80054A40 0980103C */  lui        $s0, %hi(gSpawnFlagsBuf)
    /* 45244 80054A44 0CE11026 */  addiu      $s0, $s0, %lo(gSpawnFlagsBuf)
    /* 45248 80054A48 21880000 */  addu       $s1, $zero, $zero
    /* 4524C 80054A4C 40101300 */  sll        $v0, $s3, 1
    /* 45250 80054A50 1C00A38F */  lw         $v1, 0x1C($sp)
    /* 45254 80054A54 21105300 */  addu       $v0, $v0, $s3
    /* 45258 80054A58 21104300 */  addu       $v0, $v0, $v1
    /* 4525C 80054A5C 1C00A2AF */  sw         $v0, 0x1C($sp)
  .Lfunc_800549A8_80054A60:
    /* 45260 80054A60 1000A427 */  addiu      $a0, $sp, 0x10
    /* 45264 80054A64 8404858F */  lw         $a1, %gp_rel(D_8008AC8C)($gp)
    /* 45268 80054A68 21306002 */  addu       $a2, $s3, $zero
    /* 4526C 80054A6C C752010C */  jal        Spawner__OffsetCoords
    /* 45270 80054A70 21282502 */   addu      $a1, $s1, $a1
    /* 45274 80054A74 0000048E */  lw         $a0, 0x0($s0)
    /* 45278 80054A78 00000000 */  nop
    /* 4527C 80054A7C 0000828C */  lw         $v0, 0x0($a0)
    /* 45280 80054A80 01000534 */  ori        $a1, $zero, 0x1
    /* 45284 80054A84 B800428C */  lw         $v0, 0xB8($v0)
    /* 45288 80054A88 00000000 */  nop
    /* 4528C 80054A8C 09F84000 */  jalr       $v0
    /* 45290 80054A90 1000A627 */   addiu     $a2, $sp, 0x10
    /* 45294 80054A94 0000048E */  lw         $a0, 0x0($s0)
    /* 45298 80054A98 01005226 */  addiu      $s2, $s2, 0x1
    /* 4529C 80054A9C 0000828C */  lw         $v0, 0x0($a0)
    /* 452A0 80054AA0 03003126 */  addiu      $s1, $s1, 0x3
    /* 452A4 80054AA4 BC00428C */  lw         $v0, 0xBC($v0)
    /* 452A8 80054AA8 00000000 */  nop
    /* 452AC 80054AAC 09F84000 */  jalr       $v0
    /* 452B0 80054AB0 1800A527 */   addiu     $a1, $sp, 0x18
    /* 452B4 80054AB4 1C00A28F */  lw         $v0, 0x1C($sp)
    /* 452B8 80054AB8 00000000 */  nop
    /* 452BC 80054ABC 03004224 */  addiu      $v0, $v0, 0x3
    /* 452C0 80054AC0 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 452C4 80054AC4 1200422A */  slti       $v0, $s2, 0x12
    /* 452C8 80054AC8 E5FF4014 */  bnez       $v0, .Lfunc_800549A8_80054A60
    /* 452CC 80054ACC 04001026 */   addiu     $s0, $s0, 0x4
    /* 452D0 80054AD0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 452D4 80054AD4 8804858F */  lw         $a1, %gp_rel(D_8008AC90)($gp)
    /* 452D8 80054AD8 C752010C */  jal        Spawner__OffsetCoords
    /* 452DC 80054ADC 21306002 */   addu      $a2, $s3, $zero
    /* 452E0 80054AE0 0000828E */  lw         $v0, 0x0($s4)
    /* 452E4 80054AE4 21208002 */  addu       $a0, $s4, $zero
    /* 452E8 80054AE8 6400428C */  lw         $v0, 0x64($v0)
    /* 452EC 80054AEC 00000000 */  nop
    /* 452F0 80054AF0 09F84000 */  jalr       $v0
    /* 452F4 80054AF4 1000A527 */   addiu     $a1, $sp, 0x10
  .Lfunc_800549A8_80054AF8:
    /* 452F8 80054AF8 3400BF8F */  lw         $ra, 0x34($sp)
    /* 452FC 80054AFC 3000B48F */  lw         $s4, 0x30($sp)
    /* 45300 80054B00 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 45304 80054B04 2800B28F */  lw         $s2, 0x28($sp)
    /* 45308 80054B08 2400B18F */  lw         $s1, 0x24($sp)
    /* 4530C 80054B0C 2000B08F */  lw         $s0, 0x20($sp)
    /* 45310 80054B10 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 45314 80054B14 0800E003 */  jr         $ra
    /* 45318 80054B18 00000000 */   nop
endlabel Spawner__Method549A8
