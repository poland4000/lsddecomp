.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndValidateSeqChannel, 0xD4

glabel SndValidateSeqChannel
    /* 22948 80032148 21308000 */  addu       $a2, $a0, $zero
    /* 2294C 8003214C FFFFC230 */  andi       $v0, $a2, 0xFFFF
    /* 22950 80032150 1000422C */  sltiu      $v0, $v0, 0x10
    /* 22954 80032154 11004010 */  beqz       $v0, .Lfunc_80032148_8003219C
    /* 22958 80032158 2138A000 */   addu      $a3, $a1, $zero
    /* 2295C 8003215C 00140400 */  sll        $v0, $a0, 16
    /* 22960 80032160 03240200 */  sra        $a0, $v0, 16
    /* 22964 80032164 0980013C */  lui        $at, %hi(gSeqSlotStates)
    /* 22968 80032168 2CEA2124 */  addiu      $at, $at, %lo(gSeqSlotStates)
    /* 2296C 8003216C 21082400 */  addu       $at, $at, $a0
    /* 22970 80032170 00002390 */  lbu        $v1, 0x0($at)
    /* 22974 80032174 01000234 */  ori        $v0, $zero, 0x1
    /* 22978 80032178 26006214 */  bne        $v1, $v0, .Lfunc_80032148_80032214
    /* 2297C 8003217C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 22980 80032180 001C0500 */  sll        $v1, $a1, 16
    /* 22984 80032184 0980023C */  lui        $v0, %hi(gMaxSeqChannels)
    /* 22988 80032188 38E94284 */  lh         $v0, %lo(gMaxSeqChannels)($v0)
    /* 2298C 8003218C 032C0300 */  sra        $a1, $v1, 16
    /* 22990 80032190 2A10A200 */  slt        $v0, $a1, $v0
    /* 22994 80032194 03004014 */  bnez       $v0, .Lfunc_80032148_800321A4
    /* 22998 80032198 80100400 */   sll       $v0, $a0, 2
  .Lfunc_80032148_8003219C:
    /* 2299C 8003219C 85C80008 */  j          .Lfunc_80032148_80032214
    /* 229A0 800321A0 FFFF0224 */   addiu     $v0, $zero, -0x1
  .Lfunc_80032148_800321A4:
    /* 229A4 800321A4 0980013C */  lui        $at, %hi(D_8008E80C)
    /* 229A8 800321A8 0CE82124 */  addiu      $at, $at, %lo(D_8008E80C)
    /* 229AC 800321AC 21082200 */  addu       $at, $at, $v0
    /* 229B0 800321B0 0000238C */  lw         $v1, 0x0($at)
    /* 229B4 800321B4 0980013C */  lui        $at, %hi(D_8008E7A4)
    /* 229B8 800321B8 A4E72124 */  addiu      $at, $at, %lo(D_8008E7A4)
    /* 229BC 800321BC 21082200 */  addu       $at, $at, $v0
    /* 229C0 800321C0 0000248C */  lw         $a0, 0x0($at)
    /* 229C4 800321C4 0980013C */  lui        $at, %hi(D_8008E850)
    /* 229C8 800321C8 50E82124 */  addiu      $at, $at, %lo(D_8008E850)
    /* 229CC 800321CC 21082200 */  addu       $at, $at, $v0
    /* 229D0 800321D0 0000228C */  lw         $v0, 0x0($at)
    /* 229D4 800321D4 0980013C */  lui        $at, %hi(D_8008EA0D)
    /* 229D8 800321D8 0DEA26A0 */  sb         $a2, %lo(D_8008EA0D)($at)
    /* 229DC 800321DC 0980013C */  lui        $at, %hi(D_8008EA12)
    /* 229E0 800321E0 12EA27A0 */  sb         $a3, %lo(D_8008EA12)($at)
    /* 229E4 800321E4 0980013C */  lui        $at, %hi(D_8008E978)
    /* 229E8 800321E8 78E922AC */  sw         $v0, %lo(D_8008E978)($at)
    /* 229EC 800321EC 00110500 */  sll        $v0, $a1, 4
    /* 229F0 800321F0 21104400 */  addu       $v0, $v0, $a0
    /* 229F4 800321F4 0980013C */  lui        $at, %hi(D_8008E970)
    /* 229F8 800321F8 70E923AC */  sw         $v1, %lo(D_8008E970)($at)
    /* 229FC 800321FC 0980013C */  lui        $at, %hi(gSeqChannelTable)
    /* 22A00 80032200 68E924AC */  sw         $a0, %lo(gSeqChannelTable)($at)
    /* 22A04 80032204 08004390 */  lbu        $v1, 0x8($v0)
    /* 22A08 80032208 21100000 */  addu       $v0, $zero, $zero
    /* 22A0C 8003220C 0980013C */  lui        $at, %hi(D_8008EA13)
    /* 22A10 80032210 13EA23A0 */  sb         $v1, %lo(D_8008EA13)($at)
  .Lfunc_80032148_80032214:
    /* 22A14 80032214 0800E003 */  jr         $ra
    /* 22A18 80032218 00000000 */   nop
endlabel SndValidateSeqChannel
