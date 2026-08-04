.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80025E1C, 0x78

glabel func_80025E1C
    /* 1661C 80025E1C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 16620 80025E20 0980083C */  lui        $t0, %hi(D_8008B388)
    /* 16624 80025E24 88B30825 */  addiu      $t0, $t0, %lo(D_8008B388)
    /* 16628 80025E28 2138A003 */  addu       $a3, $sp, $zero
    /* 1662C 80025E2C 0180063C */  lui        $a2, %hi(D_80010764)
    /* 16630 80025E30 6407C624 */  addiu      $a2, $a2, %lo(D_80010764)
    /* 16634 80025E34 4000C924 */  addiu      $t1, $a2, 0x40
  .Lfunc_80025E1C_80025E38:
    /* 16638 80025E38 0000C28C */  lw         $v0, 0x0($a2)
    /* 1663C 80025E3C 0400C38C */  lw         $v1, 0x4($a2)
    /* 16640 80025E40 0800C48C */  lw         $a0, 0x8($a2)
    /* 16644 80025E44 0C00C58C */  lw         $a1, 0xC($a2)
    /* 16648 80025E48 0000E2AC */  sw         $v0, 0x0($a3)
    /* 1664C 80025E4C 0400E3AC */  sw         $v1, 0x4($a3)
    /* 16650 80025E50 0800E4AC */  sw         $a0, 0x8($a3)
    /* 16654 80025E54 0C00E5AC */  sw         $a1, 0xC($a3)
    /* 16658 80025E58 1000C624 */  addiu      $a2, $a2, 0x10
    /* 1665C 80025E5C F6FFC914 */  bne        $a2, $t1, .Lfunc_80025E1C_80025E38
    /* 16660 80025E60 1000E724 */   addiu     $a3, $a3, 0x10
    /* 16664 80025E64 21200000 */  addu       $a0, $zero, $zero
    /* 16668 80025E68 2118A003 */  addu       $v1, $sp, $zero
  .Lfunc_80025E1C_80025E6C:
    /* 1666C 80025E6C 0000628C */  lw         $v0, 0x0($v1)
    /* 16670 80025E70 04006324 */  addiu      $v1, $v1, 0x4
    /* 16674 80025E74 01008424 */  addiu      $a0, $a0, 0x1
    /* 16678 80025E78 000002AD */  sw         $v0, 0x0($t0)
    /* 1667C 80025E7C 10008228 */  slti       $v0, $a0, 0x10
    /* 16680 80025E80 FAFF4014 */  bnez       $v0, .Lfunc_80025E1C_80025E6C
    /* 16684 80025E84 04000825 */   addiu     $t0, $t0, 0x4
    /* 16688 80025E88 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 1668C 80025E8C 0800E003 */  jr         $ra
    /* 16690 80025E90 00000000 */   nop
endlabel func_80025E1C
