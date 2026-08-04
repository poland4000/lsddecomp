.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__Method110, 0x1A8

glabel StageRenderer__Method110
    /* 3C9C0 8004C1C0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3C9C4 8004C1C4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3C9C8 8004C1C8 21888000 */  addu       $s1, $a0, $zero
    /* 3C9CC 8004C1CC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3C9D0 8004C1D0 2180A000 */  addu       $s0, $a1, $zero
    /* 3C9D4 8004C1D4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3C9D8 8004C1D8 2190C000 */  addu       $s2, $a2, $zero
    /* 3C9DC 8004C1DC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 3C9E0 8004C1E0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3C9E4 8004C1E4 0000228E */  lw         $v0, 0x0($s1)
    /* 3C9E8 8004C1E8 00000000 */  nop
    /* 3C9EC 8004C1EC 1C01428C */  lw         $v0, 0x11C($v0)
    /* 3C9F0 8004C1F0 00000000 */  nop
    /* 3C9F4 8004C1F4 09F84000 */  jalr       $v0
    /* 3C9F8 8004C1F8 21284002 */   addu      $a1, $s2, $zero
    /* 3C9FC 8004C1FC 21984000 */  addu       $s3, $v0, $zero
    /* 3CA00 8004C200 50006012 */  beqz       $s3, .Lfunc_8004C1C0_8004C344
    /* 3CA04 8004C204 21202002 */   addu      $a0, $s1, $zero
    /* 3CA08 8004C208 0400628E */  lw         $v0, 0x4($s3)
    /* 3CA0C 8004C20C 00000000 */  nop
    /* 3CA10 8004C210 30004684 */  lh         $a2, 0x30($v0)
    /* 3CA14 8004C214 21280002 */  addu       $a1, $s0, $zero
    /* 3CA18 8004C218 DA30010C */  jal        StageRenderer__IndexToTileXY
    /* 3CA1C 8004C21C 280006AE */   sw        $a2, 0x28($s0)
    /* 3CA20 8004C220 0400628E */  lw         $v0, 0x4($s3)
    /* 3CA24 8004C224 0000238E */  lw         $v1, 0x0($s1)
    /* 3CA28 8004C228 32004584 */  lh         $a1, 0x32($v0)
    /* 3CA2C 8004C22C 1801628C */  lw         $v0, 0x118($v1)
    /* 3CA30 8004C230 00000000 */  nop
    /* 3CA34 8004C234 09F84000 */  jalr       $v0
    /* 3CA38 8004C238 21202002 */   addu      $a0, $s1, $zero
    /* 3CA3C 8004C23C 0C00428C */  lw         $v0, 0xC($v0)
    /* 3CA40 8004C240 00000000 */  nop
    /* 3CA44 8004C244 1400438C */  lw         $v1, 0x14($v0)
    /* 3CA48 8004C248 00000000 */  nop
    /* 3CA4C 8004C24C 1800628C */  lw         $v0, 0x18($v1)
    /* 3CA50 8004C250 00000000 */  nop
    /* 3CA54 8004C254 00504224 */  addiu      $v0, $v0, 0x5000
    /* 3CA58 8004C258 0C0002AE */  sw         $v0, 0xC($s0)
    /* 3CA5C 8004C25C 1C00628C */  lw         $v0, 0x1C($v1)
    /* 3CA60 8004C260 00000000 */  nop
    /* 3CA64 8004C264 100002AE */  sw         $v0, 0x10($s0)
    /* 3CA68 8004C268 2000628C */  lw         $v0, 0x20($v1)
    /* 3CA6C 8004C26C 0C00038E */  lw         $v1, 0xC($s0)
    /* 3CA70 8004C270 00504224 */  addiu      $v0, $v0, 0x5000
    /* 3CA74 8004C274 140002AE */  sw         $v0, 0x14($s0)
    /* 3CA78 8004C278 0C00648E */  lw         $a0, 0xC($s3)
    /* 3CA7C 8004C27C 0000428E */  lw         $v0, 0x0($s2)
    /* 3CA80 8004C280 1400858C */  lw         $a1, 0x14($a0)
    /* 3CA84 8004C284 23104300 */  subu       $v0, $v0, $v1
    /* 3CA88 8004C288 180002AE */  sw         $v0, 0x18($s0)
    /* 3CA8C 8004C28C 0400428E */  lw         $v0, 0x4($s2)
    /* 3CA90 8004C290 1400038E */  lw         $v1, 0x14($s0)
    /* 3CA94 8004C294 1C0002AE */  sw         $v0, 0x1C($s0)
    /* 3CA98 8004C298 0800428E */  lw         $v0, 0x8($s2)
    /* 3CA9C 8004C29C 00000000 */  nop
    /* 3CAA0 8004C2A0 23104300 */  subu       $v0, $v0, $v1
    /* 3CAA4 8004C2A4 200002AE */  sw         $v0, 0x20($s0)
    /* 3CAA8 8004C2A8 0000438E */  lw         $v1, 0x0($s2)
    /* 3CAAC 8004C2AC 1800A28C */  lw         $v0, 0x18($a1)
    /* 3CAB0 8004C2B0 00000000 */  nop
    /* 3CAB4 8004C2B4 23106200 */  subu       $v0, $v1, $v0
    /* 3CAB8 8004C2B8 02004104 */  bgez       $v0, .Lfunc_8004C1C0_8004C2C4
    /* 3CABC 8004C2BC 00000000 */   nop
    /* 3CAC0 8004C2C0 FF074224 */  addiu      $v0, $v0, 0x7FF
  .Lfunc_8004C1C0_8004C2C4:
    /* 3CAC4 8004C2C4 C3120200 */  sra        $v0, $v0, 11
    /* 3CAC8 8004C2C8 020002A2 */  sb         $v0, 0x2($s0)
    /* 3CACC 8004C2CC 0800438E */  lw         $v1, 0x8($s2)
    /* 3CAD0 8004C2D0 2000A28C */  lw         $v0, 0x20($a1)
    /* 3CAD4 8004C2D4 00000000 */  nop
    /* 3CAD8 8004C2D8 23106200 */  subu       $v0, $v1, $v0
    /* 3CADC 8004C2DC 02004104 */  bgez       $v0, .Lfunc_8004C1C0_8004C2E8
    /* 3CAE0 8004C2E0 00000000 */   nop
    /* 3CAE4 8004C2E4 FF074224 */  addiu      $v0, $v0, 0x7FF
  .Lfunc_8004C1C0_8004C2E8:
    /* 3CAE8 8004C2E8 C3120200 */  sra        $v0, $v0, 11
    /* 3CAEC 8004C2EC 030002A2 */  sb         $v0, 0x3($s0)
    /* 3CAF0 8004C2F0 00004496 */  lhu        $a0, 0x0($s2)
    /* 3CAF4 8004C2F4 02000282 */  lb         $v0, 0x2($s0)
    /* 3CAF8 8004C2F8 1800A394 */  lhu        $v1, 0x18($a1)
    /* 3CAFC 8004C2FC 00FC8424 */  addiu      $a0, $a0, -0x400
    /* 3CB00 8004C300 C0120200 */  sll        $v0, $v0, 11
    /* 3CB04 8004C304 21186200 */  addu       $v1, $v1, $v0
    /* 3CB08 8004C308 23208300 */  subu       $a0, $a0, $v1
    /* 3CB0C 8004C30C 040004A6 */  sh         $a0, 0x4($s0)
    /* 3CB10 8004C310 04004296 */  lhu        $v0, 0x4($s2)
    /* 3CB14 8004C314 03000382 */  lb         $v1, 0x3($s0)
    /* 3CB18 8004C318 060002A6 */  sh         $v0, 0x6($s0)
    /* 3CB1C 8004C31C 21100000 */  addu       $v0, $zero, $zero
    /* 3CB20 8004C320 08004496 */  lhu        $a0, 0x8($s2)
    /* 3CB24 8004C324 2000A594 */  lhu        $a1, 0x20($a1)
    /* 3CB28 8004C328 C01A0300 */  sll        $v1, $v1, 11
    /* 3CB2C 8004C32C 240013AE */  sw         $s3, 0x24($s0)
    /* 3CB30 8004C330 00FC8424 */  addiu      $a0, $a0, -0x400
    /* 3CB34 8004C334 2128A300 */  addu       $a1, $a1, $v1
    /* 3CB38 8004C338 23208500 */  subu       $a0, $a0, $a1
    /* 3CB3C 8004C33C D2300108 */  j          .Lfunc_8004C1C0_8004C348
    /* 3CB40 8004C340 080004A6 */   sh        $a0, 0x8($s0)
  .Lfunc_8004C1C0_8004C344:
    /* 3CB44 8004C344 01000234 */  ori        $v0, $zero, 0x1
  .Lfunc_8004C1C0_8004C348:
    /* 3CB48 8004C348 2000BF8F */  lw         $ra, 0x20($sp)
    /* 3CB4C 8004C34C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3CB50 8004C350 1800B28F */  lw         $s2, 0x18($sp)
    /* 3CB54 8004C354 1400B18F */  lw         $s1, 0x14($sp)
    /* 3CB58 8004C358 1000B08F */  lw         $s0, 0x10($sp)
    /* 3CB5C 8004C35C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3CB60 8004C360 0800E003 */  jr         $ra
    /* 3CB64 8004C364 00000000 */   nop
endlabel StageRenderer__Method110
