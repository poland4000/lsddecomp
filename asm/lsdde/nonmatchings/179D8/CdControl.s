.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdControl, 0x148

glabel CdControl
    /* 195F0 80028DF0 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 195F4 80028DF4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 195F8 80028DF8 2188A000 */  addu       $s1, $a1, $zero
    /* 195FC 80028DFC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 19600 80028E00 2198C000 */  addu       $s3, $a2, $zero
    /* 19604 80028E04 2000B4AF */  sw         $s4, 0x20($sp)
    /* 19608 80028E08 21A08000 */  addu       $s4, $a0, $zero
    /* 1960C 80028E0C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 19610 80028E10 03001034 */  ori        $s0, $zero, 0x3
    /* 19614 80028E14 1800B2AF */  sw         $s2, 0x18($sp)
    /* 19618 80028E18 FF009232 */  andi       $s2, $s4, 0xFF
    /* 1961C 80028E1C 0780033C */  lui        $v1, %hi(D_8006D57C)
    /* 19620 80028E20 7CD56324 */  addiu      $v1, $v1, %lo(D_8006D57C)
    /* 19624 80028E24 2400B5AF */  sw         $s5, 0x24($sp)
    /* 19628 80028E28 0780153C */  lui        $s5, %hi(D_8006D5FC)
    /* 1962C 80028E2C FCD5B58E */  lw         $s5, %lo(D_8006D5FC)($s5)
    /* 19630 80028E30 80101200 */  sll        $v0, $s2, 2
    /* 19634 80028E34 2800B6AF */  sw         $s6, 0x28($sp)
    /* 19638 80028E38 21B04300 */  addu       $s6, $v0, $v1
    /* 1963C 80028E3C 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 19640 80028E40 21B80000 */  addu       $s7, $zero, $zero
    /* 19644 80028E44 3000BFAF */  sw         $ra, 0x30($sp)
    /* 19648 80028E48 10000234 */  ori        $v0, $zero, 0x10
  .Lfunc_80028DF0_80028E4C:
    /* 1964C 80028E4C 0B004216 */  bne        $s2, $v0, .Lfunc_80028DF0_80028E7C
    /* 19650 80028E50 01000234 */   ori       $v0, $zero, 0x1
    /* 19654 80028E54 0780023C */  lui        $v0, %hi(gCdStatus)
    /* 19658 80028E58 0CD64290 */  lbu        $v0, %lo(gCdStatus)($v0)
    /* 1965C 80028E5C 00000000 */  nop
    /* 19660 80028E60 20004230 */  andi       $v0, $v0, 0x20
    /* 19664 80028E64 05004014 */  bnez       $v0, .Lfunc_80028DF0_80028E7C
    /* 19668 80028E68 01000234 */   ori       $v0, $zero, 0x1
    /* 1966C 80028E6C 00A9000C */  jal        CdFlushCommand
    /* 19670 80028E70 FFFF1026 */   addiu     $s0, $s0, -0x1
    /* 19674 80028E74 BCA30008 */  j          .Lfunc_80028DF0_80028EF0
    /* 19678 80028E78 FFFF0224 */   addiu     $v0, $zero, -0x1
  .Lfunc_80028DF0_80028E7C:
    /* 1967C 80028E7C 14004212 */  beq        $s2, $v0, .Lfunc_80028DF0_80028ED0
    /* 19680 80028E80 FF008432 */   andi      $a0, $s4, 0xFF
    /* 19684 80028E84 0780013C */  lui        $at, %hi(D_8006D5FC)
    /* 19688 80028E88 FCD520AC */  sw         $zero, %lo(D_8006D5FC)($at)
    /* 1968C 80028E8C 00A9000C */  jal        CdFlushCommand
    /* 19690 80028E90 00000000 */   nop
    /* 19694 80028E94 0B002012 */  beqz       $s1, .Lfunc_80028DF0_80028EC4
    /* 19698 80028E98 00000000 */   nop
    /* 1969C 80028E9C 0000C28E */  lw         $v0, 0x0($s6)
    /* 196A0 80028EA0 00000000 */  nop
    /* 196A4 80028EA4 07004010 */  beqz       $v0, .Lfunc_80028DF0_80028EC4
    /* 196A8 80028EA8 02000434 */   ori       $a0, $zero, 0x2
    /* 196AC 80028EAC 21282002 */  addu       $a1, $s1, $zero
    /* 196B0 80028EB0 21306002 */  addu       $a2, $s3, $zero
    /* 196B4 80028EB4 C4A7000C */  jal        CdCommand
    /* 196B8 80028EB8 21380000 */   addu      $a3, $zero, $zero
    /* 196BC 80028EBC 0A004014 */  bnez       $v0, .Lfunc_80028DF0_80028EE8
    /* 196C0 80028EC0 00000000 */   nop
  .Lfunc_80028DF0_80028EC4:
    /* 196C4 80028EC4 0780013C */  lui        $at, %hi(D_8006D5FC)
    /* 196C8 80028EC8 FCD535AC */  sw         $s5, %lo(D_8006D5FC)($at)
    /* 196CC 80028ECC FF008432 */  andi       $a0, $s4, 0xFF
  .Lfunc_80028DF0_80028ED0:
    /* 196D0 80028ED0 21282002 */  addu       $a1, $s1, $zero
    /* 196D4 80028ED4 21306002 */  addu       $a2, $s3, $zero
    /* 196D8 80028ED8 C4A7000C */  jal        CdCommand
    /* 196DC 80028EDC 21380000 */   addu      $a3, $zero, $zero
    /* 196E0 80028EE0 09004010 */  beqz       $v0, .Lfunc_80028DF0_80028F08
    /* 196E4 80028EE4 0100E226 */   addiu     $v0, $s7, 0x1
  .Lfunc_80028DF0_80028EE8:
    /* 196E8 80028EE8 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 196EC 80028EEC FFFF0224 */  addiu      $v0, $zero, -0x1
  .Lfunc_80028DF0_80028EF0:
    /* 196F0 80028EF0 D6FF0216 */  bne        $s0, $v0, .Lfunc_80028DF0_80028E4C
    /* 196F4 80028EF4 10000234 */   ori       $v0, $zero, 0x10
    /* 196F8 80028EF8 0780013C */  lui        $at, %hi(D_8006D5FC)
    /* 196FC 80028EFC FCD535AC */  sw         $s5, %lo(D_8006D5FC)($at)
    /* 19700 80028F00 FFFF1724 */  addiu      $s7, $zero, -0x1
    /* 19704 80028F04 0100E226 */  addiu      $v0, $s7, 0x1
  .Lfunc_80028DF0_80028F08:
    /* 19708 80028F08 3000BF8F */  lw         $ra, 0x30($sp)
    /* 1970C 80028F0C 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 19710 80028F10 2800B68F */  lw         $s6, 0x28($sp)
    /* 19714 80028F14 2400B58F */  lw         $s5, 0x24($sp)
    /* 19718 80028F18 2000B48F */  lw         $s4, 0x20($sp)
    /* 1971C 80028F1C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 19720 80028F20 1800B28F */  lw         $s2, 0x18($sp)
    /* 19724 80028F24 1400B18F */  lw         $s1, 0x14($sp)
    /* 19728 80028F28 1000B08F */  lw         $s0, 0x10($sp)
    /* 1972C 80028F2C 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 19730 80028F30 0800E003 */  jr         $ra
    /* 19734 80028F34 00000000 */   nop
endlabel CdControl
