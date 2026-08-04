.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001A380, 0x6C

glabel func_8001A380
    /* AB80 8001A380 2150A000 */  addu       $t2, $a1, $zero
    /* AB84 8001A384 1000A997 */  lhu        $t1, 0x10($sp)
    /* AB88 8001A388 2800828F */  lw         $v0, %gp_rel(gDisplayMode)($gp)
    /* AB8C 8001A38C 1400A597 */  lhu        $a1, 0x14($sp)
    /* AB90 8001A390 04004010 */  beqz       $v0, .Lfunc_8001A380_8001A3A4
    /* AB94 8001A394 21408000 */   addu      $t0, $a0, $zero
    /* AB98 8001A398 2C00848F */  lw         $a0, %gp_rel(gDisplayParam)($gp)
    /* AB9C 8001A39C EB680008 */  j          .Lfunc_8001A380_8001A3AC
    /* ABA0 8001A3A0 00000000 */   nop
  .Lfunc_8001A380_8001A3A4:
    /* ABA4 8001A3A4 0980043C */  lui        $a0, %hi(D_80090C18)
    /* ABA8 8001A3A8 180C848C */  lw         $a0, %lo(D_80090C18)($a0)
  .Lfunc_8001A380_8001A3AC:
    /* ABAC 8001A3AC 1C00828F */  lw         $v0, %gp_rel(D_8008A824)($gp)
    /* ABB0 8001A3B0 2000838F */  lw         $v1, %gp_rel(D_8008A828)($gp)
    /* ABB4 8001A3B4 000004AD */  sw         $a0, 0x0($t0)
    /* ABB8 8001A3B8 040002AD */  sw         $v0, 0x4($t0)
    /* ABBC 8001A3BC 0300E010 */  beqz       $a3, .Lfunc_8001A380_8001A3CC
    /* ABC0 8001A3C0 080003AD */   sw        $v1, 0x8($t0)
    /* ABC4 8001A3C4 0C0009A5 */  sh         $t1, 0xC($t0)
    /* ABC8 8001A3C8 0E0005A5 */  sh         $a1, 0xE($t0)
  .Lfunc_8001A380_8001A3CC:
    /* ABCC 8001A3CC 0300C288 */  lwl        $v0, 0x3($a2)
    /* ABD0 8001A3D0 0000C298 */  lwr        $v0, 0x0($a2)
    /* ABD4 8001A3D4 00000000 */  nop
    /* ABD8 8001A3D8 130002A9 */  swl        $v0, 0x13($t0)
    /* ABDC 8001A3DC 100002B9 */  swr        $v0, 0x10($t0)
    /* ABE0 8001A3E0 3000428D */  lw         $v0, 0x30($t2)
    /* ABE4 8001A3E4 0800E003 */  jr         $ra
    /* ABE8 8001A3E8 140002AD */   sw        $v0, 0x14($t0)
endlabel func_8001A380
