.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextPanel__StoreString, 0xA4

glabel TextPanel__StoreString
    /* 3F238 8004EA38 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 3F23C 8004EA3C 21108000 */  addu       $v0, $a0, $zero
    /* 3F240 8004EA40 3800B2AF */  sw         $s2, 0x38($sp)
    /* 3F244 8004EA44 2190A000 */  addu       $s2, $a1, $zero
    /* 3F248 8004EA48 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 3F24C 8004EA4C 3400B1AF */  sw         $s1, 0x34($sp)
    /* 3F250 8004EA50 3000B0AF */  sw         $s0, 0x30($sp)
    /* 3F254 8004EA54 0C00458C */  lw         $a1, 0xC($v0)
    /* 3F258 8004EA58 CB3C010C */  jal        TextStrAppend
    /* 3F25C 8004EA5C 1000A427 */   addiu     $a0, $sp, 0x10
    /* 3F260 8004EA60 21204000 */  addu       $a0, $v0, $zero
    /* 3F264 8004EA64 4E42010C */  jal        StrCompare
    /* 3F268 8004EA68 01000534 */   ori       $a1, $zero, 0x1
    /* 3F26C 8004EA6C 21884000 */  addu       $s1, $v0, $zero
    /* 3F270 8004EA70 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3F274 8004EA74 12002212 */  beq        $s1, $v0, .Lfunc_8004EA38_8004EAC0
    /* 3F278 8004EA78 21100000 */   addu      $v0, $zero, $zero
    /* 3F27C 8004EA7C 0D004012 */  beqz       $s2, .Lfunc_8004EA38_8004EAB4
    /* 3F280 8004EA80 00000000 */   nop
    /* 3F284 8004EA84 CD5E000C */  jal        BMemAlloc
    /* 3F288 8004EA88 80000434 */   ori       $a0, $zero, 0x80
    /* 3F28C 8004EA8C 21202002 */  addu       $a0, $s1, $zero
    /* 3F290 8004EA90 21804000 */  addu       $s0, $v0, $zero
    /* 3F294 8004EA94 21280002 */  addu       $a1, $s0, $zero
    /* 3F298 8004EA98 4A42010C */  jal        StrCopyN
    /* 3F29C 8004EA9C 80000634 */   ori       $a2, $zero, 0x80
    /* 3F2A0 8004EAA0 21204002 */  addu       $a0, $s2, $zero
    /* 3F2A4 8004EAA4 DEA2000C */  jal        Str_Copy
    /* 3F2A8 8004EAA8 04000526 */   addiu     $a1, $s0, 0x4
    /* 3F2AC 8004EAAC 3F5F000C */  jal        BMemFree
    /* 3F2B0 8004EAB0 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_8004EA38_8004EAB4:
    /* 3F2B4 8004EAB4 3E42010C */  jal        TextBuf__WriteStr
    /* 3F2B8 8004EAB8 21202002 */   addu      $a0, $s1, $zero
    /* 3F2BC 8004EABC 01000234 */  ori        $v0, $zero, 0x1
  .Lfunc_8004EA38_8004EAC0:
    /* 3F2C0 8004EAC0 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 3F2C4 8004EAC4 3800B28F */  lw         $s2, 0x38($sp)
    /* 3F2C8 8004EAC8 3400B18F */  lw         $s1, 0x34($sp)
    /* 3F2CC 8004EACC 3000B08F */  lw         $s0, 0x30($sp)
    /* 3F2D0 8004EAD0 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 3F2D4 8004EAD4 0800E003 */  jr         $ra
    /* 3F2D8 8004EAD8 00000000 */   nop
endlabel TextPanel__StoreString
