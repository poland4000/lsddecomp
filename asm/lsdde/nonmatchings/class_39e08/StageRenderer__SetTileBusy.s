.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__SetTileBusy, 0x184

glabel StageRenderer__SetTileBusy
    /* 3D624 8004CE24 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3D628 8004CE28 21588000 */  addu       $t3, $a0, $zero
    /* 3D62C 8004CE2C 8C006D25 */  addiu      $t5, $t3, 0x8C
    /* 3D630 8004CE30 8800628D */  lw         $v0, 0x88($t3)
    /* 3D634 8004CE34 00000000 */  nop
    /* 3D638 8004CE38 58004018 */  blez       $v0, .Lfunc_8004CE24_8004CF9C
    /* 3D63C 8004CE3C 21500000 */   addu      $t2, $zero, $zero
    /* 3D640 8004CE40 FF7F093C */  lui        $t1, (0x7FFFFFFF >> 16)
    /* 3D644 8004CE44 FFFF2935 */  ori        $t1, $t1, (0x7FFFFFFF & 0xFFFF)
    /* 3D648 8004CE48 00800C3C */  lui        $t4, (0x80000000 >> 16)
    /* 3D64C 8004CE4C 96006725 */  addiu      $a3, $t3, 0x96
  .Lfunc_8004CE24_8004CE50:
    /* 3D650 8004CE50 0000A38D */  lw         $v1, 0x0($t5)
    /* 3D654 8004CE54 00000000 */  nop
    /* 3D658 8004CE58 C0100300 */  sll        $v0, $v1, 3
    /* 3D65C 8004CE5C 23104300 */  subu       $v0, $v0, $v1
    /* 3D660 8004CE60 80100200 */  sll        $v0, $v0, 2
    /* 3D664 8004CE64 EC004224 */  addiu      $v0, $v0, 0xEC
    /* 3D668 8004CE68 21186201 */  addu       $v1, $t3, $v0
    /* 3D66C 8004CE6C 0400628C */  lw         $v0, 0x4($v1)
    /* 3D670 8004CE70 00000000 */  nop
    /* 3D674 8004CE74 2C004284 */  lh         $v0, 0x2C($v0)
    /* 3D678 8004CE78 00000000 */  nop
    /* 3D67C 8004CE7C 41004010 */  beqz       $v0, .Lfunc_8004CE24_8004CF84
    /* 3D680 8004CE80 00000000 */   nop
    /* 3D684 8004CE84 21400000 */  addu       $t0, $zero, $zero
    /* 3D688 8004CE88 FAFFE484 */  lh         $a0, -0x6($a3)
    /* 3D68C 8004CE8C 1000628C */  lw         $v0, 0x10($v1)
    /* 3D690 8004CE90 FCFFE384 */  lh         $v1, -0x4($a3)
    /* 3D694 8004CE94 80200400 */  sll        $a0, $a0, 2
    /* 3D698 8004CE98 21208200 */  addu       $a0, $a0, $v0
    /* 3D69C 8004CE9C 80100300 */  sll        $v0, $v1, 2
    /* 3D6A0 8004CEA0 21104300 */  addu       $v0, $v0, $v1
    /* 3D6A4 8004CEA4 00110200 */  sll        $v0, $v0, 4
    /* 3D6A8 8004CEA8 0000E384 */  lh         $v1, 0x0($a3)
    /* 3D6AC 8004CEAC 00000000 */  nop
    /* 3D6B0 8004CEB0 34006018 */  blez       $v1, .Lfunc_8004CE24_8004CF84
    /* 3D6B4 8004CEB4 21208200 */   addu      $a0, $a0, $v0
  .Lfunc_8004CE24_8004CEB8:
    /* 3D6B8 8004CEB8 FEFFE284 */  lh         $v0, -0x2($a3)
    /* 3D6BC 8004CEBC 00000000 */  nop
    /* 3D6C0 8004CEC0 26004018 */  blez       $v0, .Lfunc_8004CE24_8004CF5C
    /* 3D6C4 8004CEC4 21300000 */   addu      $a2, $zero, $zero
  .Lfunc_8004CE24_8004CEC8:
    /* 3D6C8 8004CEC8 0600A010 */  beqz       $a1, .Lfunc_8004CE24_8004CEE4
    /* 3D6CC 8004CECC 00000000 */   nop
    /* 3D6D0 8004CED0 0000838C */  lw         $v1, 0x0($a0)
    /* 3D6D4 8004CED4 00000000 */  nop
    /* 3D6D8 8004CED8 1000628C */  lw         $v0, 0x10($v1)
    /* 3D6DC 8004CEDC BE330108 */  j          .Lfunc_8004CE24_8004CEF8
    /* 3D6E0 8004CEE0 24104900 */   and       $v0, $v0, $t1
  .Lfunc_8004CE24_8004CEE4:
    /* 3D6E4 8004CEE4 0000838C */  lw         $v1, 0x0($a0)
    /* 3D6E8 8004CEE8 00000000 */  nop
    /* 3D6EC 8004CEEC 1000628C */  lw         $v0, 0x10($v1)
    /* 3D6F0 8004CEF0 00000000 */  nop
    /* 3D6F4 8004CEF4 25104C00 */  or         $v0, $v0, $t4
  .Lfunc_8004CE24_8004CEF8:
    /* 3D6F8 8004CEF8 100062AC */  sw         $v0, 0x10($v1)
    /* 3D6FC 8004CEFC 0000828C */  lw         $v0, 0x0($a0)
    /* 3D700 8004CF00 00000000 */  nop
    /* 3D704 8004CF04 3800438C */  lw         $v1, 0x38($v0)
    /* 3D708 8004CF08 00000000 */  nop
    /* 3D70C 8004CF0C 0E006010 */  beqz       $v1, .Lfunc_8004CE24_8004CF48
    /* 3D710 8004CF10 00000000 */   nop
  .Lfunc_8004CE24_8004CF14:
    /* 3D714 8004CF14 0400A010 */  beqz       $a1, .Lfunc_8004CE24_8004CF28
    /* 3D718 8004CF18 00000000 */   nop
    /* 3D71C 8004CF1C 1000628C */  lw         $v0, 0x10($v1)
    /* 3D720 8004CF20 CD330108 */  j          .Lfunc_8004CE24_8004CF34
    /* 3D724 8004CF24 24104900 */   and       $v0, $v0, $t1
  .Lfunc_8004CE24_8004CF28:
    /* 3D728 8004CF28 1000628C */  lw         $v0, 0x10($v1)
    /* 3D72C 8004CF2C 00000000 */  nop
    /* 3D730 8004CF30 25104C00 */  or         $v0, $v0, $t4
  .Lfunc_8004CE24_8004CF34:
    /* 3D734 8004CF34 100062AC */  sw         $v0, 0x10($v1)
    /* 3D738 8004CF38 3800638C */  lw         $v1, 0x38($v1)
    /* 3D73C 8004CF3C 00000000 */  nop
    /* 3D740 8004CF40 F4FF6014 */  bnez       $v1, .Lfunc_8004CE24_8004CF14
    /* 3D744 8004CF44 00000000 */   nop
  .Lfunc_8004CE24_8004CF48:
    /* 3D748 8004CF48 FEFFE284 */  lh         $v0, -0x2($a3)
    /* 3D74C 8004CF4C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 3D750 8004CF50 2A10C200 */  slt        $v0, $a2, $v0
    /* 3D754 8004CF54 DCFF4014 */  bnez       $v0, .Lfunc_8004CE24_8004CEC8
    /* 3D758 8004CF58 04008424 */   addiu     $a0, $a0, 0x4
  .Lfunc_8004CE24_8004CF5C:
    /* 3D75C 8004CF5C 01000825 */  addiu      $t0, $t0, 0x1
    /* 3D760 8004CF60 FEFFE284 */  lh         $v0, -0x2($a3)
    /* 3D764 8004CF64 14000334 */  ori        $v1, $zero, 0x14
    /* 3D768 8004CF68 23186200 */  subu       $v1, $v1, $v0
    /* 3D76C 8004CF6C 80180300 */  sll        $v1, $v1, 2
    /* 3D770 8004CF70 0000E284 */  lh         $v0, 0x0($a3)
    /* 3D774 8004CF74 00000000 */  nop
    /* 3D778 8004CF78 2A100201 */  slt        $v0, $t0, $v0
    /* 3D77C 8004CF7C CEFF4014 */  bnez       $v0, .Lfunc_8004CE24_8004CEB8
    /* 3D780 8004CF80 21208300 */   addu      $a0, $a0, $v1
  .Lfunc_8004CE24_8004CF84:
    /* 3D784 8004CF84 0C00E724 */  addiu      $a3, $a3, 0xC
    /* 3D788 8004CF88 8800628D */  lw         $v0, 0x88($t3)
    /* 3D78C 8004CF8C 01004A25 */  addiu      $t2, $t2, 0x1
    /* 3D790 8004CF90 2A104201 */  slt        $v0, $t2, $v0
    /* 3D794 8004CF94 AEFF4014 */  bnez       $v0, .Lfunc_8004CE24_8004CE50
    /* 3D798 8004CF98 0C00AD25 */   addiu     $t5, $t5, 0xC
  .Lfunc_8004CE24_8004CF9C:
    /* 3D79C 8004CF9C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3D7A0 8004CFA0 0800E003 */  jr         $ra
    /* 3D7A4 8004CFA4 00000000 */   nop
endlabel StageRenderer__SetTileBusy
