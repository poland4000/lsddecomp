.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TestTunnelLinkByStage, 0xEC

glabel TestTunnelLinkByStage
    /* 4C82C 8005C02C B404828F */  lw         $v0, %gp_rel(gLinkSourceStage)($gp)
    /* 4C830 8005C030 B804838F */  lw         $v1, %gp_rel(gLinkTriggerIndex)($gp)
    /* 4C834 8005C034 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4C838 8005C038 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4C83C 8005C03C 21908000 */  addu       $s2, $a0, $zero
    /* 4C840 8005C040 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 4C844 8005C044 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4C848 8005C048 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4C84C 8005C04C 80100200 */  sll        $v0, $v0, 2
    /* 4C850 8005C050 0980013C */  lui        $at, %hi(gStageTunnelLinkHeadings)
    /* 4C854 8005C054 848C2124 */  addiu      $at, $at, %lo(gStageTunnelLinkHeadings)
    /* 4C858 8005C058 21082200 */  addu       $at, $at, $v0
    /* 4C85C 8005C05C 0000228C */  lw         $v0, 0x0($at)
    /* 4C860 8005C060 2188A000 */  addu       $s1, $a1, $zero
    /* 4C864 8005C064 21104300 */  addu       $v0, $v0, $v1
    /* 4C868 8005C068 00005090 */  lbu        $s0, 0x0($v0)
    /* 4C86C 8005C06C 2120C000 */  addu       $a0, $a2, $zero
    /* 4C870 8005C070 8A6F010C */  jal        IsFacingLinkDirection
    /* 4C874 8005C074 21280002 */   addu      $a1, $s0, $zero
    /* 4C878 8005C078 1F004010 */  beqz       $v0, .LTestTunnelLinkByStage_8005C0F8
    /* 4C87C 8005C07C 00000000 */   nop
    /* 4C880 8005C080 07002012 */  beqz       $s1, .LTestTunnelLinkByStage_8005C0A0
    /* 4C884 8005C084 40101000 */   sll       $v0, $s0, 1
    /* 4C888 8005C088 21105000 */  addu       $v0, $v0, $s0
    /* 4C88C 8005C08C 80100200 */  sll        $v0, $v0, 2
    /* 4C890 8005C090 0980033C */  lui        $v1, %hi(gStageLinkAngleBlocks)
    /* 4C894 8005C094 58876324 */  addiu      $v1, $v1, %lo(gStageLinkAngleBlocks)
    /* 4C898 8005C098 21104300 */  addu       $v0, $v0, $v1
    /* 4C89C 8005C09C 000022AE */  sw         $v0, 0x0($s1)
  .LTestTunnelLinkByStage_8005C0A0:
    /* 4C8A0 8005C0A0 13004012 */  beqz       $s2, .LTestTunnelLinkByStage_8005C0F0
    /* 4C8A4 8005C0A4 00000000 */   nop
    /* 4C8A8 8005C0A8 BC04828F */  lw         $v0, %gp_rel(gLinkDestStage)($gp)
    /* 4C8AC 8005C0AC C004838F */  lw         $v1, %gp_rel(gLinkSpawnIndex)($gp)
    /* 4C8B0 8005C0B0 80100200 */  sll        $v0, $v0, 2
    /* 4C8B4 8005C0B4 0980013C */  lui        $at, %hi(D_80088BDC)
    /* 4C8B8 8005C0B8 DC8B2124 */  addiu      $at, $at, %lo(D_80088BDC)
    /* 4C8BC 8005C0BC 21082200 */  addu       $at, $at, $v0
    /* 4C8C0 8005C0C0 0000228C */  lw         $v0, 0x0($at)
    /* 4C8C4 8005C0C4 00000000 */  nop
    /* 4C8C8 8005C0C8 21104300 */  addu       $v0, $v0, $v1
    /* 4C8CC 8005C0CC 00004390 */  lbu        $v1, 0x0($v0)
    /* 4C8D0 8005C0D0 00000000 */  nop
    /* 4C8D4 8005C0D4 40100300 */  sll        $v0, $v1, 1
    /* 4C8D8 8005C0D8 21104300 */  addu       $v0, $v0, $v1
    /* 4C8DC 8005C0DC 80100200 */  sll        $v0, $v0, 2
    /* 4C8E0 8005C0E0 0980033C */  lui        $v1, %hi(gStageLinkAngleBlocks)
    /* 4C8E4 8005C0E4 58876324 */  addiu      $v1, $v1, %lo(gStageLinkAngleBlocks)
    /* 4C8E8 8005C0E8 21104300 */  addu       $v0, $v0, $v1
    /* 4C8EC 8005C0EC 000042AE */  sw         $v0, 0x0($s2)
  .LTestTunnelLinkByStage_8005C0F0:
    /* 4C8F0 8005C0F0 3F700108 */  j          .LTestTunnelLinkByStage_8005C0FC
    /* 4C8F4 8005C0F4 01000234 */   ori       $v0, $zero, 0x1
  .LTestTunnelLinkByStage_8005C0F8:
    /* 4C8F8 8005C0F8 21100000 */  addu       $v0, $zero, $zero
  .LTestTunnelLinkByStage_8005C0FC:
    /* 4C8FC 8005C0FC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4C900 8005C100 1800B28F */  lw         $s2, 0x18($sp)
    /* 4C904 8005C104 1400B18F */  lw         $s1, 0x14($sp)
    /* 4C908 8005C108 1000B08F */  lw         $s0, 0x10($sp)
    /* 4C90C 8005C10C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4C910 8005C110 0800E003 */  jr         $ra
    /* 4C914 8005C114 00000000 */   nop
endlabel TestTunnelLinkByStage
