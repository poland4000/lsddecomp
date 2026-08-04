.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndKeyOffVoice, 0x100

glabel SndKeyOffVoice
    /* 1E838 8002E038 0980023C */  lui        $v0, %hi(D_8008EA13)
    /* 1E83C 8002E03C 13EA4290 */  lbu        $v0, %lo(D_8008EA13)($v0)
    /* 1E840 8002E040 0980033C */  lui        $v1, %hi(D_8008EA18)
    /* 1E844 8002E044 18EA6390 */  lbu        $v1, %lo(D_8008EA18)($v1)
    /* 1E848 8002E048 00110200 */  sll        $v0, $v0, 4
    /* 1E84C 8002E04C 21186200 */  addu       $v1, $v1, $v0
    /* 1E850 8002E050 0980023C */  lui        $v0, %hi(D_8008E978)
    /* 1E854 8002E054 78E9428C */  lw         $v0, %lo(D_8008E978)($v0)
    /* 1E858 8002E058 40190300 */  sll        $v1, $v1, 5
    /* 1E85C 8002E05C 21186200 */  addu       $v1, $v1, $v0
    /* 1E860 8002E060 05006290 */  lbu        $v0, 0x5($v1)
    /* 1E864 8002E064 FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* 1E868 8002E068 2110A200 */  addu       $v0, $a1, $v0
    /* 1E86C 8002E06C 02004104 */  bgez       $v0, .Lfunc_8002E038_8002E078
    /* 1E870 8002E070 21408000 */   addu      $t0, $a0, $zero
    /* 1E874 8002E074 07004224 */  addiu      $v0, $v0, 0x7
  .Lfunc_8002E038_8002E078:
    /* 1E878 8002E078 C3280200 */  sra        $a1, $v0, 3
    /* 1E87C 8002E07C 2138A000 */  addu       $a3, $a1, $zero
    /* 1E880 8002E080 1000A228 */  slti       $v0, $a1, 0x10
    /* 1E884 8002E084 03004014 */  bnez       $v0, .Lfunc_8002E038_8002E094
    /* 1E888 8002E088 21300000 */   addu      $a2, $zero, $zero
    /* 1E88C 8002E08C 01000634 */  ori        $a2, $zero, 0x1
    /* 1E890 8002E090 F0FFA724 */  addiu      $a3, $a1, -0x10
  .Lfunc_8002E038_8002E094:
    /* 1E894 8002E094 AA2A043C */  lui        $a0, (0x2AAAAAAB >> 16)
    /* 1E898 8002E098 ABAA8434 */  ori        $a0, $a0, (0x2AAAAAAB & 0xFFFF)
    /* 1E89C 8002E09C 04006390 */  lbu        $v1, 0x4($v1)
    /* 1E8A0 8002E0A0 3C000225 */  addiu      $v0, $t0, 0x3C
    /* 1E8A4 8002E0A4 23104300 */  subu       $v0, $v0, $v1
    /* 1E8A8 8002E0A8 2110C200 */  addu       $v0, $a2, $v0
    /* 1E8AC 8002E0AC 00140200 */  sll        $v0, $v0, 16
    /* 1E8B0 8002E0B0 031C0200 */  sra        $v1, $v0, 16
    /* 1E8B4 8002E0B4 18006400 */  mult       $v1, $a0
    /* 1E8B8 8002E0B8 C3170200 */  sra        $v0, $v0, 31
    /* 1E8BC 8002E0BC 10200000 */  mfhi       $a0
    /* 1E8C0 8002E0C0 43200400 */  sra        $a0, $a0, 1
    /* 1E8C4 8002E0C4 23208200 */  subu       $a0, $a0, $v0
    /* 1E8C8 8002E0C8 40100400 */  sll        $v0, $a0, 1
    /* 1E8CC 8002E0CC 21104400 */  addu       $v0, $v0, $a0
    /* 1E8D0 8002E0D0 80100200 */  sll        $v0, $v0, 2
    /* 1E8D4 8002E0D4 23186200 */  subu       $v1, $v1, $v0
    /* 1E8D8 8002E0D8 001C0300 */  sll        $v1, $v1, 16
    /* 1E8DC 8002E0DC 031B0300 */  sra        $v1, $v1, 12
    /* 1E8E0 8002E0E0 00140700 */  sll        $v0, $a3, 16
    /* 1E8E4 8002E0E4 03140200 */  sra        $v0, $v0, 16
    /* 1E8E8 8002E0E8 21186200 */  addu       $v1, $v1, $v0
    /* 1E8EC 8002E0EC 40180300 */  sll        $v1, $v1, 1
    /* 1E8F0 8002E0F0 FBFF8424 */  addiu      $a0, $a0, -0x5
    /* 1E8F4 8002E0F4 00240400 */  sll        $a0, $a0, 16
    /* 1E8F8 8002E0F8 03140400 */  sra        $v0, $a0, 16
    /* 1E8FC 8002E0FC 0780013C */  lui        $at, %hi(D_8006DAD8)
    /* 1E900 8002E100 D8DA2124 */  addiu      $at, $at, %lo(D_8006DAD8)
    /* 1E904 8002E104 21082300 */  addu       $at, $at, $v1
    /* 1E908 8002E108 00002394 */  lhu        $v1, 0x0($at)
    /* 1E90C 8002E10C 03004018 */  blez       $v0, .Lfunc_8002E038_8002E11C
    /* 1E910 8002E110 00000000 */   nop
    /* 1E914 8002E114 4CB80008 */  j          .Lfunc_8002E038_8002E130
    /* 1E918 8002E118 04184300 */   sllv      $v1, $v1, $v0
  .Lfunc_8002E038_8002E11C:
    /* 1E91C 8002E11C 04004104 */  bgez       $v0, .Lfunc_8002E038_8002E130
    /* 1E920 8002E120 00000000 */   nop
    /* 1E924 8002E124 FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* 1E928 8002E128 23100200 */  negu       $v0, $v0
    /* 1E92C 8002E12C 07184300 */  srav       $v1, $v1, $v0
  .Lfunc_8002E038_8002E130:
    /* 1E930 8002E130 0800E003 */  jr         $ra
    /* 1E934 8002E134 FFFF6230 */   andi      $v0, $v1, 0xFFFF
endlabel SndKeyOffVoice
