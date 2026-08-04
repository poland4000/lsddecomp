.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndSetVoiceParamValidated, 0xF0

glabel SndSetVoiceParamValidated
    /* 1FE10 8002F610 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1FE14 8002F614 2800B2AF */  sw         $s2, 0x28($sp)
    /* 1FE18 8002F618 21908000 */  addu       $s2, $a0, $zero
    /* 1FE1C 8002F61C 2110A000 */  addu       $v0, $a1, $zero
    /* 1FE20 8002F620 00240200 */  sll        $a0, $v0, 16
    /* 1FE24 8002F624 03240400 */  sra        $a0, $a0, 16
    /* 1FE28 8002F628 002C0600 */  sll        $a1, $a2, 16
    /* 1FE2C 8002F62C 032C0500 */  sra        $a1, $a1, 16
    /* 1FE30 8002F630 3400B5AF */  sw         $s5, 0x34($sp)
    /* 1FE34 8002F634 21A84000 */  addu       $s5, $v0, $zero
    /* 1FE38 8002F638 3000B4AF */  sw         $s4, 0x30($sp)
    /* 1FE3C 8002F63C 21A0C000 */  addu       $s4, $a2, $zero
    /* 1FE40 8002F640 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 1FE44 8002F644 2198E000 */  addu       $s3, $a3, $zero
    /* 1FE48 8002F648 3800BFAF */  sw         $ra, 0x38($sp)
    /* 1FE4C 8002F64C 2400B1AF */  sw         $s1, 0x24($sp)
    /* 1FE50 8002F650 52C8000C */  jal        SndValidateSeqChannel
    /* 1FE54 8002F654 2000B0AF */   sw        $s0, 0x20($sp)
    /* 1FE58 8002F658 21800000 */  addu       $s0, $zero, $zero
    /* 1FE5C 8002F65C 0980033C */  lui        $v1, %hi(gNumVoices)
    /* 1FE60 8002F660 D0E96390 */  lbu        $v1, %lo(gNumVoices)($v1)
    /* 1FE64 8002F664 21104002 */  addu       $v0, $s2, $zero
    /* 1FE68 8002F668 0980013C */  lui        $at, %hi(D_8008EA22)
    /* 1FE6C 8002F66C 22EA22A4 */  sh         $v0, %lo(D_8008EA22)($at)
    /* 1FE70 8002F670 18006018 */  blez       $v1, .Lfunc_8002F610_8002F6D4
    /* 1FE74 8002F674 21880000 */   addu      $s1, $zero, $zero
    /* 1FE78 8002F678 00941200 */  sll        $s2, $s2, 16
    /* 1FE7C 8002F67C 00241000 */  sll        $a0, $s0, 16
  .Lfunc_8002F610_8002F680:
    /* 1FE80 8002F680 03240400 */  sra        $a0, $a0, 16
    /* 1FE84 8002F684 032C1200 */  sra        $a1, $s2, 16
    /* 1FE88 8002F688 FFFF6232 */  andi       $v0, $s3, 0xFFFF
    /* 1FE8C 8002F68C 00341500 */  sll        $a2, $s5, 16
    /* 1FE90 8002F690 003C1400 */  sll        $a3, $s4, 16
    /* 1FE94 8002F694 03340600 */  sra        $a2, $a2, 16
    /* 1FE98 8002F698 033C0700 */  sra        $a3, $a3, 16
    /* 1FE9C 8002F69C FABC000C */  jal        SndVoiceEffect
    /* 1FEA0 8002F6A0 1000A2AF */   sw        $v0, 0x10($sp)
    /* 1FEA4 8002F6A4 00140200 */  sll        $v0, $v0, 16
    /* 1FEA8 8002F6A8 03140200 */  sra        $v0, $v0, 16
    /* 1FEAC 8002F6AC 21882202 */  addu       $s1, $s1, $v0
    /* 1FEB0 8002F6B0 01000226 */  addiu      $v0, $s0, 0x1
    /* 1FEB4 8002F6B4 21804000 */  addu       $s0, $v0, $zero
    /* 1FEB8 8002F6B8 00140200 */  sll        $v0, $v0, 16
    /* 1FEBC 8002F6BC 0980033C */  lui        $v1, %hi(gNumVoices)
    /* 1FEC0 8002F6C0 D0E96390 */  lbu        $v1, %lo(gNumVoices)($v1)
    /* 1FEC4 8002F6C4 03140200 */  sra        $v0, $v0, 16
    /* 1FEC8 8002F6C8 2A104300 */  slt        $v0, $v0, $v1
    /* 1FECC 8002F6CC ECFF4014 */  bnez       $v0, .Lfunc_8002F610_8002F680
    /* 1FED0 8002F6D0 00241000 */   sll       $a0, $s0, 16
  .Lfunc_8002F610_8002F6D4:
    /* 1FED4 8002F6D4 21102002 */  addu       $v0, $s1, $zero
    /* 1FED8 8002F6D8 3800BF8F */  lw         $ra, 0x38($sp)
    /* 1FEDC 8002F6DC 3400B58F */  lw         $s5, 0x34($sp)
    /* 1FEE0 8002F6E0 3000B48F */  lw         $s4, 0x30($sp)
    /* 1FEE4 8002F6E4 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 1FEE8 8002F6E8 2800B28F */  lw         $s2, 0x28($sp)
    /* 1FEEC 8002F6EC 2400B18F */  lw         $s1, 0x24($sp)
    /* 1FEF0 8002F6F0 2000B08F */  lw         $s0, 0x20($sp)
    /* 1FEF4 8002F6F4 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 1FEF8 8002F6F8 0800E003 */  jr         $ra
    /* 1FEFC 8002F6FC 00000000 */   nop
endlabel SndSetVoiceParamValidated
