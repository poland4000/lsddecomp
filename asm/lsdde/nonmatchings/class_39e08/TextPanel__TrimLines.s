.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextPanel__TrimLines, 0x12C

glabel TextPanel__TrimLines
    /* 401D8 8004F9D8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 401DC 8004F9DC 2000B0AF */  sw         $s0, 0x20($sp)
    /* 401E0 8004F9E0 21808000 */  addu       $s0, $a0, $zero
    /* 401E4 8004F9E4 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 401E8 8004F9E8 2800B2AF */  sw         $s2, 0x28($sp)
    /* 401EC 8004F9EC 2400B1AF */  sw         $s1, 0x24($sp)
    /* 401F0 8004F9F0 0000028E */  lw         $v0, 0x0($s0)
    /* 401F4 8004F9F4 00000000 */  nop
    /* 401F8 8004F9F8 4400428C */  lw         $v0, 0x44($v0)
    /* 401FC 8004F9FC 00000000 */  nop
    /* 40200 8004FA00 09F84000 */  jalr       $v0
    /* 40204 8004FA04 00000000 */   nop
    /* 40208 8004FA08 21200002 */  addu       $a0, $s0, $zero
    /* 4020C 8004FA0C 1000A527 */  addiu      $a1, $sp, 0x10
    /* 40210 8004FA10 0000028E */  lw         $v0, 0x0($s0)
    /* 40214 8004FA14 1400A627 */  addiu      $a2, $sp, 0x14
    /* 40218 8004FA18 4C00428C */  lw         $v0, 0x4C($v0)
    /* 4021C 8004FA1C 00000000 */  nop
    /* 40220 8004FA20 09F84000 */  jalr       $v0
    /* 40224 8004FA24 1800A727 */   addiu     $a3, $sp, 0x18
    /* 40228 8004FA28 0000038E */  lw         $v1, 0x0($s0)
    /* 4022C 8004FA2C 21200002 */  addu       $a0, $s0, $zero
    /* 40230 8004FA30 4800638C */  lw         $v1, 0x48($v1)
    /* 40234 8004FA34 00000000 */  nop
    /* 40238 8004FA38 09F86000 */  jalr       $v1
    /* 4023C 8004FA3C 21884000 */   addu      $s1, $v0, $zero
    /* 40240 8004FA40 0B002012 */  beqz       $s1, .Lfunc_8004F9D8_8004FA70
    /* 40244 8004FA44 00000000 */   nop
    /* 40248 8004FA48 1400A28F */  lw         $v0, 0x14($sp)
    /* 4024C 8004FA4C 00000000 */  nop
    /* 40250 8004FA50 05004014 */  bnez       $v0, .Lfunc_8004F9D8_8004FA68
    /* 40254 8004FA54 00000000 */   nop
    /* 40258 8004FA58 1800A28F */  lw         $v0, 0x18($sp)
    /* 4025C 8004FA5C 00000000 */  nop
    /* 40260 8004FA60 21004014 */  bnez       $v0, .Lfunc_8004F9D8_8004FAE8
    /* 40264 8004FA64 01000234 */   ori       $v0, $zero, 0x1
  .Lfunc_8004F9D8_8004FA68:
    /* 40268 8004FA68 03002016 */  bnez       $s1, .Lfunc_8004F9D8_8004FA78
    /* 4026C 8004FA6C 00000000 */   nop
  .Lfunc_8004F9D8_8004FA70:
    /* 40270 8004FA70 B33E0108 */  j          .Lfunc_8004F9D8_8004FACC
    /* 40274 8004FA74 02001234 */   ori       $s2, $zero, 0x2
  .Lfunc_8004F9D8_8004FA78:
    /* 40278 8004FA78 1000A28F */  lw         $v0, 0x10($sp)
    /* 4027C 8004FA7C 00000000 */  nop
    /* 40280 8004FA80 03004010 */  beqz       $v0, .Lfunc_8004F9D8_8004FA90
    /* 40284 8004FA84 00000000 */   nop
    /* 40288 8004FA88 B33E0108 */  j          .Lfunc_8004F9D8_8004FACC
    /* 4028C 8004FA8C 03001234 */   ori       $s2, $zero, 0x3
  .Lfunc_8004F9D8_8004FA90:
    /* 40290 8004FA90 1400A28F */  lw         $v0, 0x14($sp)
    /* 40294 8004FA94 00000000 */  nop
    /* 40298 8004FA98 03004010 */  beqz       $v0, .Lfunc_8004F9D8_8004FAA8
    /* 4029C 8004FA9C 00000000 */   nop
    /* 402A0 8004FAA0 B33E0108 */  j          .Lfunc_8004F9D8_8004FACC
    /* 402A4 8004FAA4 04001234 */   ori       $s2, $zero, 0x4
  .Lfunc_8004F9D8_8004FAA8:
    /* 402A8 8004FAA8 1800A28F */  lw         $v0, 0x18($sp)
    /* 402AC 8004FAAC 00000000 */  nop
    /* 402B0 8004FAB0 06004014 */  bnez       $v0, .Lfunc_8004F9D8_8004FACC
    /* 402B4 8004FAB4 01000234 */   ori       $v0, $zero, 0x1
    /* 402B8 8004FAB8 2400038E */  lw         $v1, 0x24($s0)
    /* 402BC 8004FABC 00000000 */  nop
    /* 402C0 8004FAC0 02006214 */  bne        $v1, $v0, .Lfunc_8004F9D8_8004FACC
    /* 402C4 8004FAC4 06001234 */   ori       $s2, $zero, 0x6
    /* 402C8 8004FAC8 05001234 */  ori        $s2, $zero, 0x5
  .Lfunc_8004F9D8_8004FACC:
    /* 402CC 8004FACC 0000028E */  lw         $v0, 0x0($s0)
    /* 402D0 8004FAD0 21200002 */  addu       $a0, $s0, $zero
    /* 402D4 8004FAD4 7C00428C */  lw         $v0, 0x7C($v0)
    /* 402D8 8004FAD8 00000000 */  nop
    /* 402DC 8004FADC 09F84000 */  jalr       $v0
    /* 402E0 8004FAE0 21284002 */   addu      $a1, $s2, $zero
    /* 402E4 8004FAE4 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_8004F9D8_8004FAE8:
    /* 402E8 8004FAE8 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 402EC 8004FAEC 2800B28F */  lw         $s2, 0x28($sp)
    /* 402F0 8004FAF0 2400B18F */  lw         $s1, 0x24($sp)
    /* 402F4 8004FAF4 2000B08F */  lw         $s0, 0x20($sp)
    /* 402F8 8004FAF8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 402FC 8004FAFC 0800E003 */  jr         $ra
    /* 40300 8004FB00 00000000 */   nop
endlabel TextPanel__TrimLines
