.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndVoiceTick, 0xBC

glabel SndVoiceTick
    /* 1E77C 8002DF7C AA2A053C */  lui        $a1, (0x2AAAAAAB >> 16)
    /* 1E780 8002DF80 ABAAA534 */  ori        $a1, $a1, (0x2AAAAAAB & 0xFFFF)
    /* 1E784 8002DF84 0980023C */  lui        $v0, %hi(D_8008EA0E)
    /* 1E788 8002DF88 0EEA4290 */  lbu        $v0, %lo(D_8008EA0E)($v0)
    /* 1E78C 8002DF8C 0980033C */  lui        $v1, %hi(D_8008EA1C)
    /* 1E790 8002DF90 1CEA6390 */  lbu        $v1, %lo(D_8008EA1C)($v1)
    /* 1E794 8002DF94 3C004224 */  addiu      $v0, $v0, 0x3C
    /* 1E798 8002DF98 23104300 */  subu       $v0, $v0, $v1
    /* 1E79C 8002DF9C 00140200 */  sll        $v0, $v0, 16
    /* 1E7A0 8002DFA0 03240200 */  sra        $a0, $v0, 16
    /* 1E7A4 8002DFA4 18008500 */  mult       $a0, $a1
    /* 1E7A8 8002DFA8 0980033C */  lui        $v1, %hi(D_8008EA1D)
    /* 1E7AC 8002DFAC 1DEA6390 */  lbu        $v1, %lo(D_8008EA1D)($v1)
    /* 1E7B0 8002DFB0 C3170200 */  sra        $v0, $v0, 31
    /* 1E7B4 8002DFB4 C2300300 */  srl        $a2, $v1, 3
    /* 1E7B8 8002DFB8 10180000 */  mfhi       $v1
    /* 1E7BC 8002DFBC 43180300 */  sra        $v1, $v1, 1
    /* 1E7C0 8002DFC0 23286200 */  subu       $a1, $v1, $v0
    /* 1E7C4 8002DFC4 40100500 */  sll        $v0, $a1, 1
    /* 1E7C8 8002DFC8 21104500 */  addu       $v0, $v0, $a1
    /* 1E7CC 8002DFCC 80100200 */  sll        $v0, $v0, 2
    /* 1E7D0 8002DFD0 23208200 */  subu       $a0, $a0, $v0
    /* 1E7D4 8002DFD4 1000C22C */  sltiu      $v0, $a2, 0x10
    /* 1E7D8 8002DFD8 02004014 */  bnez       $v0, .Lfunc_8002DF7C_8002DFE4
    /* 1E7DC 8002DFDC 00140400 */   sll       $v0, $a0, 16
    /* 1E7E0 8002DFE0 0F000634 */  ori        $a2, $zero, 0xF
  .Lfunc_8002DF7C_8002DFE4:
    /* 1E7E4 8002DFE4 03130200 */  sra        $v0, $v0, 12
    /* 1E7E8 8002DFE8 2110C200 */  addu       $v0, $a2, $v0
    /* 1E7EC 8002DFEC 40100200 */  sll        $v0, $v0, 1
    /* 1E7F0 8002DFF0 0780013C */  lui        $at, %hi(D_8006DAD8)
    /* 1E7F4 8002DFF4 D8DA2124 */  addiu      $at, $at, %lo(D_8006DAD8)
    /* 1E7F8 8002DFF8 21082200 */  addu       $at, $at, $v0
    /* 1E7FC 8002DFFC 00002394 */  lhu        $v1, 0x0($at)
    /* 1E800 8002E000 FBFFA224 */  addiu      $v0, $a1, -0x5
    /* 1E804 8002E004 00140200 */  sll        $v0, $v0, 16
    /* 1E808 8002E008 03140200 */  sra        $v0, $v0, 16
    /* 1E80C 8002E00C 03004018 */  blez       $v0, .Lfunc_8002DF7C_8002E01C
    /* 1E810 8002E010 00000000 */   nop
    /* 1E814 8002E014 0CB80008 */  j          .Lfunc_8002DF7C_8002E030
    /* 1E818 8002E018 04184300 */   sllv      $v1, $v1, $v0
  .Lfunc_8002DF7C_8002E01C:
    /* 1E81C 8002E01C 04004104 */  bgez       $v0, .Lfunc_8002DF7C_8002E030
    /* 1E820 8002E020 00000000 */   nop
    /* 1E824 8002E024 FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* 1E828 8002E028 23100200 */  negu       $v0, $v0
    /* 1E82C 8002E02C 07184300 */  srav       $v1, $v1, $v0
  .Lfunc_8002DF7C_8002E030:
    /* 1E830 8002E030 0800E003 */  jr         $ra
    /* 1E834 8002E034 FFFF6230 */   andi      $v0, $v1, 0xFFFF
endlabel SndVoiceTick
