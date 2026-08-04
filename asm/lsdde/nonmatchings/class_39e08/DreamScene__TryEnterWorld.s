.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamScene__TryEnterWorld, 0x178

glabel DreamScene__TryEnterWorld
    /* 3A4A8 80049CA8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3A4AC 80049CAC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3A4B0 80049CB0 21888000 */  addu       $s1, $a0, $zero
    /* 3A4B4 80049CB4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3A4B8 80049CB8 2180A000 */  addu       $s0, $a1, $zero
    /* 3A4BC 80049CBC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3A4C0 80049CC0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3A4C4 80049CC4 2E29010C */  jal        SceneObj__GetVtable
    /* 3A4C8 80049CC8 2190C000 */   addu      $s2, $a2, $zero
    /* 3A4CC 80049CCC 21202002 */  addu       $a0, $s1, $zero
    /* 3A4D0 80049CD0 21280002 */  addu       $a1, $s0, $zero
    /* 3A4D4 80049CD4 5400428C */  lw         $v0, 0x54($v0)
    /* 3A4D8 80049CD8 00000000 */  nop
    /* 3A4DC 80049CDC 09F84000 */  jalr       $v0
    /* 3A4E0 80049CE0 21304002 */   addu      $a2, $s2, $zero
    /* 3A4E4 80049CE4 02000234 */  ori        $v0, $zero, 0x2
    /* 3A4E8 80049CE8 46004216 */  bne        $s2, $v0, .Lfunc_80049CA8_80049E04
    /* 3A4EC 80049CEC 00000000 */   nop
    /* 3A4F0 80049CF0 3C00238E */  lw         $v1, 0x3C($s1)
    /* 3A4F4 80049CF4 00000000 */  nop
    /* 3A4F8 80049CF8 42007210 */  beq        $v1, $s2, .Lfunc_80049CA8_80049E04
    /* 3A4FC 80049CFC 03006228 */   slti      $v0, $v1, 0x3
    /* 3A500 80049D00 05004010 */  beqz       $v0, .Lfunc_80049CA8_80049D18
    /* 3A504 80049D04 01000234 */   ori       $v0, $zero, 0x1
    /* 3A508 80049D08 08006210 */  beq        $v1, $v0, .Lfunc_80049CA8_80049D2C
    /* 3A50C 80049D0C 00000000 */   nop
    /* 3A510 80049D10 81270108 */  j          .Lfunc_80049CA8_80049E04
    /* 3A514 80049D14 00000000 */   nop
  .Lfunc_80049CA8_80049D18:
    /* 3A518 80049D18 03000234 */  ori        $v0, $zero, 0x3
    /* 3A51C 80049D1C 1E006210 */  beq        $v1, $v0, .Lfunc_80049CA8_80049D98
    /* 3A520 80049D20 00000000 */   nop
    /* 3A524 80049D24 81270108 */  j          .Lfunc_80049CA8_80049E04
    /* 3A528 80049D28 00000000 */   nop
  .Lfunc_80049CA8_80049D2C:
    /* 3A52C 80049D2C 3800248E */  lw         $a0, 0x38($s1)
    /* 3A530 80049D30 00000000 */  nop
    /* 3A534 80049D34 0000828C */  lw         $v0, 0x0($a0)
    /* 3A538 80049D38 00000000 */  nop
    /* 3A53C 80049D3C B401428C */  lw         $v0, 0x1B4($v0)
    /* 3A540 80049D40 00000000 */  nop
    /* 3A544 80049D44 09F84000 */  jalr       $v0
    /* 3A548 80049D48 00000000 */   nop
    /* 3A54C 80049D4C 2B004104 */  bgez       $v0, .Lfunc_80049CA8_80049DFC
    /* 3A550 80049D50 21202002 */   addu      $a0, $s1, $zero
    /* 3A554 80049D54 3800248E */  lw         $a0, 0x38($s1)
    /* 3A558 80049D58 00000000 */  nop
    /* 3A55C 80049D5C 0000828C */  lw         $v0, 0x0($a0)
    /* 3A560 80049D60 00000000 */  nop
    /* 3A564 80049D64 B801428C */  lw         $v0, 0x1B8($v0)
    /* 3A568 80049D68 00000000 */  nop
    /* 3A56C 80049D6C 09F84000 */  jalr       $v0
    /* 3A570 80049D70 21280000 */   addu      $a1, $zero, $zero
    /* 3A574 80049D74 0000228E */  lw         $v0, 0x0($s1)
    /* 3A578 80049D78 21202002 */  addu       $a0, $s1, $zero
    /* 3A57C 80049D7C 280092AC */  sw         $s2, 0x28($a0)
    /* 3A580 80049D80 6000428C */  lw         $v0, 0x60($v0)
    /* 3A584 80049D84 00000000 */  nop
    /* 3A588 80049D88 09F84000 */  jalr       $v0
    /* 3A58C 80049D8C 03000534 */   ori       $a1, $zero, 0x3
    /* 3A590 80049D90 81270108 */  j          .Lfunc_80049CA8_80049E04
    /* 3A594 80049D94 00000000 */   nop
  .Lfunc_80049CA8_80049D98:
    /* 3A598 80049D98 4C00248E */  lw         $a0, 0x4C($s1)
    /* 3A59C 80049D9C 00000000 */  nop
    /* 3A5A0 80049DA0 0000828C */  lw         $v0, 0x0($a0)
    /* 3A5A4 80049DA4 00000000 */  nop
    /* 3A5A8 80049DA8 4800428C */  lw         $v0, 0x48($v0)
    /* 3A5AC 80049DAC 00000000 */  nop
    /* 3A5B0 80049DB0 09F84000 */  jalr       $v0
    /* 3A5B4 80049DB4 00000000 */   nop
    /* 3A5B8 80049DB8 4C00248E */  lw         $a0, 0x4C($s1)
    /* 3A5BC 80049DBC 00000000 */  nop
    /* 3A5C0 80049DC0 0000828C */  lw         $v0, 0x0($a0)
    /* 3A5C4 80049DC4 00000000 */  nop
    /* 3A5C8 80049DC8 0400428C */  lw         $v0, 0x4($v0)
    /* 3A5CC 80049DCC 00000000 */  nop
    /* 3A5D0 80049DD0 09F84000 */  jalr       $v0
    /* 3A5D4 80049DD4 00000000 */   nop
    /* 3A5D8 80049DD8 3800248E */  lw         $a0, 0x38($s1)
    /* 3A5DC 80049DDC 00000000 */  nop
    /* 3A5E0 80049DE0 0000828C */  lw         $v0, 0x0($a0)
    /* 3A5E4 80049DE4 00000000 */  nop
    /* 3A5E8 80049DE8 E001428C */  lw         $v0, 0x1E0($v0)
    /* 3A5EC 80049DEC 00000000 */  nop
    /* 3A5F0 80049DF0 09F84000 */  jalr       $v0
    /* 3A5F4 80049DF4 00000000 */   nop
    /* 3A5F8 80049DF8 21202002 */  addu       $a0, $s1, $zero
  .Lfunc_80049CA8_80049DFC:
    /* 3A5FC 80049DFC 8827010C */  jal        DreamScene__EnterWorld
    /* 3A600 80049E00 21284000 */   addu      $a1, $v0, $zero
  .Lfunc_80049CA8_80049E04:
    /* 3A604 80049E04 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3A608 80049E08 1800B28F */  lw         $s2, 0x18($sp)
    /* 3A60C 80049E0C 1400B18F */  lw         $s1, 0x14($sp)
    /* 3A610 80049E10 1000B08F */  lw         $s0, 0x10($sp)
    /* 3A614 80049E14 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3A618 80049E18 0800E003 */  jr         $ra
    /* 3A61C 80049E1C 00000000 */   nop
endlabel DreamScene__TryEnterWorld
