.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextPanel__ReallocLines, 0xCC

glabel TextPanel__ReallocLines
    /* 3FE38 8004F638 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3FE3C 8004F63C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3FE40 8004F640 21808000 */  addu       $s0, $a0, $zero
    /* 3FE44 8004F644 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3FE48 8004F648 400005AE */  sw         $a1, 0x40($s0)
    /* 3FE4C 8004F64C 440006AE */  sw         $a2, 0x44($s0)
    /* 3FE50 8004F650 540007AE */  sw         $a3, 0x54($s0)
    /* 3FE54 8004F654 3000A38F */  lw         $v1, 0x30($sp)
    /* 3FE58 8004F658 01000234 */  ori        $v0, $zero, 0x1
    /* 3FE5C 8004F65C 240002AE */  sw         $v0, 0x24($s0)
    /* 3FE60 8004F660 763E010C */  jal        TextPanel__TrimLines
    /* 3FE64 8004F664 580003AE */   sw        $v1, 0x58($s0)
    /* 3FE68 8004F668 21004010 */  beqz       $v0, .Lfunc_8004F638_8004F6F0
    /* 3FE6C 8004F66C 00000000 */   nop
    /* 3FE70 8004F670 043E010C */  jal        TextPanel__FreeLineBuffersEx
    /* 3FE74 8004F674 21200002 */   addu      $a0, $s0, $zero
    /* 3FE78 8004F678 C13D010C */  jal        TextPanel__AllocLineBuffers
    /* 3FE7C 8004F67C 21200002 */   addu      $a0, $s0, $zero
    /* 3FE80 8004F680 3400028E */  lw         $v0, 0x34($s0)
    /* 3FE84 8004F684 0000038E */  lw         $v1, 0x0($s0)
    /* 3FE88 8004F688 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3FE8C 8004F68C 3800058E */  lw         $a1, 0x38($s0)
    /* 3FE90 8004F690 5C00628C */  lw         $v0, 0x5C($v1)
    /* 3FE94 8004F694 3C00068E */  lw         $a2, 0x3C($s0)
    /* 3FE98 8004F698 3000078E */  lw         $a3, 0x30($s0)
    /* 3FE9C 8004F69C 09F84000 */  jalr       $v0
    /* 3FEA0 8004F6A0 21200002 */   addu      $a0, $s0, $zero
    /* 3FEA4 8004F6A4 09004010 */  beqz       $v0, .Lfunc_8004F638_8004F6CC
    /* 3FEA8 8004F6A8 2C0002AE */   sw        $v0, 0x2C($s0)
    /* 3FEAC 8004F6AC E13D010C */  jal        TextPanel__FreeLineBuffers
    /* 3FEB0 8004F6B0 21200002 */   addu      $a0, $s0, $zero
    /* 3FEB4 8004F6B4 2800038E */  lw         $v1, 0x28($s0)
    /* 3FEB8 8004F6B8 0E000234 */  ori        $v0, $zero, 0xE
    /* 3FEBC 8004F6BC 06006214 */  bne        $v1, $v0, .Lfunc_8004F638_8004F6D8
    /* 3FEC0 8004F6C0 12000534 */   ori       $a1, $zero, 0x12
    /* 3FEC4 8004F6C4 B63D0108 */  j          .Lfunc_8004F638_8004F6D8
    /* 3FEC8 8004F6C8 0F000534 */   ori       $a1, $zero, 0xF
  .Lfunc_8004F638_8004F6CC:
    /* 3FECC 8004F6CC 0D000534 */  ori        $a1, $zero, 0xD
    /* 3FED0 8004F6D0 0F000234 */  ori        $v0, $zero, 0xF
    /* 3FED4 8004F6D4 2C0002AE */  sw         $v0, 0x2C($s0)
  .Lfunc_8004F638_8004F6D8:
    /* 3FED8 8004F6D8 0000028E */  lw         $v0, 0x0($s0)
    /* 3FEDC 8004F6DC 00000000 */  nop
    /* 3FEE0 8004F6E0 7C00428C */  lw         $v0, 0x7C($v0)
    /* 3FEE4 8004F6E4 00000000 */  nop
    /* 3FEE8 8004F6E8 09F84000 */  jalr       $v0
    /* 3FEEC 8004F6EC 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_8004F638_8004F6F0:
    /* 3FEF0 8004F6F0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3FEF4 8004F6F4 1800B08F */  lw         $s0, 0x18($sp)
    /* 3FEF8 8004F6F8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3FEFC 8004F6FC 0800E003 */  jr         $ra
    /* 3FF00 8004F700 00000000 */   nop
endlabel TextPanel__ReallocLines
