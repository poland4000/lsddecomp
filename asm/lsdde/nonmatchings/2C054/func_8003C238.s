.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003C238, 0x198

glabel func_8003C238
    /* 2CA38 8003C238 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2CA3C 8003C23C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2CA40 8003C240 21888000 */  addu       $s1, $a0, $zero
    /* 2CA44 8003C244 2800BFAF */  sw         $ra, 0x28($sp)
    /* 2CA48 8003C248 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2CA4C 8003C24C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2CA50 8003C250 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2CA54 8003C254 1400258E */  lw         $a1, 0x14($s1)
    /* 2CA58 8003C258 0000228E */  lw         $v0, 0x0($s1)
    /* 2CA5C 8003C25C 1800328E */  lw         $s2, 0x18($s1)
    /* 2CA60 8003C260 E000428C */  lw         $v0, 0xE0($v0)
    /* 2CA64 8003C264 0000538E */  lw         $s3, 0x0($s2)
    /* 2CA68 8003C268 09F84000 */  jalr       $v0
    /* 2CA6C 8003C26C 00000000 */   nop
    /* 2CA70 8003C270 7800248E */  lw         $a0, 0x78($s1)
    /* 2CA74 8003C274 00000000 */  nop
    /* 2CA78 8003C278 0000828C */  lw         $v0, 0x0($a0)
    /* 2CA7C 8003C27C 1400258E */  lw         $a1, 0x14($s1)
    /* 2CA80 8003C280 4C00428C */  lw         $v0, 0x4C($v0)
    /* 2CA84 8003C284 00000000 */  nop
    /* 2CA88 8003C288 09F84000 */  jalr       $v0
    /* 2CA8C 8003C28C 21300000 */   addu      $a2, $zero, $zero
    /* 2CA90 8003C290 8800228E */  lw         $v0, 0x88($s1)
    /* 2CA94 8003C294 00000000 */  nop
    /* 2CA98 8003C298 0F004010 */  beqz       $v0, .Lfunc_8003C238_8003C2D8
    /* 2CA9C 8003C29C 21202002 */   addu      $a0, $s1, $zero
    /* 2CAA0 8003C2A0 0000228E */  lw         $v0, 0x0($s1)
    /* 2CAA4 8003C2A4 90003026 */  addiu      $s0, $s1, 0x90
    /* 2CAA8 8003C2A8 E400428C */  lw         $v0, 0xE4($v0)
    /* 2CAAC 8003C2AC 00000000 */  nop
    /* 2CAB0 8003C2B0 09F84000 */  jalr       $v0
    /* 2CAB4 8003C2B4 21280002 */   addu      $a1, $s0, $zero
    /* 2CAB8 8003C2B8 7800248E */  lw         $a0, 0x78($s1)
    /* 2CABC 8003C2BC 00000000 */  nop
    /* 2CAC0 8003C2C0 0000828C */  lw         $v0, 0x0($a0)
    /* 2CAC4 8003C2C4 01000534 */  ori        $a1, $zero, 0x1
    /* 2CAC8 8003C2C8 B800428C */  lw         $v0, 0xB8($v0)
    /* 2CACC 8003C2CC 00000000 */  nop
    /* 2CAD0 8003C2D0 09F84000 */  jalr       $v0
    /* 2CAD4 8003C2D4 21300002 */   addu      $a2, $s0, $zero
  .Lfunc_8003C238_8003C2D8:
    /* 2CAD8 8003C2D8 7400228E */  lw         $v0, 0x74($s1)
    /* 2CADC 8003C2DC 00000000 */  nop
    /* 2CAE0 8003C2E0 0C004014 */  bnez       $v0, .Lfunc_8003C238_8003C314
    /* 2CAE4 8003C2E4 00000000 */   nop
    /* 2CAE8 8003C2E8 0C00228E */  lw         $v0, 0xC($s1)
    /* 2CAEC 8003C2EC 00000000 */  nop
    /* 2CAF0 8003C2F0 0000448C */  lw         $a0, 0x0($v0)
    /* 2CAF4 8003C2F4 00000000 */  nop
    /* 2CAF8 8003C2F8 0000828C */  lw         $v0, 0x0($a0)
    /* 2CAFC 8003C2FC 00000000 */  nop
    /* 2CB00 8003C300 7800428C */  lw         $v0, 0x78($v0)
    /* 2CB04 8003C304 0780063C */  lui        $a2, %hi(gAnimEffectDefaults)
    /* 2CB08 8003C308 54E8C624 */  addiu      $a2, $a2, %lo(gAnimEffectDefaults)
    /* 2CB0C 8003C30C 09F84000 */  jalr       $v0
    /* 2CB10 8003C310 90002526 */   addiu     $a1, $s1, 0x90
  .Lfunc_8003C238_8003C314:
    /* 2CB14 8003C314 0C00228E */  lw         $v0, 0xC($s1)
    /* 2CB18 8003C318 00000000 */  nop
    /* 2CB1C 8003C31C 0000448C */  lw         $a0, 0x0($v0)
    /* 2CB20 8003C320 00000000 */  nop
    /* 2CB24 8003C324 0000828C */  lw         $v0, 0x0($a0)
    /* 2CB28 8003C328 90002526 */  addiu      $a1, $s1, 0x90
    /* 2CB2C 8003C32C 7800428C */  lw         $v0, 0x78($v0)
    /* 2CB30 8003C330 00000000 */  nop
    /* 2CB34 8003C334 09F84000 */  jalr       $v0
    /* 2CB38 8003C338 21300000 */   addu      $a2, $zero, $zero
    /* 2CB3C 8003C33C 2800258E */  lw         $a1, 0x28($s1)
    /* 2CB40 8003C340 4800628E */  lw         $v0, 0x48($s3)
    /* 2CB44 8003C344 00000000 */  nop
    /* 2CB48 8003C348 09F84000 */  jalr       $v0
    /* 2CB4C 8003C34C 21204002 */   addu      $a0, $s2, $zero
    /* 2CB50 8003C350 2C00258E */  lw         $a1, 0x2C($s1)
    /* 2CB54 8003C354 4C00628E */  lw         $v0, 0x4C($s3)
    /* 2CB58 8003C358 00000000 */  nop
    /* 2CB5C 8003C35C 09F84000 */  jalr       $v0
    /* 2CB60 8003C360 21204002 */   addu      $a0, $s2, $zero
    /* 2CB64 8003C364 3000258E */  lw         $a1, 0x30($s1)
    /* 2CB68 8003C368 5000628E */  lw         $v0, 0x50($s3)
    /* 2CB6C 8003C36C 00000000 */  nop
    /* 2CB70 8003C370 09F84000 */  jalr       $v0
    /* 2CB74 8003C374 21204002 */   addu      $a0, $s2, $zero
    /* 2CB78 8003C378 21204002 */  addu       $a0, $s2, $zero
    /* 2CB7C 8003C37C 0780063C */  lui        $a2, %hi(D_8006E86C)
    /* 2CB80 8003C380 6CE8C624 */  addiu      $a2, $a2, %lo(D_8006E86C)
    /* 2CB84 8003C384 1000A0AF */  sw         $zero, 0x10($sp)
    /* 2CB88 8003C388 1400258E */  lw         $a1, 0x14($s1)
    /* 2CB8C 8003C38C 7000628E */  lw         $v0, 0x70($s3)
    /* 2CB90 8003C390 00000000 */  nop
    /* 2CB94 8003C394 09F84000 */  jalr       $v0
    /* 2CB98 8003C398 2138C000 */   addu      $a3, $a2, $zero
    /* 2CB9C 8003C39C 8C00628E */  lw         $v0, 0x8C($s3)
    /* 2CBA0 8003C3A0 00000000 */  nop
    /* 2CBA4 8003C3A4 09F84000 */  jalr       $v0
    /* 2CBA8 8003C3A8 21204002 */   addu      $a0, $s2, $zero
    /* 2CBAC 8003C3AC 380020AE */  sw         $zero, 0x38($s1)
    /* 2CBB0 8003C3B0 2800BF8F */  lw         $ra, 0x28($sp)
    /* 2CBB4 8003C3B4 2400B38F */  lw         $s3, 0x24($sp)
    /* 2CBB8 8003C3B8 2000B28F */  lw         $s2, 0x20($sp)
    /* 2CBBC 8003C3BC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2CBC0 8003C3C0 1800B08F */  lw         $s0, 0x18($sp)
    /* 2CBC4 8003C3C4 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2CBC8 8003C3C8 0800E003 */  jr         $ra
    /* 2CBCC 8003C3CC 00000000 */   nop
endlabel func_8003C238
