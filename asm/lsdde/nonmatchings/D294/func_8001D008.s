.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001D008, 0xE4

glabel func_8001D008
    /* D808 8001D008 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* D80C 8001D00C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* D810 8001D010 21988000 */  addu       $s3, $a0, $zero
    /* D814 8001D014 1000B0AF */  sw         $s0, 0x10($sp)
    /* D818 8001D018 2180A000 */  addu       $s0, $a1, $zero
    /* D81C 8001D01C 1400B1AF */  sw         $s1, 0x14($sp)
    /* D820 8001D020 2188C000 */  addu       $s1, $a2, $zero
    /* D824 8001D024 21202002 */  addu       $a0, $s1, $zero
    /* D828 8001D028 2000BFAF */  sw         $ra, 0x20($sp)
    /* D82C 8001D02C 217B000C */  jal        FixedDiv
    /* D830 8001D030 1800B2AF */   sw        $s2, 0x18($sp)
    /* D834 8001D034 04002426 */  addiu      $a0, $s1, 0x4
    /* D838 8001D038 217B000C */  jal        FixedDiv
    /* D83C 8001D03C 21904000 */   addu      $s2, $v0, $zero
    /* D840 8001D040 08002426 */  addiu      $a0, $s1, 0x8
    /* D844 8001D044 217B000C */  jal        FixedDiv
    /* D848 8001D048 21884000 */   addu      $s1, $v0, $zero
    /* D84C 8001D04C 1400638E */  lw         $v1, 0x14($s3)
    /* D850 8001D050 00000000 */  nop
    /* D854 8001D054 4400648C */  lw         $a0, 0x44($v1)
    /* D858 8001D058 0A000012 */  beqz       $s0, .Lfunc_8001D008_8001D084
    /* D85C 8001D05C 21284000 */   addu      $a1, $v0, $zero
    /* D860 8001D060 00141200 */  sll        $v0, $s2, 16
    /* D864 8001D064 03140200 */  sra        $v0, $v0, 16
    /* D868 8001D068 000082AC */  sw         $v0, 0x0($a0)
    /* D86C 8001D06C 00141100 */  sll        $v0, $s1, 16
    /* D870 8001D070 03140200 */  sra        $v0, $v0, 16
    /* D874 8001D074 040082AC */  sw         $v0, 0x4($a0)
    /* D878 8001D078 00140500 */  sll        $v0, $a1, 16
    /* D87C 8001D07C 2F740008 */  j          .Lfunc_8001D008_8001D0BC
    /* D880 8001D080 03140200 */   sra       $v0, $v0, 16
  .Lfunc_8001D008_8001D084:
    /* D884 8001D084 00141200 */  sll        $v0, $s2, 16
    /* D888 8001D088 0000838C */  lw         $v1, 0x0($a0)
    /* D88C 8001D08C 03140200 */  sra        $v0, $v0, 16
    /* D890 8001D090 21104300 */  addu       $v0, $v0, $v1
    /* D894 8001D094 000082AC */  sw         $v0, 0x0($a0)
    /* D898 8001D098 00141100 */  sll        $v0, $s1, 16
    /* D89C 8001D09C 0400838C */  lw         $v1, 0x4($a0)
    /* D8A0 8001D0A0 03140200 */  sra        $v0, $v0, 16
    /* D8A4 8001D0A4 21104300 */  addu       $v0, $v0, $v1
    /* D8A8 8001D0A8 040082AC */  sw         $v0, 0x4($a0)
    /* D8AC 8001D0AC 00140500 */  sll        $v0, $a1, 16
    /* D8B0 8001D0B0 0800838C */  lw         $v1, 0x8($a0)
    /* D8B4 8001D0B4 03140200 */  sra        $v0, $v0, 16
    /* D8B8 8001D0B8 21104300 */  addu       $v0, $v0, $v1
  .Lfunc_8001D008_8001D0BC:
    /* D8BC 8001D0BC 080082AC */  sw         $v0, 0x8($a0)
    /* D8C0 8001D0C0 1400628E */  lw         $v0, 0x14($s3)
    /* D8C4 8001D0C4 00000000 */  nop
    /* D8C8 8001D0C8 000040AC */  sw         $zero, 0x0($v0)
    /* D8CC 8001D0CC 2000BF8F */  lw         $ra, 0x20($sp)
    /* D8D0 8001D0D0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* D8D4 8001D0D4 1800B28F */  lw         $s2, 0x18($sp)
    /* D8D8 8001D0D8 1400B18F */  lw         $s1, 0x14($sp)
    /* D8DC 8001D0DC 1000B08F */  lw         $s0, 0x10($sp)
    /* D8E0 8001D0E0 2800BD27 */  addiu      $sp, $sp, 0x28
    /* D8E4 8001D0E4 0800E003 */  jr         $ra
    /* D8E8 8001D0E8 00000000 */   nop
endlabel func_8001D008
