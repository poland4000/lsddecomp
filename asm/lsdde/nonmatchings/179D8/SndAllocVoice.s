.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndAllocVoice, 0x29C

glabel SndAllocVoice
    /* 1D718 8002CF18 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1D71C 8002CF1C 2000B0AF */  sw         $s0, 0x20($sp)
    /* 1D720 8002CF20 63001034 */  ori        $s0, $zero, 0x63
    /* 1D724 8002CF24 FFFF0B34 */  ori        $t3, $zero, 0xFFFF
    /* 1D728 8002CF28 21500000 */  addu       $t2, $zero, $zero
    /* 1D72C 8002CF2C 21400000 */  addu       $t0, $zero, $zero
    /* 1D730 8002CF30 63000934 */  ori        $t1, $zero, 0x63
    /* 1D734 8002CF34 0980023C */  lui        $v0, %hi(gNumVoices)
    /* 1D738 8002CF38 D0E94290 */  lbu        $v0, %lo(gNumVoices)($v0)
    /* 1D73C 8002CF3C 09800C3C */  lui        $t4, %hi(gSfxVolume)
    /* 1D740 8002CF40 1BEA8C91 */  lbu        $t4, %lo(gSfxVolume)($t4)
    /* 1D744 8002CF44 21380000 */  addu       $a3, $zero, $zero
    /* 1D748 8002CF48 54004010 */  beqz       $v0, .Lfunc_8002CF18_8002D09C
    /* 1D74C 8002CF4C 2400BFAF */   sw        $ra, 0x24($sp)
    /* 1D750 8002CF50 FF00E230 */  andi       $v0, $a3, 0xFF
  .Lfunc_8002CF18_8002CF54:
    /* 1D754 8002CF54 40180200 */  sll        $v1, $v0, 1
    /* 1D758 8002CF58 21186200 */  addu       $v1, $v1, $v0
    /* 1D75C 8002CF5C 80180300 */  sll        $v1, $v1, 2
    /* 1D760 8002CF60 21186200 */  addu       $v1, $v1, $v0
    /* 1D764 8002CF64 80180300 */  sll        $v1, $v1, 2
    /* 1D768 8002CF68 0980013C */  lui        $at, %hi(gVoiceStateTable + 0x3)
    /* 1D76C 8002CF6C A3D92124 */  addiu      $at, $at, %lo(gVoiceStateTable + 0x3)
    /* 1D770 8002CF70 21082300 */  addu       $at, $at, $v1
    /* 1D774 8002CF74 00002290 */  lbu        $v0, 0x0($at)
    /* 1D778 8002CF78 00000000 */  nop
    /* 1D77C 8002CF7C 0A004014 */  bnez       $v0, .Lfunc_8002CF18_8002CFA8
    /* 1D780 8002CF80 FF00E230 */   andi      $v0, $a3, 0xFF
    /* 1D784 8002CF84 0980013C */  lui        $at, %hi(D_8008D98E)
    /* 1D788 8002CF88 8ED92124 */  addiu      $at, $at, %lo(D_8008D98E)
    /* 1D78C 8002CF8C 21082300 */  addu       $at, $at, $v1
    /* 1D790 8002CF90 00002294 */  lhu        $v0, 0x0($at)
    /* 1D794 8002CF94 00000000 */  nop
    /* 1D798 8002CF98 03004014 */  bnez       $v0, .Lfunc_8002CF18_8002CFA8
    /* 1D79C 8002CF9C FF00E230 */   andi      $v0, $a3, 0xFF
    /* 1D7A0 8002CFA0 27B40008 */  j          .Lfunc_8002CF18_8002D09C
    /* 1D7A4 8002CFA4 2180E000 */   addu      $s0, $a3, $zero
  .Lfunc_8002CF18_8002CFA8:
    /* 1D7A8 8002CFA8 40180200 */  sll        $v1, $v0, 1
    /* 1D7AC 8002CFAC 21186200 */  addu       $v1, $v1, $v0
    /* 1D7B0 8002CFB0 80180300 */  sll        $v1, $v1, 2
    /* 1D7B4 8002CFB4 21186200 */  addu       $v1, $v1, $v0
    /* 1D7B8 8002CFB8 80180300 */  sll        $v1, $v1, 2
    /* 1D7BC 8002CFBC 0980013C */  lui        $at, %hi(gVoiceStateTable)
    /* 1D7C0 8002CFC0 A0D92124 */  addiu      $at, $at, %lo(gVoiceStateTable)
    /* 1D7C4 8002CFC4 21082300 */  addu       $at, $at, $v1
    /* 1D7C8 8002CFC8 00002684 */  lh         $a2, 0x0($at)
    /* 1D7CC 8002CFCC FFFF8431 */  andi       $a0, $t4, 0xFFFF
    /* 1D7D0 8002CFD0 2A10C400 */  slt        $v0, $a2, $a0
    /* 1D7D4 8002CFD4 0D004010 */  beqz       $v0, .Lfunc_8002CF18_8002D00C
    /* 1D7D8 8002CFD8 2128C000 */   addu      $a1, $a2, $zero
    /* 1D7DC 8002CFDC 2160A000 */  addu       $t4, $a1, $zero
    /* 1D7E0 8002CFE0 2148E000 */  addu       $t1, $a3, $zero
    /* 1D7E4 8002CFE4 0980013C */  lui        $at, %hi(D_8008D98E)
    /* 1D7E8 8002CFE8 8ED92124 */  addiu      $at, $at, %lo(D_8008D98E)
    /* 1D7EC 8002CFEC 21082300 */  addu       $at, $at, $v1
    /* 1D7F0 8002CFF0 00002B94 */  lhu        $t3, 0x0($at)
    /* 1D7F4 8002CFF4 0980013C */  lui        $at, %hi(D_8008D98A)
    /* 1D7F8 8002CFF8 8AD92124 */  addiu      $at, $at, %lo(D_8008D98A)
    /* 1D7FC 8002CFFC 21082300 */  addu       $at, $at, $v1
    /* 1D800 8002D000 00002894 */  lhu        $t0, 0x0($at)
    /* 1D804 8002D004 20B40008 */  j          .Lfunc_8002CF18_8002D080
    /* 1D808 8002D008 01000A34 */   ori       $t2, $zero, 0x1
  .Lfunc_8002CF18_8002D00C:
    /* 1D80C 8002D00C 1C00C414 */  bne        $a2, $a0, .Lfunc_8002CF18_8002D080
    /* 1D810 8002D010 FFFF6531 */   andi      $a1, $t3, 0xFFFF
    /* 1D814 8002D014 0980013C */  lui        $at, %hi(D_8008D98E)
    /* 1D818 8002D018 8ED92124 */  addiu      $at, $at, %lo(D_8008D98E)
    /* 1D81C 8002D01C 21082300 */  addu       $at, $at, $v1
    /* 1D820 8002D020 00002494 */  lhu        $a0, 0x0($at)
    /* 1D824 8002D024 00000000 */  nop
    /* 1D828 8002D028 2B108500 */  sltu       $v0, $a0, $a1
    /* 1D82C 8002D02C 07004010 */  beqz       $v0, .Lfunc_8002CF18_8002D04C
    /* 1D830 8002D030 01004A25 */   addiu     $t2, $t2, 0x1
    /* 1D834 8002D034 0980013C */  lui        $at, %hi(D_8008D98A)
    /* 1D838 8002D038 8AD92124 */  addiu      $at, $at, %lo(D_8008D98A)
    /* 1D83C 8002D03C 21082300 */  addu       $at, $at, $v1
    /* 1D840 8002D040 00002894 */  lhu        $t0, 0x0($at)
    /* 1D844 8002D044 1FB40008 */  j          .Lfunc_8002CF18_8002D07C
    /* 1D848 8002D048 21588000 */   addu      $t3, $a0, $zero
  .Lfunc_8002CF18_8002D04C:
    /* 1D84C 8002D04C 0C008514 */  bne        $a0, $a1, .Lfunc_8002CF18_8002D080
    /* 1D850 8002D050 00000000 */   nop
    /* 1D854 8002D054 0980013C */  lui        $at, %hi(D_8008D98A)
    /* 1D858 8002D058 8AD92124 */  addiu      $at, $at, %lo(D_8008D98A)
    /* 1D85C 8002D05C 21082300 */  addu       $at, $at, $v1
    /* 1D860 8002D060 00002284 */  lh         $v0, 0x0($at)
    /* 1D864 8002D064 00000000 */  nop
    /* 1D868 8002D068 21184000 */  addu       $v1, $v0, $zero
    /* 1D86C 8002D06C 2A100201 */  slt        $v0, $t0, $v0
    /* 1D870 8002D070 03004010 */  beqz       $v0, .Lfunc_8002CF18_8002D080
    /* 1D874 8002D074 00000000 */   nop
    /* 1D878 8002D078 21406000 */  addu       $t0, $v1, $zero
  .Lfunc_8002CF18_8002D07C:
    /* 1D87C 8002D07C 2148E000 */  addu       $t1, $a3, $zero
  .Lfunc_8002CF18_8002D080:
    /* 1D880 8002D080 0100E724 */  addiu      $a3, $a3, 0x1
    /* 1D884 8002D084 0980033C */  lui        $v1, %hi(gNumVoices)
    /* 1D888 8002D088 D0E96390 */  lbu        $v1, %lo(gNumVoices)($v1)
    /* 1D88C 8002D08C FF00E230 */  andi       $v0, $a3, 0xFF
    /* 1D890 8002D090 2B104300 */  sltu       $v0, $v0, $v1
    /* 1D894 8002D094 AFFF4014 */  bnez       $v0, .Lfunc_8002CF18_8002CF54
    /* 1D898 8002D098 FF00E230 */   andi      $v0, $a3, 0xFF
  .Lfunc_8002CF18_8002D09C:
    /* 1D89C 8002D09C FF000332 */  andi       $v1, $s0, 0xFF
    /* 1D8A0 8002D0A0 63000234 */  ori        $v0, $zero, 0x63
    /* 1D8A4 8002D0A4 05006214 */  bne        $v1, $v0, .Lfunc_8002CF18_8002D0BC
    /* 1D8A8 8002D0A8 FF004231 */   andi      $v0, $t2, 0xFF
    /* 1D8AC 8002D0AC 03004014 */  bnez       $v0, .Lfunc_8002CF18_8002D0BC
    /* 1D8B0 8002D0B0 21802001 */   addu      $s0, $t1, $zero
    /* 1D8B4 8002D0B4 0980103C */  lui        $s0, %hi(gNumVoices)
    /* 1D8B8 8002D0B8 D0E91092 */  lbu        $s0, %lo(gNumVoices)($s0)
  .Lfunc_8002CF18_8002D0BC:
    /* 1D8BC 8002D0BC 0980043C */  lui        $a0, %hi(gNumVoices)
    /* 1D8C0 8002D0C0 D0E98490 */  lbu        $a0, %lo(gNumVoices)($a0)
    /* 1D8C4 8002D0C4 FF000232 */  andi       $v0, $s0, 0xFF
    /* 1D8C8 8002D0C8 2B104400 */  sltu       $v0, $v0, $a0
    /* 1D8CC 8002D0CC 33004010 */  beqz       $v0, .Lfunc_8002CF18_8002D19C
    /* 1D8D0 8002D0D0 00000000 */   nop
    /* 1D8D4 8002D0D4 15008010 */  beqz       $a0, .Lfunc_8002CF18_8002D12C
    /* 1D8D8 8002D0D8 21380000 */   addu      $a3, $zero, $zero
    /* 1D8DC 8002D0DC 0980053C */  lui        $a1, %hi(D_8008D988)
    /* 1D8E0 8002D0E0 88D9A524 */  addiu      $a1, $a1, %lo(D_8008D988)
    /* 1D8E4 8002D0E4 FF00E330 */  andi       $v1, $a3, 0xFF
  .Lfunc_8002CF18_8002D0E8:
    /* 1D8E8 8002D0E8 40100300 */  sll        $v0, $v1, 1
    /* 1D8EC 8002D0EC 21104300 */  addu       $v0, $v0, $v1
    /* 1D8F0 8002D0F0 80100200 */  sll        $v0, $v0, 2
    /* 1D8F4 8002D0F4 21104300 */  addu       $v0, $v0, $v1
    /* 1D8F8 8002D0F8 80100200 */  sll        $v0, $v0, 2
    /* 1D8FC 8002D0FC 0100E724 */  addiu      $a3, $a3, 0x1
    /* 1D900 8002D100 0980013C */  lui        $at, %hi(D_8008D98A)
    /* 1D904 8002D104 8AD92124 */  addiu      $at, $at, %lo(D_8008D98A)
    /* 1D908 8002D108 21082200 */  addu       $at, $at, $v0
    /* 1D90C 8002D10C 00002394 */  lhu        $v1, 0x0($at)
    /* 1D910 8002D110 21104500 */  addu       $v0, $v0, $a1
    /* 1D914 8002D114 01006324 */  addiu      $v1, $v1, 0x1
    /* 1D918 8002D118 020043A4 */  sh         $v1, 0x2($v0)
    /* 1D91C 8002D11C FF00E230 */  andi       $v0, $a3, 0xFF
    /* 1D920 8002D120 2B104400 */  sltu       $v0, $v0, $a0
    /* 1D924 8002D124 F0FF4014 */  bnez       $v0, .Lfunc_8002CF18_8002D0E8
    /* 1D928 8002D128 FF00E330 */   andi      $v1, $a3, 0xFF
  .Lfunc_8002CF18_8002D12C:
    /* 1D92C 8002D12C FF000332 */  andi       $v1, $s0, 0xFF
    /* 1D930 8002D130 40100300 */  sll        $v0, $v1, 1
    /* 1D934 8002D134 21104300 */  addu       $v0, $v0, $v1
    /* 1D938 8002D138 80100200 */  sll        $v0, $v0, 2
    /* 1D93C 8002D13C 21104300 */  addu       $v0, $v0, $v1
    /* 1D940 8002D140 80100200 */  sll        $v0, $v0, 2
    /* 1D944 8002D144 0980013C */  lui        $at, %hi(D_8008D98A)
    /* 1D948 8002D148 8AD92124 */  addiu      $at, $at, %lo(D_8008D98A)
    /* 1D94C 8002D14C 21082200 */  addu       $at, $at, $v0
    /* 1D950 8002D150 000020A4 */  sh         $zero, 0x0($at)
    /* 1D954 8002D154 0980033C */  lui        $v1, %hi(gSfxVolume)
    /* 1D958 8002D158 1BEA6390 */  lbu        $v1, %lo(gSfxVolume)($v1)
    /* 1D95C 8002D15C 00000000 */  nop
    /* 1D960 8002D160 0980013C */  lui        $at, %hi(gVoiceStateTable)
    /* 1D964 8002D164 A0D92124 */  addiu      $at, $at, %lo(gVoiceStateTable)
    /* 1D968 8002D168 21082200 */  addu       $at, $at, $v0
    /* 1D96C 8002D16C 000023A4 */  sh         $v1, 0x0($at)
    /* 1D970 8002D170 0980013C */  lui        $at, %hi(gVoiceStateTable + 0x3)
    /* 1D974 8002D174 A3D92124 */  addiu      $at, $at, %lo(gVoiceStateTable + 0x3)
    /* 1D978 8002D178 21082200 */  addu       $at, $at, $v0
    /* 1D97C 8002D17C 00002390 */  lbu        $v1, 0x0($at)
    /* 1D980 8002D180 02000234 */  ori        $v0, $zero, 0x2
    /* 1D984 8002D184 06006214 */  bne        $v1, $v0, .Lfunc_8002CF18_8002D1A0
    /* 1D988 8002D188 FF000232 */   andi      $v0, $s0, 0xFF
    /* 1D98C 8002D18C FF00053C */  lui        $a1, (0xFFFFFF >> 16)
    /* 1D990 8002D190 FFFFA534 */  ori        $a1, $a1, (0xFFFFFF & 0xFFFF)
    /* 1D994 8002D194 7ADD000C */  jal        func_800375E8
    /* 1D998 8002D198 21200000 */   addu      $a0, $zero, $zero
  .Lfunc_8002CF18_8002D19C:
    /* 1D99C 8002D19C FF000232 */  andi       $v0, $s0, 0xFF
  .Lfunc_8002CF18_8002D1A0:
    /* 1D9A0 8002D1A0 2400BF8F */  lw         $ra, 0x24($sp)
    /* 1D9A4 8002D1A4 2000B08F */  lw         $s0, 0x20($sp)
    /* 1D9A8 8002D1A8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1D9AC 8002D1AC 0800E003 */  jr         $ra
    /* 1D9B0 8002D1B0 00000000 */   nop
endlabel SndAllocVoice
