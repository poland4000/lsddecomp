.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndVoiceOffEx, 0x160

glabel SndVoiceOffEx
    /* 22244 80031A44 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 22248 80031A48 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2224C 80031A4C 21908000 */  addu       $s2, $a0, $zero
    /* 22250 80031A50 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 22254 80031A54 3C00B397 */  lhu        $s3, 0x3C($sp)
    /* 22258 80031A58 FFFF4232 */  andi       $v0, $s2, 0xFFFF
    /* 2225C 80031A5C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 22260 80031A60 4000B497 */  lhu        $s4, 0x40($sp)
    /* 22264 80031A64 1800422C */  sltiu      $v0, $v0, 0x18
    /* 22268 80031A68 2400BFAF */  sw         $ra, 0x24($sp)
    /* 2226C 80031A6C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 22270 80031A70 42004010 */  beqz       $v0, .Lfunc_80031A44_80031B7C
    /* 22274 80031A74 1000B0AF */   sw        $s0, 0x10($sp)
    /* 22278 80031A78 00140400 */  sll        $v0, $a0, 16
    /* 2227C 80031A7C 038C0200 */  sra        $s1, $v0, 16
    /* 22280 80031A80 40101100 */  sll        $v0, $s1, 1
    /* 22284 80031A84 21105100 */  addu       $v0, $v0, $s1
    /* 22288 80031A88 80100200 */  sll        $v0, $v0, 2
    /* 2228C 80031A8C 21105100 */  addu       $v0, $v0, $s1
    /* 22290 80031A90 80800200 */  sll        $s0, $v0, 2
    /* 22294 80031A94 0980013C */  lui        $at, %hi(D_8008D99C + 0x2)
    /* 22298 80031A98 9ED92124 */  addiu      $at, $at, %lo(D_8008D99C + 0x2)
    /* 2229C 80031A9C 21083000 */  addu       $at, $at, $s0
    /* 222A0 80031AA0 00002484 */  lh         $a0, 0x0($at)
    /* 222A4 80031AA4 00140500 */  sll        $v0, $a1, 16
    /* 222A8 80031AA8 03140200 */  sra        $v0, $v0, 16
    /* 222AC 80031AAC 34008214 */  bne        $a0, $v0, .Lfunc_80031A44_80031B80
    /* 222B0 80031AB0 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 222B4 80031AB4 0980013C */  lui        $at, %hi(D_8008D998 + 0x2)
    /* 222B8 80031AB8 9AD92124 */  addiu      $at, $at, %lo(D_8008D998 + 0x2)
    /* 222BC 80031ABC 21083000 */  addu       $at, $at, $s0
    /* 222C0 80031AC0 00002584 */  lh         $a1, 0x0($at)
    /* 222C4 80031AC4 00140600 */  sll        $v0, $a2, 16
    /* 222C8 80031AC8 03140200 */  sra        $v0, $v0, 16
    /* 222CC 80031ACC 2C00A214 */  bne        $a1, $v0, .Lfunc_80031A44_80031B80
    /* 222D0 80031AD0 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 222D4 80031AD4 0980013C */  lui        $at, %hi(D_8008D994)
    /* 222D8 80031AD8 94D92124 */  addiu      $at, $at, %lo(D_8008D994)
    /* 222DC 80031ADC 21083000 */  addu       $at, $at, $s0
    /* 222E0 80031AE0 00002384 */  lh         $v1, 0x0($at)
    /* 222E4 80031AE4 00140700 */  sll        $v0, $a3, 16
    /* 222E8 80031AE8 03140200 */  sra        $v0, $v0, 16
    /* 222EC 80031AEC 23006214 */  bne        $v1, $v0, .Lfunc_80031A44_80031B7C
    /* 222F0 80031AF0 00000000 */   nop
    /* 222F4 80031AF4 52C8000C */  jal        SndValidateSeqChannel
    /* 222F8 80031AF8 00000000 */   nop
    /* 222FC 80031AFC 21206002 */  addu       $a0, $s3, $zero
    /* 22300 80031B00 21000234 */  ori        $v0, $zero, 0x21
    /* 22304 80031B04 0980013C */  lui        $at, %hi(D_8008EA22)
    /* 22308 80031B08 22EA22A4 */  sh         $v0, %lo(D_8008EA22)($at)
    /* 2230C 80031B0C 0980013C */  lui        $at, %hi(gCurrentVoice)
    /* 22310 80031B10 26EA32A4 */  sh         $s2, %lo(gCurrentVoice)($at)
    /* 22314 80031B14 0980013C */  lui        $at, %hi(D_8008D99C)
    /* 22318 80031B18 9CD92124 */  addiu      $at, $at, %lo(D_8008D99C)
    /* 2231C 80031B1C 21083000 */  addu       $at, $at, $s0
    /* 22320 80031B20 00002290 */  lbu        $v0, 0x0($at)
    /* 22324 80031B24 00000000 */  nop
    /* 22328 80031B28 0980013C */  lui        $at, %hi(D_8008EA18)
    /* 2232C 80031B2C 18EA22A0 */  sb         $v0, %lo(D_8008EA18)($at)
    /* 22330 80031B30 0EB8000C */  jal        SndKeyOffVoice
    /* 22334 80031B34 21288002 */   addu      $a1, $s4, $zero
    /* 22338 80031B38 00191100 */  sll        $v1, $s1, 4
    /* 2233C 80031B3C 0980013C */  lui        $at, %hi(D_8008D7F4)
    /* 22340 80031B40 F4D72124 */  addiu      $at, $at, %lo(D_8008D7F4)
    /* 22344 80031B44 21082300 */  addu       $at, $at, $v1
    /* 22348 80031B48 000022A4 */  sh         $v0, 0x0($at)
    /* 2234C 80031B4C 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 22350 80031B50 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 22354 80031B54 21083100 */  addu       $at, $at, $s1
    /* 22358 80031B58 00002390 */  lbu        $v1, 0x0($at)
    /* 2235C 80031B5C 00000000 */  nop
    /* 22360 80031B60 04006334 */  ori        $v1, $v1, 0x4
    /* 22364 80031B64 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 22368 80031B68 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 2236C 80031B6C 21083100 */  addu       $at, $at, $s1
    /* 22370 80031B70 000023A0 */  sb         $v1, 0x0($at)
    /* 22374 80031B74 E0C60008 */  j          .Lfunc_80031A44_80031B80
    /* 22378 80031B78 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_80031A44_80031B7C:
    /* 2237C 80031B7C FFFF0224 */  addiu      $v0, $zero, -0x1
  .Lfunc_80031A44_80031B80:
    /* 22380 80031B80 2400BF8F */  lw         $ra, 0x24($sp)
    /* 22384 80031B84 2000B48F */  lw         $s4, 0x20($sp)
    /* 22388 80031B88 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2238C 80031B8C 1800B28F */  lw         $s2, 0x18($sp)
    /* 22390 80031B90 1400B18F */  lw         $s1, 0x14($sp)
    /* 22394 80031B94 1000B08F */  lw         $s0, 0x10($sp)
    /* 22398 80031B98 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2239C 80031B9C 0800E003 */  jr         $ra
    /* 223A0 80031BA0 00000000 */   nop
endlabel SndVoiceOffEx
