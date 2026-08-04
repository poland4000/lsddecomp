.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndSetVoicePitchRaw, 0x1D0

glabel SndSetVoicePitchRaw
    /* 1F074 8002E874 21588000 */  addu       $t3, $a0, $zero
    /* 1F078 8002E878 2140A000 */  addu       $t0, $a1, $zero
    /* 1F07C 8002E87C 2148C000 */  addu       $t1, $a2, $zero
    /* 1F080 8002E880 002C0500 */  sll        $a1, $a1, 16
    /* 1F084 8002E884 032C0500 */  sra        $a1, $a1, 16
    /* 1F088 8002E888 00340600 */  sll        $a2, $a2, 16
    /* 1F08C 8002E88C 03340600 */  sra        $a2, $a2, 16
    /* 1F090 8002E890 6A00A610 */  beq        $a1, $a2, .Lfunc_8002E874_8002EA3C
    /* 1F094 8002E894 2150E000 */   addu      $t2, $a3, $zero
    /* 1F098 8002E898 001C0400 */  sll        $v1, $a0, 16
    /* 1F09C 8002E89C 031C0300 */  sra        $v1, $v1, 16
    /* 1F0A0 8002E8A0 40100300 */  sll        $v0, $v1, 1
    /* 1F0A4 8002E8A4 21104300 */  addu       $v0, $v0, $v1
    /* 1F0A8 8002E8A8 80100200 */  sll        $v0, $v0, 2
    /* 1F0AC 8002E8AC 21104300 */  addu       $v0, $v0, $v1
    /* 1F0B0 8002E8B0 80100200 */  sll        $v0, $v0, 2
    /* 1F0B4 8002E8B4 01000334 */  ori        $v1, $zero, 0x1
    /* 1F0B8 8002E8B8 0980013C */  lui        $at, %hi(D_8008D9B0)
    /* 1F0BC 8002E8BC B0D92124 */  addiu      $at, $at, %lo(D_8008D9B0)
    /* 1F0C0 8002E8C0 21082200 */  addu       $at, $at, $v0
    /* 1F0C4 8002E8C4 000023A4 */  sh         $v1, 0x0($at)
    /* 1F0C8 8002E8C8 0980013C */  lui        $at, %hi(D_8008D9B8)
    /* 1F0CC 8002E8CC B8D92124 */  addiu      $at, $at, %lo(D_8008D9B8)
    /* 1F0D0 8002E8D0 21082200 */  addu       $at, $at, $v0
    /* 1F0D4 8002E8D4 000028A4 */  sh         $t0, 0x0($at)
    /* 1F0D8 8002E8D8 0980013C */  lui        $at, %hi(D_8008D9B8 + 0x2)
    /* 1F0DC 8002E8DC BAD92124 */  addiu      $at, $at, %lo(D_8008D9B8 + 0x2)
    /* 1F0E0 8002E8E0 21082200 */  addu       $at, $at, $v0
    /* 1F0E4 8002E8E4 000029A4 */  sh         $t1, 0x0($at)
    /* 1F0E8 8002E8E8 00140700 */  sll        $v0, $a3, 16
    /* 1F0EC 8002E8EC 031C0200 */  sra        $v1, $v0, 16
    /* 1F0F0 8002E8F0 2310A600 */  subu       $v0, $a1, $a2
    /* 1F0F4 8002E8F4 05004004 */  bltz       $v0, .Lfunc_8002E874_8002E90C
    /* 1F0F8 8002E8F8 2A104300 */   slt       $v0, $v0, $v1
    /* 1F0FC 8002E8FC 07004014 */  bnez       $v0, .Lfunc_8002E874_8002E91C
    /* 1F100 8002E900 00240A00 */   sll       $a0, $t2, 16
    /* 1F104 8002E904 6FBA0008 */  j          .Lfunc_8002E874_8002E9BC
    /* 1F108 8002E908 00240800 */   sll       $a0, $t0, 16
  .Lfunc_8002E874_8002E90C:
    /* 1F10C 8002E90C 2310C500 */  subu       $v0, $a2, $a1
    /* 1F110 8002E910 2A104300 */  slt        $v0, $v0, $v1
    /* 1F114 8002E914 28004010 */  beqz       $v0, .Lfunc_8002E874_8002E9B8
    /* 1F118 8002E918 00240A00 */   sll       $a0, $t2, 16
  .Lfunc_8002E874_8002E91C:
    /* 1F11C 8002E91C 03240400 */  sra        $a0, $a0, 16
    /* 1F120 8002E920 001C0800 */  sll        $v1, $t0, 16
    /* 1F124 8002E924 031C0300 */  sra        $v1, $v1, 16
    /* 1F128 8002E928 00140900 */  sll        $v0, $t1, 16
    /* 1F12C 8002E92C 03140200 */  sra        $v0, $v0, 16
    /* 1F130 8002E930 23186200 */  subu       $v1, $v1, $v0
    /* 1F134 8002E934 1A008300 */  div        $zero, $a0, $v1
    /* 1F138 8002E938 02006014 */  bnez       $v1, .Lfunc_8002E874_8002E944
    /* 1F13C 8002E93C 00000000 */   nop
    /* 1F140 8002E940 0D000700 */  break      7
  .Lfunc_8002E874_8002E944:
    /* 1F144 8002E944 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 1F148 8002E948 04006114 */  bne        $v1, $at, .Lfunc_8002E874_8002E95C
    /* 1F14C 8002E94C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 1F150 8002E950 02008114 */  bne        $a0, $at, .Lfunc_8002E874_8002E95C
    /* 1F154 8002E954 00000000 */   nop
    /* 1F158 8002E958 0D000600 */  break      6
  .Lfunc_8002E874_8002E95C:
    /* 1F15C 8002E95C 12200000 */  mflo       $a0
    /* 1F160 8002E960 001C0B00 */  sll        $v1, $t3, 16
    /* 1F164 8002E964 031C0300 */  sra        $v1, $v1, 16
    /* 1F168 8002E968 40100300 */  sll        $v0, $v1, 1
    /* 1F16C 8002E96C 21104300 */  addu       $v0, $v0, $v1
    /* 1F170 8002E970 80100200 */  sll        $v0, $v0, 2
    /* 1F174 8002E974 21104300 */  addu       $v0, $v0, $v1
    /* 1F178 8002E978 80100200 */  sll        $v0, $v0, 2
    /* 1F17C 8002E97C 01000334 */  ori        $v1, $zero, 0x1
    /* 1F180 8002E980 0980013C */  lui        $at, %hi(D_8008D9B0 + 0x2)
    /* 1F184 8002E984 B2D92124 */  addiu      $at, $at, %lo(D_8008D9B0 + 0x2)
    /* 1F188 8002E988 21082200 */  addu       $at, $at, $v0
    /* 1F18C 8002E98C 000023A4 */  sh         $v1, 0x0($at)
    /* 1F190 8002E990 0980013C */  lui        $at, %hi(D_8008D9B4)
    /* 1F194 8002E994 B4D92124 */  addiu      $at, $at, %lo(D_8008D9B4)
    /* 1F198 8002E998 21082200 */  addu       $at, $at, $v0
    /* 1F19C 8002E99C 000024A4 */  sh         $a0, 0x0($at)
    /* 1F1A0 8002E9A0 0980013C */  lui        $at, %hi(D_8008D9B4 + 0x2)
    /* 1F1A4 8002E9A4 B6D92124 */  addiu      $at, $at, %lo(D_8008D9B4 + 0x2)
    /* 1F1A8 8002E9A8 21082200 */  addu       $at, $at, $v0
    /* 1F1AC 8002E9AC 000024A4 */  sh         $a0, 0x0($at)
    /* 1F1B0 8002E9B0 8FBA0008 */  j          .Lfunc_8002E874_8002EA3C
    /* 1F1B4 8002E9B4 00000000 */   nop
  .Lfunc_8002E874_8002E9B8:
    /* 1F1B8 8002E9B8 00240800 */  sll        $a0, $t0, 16
  .Lfunc_8002E874_8002E9BC:
    /* 1F1BC 8002E9BC 03240400 */  sra        $a0, $a0, 16
    /* 1F1C0 8002E9C0 00140900 */  sll        $v0, $t1, 16
    /* 1F1C4 8002E9C4 03140200 */  sra        $v0, $v0, 16
    /* 1F1C8 8002E9C8 23208200 */  subu       $a0, $a0, $v0
    /* 1F1CC 8002E9CC 00140A00 */  sll        $v0, $t2, 16
    /* 1F1D0 8002E9D0 03140200 */  sra        $v0, $v0, 16
    /* 1F1D4 8002E9D4 1A008200 */  div        $zero, $a0, $v0
    /* 1F1D8 8002E9D8 02004014 */  bnez       $v0, .Lfunc_8002E874_8002E9E4
    /* 1F1DC 8002E9DC 00000000 */   nop
    /* 1F1E0 8002E9E0 0D000700 */  break      7
  .Lfunc_8002E874_8002E9E4:
    /* 1F1E4 8002E9E4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 1F1E8 8002E9E8 04004114 */  bne        $v0, $at, .Lfunc_8002E874_8002E9FC
    /* 1F1EC 8002E9EC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 1F1F0 8002E9F0 02008114 */  bne        $a0, $at, .Lfunc_8002E874_8002E9FC
    /* 1F1F4 8002E9F4 00000000 */   nop
    /* 1F1F8 8002E9F8 0D000600 */  break      6
  .Lfunc_8002E874_8002E9FC:
    /* 1F1FC 8002E9FC 12200000 */  mflo       $a0
    /* 1F200 8002EA00 001C0B00 */  sll        $v1, $t3, 16
    /* 1F204 8002EA04 031C0300 */  sra        $v1, $v1, 16
    /* 1F208 8002EA08 40100300 */  sll        $v0, $v1, 1
    /* 1F20C 8002EA0C 21104300 */  addu       $v0, $v0, $v1
    /* 1F210 8002EA10 80100200 */  sll        $v0, $v0, 2
    /* 1F214 8002EA14 21104300 */  addu       $v0, $v0, $v1
    /* 1F218 8002EA18 80100200 */  sll        $v0, $v0, 2
    /* 1F21C 8002EA1C 0980013C */  lui        $at, %hi(D_8008D9B4)
    /* 1F220 8002EA20 B4D92124 */  addiu      $at, $at, %lo(D_8008D9B4)
    /* 1F224 8002EA24 21082200 */  addu       $at, $at, $v0
    /* 1F228 8002EA28 000020A4 */  sh         $zero, 0x0($at)
    /* 1F22C 8002EA2C 0980013C */  lui        $at, %hi(D_8008D9B0 + 0x2)
    /* 1F230 8002EA30 B2D92124 */  addiu      $at, $at, %lo(D_8008D9B0 + 0x2)
    /* 1F234 8002EA34 21082200 */  addu       $at, $at, $v0
    /* 1F238 8002EA38 000024A4 */  sh         $a0, 0x0($at)
  .Lfunc_8002E874_8002EA3C:
    /* 1F23C 8002EA3C 0800E003 */  jr         $ra
    /* 1F240 8002EA40 00000000 */   nop
endlabel SndSetVoicePitchRaw
