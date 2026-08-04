.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__LoadChunk, 0xFC

glabel StageRenderer__LoadChunk
    /* 3C240 8004BA40 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3C244 8004BA44 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3C248 8004BA48 3800B18F */  lw         $s1, 0x38($sp)
    /* 3C24C 8004BA4C 3400A38F */  lw         $v1, 0x34($sp)
    /* 3C250 8004BA50 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3C254 8004BA54 2180A000 */  addu       $s0, $a1, $zero
    /* 3C258 8004BA58 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3C25C 8004BA5C 80101100 */  sll        $v0, $s1, 2
    /* 3C260 8004BA60 0880013C */  lui        $at, %hi(D_8008688C)
    /* 3C264 8004BA64 8C682124 */  addiu      $at, $at, %lo(D_8008688C)
    /* 3C268 8004BA68 21082200 */  addu       $at, $at, $v0
    /* 3C26C 8004BA6C 0000228C */  lw         $v0, 0x0($at)
    /* 3C270 8004BA70 3000A58F */  lw         $a1, 0x30($sp)
    /* 3C274 8004BA74 24186200 */  and        $v1, $v1, $v0
    /* 3C278 8004BA78 28006010 */  beqz       $v1, .Lfunc_8004BA40_8004BB1C
    /* 3C27C 8004BA7C 21100000 */   addu      $v0, $zero, $zero
    /* 3C280 8004BA80 6800828C */  lw         $v0, 0x68($a0)
    /* 3C284 8004BA84 00000000 */  nop
    /* 3C288 8004BA88 0400428C */  lw         $v0, 0x4($v0)
    /* 3C28C 8004BA8C 00000000 */  nop
    /* 3C290 8004BA90 18004014 */  bnez       $v0, .Lfunc_8004BA40_8004BAF4
    /* 3C294 8004BA94 2110B100 */   addu      $v0, $a1, $s1
    /* 3C298 8004BA98 40101100 */  sll        $v0, $s1, 1
    /* 3C29C 8004BA9C 21105100 */  addu       $v0, $v0, $s1
    /* 3C2A0 8004BAA0 80100200 */  sll        $v0, $v0, 2
    /* 3C2A4 8004BAA4 0880033C */  lui        $v1, %hi(D_800868A8)
    /* 3C2A8 8004BAA8 A8686324 */  addiu      $v1, $v1, %lo(D_800868A8)
    /* 3C2AC 8004BAAC 21104300 */  addu       $v0, $v0, $v1
    /* 3C2B0 8004BAB0 0000438C */  lw         $v1, 0x0($v0)
    /* 3C2B4 8004BAB4 00000000 */  nop
    /* 3C2B8 8004BAB8 04006014 */  bnez       $v1, .Lfunc_8004BA40_8004BACC
    /* 3C2BC 8004BABC 1800C300 */   mult      $a2, $v1
    /* 3C2C0 8004BAC0 0400438C */  lw         $v1, 0x4($v0)
    /* 3C2C4 8004BAC4 BD2E0108 */  j          .Lfunc_8004BA40_8004BAF4
    /* 3C2C8 8004BAC8 2110A300 */   addu      $v0, $a1, $v1
  .Lfunc_8004BA40_8004BACC:
    /* 3C2CC 8004BACC 12180000 */  mflo       $v1
    /* 3C2D0 8004BAD0 0400E010 */  beqz       $a3, .Lfunc_8004BA40_8004BAE4
    /* 3C2D4 8004BAD4 00000000 */   nop
    /* 3C2D8 8004BAD8 0400428C */  lw         $v0, 0x4($v0)
    /* 3C2DC 8004BADC BC2E0108 */  j          .Lfunc_8004BA40_8004BAF0
    /* 3C2E0 8004BAE0 21186200 */   addu      $v1, $v1, $v0
  .Lfunc_8004BA40_8004BAE4:
    /* 3C2E4 8004BAE4 0800428C */  lw         $v0, 0x8($v0)
    /* 3C2E8 8004BAE8 00000000 */  nop
    /* 3C2EC 8004BAEC 21186200 */  addu       $v1, $v1, $v0
  .Lfunc_8004BA40_8004BAF0:
    /* 3C2F0 8004BAF0 2110A300 */  addu       $v0, $a1, $v1
  .Lfunc_8004BA40_8004BAF4:
    /* 3C2F4 8004BAF4 040002AE */  sw         $v0, 0x4($s0)
    /* 3C2F8 8004BAF8 21300000 */  addu       $a2, $zero, $zero
    /* 3C2FC 8004BAFC 6000828C */  lw         $v0, 0x60($a0)
    /* 3C300 8004BB00 6400848C */  lw         $a0, 0x64($a0)
    /* 3C304 8004BB04 0400058E */  lw         $a1, 0x4($s0)
    /* 3C308 8004BB08 09F84000 */  jalr       $v0
    /* 3C30C 8004BB0C 21380000 */   addu      $a3, $zero, $zero
    /* 3C310 8004BB10 000002AE */  sw         $v0, 0x0($s0)
    /* 3C314 8004BB14 C82E0108 */  j          .Lfunc_8004BA40_8004BB20
    /* 3C318 8004BB18 01000234 */   ori       $v0, $zero, 0x1
  .Lfunc_8004BA40_8004BB1C:
    /* 3C31C 8004BB1C 000000AE */  sw         $zero, 0x0($s0)
  .Lfunc_8004BA40_8004BB20:
    /* 3C320 8004BB20 080011AE */  sw         $s1, 0x8($s0)
    /* 3C324 8004BB24 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3C328 8004BB28 1400B18F */  lw         $s1, 0x14($sp)
    /* 3C32C 8004BB2C 1000B08F */  lw         $s0, 0x10($sp)
    /* 3C330 8004BB30 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3C334 8004BB34 0800E003 */  jr         $ra
    /* 3C338 8004BB38 00000000 */   nop
endlabel StageRenderer__LoadChunk
