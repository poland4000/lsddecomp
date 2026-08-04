.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndGetBankEntryField, 0xBC

glabel SndGetBankEntryField
    /* 26680 80035E80 00240400 */  sll        $a0, $a0, 16
    /* 26684 80035E84 83230400 */  sra        $a0, $a0, 14
    /* 26688 80035E88 002C0500 */  sll        $a1, $a1, 16
    /* 2668C 80035E8C 032C0500 */  sra        $a1, $a1, 16
    /* 26690 80035E90 40100500 */  sll        $v0, $a1, 1
    /* 26694 80035E94 21104500 */  addu       $v0, $v0, $a1
    /* 26698 80035E98 80100200 */  sll        $v0, $v0, 2
    /* 2669C 80035E9C 23104500 */  subu       $v0, $v0, $a1
    /* 266A0 80035EA0 80100200 */  sll        $v0, $v0, 2
    /* 266A4 80035EA4 23104500 */  subu       $v0, $v0, $a1
    /* 266A8 80035EA8 0980013C */  lui        $at, %hi(gSoundBankTable)
    /* 266AC 80035EAC E8022124 */  addiu      $at, $at, %lo(gSoundBankTable)
    /* 266B0 80035EB0 21082400 */  addu       $at, $at, $a0
    /* 266B4 80035EB4 0000238C */  lw         $v1, 0x0($at)
    /* 266B8 80035EB8 80100200 */  sll        $v0, $v0, 2
    /* 266BC 80035EBC 21284300 */  addu       $a1, $v0, $v1
    /* 266C0 80035EC0 0400A38C */  lw         $v1, 0x4($a1)
    /* 266C4 80035EC4 00000000 */  nop
    /* 266C8 80035EC8 01006224 */  addiu      $v0, $v1, 0x1
    /* 266CC 80035ECC 0400A2AC */  sw         $v0, 0x4($a1)
    /* 266D0 80035ED0 00006490 */  lbu        $a0, 0x0($v1)
    /* 266D4 80035ED4 00000000 */  nop
    /* 266D8 80035ED8 03008014 */  bnez       $a0, .Lfunc_80035E80_80035EE8
    /* 266DC 80035EDC 80008230 */   andi      $v0, $a0, 0x80
    /* 266E0 80035EE0 CDD70008 */  j          .Lfunc_80035E80_80035F34
    /* 266E4 80035EE4 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_80035E80_80035EE8:
    /* 266E8 80035EE8 0D004010 */  beqz       $v0, .Lfunc_80035E80_80035F20
    /* 266EC 80035EEC 80100400 */   sll       $v0, $a0, 2
    /* 266F0 80035EF0 7F008430 */  andi       $a0, $a0, 0x7F
  .Lfunc_80035E80_80035EF4:
    /* 266F4 80035EF4 0400A38C */  lw         $v1, 0x4($a1)
    /* 266F8 80035EF8 00000000 */  nop
    /* 266FC 80035EFC 01006224 */  addiu      $v0, $v1, 0x1
    /* 26700 80035F00 0400A2AC */  sw         $v0, 0x4($a1)
    /* 26704 80035F04 00006390 */  lbu        $v1, 0x0($v1)
    /* 26708 80035F08 C0210400 */  sll        $a0, $a0, 7
    /* 2670C 80035F0C 7F006230 */  andi       $v0, $v1, 0x7F
    /* 26710 80035F10 80006330 */  andi       $v1, $v1, 0x80
    /* 26714 80035F14 F7FF6014 */  bnez       $v1, .Lfunc_80035E80_80035EF4
    /* 26718 80035F18 21208200 */   addu      $a0, $a0, $v0
    /* 2671C 80035F1C 80100400 */  sll        $v0, $a0, 2
  .Lfunc_80035E80_80035F20:
    /* 26720 80035F20 21104400 */  addu       $v0, $v0, $a0
    /* 26724 80035F24 8000A38C */  lw         $v1, 0x80($a1)
    /* 26728 80035F28 40100200 */  sll        $v0, $v0, 1
    /* 2672C 80035F2C 21184300 */  addu       $v1, $v0, $v1
    /* 26730 80035F30 8000A3AC */  sw         $v1, 0x80($a1)
  .Lfunc_80035E80_80035F34:
    /* 26734 80035F34 0800E003 */  jr         $ra
    /* 26738 80035F38 00000000 */   nop
endlabel SndGetBankEntryField
