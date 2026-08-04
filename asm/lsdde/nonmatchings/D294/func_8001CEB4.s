.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001CEB4, 0x154

glabel func_8001CEB4
    /* D6B4 8001CEB4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* D6B8 8001CEB8 2800B2AF */  sw         $s2, 0x28($sp)
    /* D6BC 8001CEBC 21908000 */  addu       $s2, $a0, $zero
    /* D6C0 8001CEC0 2400B1AF */  sw         $s1, 0x24($sp)
    /* D6C4 8001CEC4 2188A000 */  addu       $s1, $a1, $zero
    /* D6C8 8001CEC8 2000B0AF */  sw         $s0, 0x20($sp)
    /* D6CC 8001CECC 2180C000 */  addu       $s0, $a2, $zero
    /* D6D0 8001CED0 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* D6D4 8001CED4 217B000C */  jal        FixedDiv
    /* D6D8 8001CED8 21200002 */   addu      $a0, $s0, $zero
    /* D6DC 8001CEDC 04000426 */  addiu      $a0, $s0, 0x4
    /* D6E0 8001CEE0 217B000C */  jal        FixedDiv
    /* D6E4 8001CEE4 1000A2AF */   sw        $v0, 0x10($sp)
    /* D6E8 8001CEE8 08000426 */  addiu      $a0, $s0, 0x8
    /* D6EC 8001CEEC 217B000C */  jal        FixedDiv
    /* D6F0 8001CEF0 1400A2AF */   sw        $v0, 0x14($sp)
    /* D6F4 8001CEF4 0BB6063C */  lui        $a2, (0xB60B60B7 >> 16)
    /* D6F8 8001CEF8 1000A58F */  lw         $a1, 0x10($sp)
    /* D6FC 8001CEFC B760C634 */  ori        $a2, $a2, (0xB60B60B7 & 0xFFFF)
    /* D700 8001CF00 1800A600 */  mult       $a1, $a2
    /* D704 8001CF04 10180000 */  mfhi       $v1
    /* D708 8001CF08 1400A78F */  lw         $a3, 0x14($sp)
    /* D70C 8001CF0C 00000000 */  nop
    /* D710 8001CF10 1800E600 */  mult       $a3, $a2
    /* D714 8001CF14 10200000 */  mfhi       $a0
    /* D718 8001CF18 18004600 */  mult       $v0, $a2
    /* D71C 8001CF1C 1800A2AF */  sw         $v0, 0x18($sp)
    /* D720 8001CF20 21186500 */  addu       $v1, $v1, $a1
    /* D724 8001CF24 031A0300 */  sra        $v1, $v1, 8
    /* D728 8001CF28 C32F0500 */  sra        $a1, $a1, 31
    /* D72C 8001CF2C 23186500 */  subu       $v1, $v1, $a1
    /* D730 8001CF30 1000A3AF */  sw         $v1, 0x10($sp)
    /* D734 8001CF34 21208700 */  addu       $a0, $a0, $a3
    /* D738 8001CF38 03220400 */  sra        $a0, $a0, 8
    /* D73C 8001CF3C C33F0700 */  sra        $a3, $a3, 31
    /* D740 8001CF40 23208700 */  subu       $a0, $a0, $a3
    /* D744 8001CF44 1400A4AF */  sw         $a0, 0x14($sp)
    /* D748 8001CF48 10180000 */  mfhi       $v1
    /* D74C 8001CF4C 21186200 */  addu       $v1, $v1, $v0
    /* D750 8001CF50 031A0300 */  sra        $v1, $v1, 8
    /* D754 8001CF54 C3170200 */  sra        $v0, $v0, 31
    /* D758 8001CF58 23186200 */  subu       $v1, $v1, $v0
    /* D75C 8001CF5C 1800A3AF */  sw         $v1, 0x18($sp)
    /* D760 8001CF60 1400428E */  lw         $v0, 0x14($s2)
    /* D764 8001CF64 00000000 */  nop
    /* D768 8001CF68 4400438C */  lw         $v1, 0x44($v0)
    /* D76C 8001CF6C 0A002012 */  beqz       $s1, .Lfunc_8001CEB4_8001CF98
    /* D770 8001CF70 10006724 */   addiu     $a3, $v1, 0x10
    /* D774 8001CF74 1000A297 */  lhu        $v0, 0x10($sp)
    /* D778 8001CF78 00000000 */  nop
    /* D77C 8001CF7C 100062A4 */  sh         $v0, 0x10($v1)
    /* D780 8001CF80 1400A297 */  lhu        $v0, 0x14($sp)
    /* D784 8001CF84 00000000 */  nop
    /* D788 8001CF88 120062A4 */  sh         $v0, 0x12($v1)
    /* D78C 8001CF8C 1800A297 */  lhu        $v0, 0x18($sp)
    /* D790 8001CF90 F8730008 */  j          .Lfunc_8001CEB4_8001CFE0
    /* D794 8001CF94 140062A4 */   sh        $v0, 0x14($v1)
  .Lfunc_8001CEB4_8001CF98:
    /* D798 8001CF98 21300000 */  addu       $a2, $zero, $zero
    /* D79C 8001CF9C 1000A527 */  addiu      $a1, $sp, 0x10
  .Lfunc_8001CEB4_8001CFA0:
    /* D7A0 8001CFA0 2120E000 */  addu       $a0, $a3, $zero
    /* D7A4 8001CFA4 00008384 */  lh         $v1, 0x0($a0)
    /* D7A8 8001CFA8 0000A28C */  lw         $v0, 0x0($a1)
    /* D7AC 8001CFAC 02008724 */  addiu      $a3, $a0, 0x2
    /* D7B0 8001CFB0 21186200 */  addu       $v1, $v1, $v0
    /* D7B4 8001CFB4 02006104 */  bgez       $v1, .Lfunc_8001CEB4_8001CFC0
    /* D7B8 8001CFB8 21106000 */   addu      $v0, $v1, $zero
    /* D7BC 8001CFBC FF0F6224 */  addiu      $v0, $v1, 0xFFF
  .Lfunc_8001CEB4_8001CFC0:
    /* D7C0 8001CFC0 03130200 */  sra        $v0, $v0, 12
    /* D7C4 8001CFC4 00130200 */  sll        $v0, $v0, 12
    /* D7C8 8001CFC8 23106200 */  subu       $v0, $v1, $v0
    /* D7CC 8001CFCC 000082A4 */  sh         $v0, 0x0($a0)
    /* D7D0 8001CFD0 0100C624 */  addiu      $a2, $a2, 0x1
    /* D7D4 8001CFD4 0300C228 */  slti       $v0, $a2, 0x3
    /* D7D8 8001CFD8 F1FF4014 */  bnez       $v0, .Lfunc_8001CEB4_8001CFA0
    /* D7DC 8001CFDC 0400A524 */   addiu     $a1, $a1, 0x4
  .Lfunc_8001CEB4_8001CFE0:
    /* D7E0 8001CFE0 1400428E */  lw         $v0, 0x14($s2)
    /* D7E4 8001CFE4 00000000 */  nop
    /* D7E8 8001CFE8 000040AC */  sw         $zero, 0x0($v0)
    /* D7EC 8001CFEC 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* D7F0 8001CFF0 2800B28F */  lw         $s2, 0x28($sp)
    /* D7F4 8001CFF4 2400B18F */  lw         $s1, 0x24($sp)
    /* D7F8 8001CFF8 2000B08F */  lw         $s0, 0x20($sp)
    /* D7FC 8001CFFC 3000BD27 */  addiu      $sp, $sp, 0x30
    /* D800 8001D000 0800E003 */  jr         $ra
    /* D804 8001D004 00000000 */   nop
endlabel func_8001CEB4
