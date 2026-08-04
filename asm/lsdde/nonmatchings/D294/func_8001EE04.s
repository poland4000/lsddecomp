.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001EE04, 0x94

glabel func_8001EE04
    /* F604 8001EE04 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* F608 8001EE08 1800B0AF */  sw         $s0, 0x18($sp)
    /* F60C 8001EE0C 21808000 */  addu       $s0, $a0, $zero
    /* F610 8001EE10 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* F614 8001EE14 2188A000 */  addu       $s1, $a1, $zero
    /* F618 8001EE18 2400B3AF */  sw         $s3, 0x24($sp)
    /* F61C 8001EE1C 2198E000 */  addu       $s3, $a3, $zero
    /* F620 8001EE20 40100600 */  sll        $v0, $a2, 1
    /* F624 8001EE24 21104600 */  addu       $v0, $v0, $a2
    /* F628 8001EE28 40100200 */  sll        $v0, $v0, 1
    /* F62C 8001EE2C 2000B2AF */  sw         $s2, 0x20($sp)
    /* F630 8001EE30 21900202 */  addu       $s2, $s0, $v0
    /* F634 8001EE34 2B101202 */  sltu       $v0, $s0, $s2
    /* F638 8001EE38 0F004010 */  beqz       $v0, .Lfunc_8001EE04_8001EE78
    /* F63C 8001EE3C 2800BFAF */   sw        $ra, 0x28($sp)
  .Lfunc_8001EE04_8001EE40:
    /* F640 8001EE40 0300228A */  lwl        $v0, 0x3($s1)
    /* F644 8001EE44 0000229A */  lwr        $v0, 0x0($s1)
    /* F648 8001EE48 04002386 */  lh         $v1, 0x4($s1)
    /* F64C 8001EE4C 1300A2AB */  swl        $v0, 0x13($sp)
    /* F650 8001EE50 1000A2BB */  swr        $v0, 0x10($sp)
    /* F654 8001EE54 1400A3A7 */  sh         $v1, 0x14($sp)
    /* F658 8001EE58 21206002 */  addu       $a0, $s3, $zero
    /* F65C 8001EE5C 1000A527 */  addiu      $a1, $sp, 0x10
    /* F660 8001EE60 5657000C */  jal        func_80015D58
    /* F664 8001EE64 21300002 */   addu      $a2, $s0, $zero
    /* F668 8001EE68 06001026 */  addiu      $s0, $s0, 0x6
    /* F66C 8001EE6C 2B101202 */  sltu       $v0, $s0, $s2
    /* F670 8001EE70 F3FF4014 */  bnez       $v0, .Lfunc_8001EE04_8001EE40
    /* F674 8001EE74 06003126 */   addiu     $s1, $s1, 0x6
  .Lfunc_8001EE04_8001EE78:
    /* F678 8001EE78 2800BF8F */  lw         $ra, 0x28($sp)
    /* F67C 8001EE7C 2400B38F */  lw         $s3, 0x24($sp)
    /* F680 8001EE80 2000B28F */  lw         $s2, 0x20($sp)
    /* F684 8001EE84 1C00B18F */  lw         $s1, 0x1C($sp)
    /* F688 8001EE88 1800B08F */  lw         $s0, 0x18($sp)
    /* F68C 8001EE8C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* F690 8001EE90 0800E003 */  jr         $ra
    /* F694 8001EE94 00000000 */   nop
endlabel func_8001EE04
