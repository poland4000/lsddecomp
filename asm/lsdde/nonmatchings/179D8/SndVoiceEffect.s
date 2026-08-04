.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndVoiceEffect, 0x228

glabel SndVoiceEffect
    /* 1FBE8 8002F3E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1FBEC 8002F3EC 21508000 */  addu       $t2, $a0, $zero
    /* 1FBF0 8002F3F0 C0FF0234 */  ori        $v0, $zero, 0xFFC0
    /* 1FBF4 8002F3F4 00240400 */  sll        $a0, $a0, 16
    /* 1FBF8 8002F3F8 03240400 */  sra        $a0, $a0, 16
    /* 1FBFC 8002F3FC 2800A38F */  lw         $v1, 0x28($sp)
    /* 1FC00 8002F400 002C0500 */  sll        $a1, $a1, 16
    /* 1FC04 8002F404 1400BFAF */  sw         $ra, 0x14($sp)
    /* 1FC08 8002F408 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1FC0C 8002F40C 21486200 */  addu       $t1, $v1, $v0
    /* 1FC10 8002F410 40100400 */  sll        $v0, $a0, 1
    /* 1FC14 8002F414 21104400 */  addu       $v0, $v0, $a0
    /* 1FC18 8002F418 80100200 */  sll        $v0, $v0, 2
    /* 1FC1C 8002F41C 21104400 */  addu       $v0, $v0, $a0
    /* 1FC20 8002F420 80400200 */  sll        $t0, $v0, 2
    /* 1FC24 8002F424 0980013C */  lui        $at, %hi(D_8008D994 + 0x2)
    /* 1FC28 8002F428 96D92124 */  addiu      $at, $at, %lo(D_8008D994 + 0x2)
    /* 1FC2C 8002F42C 21082800 */  addu       $at, $at, $t0
    /* 1FC30 8002F430 00002284 */  lh         $v0, 0x0($at)
    /* 1FC34 8002F434 032C0500 */  sra        $a1, $a1, 16
    /* 1FC38 8002F438 70004514 */  bne        $v0, $a1, .Lfunc_8002F3E8_8002F5FC
    /* 1FC3C 8002F43C 21100000 */   addu      $v0, $zero, $zero
    /* 1FC40 8002F440 0980013C */  lui        $at, %hi(D_8008D99C + 0x2)
    /* 1FC44 8002F444 9ED92124 */  addiu      $at, $at, %lo(D_8008D99C + 0x2)
    /* 1FC48 8002F448 21082800 */  addu       $at, $at, $t0
    /* 1FC4C 8002F44C 00002384 */  lh         $v1, 0x0($at)
    /* 1FC50 8002F450 00140600 */  sll        $v0, $a2, 16
    /* 1FC54 8002F454 03140200 */  sra        $v0, $v0, 16
    /* 1FC58 8002F458 68006214 */  bne        $v1, $v0, .Lfunc_8002F3E8_8002F5FC
    /* 1FC5C 8002F45C 21100000 */   addu      $v0, $zero, $zero
    /* 1FC60 8002F460 0980013C */  lui        $at, %hi(D_8008D998 + 0x2)
    /* 1FC64 8002F464 9AD92124 */  addiu      $at, $at, %lo(D_8008D998 + 0x2)
    /* 1FC68 8002F468 21082800 */  addu       $at, $at, $t0
    /* 1FC6C 8002F46C 00002384 */  lh         $v1, 0x0($at)
    /* 1FC70 8002F470 00140700 */  sll        $v0, $a3, 16
    /* 1FC74 8002F474 03140200 */  sra        $v0, $v0, 16
    /* 1FC78 8002F478 60006214 */  bne        $v1, $v0, .Lfunc_8002F3E8_8002F5FC
    /* 1FC7C 8002F47C 21100000 */   addu      $v0, $zero, $zero
    /* 1FC80 8002F480 0980023C */  lui        $v0, %hi(D_8008EA13)
    /* 1FC84 8002F484 13EA4290 */  lbu        $v0, %lo(D_8008EA13)($v0)
    /* 1FC88 8002F488 0980013C */  lui        $at, %hi(D_8008D99C)
    /* 1FC8C 8002F48C 9CD92124 */  addiu      $at, $at, %lo(D_8008D99C)
    /* 1FC90 8002F490 21082800 */  addu       $at, $at, $t0
    /* 1FC94 8002F494 00002394 */  lhu        $v1, 0x0($at)
    /* 1FC98 8002F498 0980013C */  lui        $at, %hi(D_8008D994)
    /* 1FC9C 8002F49C 94D92124 */  addiu      $at, $at, %lo(D_8008D994)
    /* 1FCA0 8002F4A0 21082800 */  addu       $at, $at, $t0
    /* 1FCA4 8002F4A4 00002594 */  lhu        $a1, 0x0($at)
    /* 1FCA8 8002F4A8 00110200 */  sll        $v0, $v0, 4
    /* 1FCAC 8002F4AC 21186200 */  addu       $v1, $v1, $v0
    /* 1FCB0 8002F4B0 00140900 */  sll        $v0, $t1, 16
    /* 1FCB4 8002F4B4 03240200 */  sra        $a0, $v0, 16
    /* 1FCB8 8002F4B8 17008018 */  blez       $a0, .Lfunc_8002F3E8_8002F518
    /* 1FCBC 8002F4BC FFFF6230 */   andi      $v0, $v1, 0xFFFF
    /* 1FCC0 8002F4C0 0980033C */  lui        $v1, %hi(D_8008E978)
    /* 1FCC4 8002F4C4 78E9638C */  lw         $v1, %lo(D_8008E978)($v1)
    /* 1FCC8 8002F4C8 40110200 */  sll        $v0, $v0, 5
    /* 1FCCC 8002F4CC 21104300 */  addu       $v0, $v0, $v1
    /* 1FCD0 8002F4D0 0D004290 */  lbu        $v0, 0xD($v0)
    /* 1FCD4 8002F4D4 00000000 */  nop
    /* 1FCD8 8002F4D8 18008200 */  mult       $a0, $v0
    /* 1FCDC 8002F4DC 12200000 */  mflo       $a0
    /* 1FCE0 8002F4E0 0882023C */  lui        $v0, (0x82082083 >> 16)
    /* 1FCE4 8002F4E4 83204234 */  ori        $v0, $v0, (0x82082083 & 0xFFFF)
    /* 1FCE8 8002F4E8 18008200 */  mult       $a0, $v0
    /* 1FCEC 8002F4EC C31F0400 */  sra        $v1, $a0, 31
    /* 1FCF0 8002F4F0 10100000 */  mfhi       $v0
    /* 1FCF4 8002F4F4 21104400 */  addu       $v0, $v0, $a0
    /* 1FCF8 8002F4F8 43110200 */  sra        $v0, $v0, 5
    /* 1FCFC 8002F4FC 23104300 */  subu       $v0, $v0, $v1
    /* 1FD00 8002F500 2130A200 */  addu       $a2, $a1, $v0
    /* 1FD04 8002F504 80190200 */  sll        $v1, $v0, 6
    /* 1FD08 8002F508 23186200 */  subu       $v1, $v1, $v0
    /* 1FD0C 8002F50C 23208300 */  subu       $a0, $a0, $v1
    /* 1FD10 8002F510 5DBD0008 */  j          .Lfunc_8002F3E8_8002F574
    /* 1FD14 8002F514 40280400 */   sll       $a1, $a0, 1
  .Lfunc_8002F3E8_8002F518:
    /* 1FD18 8002F518 15008104 */  bgez       $a0, .Lfunc_8002F3E8_8002F570
    /* 1FD1C 8002F51C 2130A000 */   addu      $a2, $a1, $zero
    /* 1FD20 8002F520 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 1FD24 8002F524 0980033C */  lui        $v1, %hi(D_8008E978)
    /* 1FD28 8002F528 78E9638C */  lw         $v1, %lo(D_8008E978)($v1)
    /* 1FD2C 8002F52C 40110200 */  sll        $v0, $v0, 5
    /* 1FD30 8002F530 21104300 */  addu       $v0, $v0, $v1
    /* 1FD34 8002F534 0C004290 */  lbu        $v0, 0xC($v0)
    /* 1FD38 8002F538 00000000 */  nop
    /* 1FD3C 8002F53C 18008200 */  mult       $a0, $v0
    /* 1FD40 8002F540 12200000 */  mflo       $a0
    /* 1FD44 8002F544 02008104 */  bgez       $a0, .Lfunc_8002F3E8_8002F550
    /* 1FD48 8002F548 21108000 */   addu      $v0, $a0, $zero
    /* 1FD4C 8002F54C 3F008224 */  addiu      $v0, $a0, 0x3F
  .Lfunc_8002F3E8_8002F550:
    /* 1FD50 8002F550 83110200 */  sra        $v0, $v0, 6
    /* 1FD54 8002F554 2118A200 */  addu       $v1, $a1, $v0
    /* 1FD58 8002F558 FFFF6624 */  addiu      $a2, $v1, -0x1
    /* 1FD5C 8002F55C 80110200 */  sll        $v0, $v0, 6
    /* 1FD60 8002F560 23108200 */  subu       $v0, $a0, $v0
    /* 1FD64 8002F564 40100200 */  sll        $v0, $v0, 1
    /* 1FD68 8002F568 5DBD0008 */  j          .Lfunc_8002F3E8_8002F574
    /* 1FD6C 8002F56C 7F004524 */   addiu     $a1, $v0, 0x7F
  .Lfunc_8002F3E8_8002F570:
    /* 1FD70 8002F570 21280000 */  addu       $a1, $zero, $zero
  .Lfunc_8002F3E8_8002F574:
    /* 1FD74 8002F574 00840A00 */  sll        $s0, $t2, 16
    /* 1FD78 8002F578 03841000 */  sra        $s0, $s0, 16
    /* 1FD7C 8002F57C 40101000 */  sll        $v0, $s0, 1
    /* 1FD80 8002F580 21105000 */  addu       $v0, $v0, $s0
    /* 1FD84 8002F584 80100200 */  sll        $v0, $v0, 2
    /* 1FD88 8002F588 21105000 */  addu       $v0, $v0, $s0
    /* 1FD8C 8002F58C 80100200 */  sll        $v0, $v0, 2
    /* 1FD90 8002F590 FFFFC430 */  andi       $a0, $a2, 0xFFFF
    /* 1FD94 8002F594 0980013C */  lui        $at, %hi(D_8008D99C)
    /* 1FD98 8002F598 9CD92124 */  addiu      $at, $at, %lo(D_8008D99C)
    /* 1FD9C 8002F59C 21082200 */  addu       $at, $at, $v0
    /* 1FDA0 8002F5A0 00002290 */  lbu        $v0, 0x0($at)
    /* 1FDA4 8002F5A4 0980013C */  lui        $at, %hi(gCurrentVoice)
    /* 1FDA8 8002F5A8 26EA2AA4 */  sh         $t2, %lo(gCurrentVoice)($at)
    /* 1FDAC 8002F5AC 0980013C */  lui        $at, %hi(D_8008EA18)
    /* 1FDB0 8002F5B0 18EA22A0 */  sb         $v0, %lo(D_8008EA18)($at)
    /* 1FDB4 8002F5B4 0EB8000C */  jal        SndKeyOffVoice
    /* 1FDB8 8002F5B8 FFFFA530 */   andi      $a1, $a1, 0xFFFF
    /* 1FDBC 8002F5BC 00191000 */  sll        $v1, $s0, 4
    /* 1FDC0 8002F5C0 0980013C */  lui        $at, %hi(D_8008D7F4)
    /* 1FDC4 8002F5C4 F4D72124 */  addiu      $at, $at, %lo(D_8008D7F4)
    /* 1FDC8 8002F5C8 21082300 */  addu       $at, $at, $v1
    /* 1FDCC 8002F5CC 000022A4 */  sh         $v0, 0x0($at)
    /* 1FDD0 8002F5D0 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 1FDD4 8002F5D4 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 1FDD8 8002F5D8 21083000 */  addu       $at, $at, $s0
    /* 1FDDC 8002F5DC 00002390 */  lbu        $v1, 0x0($at)
    /* 1FDE0 8002F5E0 00000000 */  nop
    /* 1FDE4 8002F5E4 04006334 */  ori        $v1, $v1, 0x4
    /* 1FDE8 8002F5E8 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 1FDEC 8002F5EC 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 1FDF0 8002F5F0 21083000 */  addu       $at, $at, $s0
    /* 1FDF4 8002F5F4 000023A0 */  sb         $v1, 0x0($at)
    /* 1FDF8 8002F5F8 01000234 */  ori        $v0, $zero, 0x1
  .Lfunc_8002F3E8_8002F5FC:
    /* 1FDFC 8002F5FC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 1FE00 8002F600 1000B08F */  lw         $s0, 0x10($sp)
    /* 1FE04 8002F604 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1FE08 8002F608 0800E003 */  jr         $ra
    /* 1FE0C 8002F60C 00000000 */   nop
endlabel SndVoiceEffect
