.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdReadSyncImpl, 0x2B8

glabel CdReadSyncImpl
    /* 1B6E0 8002AEE0 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1B6E4 8002AEE4 3000B6AF */  sw         $s6, 0x30($sp)
    /* 1B6E8 8002AEE8 21B08000 */  addu       $s6, $a0, $zero
    /* 1B6EC 8002AEEC 3400B7AF */  sw         $s7, 0x34($sp)
    /* 1B6F0 8002AEF0 21B8A000 */  addu       $s7, $a1, $zero
    /* 1B6F4 8002AEF4 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 1B6F8 8002AEF8 3800BFAF */  sw         $ra, 0x38($sp)
    /* 1B6FC 8002AEFC 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 1B700 8002AF00 2800B4AF */  sw         $s4, 0x28($sp)
    /* 1B704 8002AF04 2400B3AF */  sw         $s3, 0x24($sp)
    /* 1B708 8002AF08 2000B2AF */  sw         $s2, 0x20($sp)
    /* 1B70C 8002AF0C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1B710 8002AF10 4096000C */  jal        GetSystemTick
    /* 1B714 8002AF14 1800B0AF */   sw        $s0, 0x18($sp)
    /* 1B718 8002AF18 0780143C */  lui        $s4, %hi(gCdIntNames)
    /* 1B71C 8002AF1C A0D69426 */  addiu      $s4, $s4, %lo(gCdIntNames)
    /* 1B720 8002AF20 0780133C */  lui        $s3, %hi(D_8006D8D8)
    /* 1B724 8002AF24 D8D87326 */  addiu      $s3, $s3, %lo(D_8006D8D8)
    /* 1B728 8002AF28 01007526 */  addiu      $s5, $s3, 0x1
    /* 1B72C 8002AF2C 0780123C */  lui        $s2, %hi(D_8006D8F8)
    /* 1B730 8002AF30 F8D85226 */  addiu      $s2, $s2, %lo(D_8006D8F8)
    /* 1B734 8002AF34 E0014224 */  addiu      $v0, $v0, 0x1E0
    /* 1B738 8002AF38 0980013C */  lui        $at, %hi(D_8008B3E4)
    /* 1B73C 8002AF3C E4B322AC */  sw         $v0, %lo(D_8008B3E4)($at)
    /* 1B740 8002AF40 0180023C */  lui        $v0, %hi(D_80010AD8)
    /* 1B744 8002AF44 D80A4224 */  addiu      $v0, $v0, %lo(D_80010AD8)
    /* 1B748 8002AF48 0980013C */  lui        $at, %hi(D_8008B3E8)
    /* 1B74C 8002AF4C E8B320AC */  sw         $zero, %lo(D_8008B3E8)($at)
    /* 1B750 8002AF50 0980013C */  lui        $at, %hi(D_8008B3EC)
    /* 1B754 8002AF54 ECB322AC */  sw         $v0, %lo(D_8008B3EC)($at)
  .Lfunc_8002AEE0_8002AF58:
    /* 1B758 8002AF58 4096000C */  jal        GetSystemTick
    /* 1B75C 8002AF5C FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 1B760 8002AF60 0980033C */  lui        $v1, %hi(D_8008B3E4)
    /* 1B764 8002AF64 E4B3638C */  lw         $v1, %lo(D_8008B3E4)($v1)
    /* 1B768 8002AF68 00000000 */  nop
    /* 1B76C 8002AF6C 2A186200 */  slt        $v1, $v1, $v0
    /* 1B770 8002AF70 0B006014 */  bnez       $v1, .Lfunc_8002AEE0_8002AFA0
    /* 1B774 8002AF74 00000000 */   nop
    /* 1B778 8002AF78 0980033C */  lui        $v1, %hi(D_8008B3E8)
    /* 1B77C 8002AF7C E8B3638C */  lw         $v1, %lo(D_8008B3E8)($v1)
    /* 1B780 8002AF80 00000000 */  nop
    /* 1B784 8002AF84 01006224 */  addiu      $v0, $v1, 0x1
    /* 1B788 8002AF88 0980013C */  lui        $at, %hi(D_8008B3E8)
    /* 1B78C 8002AF8C E8B322AC */  sw         $v0, %lo(D_8008B3E8)($at)
    /* 1B790 8002AF90 1E00023C */  lui        $v0, (0x1E0000 >> 16)
    /* 1B794 8002AF94 2A104300 */  slt        $v0, $v0, $v1
    /* 1B798 8002AF98 1F004010 */  beqz       $v0, .Lfunc_8002AEE0_8002B018
    /* 1B79C 8002AF9C 00000000 */   nop
  .Lfunc_8002AEE0_8002AFA0:
    /* 1B7A0 8002AFA0 0180043C */  lui        $a0, %hi(D_80010984)
    /* 1B7A4 8002AFA4 84098424 */  addiu      $a0, $a0, %lo(D_80010984)
    /* 1B7A8 8002AFA8 B996000C */  jal        DebugPuts
    /* 1B7AC 8002AFAC 00000000 */   nop
    /* 1B7B0 8002AFB0 00006492 */  lbu        $a0, 0x0($s3)
    /* 1B7B4 8002AFB4 01006292 */  lbu        $v0, 0x1($s3)
    /* 1B7B8 8002AFB8 0980053C */  lui        $a1, %hi(D_8008B3EC)
    /* 1B7BC 8002AFBC ECB3A58C */  lw         $a1, %lo(D_8008B3EC)($a1)
    /* 1B7C0 8002AFC0 80100200 */  sll        $v0, $v0, 2
    /* 1B7C4 8002AFC4 21105400 */  addu       $v0, $v0, $s4
    /* 1B7C8 8002AFC8 80200400 */  sll        $a0, $a0, 2
    /* 1B7CC 8002AFCC 0000438C */  lw         $v1, 0x0($v0)
    /* 1B7D0 8002AFD0 0780023C */  lui        $v0, %hi(gCdLastCommand)
    /* 1B7D4 8002AFD4 1DD64290 */  lbu        $v0, %lo(gCdLastCommand)($v0)
    /* 1B7D8 8002AFD8 21209400 */  addu       $a0, $a0, $s4
    /* 1B7DC 8002AFDC 80100200 */  sll        $v0, $v0, 2
    /* 1B7E0 8002AFE0 1000A3AF */  sw         $v1, 0x10($sp)
    /* 1B7E4 8002AFE4 0780013C */  lui        $at, %hi(gCdCommandNames)
    /* 1B7E8 8002AFE8 20D62124 */  addiu      $at, $at, %lo(gCdCommandNames)
    /* 1B7EC 8002AFEC 21082200 */  addu       $at, $at, $v0
    /* 1B7F0 8002AFF0 0000268C */  lw         $a2, 0x0($at)
    /* 1B7F4 8002AFF4 0000878C */  lw         $a3, 0x0($a0)
    /* 1B7F8 8002AFF8 0180043C */  lui        $a0, %hi(D_80010994)
    /* 1B7FC 8002AFFC 94098424 */  addiu      $a0, $a0, %lo(D_80010994)
    /* 1B800 8002B000 084B000C */  jal        DebugPrintf
    /* 1B804 8002B004 00000000 */   nop
    /* 1B808 8002B008 44A9000C */  jal        CdAckInterruptImpl
    /* 1B80C 8002B00C 00000000 */   nop
    /* 1B810 8002B010 07AC0008 */  j          .Lfunc_8002AEE0_8002B01C
    /* 1B814 8002B014 FFFF0224 */   addiu     $v0, $zero, -0x1
  .Lfunc_8002AEE0_8002B018:
    /* 1B818 8002B018 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_8002AEE0_8002B01C:
    /* 1B81C 8002B01C 52004014 */  bnez       $v0, .Lfunc_8002AEE0_8002B168
    /* 1B820 8002B020 00000000 */   nop
    /* 1B824 8002B024 9993000C */  jal        WaitEvent
    /* 1B828 8002B028 00000000 */   nop
    /* 1B82C 8002B02C 2C004010 */  beqz       $v0, .Lfunc_8002AEE0_8002B0E0
    /* 1B830 8002B030 2120E002 */   addu      $a0, $s7, $zero
    /* 1B834 8002B034 0780023C */  lui        $v0, %hi(gpCdRegIndex)
    /* 1B838 8002B038 C0D8428C */  lw         $v0, %lo(gpCdRegIndex)($v0)
    /* 1B83C 8002B03C 00000000 */  nop
    /* 1B840 8002B040 00004290 */  lbu        $v0, 0x0($v0)
    /* 1B844 8002B044 00000000 */  nop
    /* 1B848 8002B048 03005130 */  andi       $s1, $v0, 0x3
  .Lfunc_8002AEE0_8002B04C:
    /* 1B84C 8002B04C 1EA5000C */  jal        CdInterruptHandler
    /* 1B850 8002B050 00000000 */   nop
    /* 1B854 8002B054 21804000 */  addu       $s0, $v0, $zero
    /* 1B858 8002B058 1C000012 */  beqz       $s0, .Lfunc_8002AEE0_8002B0CC
    /* 1B85C 8002B05C 04000232 */   andi      $v0, $s0, 0x4
    /* 1B860 8002B060 0C004010 */  beqz       $v0, .Lfunc_8002AEE0_8002B094
    /* 1B864 8002B064 02000232 */   andi      $v0, $s0, 0x2
    /* 1B868 8002B068 0780023C */  lui        $v0, %hi(D_8006D600)
    /* 1B86C 8002B06C 00D6428C */  lw         $v0, %lo(D_8006D600)($v0)
    /* 1B870 8002B070 00000000 */  nop
    /* 1B874 8002B074 06004010 */  beqz       $v0, .Lfunc_8002AEE0_8002B090
    /* 1B878 8002B078 00000000 */   nop
    /* 1B87C 8002B07C 0000A492 */  lbu        $a0, 0x0($s5)
    /* 1B880 8002B080 0980053C */  lui        $a1, %hi(D_8008B3D4)
    /* 1B884 8002B084 D4B3A524 */  addiu      $a1, $a1, %lo(D_8008B3D4)
    /* 1B888 8002B088 09F84000 */  jalr       $v0
    /* 1B88C 8002B08C 00000000 */   nop
  .Lfunc_8002AEE0_8002B090:
    /* 1B890 8002B090 02000232 */  andi       $v0, $s0, 0x2
  .Lfunc_8002AEE0_8002B094:
    /* 1B894 8002B094 EDFF4010 */  beqz       $v0, .Lfunc_8002AEE0_8002B04C
    /* 1B898 8002B098 00000000 */   nop
    /* 1B89C 8002B09C 0780023C */  lui        $v0, %hi(D_8006D5FC)
    /* 1B8A0 8002B0A0 FCD5428C */  lw         $v0, %lo(D_8006D5FC)($v0)
    /* 1B8A4 8002B0A4 00000000 */  nop
    /* 1B8A8 8002B0A8 E8FF4010 */  beqz       $v0, .Lfunc_8002AEE0_8002B04C
    /* 1B8AC 8002B0AC 00000000 */   nop
    /* 1B8B0 8002B0B0 00006492 */  lbu        $a0, 0x0($s3)
    /* 1B8B4 8002B0B4 0980053C */  lui        $a1, %hi(D_8008B3CC)
    /* 1B8B8 8002B0B8 CCB3A524 */  addiu      $a1, $a1, %lo(D_8008B3CC)
    /* 1B8BC 8002B0BC 09F84000 */  jalr       $v0
    /* 1B8C0 8002B0C0 00000000 */   nop
    /* 1B8C4 8002B0C4 13AC0008 */  j          .Lfunc_8002AEE0_8002B04C
    /* 1B8C8 8002B0C8 00000000 */   nop
  .Lfunc_8002AEE0_8002B0CC:
    /* 1B8CC 8002B0CC 0780023C */  lui        $v0, %hi(gpCdRegIndex)
    /* 1B8D0 8002B0D0 C0D8428C */  lw         $v0, %lo(gpCdRegIndex)($v0)
    /* 1B8D4 8002B0D4 00000000 */  nop
    /* 1B8D8 8002B0D8 000051A0 */  sb         $s1, 0x0($v0)
    /* 1B8DC 8002B0DC 2120E002 */  addu       $a0, $s7, $zero
  .Lfunc_8002AEE0_8002B0E0:
    /* 1B8E0 8002B0E0 0980053C */  lui        $a1, %hi(D_8008B3D4)
    /* 1B8E4 8002B0E4 D4B3A524 */  addiu      $a1, $a1, %lo(D_8008B3D4)
    /* 1B8E8 8002B0E8 08008010 */  beqz       $a0, .Lfunc_8002AEE0_8002B10C
    /* 1B8EC 8002B0EC 07000334 */   ori       $v1, $zero, 0x7
    /* 1B8F0 8002B0F0 FFFF0624 */  addiu      $a2, $zero, -0x1
  .Lfunc_8002AEE0_8002B0F4:
    /* 1B8F4 8002B0F4 0000A290 */  lbu        $v0, 0x0($a1)
    /* 1B8F8 8002B0F8 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1B8FC 8002B0FC FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 1B900 8002B100 000082A0 */  sb         $v0, 0x0($a0)
    /* 1B904 8002B104 FBFF6614 */  bne        $v1, $a2, .Lfunc_8002AEE0_8002B0F4
    /* 1B908 8002B108 01008424 */   addiu     $a0, $a0, 0x1
  .Lfunc_8002AEE0_8002B10C:
    /* 1B90C 8002B10C 4096000C */  jal        GetSystemTick
    /* 1B910 8002B110 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 1B914 8002B114 0000438E */  lw         $v1, 0x0($s2)
    /* 1B918 8002B118 00000000 */  nop
    /* 1B91C 8002B11C 3C006324 */  addiu      $v1, $v1, 0x3C
    /* 1B920 8002B120 2A186200 */  slt        $v1, $v1, $v0
    /* 1B924 8002B124 03006010 */  beqz       $v1, .Lfunc_8002AEE0_8002B134
    /* 1B928 8002B128 00000000 */   nop
    /* 1B92C 8002B12C 9BAA000C */  jal        CdRecover
    /* 1B930 8002B130 00000000 */   nop
  .Lfunc_8002AEE0_8002B134:
    /* 1B934 8002B134 FCFF428E */  lw         $v0, -0x4($s2)
    /* 1B938 8002B138 00000000 */  nop
    /* 1B93C 8002B13C 03004014 */  bnez       $v0, .Lfunc_8002AEE0_8002B14C
    /* 1B940 8002B140 00000000 */   nop
    /* 1B944 8002B144 66AC000C */  jal        CdReadyImpl
    /* 1B948 8002B148 21200000 */   addu      $a0, $zero, $zero
  .Lfunc_8002AEE0_8002B14C:
    /* 1B94C 8002B14C 0500C016 */  bnez       $s6, .Lfunc_8002AEE0_8002B164
    /* 1B950 8002B150 00000000 */   nop
    /* 1B954 8002B154 FCFF428E */  lw         $v0, -0x4($s2)
    /* 1B958 8002B158 00000000 */  nop
    /* 1B95C 8002B15C 7EFF401C */  bgtz       $v0, .Lfunc_8002AEE0_8002AF58
    /* 1B960 8002B160 00000000 */   nop
  .Lfunc_8002AEE0_8002B164:
    /* 1B964 8002B164 FCFF428E */  lw         $v0, -0x4($s2)
  .Lfunc_8002AEE0_8002B168:
    /* 1B968 8002B168 3800BF8F */  lw         $ra, 0x38($sp)
    /* 1B96C 8002B16C 3400B78F */  lw         $s7, 0x34($sp)
    /* 1B970 8002B170 3000B68F */  lw         $s6, 0x30($sp)
    /* 1B974 8002B174 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 1B978 8002B178 2800B48F */  lw         $s4, 0x28($sp)
    /* 1B97C 8002B17C 2400B38F */  lw         $s3, 0x24($sp)
    /* 1B980 8002B180 2000B28F */  lw         $s2, 0x20($sp)
    /* 1B984 8002B184 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 1B988 8002B188 1800B08F */  lw         $s0, 0x18($sp)
    /* 1B98C 8002B18C 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 1B990 8002B190 0800E003 */  jr         $ra
    /* 1B994 8002B194 00000000 */   nop
endlabel CdReadSyncImpl
