.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001DDF4, 0x31C

glabel func_8001DDF4
    /* E5F4 8001DDF4 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* E5F8 8001DDF8 9C00B5AF */  sw         $s5, 0x9C($sp)
    /* E5FC 8001DDFC 21A88000 */  addu       $s5, $a0, $zero
    /* E600 8001DE00 FF7F023C */  lui        $v0, (0x7FFFFFFF >> 16)
    /* E604 8001DE04 FFFF4234 */  ori        $v0, $v0, (0x7FFFFFFF & 0xFFFF)
    /* E608 8001DE08 8C00B1AF */  sw         $s1, 0x8C($sp)
    /* E60C 8001DE0C 5800A7AF */  sw         $a3, 0x58($sp)
    /* E610 8001DE10 0400F124 */  addiu      $s1, $a3, 0x4
    /* E614 8001DE14 1000E824 */  addiu      $t0, $a3, 0x10
    /* E618 8001DE18 1800A727 */  addiu      $a3, $sp, 0x18
    /* E61C 8001DE1C 2400A927 */  addiu      $t1, $sp, 0x24
    /* E620 8001DE20 4000A2AF */  sw         $v0, 0x40($sp)
    /* E624 8001DE24 2B10E900 */  sltu       $v0, $a3, $t1
    /* E628 8001DE28 AC00BFAF */  sw         $ra, 0xAC($sp)
    /* E62C 8001DE2C A800BEAF */  sw         $fp, 0xA8($sp)
    /* E630 8001DE30 A400B7AF */  sw         $s7, 0xA4($sp)
    /* E634 8001DE34 A000B6AF */  sw         $s6, 0xA0($sp)
    /* E638 8001DE38 9800B4AF */  sw         $s4, 0x98($sp)
    /* E63C 8001DE3C 9400B3AF */  sw         $s3, 0x94($sp)
    /* E640 8001DE40 9000B2AF */  sw         $s2, 0x90($sp)
    /* E644 8001DE44 8800B0AF */  sw         $s0, 0x88($sp)
    /* E648 8001DE48 4800A5AF */  sw         $a1, 0x48($sp)
    /* E64C 8001DE4C 1C004010 */  beqz       $v0, .Lfunc_8001DDF4_8001DEC0
    /* E650 8001DE50 5000A6AF */   sw        $a2, 0x50($sp)
    /* E654 8001DE54 5800AA8F */  lw         $t2, 0x58($sp)
    /* E658 8001DE58 1C00A627 */  addiu      $a2, $sp, 0x1C
    /* E65C 8001DE5C 14004525 */  addiu      $a1, $t2, 0x14
    /* E660 8001DE60 08004425 */  addiu      $a0, $t2, 0x8
  .Lfunc_8001DDF4_8001DE64:
    /* E664 8001DE64 00002286 */  lh         $v0, 0x0($s1)
    /* E668 8001DE68 18003126 */  addiu      $s1, $s1, 0x18
    /* E66C 8001DE6C 00000385 */  lh         $v1, 0x0($t0)
    /* E670 8001DE70 18000825 */  addiu      $t0, $t0, 0x18
    /* E674 8001DE74 21104300 */  addu       $v0, $v0, $v1
    /* E678 8001DE78 43100200 */  sra        $v0, $v0, 1
    /* E67C 8001DE7C 0000E2A4 */  sh         $v0, 0x0($a3)
    /* E680 8001DE80 FEFF8284 */  lh         $v0, -0x2($a0)
    /* E684 8001DE84 FEFFA384 */  lh         $v1, -0x2($a1)
    /* E688 8001DE88 0600E724 */  addiu      $a3, $a3, 0x6
    /* E68C 8001DE8C 21104300 */  addu       $v0, $v0, $v1
    /* E690 8001DE90 43100200 */  sra        $v0, $v0, 1
    /* E694 8001DE94 FEFFC2A4 */  sh         $v0, -0x2($a2)
    /* E698 8001DE98 00008284 */  lh         $v0, 0x0($a0)
    /* E69C 8001DE9C 18008424 */  addiu      $a0, $a0, 0x18
    /* E6A0 8001DEA0 0000A384 */  lh         $v1, 0x0($a1)
    /* E6A4 8001DEA4 1800A524 */  addiu      $a1, $a1, 0x18
    /* E6A8 8001DEA8 21104300 */  addu       $v0, $v0, $v1
    /* E6AC 8001DEAC 43100200 */  sra        $v0, $v0, 1
    /* E6B0 8001DEB0 0000C2A4 */  sh         $v0, 0x0($a2)
    /* E6B4 8001DEB4 2B10E900 */  sltu       $v0, $a3, $t1
    /* E6B8 8001DEB8 EAFF4014 */  bnez       $v0, .Lfunc_8001DDF4_8001DE64
    /* E6BC 8001DEBC 0600C624 */   addiu     $a2, $a2, 0x6
  .Lfunc_8001DDF4_8001DEC0:
    /* E6C0 8001DEC0 2000A48E */  lw         $a0, 0x20($s5)
    /* E6C4 8001DEC4 21A00000 */  addu       $s4, $zero, $zero
    /* E6C8 8001DEC8 E97C000C */  jal        func_8001F3A4
    /* E6CC 8001DECC 2C00A0AE */   sw        $zero, 0x2C($s5)
    /* E6D0 8001DED0 21900000 */  addu       $s2, $zero, $zero
    /* E6D4 8001DED4 28004018 */  blez       $v0, .Lfunc_8001DDF4_8001DF78
    /* E6D8 8001DED8 6000A2AF */   sw        $v0, 0x60($sp)
    /* E6DC 8001DEDC 1E00B027 */  addiu      $s0, $sp, 0x1E
    /* E6E0 8001DEE0 01001134 */  ori        $s1, $zero, 0x1
  .Lfunc_8001DDF4_8001DEE4:
    /* E6E4 8001DEE4 2000A48E */  lw         $a0, 0x20($s5)
    /* E6E8 8001DEE8 437D000C */  jal        func_8001F50C
    /* E6EC 8001DEEC 21288002 */   addu      $a1, $s4, $zero
    /* E6F0 8001DEF0 21200000 */  addu       $a0, $zero, $zero
    /* E6F4 8001DEF4 21284000 */  addu       $a1, $v0, $zero
    /* E6F8 8001DEF8 1800A627 */  addiu      $a2, $sp, 0x18
    /* E6FC 8001DEFC 4478000C */  jal        func_8001E110
    /* E700 8001DF00 21380002 */   addu      $a3, $s0, $zero
    /* E704 8001DF04 17004010 */  beqz       $v0, .Lfunc_8001DDF4_8001DF64
    /* E708 8001DF08 4000A527 */   addiu     $a1, $sp, 0x40
    /* E70C 8001DF0C 5000A68F */  lw         $a2, 0x50($sp)
    /* E710 8001DF10 1800A227 */  addiu      $v0, $sp, 0x18
    /* E714 8001DF14 1000A2AF */  sw         $v0, 0x10($sp)
    /* E718 8001DF18 1400B0AF */  sw         $s0, 0x14($sp)
    /* E71C 8001DF1C 2000A48E */  lw         $a0, 0x20($s5)
    /* E720 8001DF20 2E7E000C */  jal        func_8001F8B8
    /* E724 8001DF24 4400A727 */   addiu     $a3, $sp, 0x44
    /* E728 8001DF28 0E004010 */  beqz       $v0, .Lfunc_8001DDF4_8001DF64
    /* E72C 8001DF2C 00000000 */   nop
    /* E730 8001DF30 3000828F */  lw         $v0, %gp_rel(gSceneStateFlag)($gp)
    /* E734 8001DF34 00000000 */  nop
    /* E738 8001DF38 06004010 */  beqz       $v0, .Lfunc_8001DDF4_8001DF54
    /* E73C 8001DF3C 00000000 */   nop
    /* E740 8001DF40 4400A28F */  lw         $v0, 0x44($sp)
    /* E744 8001DF44 00000000 */  nop
    /* E748 8001DF48 01024228 */  slti       $v0, $v0, 0x201
    /* E74C 8001DF4C 05004014 */  bnez       $v0, .Lfunc_8001DDF4_8001DF64
    /* E750 8001DF50 00000000 */   nop
  .Lfunc_8001DDF4_8001DF54:
    /* E754 8001DF54 2C00A38E */  lw         $v1, 0x2C($s5)
    /* E758 8001DF58 04109102 */  sllv       $v0, $s1, $s4
    /* E75C 8001DF5C 25104300 */  or         $v0, $v0, $v1
    /* E760 8001DF60 2C00A2AE */  sw         $v0, 0x2C($s5)
  .Lfunc_8001DDF4_8001DF64:
    /* E764 8001DF64 6000AA8F */  lw         $t2, 0x60($sp)
    /* E768 8001DF68 01009426 */  addiu      $s4, $s4, 0x1
    /* E76C 8001DF6C 2A108A02 */  slt        $v0, $s4, $t2
    /* E770 8001DF70 DCFF4014 */  bnez       $v0, .Lfunc_8001DDF4_8001DEE4
    /* E774 8001DF74 00000000 */   nop
  .Lfunc_8001DDF4_8001DF78:
    /* E778 8001DF78 2C00A28E */  lw         $v0, 0x2C($s5)
    /* E77C 8001DF7C 00000000 */  nop
    /* E780 8001DF80 06004010 */  beqz       $v0, .Lfunc_8001DDF4_8001DF9C
    /* E784 8001DF84 01000234 */   ori       $v0, $zero, 0x1
    /* E788 8001DF88 4800AA8F */  lw         $t2, 0x48($sp)
    /* E78C 8001DF8C 53004012 */  beqz       $s2, .Lfunc_8001DDF4_8001E0DC
    /* E790 8001DF90 000042AD */   sw        $v0, 0x0($t2)
    /* E794 8001DF94 37780008 */  j          .Lfunc_8001DDF4_8001E0DC
    /* E798 8001DF98 02000234 */   ori       $v0, $zero, 0x2
  .Lfunc_8001DDF4_8001DF9C:
    /* E79C 8001DF9C 4800AA8F */  lw         $t2, 0x48($sp)
    /* E7A0 8001DFA0 00000000 */  nop
    /* E7A4 8001DFA4 000040AD */  sw         $zero, 0x0($t2)
    /* E7A8 8001DFA8 5800AA8F */  lw         $t2, 0x58($sp)
    /* E7AC 8001DFAC 00000000 */  nop
    /* E7B0 8001DFB0 00004A8D */  lw         $t2, 0x0($t2)
    /* E7B4 8001DFB4 00000000 */  nop
    /* E7B8 8001DFB8 6800AAAF */  sw         $t2, 0x68($sp)
    /* E7BC 8001DFBC 6000AA8F */  lw         $t2, 0x60($sp)
    /* E7C0 8001DFC0 00000000 */  nop
    /* E7C4 8001DFC4 40004019 */  blez       $t2, .Lfunc_8001DDF4_8001E0C8
    /* E7C8 8001DFC8 21A00000 */   addu      $s4, $zero, $zero
    /* E7CC 8001DFCC 21288002 */  addu       $a1, $s4, $zero
  .Lfunc_8001DDF4_8001DFD0:
    /* E7D0 8001DFD0 21980000 */  addu       $s3, $zero, $zero
    /* E7D4 8001DFD4 5800AA8F */  lw         $t2, 0x58($sp)
    /* E7D8 8001DFD8 2000A48E */  lw         $a0, 0x20($s5)
    /* E7DC 8001DFDC 437D000C */  jal        func_8001F50C
    /* E7E0 8001DFE0 04005125 */   addiu     $s1, $t2, 0x4
    /* E7E4 8001DFE4 6800AA8F */  lw         $t2, 0x68($sp)
    /* E7E8 8001DFE8 00000000 */  nop
    /* E7EC 8001DFEC 31004019 */  blez       $t2, .Lfunc_8001DDF4_8001E0B4
    /* E7F0 8001DFF0 21B04000 */   addu      $s6, $v0, $zero
    /* E7F4 8001DFF4 01000A34 */  ori        $t2, $zero, 0x1
    /* E7F8 8001DFF8 04F08A02 */  sllv       $fp, $t2, $s4
  .Lfunc_8001DDF4_8001DFFC:
    /* E7FC 8001DFFC 21900000 */  addu       $s2, $zero, $zero
    /* E800 8001E000 01000A34 */  ori        $t2, $zero, 0x1
    /* E804 8001E004 04B86A02 */  sllv       $s7, $t2, $s3
  .Lfunc_8001DDF4_8001E008:
    /* E808 8001E008 FFFF4226 */  addiu      $v0, $s2, -0x1
    /* E80C 8001E00C 0200422C */  sltiu      $v0, $v0, 0x2
    /* E810 8001E010 20004010 */  beqz       $v0, .Lfunc_8001DDF4_8001E094
    /* E814 8001E014 01005226 */   addiu     $s2, $s2, 0x1
    /* E818 8001E018 21200000 */  addu       $a0, $zero, $zero
    /* E81C 8001E01C 2128C002 */  addu       $a1, $s6, $zero
    /* E820 8001E020 21302002 */  addu       $a2, $s1, $zero
    /* E824 8001E024 18003026 */  addiu      $s0, $s1, 0x18
    /* E828 8001E028 4478000C */  jal        func_8001E110
    /* E82C 8001E02C 21380002 */   addu      $a3, $s0, $zero
    /* E830 8001E030 18004010 */  beqz       $v0, .Lfunc_8001DDF4_8001E094
    /* E834 8001E034 4000A527 */   addiu     $a1, $sp, 0x40
    /* E838 8001E038 5000A68F */  lw         $a2, 0x50($sp)
    /* E83C 8001E03C 1000B1AF */  sw         $s1, 0x10($sp)
    /* E840 8001E040 1400B0AF */  sw         $s0, 0x14($sp)
    /* E844 8001E044 2000A48E */  lw         $a0, 0x20($s5)
    /* E848 8001E048 2E7E000C */  jal        func_8001F8B8
    /* E84C 8001E04C 4400A727 */   addiu     $a3, $sp, 0x44
    /* E850 8001E050 11004010 */  beqz       $v0, .Lfunc_8001DDF4_8001E098
    /* E854 8001E054 0400422A */   slti      $v0, $s2, 0x4
    /* E858 8001E058 4400A28F */  lw         $v0, 0x44($sp)
    /* E85C 8001E05C 00000000 */  nop
    /* E860 8001E060 01024228 */  slti       $v0, $v0, 0x201
    /* E864 8001E064 0C004014 */  bnez       $v0, .Lfunc_8001DDF4_8001E098
    /* E868 8001E068 0400422A */   slti      $v0, $s2, 0x4
    /* E86C 8001E06C 2C00A28E */  lw         $v0, 0x2C($s5)
    /* E870 8001E070 00000000 */  nop
    /* E874 8001E074 2510C203 */  or         $v0, $fp, $v0
    /* E878 8001E078 2C00A2AE */  sw         $v0, 0x2C($s5)
    /* E87C 8001E07C 4800AA8F */  lw         $t2, 0x48($sp)
    /* E880 8001E080 00000000 */  nop
    /* E884 8001E084 0000428D */  lw         $v0, 0x0($t2)
    /* E888 8001E088 00000000 */  nop
    /* E88C 8001E08C 2510E202 */  or         $v0, $s7, $v0
    /* E890 8001E090 000042AD */  sw         $v0, 0x0($t2)
  .Lfunc_8001DDF4_8001E094:
    /* E894 8001E094 0400422A */  slti       $v0, $s2, 0x4
  .Lfunc_8001DDF4_8001E098:
    /* E898 8001E098 DBFF4014 */  bnez       $v0, .Lfunc_8001DDF4_8001E008
    /* E89C 8001E09C 06003126 */   addiu     $s1, $s1, 0x6
    /* E8A0 8001E0A0 6800AA8F */  lw         $t2, 0x68($sp)
    /* E8A4 8001E0A4 01007326 */  addiu      $s3, $s3, 0x1
    /* E8A8 8001E0A8 2A106A02 */  slt        $v0, $s3, $t2
    /* E8AC 8001E0AC D3FF4014 */  bnez       $v0, .Lfunc_8001DDF4_8001DFFC
    /* E8B0 8001E0B0 18003126 */   addiu     $s1, $s1, 0x18
  .Lfunc_8001DDF4_8001E0B4:
    /* E8B4 8001E0B4 6000AA8F */  lw         $t2, 0x60($sp)
    /* E8B8 8001E0B8 01009426 */  addiu      $s4, $s4, 0x1
    /* E8BC 8001E0BC 2A108A02 */  slt        $v0, $s4, $t2
    /* E8C0 8001E0C0 C3FF4014 */  bnez       $v0, .Lfunc_8001DDF4_8001DFD0
    /* E8C4 8001E0C4 21288002 */   addu      $a1, $s4, $zero
  .Lfunc_8001DDF4_8001E0C8:
    /* E8C8 8001E0C8 4800AA8F */  lw         $t2, 0x48($sp)
    /* E8CC 8001E0CC 00000000 */  nop
    /* E8D0 8001E0D0 0000428D */  lw         $v0, 0x0($t2)
    /* E8D4 8001E0D4 00000000 */  nop
    /* E8D8 8001E0D8 2B100200 */  sltu       $v0, $zero, $v0
  .Lfunc_8001DDF4_8001E0DC:
    /* E8DC 8001E0DC AC00BF8F */  lw         $ra, 0xAC($sp)
    /* E8E0 8001E0E0 A800BE8F */  lw         $fp, 0xA8($sp)
    /* E8E4 8001E0E4 A400B78F */  lw         $s7, 0xA4($sp)
    /* E8E8 8001E0E8 A000B68F */  lw         $s6, 0xA0($sp)
    /* E8EC 8001E0EC 9C00B58F */  lw         $s5, 0x9C($sp)
    /* E8F0 8001E0F0 9800B48F */  lw         $s4, 0x98($sp)
    /* E8F4 8001E0F4 9400B38F */  lw         $s3, 0x94($sp)
    /* E8F8 8001E0F8 9000B28F */  lw         $s2, 0x90($sp)
    /* E8FC 8001E0FC 8C00B18F */  lw         $s1, 0x8C($sp)
    /* E900 8001E100 8800B08F */  lw         $s0, 0x88($sp)
    /* E904 8001E104 B000BD27 */  addiu      $sp, $sp, 0xB0
    /* E908 8001E108 0800E003 */  jr         $ra
    /* E90C 8001E10C 00000000 */   nop
endlabel func_8001DDF4
