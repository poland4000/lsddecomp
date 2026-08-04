.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdControlF, 0x13C

glabel CdControlF
    /* 19738 80028F38 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1973C 80028F3C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 19740 80028F40 2188A000 */  addu       $s1, $a1, $zero
    /* 19744 80028F44 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 19748 80028F48 21988000 */  addu       $s3, $a0, $zero
    /* 1974C 80028F4C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 19750 80028F50 03001034 */  ori        $s0, $zero, 0x3
    /* 19754 80028F54 1800B2AF */  sw         $s2, 0x18($sp)
    /* 19758 80028F58 FF007232 */  andi       $s2, $s3, 0xFF
    /* 1975C 80028F5C 0780033C */  lui        $v1, %hi(D_8006D57C)
    /* 19760 80028F60 7CD56324 */  addiu      $v1, $v1, %lo(D_8006D57C)
    /* 19764 80028F64 2000B4AF */  sw         $s4, 0x20($sp)
    /* 19768 80028F68 0780143C */  lui        $s4, %hi(D_8006D5FC)
    /* 1976C 80028F6C FCD5948E */  lw         $s4, %lo(D_8006D5FC)($s4)
    /* 19770 80028F70 80101200 */  sll        $v0, $s2, 2
    /* 19774 80028F74 2400B5AF */  sw         $s5, 0x24($sp)
    /* 19778 80028F78 21A84300 */  addu       $s5, $v0, $v1
    /* 1977C 80028F7C 2800B6AF */  sw         $s6, 0x28($sp)
    /* 19780 80028F80 21B00000 */  addu       $s6, $zero, $zero
    /* 19784 80028F84 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 19788 80028F88 10000234 */  ori        $v0, $zero, 0x10
  .Lfunc_80028F38_80028F8C:
    /* 1978C 80028F8C 0B004216 */  bne        $s2, $v0, .Lfunc_80028F38_80028FBC
    /* 19790 80028F90 01000234 */   ori       $v0, $zero, 0x1
    /* 19794 80028F94 0780023C */  lui        $v0, %hi(gCdStatus)
    /* 19798 80028F98 0CD64290 */  lbu        $v0, %lo(gCdStatus)($v0)
    /* 1979C 80028F9C 00000000 */  nop
    /* 197A0 80028FA0 20004230 */  andi       $v0, $v0, 0x20
    /* 197A4 80028FA4 05004014 */  bnez       $v0, .Lfunc_80028F38_80028FBC
    /* 197A8 80028FA8 01000234 */   ori       $v0, $zero, 0x1
    /* 197AC 80028FAC 00A9000C */  jal        CdFlushCommand
    /* 197B0 80028FB0 FFFF1026 */   addiu     $s0, $s0, -0x1
    /* 197B4 80028FB4 0CA40008 */  j          .Lfunc_80028F38_80029030
    /* 197B8 80028FB8 FFFF0224 */   addiu     $v0, $zero, -0x1
  .Lfunc_80028F38_80028FBC:
    /* 197BC 80028FBC 14004212 */  beq        $s2, $v0, .Lfunc_80028F38_80029010
    /* 197C0 80028FC0 FF006432 */   andi      $a0, $s3, 0xFF
    /* 197C4 80028FC4 0780013C */  lui        $at, %hi(D_8006D5FC)
    /* 197C8 80028FC8 FCD520AC */  sw         $zero, %lo(D_8006D5FC)($at)
    /* 197CC 80028FCC 00A9000C */  jal        CdFlushCommand
    /* 197D0 80028FD0 00000000 */   nop
    /* 197D4 80028FD4 0B002012 */  beqz       $s1, .Lfunc_80028F38_80029004
    /* 197D8 80028FD8 00000000 */   nop
    /* 197DC 80028FDC 0000A28E */  lw         $v0, 0x0($s5)
    /* 197E0 80028FE0 00000000 */  nop
    /* 197E4 80028FE4 07004010 */  beqz       $v0, .Lfunc_80028F38_80029004
    /* 197E8 80028FE8 02000434 */   ori       $a0, $zero, 0x2
    /* 197EC 80028FEC 21282002 */  addu       $a1, $s1, $zero
    /* 197F0 80028FF0 21300000 */  addu       $a2, $zero, $zero
    /* 197F4 80028FF4 C4A7000C */  jal        CdCommand
    /* 197F8 80028FF8 21380000 */   addu      $a3, $zero, $zero
    /* 197FC 80028FFC 0A004014 */  bnez       $v0, .Lfunc_80028F38_80029028
    /* 19800 80029000 00000000 */   nop
  .Lfunc_80028F38_80029004:
    /* 19804 80029004 0780013C */  lui        $at, %hi(D_8006D5FC)
    /* 19808 80029008 FCD534AC */  sw         $s4, %lo(D_8006D5FC)($at)
    /* 1980C 8002900C FF006432 */  andi       $a0, $s3, 0xFF
  .Lfunc_80028F38_80029010:
    /* 19810 80029010 21282002 */  addu       $a1, $s1, $zero
    /* 19814 80029014 21300000 */  addu       $a2, $zero, $zero
    /* 19818 80029018 C4A7000C */  jal        CdCommand
    /* 1981C 8002901C 01000734 */   ori       $a3, $zero, 0x1
    /* 19820 80029020 09004010 */  beqz       $v0, .Lfunc_80028F38_80029048
    /* 19824 80029024 0100C226 */   addiu     $v0, $s6, 0x1
  .Lfunc_80028F38_80029028:
    /* 19828 80029028 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 1982C 8002902C FFFF0224 */  addiu      $v0, $zero, -0x1
  .Lfunc_80028F38_80029030:
    /* 19830 80029030 D6FF0216 */  bne        $s0, $v0, .Lfunc_80028F38_80028F8C
    /* 19834 80029034 10000234 */   ori       $v0, $zero, 0x10
    /* 19838 80029038 0780013C */  lui        $at, %hi(D_8006D5FC)
    /* 1983C 8002903C FCD534AC */  sw         $s4, %lo(D_8006D5FC)($at)
    /* 19840 80029040 FFFF1624 */  addiu      $s6, $zero, -0x1
    /* 19844 80029044 0100C226 */  addiu      $v0, $s6, 0x1
  .Lfunc_80028F38_80029048:
    /* 19848 80029048 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 1984C 8002904C 2800B68F */  lw         $s6, 0x28($sp)
    /* 19850 80029050 2400B58F */  lw         $s5, 0x24($sp)
    /* 19854 80029054 2000B48F */  lw         $s4, 0x20($sp)
    /* 19858 80029058 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1985C 8002905C 1800B28F */  lw         $s2, 0x18($sp)
    /* 19860 80029060 1400B18F */  lw         $s1, 0x14($sp)
    /* 19864 80029064 1000B08F */  lw         $s0, 0x10($sp)
    /* 19868 80029068 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1986C 8002906C 0800E003 */  jr         $ra
    /* 19870 80029070 00000000 */   nop
endlabel CdControlF
