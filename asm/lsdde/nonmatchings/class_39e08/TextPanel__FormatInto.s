.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextPanel__FormatInto, 0x74

glabel TextPanel__FormatInto
    /* 3F4CC 8004ECCC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 3F4D0 8004ECD0 21108000 */  addu       $v0, $a0, $zero
    /* 3F4D4 8004ECD4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3F4D8 8004ECD8 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3F4DC 8004ECDC FF21D024 */  addiu      $s0, $a2, 0x21FF
    /* 3F4E0 8004ECE0 3400BFAF */  sw         $ra, 0x34($sp)
    /* 3F4E4 8004ECE4 0C00458C */  lw         $a1, 0xC($v0)
    /* 3F4E8 8004ECE8 0980063C */  lui        $a2, %hi(D_8008AAAC)
    /* 3F4EC 8004ECEC ACAAC624 */  addiu      $a2, $a2, %lo(D_8008AAAC)
    /* 3F4F0 8004ECF0 CB3C010C */  jal        TextStrAppend
    /* 3F4F4 8004ECF4 42831000 */   srl       $s0, $s0, 13
    /* 3F4F8 8004ECF8 21204000 */  addu       $a0, $v0, $zero
    /* 3F4FC 8004ECFC 00841000 */  sll        $s0, $s0, 16
    /* 3F500 8004ED00 4E42010C */  jal        StrCompare
    /* 3F504 8004ED04 00020536 */   ori       $a1, $s0, 0x200
    /* 3F508 8004ED08 21204000 */  addu       $a0, $v0, $zero
    /* 3F50C 8004ED0C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3F510 8004ED10 06008210 */  beq        $a0, $v0, .Lfunc_8004ECCC_8004ED2C
    /* 3F514 8004ED14 21100000 */   addu      $v0, $zero, $zero
    /* 3F518 8004ED18 3E42010C */  jal        TextBuf__WriteStr
    /* 3F51C 8004ED1C 00000000 */   nop
    /* 3F520 8004ED20 4242010C */  jal        TextBuf__Rewind
    /* 3F524 8004ED24 1000A427 */   addiu     $a0, $sp, 0x10
    /* 3F528 8004ED28 01000234 */  ori        $v0, $zero, 0x1
  .Lfunc_8004ECCC_8004ED2C:
    /* 3F52C 8004ED2C 3400BF8F */  lw         $ra, 0x34($sp)
    /* 3F530 8004ED30 3000B08F */  lw         $s0, 0x30($sp)
    /* 3F534 8004ED34 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 3F538 8004ED38 0800E003 */  jr         $ra
    /* 3F53C 8004ED3C 00000000 */   nop
endlabel TextPanel__FormatInto
