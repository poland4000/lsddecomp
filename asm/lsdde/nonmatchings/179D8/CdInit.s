.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdInit, 0x310

glabel CdInit
    /* 1AF5C 8002A75C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1AF60 8002A760 0180043C */  lui        $a0, %hi(D_80010A94)
    /* 1AF64 8002A764 940A8424 */  addiu      $a0, $a0, %lo(D_80010A94)
    /* 1AF68 8002A768 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1AF6C 8002A76C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1AF70 8002A770 B996000C */  jal        DebugPuts
    /* 1AF74 8002A774 1000B0AF */   sw        $s0, 0x10($sp)
    /* 1AF78 8002A778 0180043C */  lui        $a0, %hi(D_80010AA0)
    /* 1AF7C 8002A77C A00A8424 */  addiu      $a0, $a0, %lo(D_80010AA0)
    /* 1AF80 8002A780 0780053C */  lui        $a1, %hi(D_8006D90C)
    /* 1AF84 8002A784 0CD9A524 */  addiu      $a1, $a1, %lo(D_8006D90C)
    /* 1AF88 8002A788 084B000C */  jal        DebugPrintf
    /* 1AF8C 8002A78C 00000000 */   nop
    /* 1AF90 8002A790 0780033C */  lui        $v1, %hi(D_8006D8DC)
    /* 1AF94 8002A794 DCD86324 */  addiu      $v1, $v1, %lo(D_8006D8DC)
    /* 1AF98 8002A798 09000234 */  ori        $v0, $zero, 0x9
    /* 1AF9C 8002A79C FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 1AFA0 8002A7A0 0780013C */  lui        $at, %hi(gCdLastCommand)
    /* 1AFA4 8002A7A4 1DD620A0 */  sb         $zero, %lo(gCdLastCommand)($at)
    /* 1AFA8 8002A7A8 0780013C */  lui        $at, %hi(D_8006D61C)
    /* 1AFAC 8002A7AC 1CD620A0 */  sb         $zero, %lo(D_8006D61C)($at)
    /* 1AFB0 8002A7B0 0780013C */  lui        $at, %hi(D_8006D600)
    /* 1AFB4 8002A7B4 00D620AC */  sw         $zero, %lo(D_8006D600)($at)
    /* 1AFB8 8002A7B8 0780013C */  lui        $at, %hi(D_8006D5FC)
    /* 1AFBC 8002A7BC FCD520AC */  sw         $zero, %lo(D_8006D5FC)($at)
    /* 1AFC0 8002A7C0 0780013C */  lui        $at, %hi(D_8006D610)
    /* 1AFC4 8002A7C4 10D620AC */  sw         $zero, %lo(D_8006D610)($at)
    /* 1AFC8 8002A7C8 0780013C */  lui        $at, %hi(gCdStatus)
    /* 1AFCC 8002A7CC 0CD620AC */  sw         $zero, %lo(gCdStatus)($at)
  .Lfunc_8002A75C_8002A7D0:
    /* 1AFD0 8002A7D0 000060AC */  sw         $zero, 0x0($v1)
    /* 1AFD4 8002A7D4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1AFD8 8002A7D8 FDFF4414 */  bne        $v0, $a0, .Lfunc_8002A75C_8002A7D0
    /* 1AFDC 8002A7DC 04006324 */   addiu     $v1, $v1, 0x4
    /* 1AFE0 8002A7E0 4493000C */  jal        func_80024D10
    /* 1AFE4 8002A7E4 00000000 */   nop
    /* 1AFE8 8002A7E8 0380053C */  lui        $a1, %hi(CdDmaInterruptHandler)
    /* 1AFEC 8002A7EC F4B3A524 */  addiu      $a1, $a1, %lo(CdDmaInterruptHandler)
    /* 1AFF0 8002A7F0 5093000C */  jal        SetEventHandler
    /* 1AFF4 8002A7F4 02000434 */   ori       $a0, $zero, 0x2
    /* 1AFF8 8002A7F8 0780033C */  lui        $v1, %hi(gpCdRegIndex)
    /* 1AFFC 8002A7FC C0D8638C */  lw         $v1, %lo(gpCdRegIndex)($v1)
    /* 1B000 8002A800 01000234 */  ori        $v0, $zero, 0x1
    /* 1B004 8002A804 000062A0 */  sb         $v0, 0x0($v1)
    /* 1B008 8002A808 0780023C */  lui        $v0, %hi(gpCdRegStat)
    /* 1B00C 8002A80C CCD8428C */  lw         $v0, %lo(gpCdRegStat)($v0)
    /* 1B010 8002A810 00000000 */  nop
    /* 1B014 8002A814 00004290 */  lbu        $v0, 0x0($v0)
    /* 1B018 8002A818 00000000 */  nop
    /* 1B01C 8002A81C 07004230 */  andi       $v0, $v0, 0x7
    /* 1B020 8002A820 16004010 */  beqz       $v0, .Lfunc_8002A75C_8002A87C
    /* 1B024 8002A824 01000434 */   ori       $a0, $zero, 0x1
    /* 1B028 8002A828 07000334 */  ori        $v1, $zero, 0x7
  .Lfunc_8002A75C_8002A82C:
    /* 1B02C 8002A82C 0780023C */  lui        $v0, %hi(gpCdRegIndex)
    /* 1B030 8002A830 C0D8428C */  lw         $v0, %lo(gpCdRegIndex)($v0)
    /* 1B034 8002A834 00000000 */  nop
    /* 1B038 8002A838 000044A0 */  sb         $a0, 0x0($v0)
    /* 1B03C 8002A83C 0780023C */  lui        $v0, %hi(gpCdRegStat)
    /* 1B040 8002A840 CCD8428C */  lw         $v0, %lo(gpCdRegStat)($v0)
    /* 1B044 8002A844 00000000 */  nop
    /* 1B048 8002A848 000043A0 */  sb         $v1, 0x0($v0)
    /* 1B04C 8002A84C 0780023C */  lui        $v0, %hi(gpCdRegAck)
    /* 1B050 8002A850 C8D8428C */  lw         $v0, %lo(gpCdRegAck)($v0)
    /* 1B054 8002A854 00000000 */  nop
    /* 1B058 8002A858 000043A0 */  sb         $v1, 0x0($v0)
    /* 1B05C 8002A85C 0780023C */  lui        $v0, %hi(gpCdRegStat)
    /* 1B060 8002A860 CCD8428C */  lw         $v0, %lo(gpCdRegStat)($v0)
    /* 1B064 8002A864 00000000 */  nop
    /* 1B068 8002A868 00004290 */  lbu        $v0, 0x0($v0)
    /* 1B06C 8002A86C 00000000 */  nop
    /* 1B070 8002A870 07004230 */  andi       $v0, $v0, 0x7
    /* 1B074 8002A874 EDFF4014 */  bnez       $v0, .Lfunc_8002A75C_8002A82C
    /* 1B078 8002A878 00000000 */   nop
  .Lfunc_8002A75C_8002A87C:
    /* 1B07C 8002A87C 01000434 */  ori        $a0, $zero, 0x1
    /* 1B080 8002A880 21280000 */  addu       $a1, $zero, $zero
    /* 1B084 8002A884 21300000 */  addu       $a2, $zero, $zero
    /* 1B088 8002A888 0780013C */  lui        $at, %hi(D_8006D8DA)
    /* 1B08C 8002A88C DAD820A0 */  sb         $zero, %lo(D_8006D8DA)($at)
    /* 1B090 8002A890 0780033C */  lui        $v1, %hi(D_8006D8DA)
    /* 1B094 8002A894 DAD86390 */  lbu        $v1, %lo(D_8006D8DA)($v1)
    /* 1B098 8002A898 0780023C */  lui        $v0, %hi(D_8006D8D9)
    /* 1B09C 8002A89C D9D84224 */  addiu      $v0, $v0, %lo(D_8006D8D9)
    /* 1B0A0 8002A8A0 0780013C */  lui        $at, %hi(D_8006D61C)
    /* 1B0A4 8002A8A4 1CD620A0 */  sb         $zero, %lo(D_8006D61C)($at)
    /* 1B0A8 8002A8A8 000043A0 */  sb         $v1, 0x0($v0)
    /* 1B0AC 8002A8AC 0780033C */  lui        $v1, %hi(gpCdRegIndex)
    /* 1B0B0 8002A8B0 C0D8638C */  lw         $v1, %lo(gpCdRegIndex)($v1)
    /* 1B0B4 8002A8B4 02000234 */  ori        $v0, $zero, 0x2
    /* 1B0B8 8002A8B8 0780013C */  lui        $at, %hi(D_8006D8D8)
    /* 1B0BC 8002A8BC D8D822A0 */  sb         $v0, %lo(D_8006D8D8)($at)
    /* 1B0C0 8002A8C0 000060A0 */  sb         $zero, 0x0($v1)
    /* 1B0C4 8002A8C4 0780023C */  lui        $v0, %hi(gpCdRegStat)
    /* 1B0C8 8002A8C8 CCD8428C */  lw         $v0, %lo(gpCdRegStat)($v0)
    /* 1B0CC 8002A8CC 21380000 */  addu       $a3, $zero, $zero
    /* 1B0D0 8002A8D0 000040A0 */  sb         $zero, 0x0($v0)
    /* 1B0D4 8002A8D4 0780033C */  lui        $v1, %hi(D_8006D8D0)
    /* 1B0D8 8002A8D8 D0D8638C */  lw         $v1, %lo(D_8006D8D0)($v1)
    /* 1B0DC 8002A8DC 25130234 */  ori        $v0, $zero, 0x1325
    /* 1B0E0 8002A8E0 000062AC */  sw         $v0, 0x0($v1)
    /* 1B0E4 8002A8E4 C4A7000C */  jal        CdCommand
    /* 1B0E8 8002A8E8 00000000 */   nop
    /* 1B0EC 8002A8EC 0780023C */  lui        $v0, %hi(gCdStatus)
    /* 1B0F0 8002A8F0 0CD6428C */  lw         $v0, %lo(gCdStatus)($v0)
    /* 1B0F4 8002A8F4 00000000 */  nop
    /* 1B0F8 8002A8F8 10004230 */  andi       $v0, $v0, 0x10
    /* 1B0FC 8002A8FC 06004010 */  beqz       $v0, .Lfunc_8002A75C_8002A918
    /* 1B100 8002A900 21800000 */   addu      $s0, $zero, $zero
    /* 1B104 8002A904 01000434 */  ori        $a0, $zero, 0x1
    /* 1B108 8002A908 21280000 */  addu       $a1, $zero, $zero
    /* 1B10C 8002A90C 21300000 */  addu       $a2, $zero, $zero
    /* 1B110 8002A910 C4A7000C */  jal        CdCommand
    /* 1B114 8002A914 21380000 */   addu      $a3, $zero, $zero
  .Lfunc_8002A75C_8002A918:
    /* 1B118 8002A918 0780023C */  lui        $v0, %hi(D_8006D904)
    /* 1B11C 8002A91C 04D9428C */  lw         $v0, %lo(D_8006D904)($v0)
    /* 1B120 8002A920 0780033C */  lui        $v1, %hi(D_8006D614)
    /* 1B124 8002A924 14D6638C */  lw         $v1, %lo(D_8006D614)($v1)
    /* 1B128 8002A928 00000000 */  nop
    /* 1B12C 8002A92C 2A104300 */  slt        $v0, $v0, $v1
    /* 1B130 8002A930 35004010 */  beqz       $v0, .Lfunc_8002A75C_8002AA08
    /* 1B134 8002A934 0A000434 */   ori       $a0, $zero, 0xA
    /* 1B138 8002A938 0780113C */  lui        $s1, %hi(D_8006D5FC)
    /* 1B13C 8002A93C FCD5318E */  lw         $s1, %lo(D_8006D5FC)($s1)
    /* 1B140 8002A940 0780023C */  lui        $v0, %hi(gCdStatus)
    /* 1B144 8002A944 0CD6428C */  lw         $v0, %lo(gCdStatus)($v0)
    /* 1B148 8002A948 0780013C */  lui        $at, %hi(D_8006D5FC)
    /* 1B14C 8002A94C FCD520AC */  sw         $zero, %lo(D_8006D5FC)($at)
    /* 1B150 8002A950 10004230 */  andi       $v0, $v0, 0x10
    /* 1B154 8002A954 14004010 */  beqz       $v0, .Lfunc_8002A75C_8002A9A8
    /* 1B158 8002A958 16000434 */   ori       $a0, $zero, 0x16
    /* 1B15C 8002A95C FF000232 */  andi       $v0, $s0, 0xFF
  .Lfunc_8002A75C_8002A960:
    /* 1B160 8002A960 05004014 */  bnez       $v0, .Lfunc_8002A75C_8002A978
    /* 1B164 8002A964 01001026 */   addiu     $s0, $s0, 0x1
    /* 1B168 8002A968 0180043C */  lui        $a0, %hi(D_80010A40)
    /* 1B16C 8002A96C 400A8424 */  addiu      $a0, $a0, %lo(D_80010A40)
    /* 1B170 8002A970 B996000C */  jal        DebugPuts
    /* 1B174 8002A974 00000000 */   nop
  .Lfunc_8002A75C_8002A978:
    /* 1B178 8002A978 01000434 */  ori        $a0, $zero, 0x1
    /* 1B17C 8002A97C 21280000 */  addu       $a1, $zero, $zero
    /* 1B180 8002A980 21300000 */  addu       $a2, $zero, $zero
    /* 1B184 8002A984 C4A7000C */  jal        CdCommand
    /* 1B188 8002A988 21380000 */   addu      $a3, $zero, $zero
    /* 1B18C 8002A98C 0780023C */  lui        $v0, %hi(gCdStatus)
    /* 1B190 8002A990 0CD6428C */  lw         $v0, %lo(gCdStatus)($v0)
    /* 1B194 8002A994 00000000 */  nop
    /* 1B198 8002A998 10004230 */  andi       $v0, $v0, 0x10
    /* 1B19C 8002A99C F0FF4014 */  bnez       $v0, .Lfunc_8002A75C_8002A960
    /* 1B1A0 8002A9A0 FF000232 */   andi      $v0, $s0, 0xFF
    /* 1B1A4 8002A9A4 16000434 */  ori        $a0, $zero, 0x16
  .Lfunc_8002A75C_8002A9A8:
    /* 1B1A8 8002A9A8 0780053C */  lui        $a1, %hi(D_8006D908)
    /* 1B1AC 8002A9AC 08D9A524 */  addiu      $a1, $a1, %lo(D_8006D908)
    /* 1B1B0 8002A9B0 21300000 */  addu       $a2, $zero, $zero
    /* 1B1B4 8002A9B4 C4A7000C */  jal        CdCommand
    /* 1B1B8 8002A9B8 21380000 */   addu      $a3, $zero, $zero
    /* 1B1BC 8002A9BC 0B004010 */  beqz       $v0, .Lfunc_8002A75C_8002A9EC
    /* 1B1C0 8002A9C0 01000434 */   ori       $a0, $zero, 0x1
    /* 1B1C4 8002A9C4 21280000 */  addu       $a1, $zero, $zero
    /* 1B1C8 8002A9C8 21300000 */  addu       $a2, $zero, $zero
    /* 1B1CC 8002A9CC C4A7000C */  jal        CdCommand
    /* 1B1D0 8002A9D0 21380000 */   addu      $a3, $zero, $zero
    /* 1B1D4 8002A9D4 0180043C */  lui        $a0, %hi(D_80010A50)
    /* 1B1D8 8002A9D8 500A8424 */  addiu      $a0, $a0, %lo(D_80010A50)
    /* 1B1DC 8002A9DC B996000C */  jal        DebugPuts
    /* 1B1E0 8002A9E0 00000000 */   nop
    /* 1B1E4 8002A9E4 6AAA0008 */  j          .Lfunc_8002A75C_8002A9A8
    /* 1B1E8 8002A9E8 16000434 */   ori       $a0, $zero, 0x16
  .Lfunc_8002A75C_8002A9EC:
    /* 1B1EC 8002A9EC 0780023C */  lui        $v0, %hi(D_8006D614)
    /* 1B1F0 8002A9F0 14D6428C */  lw         $v0, %lo(D_8006D614)($v0)
    /* 1B1F4 8002A9F4 0780013C */  lui        $at, %hi(D_8006D5FC)
    /* 1B1F8 8002A9F8 FCD531AC */  sw         $s1, %lo(D_8006D5FC)($at)
    /* 1B1FC 8002A9FC 0780013C */  lui        $at, %hi(D_8006D904)
    /* 1B200 8002AA00 04D922AC */  sw         $v0, %lo(D_8006D904)($at)
    /* 1B204 8002AA04 0A000434 */  ori        $a0, $zero, 0xA
  .Lfunc_8002A75C_8002AA08:
    /* 1B208 8002AA08 21280000 */  addu       $a1, $zero, $zero
    /* 1B20C 8002AA0C 21300000 */  addu       $a2, $zero, $zero
    /* 1B210 8002AA10 C4A7000C */  jal        CdCommand
    /* 1B214 8002AA14 21380000 */   addu      $a3, $zero, $zero
    /* 1B218 8002AA18 0E004014 */  bnez       $v0, .Lfunc_8002A75C_8002AA54
    /* 1B21C 8002AA1C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 1B220 8002AA20 0C000434 */  ori        $a0, $zero, 0xC
    /* 1B224 8002AA24 21280000 */  addu       $a1, $zero, $zero
    /* 1B228 8002AA28 21300000 */  addu       $a2, $zero, $zero
    /* 1B22C 8002AA2C C4A7000C */  jal        CdCommand
    /* 1B230 8002AA30 21380000 */   addu      $a3, $zero, $zero
    /* 1B234 8002AA34 07004014 */  bnez       $v0, .Lfunc_8002A75C_8002AA54
    /* 1B238 8002AA38 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 1B23C 8002AA3C 21200000 */  addu       $a0, $zero, $zero
    /* 1B240 8002AA40 6FA6000C */  jal        CdSyncImpl
    /* 1B244 8002AA44 21280000 */   addu      $a1, $zero, $zero
    /* 1B248 8002AA48 02004238 */  xori       $v0, $v0, 0x2
    /* 1B24C 8002AA4C 2B100200 */  sltu       $v0, $zero, $v0
    /* 1B250 8002AA50 23100200 */  negu       $v0, $v0
  .Lfunc_8002A75C_8002AA54:
    /* 1B254 8002AA54 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1B258 8002AA58 1400B18F */  lw         $s1, 0x14($sp)
    /* 1B25C 8002AA5C 1000B08F */  lw         $s0, 0x10($sp)
    /* 1B260 8002AA60 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1B264 8002AA64 0800E003 */  jr         $ra
    /* 1B268 8002AA68 00000000 */   nop
endlabel CdInit
