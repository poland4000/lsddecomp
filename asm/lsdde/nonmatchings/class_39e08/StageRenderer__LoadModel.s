.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__LoadModel, 0x258

glabel StageRenderer__LoadModel
    /* 3C654 8004BE54 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 3C658 8004BE58 7000B4AF */  sw         $s4, 0x70($sp)
    /* 3C65C 8004BE5C 21A0A000 */  addu       $s4, $a1, $zero
    /* 3C660 8004BE60 7C00BFAF */  sw         $ra, 0x7C($sp)
    /* 3C664 8004BE64 7800B6AF */  sw         $s6, 0x78($sp)
    /* 3C668 8004BE68 7400B5AF */  sw         $s5, 0x74($sp)
    /* 3C66C 8004BE6C 6C00B3AF */  sw         $s3, 0x6C($sp)
    /* 3C670 8004BE70 6800B2AF */  sw         $s2, 0x68($sp)
    /* 3C674 8004BE74 6400B1AF */  sw         $s1, 0x64($sp)
    /* 3C678 8004BE78 6000B0AF */  sw         $s0, 0x60($sp)
    /* 3C67C 8004BE7C 0400908E */  lw         $s0, 0x4($s4)
    /* 3C680 8004BE80 0800938E */  lw         $s3, 0x8($s4)
    /* 3C684 8004BE84 1000028E */  lw         $v0, 0x10($s0)
    /* 3C688 8004BE88 2C00648E */  lw         $a0, 0x2C($s3)
    /* 3C68C 8004BE8C 0400438C */  lw         $v1, 0x4($v0)
    /* 3C690 8004BE90 140060AE */  sw         $zero, 0x14($s3)
    /* 3C694 8004BE94 21104300 */  addu       $v0, $v0, $v1
    /* 3C698 8004BE98 07008010 */  beqz       $a0, .Lfunc_8004BE54_8004BEB8
    /* 3C69C 8004BE9C 100062AE */   sw        $v0, 0x10($s3)
    /* 3C6A0 8004BEA0 0000828C */  lw         $v0, 0x0($a0)
    /* 3C6A4 8004BEA4 00000000 */  nop
    /* 3C6A8 8004BEA8 0400428C */  lw         $v0, 0x4($v0)
    /* 3C6AC 8004BEAC 00000000 */  nop
    /* 3C6B0 8004BEB0 09F84000 */  jalr       $v0
    /* 3C6B4 8004BEB4 00000000 */   nop
  .Lfunc_8004BE54_8004BEB8:
    /* 3C6B8 8004BEB8 5000A427 */  addiu      $a0, $sp, 0x50
    /* 3C6BC 8004BEBC 21A80000 */  addu       $s5, $zero, $zero
    /* 3C6C0 8004BEC0 0080163C */  lui        $s6, (0x80000000 >> 16)
    /* 3C6C4 8004BEC4 21900000 */  addu       $s2, $zero, $zero
    /* 3C6C8 8004BEC8 1000028E */  lw         $v0, 0x10($s0)
    /* 3C6CC 8004BECC 40061134 */  ori        $s1, $zero, 0x640
    /* 3C6D0 8004BED0 0400438C */  lw         $v1, 0x4($v0)
    /* 3C6D4 8004BED4 0800458C */  lw         $a1, 0x8($v0)
    /* 3C6D8 8004BED8 21104300 */  addu       $v0, $v0, $v1
    /* 3C6DC 8004BEDC 21104500 */  addu       $v0, $v0, $a1
    /* 3C6E0 8004BEE0 100E010C */  jal        LoadTmdModel
    /* 3C6E4 8004BEE4 5000A2AF */   sw        $v0, 0x50($sp)
    /* 3C6E8 8004BEE8 2C0062AE */  sw         $v0, 0x2C($s3)
    /* 3C6EC 8004BEEC 4400A0AF */  sw         $zero, 0x44($sp)
  .Lfunc_8004BE54_8004BEF0:
    /* 3C6F0 8004BEF0 21206002 */  addu       $a0, $s3, $zero
    /* 3C6F4 8004BEF4 0000628E */  lw         $v0, 0x0($s3)
    /* 3C6F8 8004BEF8 1000A527 */  addiu      $a1, $sp, 0x10
    /* 3C6FC 8004BEFC 7800428C */  lw         $v0, 0x78($v0)
    /* 3C700 8004BF00 00000000 */  nop
    /* 3C704 8004BF04 09F84000 */  jalr       $v0
    /* 3C708 8004BF08 2130A002 */   addu      $a2, $s5, $zero
    /* 3C70C 8004BF0C 21204000 */  addu       $a0, $v0, $zero
    /* 3C710 8004BF10 5B008010 */  beqz       $a0, .Lfunc_8004BE54_8004C080
    /* 3C714 8004BF14 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 3C718 8004BF18 10008214 */  bne        $a0, $v0, .Lfunc_8004BE54_8004BF5C
    /* 3C71C 8004BF1C 00000000 */   nop
    /* 3C720 8004BF20 1000828E */  lw         $v0, 0x10($s4)
    /* 3C724 8004BF24 00000000 */  nop
    /* 3C728 8004BF28 21804202 */  addu       $s0, $s2, $v0
    /* 3C72C 8004BF2C 0000038E */  lw         $v1, 0x0($s0)
    /* 3C730 8004BF30 00000000 */  nop
    /* 3C734 8004BF34 1000628C */  lw         $v0, 0x10($v1)
    /* 3C738 8004BF38 00000000 */  nop
    /* 3C73C 8004BF3C 25105600 */  or         $v0, $v0, $s6
    /* 3C740 8004BF40 100062AC */  sw         $v0, 0x10($v1)
    /* 3C744 8004BF44 0000028E */  lw         $v0, 0x0($s0)
    /* 3C748 8004BF48 00000000 */  nop
    /* 3C74C 8004BF4C 200040AC */  sw         $zero, 0x20($v0)
    /* 3C750 8004BF50 0000028E */  lw         $v0, 0x0($s0)
    /* 3C754 8004BF54 11300108 */  j          .Lfunc_8004BE54_8004C044
    /* 3C758 8004BF58 180040AC */   sw        $zero, 0x18($v0)
  .Lfunc_8004BE54_8004BF5C:
    /* 3C75C 8004BF5C 4000A28F */  lw         $v0, 0x40($sp)
    /* 3C760 8004BF60 1000838E */  lw         $v1, 0x10($s4)
    /* 3C764 8004BF64 03004010 */  beqz       $v0, .Lfunc_8004BE54_8004BF74
    /* 3C768 8004BF68 21807100 */   addu      $s0, $v1, $s1
    /* 3C76C 8004BF6C DE2F0108 */  j          .Lfunc_8004BE54_8004BF78
    /* 3C770 8004BF70 04003126 */   addiu     $s1, $s1, 0x4
  .Lfunc_8004BE54_8004BF74:
    /* 3C774 8004BF74 21807200 */  addu       $s0, $v1, $s2
  .Lfunc_8004BE54_8004BF78:
    /* 3C778 8004BF78 0000028E */  lw         $v0, 0x0($s0)
    /* 3C77C 8004BF7C 00000000 */  nop
    /* 3C780 8004BF80 200044AC */  sw         $a0, 0x20($v0)
    /* 3C784 8004BF84 0000038E */  lw         $v1, 0x0($s0)
    /* 3C788 8004BF88 00000000 */  nop
    /* 3C78C 8004BF8C 2000628C */  lw         $v0, 0x20($v1)
    /* 3C790 8004BF90 00000000 */  nop
    /* 3C794 8004BF94 1000428C */  lw         $v0, 0x10($v0)
    /* 3C798 8004BF98 00000000 */  nop
    /* 3C79C 8004BF9C 180062AC */  sw         $v0, 0x18($v1)
    /* 3C7A0 8004BFA0 0000058E */  lw         $a1, 0x0($s0)
    /* 3C7A4 8004BFA4 00000000 */  nop
    /* 3C7A8 8004BFA8 2000A28C */  lw         $v0, 0x20($a1)
    /* 3C7AC 8004BFAC 21300000 */  addu       $a2, $zero, $zero
    /* 3C7B0 8004BFB0 1000448C */  lw         $a0, 0x10($v0)
    /* 3C7B4 8004BFB4 DC7B000C */  jal        func_8001EF70
    /* 3C7B8 8004BFB8 1000A524 */   addiu     $a1, $a1, 0x10
    /* 3C7BC 8004BFBC 0000028E */  lw         $v0, 0x0($s0)
    /* 3C7C0 8004BFC0 00000000 */  nop
    /* 3C7C4 8004BFC4 1400428C */  lw         $v0, 0x14($v0)
    /* 3C7C8 8004BFC8 1C00A38F */  lw         $v1, 0x1C($sp)
    /* 3C7CC 8004BFCC 2000A48F */  lw         $a0, 0x20($sp)
    /* 3C7D0 8004BFD0 2400A58F */  lw         $a1, 0x24($sp)
    /* 3C7D4 8004BFD4 180043AC */  sw         $v1, 0x18($v0)
    /* 3C7D8 8004BFD8 1C0044AC */  sw         $a0, 0x1C($v0)
    /* 3C7DC 8004BFDC 200045AC */  sw         $a1, 0x20($v0)
    /* 3C7E0 8004BFE0 0000028E */  lw         $v0, 0x0($s0)
    /* 3C7E4 8004BFE4 00000000 */  nop
    /* 3C7E8 8004BFE8 1400428C */  lw         $v0, 0x14($v0)
    /* 3C7EC 8004BFEC 00000000 */  nop
    /* 3C7F0 8004BFF0 4400428C */  lw         $v0, 0x44($v0)
    /* 3C7F4 8004BFF4 00000000 */  nop
    /* 3C7F8 8004BFF8 100040A4 */  sh         $zero, 0x10($v0)
    /* 3C7FC 8004BFFC 2A00A397 */  lhu        $v1, 0x2A($sp)
    /* 3C800 8004C000 140040A4 */  sh         $zero, 0x14($v0)
    /* 3C804 8004C004 120043A4 */  sh         $v1, 0x12($v0)
    /* 3C808 8004C008 0000038E */  lw         $v1, 0x0($s0)
    /* 3C80C 8004C00C 3E00A297 */  lhu        $v0, 0x3E($sp)
    /* 3C810 8004C010 00000000 */  nop
    /* 3C814 8004C014 360062A4 */  sh         $v0, 0x36($v1)
    /* 3C818 8004C018 0000028E */  lw         $v0, 0x0($s0)
    /* 3C81C 8004C01C 00000000 */  nop
    /* 3C820 8004C020 1400428C */  lw         $v0, 0x14($v0)
    /* 3C824 8004C024 00000000 */  nop
    /* 3C828 8004C028 000040AC */  sw         $zero, 0x0($v0)
    /* 3C82C 8004C02C 0000038E */  lw         $v1, 0x0($s0)
    /* 3C830 8004C030 00000000 */  nop
    /* 3C834 8004C034 1000628C */  lw         $v0, 0x10($v1)
    /* 3C838 8004C038 00000000 */  nop
    /* 3C83C 8004C03C 25105600 */  or         $v0, $v0, $s6
    /* 3C840 8004C040 100062AC */  sw         $v0, 0x10($v1)
  .Lfunc_8004BE54_8004C044:
    /* 3C844 8004C044 4400A28F */  lw         $v0, 0x44($sp)
    /* 3C848 8004C048 00000000 */  nop
    /* 3C84C 8004C04C 07004010 */  beqz       $v0, .Lfunc_8004BE54_8004C06C
    /* 3C850 8004C050 00000000 */   nop
    /* 3C854 8004C054 1000828E */  lw         $v0, 0x10($s4)
    /* 3C858 8004C058 0000038E */  lw         $v1, 0x0($s0)
    /* 3C85C 8004C05C 21102202 */  addu       $v0, $s1, $v0
    /* 3C860 8004C060 0000428C */  lw         $v0, 0x0($v0)
    /* 3C864 8004C064 BC2F0108 */  j          .Lfunc_8004BE54_8004BEF0
    /* 3C868 8004C068 380062AC */   sw        $v0, 0x38($v1)
  .Lfunc_8004BE54_8004C06C:
    /* 3C86C 8004C06C 04005226 */  addiu      $s2, $s2, 0x4
    /* 3C870 8004C070 0000028E */  lw         $v0, 0x0($s0)
    /* 3C874 8004C074 0100B526 */  addiu      $s5, $s5, 0x1
    /* 3C878 8004C078 BC2F0108 */  j          .Lfunc_8004BE54_8004BEF0
    /* 3C87C 8004C07C 380040AC */   sw        $zero, 0x38($v0)
  .Lfunc_8004BE54_8004C080:
    /* 3C880 8004C080 7C00BF8F */  lw         $ra, 0x7C($sp)
    /* 3C884 8004C084 7800B68F */  lw         $s6, 0x78($sp)
    /* 3C888 8004C088 7400B58F */  lw         $s5, 0x74($sp)
    /* 3C88C 8004C08C 7000B48F */  lw         $s4, 0x70($sp)
    /* 3C890 8004C090 6C00B38F */  lw         $s3, 0x6C($sp)
    /* 3C894 8004C094 6800B28F */  lw         $s2, 0x68($sp)
    /* 3C898 8004C098 6400B18F */  lw         $s1, 0x64($sp)
    /* 3C89C 8004C09C 6000B08F */  lw         $s0, 0x60($sp)
    /* 3C8A0 8004C0A0 8000BD27 */  addiu      $sp, $sp, 0x80
    /* 3C8A4 8004C0A4 0800E003 */  jr         $ra
    /* 3C8A8 8004C0A8 00000000 */   nop
endlabel StageRenderer__LoadModel
