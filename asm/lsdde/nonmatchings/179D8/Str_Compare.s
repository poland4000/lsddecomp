.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching Str_Compare, 0x64

glabel Str_Compare
    /* 1C848 8002C048 03008010 */  beqz       $a0, .Lfunc_8002C048_8002C058
    /* 1C84C 8002C04C 00000000 */   nop
    /* 1C850 8002C050 0B00A014 */  bnez       $a1, .Lfunc_8002C048_8002C080
    /* 1C854 8002C054 00000000 */   nop
  .Lfunc_8002C048_8002C058:
    /* 1C858 8002C058 03008514 */  bne        $a0, $a1, .Lfunc_8002C048_8002C068
    /* 1C85C 8002C05C 00000000 */   nop
  .Lfunc_8002C048_8002C060:
    /* 1C860 8002C060 29B00008 */  j          .Lfunc_8002C048_8002C0A4
    /* 1C864 8002C064 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_8002C048_8002C068:
    /* 1C868 8002C068 0E008014 */  bnez       $a0, .Lfunc_8002C048_8002C0A4
    /* 1C86C 8002C06C 01000234 */   ori       $v0, $zero, 0x1
    /* 1C870 8002C070 29B00008 */  j          .Lfunc_8002C048_8002C0A4
    /* 1C874 8002C074 FFFF0224 */   addiu     $v0, $zero, -0x1
  .Lfunc_8002C048_8002C078:
    /* 1C878 8002C078 F9FF6010 */  beqz       $v1, .Lfunc_8002C048_8002C060
    /* 1C87C 8002C07C 01008424 */   addiu     $a0, $a0, 0x1
  .Lfunc_8002C048_8002C080:
    /* 1C880 8002C080 00008390 */  lbu        $v1, 0x0($a0)
    /* 1C884 8002C084 0000A290 */  lbu        $v0, 0x0($a1)
    /* 1C888 8002C088 00000000 */  nop
    /* 1C88C 8002C08C FAFF6210 */  beq        $v1, $v0, .Lfunc_8002C048_8002C078
    /* 1C890 8002C090 0100A524 */   addiu     $a1, $a1, 0x1
    /* 1C894 8002C094 00008390 */  lbu        $v1, 0x0($a0)
    /* 1C898 8002C098 FFFFA290 */  lbu        $v0, -0x1($a1)
    /* 1C89C 8002C09C 00000000 */  nop
    /* 1C8A0 8002C0A0 23106200 */  subu       $v0, $v1, $v0
  .Lfunc_8002C048_8002C0A4:
    /* 1C8A4 8002C0A4 0800E003 */  jr         $ra
    /* 1C8A8 8002C0A8 00000000 */   nop
endlabel Str_Compare
