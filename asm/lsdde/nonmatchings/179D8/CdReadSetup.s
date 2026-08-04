.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdReadSetup, 0xF8

glabel CdReadSetup
    /* 1B5E8 8002ADE8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1B5EC 8002ADEC 0780023C */  lui        $v0, %hi(D_8006D8EC)
    /* 1B5F0 8002ADF0 ECD84224 */  addiu      $v0, $v0, %lo(D_8006D8EC)
    /* 1B5F4 8002ADF4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1B5F8 8002ADF8 000046AC */  sw         $a2, 0x0($v0)
    /* 1B5FC 8002ADFC 0000428C */  lw         $v0, 0x0($v0)
    /* 1B600 8002AE00 00000000 */  nop
    /* 1B604 8002AE04 30004330 */  andi       $v1, $v0, 0x30
    /* 1B608 8002AE08 05006010 */  beqz       $v1, .Lfunc_8002ADE8_8002AE20
    /* 1B60C 8002AE0C 20000234 */   ori       $v0, $zero, 0x20
    /* 1B610 8002AE10 08006210 */  beq        $v1, $v0, .Lfunc_8002ADE8_8002AE34
    /* 1B614 8002AE14 49020234 */   ori       $v0, $zero, 0x249
    /* 1B618 8002AE18 91AB0008 */  j          .Lfunc_8002ADE8_8002AE44
    /* 1B61C 8002AE1C 46020234 */   ori       $v0, $zero, 0x246
  .Lfunc_8002ADE8_8002AE20:
    /* 1B620 8002AE20 00020234 */  ori        $v0, $zero, 0x200
    /* 1B624 8002AE24 0780013C */  lui        $at, %hi(D_8006D8F0)
    /* 1B628 8002AE28 F0D822AC */  sw         $v0, %lo(D_8006D8F0)($at)
    /* 1B62C 8002AE2C 94AB0008 */  j          .Lfunc_8002ADE8_8002AE50
    /* 1B630 8002AE30 00000000 */   nop
  .Lfunc_8002ADE8_8002AE34:
    /* 1B634 8002AE34 0780013C */  lui        $at, %hi(D_8006D8F0)
    /* 1B638 8002AE38 F0D822AC */  sw         $v0, %lo(D_8006D8F0)($at)
    /* 1B63C 8002AE3C 94AB0008 */  j          .Lfunc_8002ADE8_8002AE50
    /* 1B640 8002AE40 00000000 */   nop
  .Lfunc_8002ADE8_8002AE44:
    /* 1B644 8002AE44 0780033C */  lui        $v1, %hi(D_8006D8F0)
    /* 1B648 8002AE48 F0D86324 */  addiu      $v1, $v1, %lo(D_8006D8F0)
    /* 1B64C 8002AE4C 000062AC */  sw         $v0, 0x0($v1)
  .Lfunc_8002ADE8_8002AE50:
    /* 1B650 8002AE50 0780023C */  lui        $v0, %hi(D_8006D8E4)
    /* 1B654 8002AE54 E4D84224 */  addiu      $v0, $v0, %lo(D_8006D8E4)
    /* 1B658 8002AE58 000044AC */  sw         $a0, 0x0($v0)
    /* 1B65C 8002AE5C 0780043C */  lui        $a0, %hi(D_8006D5FC)
    /* 1B660 8002AE60 FCD5848C */  lw         $a0, %lo(D_8006D5FC)($a0)
    /* 1B664 8002AE64 0780013C */  lui        $at, %hi(D_8006D8E0)
    /* 1B668 8002AE68 E0D825AC */  sw         $a1, %lo(D_8006D8E0)($at)
    /* 1B66C 8002AE6C 0780053C */  lui        $a1, %hi(D_8006D600)
    /* 1B670 8002AE70 00D6A58C */  lw         $a1, %lo(D_8006D600)($a1)
    /* 1B674 8002AE74 0780033C */  lui        $v1, %hi(gCdStatus)
    /* 1B678 8002AE78 0CD6638C */  lw         $v1, %lo(gCdStatus)($v1)
    /* 1B67C 8002AE7C 08000234 */  ori        $v0, $zero, 0x8
    /* 1B680 8002AE80 0780013C */  lui        $at, %hi(D_8006D8DC)
    /* 1B684 8002AE84 DCD822AC */  sw         $v0, %lo(D_8006D8DC)($at)
    /* 1B688 8002AE88 E0006330 */  andi       $v1, $v1, 0xE0
    /* 1B68C 8002AE8C 0780013C */  lui        $at, %hi(D_8006D8FC)
    /* 1B690 8002AE90 FCD824AC */  sw         $a0, %lo(D_8006D8FC)($at)
    /* 1B694 8002AE94 0780013C */  lui        $at, %hi(D_8006D900)
    /* 1B698 8002AE98 00D925AC */  sw         $a1, %lo(D_8006D900)($at)
    /* 1B69C 8002AE9C 05006010 */  beqz       $v1, .Lfunc_8002ADE8_8002AEB4
    /* 1B6A0 8002AEA0 09000434 */   ori       $a0, $zero, 0x9
    /* 1B6A4 8002AEA4 21280000 */  addu       $a1, $zero, $zero
    /* 1B6A8 8002AEA8 21300000 */  addu       $a2, $zero, $zero
    /* 1B6AC 8002AEAC C4A7000C */  jal        CdCommand
    /* 1B6B0 8002AEB0 21380000 */   addu      $a3, $zero, $zero
  .Lfunc_8002ADE8_8002AEB4:
    /* 1B6B4 8002AEB4 21200000 */  addu       $a0, $zero, $zero
    /* 1B6B8 8002AEB8 6FA6000C */  jal        CdSyncImpl
    /* 1B6BC 8002AEBC 21280000 */   addu      $a1, $zero, $zero
    /* 1B6C0 8002AEC0 9BAA000C */  jal        CdRecover
    /* 1B6C4 8002AEC4 00000000 */   nop
    /* 1B6C8 8002AEC8 01004228 */  slti       $v0, $v0, 0x1
    /* 1B6CC 8002AECC 23100200 */  negu       $v0, $v0
    /* 1B6D0 8002AED0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1B6D4 8002AED4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1B6D8 8002AED8 0800E003 */  jr         $ra
    /* 1B6DC 8002AEDC 00000000 */   nop
endlabel CdReadSetup
