.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001D714, 0x23C

glabel func_8001D714
    /* DF14 8001D714 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* DF18 8001D718 8800B0AF */  sw         $s0, 0x88($sp)
    /* DF1C 8001D71C 21808000 */  addu       $s0, $a0, $zero
    /* DF20 8001D720 9800BFAF */  sw         $ra, 0x98($sp)
    /* DF24 8001D724 9400B3AF */  sw         $s3, 0x94($sp)
    /* DF28 8001D728 9000B2AF */  sw         $s2, 0x90($sp)
    /* DF2C 8001D72C 8C00B1AF */  sw         $s1, 0x8C($sp)
    /* DF30 8001D730 2000048E */  lw         $a0, 0x20($s0)
    /* DF34 8001D734 00000000 */  nop
    /* DF38 8001D738 7D008010 */  beqz       $a0, .Lfunc_8001D714_8001D930
    /* DF3C 8001D73C 2198A000 */   addu      $s3, $a1, $zero
    /* DF40 8001D740 E97C000C */  jal        func_8001F3A4
    /* DF44 8001D744 00000000 */   nop
    /* DF48 8001D748 79004010 */  beqz       $v0, .Lfunc_8001D714_8001D930
    /* DF4C 8001D74C 00000000 */   nop
    /* DF50 8001D750 0C00628E */  lw         $v0, 0xC($s3)
    /* DF54 8001D754 00000000 */  nop
    /* DF58 8001D758 04004010 */  beqz       $v0, .Lfunc_8001D714_8001D76C
    /* DF5C 8001D75C 21300000 */   addu      $a2, $zero, $zero
    /* DF60 8001D760 1400628E */  lw         $v0, 0x14($s3)
    /* DF64 8001D764 00000000 */  nop
    /* DF68 8001D768 38004624 */  addiu      $a2, $v0, 0x38
  .Lfunc_8001D714_8001D76C:
    /* DF6C 8001D76C 0000C28C */  lw         $v0, 0x0($a2)
    /* DF70 8001D770 0400C38C */  lw         $v1, 0x4($a2)
    /* DF74 8001D774 0800C48C */  lw         $a0, 0x8($a2)
    /* DF78 8001D778 1800A2AF */  sw         $v0, 0x18($sp)
    /* DF7C 8001D77C 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* DF80 8001D780 2000A4AF */  sw         $a0, 0x20($sp)
    /* DF84 8001D784 0C00028E */  lw         $v0, 0xC($s0)
    /* DF88 8001D788 00000000 */  nop
    /* DF8C 8001D78C 04004010 */  beqz       $v0, .Lfunc_8001D714_8001D7A0
    /* DF90 8001D790 21200000 */   addu      $a0, $zero, $zero
    /* DF94 8001D794 1400028E */  lw         $v0, 0x14($s0)
    /* DF98 8001D798 00000000 */  nop
    /* DF9C 8001D79C 38004424 */  addiu      $a0, $v0, 0x38
  .Lfunc_8001D714_8001D7A0:
    /* DFA0 8001D7A0 1800A38F */  lw         $v1, 0x18($sp)
    /* DFA4 8001D7A4 0000828C */  lw         $v0, 0x0($a0)
    /* DFA8 8001D7A8 00000000 */  nop
    /* DFAC 8001D7AC 23286200 */  subu       $a1, $v1, $v0
    /* DFB0 8001D7B0 1C00A28F */  lw         $v0, 0x1C($sp)
    /* DFB4 8001D7B4 1800A5AF */  sw         $a1, 0x18($sp)
    /* DFB8 8001D7B8 0400838C */  lw         $v1, 0x4($a0)
    /* DFBC 8001D7BC 00000000 */  nop
    /* DFC0 8001D7C0 23104300 */  subu       $v0, $v0, $v1
    /* DFC4 8001D7C4 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* DFC8 8001D7C8 2000A28F */  lw         $v0, 0x20($sp)
    /* DFCC 8001D7CC 0800838C */  lw         $v1, 0x8($a0)
    /* DFD0 8001D7D0 00000000 */  nop
    /* DFD4 8001D7D4 23104300 */  subu       $v0, $v0, $v1
    /* DFD8 8001D7D8 0600A004 */  bltz       $a1, .Lfunc_8001D714_8001D7F4
    /* DFDC 8001D7DC 2000A2AF */   sw        $v0, 0x20($sp)
    /* DFE0 8001D7E0 0140A228 */  slti       $v0, $a1, 0x4001
    /* DFE4 8001D7E4 52004010 */  beqz       $v0, .Lfunc_8001D714_8001D930
    /* DFE8 8001D7E8 00000000 */   nop
    /* DFEC 8001D7EC 02760008 */  j          .Lfunc_8001D714_8001D808
    /* DFF0 8001D7F0 00000000 */   nop
  .Lfunc_8001D714_8001D7F4:
    /* DFF4 8001D7F4 27100500 */  nor        $v0, $zero, $a1
    /* DFF8 8001D7F8 01004224 */  addiu      $v0, $v0, 0x1
    /* DFFC 8001D7FC 01404228 */  slti       $v0, $v0, 0x4001
    /* E000 8001D800 4B004010 */  beqz       $v0, .Lfunc_8001D714_8001D930
    /* E004 8001D804 00000000 */   nop
  .Lfunc_8001D714_8001D808:
    /* E008 8001D808 1C00A28F */  lw         $v0, 0x1C($sp)
    /* E00C 8001D80C 00000000 */  nop
    /* E010 8001D810 06004004 */  bltz       $v0, .Lfunc_8001D714_8001D82C
    /* E014 8001D814 00000000 */   nop
    /* E018 8001D818 01404228 */  slti       $v0, $v0, 0x4001
    /* E01C 8001D81C 44004010 */  beqz       $v0, .Lfunc_8001D714_8001D930
    /* E020 8001D820 00000000 */   nop
    /* E024 8001D824 10760008 */  j          .Lfunc_8001D714_8001D840
    /* E028 8001D828 00000000 */   nop
  .Lfunc_8001D714_8001D82C:
    /* E02C 8001D82C 27100200 */  nor        $v0, $zero, $v0
    /* E030 8001D830 01004224 */  addiu      $v0, $v0, 0x1
    /* E034 8001D834 01404228 */  slti       $v0, $v0, 0x4001
    /* E038 8001D838 3D004010 */  beqz       $v0, .Lfunc_8001D714_8001D930
    /* E03C 8001D83C 00000000 */   nop
  .Lfunc_8001D714_8001D840:
    /* E040 8001D840 2000A28F */  lw         $v0, 0x20($sp)
    /* E044 8001D844 00000000 */  nop
    /* E048 8001D848 06004004 */  bltz       $v0, .Lfunc_8001D714_8001D864
    /* E04C 8001D84C 00000000 */   nop
    /* E050 8001D850 01404228 */  slti       $v0, $v0, 0x4001
    /* E054 8001D854 08004014 */  bnez       $v0, .Lfunc_8001D714_8001D878
    /* E058 8001D858 21200002 */   addu      $a0, $s0, $zero
    /* E05C 8001D85C 4C760008 */  j          .Lfunc_8001D714_8001D930
    /* E060 8001D860 00000000 */   nop
  .Lfunc_8001D714_8001D864:
    /* E064 8001D864 27100200 */  nor        $v0, $zero, $v0
    /* E068 8001D868 01004224 */  addiu      $v0, $v0, 0x1
    /* E06C 8001D86C 01404228 */  slti       $v0, $v0, 0x4001
    /* E070 8001D870 2F004010 */  beqz       $v0, .Lfunc_8001D714_8001D930
    /* E074 8001D874 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_8001D714_8001D878:
    /* E078 8001D878 1800A297 */  lhu        $v0, 0x18($sp)
    /* E07C 8001D87C 1C00A397 */  lhu        $v1, 0x1C($sp)
    /* E080 8001D880 2000A597 */  lhu        $a1, 0x20($sp)
    /* E084 8001D884 2800B127 */  addiu      $s1, $sp, 0x28
    /* E088 8001D888 2800A2A7 */  sh         $v0, 0x28($sp)
    /* E08C 8001D88C 2A00A3A7 */  sh         $v1, 0x2A($sp)
    /* E090 8001D890 2C00A5A7 */  sh         $a1, 0x2C($sp)
    /* E094 8001D894 3000628E */  lw         $v0, 0x30($s3)
    /* E098 8001D898 5400A627 */  addiu      $a2, $sp, 0x54
    /* E09C 8001D89C 0000428C */  lw         $v0, 0x0($v0)
    /* E0A0 8001D8A0 21282002 */  addu       $a1, $s1, $zero
    /* E0A4 8001D8A4 5000A2AF */  sw         $v0, 0x50($sp)
    /* E0A8 8001D8A8 3000678E */  lw         $a3, 0x30($s3)
    /* E0AC 8001D8AC 0000038E */  lw         $v1, 0x0($s0)
    /* E0B0 8001D8B0 C0100200 */  sll        $v0, $v0, 3
    /* E0B4 8001D8B4 1000A2AF */  sw         $v0, 0x10($sp)
    /* E0B8 8001D8B8 A400628C */  lw         $v0, 0xA4($v1)
    /* E0BC 8001D8BC 00000000 */  nop
    /* E0C0 8001D8C0 09F84000 */  jalr       $v0
    /* E0C4 8001D8C4 0400E724 */   addiu     $a3, $a3, 0x4
    /* E0C8 8001D8C8 21200002 */  addu       $a0, $s0, $zero
    /* E0CC 8001D8CC 5000B227 */  addiu      $s2, $sp, 0x50
    /* E0D0 8001D8D0 0000028E */  lw         $v0, 0x0($s0)
    /* E0D4 8001D8D4 21284002 */  addu       $a1, $s2, $zero
    /* E0D8 8001D8D8 A800428C */  lw         $v0, 0xA8($v0)
    /* E0DC 8001D8DC 00000000 */  nop
    /* E0E0 8001D8E0 09F84000 */  jalr       $v0
    /* E0E4 8001D8E4 21302002 */   addu      $a2, $s1, $zero
    /* E0E8 8001D8E8 11004010 */  beqz       $v0, .Lfunc_8001D714_8001D930
    /* E0EC 8001D8EC 21200002 */   addu      $a0, $s0, $zero
    /* E0F0 8001D8F0 2C006526 */  addiu      $a1, $s3, 0x2C
    /* E0F4 8001D8F4 0000028E */  lw         $v0, 0x0($s0)
    /* E0F8 8001D8F8 21302002 */  addu       $a2, $s1, $zero
    /* E0FC 8001D8FC AC00428C */  lw         $v0, 0xAC($v0)
    /* E100 8001D900 00000000 */  nop
    /* E104 8001D904 09F84000 */  jalr       $v0
    /* E108 8001D908 21384002 */   addu      $a3, $s2, $zero
    /* E10C 8001D90C 08004010 */  beqz       $v0, .Lfunc_8001D714_8001D930
    /* E110 8001D910 21206002 */   addu      $a0, $s3, $zero
    /* E114 8001D914 280004AE */  sw         $a0, 0x28($s0)
    /* E118 8001D918 0000828C */  lw         $v0, 0x0($a0)
    /* E11C 8001D91C 21280002 */  addu       $a1, $s0, $zero
    /* E120 8001D920 3800428C */  lw         $v0, 0x38($v0)
    /* E124 8001D924 00000000 */  nop
    /* E128 8001D928 09F84000 */  jalr       $v0
    /* E12C 8001D92C 04000634 */   ori       $a2, $zero, 0x4
  .Lfunc_8001D714_8001D930:
    /* E130 8001D930 9800BF8F */  lw         $ra, 0x98($sp)
    /* E134 8001D934 9400B38F */  lw         $s3, 0x94($sp)
    /* E138 8001D938 9000B28F */  lw         $s2, 0x90($sp)
    /* E13C 8001D93C 8C00B18F */  lw         $s1, 0x8C($sp)
    /* E140 8001D940 8800B08F */  lw         $s0, 0x88($sp)
    /* E144 8001D944 A000BD27 */  addiu      $sp, $sp, 0xA0
    /* E148 8001D948 0800E003 */  jr         $ra
    /* E14C 8001D94C 00000000 */   nop
endlabel func_8001D714
