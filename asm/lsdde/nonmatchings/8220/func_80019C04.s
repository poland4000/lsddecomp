.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80019C04, 0x180

glabel func_80019C04
    /* A404 80019C04 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A408 80019C08 2000B2AF */  sw         $s2, 0x20($sp)
    /* A40C 80019C0C 2190A000 */  addu       $s2, $a1, $zero
    /* A410 80019C10 2400BFAF */  sw         $ra, 0x24($sp)
    /* A414 80019C14 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A418 80019C18 1800B0AF */  sw         $s0, 0x18($sp)
    /* A41C 80019C1C 7800428E */  lw         $v0, 0x78($s2)
    /* A420 80019C20 00000000 */  nop
    /* A424 80019C24 13004014 */  bnez       $v0, .Lfunc_80019C04_80019C74
    /* A428 80019C28 21888000 */   addu      $s1, $a0, $zero
    /* A42C 80019C2C FF00043C */  lui        $a0, (0xFFFFFF >> 16)
    /* A430 80019C30 FFFF8434 */  ori        $a0, $a0, (0xFFFFFF & 0xFFFF)
    /* A434 80019C34 00FF063C */  lui        $a2, (0xFF000000 >> 16)
    /* A438 80019C38 3000428E */  lw         $v0, 0x30($s2)
    /* A43C 80019C3C 0000238E */  lw         $v1, 0x0($s1)
    /* A440 80019C40 0000428C */  lw         $v0, 0x0($v0)
    /* A444 80019C44 24186600 */  and        $v1, $v1, $a2
    /* A448 80019C48 24104400 */  and        $v0, $v0, $a0
    /* A44C 80019C4C 25186200 */  or         $v1, $v1, $v0
    /* A450 80019C50 000023AE */  sw         $v1, 0x0($s1)
    /* A454 80019C54 3000458E */  lw         $a1, 0x30($s2)
    /* A458 80019C58 24002226 */  addiu      $v0, $s1, 0x24
    /* A45C 80019C5C 0000A38C */  lw         $v1, 0x0($a1)
    /* A460 80019C60 24202402 */  and        $a0, $s1, $a0
    /* A464 80019C64 24186600 */  and        $v1, $v1, $a2
    /* A468 80019C68 25186400 */  or         $v1, $v1, $a0
    /* A46C 80019C6C 5A670008 */  j          .Lfunc_80019C04_80019D68
    /* A470 80019C70 0000A3AC */   sw        $v1, 0x0($a1)
  .Lfunc_80019C04_80019C74:
    /* A474 80019C74 0980103C */  lui        $s0, %hi(D_8008AEE8)
    /* A478 80019C78 E8AE1026 */  addiu      $s0, $s0, %lo(D_8008AEE8)
    /* A47C 80019C7C 21200002 */  addu       $a0, $s0, $zero
    /* A480 80019C80 21284002 */  addu       $a1, $s2, $zero
    /* A484 80019C84 04002626 */  addiu      $a2, $s1, 0x4
    /* A488 80019C88 21380000 */  addu       $a3, $zero, $zero
    /* A48C 80019C8C 1000A0AF */  sw         $zero, 0x10($sp)
    /* A490 80019C90 E068000C */  jal        func_8001A380
    /* A494 80019C94 1400A0AF */   sw        $zero, 0x14($sp)
    /* A498 80019C98 94004426 */  addiu      $a0, $s2, 0x94
    /* A49C 80019C9C A4004526 */  addiu      $a1, $s2, 0xA4
    /* A4A0 80019CA0 08002626 */  addiu      $a2, $s1, 0x8
    /* A4A4 80019CA4 10002726 */  addiu      $a3, $s1, 0x10
    /* A4A8 80019CA8 18002226 */  addiu      $v0, $s1, 0x18
    /* A4AC 80019CAC 1000A2AF */  sw         $v0, 0x10($sp)
    /* A4B0 80019CB0 20002226 */  addiu      $v0, $s1, 0x20
    /* A4B4 80019CB4 3069000C */  jal        CopyPrimQuad
    /* A4B8 80019CB8 1400A2AF */   sw        $v0, 0x14($sp)
    /* A4BC 80019CBC 9400438E */  lw         $v1, 0x94($s2)
    /* A4C0 80019CC0 0F002292 */  lbu        $v0, 0xF($s1)
    /* A4C4 80019CC4 00000000 */  nop
    /* A4C8 80019CC8 0A0062A4 */  sh         $v0, 0xA($v1)
    /* A4CC 80019CCC 9800438E */  lw         $v1, 0x98($s2)
    /* A4D0 80019CD0 0F002292 */  lbu        $v0, 0xF($s1)
    /* A4D4 80019CD4 00000000 */  nop
    /* A4D8 80019CD8 0A0062A4 */  sh         $v0, 0xA($v1)
    /* A4DC 80019CDC 9C00438E */  lw         $v1, 0x9C($s2)
    /* A4E0 80019CE0 17002292 */  lbu        $v0, 0x17($s1)
    /* A4E4 80019CE4 00000000 */  nop
    /* A4E8 80019CE8 0A0062A4 */  sh         $v0, 0xA($v1)
    /* A4EC 80019CEC A000438E */  lw         $v1, 0xA0($s2)
    /* A4F0 80019CF0 1F002292 */  lbu        $v0, 0x1F($s1)
    /* A4F4 80019CF4 00000000 */  nop
    /* A4F8 80019CF8 0A0062A4 */  sh         $v0, 0xA($v1)
    /* A4FC 80019CFC 9400428E */  lw         $v0, 0x94($s2)
    /* A500 80019D00 0700238A */  lwl        $v1, 0x7($s1)
    /* A504 80019D04 0400239A */  lwr        $v1, 0x4($s1)
    /* A508 80019D08 00000000 */  nop
    /* A50C 80019D0C 0F0043A8 */  swl        $v1, 0xF($v0)
    /* A510 80019D10 0C0043B8 */  swr        $v1, 0xC($v0)
    /* A514 80019D14 9800428E */  lw         $v0, 0x98($s2)
    /* A518 80019D18 0F00238A */  lwl        $v1, 0xF($s1)
    /* A51C 80019D1C 0C00239A */  lwr        $v1, 0xC($s1)
    /* A520 80019D20 00000000 */  nop
    /* A524 80019D24 0F0043A8 */  swl        $v1, 0xF($v0)
    /* A528 80019D28 0C0043B8 */  swr        $v1, 0xC($v0)
    /* A52C 80019D2C 9C00428E */  lw         $v0, 0x9C($s2)
    /* A530 80019D30 21202002 */  addu       $a0, $s1, $zero
    /* A534 80019D34 17008388 */  lwl        $v1, 0x17($a0)
    /* A538 80019D38 14008398 */  lwr        $v1, 0x14($a0)
    /* A53C 80019D3C 00000000 */  nop
    /* A540 80019D40 0F0043A8 */  swl        $v1, 0xF($v0)
    /* A544 80019D44 0C0043B8 */  swr        $v1, 0xC($v0)
    /* A548 80019D48 A000428E */  lw         $v0, 0xA0($s2)
    /* A54C 80019D4C 1F008388 */  lwl        $v1, 0x1F($a0)
    /* A550 80019D50 1C008398 */  lwr        $v1, 0x1C($a0)
    /* A554 80019D54 00000000 */  nop
    /* A558 80019D58 0F0043A8 */  swl        $v1, 0xF($v0)
    /* A55C 80019D5C 0C0043B8 */  swr        $v1, 0xC($v0)
    /* A560 80019D60 596C000C */  jal        func_8001B164
    /* A564 80019D64 21280002 */   addu      $a1, $s0, $zero
  .Lfunc_80019C04_80019D68:
    /* A568 80019D68 2400BF8F */  lw         $ra, 0x24($sp)
    /* A56C 80019D6C 2000B28F */  lw         $s2, 0x20($sp)
    /* A570 80019D70 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A574 80019D74 1800B08F */  lw         $s0, 0x18($sp)
    /* A578 80019D78 2800BD27 */  addiu      $sp, $sp, 0x28
    /* A57C 80019D7C 0800E003 */  jr         $ra
    /* A580 80019D80 00000000 */   nop
endlabel func_80019C04
