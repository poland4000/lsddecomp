.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80031BA4, 0xF4

glabel func_80031BA4
    /* 223A4 80031BA4 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 223A8 80031BA8 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 223AC 80031BAC 1800422C */  sltiu      $v0, $v0, 0x18
    /* 223B0 80031BB0 1800A997 */  lhu        $t1, 0x18($sp)
    /* 223B4 80031BB4 1C00AA97 */  lhu        $t2, 0x1C($sp)
    /* 223B8 80031BB8 33004010 */  beqz       $v0, .Lfunc_80031BA4_80031C88
    /* 223BC 80031BBC 00140400 */   sll       $v0, $a0, 16
    /* 223C0 80031BC0 03440200 */  sra        $t0, $v0, 16
    /* 223C4 80031BC4 40100800 */  sll        $v0, $t0, 1
    /* 223C8 80031BC8 21104800 */  addu       $v0, $v0, $t0
    /* 223CC 80031BCC 80100200 */  sll        $v0, $v0, 2
    /* 223D0 80031BD0 21104800 */  addu       $v0, $v0, $t0
    /* 223D4 80031BD4 80200200 */  sll        $a0, $v0, 2
    /* 223D8 80031BD8 0980013C */  lui        $at, %hi(D_8008D99C + 0x2)
    /* 223DC 80031BDC 9ED92124 */  addiu      $at, $at, %lo(D_8008D99C + 0x2)
    /* 223E0 80031BE0 21082400 */  addu       $at, $at, $a0
    /* 223E4 80031BE4 00002384 */  lh         $v1, 0x0($at)
    /* 223E8 80031BE8 00140500 */  sll        $v0, $a1, 16
    /* 223EC 80031BEC 03140200 */  sra        $v0, $v0, 16
    /* 223F0 80031BF0 26006214 */  bne        $v1, $v0, .Lfunc_80031BA4_80031C8C
    /* 223F4 80031BF4 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 223F8 80031BF8 0980013C */  lui        $at, %hi(D_8008D998 + 0x2)
    /* 223FC 80031BFC 9AD92124 */  addiu      $at, $at, %lo(D_8008D998 + 0x2)
    /* 22400 80031C00 21082400 */  addu       $at, $at, $a0
    /* 22404 80031C04 00002384 */  lh         $v1, 0x0($at)
    /* 22408 80031C08 00140600 */  sll        $v0, $a2, 16
    /* 2240C 80031C0C 03140200 */  sra        $v0, $v0, 16
    /* 22410 80031C10 1E006214 */  bne        $v1, $v0, .Lfunc_80031BA4_80031C8C
    /* 22414 80031C14 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 22418 80031C18 0980013C */  lui        $at, %hi(D_8008D994)
    /* 2241C 80031C1C 94D92124 */  addiu      $at, $at, %lo(D_8008D994)
    /* 22420 80031C20 21082400 */  addu       $at, $at, $a0
    /* 22424 80031C24 00002384 */  lh         $v1, 0x0($at)
    /* 22428 80031C28 00140700 */  sll        $v0, $a3, 16
    /* 2242C 80031C2C 03140200 */  sra        $v0, $v0, 16
    /* 22430 80031C30 15006214 */  bne        $v1, $v0, .Lfunc_80031BA4_80031C88
    /* 22434 80031C34 00110800 */   sll       $v0, $t0, 4
    /* 22438 80031C38 0980013C */  lui        $at, %hi(D_8008D7F8)
    /* 2243C 80031C3C F8D72124 */  addiu      $at, $at, %lo(D_8008D7F8)
    /* 22440 80031C40 21082200 */  addu       $at, $at, $v0
    /* 22444 80031C44 000029A4 */  sh         $t1, 0x0($at)
    /* 22448 80031C48 0980013C */  lui        $at, %hi(D_8008D7F8 + 0x2)
    /* 2244C 80031C4C FAD72124 */  addiu      $at, $at, %lo(D_8008D7F8 + 0x2)
    /* 22450 80031C50 21082200 */  addu       $at, $at, $v0
    /* 22454 80031C54 00002AA4 */  sh         $t2, 0x0($at)
    /* 22458 80031C58 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 2245C 80031C5C 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 22460 80031C60 21082800 */  addu       $at, $at, $t0
    /* 22464 80031C64 00002390 */  lbu        $v1, 0x0($at)
    /* 22468 80031C68 00000000 */  nop
    /* 2246C 80031C6C 30006334 */  ori        $v1, $v1, 0x30
    /* 22470 80031C70 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 22474 80031C74 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 22478 80031C78 21082800 */  addu       $at, $at, $t0
    /* 2247C 80031C7C 000023A0 */  sb         $v1, 0x0($at)
    /* 22480 80031C80 23C70008 */  j          .Lfunc_80031BA4_80031C8C
    /* 22484 80031C84 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_80031BA4_80031C88:
    /* 22488 80031C88 FFFF0224 */  addiu      $v0, $zero, -0x1
  .Lfunc_80031BA4_80031C8C:
    /* 2248C 80031C8C 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 22490 80031C90 0800E003 */  jr         $ra
    /* 22494 80031C94 00000000 */   nop
endlabel func_80031BA4
