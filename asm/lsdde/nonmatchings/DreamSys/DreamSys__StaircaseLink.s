.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamSys__StaircaseLink, 0x160

glabel DreamSys__StaircaseLink
    /* 4B1CC 8005A9CC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 4B1D0 8005A9D0 2000B0AF */  sw         $s0, 0x20($sp)
    /* 4B1D4 8005A9D4 21808000 */  addu       $s0, $a0, $zero
    /* 4B1D8 8005A9D8 2800BFAF */  sw         $ra, 0x28($sp)
    /* 4B1DC 8005A9DC 2400B1AF */  sw         $s1, 0x24($sp)
    /* 4B1E0 8005A9E0 4400028E */  lw         $v0, 0x44($s0)
    /* 4B1E4 8005A9E4 00000000 */  nop
    /* 4B1E8 8005A9E8 49004014 */  bnez       $v0, .Lfunc_8005A9CC_8005AB10
    /* 4B1EC 8005A9EC 2188A000 */   addu      $s1, $a1, $zero
    /* 4B1F0 8005A9F0 1009028E */  lw         $v0, 0x910($s0)
    /* 4B1F4 8005A9F4 00000000 */  nop
    /* 4B1F8 8005A9F8 12004010 */  beqz       $v0, .Lfunc_8005A9CC_8005AA44
    /* 4B1FC 8005A9FC 00000000 */   nop
    /* 4B200 8005AA00 09F84000 */  jalr       $v0
    /* 4B204 8005AA04 00000000 */   nop
    /* 4B208 8005AA08 41004010 */  beqz       $v0, .Lfunc_8005A9CC_8005AB10
    /* 4B20C 8005AA0C 04000234 */   ori       $v0, $zero, 0x4
    /* 4B210 8005AA10 AC00038E */  lw         $v1, 0xAC($s0)
    /* 4B214 8005AA14 080900AE */  sw         $zero, 0x908($s0)
    /* 4B218 8005AA18 100900AE */  sw         $zero, 0x910($s0)
    /* 4B21C 8005AA1C 3C006214 */  bne        $v1, $v0, .Lfunc_8005A9CC_8005AB10
    /* 4B220 8005AA20 0C0900AE */   sw        $zero, 0x90C($s0)
    /* 4B224 8005AA24 0000028E */  lw         $v0, 0x0($s0)
    /* 4B228 8005AA28 00000000 */  nop
    /* 4B22C 8005AA2C 8801428C */  lw         $v0, 0x188($v0)
    /* 4B230 8005AA30 00000000 */  nop
    /* 4B234 8005AA34 09F84000 */  jalr       $v0
    /* 4B238 8005AA38 21200002 */   addu      $a0, $s0, $zero
    /* 4B23C 8005AA3C C56A0108 */  j          .Lfunc_8005A9CC_8005AB14
    /* 4B240 8005AA40 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_8005A9CC_8005AA44:
    /* 4B244 8005AA44 6C010426 */  addiu      $a0, $s0, 0x16C
    /* 4B248 8005AA48 6401068E */  lw         $a2, 0x164($s0)
    /* 4B24C 8005AA4C F76F010C */  jal        Test4StaircaseNodes
    /* 4B250 8005AA50 21282002 */   addu      $a1, $s1, $zero
    /* 4B254 8005AA54 2F004004 */  bltz       $v0, .Lfunc_8005A9CC_8005AB14
    /* 4B258 8005AA58 21100000 */   addu      $v0, $zero, $zero
    /* 4B25C 8005AA5C 21200002 */  addu       $a0, $s0, $zero
    /* 4B260 8005AA60 BE79000C */  jal        GetPlayerPosition
    /* 4B264 8005AA64 1000A527 */   addiu     $a1, $sp, 0x10
    /* 4B268 8005AA68 88080426 */  addiu      $a0, $s0, 0x888
    /* 4B26C 8005AA6C 84080526 */  addiu      $a1, $s0, 0x884
    /* 4B270 8005AA70 0B70010C */  jal        TestTunnelLinkByStage
    /* 4B274 8005AA74 1000A627 */   addiu     $a2, $sp, 0x10
    /* 4B278 8005AA78 26004010 */  beqz       $v0, .Lfunc_8005A9CC_8005AB14
    /* 4B27C 8005AA7C 21100000 */   addu      $v0, $zero, $zero
    /* 4B280 8005AA80 A800028E */  lw         $v0, 0xA8($s0)
    /* 4B284 8005AA84 00000000 */  nop
    /* 4B288 8005AA88 22004010 */  beqz       $v0, .Lfunc_8005A9CC_8005AB14
    /* 4B28C 8005AA8C 21100000 */   addu      $v0, $zero, $zero
    /* 4B290 8005AA90 0300228A */  lwl        $v0, 0x3($s1)
    /* 4B294 8005AA94 0000229A */  lwr        $v0, 0x0($s1)
    /* 4B298 8005AA98 0700238A */  lwl        $v1, 0x7($s1)
    /* 4B29C 8005AA9C 0400239A */  lwr        $v1, 0x4($s1)
    /* 4B2A0 8005AAA0 08002486 */  lh         $a0, 0x8($s1)
    /* 4B2A4 8005AAA4 1B0902AA */  swl        $v0, 0x91B($s0)
    /* 4B2A8 8005AAA8 180902BA */  swr        $v0, 0x918($s0)
    /* 4B2AC 8005AAAC 1F0903AA */  swl        $v1, 0x91F($s0)
    /* 4B2B0 8005AAB0 1C0903BA */  swr        $v1, 0x91C($s0)
    /* 4B2B4 8005AAB4 200904A6 */  sh         $a0, 0x920($s0)
    /* 4B2B8 8005AAB8 01000234 */  ori        $v0, $zero, 0x1
    /* 4B2BC 8005AABC 080902AE */  sw         $v0, 0x908($s0)
    /* 4B2C0 8005AAC0 0C0902AE */  sw         $v0, 0x90C($s0)
    /* 4B2C4 8005AAC4 4670010C */  jal        GetStageLinkByte
    /* 4B2C8 8005AAC8 140900AE */   sw        $zero, 0x914($s0)
    /* 4B2CC 8005AACC 80100200 */  sll        $v0, $v0, 2
    /* 4B2D0 8005AAD0 8408068E */  lw         $a2, 0x884($s0)
    /* 4B2D4 8005AAD4 0880013C */  lui        $at, %hi(gTunnelLinkSteppers)
    /* 4B2D8 8005AAD8 EC7E2124 */  addiu      $at, $at, %lo(gTunnelLinkSteppers)
    /* 4B2DC 8005AADC 21082200 */  addu       $at, $at, $v0
    /* 4B2E0 8005AAE0 0000228C */  lw         $v0, 0x0($at)
    /* 4B2E4 8005AAE4 0000038E */  lw         $v1, 0x0($s0)
    /* 4B2E8 8005AAE8 21200002 */  addu       $a0, $s0, $zero
    /* 4B2EC 8005AAEC 100902AE */  sw         $v0, 0x910($s0)
    /* 4B2F0 8005AAF0 4400628C */  lw         $v0, 0x44($v1)
    /* 4B2F4 8005AAF4 00000000 */  nop
    /* 4B2F8 8005AAF8 09F84000 */  jalr       $v0
    /* 4B2FC 8005AAFC 01000534 */   ori       $a1, $zero, 0x1
    /* 4B300 8005AB00 1009028E */  lw         $v0, 0x910($s0)
    /* 4B304 8005AB04 00000000 */  nop
    /* 4B308 8005AB08 09F84000 */  jalr       $v0
    /* 4B30C 8005AB0C 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_8005A9CC_8005AB10:
    /* 4B310 8005AB10 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_8005A9CC_8005AB14:
    /* 4B314 8005AB14 2800BF8F */  lw         $ra, 0x28($sp)
    /* 4B318 8005AB18 2400B18F */  lw         $s1, 0x24($sp)
    /* 4B31C 8005AB1C 2000B08F */  lw         $s0, 0x20($sp)
    /* 4B320 8005AB20 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 4B324 8005AB24 0800E003 */  jr         $ra
    /* 4B328 8005AB28 00000000 */   nop
endlabel DreamSys__StaircaseLink
