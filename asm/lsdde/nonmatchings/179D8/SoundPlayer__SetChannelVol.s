.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SoundPlayer__SetChannelVol, 0xDC

glabel SoundPlayer__SetChannelVol
    /* 1D23C 8002CA3C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1D240 8002CA40 21408000 */  addu       $t0, $a0, $zero
    /* 1D244 8002CA44 2120A000 */  addu       $a0, $a1, $zero
    /* 1D248 8002CA48 2148C000 */  addu       $t1, $a2, $zero
    /* 1D24C 8002CA4C 2800B2AF */  sw         $s2, 0x28($sp)
    /* 1D250 8002CA50 2190E000 */  addu       $s2, $a3, $zero
    /* 1D254 8002CA54 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 1D258 8002CA58 2400B1AF */  sw         $s1, 0x24($sp)
    /* 1D25C 8002CA5C 26008004 */  bltz       $a0, .Lfunc_8002CA3C_8002CAF8
    /* 1D260 8002CA60 2000B0AF */   sw        $s0, 0x20($sp)
    /* 1D264 8002CA64 03110400 */  sra        $v0, $a0, 4
    /* 1D268 8002CA68 002C0200 */  sll        $a1, $v0, 16
    /* 1D26C 8002CA6C 032C0500 */  sra        $a1, $a1, 16
    /* 1D270 8002CA70 00190200 */  sll        $v1, $v0, 4
    /* 1D274 8002CA74 23188300 */  subu       $v1, $a0, $v1
    /* 1D278 8002CA78 00340300 */  sll        $a2, $v1, 16
    /* 1D27C 8002CA7C 03340600 */  sra        $a2, $a2, 16
    /* 1D280 8002CA80 80100200 */  sll        $v0, $v0, 2
    /* 1D284 8002CA84 40190300 */  sll        $v1, $v1, 5
    /* 1D288 8002CA88 5000078D */  lw         $a3, 0x50($t0)
    /* 1D28C 8002CA8C 54000485 */  lh         $a0, 0x54($t0)
    /* 1D290 8002CA90 21104700 */  addu       $v0, $v0, $a3
    /* 1D294 8002CA94 0000428C */  lw         $v0, 0x0($v0)
    /* 1D298 8002CA98 60000895 */  lhu        $t0, 0x60($t0)
    /* 1D29C 8002CA9C 21104300 */  addu       $v0, $v0, $v1
    /* 1D2A0 8002CAA0 001C0900 */  sll        $v1, $t1, 16
    /* 1D2A4 8002CAA4 04004790 */  lbu        $a3, 0x4($v0)
    /* 1D2A8 8002CAA8 05004290 */  lbu        $v0, 0x5($v0)
    /* 1D2AC 8002CAAC 038C0300 */  sra        $s1, $v1, 16
    /* 1D2B0 8002CAB0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1D2B4 8002CAB4 1800B1AF */  sw         $s1, 0x18($sp)
    /* 1D2B8 8002CAB8 2138E800 */  addu       $a3, $a3, $t0
    /* 1D2BC 8002CABC 003C0700 */  sll        $a3, $a3, 16
    /* 1D2C0 8002CAC0 033C0700 */  sra        $a3, $a3, 16
    /* 1D2C4 8002CAC4 A4C3000C */  jal        SndStartChannel
    /* 1D2C8 8002CAC8 1000A2AF */   sw        $v0, 0x10($sp)
    /* 1D2CC 8002CACC 00140200 */  sll        $v0, $v0, 16
    /* 1D2D0 8002CAD0 03840200 */  sra        $s0, $v0, 16
    /* 1D2D4 8002CAD4 08000006 */  bltz       $s0, .Lfunc_8002CA3C_8002CAF8
    /* 1D2D8 8002CAD8 21200002 */   addu      $a0, $s0, $zero
    /* 1D2DC 8002CADC 21282002 */  addu       $a1, $s1, $zero
    /* 1D2E0 8002CAE0 00341200 */  sll        $a2, $s2, 16
    /* 1D2E4 8002CAE4 03340600 */  sra        $a2, $a2, 16
    /* 1D2E8 8002CAE8 A5C7000C */  jal        SndSetVoiceVolEnv
    /* 1D2EC 8002CAEC 02000734 */   ori       $a3, $zero, 0x2
    /* 1D2F0 8002CAF0 BFB20008 */  j          .Lfunc_8002CA3C_8002CAFC
    /* 1D2F4 8002CAF4 21100002 */   addu      $v0, $s0, $zero
  .Lfunc_8002CA3C_8002CAF8:
    /* 1D2F8 8002CAF8 FFFF0224 */  addiu      $v0, $zero, -0x1
  .Lfunc_8002CA3C_8002CAFC:
    /* 1D2FC 8002CAFC 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 1D300 8002CB00 2800B28F */  lw         $s2, 0x28($sp)
    /* 1D304 8002CB04 2400B18F */  lw         $s1, 0x24($sp)
    /* 1D308 8002CB08 2000B08F */  lw         $s0, 0x20($sp)
    /* 1D30C 8002CB0C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1D310 8002CB10 0800E003 */  jr         $ra
    /* 1D314 8002CB14 00000000 */   nop
endlabel SoundPlayer__SetChannelVol
