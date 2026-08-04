.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__Constructor, 0x28C

glabel StageRenderer__Constructor
    /* 3AD34 8004A534 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 3AD38 8004A538 2800B2AF */  sw         $s2, 0x28($sp)
    /* 3AD3C 8004A53C 21908000 */  addu       $s2, $a0, $zero
    /* 3AD40 8004A540 2000B0AF */  sw         $s0, 0x20($sp)
    /* 3AD44 8004A544 2180A000 */  addu       $s0, $a1, $zero
    /* 3AD48 8004A548 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 3AD4C 8004A54C 21B8C000 */  addu       $s7, $a2, $zero
    /* 3AD50 8004A550 4000BFAF */  sw         $ra, 0x40($sp)
    /* 3AD54 8004A554 3800B6AF */  sw         $s6, 0x38($sp)
    /* 3AD58 8004A558 3400B5AF */  sw         $s5, 0x34($sp)
    /* 3AD5C 8004A55C 3000B4AF */  sw         $s4, 0x30($sp)
    /* 3AD60 8004A560 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 3AD64 8004A564 390A010C */  jal        func_800428E4
    /* 3AD68 8004A568 2400B1AF */   sw        $s1, 0x24($sp)
    /* 3AD6C 8004A56C 0800428C */  lw         $v0, 0x8($v0)
    /* 3AD70 8004A570 00000000 */  nop
    /* 3AD74 8004A574 09F84000 */  jalr       $v0
    /* 3AD78 8004A578 21204002 */   addu      $a0, $s2, $zero
    /* 3AD7C 8004A57C 9134010C */  jal        StageRenderer__GetVtable
    /* 3AD80 8004A580 00000000 */   nop
    /* 3AD84 8004A584 09000012 */  beqz       $s0, .Lfunc_8004A534_8004A5AC
    /* 3AD88 8004A588 000042AE */   sw        $v0, 0x0($s2)
    /* 3AD8C 8004A58C 0000028E */  lw         $v0, 0x0($s0)
    /* 3AD90 8004A590 0400038E */  lw         $v1, 0x4($s0)
    /* 3AD94 8004A594 0800048E */  lw         $a0, 0x8($s0)
    /* 3AD98 8004A598 540042AE */  sw         $v0, 0x54($s2)
    /* 3AD9C 8004A59C 580043AE */  sw         $v1, 0x58($s2)
    /* 3ADA0 8004A5A0 5C0044AE */  sw         $a0, 0x5C($s2)
    /* 3ADA4 8004A5A4 74290108 */  j          .Lfunc_8004A534_8004A5D0
    /* 3ADA8 8004A5A8 21A00000 */   addu      $s4, $zero, $zero
  .Lfunc_8004A534_8004A5AC:
    /* 3ADAC 8004A5AC 0880053C */  lui        $a1, %hi(D_8008682C)
    /* 3ADB0 8004A5B0 2C68A524 */  addiu      $a1, $a1, %lo(D_8008682C)
    /* 3ADB4 8004A5B4 0000A28C */  lw         $v0, 0x0($a1)
    /* 3ADB8 8004A5B8 0400A38C */  lw         $v1, 0x4($a1)
    /* 3ADBC 8004A5BC 0800A48C */  lw         $a0, 0x8($a1)
    /* 3ADC0 8004A5C0 540042AE */  sw         $v0, 0x54($s2)
    /* 3ADC4 8004A5C4 580043AE */  sw         $v1, 0x58($s2)
    /* 3ADC8 8004A5C8 5C0044AE */  sw         $a0, 0x5C($s2)
    /* 3ADCC 8004A5CC 21A00000 */  addu       $s4, $zero, $zero
  .Lfunc_8004A534_8004A5D0:
    /* 3ADD0 8004A5D0 00041634 */  ori        $s6, $zero, 0x400
    /* 3ADD4 8004A5D4 EC001534 */  ori        $s5, $zero, 0xEC
    /* 3ADD8 8004A5D8 B00140AE */  sw         $zero, 0x1B0($s2)
    /* 3ADDC 8004A5DC B40140A6 */  sh         $zero, 0x1B4($s2)
    /* 3ADE0 8004A5E0 B80140AE */  sw         $zero, 0x1B8($s2)
    /* 3ADE4 8004A5E4 700040AE */  sw         $zero, 0x70($s2)
    /* 3ADE8 8004A5E8 6C0040AE */  sw         $zero, 0x6C($s2)
    /* 3ADEC 8004A5EC E80040AE */  sw         $zero, 0xE8($s2)
    /* 3ADF0 8004A5F0 E00140AE */  sw         $zero, 0x1E0($s2)
  .Lfunc_8004A534_8004A5F4:
    /* 3ADF4 8004A5F4 2522010C */  jal        func_80048894
    /* 3ADF8 8004A5F8 21885502 */   addu      $s1, $s2, $s5
    /* 3ADFC 8004A5FC 040022AE */  sw         $v0, 0x4($s1)
    /* 3AE00 8004A600 1000438C */  lw         $v1, 0x10($v0)
    /* 3AE04 8004A604 00000000 */  nop
    /* 3AE08 8004A608 2B180300 */  sltu       $v1, $zero, $v1
    /* 3AE0C 8004A60C 200043A4 */  sh         $v1, 0x20($v0)
    /* 3AE10 8004A610 0400228E */  lw         $v0, 0x4($s1)
    /* 3AE14 8004A614 00000000 */  nop
    /* 3AE18 8004A618 320054A4 */  sh         $s4, 0x32($v0)
    /* 3AE1C 8004A61C 0400248E */  lw         $a0, 0x4($s1)
    /* 3AE20 8004A620 00000000 */  nop
    /* 3AE24 8004A624 0000828C */  lw         $v0, 0x0($a0)
    /* 3AE28 8004A628 00000000 */  nop
    /* 3AE2C 8004A62C 8800428C */  lw         $v0, 0x88($v0)
    /* 3AE30 8004A630 00000000 */  nop
    /* 3AE34 8004A634 09F84000 */  jalr       $v0
    /* 3AE38 8004A638 2128E002 */   addu      $a1, $s7, $zero
    /* 3AE3C 8004A63C 21200000 */  addu       $a0, $zero, $zero
    /* 3AE40 8004A640 140020AE */  sw         $zero, 0x14($s1)
    /* 3AE44 8004A644 180020AE */  sw         $zero, 0x18($s1)
    /* 3AE48 8004A648 020034A6 */  sh         $s4, 0x2($s1)
    /* 3AE4C 8004A64C 4BB0000C */  jal        New_ClassD940
    /* 3AE50 8004A650 000020A6 */   sh        $zero, 0x0($s1)
    /* 3AE54 8004A654 E334010C */  jal        CoordSys__Create
    /* 3AE58 8004A658 080022AE */   sw        $v0, 0x8($s1)
    /* 3AE5C 8004A65C 21204000 */  addu       $a0, $v0, $zero
    /* 3AE60 8004A660 0C0024AE */  sw         $a0, 0xC($s1)
    /* 3AE64 8004A664 0000828C */  lw         $v0, 0x0($a0)
    /* 3AE68 8004A668 21284002 */  addu       $a1, $s2, $zero
    /* 3AE6C 8004A66C 4C00428C */  lw         $v0, 0x4C($v0)
    /* 3AE70 8004A670 00000000 */  nop
    /* 3AE74 8004A674 09F84000 */  jalr       $v0
    /* 3AE78 8004A678 54004626 */   addiu     $a2, $s2, 0x54
    /* 3AE7C 8004A67C CD5E000C */  jal        BMemAlloc
    /* 3AE80 8004A680 68060434 */   ori       $a0, $zero, 0x668
    /* 3AE84 8004A684 42004010 */  beqz       $v0, .Lfunc_8004A534_8004A790
    /* 3AE88 8004A688 100022AE */   sw        $v0, 0x10($s1)
    /* 3AE8C 8004A68C 1000B6AF */  sw         $s6, 0x10($sp)
    /* 3AE90 8004A690 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3AE94 8004A694 1800B6AF */  sw         $s6, 0x18($sp)
    /* 3AE98 8004A698 1000228E */  lw         $v0, 0x10($s1)
    /* 3AE9C 8004A69C 00000000 */  nop
    /* 3AEA0 8004A6A0 21804000 */  addu       $s0, $v0, $zero
    /* 3AEA4 8004A6A4 68061326 */  addiu      $s3, $s0, 0x668
    /* 3AEA8 8004A6A8 2B101302 */  sltu       $v0, $s0, $s3
    /* 3AEAC 8004A6AC 26004010 */  beqz       $v0, .Lfunc_8004A534_8004A748
    /* 3AEB0 8004A6B0 00000000 */   nop
  .Lfunc_8004A534_8004A6B4:
    /* 3AEB4 8004A6B4 E334010C */  jal        CoordSys__Create
    /* 3AEB8 8004A6B8 00000000 */   nop
    /* 3AEBC 8004A6BC 21204000 */  addu       $a0, $v0, $zero
    /* 3AEC0 8004A6C0 000004AE */  sw         $a0, 0x0($s0)
    /* 3AEC4 8004A6C4 0000828C */  lw         $v0, 0x0($a0)
    /* 3AEC8 8004A6C8 0C00258E */  lw         $a1, 0xC($s1)
    /* 3AECC 8004A6CC 4C00428C */  lw         $v0, 0x4C($v0)
    /* 3AED0 8004A6D0 00000000 */  nop
    /* 3AED4 8004A6D4 09F84000 */  jalr       $v0
    /* 3AED8 8004A6D8 1000A627 */   addiu     $a2, $sp, 0x10
    /* 3AEDC 8004A6DC 1000A38F */  lw         $v1, 0x10($sp)
    /* 3AEE0 8004A6E0 00A40234 */  ori        $v0, $zero, 0xA400
    /* 3AEE4 8004A6E4 00086324 */  addiu      $v1, $v1, 0x800
    /* 3AEE8 8004A6E8 2A104300 */  slt        $v0, $v0, $v1
    /* 3AEEC 8004A6EC 05004010 */  beqz       $v0, .Lfunc_8004A534_8004A704
    /* 3AEF0 8004A6F0 1000A3AF */   sw        $v1, 0x10($sp)
    /* 3AEF4 8004A6F4 1800A28F */  lw         $v0, 0x18($sp)
    /* 3AEF8 8004A6F8 1000B6AF */  sw         $s6, 0x10($sp)
    /* 3AEFC 8004A6FC 00084224 */  addiu      $v0, $v0, 0x800
    /* 3AF00 8004A700 1800A2AF */  sw         $v0, 0x18($sp)
  .Lfunc_8004A534_8004A704:
    /* 3AF04 8004A704 0000048E */  lw         $a0, 0x0($s0)
    /* 3AF08 8004A708 00000000 */  nop
    /* 3AF0C 8004A70C 0000828C */  lw         $v0, 0x0($a0)
    /* 3AF10 8004A710 00000000 */  nop
    /* 3AF14 8004A714 7000428C */  lw         $v0, 0x70($v0)
    /* 3AF18 8004A718 00000000 */  nop
    /* 3AF1C 8004A71C 09F84000 */  jalr       $v0
    /* 3AF20 8004A720 01000534 */   ori       $a1, $zero, 0x1
    /* 3AF24 8004A724 0000048E */  lw         $a0, 0x0($s0)
    /* 3AF28 8004A728 04001026 */  addiu      $s0, $s0, 0x4
    /* 3AF2C 8004A72C 1000828C */  lw         $v0, 0x10($a0)
    /* 3AF30 8004A730 0080033C */  lui        $v1, (0x80000000 >> 16)
    /* 3AF34 8004A734 25104300 */  or         $v0, $v0, $v1
    /* 3AF38 8004A738 100082AC */  sw         $v0, 0x10($a0)
    /* 3AF3C 8004A73C 2B101302 */  sltu       $v0, $s0, $s3
    /* 3AF40 8004A740 DCFF4014 */  bnez       $v0, .Lfunc_8004A534_8004A6B4
    /* 3AF44 8004A744 00000000 */   nop
  .Lfunc_8004A534_8004A748:
    /* 3AF48 8004A748 01009426 */  addiu      $s4, $s4, 0x1
    /* 3AF4C 8004A74C 0700822A */  slti       $v0, $s4, 0x7
    /* 3AF50 8004A750 A8FF4014 */  bnez       $v0, .Lfunc_8004A534_8004A5F4
    /* 3AF54 8004A754 1C00B526 */   addiu     $s5, $s5, 0x1C
    /* 3AF58 8004A758 1783000C */  jal        func_80020C5C
    /* 3AF5C 8004A75C 00000000 */   nop
    /* 3AF60 8004A760 0000438E */  lw         $v1, 0x0($s2)
    /* 3AF64 8004A764 21204002 */  addu       $a0, $s2, $zero
    /* 3AF68 8004A768 1000638C */  lw         $v1, 0x10($v1)
    /* 3AF6C 8004A76C 00000000 */  nop
    /* 3AF70 8004A770 09F86000 */  jalr       $v1
    /* 3AF74 8004A774 21284000 */   addu      $a1, $v0, $zero
    /* 3AF78 8004A778 0000428E */  lw         $v0, 0x0($s2)
    /* 3AF7C 8004A77C 00000000 */  nop
    /* 3AF80 8004A780 4000428C */  lw         $v0, 0x40($v0)
    /* 3AF84 8004A784 00000000 */  nop
    /* 3AF88 8004A788 09F84000 */  jalr       $v0
    /* 3AF8C 8004A78C 21204002 */   addu      $a0, $s2, $zero
  .Lfunc_8004A534_8004A790:
    /* 3AF90 8004A790 4000BF8F */  lw         $ra, 0x40($sp)
    /* 3AF94 8004A794 3C00B78F */  lw         $s7, 0x3C($sp)
    /* 3AF98 8004A798 3800B68F */  lw         $s6, 0x38($sp)
    /* 3AF9C 8004A79C 3400B58F */  lw         $s5, 0x34($sp)
    /* 3AFA0 8004A7A0 3000B48F */  lw         $s4, 0x30($sp)
    /* 3AFA4 8004A7A4 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 3AFA8 8004A7A8 2800B28F */  lw         $s2, 0x28($sp)
    /* 3AFAC 8004A7AC 2400B18F */  lw         $s1, 0x24($sp)
    /* 3AFB0 8004A7B0 2000B08F */  lw         $s0, 0x20($sp)
    /* 3AFB4 8004A7B4 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 3AFB8 8004A7B8 0800E003 */  jr         $ra
    /* 3AFBC 8004A7BC 00000000 */   nop
endlabel StageRenderer__Constructor
