.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching Spawner__Update, 0x134

glabel Spawner__Update
    /* 460F0 800558F0 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 460F4 800558F4 21188000 */  addu       $v1, $a0, $zero
    /* 460F8 800558F8 3000B4AF */  sw         $s4, 0x30($sp)
    /* 460FC 800558FC 21A0A000 */  addu       $s4, $a1, $zero
    /* 46100 80055900 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 46104 80055904 21980000 */  addu       $s3, $zero, $zero
    /* 46108 80055908 3400BFAF */  sw         $ra, 0x34($sp)
    /* 4610C 8005590C 2800B2AF */  sw         $s2, 0x28($sp)
    /* 46110 80055910 2400B1AF */  sw         $s1, 0x24($sp)
    /* 46114 80055914 2000B0AF */  sw         $s0, 0x20($sp)
    /* 46118 80055918 09006010 */  beqz       $v1, .Lfunc_800558F0_80055940
    /* 4611C 8005591C 4000A6AF */   sw        $a2, 0x40($sp)
    /* 46120 80055920 4403848F */  lw         $a0, %gp_rel(D_8008AB4C)($gp)
    /* 46124 80055924 1000B327 */  addiu      $s3, $sp, 0x10
    /* 46128 80055928 0000828C */  lw         $v0, 0x0($a0)
    /* 4612C 8005592C 21286002 */  addu       $a1, $s3, $zero
    /* 46130 80055930 E800428C */  lw         $v0, 0xE8($v0)
    /* 46134 80055934 00000000 */  nop
    /* 46138 80055938 09F84000 */  jalr       $v0
    /* 4613C 8005593C 21306000 */   addu      $a2, $v1, $zero
  .Lfunc_800558F0_80055940:
    /* 46140 80055940 6804838F */  lw         $v1, %gp_rel(D_8008AC70)($gp)
    /* 46144 80055944 00000000 */  nop
    /* 46148 80055948 01006224 */  addiu      $v0, $v1, 0x1
    /* 4614C 8005594C 680482AF */  sw         $v0, %gp_rel(D_8008AC70)($gp)
    /* 46150 80055950 07006014 */  bnez       $v1, .Lfunc_800558F0_80055970
    /* 46154 80055954 00000000 */   nop
    /* 46158 80055958 9851010C */  jal        Spawner__SpawnByIndex
    /* 4615C 8005595C 00000000 */   nop
    /* 46160 80055960 1452010C */  jal        Spawner__SpawnByIndex2
    /* 46164 80055964 00000000 */   nop
    /* 46168 80055968 E152010C */  jal        Spawner__SpawnTick
    /* 4616C 8005596C 21206002 */   addu      $a0, $s3, $zero
  .Lfunc_800558F0_80055970:
    /* 46170 80055970 6A52010C */  jal        Spawner__Method549A8
    /* 46174 80055974 21900000 */   addu      $s2, $zero, $zero
    /* 46178 80055978 1D53010C */  jal        Spawner__Method54C74
    /* 4617C 8005597C 21206002 */   addu      $a0, $s3, $zero
    /* 46180 80055980 8956010C */  jal        Spawner__ApplyLinkVariant
    /* 46184 80055984 21880000 */   addu      $s1, $zero, $zero
    /* 46188 80055988 900480AF */  sw         $zero, %gp_rel(D_8008AC98)($gp)
    /* 4618C 8005598C 0980103C */  lui        $s0, %hi(D_8008AC9C)
    /* 46190 80055990 9CAC1026 */  addiu      $s0, $s0, %lo(D_8008AC9C)
  .Lfunc_800558F0_80055994:
    /* 46194 80055994 0000048E */  lw         $a0, 0x0($s0)
    /* 46198 80055998 00000000 */  nop
    /* 4619C 8005599C 0A008010 */  beqz       $a0, .Lfunc_800558F0_800559C8
    /* 461A0 800559A0 21286002 */   addu      $a1, $s3, $zero
    /* 461A4 800559A4 0B56010C */  jal        Spawner__TryRemoveActor
    /* 461A8 800559A8 21308002 */   addu      $a2, $s4, $zero
    /* 461AC 800559AC 0E004014 */  bnez       $v0, .Lfunc_800558F0_800559E8
    /* 461B0 800559B0 00000000 */   nop
    /* 461B4 800559B4 0000048E */  lw         $a0, 0x0($s0)
    /* 461B8 800559B8 F755010C */  jal        Spawner__UnregisterActor
    /* 461BC 800559BC 00000000 */   nop
    /* 461C0 800559C0 7A560108 */  j          .Lfunc_800558F0_800559E8
    /* 461C4 800559C4 000002AE */   sw        $v0, 0x0($s0)
  .Lfunc_800558F0_800559C8:
    /* 461C8 800559C8 0980043C */  lui        $a0, %hi(D_8008E154)
    /* 461CC 800559CC 54E18424 */  addiu      $a0, $a0, %lo(D_8008E154)
    /* 461D0 800559D0 21202402 */  addu       $a0, $s1, $a0
    /* 461D4 800559D4 4000A527 */  addiu      $a1, $sp, 0x40
    /* 461D8 800559D8 21306002 */  addu       $a2, $s3, $zero
    /* 461DC 800559DC 5B55010C */  jal        Spawner__RegisterActor
    /* 461E0 800559E0 21388002 */   addu      $a3, $s4, $zero
    /* 461E4 800559E4 000002AE */  sw         $v0, 0x0($s0)
  .Lfunc_800558F0_800559E8:
    /* 461E8 800559E8 68003126 */  addiu      $s1, $s1, 0x68
    /* 461EC 800559EC 01005226 */  addiu      $s2, $s2, 0x1
    /* 461F0 800559F0 0200422A */  slti       $v0, $s2, 0x2
    /* 461F4 800559F4 E7FF4014 */  bnez       $v0, .Lfunc_800558F0_80055994
    /* 461F8 800559F8 04001026 */   addiu     $s0, $s0, 0x4
    /* 461FC 800559FC 4000A28F */  lw         $v0, 0x40($sp)
    /* 46200 80055A00 3400BF8F */  lw         $ra, 0x34($sp)
    /* 46204 80055A04 3000B48F */  lw         $s4, 0x30($sp)
    /* 46208 80055A08 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 4620C 80055A0C 2800B28F */  lw         $s2, 0x28($sp)
    /* 46210 80055A10 2400B18F */  lw         $s1, 0x24($sp)
    /* 46214 80055A14 2000B08F */  lw         $s0, 0x20($sp)
    /* 46218 80055A18 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 4621C 80055A1C 0800E003 */  jr         $ra
    /* 46220 80055A20 00000000 */   nop
endlabel Spawner__Update
