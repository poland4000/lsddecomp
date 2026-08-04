.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TestStaticLinkByStage, 0xEC

glabel TestStaticLinkByStage
    /* 4C53C 8005BD3C B404828F */  lw         $v0, %gp_rel(gLinkSourceStage)($gp)
    /* 4C540 8005BD40 B804838F */  lw         $v1, %gp_rel(gLinkTriggerIndex)($gp)
    /* 4C544 8005BD44 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4C548 8005BD48 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4C54C 8005BD4C 21908000 */  addu       $s2, $a0, $zero
    /* 4C550 8005BD50 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 4C554 8005BD54 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4C558 8005BD58 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4C55C 8005BD5C 80100200 */  sll        $v0, $v0, 2
    /* 4C560 8005BD60 0980013C */  lui        $at, %hi(gStageStaticLinkHeadings)
    /* 4C564 8005BD64 B8892124 */  addiu      $at, $at, %lo(gStageStaticLinkHeadings)
    /* 4C568 8005BD68 21082200 */  addu       $at, $at, $v0
    /* 4C56C 8005BD6C 0000228C */  lw         $v0, 0x0($at)
    /* 4C570 8005BD70 2188A000 */  addu       $s1, $a1, $zero
    /* 4C574 8005BD74 21104300 */  addu       $v0, $v0, $v1
    /* 4C578 8005BD78 00005090 */  lbu        $s0, 0x0($v0)
    /* 4C57C 8005BD7C 2120C000 */  addu       $a0, $a2, $zero
    /* 4C580 8005BD80 8A6F010C */  jal        IsFacingLinkDirection
    /* 4C584 8005BD84 21280002 */   addu      $a1, $s0, $zero
    /* 4C588 8005BD88 1F004010 */  beqz       $v0, .LTestStaticLinkByStage_8005BE08
    /* 4C58C 8005BD8C 00000000 */   nop
    /* 4C590 8005BD90 07002012 */  beqz       $s1, .LTestStaticLinkByStage_8005BDB0
    /* 4C594 8005BD94 40101000 */   sll       $v0, $s0, 1
    /* 4C598 8005BD98 21105000 */  addu       $v0, $v0, $s0
    /* 4C59C 8005BD9C 80100200 */  sll        $v0, $v0, 2
    /* 4C5A0 8005BDA0 0980033C */  lui        $v1, %hi(gStageLinkAngleBlocks)
    /* 4C5A4 8005BDA4 58876324 */  addiu      $v1, $v1, %lo(gStageLinkAngleBlocks)
    /* 4C5A8 8005BDA8 21104300 */  addu       $v0, $v0, $v1
    /* 4C5AC 8005BDAC 000022AE */  sw         $v0, 0x0($s1)
  .LTestStaticLinkByStage_8005BDB0:
    /* 4C5B0 8005BDB0 13004012 */  beqz       $s2, .LTestStaticLinkByStage_8005BE00
    /* 4C5B4 8005BDB4 00000000 */   nop
    /* 4C5B8 8005BDB8 BC04828F */  lw         $v0, %gp_rel(gLinkDestStage)($gp)
    /* 4C5BC 8005BDBC C004838F */  lw         $v1, %gp_rel(gLinkSpawnIndex)($gp)
    /* 4C5C0 8005BDC0 80100200 */  sll        $v0, $v0, 2
    /* 4C5C4 8005BDC4 0980013C */  lui        $at, %hi(D_80088858)
    /* 4C5C8 8005BDC8 58882124 */  addiu      $at, $at, %lo(D_80088858)
    /* 4C5CC 8005BDCC 21082200 */  addu       $at, $at, $v0
    /* 4C5D0 8005BDD0 0000228C */  lw         $v0, 0x0($at)
    /* 4C5D4 8005BDD4 00000000 */  nop
    /* 4C5D8 8005BDD8 21104300 */  addu       $v0, $v0, $v1
    /* 4C5DC 8005BDDC 00004390 */  lbu        $v1, 0x0($v0)
    /* 4C5E0 8005BDE0 00000000 */  nop
    /* 4C5E4 8005BDE4 40100300 */  sll        $v0, $v1, 1
    /* 4C5E8 8005BDE8 21104300 */  addu       $v0, $v0, $v1
    /* 4C5EC 8005BDEC 80100200 */  sll        $v0, $v0, 2
    /* 4C5F0 8005BDF0 0980033C */  lui        $v1, %hi(gStageLinkAngleBlocks)
    /* 4C5F4 8005BDF4 58876324 */  addiu      $v1, $v1, %lo(gStageLinkAngleBlocks)
    /* 4C5F8 8005BDF8 21104300 */  addu       $v0, $v0, $v1
    /* 4C5FC 8005BDFC 000042AE */  sw         $v0, 0x0($s2)
  .LTestStaticLinkByStage_8005BE00:
    /* 4C600 8005BE00 836F0108 */  j          .LTestStaticLinkByStage_8005BE0C
    /* 4C604 8005BE04 01000234 */   ori       $v0, $zero, 0x1
  .LTestStaticLinkByStage_8005BE08:
    /* 4C608 8005BE08 21100000 */  addu       $v0, $zero, $zero
  .LTestStaticLinkByStage_8005BE0C:
    /* 4C60C 8005BE0C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4C610 8005BE10 1800B28F */  lw         $s2, 0x18($sp)
    /* 4C614 8005BE14 1400B18F */  lw         $s1, 0x14($sp)
    /* 4C618 8005BE18 1000B08F */  lw         $s0, 0x10($sp)
    /* 4C61C 8005BE1C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4C620 8005BE20 0800E003 */  jr         $ra
    /* 4C624 8005BE24 00000000 */   nop
endlabel TestStaticLinkByStage
