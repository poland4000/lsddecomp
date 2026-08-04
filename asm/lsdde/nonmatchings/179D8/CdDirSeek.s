.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdDirSeek, 0x2F4

glabel CdDirSeek
    /* 1C14C 8002B94C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1C150 8002B950 01000434 */  ori        $a0, $zero, 0x1
    /* 1C154 8002B954 10000534 */  ori        $a1, $zero, 0x10
    /* 1C158 8002B958 2000B0AF */  sw         $s0, 0x20($sp)
    /* 1C15C 8002B95C 0980103C */  lui        $s0, %hi(D_8008CFF0)
    /* 1C160 8002B960 F0CF1026 */  addiu      $s0, $s0, %lo(D_8008CFF0)
    /* 1C164 8002B964 21300002 */  addu       $a2, $s0, $zero
    /* 1C168 8002B968 3800BFAF */  sw         $ra, 0x38($sp)
    /* 1C16C 8002B96C 3400B5AF */  sw         $s5, 0x34($sp)
    /* 1C170 8002B970 3000B4AF */  sw         $s4, 0x30($sp)
    /* 1C174 8002B974 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 1C178 8002B978 2800B2AF */  sw         $s2, 0x28($sp)
    /* 1C17C 8002B97C EAAF000C */  jal        func_8002BFA8
    /* 1C180 8002B980 2400B1AF */   sw        $s1, 0x24($sp)
    /* 1C184 8002B984 21884000 */  addu       $s1, $v0, $zero
    /* 1C188 8002B988 01000234 */  ori        $v0, $zero, 0x1
    /* 1C18C 8002B98C 0C002212 */  beq        $s1, $v0, .Lfunc_8002B94C_8002B9C0
    /* 1C190 8002B990 01000426 */   addiu     $a0, $s0, 0x1
    /* 1C194 8002B994 0780023C */  lui        $v0, %hi(gCdDebugLevel)
    /* 1C198 8002B998 08D6428C */  lw         $v0, %lo(gCdDebugLevel)($v0)
    /* 1C19C 8002B99C 00000000 */  nop
    /* 1C1A0 8002B9A0 9D004018 */  blez       $v0, .Lfunc_8002B94C_8002BC18
    /* 1C1A4 8002B9A4 21100000 */   addu      $v0, $zero, $zero
    /* 1C1A8 8002B9A8 0180043C */  lui        $a0, %hi(D_80010B78)
    /* 1C1AC 8002B9AC 780B8424 */  addiu      $a0, $a0, %lo(D_80010B78)
    /* 1C1B0 8002B9B0 084B000C */  jal        DebugPrintf
    /* 1C1B4 8002B9B4 00000000 */   nop
    /* 1C1B8 8002B9B8 06AF0008 */  j          .Lfunc_8002B94C_8002BC18
    /* 1C1BC 8002B9BC 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_8002B94C_8002B9C0:
    /* 1C1C0 8002B9C0 0180053C */  lui        $a1, %hi(D_80010BA4)
    /* 1C1C4 8002B9C4 A40BA524 */  addiu      $a1, $a1, %lo(D_80010BA4)
    /* 1C1C8 8002B9C8 2BB0000C */  jal        Mem_Compare
    /* 1C1CC 8002B9CC 05000634 */   ori       $a2, $zero, 0x5
    /* 1C1D0 8002B9D0 0C004010 */  beqz       $v0, .Lfunc_8002B94C_8002BA04
    /* 1C1D4 8002B9D4 00000000 */   nop
    /* 1C1D8 8002B9D8 0780023C */  lui        $v0, %hi(gCdDebugLevel)
    /* 1C1DC 8002B9DC 08D6428C */  lw         $v0, %lo(gCdDebugLevel)($v0)
    /* 1C1E0 8002B9E0 00000000 */  nop
    /* 1C1E4 8002B9E4 8C004018 */  blez       $v0, .Lfunc_8002B94C_8002BC18
    /* 1C1E8 8002B9E8 21100000 */   addu      $v0, $zero, $zero
    /* 1C1EC 8002B9EC 0180043C */  lui        $a0, %hi(D_80010BAC)
    /* 1C1F0 8002B9F0 AC0B8424 */  addiu      $a0, $a0, %lo(D_80010BAC)
    /* 1C1F4 8002B9F4 084B000C */  jal        DebugPrintf
    /* 1C1F8 8002B9F8 00000000 */   nop
    /* 1C1FC 8002B9FC 06AF0008 */  j          .Lfunc_8002B94C_8002BC18
    /* 1C200 8002BA00 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_8002B94C_8002BA04:
    /* 1C204 8002BA04 0980053C */  lui        $a1, %hi(D_8008D07C)
    /* 1C208 8002BA08 7CD0A524 */  addiu      $a1, $a1, %lo(D_8008D07C)
    /* 1C20C 8002BA0C 0300A288 */  lwl        $v0, 0x3($a1)
    /* 1C210 8002BA10 0000A298 */  lwr        $v0, 0x0($a1)
    /* 1C214 8002BA14 00000000 */  nop
    /* 1C218 8002BA18 1B00A2AB */  swl        $v0, 0x1B($sp)
    /* 1C21C 8002BA1C 1800A2BB */  swr        $v0, 0x18($sp)
    /* 1C220 8002BA20 01000434 */  ori        $a0, $zero, 0x1
    /* 1C224 8002BA24 1800A58F */  lw         $a1, 0x18($sp)
    /* 1C228 8002BA28 EAAF000C */  jal        func_8002BFA8
    /* 1C22C 8002BA2C 21300002 */   addu      $a2, $s0, $zero
    /* 1C230 8002BA30 0D005110 */  beq        $v0, $s1, .Lfunc_8002B94C_8002BA68
    /* 1C234 8002BA34 00000000 */   nop
    /* 1C238 8002BA38 0780023C */  lui        $v0, %hi(gCdDebugLevel)
    /* 1C23C 8002BA3C 08D6428C */  lw         $v0, %lo(gCdDebugLevel)($v0)
    /* 1C240 8002BA40 00000000 */  nop
    /* 1C244 8002BA44 74004018 */  blez       $v0, .Lfunc_8002B94C_8002BC18
    /* 1C248 8002BA48 21100000 */   addu      $v0, $zero, $zero
    /* 1C24C 8002BA4C 1800A58F */  lw         $a1, 0x18($sp)
    /* 1C250 8002BA50 0180043C */  lui        $a0, %hi(D_80010BDC)
    /* 1C254 8002BA54 DC0B8424 */  addiu      $a0, $a0, %lo(D_80010BDC)
    /* 1C258 8002BA58 084B000C */  jal        DebugPrintf
    /* 1C25C 8002BA5C 00000000 */   nop
    /* 1C260 8002BA60 06AF0008 */  j          .Lfunc_8002B94C_8002BC18
    /* 1C264 8002BA64 21100000 */   addu      $v0, $zero, $zero
  .Lfunc_8002B94C_8002BA68:
    /* 1C268 8002BA68 0780023C */  lui        $v0, %hi(gCdDebugLevel)
    /* 1C26C 8002BA6C 08D6428C */  lw         $v0, %lo(gCdDebugLevel)($v0)
    /* 1C270 8002BA70 00000000 */  nop
    /* 1C274 8002BA74 02004228 */  slti       $v0, $v0, 0x2
    /* 1C278 8002BA78 05004014 */  bnez       $v0, .Lfunc_8002B94C_8002BA90
    /* 1C27C 8002BA7C 21880002 */   addu      $s1, $s0, $zero
    /* 1C280 8002BA80 0180043C */  lui        $a0, %hi(D_80010C00)
    /* 1C284 8002BA84 000C8424 */  addiu      $a0, $a0, %lo(D_80010C00)
    /* 1C288 8002BA88 084B000C */  jal        DebugPrintf
    /* 1C28C 8002BA8C 00000000 */   nop
  .Lfunc_8002B94C_8002BA90:
    /* 1C290 8002BA90 01000234 */  ori        $v0, $zero, 0x1
    /* 1C294 8002BA94 49004010 */  beqz       $v0, .Lfunc_8002B94C_8002BBBC
    /* 1C298 8002BA98 21380000 */   addu      $a3, $zero, $zero
    /* 1C29C 8002BA9C 0980143C */  lui        $s4, %hi(D_8008B9F8)
    /* 1C2A0 8002BAA0 F8B99426 */  addiu      $s4, $s4, %lo(D_8008B9F8)
    /* 1C2A4 8002BAA4 04009526 */  addiu      $s5, $s4, 0x4
  .Lfunc_8002B94C_8002BAA8:
    /* 1C2A8 8002BAA8 00002292 */  lbu        $v0, 0x0($s1)
    /* 1C2AC 8002BAAC 00000000 */  nop
    /* 1C2B0 8002BAB0 42004010 */  beqz       $v0, .Lfunc_8002B94C_8002BBBC
    /* 1C2B4 8002BAB4 40100700 */   sll       $v0, $a3, 1
    /* 1C2B8 8002BAB8 21104700 */  addu       $v0, $v0, $a3
    /* 1C2BC 8002BABC 80100200 */  sll        $v0, $v0, 2
    /* 1C2C0 8002BAC0 23104700 */  subu       $v0, $v0, $a3
    /* 1C2C4 8002BAC4 80800200 */  sll        $s0, $v0, 2
    /* 1C2C8 8002BAC8 21101402 */  addu       $v0, $s0, $s4
    /* 1C2CC 8002BACC 0500238A */  lwl        $v1, 0x5($s1)
    /* 1C2D0 8002BAD0 0200239A */  lwr        $v1, 0x2($s1)
    /* 1C2D4 8002BAD4 00000000 */  nop
    /* 1C2D8 8002BAD8 030043A8 */  swl        $v1, 0x3($v0)
    /* 1C2DC 8002BADC 000043B8 */  swr        $v1, 0x0($v0)
    /* 1C2E0 8002BAE0 21901502 */  addu       $s2, $s0, $s5
    /* 1C2E4 8002BAE4 21204002 */  addu       $a0, $s2, $zero
    /* 1C2E8 8002BAE8 06002292 */  lbu        $v0, 0x6($s1)
    /* 1C2EC 8002BAEC 0100F324 */  addiu      $s3, $a3, 0x1
    /* 1C2F0 8002BAF0 0980013C */  lui        $at, %hi(D_8008B9F0)
    /* 1C2F4 8002BAF4 F0B92124 */  addiu      $at, $at, %lo(D_8008B9F0)
    /* 1C2F8 8002BAF8 21083000 */  addu       $at, $at, $s0
    /* 1C2FC 8002BAFC 000033AC */  sw         $s3, 0x0($at)
    /* 1C300 8002BB00 0980013C */  lui        $at, %hi(D_8008B9F4)
    /* 1C304 8002BB04 F4B92124 */  addiu      $at, $at, %lo(D_8008B9F4)
    /* 1C308 8002BB08 21083000 */  addu       $at, $at, $s0
    /* 1C30C 8002BB0C 000022AC */  sw         $v0, 0x0($at)
    /* 1C310 8002BB10 00002692 */  lbu        $a2, 0x0($s1)
    /* 1C314 8002BB14 05B0000C */  jal        Mem_Copy
    /* 1C318 8002BB18 08002526 */   addiu     $a1, $s1, 0x8
    /* 1C31C 8002BB1C 00002292 */  lbu        $v0, 0x0($s1)
    /* 1C320 8002BB20 00000000 */  nop
    /* 1C324 8002BB24 21104202 */  addu       $v0, $s2, $v0
    /* 1C328 8002BB28 000040A0 */  sb         $zero, 0x0($v0)
    /* 1C32C 8002BB2C 00002392 */  lbu        $v1, 0x0($s1)
    /* 1C330 8002BB30 00000000 */  nop
    /* 1C334 8002BB34 01006230 */  andi       $v0, $v1, 0x1
    /* 1C338 8002BB38 08004224 */  addiu      $v0, $v0, 0x8
    /* 1C33C 8002BB3C 21186200 */  addu       $v1, $v1, $v0
    /* 1C340 8002BB40 0780023C */  lui        $v0, %hi(gCdDebugLevel)
    /* 1C344 8002BB44 08D6428C */  lw         $v0, %lo(gCdDebugLevel)($v0)
    /* 1C348 8002BB48 00000000 */  nop
    /* 1C34C 8002BB4C 02004228 */  slti       $v0, $v0, 0x2
    /* 1C350 8002BB50 11004014 */  bnez       $v0, .Lfunc_8002B94C_8002BB98
    /* 1C354 8002BB54 21882302 */   addu      $s1, $s1, $v1
    /* 1C358 8002BB58 0980013C */  lui        $at, %hi(D_8008B9F8)
    /* 1C35C 8002BB5C F8B92124 */  addiu      $at, $at, %lo(D_8008B9F8)
    /* 1C360 8002BB60 21083000 */  addu       $at, $at, $s0
    /* 1C364 8002BB64 0000258C */  lw         $a1, 0x0($at)
    /* 1C368 8002BB68 0980013C */  lui        $at, %hi(D_8008B9F0)
    /* 1C36C 8002BB6C F0B92124 */  addiu      $at, $at, %lo(D_8008B9F0)
    /* 1C370 8002BB70 21083000 */  addu       $at, $at, $s0
    /* 1C374 8002BB74 0000268C */  lw         $a2, 0x0($at)
    /* 1C378 8002BB78 0980013C */  lui        $at, %hi(D_8008B9F4)
    /* 1C37C 8002BB7C F4B92124 */  addiu      $at, $at, %lo(D_8008B9F4)
    /* 1C380 8002BB80 21083000 */  addu       $at, $at, $s0
    /* 1C384 8002BB84 0000278C */  lw         $a3, 0x0($at)
    /* 1C388 8002BB88 0180043C */  lui        $a0, %hi(D_80010C20)
    /* 1C38C 8002BB8C 200C8424 */  addiu      $a0, $a0, %lo(D_80010C20)
    /* 1C390 8002BB90 084B000C */  jal        DebugPrintf
    /* 1C394 8002BB94 1000B2AF */   sw        $s2, 0x10($sp)
  .Lfunc_8002B94C_8002BB98:
    /* 1C398 8002BB98 21386002 */  addu       $a3, $s3, $zero
    /* 1C39C 8002BB9C 8000E228 */  slti       $v0, $a3, 0x80
    /* 1C3A0 8002BBA0 11004010 */  beqz       $v0, .Lfunc_8002B94C_8002BBE8
    /* 1C3A4 8002BBA4 00000000 */   nop
    /* 1C3A8 8002BBA8 0980023C */  lui        $v0, %hi(gVoiceAttrTable)
    /* 1C3AC 8002BBAC F0D74224 */  addiu      $v0, $v0, %lo(gVoiceAttrTable)
    /* 1C3B0 8002BBB0 2B102202 */  sltu       $v0, $s1, $v0
    /* 1C3B4 8002BBB4 BCFF4014 */  bnez       $v0, .Lfunc_8002B94C_8002BAA8
    /* 1C3B8 8002BBB8 00000000 */   nop
  .Lfunc_8002B94C_8002BBBC:
    /* 1C3BC 8002BBBC 8000E228 */  slti       $v0, $a3, 0x80
    /* 1C3C0 8002BBC0 09004010 */  beqz       $v0, .Lfunc_8002B94C_8002BBE8
    /* 1C3C4 8002BBC4 40100700 */   sll       $v0, $a3, 1
    /* 1C3C8 8002BBC8 21104700 */  addu       $v0, $v0, $a3
    /* 1C3CC 8002BBCC 80100200 */  sll        $v0, $v0, 2
    /* 1C3D0 8002BBD0 23104700 */  subu       $v0, $v0, $a3
    /* 1C3D4 8002BBD4 80100200 */  sll        $v0, $v0, 2
    /* 1C3D8 8002BBD8 0980013C */  lui        $at, %hi(D_8008B9F4)
    /* 1C3DC 8002BBDC F4B92124 */  addiu      $at, $at, %lo(D_8008B9F4)
    /* 1C3E0 8002BBE0 21082200 */  addu       $at, $at, $v0
    /* 1C3E4 8002BBE4 000020AC */  sw         $zero, 0x0($at)
  .Lfunc_8002B94C_8002BBE8:
    /* 1C3E8 8002BBE8 0780023C */  lui        $v0, %hi(gCdDebugLevel)
    /* 1C3EC 8002BBEC 08D6428C */  lw         $v0, %lo(gCdDebugLevel)($v0)
    /* 1C3F0 8002BBF0 0780013C */  lui        $at, %hi(D_8006D938)
    /* 1C3F4 8002BBF4 38D920AC */  sw         $zero, %lo(D_8006D938)($at)
    /* 1C3F8 8002BBF8 02004228 */  slti       $v0, $v0, 0x2
    /* 1C3FC 8002BBFC 06004014 */  bnez       $v0, .Lfunc_8002B94C_8002BC18
    /* 1C400 8002BC00 01000234 */   ori       $v0, $zero, 0x1
    /* 1C404 8002BC04 0180043C */  lui        $a0, %hi(D_80010C34)
    /* 1C408 8002BC08 340C8424 */  addiu      $a0, $a0, %lo(D_80010C34)
    /* 1C40C 8002BC0C 084B000C */  jal        DebugPrintf
    /* 1C410 8002BC10 2128E000 */   addu      $a1, $a3, $zero
    /* 1C414 8002BC14 01000234 */  ori        $v0, $zero, 0x1
  .Lfunc_8002B94C_8002BC18:
    /* 1C418 8002BC18 3800BF8F */  lw         $ra, 0x38($sp)
    /* 1C41C 8002BC1C 3400B58F */  lw         $s5, 0x34($sp)
    /* 1C420 8002BC20 3000B48F */  lw         $s4, 0x30($sp)
    /* 1C424 8002BC24 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 1C428 8002BC28 2800B28F */  lw         $s2, 0x28($sp)
    /* 1C42C 8002BC2C 2400B18F */  lw         $s1, 0x24($sp)
    /* 1C430 8002BC30 2000B08F */  lw         $s0, 0x20($sp)
    /* 1C434 8002BC34 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 1C438 8002BC38 0800E003 */  jr         $ra
    /* 1C43C 8002BC3C 00000000 */   nop
endlabel CdDirSeek
