.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching ModelObj__CreateTexWindow, 0x124

glabel ModelObj__CreateTexWindow
    /* 2F4D0 8003ECD0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2F4D4 8003ECD4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2F4D8 8003ECD8 21808000 */  addu       $s0, $a0, $zero
    /* 2F4DC 8003ECDC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2F4E0 8003ECE0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2F4E4 8003ECE4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2F4E8 8003ECE8 7000028E */  lw         $v0, 0x70($s0)
    /* 2F4EC 8003ECEC 00000000 */  nop
    /* 2F4F0 8003ECF0 39004014 */  bnez       $v0, .Lfunc_8003ECD0_8003EDD8
    /* 2F4F4 8003ECF4 04001234 */   ori       $s2, $zero, 0x4
    /* 2F4F8 8003ECF8 4800038E */  lw         $v1, 0x48($s0)
    /* 2F4FC 8003ECFC 4400028E */  lw         $v0, 0x44($s0)
    /* 2F500 8003ED00 00000000 */  nop
    /* 2F504 8003ED04 18006200 */  mult       $v1, $v0
    /* 2F508 8003ED08 3C00038E */  lw         $v1, 0x3C($s0)
    /* 2F50C 8003ED0C 00000000 */  nop
    /* 2F510 8003ED10 04187200 */  sllv       $v1, $s2, $v1
    /* 2F514 8003ED14 12100000 */  mflo       $v0
    /* 2F518 8003ED18 14004224 */  addiu      $v0, $v0, 0x14
    /* 2F51C 8003ED1C 21886200 */  addu       $s1, $v1, $v0
    /* 2F520 8003ED20 CD5E000C */  jal        BMemAlloc
    /* 2F524 8003ED24 40201100 */   sll       $a0, $s1, 1
    /* 2F528 8003ED28 21184000 */  addu       $v1, $v0, $zero
    /* 2F52C 8003ED2C 2A006010 */  beqz       $v1, .Lfunc_8003ECD0_8003EDD8
    /* 2F530 8003ED30 21280000 */   addu      $a1, $zero, $zero
    /* 2F534 8003ED34 3C00028E */  lw         $v0, 0x3C($s0)
    /* 2F538 8003ED38 780003AE */  sw         $v1, 0x78($s0)
    /* 2F53C 8003ED3C 7800048E */  lw         $a0, 0x78($s0)
    /* 2F540 8003ED40 14006324 */  addiu      $v1, $v1, 0x14
    /* 2F544 8003ED44 800003AE */  sw         $v1, 0x80($s0)
    /* 2F548 8003ED48 04105200 */  sllv       $v0, $s2, $v0
    /* 2F54C 8003ED4C 21104300 */  addu       $v0, $v0, $v1
    /* 2F550 8003ED50 880002AE */  sw         $v0, 0x88($s0)
    /* 2F554 8003ED54 7800028E */  lw         $v0, 0x78($s0)
    /* 2F558 8003ED58 8000038E */  lw         $v1, 0x80($s0)
    /* 2F55C 8003ED5C 21102202 */  addu       $v0, $s1, $v0
    /* 2F560 8003ED60 7C0002AE */  sw         $v0, 0x7C($s0)
    /* 2F564 8003ED64 8800028E */  lw         $v0, 0x88($s0)
    /* 2F568 8003ED68 21182302 */  addu       $v1, $s1, $v1
    /* 2F56C 8003ED6C 840003AE */  sw         $v1, 0x84($s0)
    /* 2F570 8003ED70 3C00038E */  lw         $v1, 0x3C($s0)
    /* 2F574 8003ED74 21102202 */  addu       $v0, $s1, $v0
    /* 2F578 8003ED78 8C0002AE */  sw         $v0, 0x8C($s0)
    /* 2F57C 8003ED7C 000083AC */  sw         $v1, 0x0($a0)
    /* 2F580 8003ED80 7800038E */  lw         $v1, 0x78($s0)
    /* 2F584 8003ED84 8000028E */  lw         $v0, 0x80($s0)
    /* 2F588 8003ED88 00000000 */  nop
    /* 2F58C 8003ED8C 040062AC */  sw         $v0, 0x4($v1)
    /* 2F590 8003ED90 7C00038E */  lw         $v1, 0x7C($s0)
    /* 2F594 8003ED94 3C00028E */  lw         $v0, 0x3C($s0)
    /* 2F598 8003ED98 00000000 */  nop
    /* 2F59C 8003ED9C 000062AC */  sw         $v0, 0x0($v1)
    /* 2F5A0 8003EDA0 7C00038E */  lw         $v1, 0x7C($s0)
    /* 2F5A4 8003EDA4 8400028E */  lw         $v0, 0x84($s0)
    /* 2F5A8 8003EDA8 00000000 */  nop
    /* 2F5AC 8003EDAC 040062AC */  sw         $v0, 0x4($v1)
    /* 2F5B0 8003EDB0 7800068E */  lw         $a2, 0x78($s0)
    /* 2F5B4 8003EDB4 06FF000C */  jal        CalcTexWindowUV
    /* 2F5B8 8003EDB8 21200000 */   addu      $a0, $zero, $zero
    /* 2F5BC 8003EDBC 21200000 */  addu       $a0, $zero, $zero
    /* 2F5C0 8003EDC0 7C00068E */  lw         $a2, 0x7C($s0)
    /* 2F5C4 8003EDC4 06FF000C */  jal        CalcTexWindowUV
    /* 2F5C8 8003EDC8 21280000 */   addu      $a1, $zero, $zero
    /* 2F5CC 8003EDCC 01000234 */  ori        $v0, $zero, 0x1
    /* 2F5D0 8003EDD0 700002AE */  sw         $v0, 0x70($s0)
    /* 2F5D4 8003EDD4 740000AE */  sw         $zero, 0x74($s0)
  .Lfunc_8003ECD0_8003EDD8:
    /* 2F5D8 8003EDD8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2F5DC 8003EDDC 1800B28F */  lw         $s2, 0x18($sp)
    /* 2F5E0 8003EDE0 1400B18F */  lw         $s1, 0x14($sp)
    /* 2F5E4 8003EDE4 1000B08F */  lw         $s0, 0x10($sp)
    /* 2F5E8 8003EDE8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2F5EC 8003EDEC 0800E003 */  jr         $ra
    /* 2F5F0 8003EDF0 00000000 */   nop
endlabel ModelObj__CreateTexWindow
