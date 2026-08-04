.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SoundPlayer__StopChannel, 0x6C

glabel SoundPlayer__StopChannel
    /* 1D024 8002C824 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1D028 8002C828 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1D02C 8002C82C 21808000 */  addu       $s0, $a0, $zero
    /* 1D030 8002C830 1400BFAF */  sw         $ra, 0x14($sp)
    /* 1D034 8002C834 5A000296 */  lhu        $v0, 0x5A($s0)
    /* 1D038 8002C838 00000000 */  nop
    /* 1D03C 8002C83C 0E004010 */  beqz       $v0, .Lfunc_8002C824_8002C878
    /* 1D040 8002C840 21180000 */   addu      $v1, $zero, $zero
    /* 1D044 8002C844 0D00A010 */  beqz       $a1, .Lfunc_8002C824_8002C87C
    /* 1D048 8002C848 21106000 */   addu      $v0, $v1, $zero
    /* 1D04C 8002C84C C3CD000C */  jal        SndGetVoiceStatus
    /* 1D050 8002C850 01000434 */   ori       $a0, $zero, 0x1
    /* 1D054 8002C854 0000028E */  lw         $v0, 0x0($s0)
    /* 1D058 8002C858 01000334 */  ori        $v1, $zero, 0x1
    /* 1D05C 8002C85C 5A0000A6 */  sh         $zero, 0x5A($s0)
    /* 1D060 8002C860 580003A6 */  sh         $v1, 0x58($s0)
    /* 1D064 8002C864 7C00428C */  lw         $v0, 0x7C($v0)
    /* 1D068 8002C868 00000000 */  nop
    /* 1D06C 8002C86C 09F84000 */  jalr       $v0
    /* 1D070 8002C870 21200002 */   addu      $a0, $s0, $zero
    /* 1D074 8002C874 01000334 */  ori        $v1, $zero, 0x1
  .Lfunc_8002C824_8002C878:
    /* 1D078 8002C878 21106000 */  addu       $v0, $v1, $zero
  .Lfunc_8002C824_8002C87C:
    /* 1D07C 8002C87C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 1D080 8002C880 1000B08F */  lw         $s0, 0x10($sp)
    /* 1D084 8002C884 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1D088 8002C888 0800E003 */  jr         $ra
    /* 1D08C 8002C88C 00000000 */   nop
endlabel SoundPlayer__StopChannel
