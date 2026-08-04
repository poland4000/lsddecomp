.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndSeqOp_ReverbOff, 0xCC

glabel SndSeqOp_ReverbOff
    /* 25590 80034D90 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 25594 80034D94 1800B2AF */  sw         $s2, 0x18($sp)
    /* 25598 80034D98 00940400 */  sll        $s2, $a0, 16
    /* 2559C 80034D9C 03941200 */  sra        $s2, $s2, 16
    /* 255A0 80034DA0 80101200 */  sll        $v0, $s2, 2
    /* 255A4 80034DA4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 255A8 80034DA8 008C0500 */  sll        $s1, $a1, 16
    /* 255AC 80034DAC 038C1100 */  sra        $s1, $s1, 16
    /* 255B0 80034DB0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 255B4 80034DB4 40801100 */  sll        $s0, $s1, 1
    /* 255B8 80034DB8 21801102 */  addu       $s0, $s0, $s1
    /* 255BC 80034DBC 80801000 */  sll        $s0, $s0, 2
    /* 255C0 80034DC0 23801102 */  subu       $s0, $s0, $s1
    /* 255C4 80034DC4 80801000 */  sll        $s0, $s0, 2
    /* 255C8 80034DC8 23801102 */  subu       $s0, $s0, $s1
    /* 255CC 80034DCC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 255D0 80034DD0 0980013C */  lui        $at, %hi(gSoundBankTable)
    /* 255D4 80034DD4 E8022124 */  addiu      $at, $at, %lo(gSoundBankTable)
    /* 255D8 80034DD8 21082200 */  addu       $at, $at, $v0
    /* 255DC 80034DDC 0000228C */  lw         $v0, 0x0($at)
    /* 255E0 80034DE0 80801000 */  sll        $s0, $s0, 2
    /* 255E4 80034DE4 11D8000C */  jal        SndReverbOff
    /* 255E8 80034DE8 21800202 */   addu      $s0, $s0, $v0
    /* 255EC 80034DEC 46D9000C */  jal        SndClearModeFlag
    /* 255F0 80034DF0 00000000 */   nop
    /* 255F4 80034DF4 21204002 */  addu       $a0, $s2, $zero
    /* 255F8 80034DF8 21282002 */  addu       $a1, $s1, $zero
    /* 255FC 80034DFC 12000292 */  lbu        $v0, 0x12($s0)
    /* 25600 80034E00 12000392 */  lbu        $v1, 0x12($s0)
    /* 25604 80034E04 21100202 */  addu       $v0, $s0, $v0
    /* 25608 80034E08 2C0043A0 */  sb         $v1, 0x2C($v0)
    /* 2560C 80034E0C 12000292 */  lbu        $v0, 0x12($s0)
    /* 25610 80034E10 7F000334 */  ori        $v1, $zero, 0x7F
    /* 25614 80034E14 130000A2 */  sb         $zero, 0x13($s0)
    /* 25618 80034E18 140000A2 */  sb         $zero, 0x14($s0)
    /* 2561C 80034E1C 40100200 */  sll        $v0, $v0, 1
    /* 25620 80034E20 21105000 */  addu       $v0, $v0, $s0
    /* 25624 80034E24 4E0043A4 */  sh         $v1, 0x4E($v0)
    /* 25628 80034E28 12000292 */  lbu        $v0, 0x12($s0)
    /* 2562C 80034E2C 40000334 */  ori        $v1, $zero, 0x40
    /* 25630 80034E30 21100202 */  addu       $v0, $s0, $v0
    /* 25634 80034E34 A0D7000C */  jal        SndGetBankEntryField
    /* 25638 80034E38 170043A0 */   sb        $v1, 0x17($v0)
    /* 2563C 80034E3C 880002AE */  sw         $v0, 0x88($s0)
    /* 25640 80034E40 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 25644 80034E44 1800B28F */  lw         $s2, 0x18($sp)
    /* 25648 80034E48 1400B18F */  lw         $s1, 0x14($sp)
    /* 2564C 80034E4C 1000B08F */  lw         $s0, 0x10($sp)
    /* 25650 80034E50 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 25654 80034E54 0800E003 */  jr         $ra
    /* 25658 80034E58 00000000 */   nop
endlabel SndSeqOp_ReverbOff
