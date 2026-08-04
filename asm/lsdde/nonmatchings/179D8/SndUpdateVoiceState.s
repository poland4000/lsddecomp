.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndUpdateVoiceState, 0x23C

glabel SndUpdateVoiceState
    /* 1DEA4 8002D6A4 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 1DEA8 8002D6A8 21300000 */  addu       $a2, $zero, $zero
    /* 1DEAC 8002D6AC 0980033C */  lui        $v1, %hi(D_8008EA28)
    /* 1DEB0 8002D6B0 28EA6324 */  addiu      $v1, $v1, %lo(D_8008EA28)
    /* 1DEB4 8002D6B4 FEFF6824 */  addiu      $t0, $v1, -0x2
    /* 1DEB8 8002D6B8 01000734 */  ori        $a3, $zero, 0x1
    /* 1DEBC 8002D6BC 0980043C */  lui        $a0, %hi(gCurrentVoice)
    /* 1DEC0 8002D6C0 26EA8484 */  lh         $a0, %lo(gCurrentVoice)($a0)
    /* 1DEC4 8002D6C4 0980053C */  lui        $a1, %hi(D_8008DE6C)
    /* 1DEC8 8002D6C8 6CDEA524 */  addiu      $a1, $a1, %lo(D_8008DE6C)
    /* 1DECC 8002D6CC C0100400 */  sll        $v0, $a0, 3
    /* 1DED0 8002D6D0 000062A4 */  sh         $v0, 0x0($v1)
    /* 1DED4 8002D6D4 0980023C */  lui        $v0, %hi(D_8008EA13)
    /* 1DED8 8002D6D8 13EA4290 */  lbu        $v0, %lo(D_8008EA13)($v0)
    /* 1DEDC 8002D6DC 0980033C */  lui        $v1, %hi(D_8008EA18)
    /* 1DEE0 8002D6E0 18EA6390 */  lbu        $v1, %lo(D_8008EA18)($v1)
    /* 1DEE4 8002D6E4 00110200 */  sll        $v0, $v0, 4
    /* 1DEE8 8002D6E8 21186200 */  addu       $v1, $v1, $v0
    /* 1DEEC 8002D6EC 40100400 */  sll        $v0, $a0, 1
    /* 1DEF0 8002D6F0 21104400 */  addu       $v0, $v0, $a0
    /* 1DEF4 8002D6F4 80100200 */  sll        $v0, $v0, 2
    /* 1DEF8 8002D6F8 21104400 */  addu       $v0, $v0, $a0
    /* 1DEFC 8002D6FC 80100200 */  sll        $v0, $v0, 2
    /* 1DF00 8002D700 0980013C */  lui        $at, %hi(D_8008EA2A)
    /* 1DF04 8002D704 2AEA23A4 */  sh         $v1, %lo(D_8008EA2A)($at)
    /* 1DF08 8002D708 FF7F0334 */  ori        $v1, $zero, 0x7FFF
    /* 1DF0C 8002D70C 0980013C */  lui        $at, %hi(D_8008D98E)
    /* 1DF10 8002D710 8ED92124 */  addiu      $at, $at, %lo(D_8008D98E)
    /* 1DF14 8002D714 21082200 */  addu       $at, $at, $v0
    /* 1DF18 8002D718 000023A4 */  sh         $v1, 0x0($at)
  .Lfunc_8002D6A4_8002D71C:
    /* 1DF1C 8002D71C 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1DF20 8002D720 00000285 */  lh         $v0, 0x0($t0)
    /* 1DF24 8002D724 0000A38C */  lw         $v1, 0x0($a1)
    /* 1DF28 8002D728 04104700 */  sllv       $v0, $a3, $v0
    /* 1DF2C 8002D72C 27100200 */  nor        $v0, $zero, $v0
    /* 1DF30 8002D730 24104300 */  and        $v0, $v0, $v1
    /* 1DF34 8002D734 0000A2AC */  sw         $v0, 0x0($a1)
    /* 1DF38 8002D738 1000C228 */  slti       $v0, $a2, 0x10
    /* 1DF3C 8002D73C F7FF4014 */  bnez       $v0, .Lfunc_8002D6A4_8002D71C
    /* 1DF40 8002D740 0400A524 */   addiu     $a1, $a1, 0x4
    /* 1DF44 8002D744 0980033C */  lui        $v1, %hi(D_8008EA24)
    /* 1DF48 8002D748 24EA6394 */  lhu        $v1, %lo(D_8008EA24)($v1)
    /* 1DF4C 8002D74C 00000000 */  nop
    /* 1DF50 8002D750 01006230 */  andi       $v0, $v1, 0x1
    /* 1DF54 8002D754 0F004018 */  blez       $v0, .Lfunc_8002D6A4_8002D794
    /* 1DF58 8002D758 00140300 */   sll       $v0, $v1, 16
    /* 1DF5C 8002D75C 03140200 */  sra        $v0, $v0, 16
    /* 1DF60 8002D760 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1DF64 8002D764 C21F0200 */  srl        $v1, $v0, 31
    /* 1DF68 8002D768 21104300 */  addu       $v0, $v0, $v1
    /* 1DF6C 8002D76C 43100200 */  sra        $v0, $v0, 1
    /* 1DF70 8002D770 0980033C */  lui        $v1, %hi(gSeqChannelTable)
    /* 1DF74 8002D774 68E9638C */  lw         $v1, %lo(gSeqChannelTable)($v1)
    /* 1DF78 8002D778 00110200 */  sll        $v0, $v0, 4
    /* 1DF7C 8002D77C 21104300 */  addu       $v0, $v0, $v1
    /* 1DF80 8002D780 0980033C */  lui        $v1, %hi(D_8008EA28)
    /* 1DF84 8002D784 28EA6384 */  lh         $v1, %lo(D_8008EA28)($v1)
    /* 1DF88 8002D788 0C004294 */  lhu        $v0, 0xC($v0)
    /* 1DF8C 8002D78C F2B50008 */  j          .Lfunc_8002D6A4_8002D7C8
    /* 1DF90 8002D790 40180300 */   sll       $v1, $v1, 1
  .Lfunc_8002D6A4_8002D794:
    /* 1DF94 8002D794 03140200 */  sra        $v0, $v0, 16
    /* 1DF98 8002D798 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1DF9C 8002D79C C21F0200 */  srl        $v1, $v0, 31
    /* 1DFA0 8002D7A0 21104300 */  addu       $v0, $v0, $v1
    /* 1DFA4 8002D7A4 43100200 */  sra        $v0, $v0, 1
    /* 1DFA8 8002D7A8 0980033C */  lui        $v1, %hi(gSeqChannelTable)
    /* 1DFAC 8002D7AC 68E9638C */  lw         $v1, %lo(gSeqChannelTable)($v1)
    /* 1DFB0 8002D7B0 00110200 */  sll        $v0, $v0, 4
    /* 1DFB4 8002D7B4 21104300 */  addu       $v0, $v0, $v1
    /* 1DFB8 8002D7B8 0980033C */  lui        $v1, %hi(D_8008EA28)
    /* 1DFBC 8002D7BC 28EA6384 */  lh         $v1, %lo(D_8008EA28)($v1)
    /* 1DFC0 8002D7C0 0E004294 */  lhu        $v0, 0xE($v0)
    /* 1DFC4 8002D7C4 40180300 */  sll        $v1, $v1, 1
  .Lfunc_8002D6A4_8002D7C8:
    /* 1DFC8 8002D7C8 0980013C */  lui        $at, %hi(D_8008D7F4 + 0x2)
    /* 1DFCC 8002D7CC F6D72124 */  addiu      $at, $at, %lo(D_8008D7F4 + 0x2)
    /* 1DFD0 8002D7D0 21082300 */  addu       $at, $at, $v1
    /* 1DFD4 8002D7D4 000022A4 */  sh         $v0, 0x0($at)
    /* 1DFD8 8002D7D8 0980033C */  lui        $v1, %hi(gCurrentVoice)
    /* 1DFDC 8002D7DC 26EA6384 */  lh         $v1, %lo(gCurrentVoice)($v1)
    /* 1DFE0 8002D7E0 00000000 */  nop
    /* 1DFE4 8002D7E4 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 1DFE8 8002D7E8 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 1DFEC 8002D7EC 21082300 */  addu       $at, $at, $v1
    /* 1DFF0 8002D7F0 00002290 */  lbu        $v0, 0x0($at)
    /* 1DFF4 8002D7F4 00000000 */  nop
    /* 1DFF8 8002D7F8 08004234 */  ori        $v0, $v0, 0x8
    /* 1DFFC 8002D7FC 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 1E000 8002D800 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 1E004 8002D804 21082300 */  addu       $at, $at, $v1
    /* 1E008 8002D808 000022A0 */  sb         $v0, 0x0($at)
    /* 1E00C 8002D80C 0980053C */  lui        $a1, %hi(D_8008EA28)
    /* 1E010 8002D810 28EAA524 */  addiu      $a1, $a1, %lo(D_8008EA28)
    /* 1E014 8002D814 0980023C */  lui        $v0, %hi(D_8008EA13)
    /* 1E018 8002D818 13EA4290 */  lbu        $v0, %lo(D_8008EA13)($v0)
    /* 1E01C 8002D81C 0980033C */  lui        $v1, %hi(D_8008EA18)
    /* 1E020 8002D820 18EA6390 */  lbu        $v1, %lo(D_8008EA18)($v1)
    /* 1E024 8002D824 0980043C */  lui        $a0, %hi(D_8008E978)
    /* 1E028 8002D828 78E9848C */  lw         $a0, %lo(D_8008E978)($a0)
    /* 1E02C 8002D82C 00110200 */  sll        $v0, $v0, 4
    /* 1E030 8002D830 21104300 */  addu       $v0, $v0, $v1
    /* 1E034 8002D834 40110200 */  sll        $v0, $v0, 5
    /* 1E038 8002D838 21104400 */  addu       $v0, $v0, $a0
    /* 1E03C 8002D83C 0000A384 */  lh         $v1, 0x0($a1)
    /* 1E040 8002D840 10004294 */  lhu        $v0, 0x10($v0)
    /* 1E044 8002D844 40180300 */  sll        $v1, $v1, 1
    /* 1E048 8002D848 0980013C */  lui        $at, %hi(D_8008D7F8)
    /* 1E04C 8002D84C F8D72124 */  addiu      $at, $at, %lo(D_8008D7F8)
    /* 1E050 8002D850 21082300 */  addu       $at, $at, $v1
    /* 1E054 8002D854 000022A4 */  sh         $v0, 0x0($at)
    /* 1E058 8002D858 0980023C */  lui        $v0, %hi(D_8008EA13)
    /* 1E05C 8002D85C 13EA4290 */  lbu        $v0, %lo(D_8008EA13)($v0)
    /* 1E060 8002D860 0980033C */  lui        $v1, %hi(D_8008EA18)
    /* 1E064 8002D864 18EA6390 */  lbu        $v1, %lo(D_8008EA18)($v1)
    /* 1E068 8002D868 00110200 */  sll        $v0, $v0, 4
    /* 1E06C 8002D86C 21104300 */  addu       $v0, $v0, $v1
    /* 1E070 8002D870 40110200 */  sll        $v0, $v0, 5
    /* 1E074 8002D874 21104400 */  addu       $v0, $v0, $a0
    /* 1E078 8002D878 0000A384 */  lh         $v1, 0x0($a1)
    /* 1E07C 8002D87C 12004294 */  lhu        $v0, 0x12($v0)
    /* 1E080 8002D880 0980043C */  lui        $a0, %hi(D_8008E84C)
    /* 1E084 8002D884 4CE88494 */  lhu        $a0, %lo(D_8008E84C)($a0)
    /* 1E088 8002D888 40180300 */  sll        $v1, $v1, 1
    /* 1E08C 8002D88C 21104400 */  addu       $v0, $v0, $a0
    /* 1E090 8002D890 0980013C */  lui        $at, %hi(D_8008D7F8 + 0x2)
    /* 1E094 8002D894 FAD72124 */  addiu      $at, $at, %lo(D_8008D7F8 + 0x2)
    /* 1E098 8002D898 21082300 */  addu       $at, $at, $v1
    /* 1E09C 8002D89C 000022A4 */  sh         $v0, 0x0($at)
    /* 1E0A0 8002D8A0 0980033C */  lui        $v1, %hi(gCurrentVoice)
    /* 1E0A4 8002D8A4 26EA6384 */  lh         $v1, %lo(gCurrentVoice)($v1)
    /* 1E0A8 8002D8A8 00000000 */  nop
    /* 1E0AC 8002D8AC 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 1E0B0 8002D8B0 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 1E0B4 8002D8B4 21082300 */  addu       $at, $at, $v1
    /* 1E0B8 8002D8B8 00002290 */  lbu        $v0, 0x0($at)
    /* 1E0BC 8002D8BC 00000000 */  nop
    /* 1E0C0 8002D8C0 30004234 */  ori        $v0, $v0, 0x30
    /* 1E0C4 8002D8C4 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 1E0C8 8002D8C8 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 1E0CC 8002D8CC 21082300 */  addu       $at, $at, $v1
    /* 1E0D0 8002D8D0 000022A0 */  sb         $v0, 0x0($at)
    /* 1E0D4 8002D8D4 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 1E0D8 8002D8D8 0800E003 */  jr         $ra
    /* 1E0DC 8002D8DC 00000000 */   nop
endlabel SndUpdateVoiceState
