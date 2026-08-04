.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003D2CC, 0xE4

glabel func_8003D2CC
    /* 2DACC 8003D2CC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2DAD0 8003D2D0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2DAD4 8003D2D4 21808000 */  addu       $s0, $a0, $zero
    /* 2DAD8 8003D2D8 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 2DADC 8003D2DC 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2DAE0 8003D2E0 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2DAE4 8003D2E4 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2DAE8 8003D2E8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2DAEC 8003D2EC 4C00028E */  lw         $v0, 0x4C($s0)
    /* 2DAF0 8003D2F0 00000000 */  nop
    /* 2DAF4 8003D2F4 25004010 */  beqz       $v0, .Lfunc_8003D2CC_8003D38C
    /* 2DAF8 8003D2F8 2198A000 */   addu      $s3, $a1, $zero
    /* 2DAFC 8003D2FC 5400128E */  lw         $s2, 0x54($s0)
    /* 2DB00 8003D300 5000028E */  lw         $v0, 0x50($s0)
    /* 2DB04 8003D304 5800148E */  lw         $s4, 0x58($s0)
    /* 2DB08 8003D308 1F004018 */  blez       $v0, .Lfunc_8003D2CC_8003D388
    /* 2DB0C 8003D30C 21880000 */   addu      $s1, $zero, $zero
  .Lfunc_8003D2CC_8003D310:
    /* 2DB10 8003D310 0000448E */  lw         $a0, 0x0($s2)
    /* 2DB14 8003D314 00000000 */  nop
    /* 2DB18 8003D318 0000828C */  lw         $v0, 0x0($a0)
    /* 2DB1C 8003D31C 00000000 */  nop
    /* 2DB20 8003D320 B800428C */  lw         $v0, 0xB8($v0)
    /* 2DB24 8003D324 00000000 */  nop
    /* 2DB28 8003D328 09F84000 */  jalr       $v0
    /* 2DB2C 8003D32C 21286002 */   addu      $a1, $s3, $zero
    /* 2DB30 8003D330 4C00028E */  lw         $v0, 0x4C($s0)
    /* 2DB34 8003D334 00000000 */  nop
    /* 2DB38 8003D338 2400438C */  lw         $v1, 0x24($v0)
    /* 2DB3C 8003D33C 80101100 */  sll        $v0, $s1, 2
    /* 2DB40 8003D340 21104300 */  addu       $v0, $v0, $v1
    /* 2DB44 8003D344 0000428C */  lw         $v0, 0x0($v0)
    /* 2DB48 8003D348 00000000 */  nop
    /* 2DB4C 8003D34C 08004010 */  beqz       $v0, .Lfunc_8003D2CC_8003D370
    /* 2DB50 8003D350 04005226 */   addiu     $s2, $s2, 0x4
    /* 2DB54 8003D354 0000028E */  lw         $v0, 0x0($s0)
    /* 2DB58 8003D358 21200002 */  addu       $a0, $s0, $zero
    /* 2DB5C 8003D35C 580011AE */  sw         $s1, 0x58($s0)
    /* 2DB60 8003D360 0401428C */  lw         $v0, 0x104($v0)
    /* 2DB64 8003D364 00000000 */  nop
    /* 2DB68 8003D368 09F84000 */  jalr       $v0
    /* 2DB6C 8003D36C 21286002 */   addu      $a1, $s3, $zero
  .Lfunc_8003D2CC_8003D370:
    /* 2DB70 8003D370 01003126 */  addiu      $s1, $s1, 0x1
    /* 2DB74 8003D374 5000028E */  lw         $v0, 0x50($s0)
    /* 2DB78 8003D378 00000000 */  nop
    /* 2DB7C 8003D37C 2A102202 */  slt        $v0, $s1, $v0
    /* 2DB80 8003D380 E3FF4014 */  bnez       $v0, .Lfunc_8003D2CC_8003D310
    /* 2DB84 8003D384 00000000 */   nop
  .Lfunc_8003D2CC_8003D388:
    /* 2DB88 8003D388 580014AE */  sw         $s4, 0x58($s0)
  .Lfunc_8003D2CC_8003D38C:
    /* 2DB8C 8003D38C 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 2DB90 8003D390 2800B48F */  lw         $s4, 0x28($sp)
    /* 2DB94 8003D394 2400B38F */  lw         $s3, 0x24($sp)
    /* 2DB98 8003D398 2000B28F */  lw         $s2, 0x20($sp)
    /* 2DB9C 8003D39C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2DBA0 8003D3A0 1800B08F */  lw         $s0, 0x18($sp)
    /* 2DBA4 8003D3A4 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2DBA8 8003D3A8 0800E003 */  jr         $ra
    /* 2DBAC 8003D3AC 00000000 */   nop
endlabel func_8003D2CC
