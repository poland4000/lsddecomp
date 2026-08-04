.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdSyncResultImpl, 0x2D0

glabel CdSyncResultImpl
    /* 1A440 80029C40 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1A444 80029C44 3400B7AF */  sw         $s7, 0x34($sp)
    /* 1A448 80029C48 21B88000 */  addu       $s7, $a0, $zero
    /* 1A44C 80029C4C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 1A450 80029C50 21A0A000 */  addu       $s4, $a1, $zero
    /* 1A454 80029C54 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 1A458 80029C58 3800BFAF */  sw         $ra, 0x38($sp)
    /* 1A45C 80029C5C 3000B6AF */  sw         $s6, 0x30($sp)
    /* 1A460 80029C60 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 1A464 80029C64 2400B3AF */  sw         $s3, 0x24($sp)
    /* 1A468 80029C68 2000B2AF */  sw         $s2, 0x20($sp)
    /* 1A46C 80029C6C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1A470 80029C70 4096000C */  jal        GetSystemTick
    /* 1A474 80029C74 1800B0AF */   sw        $s0, 0x18($sp)
    /* 1A478 80029C78 0780153C */  lui        $s5, %hi(gCdIntNames)
    /* 1A47C 80029C7C A0D6B526 */  addiu      $s5, $s5, %lo(gCdIntNames)
    /* 1A480 80029C80 0780123C */  lui        $s2, %hi(D_8006D8D8)
    /* 1A484 80029C84 D8D85226 */  addiu      $s2, $s2, %lo(D_8006D8D8)
    /* 1A488 80029C88 01005626 */  addiu      $s6, $s2, 0x1
    /* 1A48C 80029C8C 02005326 */  addiu      $s3, $s2, 0x2
    /* 1A490 80029C90 E0014224 */  addiu      $v0, $v0, 0x1E0
    /* 1A494 80029C94 0980013C */  lui        $at, %hi(D_8008B3E4)
    /* 1A498 80029C98 E4B322AC */  sw         $v0, %lo(D_8008B3E4)($at)
    /* 1A49C 80029C9C 0180023C */  lui        $v0, %hi(D_80010A14)
    /* 1A4A0 80029CA0 140A4224 */  addiu      $v0, $v0, %lo(D_80010A14)
    /* 1A4A4 80029CA4 0980013C */  lui        $at, %hi(D_8008B3E8)
    /* 1A4A8 80029CA8 E8B320AC */  sw         $zero, %lo(D_8008B3E8)($at)
    /* 1A4AC 80029CAC 0980013C */  lui        $at, %hi(D_8008B3EC)
    /* 1A4B0 80029CB0 ECB322AC */  sw         $v0, %lo(D_8008B3EC)($at)
  .Lfunc_80029C40_80029CB4:
    /* 1A4B4 80029CB4 4096000C */  jal        GetSystemTick
    /* 1A4B8 80029CB8 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 1A4BC 80029CBC 0980033C */  lui        $v1, %hi(D_8008B3E4)
    /* 1A4C0 80029CC0 E4B3638C */  lw         $v1, %lo(D_8008B3E4)($v1)
    /* 1A4C4 80029CC4 00000000 */  nop
    /* 1A4C8 80029CC8 2A186200 */  slt        $v1, $v1, $v0
    /* 1A4CC 80029CCC 0B006014 */  bnez       $v1, .Lfunc_80029C40_80029CFC
    /* 1A4D0 80029CD0 00000000 */   nop
    /* 1A4D4 80029CD4 0980033C */  lui        $v1, %hi(D_8008B3E8)
    /* 1A4D8 80029CD8 E8B3638C */  lw         $v1, %lo(D_8008B3E8)($v1)
    /* 1A4DC 80029CDC 00000000 */  nop
    /* 1A4E0 80029CE0 01006224 */  addiu      $v0, $v1, 0x1
    /* 1A4E4 80029CE4 0980013C */  lui        $at, %hi(D_8008B3E8)
    /* 1A4E8 80029CE8 E8B322AC */  sw         $v0, %lo(D_8008B3E8)($at)
    /* 1A4EC 80029CEC 1E00023C */  lui        $v0, (0x1E0000 >> 16)
    /* 1A4F0 80029CF0 2A104300 */  slt        $v0, $v0, $v1
    /* 1A4F4 80029CF4 1F004010 */  beqz       $v0, .Lfunc_80029C40_80029D74
    /* 1A4F8 80029CF8 00000000 */   nop
  .Lfunc_80029C40_80029CFC:
    /* 1A4FC 80029CFC 0180043C */  lui        $a0, %hi(D_80010984)
    /* 1A500 80029D00 84098424 */  addiu      $a0, $a0, %lo(D_80010984)
    /* 1A504 80029D04 B996000C */  jal        DebugPuts
    /* 1A508 80029D08 00000000 */   nop
    /* 1A50C 80029D0C 00004492 */  lbu        $a0, 0x0($s2)
    /* 1A510 80029D10 01004292 */  lbu        $v0, 0x1($s2)
    /* 1A514 80029D14 0980053C */  lui        $a1, %hi(D_8008B3EC)
    /* 1A518 80029D18 ECB3A58C */  lw         $a1, %lo(D_8008B3EC)($a1)
    /* 1A51C 80029D1C 80100200 */  sll        $v0, $v0, 2
    /* 1A520 80029D20 21105500 */  addu       $v0, $v0, $s5
    /* 1A524 80029D24 80200400 */  sll        $a0, $a0, 2
    /* 1A528 80029D28 0000438C */  lw         $v1, 0x0($v0)
    /* 1A52C 80029D2C 0780023C */  lui        $v0, %hi(gCdLastCommand)
    /* 1A530 80029D30 1DD64290 */  lbu        $v0, %lo(gCdLastCommand)($v0)
    /* 1A534 80029D34 21209500 */  addu       $a0, $a0, $s5
    /* 1A538 80029D38 80100200 */  sll        $v0, $v0, 2
    /* 1A53C 80029D3C 1000A3AF */  sw         $v1, 0x10($sp)
    /* 1A540 80029D40 0780013C */  lui        $at, %hi(gCdCommandNames)
    /* 1A544 80029D44 20D62124 */  addiu      $at, $at, %lo(gCdCommandNames)
    /* 1A548 80029D48 21082200 */  addu       $at, $at, $v0
    /* 1A54C 80029D4C 0000268C */  lw         $a2, 0x0($at)
    /* 1A550 80029D50 0000878C */  lw         $a3, 0x0($a0)
    /* 1A554 80029D54 0180043C */  lui        $a0, %hi(D_80010994)
    /* 1A558 80029D58 94098424 */  addiu      $a0, $a0, %lo(D_80010994)
    /* 1A55C 80029D5C 084B000C */  jal        DebugPrintf
    /* 1A560 80029D60 00000000 */   nop
    /* 1A564 80029D64 44A9000C */  jal        CdAckInterruptImpl
    /* 1A568 80029D68 00000000 */   nop
    /* 1A56C 80029D6C 5EA70008 */  j          .Lfunc_80029C40_80029D78
    /* 1A570 80029D70 FFFF0224 */   addiu     $v0, $zero, -0x1
  .Lfunc_80029C40_80029D74:
    /* 1A574 80029D74 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_80029C40_80029D78:
    /* 1A578 80029D78 59004014 */  bnez       $v0, .Lfunc_80029C40_80029EE0
    /* 1A57C 80029D7C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 1A580 80029D80 9993000C */  jal        WaitEvent
    /* 1A584 80029D84 00000000 */   nop
    /* 1A588 80029D88 2B004010 */  beqz       $v0, .Lfunc_80029C40_80029E38
    /* 1A58C 80029D8C 00000000 */   nop
    /* 1A590 80029D90 0780023C */  lui        $v0, %hi(gpCdRegIndex)
    /* 1A594 80029D94 C0D8428C */  lw         $v0, %lo(gpCdRegIndex)($v0)
    /* 1A598 80029D98 00000000 */  nop
    /* 1A59C 80029D9C 00004290 */  lbu        $v0, 0x0($v0)
    /* 1A5A0 80029DA0 00000000 */  nop
    /* 1A5A4 80029DA4 03005130 */  andi       $s1, $v0, 0x3
  .Lfunc_80029C40_80029DA8:
    /* 1A5A8 80029DA8 1EA5000C */  jal        CdInterruptHandler
    /* 1A5AC 80029DAC 00000000 */   nop
    /* 1A5B0 80029DB0 21804000 */  addu       $s0, $v0, $zero
    /* 1A5B4 80029DB4 1C000012 */  beqz       $s0, .Lfunc_80029C40_80029E28
    /* 1A5B8 80029DB8 04000232 */   andi      $v0, $s0, 0x4
    /* 1A5BC 80029DBC 0C004010 */  beqz       $v0, .Lfunc_80029C40_80029DF0
    /* 1A5C0 80029DC0 02000232 */   andi      $v0, $s0, 0x2
    /* 1A5C4 80029DC4 0780023C */  lui        $v0, %hi(D_8006D600)
    /* 1A5C8 80029DC8 00D6428C */  lw         $v0, %lo(D_8006D600)($v0)
    /* 1A5CC 80029DCC 00000000 */  nop
    /* 1A5D0 80029DD0 06004010 */  beqz       $v0, .Lfunc_80029C40_80029DEC
    /* 1A5D4 80029DD4 00000000 */   nop
    /* 1A5D8 80029DD8 0000C492 */  lbu        $a0, 0x0($s6)
    /* 1A5DC 80029DDC 0980053C */  lui        $a1, %hi(D_8008B3D4)
    /* 1A5E0 80029DE0 D4B3A524 */  addiu      $a1, $a1, %lo(D_8008B3D4)
    /* 1A5E4 80029DE4 09F84000 */  jalr       $v0
    /* 1A5E8 80029DE8 00000000 */   nop
  .Lfunc_80029C40_80029DEC:
    /* 1A5EC 80029DEC 02000232 */  andi       $v0, $s0, 0x2
  .Lfunc_80029C40_80029DF0:
    /* 1A5F0 80029DF0 EDFF4010 */  beqz       $v0, .Lfunc_80029C40_80029DA8
    /* 1A5F4 80029DF4 00000000 */   nop
    /* 1A5F8 80029DF8 0780023C */  lui        $v0, %hi(D_8006D5FC)
    /* 1A5FC 80029DFC FCD5428C */  lw         $v0, %lo(D_8006D5FC)($v0)
    /* 1A600 80029E00 00000000 */  nop
    /* 1A604 80029E04 E8FF4010 */  beqz       $v0, .Lfunc_80029C40_80029DA8
    /* 1A608 80029E08 00000000 */   nop
    /* 1A60C 80029E0C 00004492 */  lbu        $a0, 0x0($s2)
    /* 1A610 80029E10 0980053C */  lui        $a1, %hi(D_8008B3CC)
    /* 1A614 80029E14 CCB3A524 */  addiu      $a1, $a1, %lo(D_8008B3CC)
    /* 1A618 80029E18 09F84000 */  jalr       $v0
    /* 1A61C 80029E1C 00000000 */   nop
    /* 1A620 80029E20 6AA70008 */  j          .Lfunc_80029C40_80029DA8
    /* 1A624 80029E24 00000000 */   nop
  .Lfunc_80029C40_80029E28:
    /* 1A628 80029E28 0780023C */  lui        $v0, %hi(gpCdRegIndex)
    /* 1A62C 80029E2C C0D8428C */  lw         $v0, %lo(gpCdRegIndex)($v0)
    /* 1A630 80029E30 00000000 */  nop
    /* 1A634 80029E34 000051A0 */  sb         $s1, 0x0($v0)
  .Lfunc_80029C40_80029E38:
    /* 1A638 80029E38 00006292 */  lbu        $v0, 0x0($s3)
    /* 1A63C 80029E3C 00000000 */  nop
    /* 1A640 80029E40 FF004630 */  andi       $a2, $v0, 0xFF
    /* 1A644 80029E44 1000C010 */  beqz       $a2, .Lfunc_80029C40_80029E88
    /* 1A648 80029E48 00000000 */   nop
    /* 1A64C 80029E4C 000060A2 */  sb         $zero, 0x0($s3)
    /* 1A650 80029E50 0980043C */  lui        $a0, %hi(D_8008B3DC)
    /* 1A654 80029E54 DCB38424 */  addiu      $a0, $a0, %lo(D_8008B3DC)
    /* 1A658 80029E58 1D008012 */  beqz       $s4, .Lfunc_80029C40_80029ED0
    /* 1A65C 80029E5C 21288002 */   addu      $a1, $s4, $zero
    /* 1A660 80029E60 07000334 */  ori        $v1, $zero, 0x7
    /* 1A664 80029E64 FFFF0724 */  addiu      $a3, $zero, -0x1
  .Lfunc_80029C40_80029E68:
    /* 1A668 80029E68 00008290 */  lbu        $v0, 0x0($a0)
    /* 1A66C 80029E6C 01008424 */  addiu      $a0, $a0, 0x1
    /* 1A670 80029E70 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 1A674 80029E74 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 1A678 80029E78 FBFF6714 */  bne        $v1, $a3, .Lfunc_80029C40_80029E68
    /* 1A67C 80029E7C 0100A524 */   addiu     $a1, $a1, 0x1
    /* 1A680 80029E80 B8A70008 */  j          .Lfunc_80029C40_80029EE0
    /* 1A684 80029E84 2110C000 */   addu      $v0, $a2, $zero
  .Lfunc_80029C40_80029E88:
    /* 1A688 80029E88 FFFF6292 */  lbu        $v0, -0x1($s3)
    /* 1A68C 80029E8C 00000000 */  nop
    /* 1A690 80029E90 FF004630 */  andi       $a2, $v0, 0xFF
    /* 1A694 80029E94 1000C010 */  beqz       $a2, .Lfunc_80029C40_80029ED8
    /* 1A698 80029E98 00000000 */   nop
    /* 1A69C 80029E9C FFFF60A2 */  sb         $zero, -0x1($s3)
    /* 1A6A0 80029EA0 21288002 */  addu       $a1, $s4, $zero
    /* 1A6A4 80029EA4 0980043C */  lui        $a0, %hi(D_8008B3D4)
    /* 1A6A8 80029EA8 D4B38424 */  addiu      $a0, $a0, %lo(D_8008B3D4)
    /* 1A6AC 80029EAC 0800A010 */  beqz       $a1, .Lfunc_80029C40_80029ED0
    /* 1A6B0 80029EB0 07000334 */   ori       $v1, $zero, 0x7
    /* 1A6B4 80029EB4 FFFF0724 */  addiu      $a3, $zero, -0x1
  .Lfunc_80029C40_80029EB8:
    /* 1A6B8 80029EB8 00008290 */  lbu        $v0, 0x0($a0)
    /* 1A6BC 80029EBC 01008424 */  addiu      $a0, $a0, 0x1
    /* 1A6C0 80029EC0 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 1A6C4 80029EC4 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 1A6C8 80029EC8 FBFF6714 */  bne        $v1, $a3, .Lfunc_80029C40_80029EB8
    /* 1A6CC 80029ECC 0100A524 */   addiu     $a1, $a1, 0x1
  .Lfunc_80029C40_80029ED0:
    /* 1A6D0 80029ED0 B8A70008 */  j          .Lfunc_80029C40_80029EE0
    /* 1A6D4 80029ED4 2110C000 */   addu      $v0, $a2, $zero
  .Lfunc_80029C40_80029ED8:
    /* 1A6D8 80029ED8 76FFE012 */  beqz       $s7, .Lfunc_80029C40_80029CB4
    /* 1A6DC 80029EDC 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_80029C40_80029EE0:
    /* 1A6E0 80029EE0 3800BF8F */  lw         $ra, 0x38($sp)
    /* 1A6E4 80029EE4 3400B78F */  lw         $s7, 0x34($sp)
    /* 1A6E8 80029EE8 3000B68F */  lw         $s6, 0x30($sp)
    /* 1A6EC 80029EEC 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 1A6F0 80029EF0 2800B48F */  lw         $s4, 0x28($sp)
    /* 1A6F4 80029EF4 2400B38F */  lw         $s3, 0x24($sp)
    /* 1A6F8 80029EF8 2000B28F */  lw         $s2, 0x20($sp)
    /* 1A6FC 80029EFC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 1A700 80029F00 1800B08F */  lw         $s0, 0x18($sp)
    /* 1A704 80029F04 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 1A708 80029F08 0800E003 */  jr         $ra
    /* 1A70C 80029F0C 00000000 */   nop
endlabel CdSyncResultImpl
