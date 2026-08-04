.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamSys__GetPreviousDayMood, 0x100

glabel DreamSys__GetPreviousDayMood
    /* 4B9F4 8005B1F4 21400000 */  addu       $t0, $zero, $zero
    /* 4B9F8 8005B1F8 1200C010 */  beqz       $a2, .LDreamSys__GetPreviousDayMood_8005B244
    /* 4B9FC 8005B1FC 21480000 */   addu      $t1, $zero, $zero
    /* 4BA00 8005B200 7C01828C */  lw         $v0, 0x17C($a0)
    /* 4BA04 8005B204 00000000 */  nop
    /* 4BA08 8005B208 05004014 */  bnez       $v0, .LDreamSys__GetPreviousDayMood_8005B220
    /* 4BA0C 8005B20C 00000000 */   nop
    /* 4BA10 8005B210 8001828C */  lw         $v0, 0x180($a0)
    /* 4BA14 8005B214 00000000 */  nop
    /* 4BA18 8005B218 33004010 */  beqz       $v0, .LDreamSys__GetPreviousDayMood_8005B2E8
    /* 4BA1C 8005B21C 00000000 */   nop
  .LDreamSys__GetPreviousDayMood_8005B220:
    /* 4BA20 8005B220 8001828C */  lw         $v0, 0x180($a0)
    /* 4BA24 8005B224 00000000 */  nop
    /* 4BA28 8005B228 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4BA2C 8005B22C 40100200 */  sll        $v0, $v0, 1
    /* 4BA30 8005B230 21108200 */  addu       $v0, $a0, $v0
    /* 4BA34 8005B234 90014980 */  lb         $t1, 0x190($v0)
    /* 4BA38 8005B238 91014880 */  lb         $t0, 0x191($v0)
    /* 4BA3C 8005B23C BB6C0108 */  j          .LDreamSys__GetPreviousDayMood_8005B2EC
    /* 4BA40 8005B240 0000A9A0 */   sb        $t1, 0x0($a1)
  .LDreamSys__GetPreviousDayMood_8005B244:
    /* 4BA44 8005B244 7C01828C */  lw         $v0, 0x17C($a0)
    /* 4BA48 8005B248 00000000 */  nop
    /* 4BA4C 8005B24C 02004014 */  bnez       $v0, .LDreamSys__GetPreviousDayMood_8005B258
    /* 4BA50 8005B250 6D010634 */   ori       $a2, $zero, 0x16D
    /* 4BA54 8005B254 8001868C */  lw         $a2, 0x180($a0)
  .LDreamSys__GetPreviousDayMood_8005B258:
    /* 4BA58 8005B258 00000000 */  nop
    /* 4BA5C 8005B25C 2200C010 */  beqz       $a2, .LDreamSys__GetPreviousDayMood_8005B2E8
    /* 4BA60 8005B260 2A100601 */   slt       $v0, $t0, $a2
    /* 4BA64 8005B264 90018424 */  addiu      $a0, $a0, 0x190
    /* 4BA68 8005B268 09004010 */  beqz       $v0, .LDreamSys__GetPreviousDayMood_8005B290
    /* 4BA6C 8005B26C 21380000 */   addu      $a3, $zero, $zero
  .LDreamSys__GetPreviousDayMood_8005B270:
    /* 4BA70 8005B270 0100E724 */  addiu      $a3, $a3, 0x1
    /* 4BA74 8005B274 00008280 */  lb         $v0, 0x0($a0)
    /* 4BA78 8005B278 01008380 */  lb         $v1, 0x1($a0)
    /* 4BA7C 8005B27C 02008424 */  addiu      $a0, $a0, 0x2
    /* 4BA80 8005B280 21482201 */  addu       $t1, $t1, $v0
    /* 4BA84 8005B284 2A10E600 */  slt        $v0, $a3, $a2
    /* 4BA88 8005B288 F9FF4014 */  bnez       $v0, .LDreamSys__GetPreviousDayMood_8005B270
    /* 4BA8C 8005B28C 21400301 */   addu      $t0, $t0, $v1
  .LDreamSys__GetPreviousDayMood_8005B290:
    /* 4BA90 8005B290 1A002601 */  div        $zero, $t1, $a2
    /* 4BA94 8005B294 0200C014 */  bnez       $a2, .LDreamSys__GetPreviousDayMood_8005B2A0
    /* 4BA98 8005B298 00000000 */   nop
    /* 4BA9C 8005B29C 0D000700 */  break      7
  .LDreamSys__GetPreviousDayMood_8005B2A0:
    /* 4BAA0 8005B2A0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 4BAA4 8005B2A4 0400C114 */  bne        $a2, $at, .LDreamSys__GetPreviousDayMood_8005B2B8
    /* 4BAA8 8005B2A8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 4BAAC 8005B2AC 02002115 */  bne        $t1, $at, .LDreamSys__GetPreviousDayMood_8005B2B8
    /* 4BAB0 8005B2B0 00000000 */   nop
    /* 4BAB4 8005B2B4 0D000600 */  break      6
  .LDreamSys__GetPreviousDayMood_8005B2B8:
    /* 4BAB8 8005B2B8 12480000 */  mflo       $t1
    /* 4BABC 8005B2BC 1A000601 */  div        $zero, $t0, $a2
    /* 4BAC0 8005B2C0 0200C014 */  bnez       $a2, .LDreamSys__GetPreviousDayMood_8005B2CC
    /* 4BAC4 8005B2C4 00000000 */   nop
    /* 4BAC8 8005B2C8 0D000700 */  break      7
  .LDreamSys__GetPreviousDayMood_8005B2CC:
    /* 4BACC 8005B2CC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 4BAD0 8005B2D0 0400C114 */  bne        $a2, $at, .LDreamSys__GetPreviousDayMood_8005B2E4
    /* 4BAD4 8005B2D4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 4BAD8 8005B2D8 02000115 */  bne        $t0, $at, .LDreamSys__GetPreviousDayMood_8005B2E4
    /* 4BADC 8005B2DC 00000000 */   nop
    /* 4BAE0 8005B2E0 0D000600 */  break      6
  .LDreamSys__GetPreviousDayMood_8005B2E4:
    /* 4BAE4 8005B2E4 12400000 */  mflo       $t0
  .LDreamSys__GetPreviousDayMood_8005B2E8:
    /* 4BAE8 8005B2E8 0000A9A0 */  sb         $t1, 0x0($a1)
  .LDreamSys__GetPreviousDayMood_8005B2EC:
    /* 4BAEC 8005B2EC 0800E003 */  jr         $ra
    /* 4BAF0 8005B2F0 0100A8A0 */   sb        $t0, 0x1($a1)
endlabel DreamSys__GetPreviousDayMood
