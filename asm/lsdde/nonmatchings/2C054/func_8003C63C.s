.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003C63C, 0x158

glabel func_8003C63C
    /* 2CE3C 8003C63C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2CE40 8003C640 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2CE44 8003C644 21808000 */  addu       $s0, $a0, $zero
    /* 2CE48 8003C648 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2CE4C 8003C64C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2CE50 8003C650 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2CE54 8003C654 0000128E */  lw         $s2, 0x0($s0)
    /* 2CE58 8003C658 72F9000C */  jal        Get_vtable_Effect
    /* 2CE5C 8003C65C 2188A000 */   addu      $s1, $a1, $zero
    /* 2CE60 8003C660 21200002 */  addu       $a0, $s0, $zero
    /* 2CE64 8003C664 6000428C */  lw         $v0, 0x60($v0)
    /* 2CE68 8003C668 00000000 */  nop
    /* 2CE6C 8003C66C 09F84000 */  jalr       $v0
    /* 2CE70 8003C670 21282002 */   addu      $a1, $s1, $zero
    /* 2CE74 8003C674 FCFF2326 */  addiu      $v1, $s1, -0x4
    /* 2CE78 8003C678 0E00622C */  sltiu      $v0, $v1, 0xE
    /* 2CE7C 8003C67C 3E004010 */  beqz       $v0, L_8003C778
    /* 2CE80 8003C680 80100300 */   sll       $v0, $v1, 2
    /* 2CE84 8003C684 0180013C */  lui        $at, %hi(jtbl_800110D0)
    /* 2CE88 8003C688 D0102124 */  addiu      $at, $at, %lo(jtbl_800110D0)
    /* 2CE8C 8003C68C 21082200 */  addu       $at, $at, $v0
    /* 2CE90 8003C690 0000228C */  lw         $v0, 0x0($at)
    /* 2CE94 8003C694 00000000 */  nop
    /* 2CE98 8003C698 08004000 */  jr         $v0
    /* 2CE9C 8003C69C 00000000 */   nop
  jlabel L_8003C6A0
    /* 2CEA0 8003C6A0 21200002 */  addu       $a0, $s0, $zero
    /* 2CEA4 8003C6A4 4C00058E */  lw         $a1, 0x4C($s0)
    /* 2CEA8 8003C6A8 E400428E */  lw         $v0, 0xE4($s2)
    /* 2CEAC 8003C6AC 00000000 */  nop
    /* 2CEB0 8003C6B0 09F84000 */  jalr       $v0
    /* 2CEB4 8003C6B4 1000A524 */   addiu     $a1, $a1, 0x10
    /* 2CEB8 8003C6B8 4C00028E */  lw         $v0, 0x4C($s0)
    /* 2CEBC 8003C6BC 21200002 */  addu       $a0, $s0, $zero
    /* 2CEC0 8003C6C0 0800458C */  lw         $a1, 0x8($v0)
    /* 2CEC4 8003C6C4 F000428E */  lw         $v0, 0xF0($s2)
    /* 2CEC8 8003C6C8 00000000 */  nop
    /* 2CECC 8003C6CC 09F84000 */  jalr       $v0
    /* 2CED0 8003C6D0 21300000 */   addu      $a2, $zero, $zero
    /* 2CED4 8003C6D4 01000234 */  ori        $v0, $zero, 0x1
    /* 2CED8 8003C6D8 1C0000AE */  sw         $zero, 0x1C($s0)
    /* 2CEDC 8003C6DC DEF10008 */  j          L_8003C778
    /* 2CEE0 8003C6E0 3C0002AE */   sw        $v0, 0x3C($s0)
  jlabel L_8003C6E4
    /* 2CEE4 8003C6E4 01000234 */  ori        $v0, $zero, 0x1
    /* 2CEE8 8003C6E8 380002AE */  sw         $v0, 0x38($s0)
    /* 2CEEC 8003C6EC 9400428E */  lw         $v0, 0x94($s2)
    /* 2CEF0 8003C6F0 DBF10008 */  j          .Lfunc_8003C63C_8003C76C
    /* 2CEF4 8003C6F4 00000000 */   nop
  jlabel L_8003C6F8
    /* 2CEF8 8003C6F8 1C0000AE */  sw         $zero, 0x1C($s0)
    /* 2CEFC 8003C6FC DEF10008 */  j          L_8003C778
    /* 2CF00 8003C700 3C0000AE */   sw        $zero, 0x3C($s0)
  jlabel L_8003C704
    /* 2CF04 8003C704 DEF10008 */  j          L_8003C778
    /* 2CF08 8003C708 1C0000AE */   sw        $zero, 0x1C($s0)
  jlabel L_8003C70C
    /* 2CF0C 8003C70C 05000234 */  ori        $v0, $zero, 0x5
    /* 2CF10 8003C710 200002AE */  sw         $v0, 0x20($s0)
    /* 2CF14 8003C714 0F000234 */  ori        $v0, $zero, 0xF
    /* 2CF18 8003C718 10002212 */  beq        $s1, $v0, .Lfunc_8003C63C_8003C75C
    /* 2CF1C 8003C71C 1C0000AE */   sw        $zero, 0x1C($s0)
    /* 2CF20 8003C720 1000222A */  slti       $v0, $s1, 0x10
    /* 2CF24 8003C724 05004010 */  beqz       $v0, .Lfunc_8003C63C_8003C73C
    /* 2CF28 8003C728 0B000234 */   ori       $v0, $zero, 0xB
    /* 2CF2C 8003C72C 08002212 */  beq        $s1, $v0, .Lfunc_8003C63C_8003C750
    /* 2CF30 8003C730 00000000 */   nop
    /* 2CF34 8003C734 DEF10008 */  j          L_8003C778
    /* 2CF38 8003C738 00000000 */   nop
  .Lfunc_8003C63C_8003C73C:
    /* 2CF3C 8003C73C 11000234 */  ori        $v0, $zero, 0x11
    /* 2CF40 8003C740 09002212 */  beq        $s1, $v0, .Lfunc_8003C63C_8003C768
    /* 2CF44 8003C744 00000000 */   nop
    /* 2CF48 8003C748 DEF10008 */  j          L_8003C778
    /* 2CF4C 8003C74C 00000000 */   nop
  .Lfunc_8003C63C_8003C750:
    /* 2CF50 8003C750 9000428E */  lw         $v0, 0x90($s2)
    /* 2CF54 8003C754 DBF10008 */  j          .Lfunc_8003C63C_8003C76C
    /* 2CF58 8003C758 00000000 */   nop
  .Lfunc_8003C63C_8003C75C:
    /* 2CF5C 8003C75C 0C01428E */  lw         $v0, 0x10C($s2)
    /* 2CF60 8003C760 DBF10008 */  j          .Lfunc_8003C63C_8003C76C
    /* 2CF64 8003C764 00000000 */   nop
  .Lfunc_8003C63C_8003C768:
    /* 2CF68 8003C768 1001428E */  lw         $v0, 0x110($s2)
  .Lfunc_8003C63C_8003C76C:
    /* 2CF6C 8003C76C 00000000 */  nop
    /* 2CF70 8003C770 09F84000 */  jalr       $v0
    /* 2CF74 8003C774 21200002 */   addu      $a0, $s0, $zero
  jlabel L_8003C778
    /* 2CF78 8003C778 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2CF7C 8003C77C 1800B28F */  lw         $s2, 0x18($sp)
    /* 2CF80 8003C780 1400B18F */  lw         $s1, 0x14($sp)
    /* 2CF84 8003C784 1000B08F */  lw         $s0, 0x10($sp)
    /* 2CF88 8003C788 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2CF8C 8003C78C 0800E003 */  jr         $ra
    /* 2CF90 8003C790 00000000 */   nop
endlabel func_8003C63C
