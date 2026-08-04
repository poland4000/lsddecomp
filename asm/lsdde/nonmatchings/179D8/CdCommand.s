.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdCommand, 0x468

glabel CdCommand
    /* 1A710 80029F10 0780023C */  lui        $v0, %hi(gCdDebugLevel)
    /* 1A714 80029F14 08D6428C */  lw         $v0, %lo(gCdDebugLevel)($v0)
    /* 1A718 80029F18 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 1A71C 80029F1C 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 1A720 80029F20 21A8A000 */  addu       $s5, $a1, $zero
    /* 1A724 80029F24 4400B7AF */  sw         $s7, 0x44($sp)
    /* 1A728 80029F28 21B8C000 */  addu       $s7, $a2, $zero
    /* 1A72C 80029F2C 2800B0AF */  sw         $s0, 0x28($sp)
    /* 1A730 80029F30 2180E000 */  addu       $s0, $a3, $zero
    /* 1A734 80029F34 3400B3AF */  sw         $s3, 0x34($sp)
    /* 1A738 80029F38 21988000 */  addu       $s3, $a0, $zero
    /* 1A73C 80029F3C 4800BFAF */  sw         $ra, 0x48($sp)
    /* 1A740 80029F40 4000B6AF */  sw         $s6, 0x40($sp)
    /* 1A744 80029F44 3800B4AF */  sw         $s4, 0x38($sp)
    /* 1A748 80029F48 3000B2AF */  sw         $s2, 0x30($sp)
    /* 1A74C 80029F4C 02004228 */  slti       $v0, $v0, 0x2
    /* 1A750 80029F50 0B004014 */  bnez       $v0, .Lfunc_80029F10_80029F80
    /* 1A754 80029F54 2C00B1AF */   sw        $s1, 0x2C($sp)
    /* 1A758 80029F58 FF006232 */  andi       $v0, $s3, 0xFF
    /* 1A75C 80029F5C 80100200 */  sll        $v0, $v0, 2
    /* 1A760 80029F60 0780013C */  lui        $at, %hi(gCdCommandNames)
    /* 1A764 80029F64 20D62124 */  addiu      $at, $at, %lo(gCdCommandNames)
    /* 1A768 80029F68 21082200 */  addu       $at, $at, $v0
    /* 1A76C 80029F6C 0000258C */  lw         $a1, 0x0($at)
    /* 1A770 80029F70 0180043C */  lui        $a0, %hi(D_80010A20)
    /* 1A774 80029F74 200A8424 */  addiu      $a0, $a0, %lo(D_80010A20)
    /* 1A778 80029F78 084B000C */  jal        DebugPrintf
    /* 1A77C 80029F7C 00000000 */   nop
  .Lfunc_80029F10_80029F80:
    /* 1A780 80029F80 FF006232 */  andi       $v0, $s3, 0xFF
    /* 1A784 80029F84 80180200 */  sll        $v1, $v0, 2
    /* 1A788 80029F88 0780013C */  lui        $at, %hi(D_8006D840)
    /* 1A78C 80029F8C 40D82124 */  addiu      $at, $at, %lo(D_8006D840)
    /* 1A790 80029F90 21082300 */  addu       $at, $at, $v1
    /* 1A794 80029F94 0000228C */  lw         $v0, 0x0($at)
    /* 1A798 80029F98 00000000 */  nop
    /* 1A79C 80029F9C 12004010 */  beqz       $v0, .Lfunc_80029F10_80029FE8
    /* 1A7A0 80029FA0 21200000 */   addu      $a0, $zero, $zero
    /* 1A7A4 80029FA4 1000A016 */  bnez       $s5, .Lfunc_80029F10_80029FE8
    /* 1A7A8 80029FA8 00000000 */   nop
    /* 1A7AC 80029FAC 0780023C */  lui        $v0, %hi(gCdDebugLevel)
    /* 1A7B0 80029FB0 08D6428C */  lw         $v0, %lo(gCdDebugLevel)($v0)
    /* 1A7B4 80029FB4 00000000 */  nop
    /* 1A7B8 80029FB8 E3004018 */  blez       $v0, .Lfunc_80029F10_8002A348
    /* 1A7BC 80029FBC FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 1A7C0 80029FC0 0780013C */  lui        $at, %hi(gCdCommandNames)
    /* 1A7C4 80029FC4 20D62124 */  addiu      $at, $at, %lo(gCdCommandNames)
    /* 1A7C8 80029FC8 21082300 */  addu       $at, $at, $v1
    /* 1A7CC 80029FCC 0000258C */  lw         $a1, 0x0($at)
    /* 1A7D0 80029FD0 0180043C */  lui        $a0, %hi(D_80010A28)
    /* 1A7D4 80029FD4 280A8424 */  addiu      $a0, $a0, %lo(D_80010A28)
    /* 1A7D8 80029FD8 084B000C */  jal        DebugPrintf
    /* 1A7DC 80029FDC 00000000 */   nop
    /* 1A7E0 80029FE0 D2A80008 */  j          .Lfunc_80029F10_8002A348
    /* 1A7E4 80029FE4 FEFF0224 */   addiu     $v0, $zero, -0x2
  .Lfunc_80029F10_80029FE8:
    /* 1A7E8 80029FE8 6FA6000C */  jal        CdSyncImpl
    /* 1A7EC 80029FEC 21280000 */   addu      $a1, $zero, $zero
    /* 1A7F0 80029FF0 FF006332 */  andi       $v1, $s3, 0xFF
    /* 1A7F4 80029FF4 02000234 */  ori        $v0, $zero, 0x2
    /* 1A7F8 80029FF8 0C006214 */  bne        $v1, $v0, .Lfunc_80029F10_8002A02C
    /* 1A7FC 80029FFC 21200000 */   addu      $a0, $zero, $zero
    /* 1A800 8002A000 2118A002 */  addu       $v1, $s5, $zero
  .Lfunc_80029F10_8002A004:
    /* 1A804 8002A004 00006290 */  lbu        $v0, 0x0($v1)
    /* 1A808 8002A008 00000000 */  nop
    /* 1A80C 8002A00C 0780013C */  lui        $at, %hi(D_8006D618)
    /* 1A810 8002A010 18D62124 */  addiu      $at, $at, %lo(D_8006D618)
    /* 1A814 8002A014 21082400 */  addu       $at, $at, $a0
    /* 1A818 8002A018 000022A0 */  sb         $v0, 0x0($at)
    /* 1A81C 8002A01C 01008424 */  addiu      $a0, $a0, 0x1
    /* 1A820 8002A020 04008228 */  slti       $v0, $a0, 0x4
    /* 1A824 8002A024 F7FF4014 */  bnez       $v0, .Lfunc_80029F10_8002A004
    /* 1A828 8002A028 01006324 */   addiu     $v1, $v1, 0x1
  .Lfunc_80029F10_8002A02C:
    /* 1A82C 8002A02C 0780023C */  lui        $v0, %hi(D_8006D8D8)
    /* 1A830 8002A030 D8D84224 */  addiu      $v0, $v0, %lo(D_8006D8D8)
    /* 1A834 8002A034 000040A0 */  sb         $zero, 0x0($v0)
    /* 1A838 8002A038 FF006232 */  andi       $v0, $s3, 0xFF
    /* 1A83C 8002A03C 80200200 */  sll        $a0, $v0, 2
    /* 1A840 8002A040 0780013C */  lui        $at, %hi(D_8006D740)
    /* 1A844 8002A044 40D72124 */  addiu      $at, $at, %lo(D_8006D740)
    /* 1A848 8002A048 21082400 */  addu       $at, $at, $a0
    /* 1A84C 8002A04C 0000228C */  lw         $v0, 0x0($at)
    /* 1A850 8002A050 0780033C */  lui        $v1, %hi(D_8006D740)
    /* 1A854 8002A054 40D76324 */  addiu      $v1, $v1, %lo(D_8006D740)
    /* 1A858 8002A058 03004010 */  beqz       $v0, .Lfunc_80029F10_8002A068
    /* 1A85C 8002A05C 00000000 */   nop
    /* 1A860 8002A060 0780013C */  lui        $at, %hi(D_8006D8D9)
    /* 1A864 8002A064 D9D820A0 */  sb         $zero, %lo(D_8006D8D9)($at)
  .Lfunc_80029F10_8002A068:
    /* 1A868 8002A068 0780023C */  lui        $v0, %hi(gpCdRegIndex)
    /* 1A86C 8002A06C C0D8428C */  lw         $v0, %lo(gpCdRegIndex)($v0)
    /* 1A870 8002A070 00000000 */  nop
    /* 1A874 8002A074 000040A0 */  sb         $zero, 0x0($v0)
    /* 1A878 8002A078 00016224 */  addiu      $v0, $v1, 0x100
    /* 1A87C 8002A07C 21188200 */  addu       $v1, $a0, $v0
    /* 1A880 8002A080 0000628C */  lw         $v0, 0x0($v1)
    /* 1A884 8002A084 00000000 */  nop
    /* 1A888 8002A088 0D004018 */  blez       $v0, .Lfunc_80029F10_8002A0C0
    /* 1A88C 8002A08C 21200000 */   addu      $a0, $zero, $zero
    /* 1A890 8002A090 21306000 */  addu       $a2, $v1, $zero
    /* 1A894 8002A094 2128A002 */  addu       $a1, $s5, $zero
  .Lfunc_80029F10_8002A098:
    /* 1A898 8002A098 0780033C */  lui        $v1, %hi(gpCdRegAck)
    /* 1A89C 8002A09C C8D8638C */  lw         $v1, %lo(gpCdRegAck)($v1)
    /* 1A8A0 8002A0A0 0000A290 */  lbu        $v0, 0x0($a1)
    /* 1A8A4 8002A0A4 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1A8A8 8002A0A8 000062A0 */  sb         $v0, 0x0($v1)
    /* 1A8AC 8002A0AC 0000C28C */  lw         $v0, 0x0($a2)
    /* 1A8B0 8002A0B0 01008424 */  addiu      $a0, $a0, 0x1
    /* 1A8B4 8002A0B4 2A108200 */  slt        $v0, $a0, $v0
    /* 1A8B8 8002A0B8 F7FF4014 */  bnez       $v0, .Lfunc_80029F10_8002A098
    /* 1A8BC 8002A0BC 00000000 */   nop
  .Lfunc_80029F10_8002A0C0:
    /* 1A8C0 8002A0C0 0780023C */  lui        $v0, %hi(gpCdRegParam)
    /* 1A8C4 8002A0C4 C4D8428C */  lw         $v0, %lo(gpCdRegParam)($v0)
    /* 1A8C8 8002A0C8 0780013C */  lui        $at, %hi(gCdLastCommand)
    /* 1A8CC 8002A0CC 1DD633A0 */  sb         $s3, %lo(gCdLastCommand)($at)
    /* 1A8D0 8002A0D0 000053A0 */  sb         $s3, 0x0($v0)
    /* 1A8D4 8002A0D4 9C000016 */  bnez       $s0, .Lfunc_80029F10_8002A348
    /* 1A8D8 8002A0D8 21100000 */   addu      $v0, $zero, $zero
    /* 1A8DC 8002A0DC 4096000C */  jal        GetSystemTick
    /* 1A8E0 8002A0E0 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 1A8E4 8002A0E4 E0014224 */  addiu      $v0, $v0, 0x1E0
    /* 1A8E8 8002A0E8 0780043C */  lui        $a0, %hi(D_8006D8D8)
    /* 1A8EC 8002A0EC D8D88424 */  addiu      $a0, $a0, %lo(D_8006D8D8)
    /* 1A8F0 8002A0F0 0980013C */  lui        $at, %hi(D_8008B3E4)
    /* 1A8F4 8002A0F4 E4B322AC */  sw         $v0, %lo(D_8008B3E4)($at)
    /* 1A8F8 8002A0F8 0980013C */  lui        $at, %hi(D_8008B3E8)
    /* 1A8FC 8002A0FC E8B320AC */  sw         $zero, %lo(D_8008B3E8)($at)
    /* 1A900 8002A100 00008390 */  lbu        $v1, 0x0($a0)
    /* 1A904 8002A104 0180023C */  lui        $v0, %hi(D_80010A38)
    /* 1A908 8002A108 380A4224 */  addiu      $v0, $v0, %lo(D_80010A38)
    /* 1A90C 8002A10C 0980013C */  lui        $at, %hi(D_8008B3EC)
    /* 1A910 8002A110 ECB322AC */  sw         $v0, %lo(D_8008B3EC)($at)
    /* 1A914 8002A114 6A006014 */  bnez       $v1, .Lfunc_80029F10_8002A2C0
    /* 1A918 8002A118 00000000 */   nop
    /* 1A91C 8002A11C 0780143C */  lui        $s4, %hi(gCdIntNames)
    /* 1A920 8002A120 A0D69426 */  addiu      $s4, $s4, %lo(gCdIntNames)
    /* 1A924 8002A124 21908000 */  addu       $s2, $a0, $zero
    /* 1A928 8002A128 01009624 */  addiu      $s6, $a0, 0x1
  .Lfunc_80029F10_8002A12C:
    /* 1A92C 8002A12C 4096000C */  jal        GetSystemTick
    /* 1A930 8002A130 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 1A934 8002A134 0980033C */  lui        $v1, %hi(D_8008B3E4)
    /* 1A938 8002A138 E4B3638C */  lw         $v1, %lo(D_8008B3E4)($v1)
    /* 1A93C 8002A13C 00000000 */  nop
    /* 1A940 8002A140 2A186200 */  slt        $v1, $v1, $v0
    /* 1A944 8002A144 0B006014 */  bnez       $v1, .Lfunc_80029F10_8002A174
    /* 1A948 8002A148 00000000 */   nop
    /* 1A94C 8002A14C 0980033C */  lui        $v1, %hi(D_8008B3E8)
    /* 1A950 8002A150 E8B3638C */  lw         $v1, %lo(D_8008B3E8)($v1)
    /* 1A954 8002A154 00000000 */  nop
    /* 1A958 8002A158 01006224 */  addiu      $v0, $v1, 0x1
    /* 1A95C 8002A15C 0980013C */  lui        $at, %hi(D_8008B3E8)
    /* 1A960 8002A160 E8B322AC */  sw         $v0, %lo(D_8008B3E8)($at)
    /* 1A964 8002A164 1E00023C */  lui        $v0, (0x1E0000 >> 16)
    /* 1A968 8002A168 2A104300 */  slt        $v0, $v0, $v1
    /* 1A96C 8002A16C 1F004010 */  beqz       $v0, .Lfunc_80029F10_8002A1EC
    /* 1A970 8002A170 00000000 */   nop
  .Lfunc_80029F10_8002A174:
    /* 1A974 8002A174 0180043C */  lui        $a0, %hi(D_80010984)
    /* 1A978 8002A178 84098424 */  addiu      $a0, $a0, %lo(D_80010984)
    /* 1A97C 8002A17C B996000C */  jal        DebugPuts
    /* 1A980 8002A180 00000000 */   nop
    /* 1A984 8002A184 00004492 */  lbu        $a0, 0x0($s2)
    /* 1A988 8002A188 01004292 */  lbu        $v0, 0x1($s2)
    /* 1A98C 8002A18C 0980053C */  lui        $a1, %hi(D_8008B3EC)
    /* 1A990 8002A190 ECB3A58C */  lw         $a1, %lo(D_8008B3EC)($a1)
    /* 1A994 8002A194 80100200 */  sll        $v0, $v0, 2
    /* 1A998 8002A198 21105400 */  addu       $v0, $v0, $s4
    /* 1A99C 8002A19C 80200400 */  sll        $a0, $a0, 2
    /* 1A9A0 8002A1A0 0000438C */  lw         $v1, 0x0($v0)
    /* 1A9A4 8002A1A4 0780023C */  lui        $v0, %hi(gCdLastCommand)
    /* 1A9A8 8002A1A8 1DD64290 */  lbu        $v0, %lo(gCdLastCommand)($v0)
    /* 1A9AC 8002A1AC 21209400 */  addu       $a0, $a0, $s4
    /* 1A9B0 8002A1B0 80100200 */  sll        $v0, $v0, 2
    /* 1A9B4 8002A1B4 1000A3AF */  sw         $v1, 0x10($sp)
    /* 1A9B8 8002A1B8 0780013C */  lui        $at, %hi(gCdCommandNames)
    /* 1A9BC 8002A1BC 20D62124 */  addiu      $at, $at, %lo(gCdCommandNames)
    /* 1A9C0 8002A1C0 21082200 */  addu       $at, $at, $v0
    /* 1A9C4 8002A1C4 0000268C */  lw         $a2, 0x0($at)
    /* 1A9C8 8002A1C8 0000878C */  lw         $a3, 0x0($a0)
    /* 1A9CC 8002A1CC 0180043C */  lui        $a0, %hi(D_80010994)
    /* 1A9D0 8002A1D0 94098424 */  addiu      $a0, $a0, %lo(D_80010994)
    /* 1A9D4 8002A1D4 084B000C */  jal        DebugPrintf
    /* 1A9D8 8002A1D8 00000000 */   nop
    /* 1A9DC 8002A1DC 44A9000C */  jal        CdAckInterruptImpl
    /* 1A9E0 8002A1E0 00000000 */   nop
    /* 1A9E4 8002A1E4 7CA80008 */  j          .Lfunc_80029F10_8002A1F0
    /* 1A9E8 8002A1E8 FFFF0224 */   addiu     $v0, $zero, -0x1
  .Lfunc_80029F10_8002A1EC:
    /* 1A9EC 8002A1EC 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_80029F10_8002A1F0:
    /* 1A9F0 8002A1F0 55004014 */  bnez       $v0, .Lfunc_80029F10_8002A348
    /* 1A9F4 8002A1F4 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 1A9F8 8002A1F8 9993000C */  jal        WaitEvent
    /* 1A9FC 8002A1FC 00000000 */   nop
    /* 1AA00 8002A200 2B004010 */  beqz       $v0, .Lfunc_80029F10_8002A2B0
    /* 1AA04 8002A204 00000000 */   nop
    /* 1AA08 8002A208 0780023C */  lui        $v0, %hi(gpCdRegIndex)
    /* 1AA0C 8002A20C C0D8428C */  lw         $v0, %lo(gpCdRegIndex)($v0)
    /* 1AA10 8002A210 00000000 */  nop
    /* 1AA14 8002A214 00004290 */  lbu        $v0, 0x0($v0)
    /* 1AA18 8002A218 00000000 */  nop
    /* 1AA1C 8002A21C 03005130 */  andi       $s1, $v0, 0x3
  .Lfunc_80029F10_8002A220:
    /* 1AA20 8002A220 1EA5000C */  jal        CdInterruptHandler
    /* 1AA24 8002A224 00000000 */   nop
    /* 1AA28 8002A228 21804000 */  addu       $s0, $v0, $zero
    /* 1AA2C 8002A22C 1C000012 */  beqz       $s0, .Lfunc_80029F10_8002A2A0
    /* 1AA30 8002A230 04000232 */   andi      $v0, $s0, 0x4
    /* 1AA34 8002A234 0C004010 */  beqz       $v0, .Lfunc_80029F10_8002A268
    /* 1AA38 8002A238 02000232 */   andi      $v0, $s0, 0x2
    /* 1AA3C 8002A23C 0780023C */  lui        $v0, %hi(D_8006D600)
    /* 1AA40 8002A240 00D6428C */  lw         $v0, %lo(D_8006D600)($v0)
    /* 1AA44 8002A244 00000000 */  nop
    /* 1AA48 8002A248 06004010 */  beqz       $v0, .Lfunc_80029F10_8002A264
    /* 1AA4C 8002A24C 00000000 */   nop
    /* 1AA50 8002A250 0000C492 */  lbu        $a0, 0x0($s6)
    /* 1AA54 8002A254 0980053C */  lui        $a1, %hi(D_8008B3D4)
    /* 1AA58 8002A258 D4B3A524 */  addiu      $a1, $a1, %lo(D_8008B3D4)
    /* 1AA5C 8002A25C 09F84000 */  jalr       $v0
    /* 1AA60 8002A260 00000000 */   nop
  .Lfunc_80029F10_8002A264:
    /* 1AA64 8002A264 02000232 */  andi       $v0, $s0, 0x2
  .Lfunc_80029F10_8002A268:
    /* 1AA68 8002A268 EDFF4010 */  beqz       $v0, .Lfunc_80029F10_8002A220
    /* 1AA6C 8002A26C 00000000 */   nop
    /* 1AA70 8002A270 0780023C */  lui        $v0, %hi(D_8006D5FC)
    /* 1AA74 8002A274 FCD5428C */  lw         $v0, %lo(D_8006D5FC)($v0)
    /* 1AA78 8002A278 00000000 */  nop
    /* 1AA7C 8002A27C E8FF4010 */  beqz       $v0, .Lfunc_80029F10_8002A220
    /* 1AA80 8002A280 00000000 */   nop
    /* 1AA84 8002A284 00004492 */  lbu        $a0, 0x0($s2)
    /* 1AA88 8002A288 0980053C */  lui        $a1, %hi(D_8008B3CC)
    /* 1AA8C 8002A28C CCB3A524 */  addiu      $a1, $a1, %lo(D_8008B3CC)
    /* 1AA90 8002A290 09F84000 */  jalr       $v0
    /* 1AA94 8002A294 00000000 */   nop
    /* 1AA98 8002A298 88A80008 */  j          .Lfunc_80029F10_8002A220
    /* 1AA9C 8002A29C 00000000 */   nop
  .Lfunc_80029F10_8002A2A0:
    /* 1AAA0 8002A2A0 0780023C */  lui        $v0, %hi(gpCdRegIndex)
    /* 1AAA4 8002A2A4 C0D8428C */  lw         $v0, %lo(gpCdRegIndex)($v0)
    /* 1AAA8 8002A2A8 00000000 */  nop
    /* 1AAAC 8002A2AC 000051A0 */  sb         $s1, 0x0($v0)
  .Lfunc_80029F10_8002A2B0:
    /* 1AAB0 8002A2B0 00004292 */  lbu        $v0, 0x0($s2)
    /* 1AAB4 8002A2B4 00000000 */  nop
    /* 1AAB8 8002A2B8 9CFF4010 */  beqz       $v0, .Lfunc_80029F10_8002A12C
    /* 1AABC 8002A2BC 00000000 */   nop
  .Lfunc_80029F10_8002A2C0:
    /* 1AAC0 8002A2C0 0780023C */  lui        $v0, %hi(D_8006D8D8)
    /* 1AAC4 8002A2C4 D8D84224 */  addiu      $v0, $v0, %lo(D_8006D8D8)
    /* 1AAC8 8002A2C8 00004290 */  lbu        $v0, 0x0($v0)
    /* 1AACC 8002A2CC 02000334 */  ori        $v1, $zero, 0x2
    /* 1AAD0 8002A2D0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1AAD4 8002A2D4 09004314 */  bne        $v0, $v1, .Lfunc_80029F10_8002A2FC
    /* 1AAD8 8002A2D8 2130E002 */   addu      $a2, $s7, $zero
    /* 1AADC 8002A2DC FF006332 */  andi       $v1, $s3, 0xFF
    /* 1AAE0 8002A2E0 0E000234 */  ori        $v0, $zero, 0xE
    /* 1AAE4 8002A2E4 05006214 */  bne        $v1, $v0, .Lfunc_80029F10_8002A2FC
    /* 1AAE8 8002A2E8 00000000 */   nop
    /* 1AAEC 8002A2EC 0000A292 */  lbu        $v0, 0x0($s5)
    /* 1AAF0 8002A2F0 00000000 */  nop
    /* 1AAF4 8002A2F4 0780013C */  lui        $at, %hi(D_8006D61C)
    /* 1AAF8 8002A2F8 1CD622A0 */  sb         $v0, %lo(D_8006D61C)($at)
  .Lfunc_80029F10_8002A2FC:
    /* 1AAFC 8002A2FC 0980043C */  lui        $a0, %hi(D_8008B3CC)
    /* 1AB00 8002A300 CCB38424 */  addiu      $a0, $a0, %lo(D_8008B3CC)
    /* 1AB04 8002A304 0900C010 */  beqz       $a2, .Lfunc_80029F10_8002A32C
    /* 1AB08 8002A308 00000000 */   nop
    /* 1AB0C 8002A30C 07000334 */  ori        $v1, $zero, 0x7
    /* 1AB10 8002A310 FFFF0524 */  addiu      $a1, $zero, -0x1
  .Lfunc_80029F10_8002A314:
    /* 1AB14 8002A314 00008290 */  lbu        $v0, 0x0($a0)
    /* 1AB18 8002A318 01008424 */  addiu      $a0, $a0, 0x1
    /* 1AB1C 8002A31C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 1AB20 8002A320 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 1AB24 8002A324 FBFF6514 */  bne        $v1, $a1, .Lfunc_80029F10_8002A314
    /* 1AB28 8002A328 0100C624 */   addiu     $a2, $a2, 0x1
  .Lfunc_80029F10_8002A32C:
    /* 1AB2C 8002A32C 0780023C */  lui        $v0, %hi(D_8006D8D8)
    /* 1AB30 8002A330 D8D84224 */  addiu      $v0, $v0, %lo(D_8006D8D8)
    /* 1AB34 8002A334 00004290 */  lbu        $v0, 0x0($v0)
    /* 1AB38 8002A338 00000000 */  nop
    /* 1AB3C 8002A33C 05004238 */  xori       $v0, $v0, 0x5
    /* 1AB40 8002A340 0100422C */  sltiu      $v0, $v0, 0x1
    /* 1AB44 8002A344 23100200 */  negu       $v0, $v0
  .Lfunc_80029F10_8002A348:
    /* 1AB48 8002A348 4800BF8F */  lw         $ra, 0x48($sp)
    /* 1AB4C 8002A34C 4400B78F */  lw         $s7, 0x44($sp)
    /* 1AB50 8002A350 4000B68F */  lw         $s6, 0x40($sp)
    /* 1AB54 8002A354 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 1AB58 8002A358 3800B48F */  lw         $s4, 0x38($sp)
    /* 1AB5C 8002A35C 3400B38F */  lw         $s3, 0x34($sp)
    /* 1AB60 8002A360 3000B28F */  lw         $s2, 0x30($sp)
    /* 1AB64 8002A364 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 1AB68 8002A368 2800B08F */  lw         $s0, 0x28($sp)
    /* 1AB6C 8002A36C 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 1AB70 8002A370 0800E003 */  jr         $ra
    /* 1AB74 8002A374 00000000 */   nop
endlabel CdCommand
