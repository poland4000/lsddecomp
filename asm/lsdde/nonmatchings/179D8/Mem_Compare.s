.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching Mem_Compare, 0x80

glabel Mem_Compare
    /* 1C8AC 8002C0AC 03008010 */  beqz       $a0, .Lfunc_8002C0AC_8002C0BC
    /* 1C8B0 8002C0B0 00000000 */   nop
    /* 1C8B4 8002C0B4 0700A014 */  bnez       $a1, .Lfunc_8002C0AC_8002C0D4
    /* 1C8B8 8002C0B8 00000000 */   nop
  .Lfunc_8002C0AC_8002C0BC:
    /* 1C8BC 8002C0BC 18008510 */  beq        $a0, $a1, .Lfunc_8002C0AC_8002C120
    /* 1C8C0 8002C0C0 00000000 */   nop
    /* 1C8C4 8002C0C4 17008014 */  bnez       $a0, .Lfunc_8002C0AC_8002C124
    /* 1C8C8 8002C0C8 01000234 */   ori       $v0, $zero, 0x1
    /* 1C8CC 8002C0CC 49B00008 */  j          .Lfunc_8002C0AC_8002C124
    /* 1C8D0 8002C0D0 FFFF0224 */   addiu     $v0, $zero, -0x1
  .Lfunc_8002C0AC_8002C0D4:
    /* 1C8D4 8002C0D4 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 1C8D8 8002C0D8 1200C004 */  bltz       $a2, .Lfunc_8002C0AC_8002C124
    /* 1C8DC 8002C0DC 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_8002C0AC_8002C0E0:
    /* 1C8E0 8002C0E0 00008390 */  lbu        $v1, 0x0($a0)
    /* 1C8E4 8002C0E4 0000A290 */  lbu        $v0, 0x0($a1)
    /* 1C8E8 8002C0E8 00000000 */  nop
    /* 1C8EC 8002C0EC 06006214 */  bne        $v1, $v0, .Lfunc_8002C0AC_8002C108
    /* 1C8F0 8002C0F0 0100A524 */   addiu     $a1, $a1, 0x1
    /* 1C8F4 8002C0F4 0A006010 */  beqz       $v1, .Lfunc_8002C0AC_8002C120
    /* 1C8F8 8002C0F8 01008424 */   addiu     $a0, $a0, 0x1
    /* 1C8FC 8002C0FC FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 1C900 8002C100 F7FFC104 */  bgez       $a2, .Lfunc_8002C0AC_8002C0E0
    /* 1C904 8002C104 00000000 */   nop
  .Lfunc_8002C0AC_8002C108:
    /* 1C908 8002C108 0500C004 */  bltz       $a2, .Lfunc_8002C0AC_8002C120
    /* 1C90C 8002C10C 00000000 */   nop
    /* 1C910 8002C110 00008390 */  lbu        $v1, 0x0($a0)
    /* 1C914 8002C114 FFFFA290 */  lbu        $v0, -0x1($a1)
    /* 1C918 8002C118 49B00008 */  j          .Lfunc_8002C0AC_8002C124
    /* 1C91C 8002C11C 23106200 */   subu      $v0, $v1, $v0
  .Lfunc_8002C0AC_8002C120:
    /* 1C920 8002C120 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_8002C0AC_8002C124:
    /* 1C924 8002C124 0800E003 */  jr         $ra
    /* 1C928 8002C128 00000000 */   nop
endlabel Mem_Compare
