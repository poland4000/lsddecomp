.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SoundPlayer__Task, 0x128

glabel SoundPlayer__Task
    /* 1CEFC 8002C6FC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 1CF00 8002C700 3000B0AF */  sw         $s0, 0x30($sp)
    /* 1CF04 8002C704 21808000 */  addu       $s0, $a0, $zero
    /* 1CF08 8002C708 3400BFAF */  sw         $ra, 0x34($sp)
    /* 1CF0C 8002C70C 2A000396 */  lhu        $v1, 0x2A($s0)
    /* 1CF10 8002C710 01000234 */  ori        $v0, $zero, 0x1
    /* 1CF14 8002C714 07006210 */  beq        $v1, $v0, .Lfunc_8002C6FC_8002C734
    /* 1CF18 8002C718 02006228 */   slti      $v0, $v1, 0x2
    /* 1CF1C 8002C71C 3C004014 */  bnez       $v0, .Lfunc_8002C6FC_8002C810
    /* 1CF20 8002C720 06000234 */   ori       $v0, $zero, 0x6
    /* 1CF24 8002C724 24006210 */  beq        $v1, $v0, .Lfunc_8002C6FC_8002C7B8
    /* 1CF28 8002C728 00000000 */   nop
    /* 1CF2C 8002C72C 04B20008 */  j          .Lfunc_8002C6FC_8002C810
    /* 1CF30 8002C730 00000000 */   nop
  .Lfunc_8002C6FC_8002C734:
    /* 1CF34 8002C734 2400028E */  lw         $v0, 0x24($s0)
    /* 1CF38 8002C738 00000000 */  nop
    /* 1CF3C 8002C73C 00024230 */  andi       $v0, $v0, 0x200
    /* 1CF40 8002C740 33004010 */  beqz       $v0, .Lfunc_8002C6FC_8002C810
    /* 1CF44 8002C744 00000000 */   nop
    /* 1CF48 8002C748 1000048E */  lw         $a0, 0x10($s0)
    /* 1CF4C 8002C74C 26CB000C */  jal        SndKeyOn
    /* 1CF50 8002C750 FFFF0524 */   addiu     $a1, $zero, -0x1
    /* 1CF54 8002C754 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1CF58 8002C758 21300000 */  addu       $a2, $zero, $zero
    /* 1CF5C 8002C75C 5C00058E */  lw         $a1, 0x5C($s0)
    /* 1CF60 8002C760 0980073C */  lui        $a3, %hi(D_8008A8D4)
    /* 1CF64 8002C764 D4A8E724 */  addiu      $a3, $a3, %lo(D_8008A8D4)
    /* 1CF68 8002C768 319C000C */  jal        Str_Concat3
    /* 1CF6C 8002C76C 540002A6 */   sh        $v0, 0x54($s0)
    /* 1CF70 8002C770 21200002 */  addu       $a0, $s0, $zero
    /* 1CF74 8002C774 1000068E */  lw         $a2, 0x10($s0)
    /* 1CF78 8002C778 0000038E */  lw         $v1, 0x0($s0)
    /* 1CF7C 8002C77C 06000234 */  ori        $v0, $zero, 0x6
    /* 1CF80 8002C780 2A0002A6 */  sh         $v0, 0x2A($s0)
    /* 1CF84 8002C784 100000AE */  sw         $zero, 0x10($s0)
    /* 1CF88 8002C788 5800628C */  lw         $v0, 0x58($v1)
    /* 1CF8C 8002C78C C00086AF */  sw         $a2, %gp_rel(D_8008A8C8)($gp)
    /* 1CF90 8002C790 09F84000 */  jalr       $v0
    /* 1CF94 8002C794 1000A527 */   addiu     $a1, $sp, 0x10
    /* 1CF98 8002C798 5C00048E */  lw         $a0, 0x5C($s0)
    /* 1CF9C 8002C79C 00000000 */  nop
    /* 1CFA0 8002C7A0 1B008010 */  beqz       $a0, .Lfunc_8002C6FC_8002C810
    /* 1CFA4 8002C7A4 00000000 */   nop
    /* 1CFA8 8002C7A8 3F5F000C */  jal        BMemFree
    /* 1CFAC 8002C7AC 00000000 */   nop
    /* 1CFB0 8002C7B0 04B20008 */  j          .Lfunc_8002C6FC_8002C810
    /* 1CFB4 8002C7B4 5C0000AE */   sw        $zero, 0x5C($s0)
  .Lfunc_8002C6FC_8002C7B8:
    /* 1CFB8 8002C7B8 2400028E */  lw         $v0, 0x24($s0)
    /* 1CFBC 8002C7BC 00000000 */  nop
    /* 1CFC0 8002C7C0 00024230 */  andi       $v0, $v0, 0x200
    /* 1CFC4 8002C7C4 12004010 */  beqz       $v0, .Lfunc_8002C6FC_8002C810
    /* 1CFC8 8002C7C8 00000000 */   nop
    /* 1CFCC 8002C7CC 1000048E */  lw         $a0, 0x10($s0)
    /* 1CFD0 8002C7D0 54000586 */  lh         $a1, 0x54($s0)
    /* 1CFD4 8002C7D4 7FCD000C */  jal        SndStartSeq
    /* 1CFD8 8002C7D8 00000000 */   nop
    /* 1CFDC 8002C7DC 540002A6 */  sh         $v0, 0x54($s0)
    /* 1CFE0 8002C7E0 00140200 */  sll        $v0, $v0, 16
    /* 1CFE4 8002C7E4 03140200 */  sra        $v0, $v0, 16
    /* 1CFE8 8002C7E8 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 1CFEC 8002C7EC 08004310 */  beq        $v0, $v1, .Lfunc_8002C6FC_8002C810
    /* 1CFF0 8002C7F0 21200002 */   addu      $a0, $s0, $zero
    /* 1CFF4 8002C7F4 0000828C */  lw         $v0, 0x0($a0)
    /* 1CFF8 8002C7F8 01000334 */  ori        $v1, $zero, 0x1
    /* 1CFFC 8002C7FC 5A0083A4 */  sh         $v1, 0x5A($a0)
    /* 1D000 8002C800 7800428C */  lw         $v0, 0x78($v0)
    /* 1D004 8002C804 00000000 */  nop
    /* 1D008 8002C808 09F84000 */  jalr       $v0
    /* 1D00C 8002C80C 01000534 */   ori       $a1, $zero, 0x1
  .Lfunc_8002C6FC_8002C810:
    /* 1D010 8002C810 3400BF8F */  lw         $ra, 0x34($sp)
    /* 1D014 8002C814 3000B08F */  lw         $s0, 0x30($sp)
    /* 1D018 8002C818 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 1D01C 8002C81C 0800E003 */  jr         $ra
    /* 1D020 8002C820 00000000 */   nop
endlabel SoundPlayer__Task
