.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80034614, 0x7C

glabel func_80034614
    /* 24E14 80034614 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 24E18 80034618 00240400 */  sll        $a0, $a0, 16
    /* 24E1C 8003461C 03240400 */  sra        $a0, $a0, 16
    /* 24E20 80034620 80100400 */  sll        $v0, $a0, 2
    /* 24E24 80034624 002C0500 */  sll        $a1, $a1, 16
    /* 24E28 80034628 032C0500 */  sra        $a1, $a1, 16
    /* 24E2C 8003462C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 24E30 80034630 40800500 */  sll        $s0, $a1, 1
    /* 24E34 80034634 21800502 */  addu       $s0, $s0, $a1
    /* 24E38 80034638 80801000 */  sll        $s0, $s0, 2
    /* 24E3C 8003463C 23800502 */  subu       $s0, $s0, $a1
    /* 24E40 80034640 80801000 */  sll        $s0, $s0, 2
    /* 24E44 80034644 23800502 */  subu       $s0, $s0, $a1
    /* 24E48 80034648 1400BFAF */  sw         $ra, 0x14($sp)
    /* 24E4C 8003464C 0980013C */  lui        $at, %hi(gSoundBankTable)
    /* 24E50 80034650 E8022124 */  addiu      $at, $at, %lo(gSoundBankTable)
    /* 24E54 80034654 21082200 */  addu       $at, $at, $v0
    /* 24E58 80034658 0000228C */  lw         $v0, 0x0($at)
    /* 24E5C 8003465C 80801000 */  sll        $s0, $s0, 2
    /* 24E60 80034660 21800202 */  addu       $s0, $s0, $v0
    /* 24E64 80034664 12000292 */  lbu        $v0, 0x12($s0)
    /* 24E68 80034668 00000000 */  nop
    /* 24E6C 8003466C 21100202 */  addu       $v0, $s0, $v0
    /* 24E70 80034670 A0D7000C */  jal        SndGetBankEntryField
    /* 24E74 80034674 2C0046A0 */   sb        $a2, 0x2C($v0)
    /* 24E78 80034678 880002AE */  sw         $v0, 0x88($s0)
    /* 24E7C 8003467C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 24E80 80034680 1000B08F */  lw         $s0, 0x10($sp)
    /* 24E84 80034684 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 24E88 80034688 0800E003 */  jr         $ra
    /* 24E8C 8003468C 00000000 */   nop
endlabel func_80034614
