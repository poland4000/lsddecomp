.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SoundPlayer__Update, 0x1AC

glabel SoundPlayer__Update
    /* 1D090 8002C890 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 1D094 8002C894 3400B1AF */  sw         $s1, 0x34($sp)
    /* 1D098 8002C898 21888000 */  addu       $s1, $a0, $zero
    /* 1D09C 8002C89C 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* 1D0A0 8002C8A0 4800B6AF */  sw         $s6, 0x48($sp)
    /* 1D0A4 8002C8A4 4400B5AF */  sw         $s5, 0x44($sp)
    /* 1D0A8 8002C8A8 4000B4AF */  sw         $s4, 0x40($sp)
    /* 1D0AC 8002C8AC 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 1D0B0 8002C8B0 3800B2AF */  sw         $s2, 0x38($sp)
    /* 1D0B4 8002C8B4 3000B0AF */  sw         $s0, 0x30($sp)
    /* 1D0B8 8002C8B8 58002296 */  lhu        $v0, 0x58($s1)
    /* 1D0BC 8002C8BC 00000000 */  nop
    /* 1D0C0 8002C8C0 53004010 */  beqz       $v0, .Lfunc_8002C890_8002CA10
    /* 1D0C4 8002C8C4 00000000 */   nop
    /* 1D0C8 8002C8C8 0000228E */  lw         $v0, 0x0($s1)
    /* 1D0CC 8002C8CC 00000000 */  nop
    /* 1D0D0 8002C8D0 5C00428C */  lw         $v0, 0x5C($v0)
    /* 1D0D4 8002C8D4 00000000 */  nop
    /* 1D0D8 8002C8D8 09F84000 */  jalr       $v0
    /* 1D0DC 8002C8DC 00000000 */   nop
    /* 1D0E0 8002C8E0 54002486 */  lh         $a0, 0x54($s1)
    /* 1D0E4 8002C8E4 C000828F */  lw         $v0, %gp_rel(D_8008A8C8)($gp)
    /* 1D0E8 8002C8E8 2C002526 */  addiu      $a1, $s1, 0x2C
    /* 1D0EC 8002C8EC 5FCC000C */  jal        SndGetSlotState
    /* 1D0F0 8002C8F0 100022AE */   sw        $v0, 0x10($s1)
    /* 1D0F4 8002C8F4 00140200 */  sll        $v0, $v0, 16
    /* 1D0F8 8002C8F8 03140200 */  sra        $v0, $v0, 16
    /* 1D0FC 8002C8FC FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 1D100 8002C900 43004310 */  beq        $v0, $v1, .Lfunc_8002C890_8002CA10
    /* 1D104 8002C904 00000000 */   nop
    /* 1D108 8002C908 40002496 */  lhu        $a0, 0x40($s1)
    /* 1D10C 8002C90C CD5E000C */  jal        BMemAlloc
    /* 1D110 8002C910 40210400 */   sll       $a0, $a0, 5
    /* 1D114 8002C914 3E004010 */  beqz       $v0, .Lfunc_8002C890_8002CA10
    /* 1D118 8002C918 4C0022AE */   sw        $v0, 0x4C($s1)
    /* 1D11C 8002C91C 3E002496 */  lhu        $a0, 0x3E($s1)
    /* 1D120 8002C920 CD5E000C */  jal        BMemAlloc
    /* 1D124 8002C924 80200400 */   sll       $a0, $a0, 2
    /* 1D128 8002C928 39004010 */  beqz       $v0, .Lfunc_8002C890_8002CA10
    /* 1D12C 8002C92C 500022AE */   sw        $v0, 0x50($s1)
    /* 1D130 8002C930 3E002296 */  lhu        $v0, 0x3E($s1)
    /* 1D134 8002C934 4C00328E */  lw         $s2, 0x4C($s1)
    /* 1D138 8002C938 2A004018 */  blez       $v0, .Lfunc_8002C890_8002C9E4
    /* 1D13C 8002C93C 21A00000 */   addu      $s4, $zero, $zero
    /* 1D140 8002C940 FFFF1624 */  addiu      $s6, $zero, -0x1
    /* 1D144 8002C944 21980000 */  addu       $s3, $zero, $zero
    /* 1D148 8002C948 032C1300 */  sra        $a1, $s3, 16
  .Lfunc_8002C890_8002C94C:
    /* 1D14C 8002C94C 5000228E */  lw         $v0, 0x50($s1)
    /* 1D150 8002C950 80181400 */  sll        $v1, $s4, 2
    /* 1D154 8002C954 21186200 */  addu       $v1, $v1, $v0
    /* 1D158 8002C958 000072AC */  sw         $s2, 0x0($v1)
    /* 1D15C 8002C95C 54002486 */  lh         $a0, 0x54($s1)
    /* 1D160 8002C960 3CCD000C */  jal        SndSetSlotVolume
    /* 1D164 8002C964 1000A627 */   addiu     $a2, $sp, 0x10
    /* 1D168 8002C968 00140200 */  sll        $v0, $v0, 16
    /* 1D16C 8002C96C 03140200 */  sra        $v0, $v0, 16
    /* 1D170 8002C970 27005610 */  beq        $v0, $s6, .Lfunc_8002C890_8002CA10
    /* 1D174 8002C974 00000000 */   nop
    /* 1D178 8002C978 1000A293 */  lbu        $v0, 0x10($sp)
    /* 1D17C 8002C97C 00000000 */  nop
    /* 1D180 8002C980 11004018 */  blez       $v0, .Lfunc_8002C890_8002C9C8
    /* 1D184 8002C984 21800000 */   addu      $s0, $zero, $zero
    /* 1D188 8002C988 21A86002 */  addu       $s5, $s3, $zero
  .Lfunc_8002C890_8002C98C:
    /* 1D18C 8002C98C 54002486 */  lh         $a0, 0x54($s1)
    /* 1D190 8002C990 032C1500 */  sra        $a1, $s5, 16
    /* 1D194 8002C994 00341000 */  sll        $a2, $s0, 16
    /* 1D198 8002C998 03340600 */  sra        $a2, $a2, 16
    /* 1D19C 8002C99C 98CC000C */  jal        SndSetSlotParam
    /* 1D1A0 8002C9A0 21384002 */   addu      $a3, $s2, $zero
    /* 1D1A4 8002C9A4 00140200 */  sll        $v0, $v0, 16
    /* 1D1A8 8002C9A8 03140200 */  sra        $v0, $v0, 16
    /* 1D1AC 8002C9AC 18005610 */  beq        $v0, $s6, .Lfunc_8002C890_8002CA10
    /* 1D1B0 8002C9B0 01001026 */   addiu     $s0, $s0, 0x1
    /* 1D1B4 8002C9B4 1000A293 */  lbu        $v0, 0x10($sp)
    /* 1D1B8 8002C9B8 00000000 */  nop
    /* 1D1BC 8002C9BC 2A100202 */  slt        $v0, $s0, $v0
    /* 1D1C0 8002C9C0 F2FF4014 */  bnez       $v0, .Lfunc_8002C890_8002C98C
    /* 1D1C4 8002C9C4 20005226 */   addiu     $s2, $s2, 0x20
  .Lfunc_8002C890_8002C9C8:
    /* 1D1C8 8002C9C8 0100023C */  lui        $v0, (0x10000 >> 16)
    /* 1D1CC 8002C9CC 21986202 */  addu       $s3, $s3, $v0
    /* 1D1D0 8002C9D0 3E002296 */  lhu        $v0, 0x3E($s1)
    /* 1D1D4 8002C9D4 01009426 */  addiu      $s4, $s4, 0x1
    /* 1D1D8 8002C9D8 2A108202 */  slt        $v0, $s4, $v0
    /* 1D1DC 8002C9DC DBFF4014 */  bnez       $v0, .Lfunc_8002C890_8002C94C
    /* 1D1E0 8002C9E0 032C1300 */   sra       $a1, $s3, 16
  .Lfunc_8002C890_8002C9E4:
    /* 1D1E4 8002C9E4 B800828F */  lw         $v0, %gp_rel(D_8008A8C0)($gp)
    /* 1D1E8 8002C9E8 00000000 */  nop
    /* 1D1EC 8002C9EC 08004014 */  bnez       $v0, .Lfunc_8002C890_8002CA10
    /* 1D1F0 8002C9F0 00000000 */   nop
    /* 1D1F4 8002C9F4 66CA000C */  jal        SndTickEnable
    /* 1D1F8 8002C9F8 00000000 */   nop
    /* 1D1FC 8002C9FC 78000434 */  ori        $a0, $zero, 0x78
    /* 1D200 8002CA00 28CD000C */  jal        SndSetMasterVolume
    /* 1D204 8002CA04 78000534 */   ori       $a1, $zero, 0x78
    /* 1D208 8002CA08 01000234 */  ori        $v0, $zero, 0x1
    /* 1D20C 8002CA0C B80082AF */  sw         $v0, %gp_rel(D_8008A8C0)($gp)
  .Lfunc_8002C890_8002CA10:
    /* 1D210 8002CA10 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* 1D214 8002CA14 4800B68F */  lw         $s6, 0x48($sp)
    /* 1D218 8002CA18 4400B58F */  lw         $s5, 0x44($sp)
    /* 1D21C 8002CA1C 4000B48F */  lw         $s4, 0x40($sp)
    /* 1D220 8002CA20 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 1D224 8002CA24 3800B28F */  lw         $s2, 0x38($sp)
    /* 1D228 8002CA28 3400B18F */  lw         $s1, 0x34($sp)
    /* 1D22C 8002CA2C 3000B08F */  lw         $s0, 0x30($sp)
    /* 1D230 8002CA30 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 1D234 8002CA34 0800E003 */  jr         $ra
    /* 1D238 8002CA38 00000000 */   nop
endlabel SoundPlayer__Update
