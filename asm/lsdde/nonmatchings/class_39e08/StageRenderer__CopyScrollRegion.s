.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__CopyScrollRegion, 0x294

glabel StageRenderer__CopyScrollRegion
    /* 3CEA8 8004C6A8 68FFBD27 */  addiu      $sp, $sp, -0x98
    /* 3CEAC 8004C6AC 7400B1AF */  sw         $s1, 0x74($sp)
    /* 3CEB0 8004C6B0 21888000 */  addu       $s1, $a0, $zero
    /* 3CEB4 8004C6B4 8C00B7AF */  sw         $s7, 0x8C($sp)
    /* 3CEB8 8004C6B8 21B8A000 */  addu       $s7, $a1, $zero
    /* 3CEBC 8004C6BC 9000BEAF */  sw         $fp, 0x90($sp)
    /* 3CEC0 8004C6C0 21F0C000 */  addu       $fp, $a2, $zero
    /* 3CEC4 8004C6C4 1000A527 */  addiu      $a1, $sp, 0x10
    /* 3CEC8 8004C6C8 9400BFAF */  sw         $ra, 0x94($sp)
    /* 3CECC 8004C6CC 8800B6AF */  sw         $s6, 0x88($sp)
    /* 3CED0 8004C6D0 8400B5AF */  sw         $s5, 0x84($sp)
    /* 3CED4 8004C6D4 8000B4AF */  sw         $s4, 0x80($sp)
    /* 3CED8 8004C6D8 7C00B3AF */  sw         $s3, 0x7C($sp)
    /* 3CEDC 8004C6DC 7800B2AF */  sw         $s2, 0x78($sp)
    /* 3CEE0 8004C6E0 7000B0AF */  sw         $s0, 0x70($sp)
    /* 3CEE4 8004C6E4 6C00228E */  lw         $v0, 0x6C($s1)
    /* 3CEE8 8004C6E8 0000238E */  lw         $v1, 0x0($s1)
    /* 3CEEC 8004C6EC 1400428C */  lw         $v0, 0x14($v0)
    /* 3CEF0 8004C6F0 0C01638C */  lw         $v1, 0x10C($v1)
    /* 3CEF4 8004C6F4 4400508C */  lw         $s0, 0x44($v0)
    /* 3CEF8 8004C6F8 09F86000 */  jalr       $v1
    /* 3CEFC 8004C6FC 21300000 */   addu      $a2, $zero, $zero
    /* 3CF00 8004C700 1200B583 */  lb         $s5, 0x12($sp)
    /* 3CF04 8004C704 1300B683 */  lb         $s6, 0x13($sp)
    /* 3CF08 8004C708 12000286 */  lh         $v0, 0x12($s0)
    /* 3CF0C 8004C70C 12001296 */  lhu        $s2, 0x12($s0)
    /* 3CF10 8004C710 02004104 */  bgez       $v0, .Lfunc_8004C6A8_8004C71C
    /* 3CF14 8004C714 10001426 */   addiu     $s4, $s0, 0x10
    /* 3CF18 8004C718 00105226 */  addiu      $s2, $s2, 0x1000
  .Lfunc_8004C6A8_8004C71C:
    /* 3CF1C 8004C71C 0980053C */  lui        $a1, %hi(D_8008E98C)
    /* 3CF20 8004C720 8CE9A524 */  addiu      $a1, $a1, %lo(D_8008E98C)
    /* 3CF24 8004C724 0000A28C */  lw         $v0, 0x0($a1)
    /* 3CF28 8004C728 0400A38C */  lw         $v1, 0x4($a1)
    /* 3CF2C 8004C72C 0800A48C */  lw         $a0, 0x8($a1)
    /* 3CF30 8004C730 4000A2AF */  sw         $v0, 0x40($sp)
    /* 3CF34 8004C734 4400A3AF */  sw         $v1, 0x44($sp)
    /* 3CF38 8004C738 4800A4AF */  sw         $a0, 0x48($sp)
    /* 3CF3C 8004C73C 0C00A28C */  lw         $v0, 0xC($a1)
    /* 3CF40 8004C740 1000A38C */  lw         $v1, 0x10($a1)
    /* 3CF44 8004C744 1400A48C */  lw         $a0, 0x14($a1)
    /* 3CF48 8004C748 4C00A2AF */  sw         $v0, 0x4C($sp)
    /* 3CF4C 8004C74C 5000A3AF */  sw         $v1, 0x50($sp)
    /* 3CF50 8004C750 5400A4AF */  sw         $a0, 0x54($sp)
    /* 3CF54 8004C754 1800A28C */  lw         $v0, 0x18($a1)
    /* 3CF58 8004C758 1C00A38C */  lw         $v1, 0x1C($a1)
    /* 3CF5C 8004C75C 5800A2AF */  sw         $v0, 0x58($sp)
    /* 3CF60 8004C760 5C00A3AF */  sw         $v1, 0x5C($sp)
    /* 3CF64 8004C764 21208002 */  addu       $a0, $s4, $zero
    /* 3CF68 8004C768 4000B027 */  addiu      $s0, $sp, 0x40
    /* 3CF6C 8004C76C 5400A0AF */  sw         $zero, 0x54($sp)
    /* 3CF70 8004C770 5800A0AF */  sw         $zero, 0x58($sp)
    /* 3CF74 8004C774 7400228E */  lw         $v0, 0x74($s1)
    /* 3CF78 8004C778 21280002 */  addu       $a1, $s0, $zero
    /* 3CF7C 8004C77C 2C58000C */  jal        func_800160B0
    /* 3CF80 8004C780 5C00A2AF */   sw        $v0, 0x5C($sp)
    /* 3CF84 8004C784 21200002 */  addu       $a0, $s0, $zero
    /* 3CF88 8004C788 5400A527 */  addiu      $a1, $sp, 0x54
    /* 3CF8C 8004C78C 8655000C */  jal        func_80015618
    /* 3CF90 8004C790 2130A000 */   addu      $a2, $a1, $zero
    /* 3CF94 8004C794 00FE4226 */  addiu      $v0, $s2, -0x200
    /* 3CF98 8004C798 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 3CF9C 8004C79C 0004622C */  sltiu      $v0, $v1, 0x400
    /* 3CFA0 8004C7A0 05004014 */  bnez       $v0, .Lfunc_8004C6A8_8004C7B8
    /* 3CFA4 8004C7A4 00F64226 */   addiu     $v0, $s2, -0xA00
    /* 3CFA8 8004C7A8 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 3CFAC 8004C7AC 0004422C */  sltiu      $v0, $v0, 0x400
    /* 3CFB0 8004C7B0 1B004010 */  beqz       $v0, .Lfunc_8004C6A8_8004C820
    /* 3CFB4 8004C7B4 00FA4226 */   addiu     $v0, $s2, -0x600
  .Lfunc_8004C6A8_8004C7B8:
    /* 3CFB8 8004C7B8 5C00B38F */  lw         $s3, 0x5C($sp)
    /* 3CFBC 8004C7BC 80003EAE */  sw         $fp, 0x80($s1)
    /* 3CFC0 8004C7C0 840037AE */  sw         $s7, 0x84($s1)
    /* 3CFC4 8004C7C4 5400A28F */  lw         $v0, 0x54($sp)
    /* 3CFC8 8004C7C8 00000000 */  nop
    /* 3CFCC 8004C7CC 0300401C */  bgtz       $v0, .Lfunc_8004C6A8_8004C7DC
    /* 3CFD0 8004C7D0 2110A002 */   addu      $v0, $s5, $zero
    /* 3CFD4 8004C7D4 2310B702 */  subu       $v0, $s5, $s7
    /* 3CFD8 8004C7D8 01004224 */  addiu      $v0, $v0, 0x1
  .Lfunc_8004C6A8_8004C7DC:
    /* 3CFDC 8004C7DC 7C0022A6 */  sh         $v0, 0x7C($s1)
    /* 3CFE0 8004C7E0 5C00A28F */  lw         $v0, 0x5C($sp)
    /* 3CFE4 8004C7E4 00000000 */  nop
    /* 3CFE8 8004C7E8 06004018 */  blez       $v0, .Lfunc_8004C6A8_8004C804
    /* 3CFEC 8004C7EC 00000000 */   nop
    /* 3CFF0 8004C7F0 78002296 */  lhu        $v0, 0x78($s1)
    /* 3CFF4 8004C7F4 00000000 */  nop
    /* 3CFF8 8004C7F8 2310C202 */  subu       $v0, $s6, $v0
    /* 3CFFC 8004C7FC 05320108 */  j          .Lfunc_8004C6A8_8004C814
    /* 3D000 8004C800 FFFF4224 */   addiu     $v0, $v0, -0x1
  .Lfunc_8004C6A8_8004C804:
    /* 3D004 8004C804 78002296 */  lhu        $v0, 0x78($s1)
    /* 3D008 8004C808 00000000 */  nop
    /* 3D00C 8004C80C 2310C202 */  subu       $v0, $s6, $v0
    /* 3D010 8004C810 01004224 */  addiu      $v0, $v0, 0x1
  .Lfunc_8004C6A8_8004C814:
    /* 3D014 8004C814 7E0022A6 */  sh         $v0, 0x7E($s1)
    /* 3D018 8004C818 28320108 */  j          .Lfunc_8004C6A8_8004C8A0
    /* 3D01C 8004C81C 6000A0AF */   sw        $zero, 0x60($sp)
  .Lfunc_8004C6A8_8004C820:
    /* 3D020 8004C820 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 3D024 8004C824 0004422C */  sltiu      $v0, $v0, 0x400
    /* 3D028 8004C828 03004014 */  bnez       $v0, .Lfunc_8004C6A8_8004C838
    /* 3D02C 8004C82C 000C622C */   sltiu     $v0, $v1, 0xC00
    /* 3D030 8004C830 1B004014 */  bnez       $v0, .Lfunc_8004C6A8_8004C8A0
    /* 3D034 8004C834 00000000 */   nop
  .Lfunc_8004C6A8_8004C838:
    /* 3D038 8004C838 5400B38F */  lw         $s3, 0x54($sp)
    /* 3D03C 8004C83C 800037AE */  sw         $s7, 0x80($s1)
    /* 3D040 8004C840 84003EAE */  sw         $fp, 0x84($s1)
    /* 3D044 8004C844 5400A28F */  lw         $v0, 0x54($sp)
    /* 3D048 8004C848 00000000 */  nop
    /* 3D04C 8004C84C 06004018 */  blez       $v0, .Lfunc_8004C6A8_8004C868
    /* 3D050 8004C850 00000000 */   nop
    /* 3D054 8004C854 78002296 */  lhu        $v0, 0x78($s1)
    /* 3D058 8004C858 00000000 */  nop
    /* 3D05C 8004C85C 2310A202 */  subu       $v0, $s5, $v0
    /* 3D060 8004C860 1E320108 */  j          .Lfunc_8004C6A8_8004C878
    /* 3D064 8004C864 FFFF4224 */   addiu     $v0, $v0, -0x1
  .Lfunc_8004C6A8_8004C868:
    /* 3D068 8004C868 78002296 */  lhu        $v0, 0x78($s1)
    /* 3D06C 8004C86C 00000000 */  nop
    /* 3D070 8004C870 2310A202 */  subu       $v0, $s5, $v0
    /* 3D074 8004C874 01004224 */  addiu      $v0, $v0, 0x1
  .Lfunc_8004C6A8_8004C878:
    /* 3D078 8004C878 7C0022A6 */  sh         $v0, 0x7C($s1)
    /* 3D07C 8004C87C 5C00A28F */  lw         $v0, 0x5C($sp)
    /* 3D080 8004C880 00000000 */  nop
    /* 3D084 8004C884 0300401C */  bgtz       $v0, .Lfunc_8004C6A8_8004C894
    /* 3D088 8004C888 2110C002 */   addu      $v0, $s6, $zero
    /* 3D08C 8004C88C 2310DE02 */  subu       $v0, $s6, $fp
    /* 3D090 8004C890 01004224 */  addiu      $v0, $v0, 0x1
  .Lfunc_8004C6A8_8004C894:
    /* 3D094 8004C894 7E0022A6 */  sh         $v0, 0x7E($s1)
    /* 3D098 8004C898 01000734 */  ori        $a3, $zero, 0x1
    /* 3D09C 8004C89C 6000A7AF */  sw         $a3, 0x60($sp)
  .Lfunc_8004C6A8_8004C8A0:
    /* 3D0A0 8004C8A0 78002386 */  lh         $v1, 0x78($s1)
    /* 3D0A4 8004C8A4 C39A1300 */  sra        $s3, $s3, 11
    /* 3D0A8 8004C8A8 2A106302 */  slt        $v0, $s3, $v1
    /* 3D0AC 8004C8AC 02004014 */  bnez       $v0, .Lfunc_8004C6A8_8004C8B8
    /* 3D0B0 8004C8B0 00000000 */   nop
    /* 3D0B4 8004C8B4 FFFF7324 */  addiu      $s3, $v1, -0x1
  .Lfunc_8004C6A8_8004C8B8:
    /* 3D0B8 8004C8B8 23180300 */  negu       $v1, $v1
    /* 3D0BC 8004C8BC 2A107300 */  slt        $v0, $v1, $s3
    /* 3D0C0 8004C8C0 02004014 */  bnez       $v0, .Lfunc_8004C6A8_8004C8CC
    /* 3D0C4 8004C8C4 00000000 */   nop
    /* 3D0C8 8004C8C8 01007324 */  addiu      $s3, $v1, 0x1
  .Lfunc_8004C6A8_8004C8CC:
    /* 3D0CC 8004C8CC 6000A78F */  lw         $a3, 0x60($sp)
    /* 3D0D0 8004C8D0 00000000 */  nop
    /* 3D0D4 8004C8D4 0600E010 */  beqz       $a3, .Lfunc_8004C6A8_8004C8F0
    /* 3D0D8 8004C8D8 00000000 */   nop
    /* 3D0DC 8004C8DC 7C002296 */  lhu        $v0, 0x7C($s1)
    /* 3D0E0 8004C8E0 00000000 */  nop
    /* 3D0E4 8004C8E4 21105300 */  addu       $v0, $v0, $s3
    /* 3D0E8 8004C8E8 40320108 */  j          .Lfunc_8004C6A8_8004C900
    /* 3D0EC 8004C8EC 7C0022A6 */   sh        $v0, 0x7C($s1)
  .Lfunc_8004C6A8_8004C8F0:
    /* 3D0F0 8004C8F0 7E002296 */  lhu        $v0, 0x7E($s1)
    /* 3D0F4 8004C8F4 00000000 */  nop
    /* 3D0F8 8004C8F8 21105300 */  addu       $v0, $v0, $s3
    /* 3D0FC 8004C8FC 7E0022A6 */  sh         $v0, 0x7E($s1)
  .Lfunc_8004C6A8_8004C900:
    /* 3D100 8004C900 4F32010C */  jal        StageRenderer__InitTileGrid
    /* 3D104 8004C904 21202002 */   addu      $a0, $s1, $zero
    /* 3D108 8004C908 9400BF8F */  lw         $ra, 0x94($sp)
    /* 3D10C 8004C90C 9000BE8F */  lw         $fp, 0x90($sp)
    /* 3D110 8004C910 8C00B78F */  lw         $s7, 0x8C($sp)
    /* 3D114 8004C914 8800B68F */  lw         $s6, 0x88($sp)
    /* 3D118 8004C918 8400B58F */  lw         $s5, 0x84($sp)
    /* 3D11C 8004C91C 8000B48F */  lw         $s4, 0x80($sp)
    /* 3D120 8004C920 7C00B38F */  lw         $s3, 0x7C($sp)
    /* 3D124 8004C924 7800B28F */  lw         $s2, 0x78($sp)
    /* 3D128 8004C928 7400B18F */  lw         $s1, 0x74($sp)
    /* 3D12C 8004C92C 7000B08F */  lw         $s0, 0x70($sp)
    /* 3D130 8004C930 9800BD27 */  addiu      $sp, $sp, 0x98
    /* 3D134 8004C934 0800E003 */  jr         $ra
    /* 3D138 8004C938 00000000 */   nop
endlabel StageRenderer__CopyScrollRegion
