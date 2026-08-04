.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndSeqOp_VoiceParam, 0xB0

glabel SndSeqOp_VoiceParam
    /* 2627C 80035A7C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 26280 80035A80 1800B2AF */  sw         $s2, 0x18($sp)
    /* 26284 80035A84 00940400 */  sll        $s2, $a0, 16
    /* 26288 80035A88 03941200 */  sra        $s2, $s2, 16
    /* 2628C 80035A8C 80101200 */  sll        $v0, $s2, 2
    /* 26290 80035A90 1400B1AF */  sw         $s1, 0x14($sp)
    /* 26294 80035A94 008C0500 */  sll        $s1, $a1, 16
    /* 26298 80035A98 038C1100 */  sra        $s1, $s1, 16
    /* 2629C 80035A9C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 262A0 80035AA0 40801100 */  sll        $s0, $s1, 1
    /* 262A4 80035AA4 21801102 */  addu       $s0, $s0, $s1
    /* 262A8 80035AA8 80801000 */  sll        $s0, $s0, 2
    /* 262AC 80035AAC 23801102 */  subu       $s0, $s0, $s1
    /* 262B0 80035AB0 80801000 */  sll        $s0, $s0, 2
    /* 262B4 80035AB4 23801102 */  subu       $s0, $s0, $s1
    /* 262B8 80035AB8 80801000 */  sll        $s0, $s0, 2
    /* 262BC 80035ABC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 262C0 80035AC0 0980013C */  lui        $at, %hi(gSoundBankTable)
    /* 262C4 80035AC4 E8022124 */  addiu      $at, $at, %lo(gSoundBankTable)
    /* 262C8 80035AC8 21082200 */  addu       $at, $at, $v0
    /* 262CC 80035ACC 0000228C */  lw         $v0, 0x0($at)
    /* 262D0 80035AD0 00221100 */  sll        $a0, $s1, 8
    /* 262D4 80035AD4 21800202 */  addu       $s0, $s0, $v0
    /* 262D8 80035AD8 0400038E */  lw         $v1, 0x4($s0)
    /* 262DC 80035ADC 4C000586 */  lh         $a1, 0x4C($s0)
    /* 262E0 80035AE0 01006224 */  addiu      $v0, $v1, 0x1
    /* 262E4 80035AE4 040002AE */  sw         $v0, 0x4($s0)
    /* 262E8 80035AE8 12000292 */  lbu        $v0, 0x12($s0)
    /* 262EC 80035AEC 00006790 */  lbu        $a3, 0x0($v1)
    /* 262F0 80035AF0 21105000 */  addu       $v0, $v0, $s0
    /* 262F4 80035AF4 2C004690 */  lbu        $a2, 0x2C($v0)
    /* 262F8 80035AF8 84BD000C */  jal        SndSetVoiceParamValidated
    /* 262FC 80035AFC 25209200 */   or        $a0, $a0, $s2
    /* 26300 80035B00 21204002 */  addu       $a0, $s2, $zero
    /* 26304 80035B04 A0D7000C */  jal        SndGetBankEntryField
    /* 26308 80035B08 21282002 */   addu      $a1, $s1, $zero
    /* 2630C 80035B0C 880002AE */  sw         $v0, 0x88($s0)
    /* 26310 80035B10 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 26314 80035B14 1800B28F */  lw         $s2, 0x18($sp)
    /* 26318 80035B18 1400B18F */  lw         $s1, 0x14($sp)
    /* 2631C 80035B1C 1000B08F */  lw         $s0, 0x10($sp)
    /* 26320 80035B20 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 26324 80035B24 0800E003 */  jr         $ra
    /* 26328 80035B28 00000000 */   nop
endlabel SndSeqOp_VoiceParam
