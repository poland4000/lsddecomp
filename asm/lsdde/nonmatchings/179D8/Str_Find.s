.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching Str_Find, 0x78

glabel Str_Find
    /* 193BC 80028BBC 21380000 */  addu       $a3, $zero, $zero
    /* 193C0 80028BC0 2130A000 */  addu       $a2, $a1, $zero
    /* 193C4 80028BC4 00008290 */  lbu        $v0, 0x0($a0)
    /* 193C8 80028BC8 00000000 */  nop
    /* 193CC 80028BCC 16004010 */  beqz       $v0, .Lfunc_80028BBC_80028C28
    /* 193D0 80028BD0 21408000 */   addu      $t0, $a0, $zero
  .Lfunc_80028BBC_80028BD4:
    /* 193D4 80028BD4 00008390 */  lbu        $v1, 0x0($a0)
    /* 193D8 80028BD8 0000C290 */  lbu        $v0, 0x0($a2)
    /* 193DC 80028BDC 00000000 */  nop
    /* 193E0 80028BE0 0A006214 */  bne        $v1, $v0, .Lfunc_80028BBC_80028C0C
    /* 193E4 80028BE4 0100C624 */   addiu     $a2, $a2, 0x1
    /* 193E8 80028BE8 0000C290 */  lbu        $v0, 0x0($a2)
    /* 193EC 80028BEC 00000000 */  nop
    /* 193F0 80028BF0 0E004010 */  beqz       $v0, .Lfunc_80028BBC_80028C2C
    /* 193F4 80028BF4 21100001 */   addu      $v0, $t0, $zero
    /* 193F8 80028BF8 0600E014 */  bnez       $a3, .Lfunc_80028BBC_80028C14
    /* 193FC 80028BFC 00000000 */   nop
    /* 19400 80028C00 21408000 */  addu       $t0, $a0, $zero
    /* 19404 80028C04 05A30008 */  j          .Lfunc_80028BBC_80028C14
    /* 19408 80028C08 01000734 */   ori       $a3, $zero, 0x1
  .Lfunc_80028BBC_80028C0C:
    /* 1940C 80028C0C 2130A000 */  addu       $a2, $a1, $zero
    /* 19410 80028C10 21380000 */  addu       $a3, $zero, $zero
  .Lfunc_80028BBC_80028C14:
    /* 19414 80028C14 01008424 */  addiu      $a0, $a0, 0x1
    /* 19418 80028C18 00008290 */  lbu        $v0, 0x0($a0)
    /* 1941C 80028C1C 00000000 */  nop
    /* 19420 80028C20 ECFF4014 */  bnez       $v0, .Lfunc_80028BBC_80028BD4
    /* 19424 80028C24 00000000 */   nop
  .Lfunc_80028BBC_80028C28:
    /* 19428 80028C28 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_80028BBC_80028C2C:
    /* 1942C 80028C2C 0800E003 */  jr         $ra
    /* 19430 80028C30 00000000 */   nop
endlabel Str_Find
