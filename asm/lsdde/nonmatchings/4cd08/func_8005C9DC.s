.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005C9DC, 0xD8

glabel func_8005C9DC
    /* 4D1DC 8005C9DC C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 4D1E0 8005C9E0 3400B5AF */  sw         $s5, 0x34($sp)
    /* 4D1E4 8005C9E4 21A88000 */  addu       $s5, $a0, $zero
    /* 4D1E8 8005C9E8 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 4D1EC 8005C9EC 2198A000 */  addu       $s3, $a1, $zero
    /* 4D1F0 8005C9F0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 4D1F4 8005C9F4 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 4D1F8 8005C9F8 3800B6AF */  sw         $s6, 0x38($sp)
    /* 4D1FC 8005C9FC 3000B4AF */  sw         $s4, 0x30($sp)
    /* 4D200 8005CA00 2800B2AF */  sw         $s2, 0x28($sp)
    /* 4D204 8005CA04 2400B1AF */  sw         $s1, 0x24($sp)
    /* 4D208 8005CA08 2000B0AF */  sw         $s0, 0x20($sp)
    /* 4D20C 8005CA0C 8312010C */  jal        func_80044A0C
    /* 4D210 8005CA10 1000A6AF */   sw        $a2, 0x10($sp)
    /* 4D214 8005CA14 21904000 */  addu       $s2, $v0, $zero
    /* 4D218 8005CA18 1A004012 */  beqz       $s2, .Lfunc_8005C9DC_8005CA84
    /* 4D21C 8005CA1C 03007026 */   addiu     $s0, $s3, 0x3
    /* 4D220 8005CA20 06007126 */  addiu      $s1, $s3, 0x6
    /* 4D224 8005CA24 F003828F */  lw         $v0, %gp_rel(gEntityStageId)($gp)
    /* 4D228 8005CA28 2B181102 */  sltu       $v1, $s0, $s1
    /* 4D22C 8005CA2C 80100200 */  sll        $v0, $v0, 2
    /* 4D230 8005CA30 0980013C */  lui        $at, %hi(gStageEntityTables)
    /* 4D234 8005CA34 449A2124 */  addiu      $at, $at, %lo(gStageEntityTables)
    /* 4D238 8005CA38 21082200 */  addu       $at, $at, $v0
    /* 4D23C 8005CA3C 0000348C */  lw         $s4, 0x0($at)
    /* 4D240 8005CA40 0E006010 */  beqz       $v1, .Lfunc_8005C9DC_8005CA7C
    /* 4D244 8005CA44 FFFF1624 */   addiu     $s6, $zero, -0x1
  .Lfunc_8005C9DC_8005CA48:
    /* 4D248 8005CA48 00000682 */  lb         $a2, 0x0($s0)
    /* 4D24C 8005CA4C 00000000 */  nop
    /* 4D250 8005CA50 0A00D610 */  beq        $a2, $s6, .Lfunc_8005C9DC_8005CA7C
    /* 4D254 8005CA54 2120A002 */   addu      $a0, $s5, $zero
    /* 4D258 8005CA58 C0300600 */  sll        $a2, $a2, 3
    /* 4D25C 8005CA5C 21286002 */  addu       $a1, $s3, $zero
    /* 4D260 8005CA60 21308602 */  addu       $a2, $s4, $a2
    /* 4D264 8005CA64 AD72010C */  jal        func_8005CAB4
    /* 4D268 8005CA68 21384002 */   addu      $a3, $s2, $zero
    /* 4D26C 8005CA6C 01001026 */  addiu      $s0, $s0, 0x1
    /* 4D270 8005CA70 2B101102 */  sltu       $v0, $s0, $s1
    /* 4D274 8005CA74 F4FF4014 */  bnez       $v0, .Lfunc_8005C9DC_8005CA48
    /* 4D278 8005CA78 00000000 */   nop
  .Lfunc_8005C9DC_8005CA7C:
    /* 4D27C 8005CA7C A2720108 */  j          .Lfunc_8005C9DC_8005CA88
    /* 4D280 8005CA80 21104002 */   addu      $v0, $s2, $zero
  .Lfunc_8005C9DC_8005CA84:
    /* 4D284 8005CA84 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_8005C9DC_8005CA88:
    /* 4D288 8005CA88 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 4D28C 8005CA8C 3800B68F */  lw         $s6, 0x38($sp)
    /* 4D290 8005CA90 3400B58F */  lw         $s5, 0x34($sp)
    /* 4D294 8005CA94 3000B48F */  lw         $s4, 0x30($sp)
    /* 4D298 8005CA98 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 4D29C 8005CA9C 2800B28F */  lw         $s2, 0x28($sp)
    /* 4D2A0 8005CAA0 2400B18F */  lw         $s1, 0x24($sp)
    /* 4D2A4 8005CAA4 2000B08F */  lw         $s0, 0x20($sp)
    /* 4D2A8 8005CAA8 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 4D2AC 8005CAAC 0800E003 */  jr         $ra
    /* 4D2B0 8005CAB0 00000000 */   nop
endlabel func_8005C9DC
