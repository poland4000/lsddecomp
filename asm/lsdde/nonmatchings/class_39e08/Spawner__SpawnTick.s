.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching Spawner__SpawnTick, 0xF0

glabel Spawner__SpawnTick
    /* 45384 80054B84 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 45388 80054B88 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4538C 80054B8C 21888000 */  addu       $s1, $a0, $zero
    /* 45390 80054B90 7804848F */  lw         $a0, %gp_rel(gSpawnCounter)($gp)
    /* 45394 80054B94 1800BFAF */  sw         $ra, 0x18($sp)
    /* 45398 80054B98 30008004 */  bltz       $a0, .Lfunc_80054B84_80054C5C
    /* 4539C 80054B9C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 453A0 80054BA0 7404828F */  lw         $v0, %gp_rel(gSpawnListHead)($gp)
    /* 453A4 80054BA4 00000000 */  nop
    /* 453A8 80054BA8 0400458C */  lw         $a1, 0x4($v0)
    /* 453AC 80054BAC 0800468C */  lw         $a2, 0x8($v0)
    /* 453B0 80054BB0 0C00478C */  lw         $a3, 0xC($v0)
    /* 453B4 80054BB4 D75B010C */  jal        Spawner__SpawnEffect
    /* 453B8 80054BB8 00000000 */   nop
    /* 453BC 80054BBC 2025010C */  jal        rand
    /* 453C0 80054BC0 00000000 */   nop
    /* 453C4 80054BC4 03004230 */  andi       $v0, $v0, 0x3
    /* 453C8 80054BC8 02000434 */  ori        $a0, $zero, 0x2
    /* 453CC 80054BCC 7804838F */  lw         $v1, %gp_rel(gSpawnCounter)($gp)
    /* 453D0 80054BD0 0880013C */  lui        $at, %hi(D_80087324)
    /* 453D4 80054BD4 24732124 */  addiu      $at, $at, %lo(D_80087324)
    /* 453D8 80054BD8 21082200 */  addu       $at, $at, $v0
    /* 453DC 80054BDC 00002580 */  lb         $a1, 0x0($at)
    /* 453E0 80054BE0 03006414 */  bne        $v1, $a0, .Lfunc_80054B84_80054BF0
    /* 453E4 80054BE4 21800000 */   addu      $s0, $zero, $zero
    /* 453E8 80054BE8 10000234 */  ori        $v0, $zero, 0x10
    /* 453EC 80054BEC 23804500 */  subu       $s0, $v0, $a1
  .Lfunc_80054B84_80054BF0:
    /* 453F0 80054BF0 0980043C */  lui        $a0, %hi(gSpawnCounterBuf)
    /* 453F4 80054BF4 C8E08424 */  addiu      $a0, $a0, %lo(gSpawnCounterBuf)
    /* 453F8 80054BF8 2110B000 */  addu       $v0, $a1, $s0
    /* 453FC 80054BFC 800482AF */  sw         $v0, %gp_rel(gSpawnCounterBufSize)($gp)
    /* 45400 80054C00 6953010C */  jal        Spawner__SpawnGroupA
    /* 45404 80054C04 21302002 */   addu      $a2, $s1, $zero
    /* 45408 80054C08 21204000 */  addu       $a0, $v0, $zero
    /* 4540C 80054C0C 21280002 */  addu       $a1, $s0, $zero
    /* 45410 80054C10 CC53010C */  jal        Spawner__SpawnGroupB
    /* 45414 80054C14 21302002 */   addu      $a2, $s1, $zero
    /* 45418 80054C18 7804838F */  lw         $v1, %gp_rel(gSpawnCounter)($gp)
    /* 4541C 80054C1C 00000000 */  nop
    /* 45420 80054C20 05006014 */  bnez       $v1, .Lfunc_80054B84_80054C38
    /* 45424 80054C24 21204000 */   addu      $a0, $v0, $zero
    /* 45428 80054C28 F653010C */  jal        Spawner__SpawnGroupC
    /* 4542C 80054C2C 21282002 */   addu      $a1, $s1, $zero
    /* 45430 80054C30 13530108 */  j          .Lfunc_80054B84_80054C4C
    /* 45434 80054C34 00000000 */   nop
  .Lfunc_80054B84_80054C38:
    /* 45438 80054C38 02000234 */  ori        $v0, $zero, 0x2
    /* 4543C 80054C3C 07006214 */  bne        $v1, $v0, .Lfunc_80054B84_80054C5C
    /* 45440 80054C40 00000000 */   nop
    /* 45444 80054C44 4754010C */  jal        Spawner__SpawnGroupD
    /* 45448 80054C48 21282002 */   addu      $a1, $s1, $zero
  .Lfunc_80054B84_80054C4C:
    /* 4544C 80054C4C 8004828F */  lw         $v0, %gp_rel(gSpawnCounterBufSize)($gp)
    /* 45450 80054C50 00000000 */  nop
    /* 45454 80054C54 01004224 */  addiu      $v0, $v0, 0x1
    /* 45458 80054C58 800482AF */  sw         $v0, %gp_rel(gSpawnCounterBufSize)($gp)
  .Lfunc_80054B84_80054C5C:
    /* 4545C 80054C5C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 45460 80054C60 1400B18F */  lw         $s1, 0x14($sp)
    /* 45464 80054C64 1000B08F */  lw         $s0, 0x10($sp)
    /* 45468 80054C68 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4546C 80054C6C 0800E003 */  jr         $ra
    /* 45470 80054C70 00000000 */   nop
endlabel Spawner__SpawnTick
