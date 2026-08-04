.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80040FC0, 0x60

glabel func_80040FC0
    /* 317C0 80040FC0 0000A290 */  lbu        $v0, 0x0($a1)
    /* 317C4 80040FC4 00000000 */  nop
    /* 317C8 80040FC8 12004010 */  beqz       $v0, .Lfunc_80040FC0_80041014
    /* 317CC 80040FCC 0100A524 */   addiu     $a1, $a1, 0x1
    /* 317D0 80040FD0 40000734 */  ori        $a3, $zero, 0x40
    /* 317D4 80040FD4 21308000 */  addu       $a2, $a0, $zero
  .Lfunc_80040FC0_80040FD8:
    /* 317D8 80040FD8 0100C624 */  addiu      $a2, $a2, 0x1
    /* 317DC 80040FDC 0000A390 */  lbu        $v1, 0x0($a1)
    /* 317E0 80040FE0 00000000 */  nop
    /* 317E4 80040FE4 8000622C */  sltiu      $v0, $v1, 0x80
    /* 317E8 80040FE8 03004010 */  beqz       $v0, .Lfunc_80040FC0_80040FF8
    /* 317EC 80040FEC 01008424 */   addiu     $a0, $a0, 0x1
    /* 317F0 80040FF0 02006714 */  bne        $v1, $a3, .Lfunc_80040FC0_80040FFC
    /* 317F4 80040FF4 E1FF6224 */   addiu     $v0, $v1, -0x1F
  .Lfunc_80040FC0_80040FF8:
    /* 317F8 80040FF8 E0FF6224 */  addiu      $v0, $v1, -0x20
  .Lfunc_80040FC0_80040FFC:
    /* 317FC 80040FFC 0100A524 */  addiu      $a1, $a1, 0x1
    /* 31800 80041000 FFFFC2A0 */  sb         $v0, -0x1($a2)
    /* 31804 80041004 0000A290 */  lbu        $v0, 0x0($a1)
    /* 31808 80041008 00000000 */  nop
    /* 3180C 8004100C F2FF4014 */  bnez       $v0, .Lfunc_80040FC0_80040FD8
    /* 31810 80041010 0100A524 */   addiu     $a1, $a1, 0x1
  .Lfunc_80040FC0_80041014:
    /* 31814 80041014 000080A0 */  sb         $zero, 0x0($a0)
    /* 31818 80041018 0800E003 */  jr         $ra
    /* 3181C 8004101C 21108000 */   addu      $v0, $a0, $zero
endlabel func_80040FC0
