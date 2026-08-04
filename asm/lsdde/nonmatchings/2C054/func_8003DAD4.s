.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003DAD4, 0x1D8

glabel func_8003DAD4
    /* 2E2D4 8003DAD4 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 2E2D8 8003DAD8 2800B2AF */  sw         $s2, 0x28($sp)
    /* 2E2DC 8003DADC 21908000 */  addu       $s2, $a0, $zero
    /* 2E2E0 8003DAE0 3800BFAF */  sw         $ra, 0x38($sp)
    /* 2E2E4 8003DAE4 3400B5AF */  sw         $s5, 0x34($sp)
    /* 2E2E8 8003DAE8 3000B4AF */  sw         $s4, 0x30($sp)
    /* 2E2EC 8003DAEC 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 2E2F0 8003DAF0 2400B1AF */  sw         $s1, 0x24($sp)
    /* 2E2F4 8003DAF4 2000B0AF */  sw         $s0, 0x20($sp)
    /* 2E2F8 8003DAF8 3C00438E */  lw         $v1, 0x3C($s2)
    /* 2E2FC 8003DAFC 02000234 */  ori        $v0, $zero, 0x2
    /* 2E300 8003DB00 60006214 */  bne        $v1, $v0, .Lfunc_8003DAD4_8003DC84
    /* 2E304 8003DB04 00000000 */   nop
    /* 2E308 8003DB08 5800558E */  lw         $s5, 0x58($s2)
    /* 2E30C 8003DB0C 4C00428E */  lw         $v0, 0x4C($s2)
    /* 2E310 8003DB10 6000438E */  lw         $v1, 0x60($s2)
    /* 2E314 8003DB14 80201500 */  sll        $a0, $s5, 2
    /* 2E318 8003DB18 2400428C */  lw         $v0, 0x24($v0)
    /* 2E31C 8003DB1C 21188300 */  addu       $v1, $a0, $v1
    /* 2E320 8003DB20 21108200 */  addu       $v0, $a0, $v0
    /* 2E324 8003DB24 0000428C */  lw         $v0, 0x0($v0)
    /* 2E328 8003DB28 0000748C */  lw         $s4, 0x0($v1)
    /* 2E32C 8003DB2C 1000438C */  lw         $v1, 0x10($v0)
    /* 2E330 8003DB30 1400458C */  lw         $a1, 0x14($v0)
    /* 2E334 8003DB34 1000A3AF */  sw         $v1, 0x10($sp)
    /* 2E338 8003DB38 1400A5AF */  sw         $a1, 0x14($sp)
    /* 2E33C 8003DB3C 80101400 */  sll        $v0, $s4, 2
    /* 2E340 8003DB40 21105400 */  addu       $v0, $v0, $s4
    /* 2E344 8003DB44 1400A38F */  lw         $v1, 0x14($sp)
    /* 2E348 8003DB48 40100200 */  sll        $v0, $v0, 1
    /* 2E34C 8003DB4C 23186200 */  subu       $v1, $v1, $v0
    /* 2E350 8003DB50 1400A3AF */  sw         $v1, 0x14($sp)
    /* 2E354 8003DB54 6400428E */  lw         $v0, 0x64($s2)
    /* 2E358 8003DB58 5C00438E */  lw         $v1, 0x5C($s2)
    /* 2E35C 8003DB5C 21108200 */  addu       $v0, $a0, $v0
    /* 2E360 8003DB60 21208300 */  addu       $a0, $a0, $v1
    /* 2E364 8003DB64 0000938C */  lw         $s3, 0x0($a0)
    /* 2E368 8003DB68 0000508C */  lw         $s0, 0x0($v0)
    /* 2E36C 8003DB6C 1800601A */  blez       $s3, .Lfunc_8003DAD4_8003DBD0
    /* 2E370 8003DB70 21880000 */   addu      $s1, $zero, $zero
  .Lfunc_8003DAD4_8003DB74:
    /* 2E374 8003DB74 0000048E */  lw         $a0, 0x0($s0)
    /* 2E378 8003DB78 00000000 */  nop
    /* 2E37C 8003DB7C 0000828C */  lw         $v0, 0x0($a0)
    /* 2E380 8003DB80 00000000 */  nop
    /* 2E384 8003DB84 6000428C */  lw         $v0, 0x60($v0)
    /* 2E388 8003DB88 00000000 */  nop
    /* 2E38C 8003DB8C 09F84000 */  jalr       $v0
    /* 2E390 8003DB90 21280000 */   addu      $a1, $zero, $zero
    /* 2E394 8003DB94 0000048E */  lw         $a0, 0x0($s0)
    /* 2E398 8003DB98 00000000 */  nop
    /* 2E39C 8003DB9C 0000828C */  lw         $v0, 0x0($a0)
    /* 2E3A0 8003DBA0 01003126 */  addiu      $s1, $s1, 0x1
    /* 2E3A4 8003DBA4 BC00428C */  lw         $v0, 0xBC($v0)
    /* 2E3A8 8003DBA8 00000000 */  nop
    /* 2E3AC 8003DBAC 09F84000 */  jalr       $v0
    /* 2E3B0 8003DBB0 1000A527 */   addiu     $a1, $sp, 0x10
    /* 2E3B4 8003DBB4 1400A28F */  lw         $v0, 0x14($sp)
    /* 2E3B8 8003DBB8 00000000 */  nop
    /* 2E3BC 8003DBBC 0A004224 */  addiu      $v0, $v0, 0xA
    /* 2E3C0 8003DBC0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 2E3C4 8003DBC4 2A103302 */  slt        $v0, $s1, $s3
    /* 2E3C8 8003DBC8 EAFF4014 */  bnez       $v0, .Lfunc_8003DAD4_8003DB74
    /* 2E3CC 8003DBCC 04001026 */   addiu     $s0, $s0, 0x4
  .Lfunc_8003DAD4_8003DBD0:
    /* 2E3D0 8003DBD0 6400428E */  lw         $v0, 0x64($s2)
    /* 2E3D4 8003DBD4 80881500 */  sll        $s1, $s5, 2
    /* 2E3D8 8003DBD8 21102202 */  addu       $v0, $s1, $v0
    /* 2E3DC 8003DBDC 0000438C */  lw         $v1, 0x0($v0)
    /* 2E3E0 8003DBE0 80101400 */  sll        $v0, $s4, 2
    /* 2E3E4 8003DBE4 21104300 */  addu       $v0, $v0, $v1
    /* 2E3E8 8003DBE8 0000508C */  lw         $s0, 0x0($v0)
    /* 2E3EC 8003DBEC 00000000 */  nop
    /* 2E3F0 8003DBF0 0000028E */  lw         $v0, 0x0($s0)
    /* 2E3F4 8003DBF4 01000534 */  ori        $a1, $zero, 0x1
    /* 2E3F8 8003DBF8 6000428C */  lw         $v0, 0x60($v0)
    /* 2E3FC 8003DBFC 00000000 */  nop
    /* 2E400 8003DC00 09F84000 */  jalr       $v0
    /* 2E404 8003DC04 21200002 */   addu      $a0, $s0, $zero
    /* 2E408 8003DC08 21200002 */  addu       $a0, $s0, $zero
    /* 2E40C 8003DC0C 0000828C */  lw         $v0, 0x0($a0)
    /* 2E410 8003DC10 4C00458E */  lw         $a1, 0x4C($s2)
    /* 2E414 8003DC14 B800428C */  lw         $v0, 0xB8($v0)
    /* 2E418 8003DC18 00000000 */  nop
    /* 2E41C 8003DC1C 09F84000 */  jalr       $v0
    /* 2E420 8003DC20 1000A524 */   addiu     $a1, $a1, 0x10
    /* 2E424 8003DC24 4C00428E */  lw         $v0, 0x4C($s2)
    /* 2E428 8003DC28 00000000 */  nop
    /* 2E42C 8003DC2C 2400428C */  lw         $v0, 0x24($v0)
    /* 2E430 8003DC30 00000000 */  nop
    /* 2E434 8003DC34 21882202 */  addu       $s1, $s1, $v0
    /* 2E438 8003DC38 0000228E */  lw         $v0, 0x0($s1)
    /* 2E43C 8003DC3C 00000000 */  nop
    /* 2E440 8003DC40 040054AC */  sw         $s4, 0x4($v0)
    /* 2E444 8003DC44 6800448E */  lw         $a0, 0x68($s2)
    /* 2E448 8003DC48 00000000 */  nop
    /* 2E44C 8003DC4C 0000828C */  lw         $v0, 0x0($a0)
    /* 2E450 8003DC50 00000000 */  nop
    /* 2E454 8003DC54 5000428C */  lw         $v0, 0x50($v0)
    /* 2E458 8003DC58 00000000 */  nop
    /* 2E45C 8003DC5C 09F84000 */  jalr       $v0
    /* 2E460 8003DC60 00000000 */   nop
    /* 2E464 8003DC64 21204002 */  addu       $a0, $s2, $zero
    /* 2E468 8003DC68 0000838C */  lw         $v1, 0x0($a0)
    /* 2E46C 8003DC6C 01000234 */  ori        $v0, $zero, 0x1
    /* 2E470 8003DC70 3C0082AC */  sw         $v0, 0x3C($a0)
    /* 2E474 8003DC74 6000628C */  lw         $v0, 0x60($v1)
    /* 2E478 8003DC78 00000000 */  nop
    /* 2E47C 8003DC7C 09F84000 */  jalr       $v0
    /* 2E480 8003DC80 10000534 */   ori       $a1, $zero, 0x10
  .Lfunc_8003DAD4_8003DC84:
    /* 2E484 8003DC84 3800BF8F */  lw         $ra, 0x38($sp)
    /* 2E488 8003DC88 3400B58F */  lw         $s5, 0x34($sp)
    /* 2E48C 8003DC8C 3000B48F */  lw         $s4, 0x30($sp)
    /* 2E490 8003DC90 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 2E494 8003DC94 2800B28F */  lw         $s2, 0x28($sp)
    /* 2E498 8003DC98 2400B18F */  lw         $s1, 0x24($sp)
    /* 2E49C 8003DC9C 2000B08F */  lw         $s0, 0x20($sp)
    /* 2E4A0 8003DCA0 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 2E4A4 8003DCA4 0800E003 */  jr         $ra
    /* 2E4A8 8003DCA8 00000000 */   nop
endlabel func_8003DAD4
