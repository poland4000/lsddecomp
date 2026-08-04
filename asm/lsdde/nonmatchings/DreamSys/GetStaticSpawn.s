.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching GetStaticSpawn, 0x13C

glabel GetStaticSpawn
    /* 4C950 8005C150 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 4C954 8005C154 2138E600 */  addu       $a3, $a3, $a2
    /* 4C958 8005C158 1800A38F */  lw         $v1, 0x18($sp)
    /* 4C95C 8005C15C 1C00AB8F */  lw         $t3, 0x1C($sp)
    /* 4C960 8005C160 0000E990 */  lbu        $t1, 0x0($a3)
    /* 4C964 8005C164 2000AD8F */  lw         $t5, 0x20($sp)
    /* 4C968 8005C168 44002011 */  beqz       $t1, .LGetStaticSpawn_8005C27C
    /* 4C96C 8005C16C 21508000 */   addu      $t2, $a0, $zero
    /* 4C970 8005C170 80100600 */  sll        $v0, $a2, 2
    /* 4C974 8005C174 21104300 */  addu       $v0, $v0, $v1
    /* 4C978 8005C178 0000488C */  lw         $t0, 0x0($v0)
    /* 4C97C 8005C17C 3F002011 */  beqz       $t1, .LGetStaticSpawn_8005C27C
    /* 4C980 8005C180 21380000 */   addu      $a3, $zero, $zero
    /* 4C984 8005C184 08800C3C */  lui        $t4, %hi(SPAWN_POS_ADJUST)
    /* 4C988 8005C188 307F8C25 */  addiu      $t4, $t4, %lo(SPAWN_POS_ADJUST)
    /* 4C98C 8005C18C 05000425 */  addiu      $a0, $t0, 0x5
  .LGetStaticSpawn_8005C190:
    /* 4C990 8005C190 0000A384 */  lh         $v1, 0x0($a1)
    /* 4C994 8005C194 00000285 */  lh         $v0, 0x0($t0)
    /* 4C998 8005C198 00000000 */  nop
    /* 4C99C 8005C19C 32006214 */  bne        $v1, $v0, .LGetStaticSpawn_8005C268
    /* 4C9A0 8005C1A0 00000000 */   nop
    /* 4C9A4 8005C1A4 0200A284 */  lh         $v0, 0x2($a1)
    /* 4C9A8 8005C1A8 FDFF8384 */  lh         $v1, -0x3($a0)
    /* 4C9AC 8005C1AC 00000000 */  nop
    /* 4C9B0 8005C1B0 03004310 */  beq        $v0, $v1, .LGetStaticSpawn_8005C1C0
    /* 4C9B4 8005C1B4 00000000 */   nop
    /* 4C9B8 8005C1B8 2B006104 */  bgez       $v1, .LGetStaticSpawn_8005C268
    /* 4C9BC 8005C1BC 00000000 */   nop
  .LGetStaticSpawn_8005C1C0:
    /* 4C9C0 8005C1C0 B40486AF */  sw         $a2, %gp_rel(gLinkSourceStage)($gp)
    /* 4C9C4 8005C1C4 B80487AF */  sw         $a3, %gp_rel(gLinkTriggerIndex)($gp)
    /* 4C9C8 8005C1C8 FFFF8380 */  lb         $v1, -0x1($a0)
    /* 4C9CC 8005C1CC 00000000 */  nop
    /* 4C9D0 8005C1D0 BC0483AF */  sw         $v1, %gp_rel(gLinkDestStage)($gp)
    /* 4C9D4 8005C1D4 80180300 */  sll        $v1, $v1, 2
    /* 4C9D8 8005C1D8 21186B00 */  addu       $v1, $v1, $t3
    /* 4C9DC 8005C1DC 00008490 */  lbu        $a0, 0x0($a0)
    /* 4C9E0 8005C1E0 0000638C */  lw         $v1, 0x0($v1)
    /* 4C9E4 8005C1E4 40100400 */  sll        $v0, $a0, 1
    /* 4C9E8 8005C1E8 21104400 */  addu       $v0, $v0, $a0
    /* 4C9EC 8005C1EC 40100200 */  sll        $v0, $v0, 1
    /* 4C9F0 8005C1F0 21384300 */  addu       $a3, $v0, $v1
    /* 4C9F4 8005C1F4 C00484AF */  sw         $a0, %gp_rel(gLinkSpawnIndex)($gp)
    /* 4C9F8 8005C1F8 0300E288 */  lwl        $v0, 0x3($a3)
    /* 4C9FC 8005C1FC 0000E298 */  lwr        $v0, 0x0($a3)
    /* 4CA00 8005C200 00000000 */  nop
    /* 4CA04 8005C204 030042A9 */  swl        $v0, 0x3($t2)
    /* 4CA08 8005C208 000042B9 */  swr        $v0, 0x0($t2)
    /* 4CA0C 8005C20C 0400E390 */  lbu        $v1, 0x4($a3)
    /* 4CA10 8005C210 00000000 */  nop
    /* 4CA14 8005C214 40100300 */  sll        $v0, $v1, 1
    /* 4CA18 8005C218 21104300 */  addu       $v0, $v0, $v1
    /* 4CA1C 8005C21C 40100200 */  sll        $v0, $v0, 1
    /* 4CA20 8005C220 21104C00 */  addu       $v0, $v0, $t4
    /* 4CA24 8005C224 03004388 */  lwl        $v1, 0x3($v0)
    /* 4CA28 8005C228 00004398 */  lwr        $v1, 0x0($v0)
    /* 4CA2C 8005C22C 04004484 */  lh         $a0, 0x4($v0)
    /* 4CA30 8005C230 070043A9 */  swl        $v1, 0x7($t2)
    /* 4CA34 8005C234 040043B9 */  swr        $v1, 0x4($t2)
    /* 4CA38 8005C238 080044A5 */  sh         $a0, 0x8($t2)
    /* 4CA3C 8005C23C 0700A011 */  beqz       $t5, .LGetStaticSpawn_8005C25C
    /* 4CA40 8005C240 00000000 */   nop
    /* 4CA44 8005C244 0500E280 */  lb         $v0, 0x5($a3)
    /* 4CA48 8005C248 AC04838F */  lw         $v1, %gp_rel(gpNavChallengesComplete)($gp)
    /* 4CA4C 8005C24C 00000000 */  nop
    /* 4CA50 8005C250 21186200 */  addu       $v1, $v1, $v0
    /* 4CA54 8005C254 01000234 */  ori        $v0, $zero, 0x1
    /* 4CA58 8005C258 000062A0 */  sb         $v0, 0x0($v1)
  .LGetStaticSpawn_8005C25C:
    /* 4CA5C 8005C25C BC04828F */  lw         $v0, %gp_rel(gLinkDestStage)($gp)
    /* 4CA60 8005C260 A0700108 */  j          .LGetStaticSpawn_8005C280
    /* 4CA64 8005C264 00000000 */   nop
  .LGetStaticSpawn_8005C268:
    /* 4CA68 8005C268 0100E724 */  addiu      $a3, $a3, 0x1
    /* 4CA6C 8005C26C 06008424 */  addiu      $a0, $a0, 0x6
    /* 4CA70 8005C270 2A10E900 */  slt        $v0, $a3, $t1
    /* 4CA74 8005C274 C6FF4014 */  bnez       $v0, .LGetStaticSpawn_8005C190
    /* 4CA78 8005C278 06000825 */   addiu     $t0, $t0, 0x6
  .LGetStaticSpawn_8005C27C:
    /* 4CA7C 8005C27C FFFF0224 */  addiu      $v0, $zero, -0x1
  .LGetStaticSpawn_8005C280:
    /* 4CA80 8005C280 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 4CA84 8005C284 0800E003 */  jr         $ra
    /* 4CA88 8005C288 00000000 */   nop
endlabel GetStaticSpawn
