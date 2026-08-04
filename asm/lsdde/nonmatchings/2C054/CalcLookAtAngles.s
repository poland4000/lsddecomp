.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CalcLookAtAngles, 0x3C8

glabel CalcLookAtAngles
    /* 2FAAC 8003F2AC 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* 2FAB0 8003F2B0 B000B4AF */  sw         $s4, 0xB0($sp)
    /* 2FAB4 8003F2B4 21A08000 */  addu       $s4, $a0, $zero
    /* 2FAB8 8003F2B8 B400B5AF */  sw         $s5, 0xB4($sp)
    /* 2FABC 8003F2BC 0980153C */  lui        $s5, %hi(D_8008E9B0)
    /* 2FAC0 8003F2C0 B0E9B526 */  addiu      $s5, $s5, %lo(D_8008E9B0)
    /* 2FAC4 8003F2C4 B800BFAF */  sw         $ra, 0xB8($sp)
    /* 2FAC8 8003F2C8 AC00B3AF */  sw         $s3, 0xAC($sp)
    /* 2FACC 8003F2CC A800B2AF */  sw         $s2, 0xA8($sp)
    /* 2FAD0 8003F2D0 A400B1AF */  sw         $s1, 0xA4($sp)
    /* 2FAD4 8003F2D4 A000B0AF */  sw         $s0, 0xA0($sp)
    /* 2FAD8 8003F2D8 0980053C */  lui        $a1, %hi(D_8008E9DC)
    /* 2FADC 8003F2DC DCE9A524 */  addiu      $a1, $a1, %lo(D_8008E9DC)
    /* 2FAE0 8003F2E0 0000A28C */  lw         $v0, 0x0($a1)
    /* 2FAE4 8003F2E4 0400A38C */  lw         $v1, 0x4($a1)
    /* 2FAE8 8003F2E8 0800A48C */  lw         $a0, 0x8($a1)
    /* 2FAEC 8003F2EC 0000A2AE */  sw         $v0, 0x0($s5)
    /* 2FAF0 8003F2F0 0400A3AE */  sw         $v1, 0x4($s5)
    /* 2FAF4 8003F2F4 0800A4AE */  sw         $a0, 0x8($s5)
    /* 2FAF8 8003F2F8 0C00A28C */  lw         $v0, 0xC($a1)
    /* 2FAFC 8003F2FC 1000A38C */  lw         $v1, 0x10($a1)
    /* 2FB00 8003F300 1400A48C */  lw         $a0, 0x14($a1)
    /* 2FB04 8003F304 0C00A2AE */  sw         $v0, 0xC($s5)
    /* 2FB08 8003F308 1000A3AE */  sw         $v1, 0x10($s5)
    /* 2FB0C 8003F30C 1400A4AE */  sw         $a0, 0x14($s5)
    /* 2FB10 8003F310 1800A28C */  lw         $v0, 0x18($a1)
    /* 2FB14 8003F314 1C00A38C */  lw         $v1, 0x1C($a1)
    /* 2FB18 8003F318 1800A2AE */  sw         $v0, 0x18($s5)
    /* 2FB1C 8003F31C 1C00A3AE */  sw         $v1, 0x1C($s5)
    /* 2FB20 8003F320 1800858E */  lw         $a1, 0x18($s4)
    /* 2FB24 8003F324 2120A002 */  addu       $a0, $s5, $zero
    /* 2FB28 8003F328 6351000C */  jal        RotateMatrixY
    /* 2FB2C 8003F32C 23280500 */   negu      $a1, $a1
    /* 2FB30 8003F330 21208002 */  addu       $a0, $s4, $zero
    /* 2FB34 8003F334 9DFD000C */  jal        NormalizeBounds
    /* 2FB38 8003F338 1000A527 */   addiu     $a1, $sp, 0x10
    /* 2FB3C 8003F33C 1C00A28F */  lw         $v0, 0x1C($sp)
    /* 2FB40 8003F340 1000A38F */  lw         $v1, 0x10($sp)
    /* 2FB44 8003F344 00000000 */  nop
    /* 2FB48 8003F348 23104300 */  subu       $v0, $v0, $v1
    /* 2FB4C 8003F34C 18004200 */  mult       $v0, $v0
    /* 2FB50 8003F350 2000A28F */  lw         $v0, 0x20($sp)
    /* 2FB54 8003F354 1400A38F */  lw         $v1, 0x14($sp)
    /* 2FB58 8003F358 12280000 */  mflo       $a1
    /* 2FB5C 8003F35C 23104300 */  subu       $v0, $v0, $v1
    /* 2FB60 8003F360 18004200 */  mult       $v0, $v0
    /* 2FB64 8003F364 1800A38F */  lw         $v1, 0x18($sp)
    /* 2FB68 8003F368 2400A28F */  lw         $v0, 0x24($sp)
    /* 2FB6C 8003F36C 12200000 */  mflo       $a0
    /* 2FB70 8003F370 23104300 */  subu       $v0, $v0, $v1
    /* 2FB74 8003F374 18004200 */  mult       $v0, $v0
    /* 2FB78 8003F378 2128A400 */  addu       $a1, $a1, $a0
    /* 2FB7C 8003F37C 12200000 */  mflo       $a0
    /* 2FB80 8003F380 7081000C */  jal        Sqrt
    /* 2FB84 8003F384 2120A400 */   addu      $a0, $a1, $a0
    /* 2FB88 8003F388 21904000 */  addu       $s2, $v0, $zero
    /* 2FB8C 8003F38C AF004012 */  beqz       $s2, .Lfunc_8003F2AC_8003F64C
    /* 2FB90 8003F390 01000234 */   ori       $v0, $zero, 0x1
    /* 2FB94 8003F394 1400A38F */  lw         $v1, 0x14($sp)
    /* 2FB98 8003F398 2000A28F */  lw         $v0, 0x20($sp)
    /* 2FB9C 8003F39C 00000000 */  nop
    /* 2FBA0 8003F3A0 23886200 */  subu       $s1, $v1, $v0
    /* 2FBA4 8003F3A4 00831100 */  sll        $s0, $s1, 12
    /* 2FBA8 8003F3A8 1A001202 */  div        $zero, $s0, $s2
    /* 2FBAC 8003F3AC 02004016 */  bnez       $s2, .Lfunc_8003F2AC_8003F3B8
    /* 2FBB0 8003F3B0 00000000 */   nop
    /* 2FBB4 8003F3B4 0D000700 */  break      7
  .Lfunc_8003F2AC_8003F3B8:
    /* 2FBB8 8003F3B8 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 2FBBC 8003F3BC 04004116 */  bne        $s2, $at, .Lfunc_8003F2AC_8003F3D0
    /* 2FBC0 8003F3C0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2FBC4 8003F3C4 02000116 */  bne        $s0, $at, .Lfunc_8003F2AC_8003F3D0
    /* 2FBC8 8003F3C8 00000000 */   nop
    /* 2FBCC 8003F3CC 0D000600 */  break      6
  .Lfunc_8003F2AC_8003F3D0:
    /* 2FBD0 8003F3D0 12800000 */  mflo       $s0
    /* 2FBD4 8003F3D4 1C00A28F */  lw         $v0, 0x1C($sp)
    /* 2FBD8 8003F3D8 1000A38F */  lw         $v1, 0x10($sp)
    /* 2FBDC 8003F3DC 00000000 */  nop
    /* 2FBE0 8003F3E0 23104300 */  subu       $v0, $v0, $v1
    /* 2FBE4 8003F3E4 18004200 */  mult       $v0, $v0
    /* 2FBE8 8003F3E8 2400A28F */  lw         $v0, 0x24($sp)
    /* 2FBEC 8003F3EC 1800A38F */  lw         $v1, 0x18($sp)
    /* 2FBF0 8003F3F0 12280000 */  mflo       $a1
    /* 2FBF4 8003F3F4 23104300 */  subu       $v0, $v0, $v1
    /* 2FBF8 8003F3F8 18004200 */  mult       $v0, $v0
    /* 2FBFC 8003F3FC 12200000 */  mflo       $a0
    /* 2FC00 8003F400 2120A400 */  addu       $a0, $a1, $a0
    /* 2FC04 8003F404 7081000C */  jal        Sqrt
    /* 2FC08 8003F408 23801000 */   negu      $s0, $s0
    /* 2FC0C 8003F40C 21884000 */  addu       $s1, $v0, $zero
    /* 2FC10 8003F410 00331100 */  sll        $a2, $s1, 12
    /* 2FC14 8003F414 1A00D200 */  div        $zero, $a2, $s2
    /* 2FC18 8003F418 02004016 */  bnez       $s2, .Lfunc_8003F2AC_8003F424
    /* 2FC1C 8003F41C 00000000 */   nop
    /* 2FC20 8003F420 0D000700 */  break      7
  .Lfunc_8003F2AC_8003F424:
    /* 2FC24 8003F424 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 2FC28 8003F428 04004116 */  bne        $s2, $at, .Lfunc_8003F2AC_8003F43C
    /* 2FC2C 8003F42C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2FC30 8003F430 0200C114 */  bne        $a2, $at, .Lfunc_8003F2AC_8003F43C
    /* 2FC34 8003F434 00000000 */   nop
    /* 2FC38 8003F438 0D000600 */  break      6
  .Lfunc_8003F2AC_8003F43C:
    /* 2FC3C 8003F43C 12300000 */  mflo       $a2
    /* 2FC40 8003F440 3000B327 */  addiu      $s3, $sp, 0x30
    /* 2FC44 8003F444 21206002 */  addu       $a0, $s3, $zero
    /* 2FC48 8003F448 00841000 */  sll        $s0, $s0, 16
    /* 2FC4C 8003F44C 032C1000 */  sra        $a1, $s0, 16
    /* 2FC50 8003F450 78000734 */  ori        $a3, $zero, 0x78
    /* 2FC54 8003F454 00340600 */  sll        $a2, $a2, 16
    /* 2FC58 8003F458 C7FE000C */  jal        BuildOrientMatrix
    /* 2FC5C 8003F45C 03340600 */   sra       $a2, $a2, 16
    /* 2FC60 8003F460 2120A002 */  addu       $a0, $s5, $zero
    /* 2FC64 8003F464 BC56000C */  jal        func_80015AF0
    /* 2FC68 8003F468 21286002 */   addu      $a1, $s3, $zero
    /* 2FC6C 8003F46C 2C002012 */  beqz       $s1, .Lfunc_8003F2AC_8003F520
    /* 2FC70 8003F470 21902002 */   addu      $s2, $s1, $zero
    /* 2FC74 8003F474 1C00A38F */  lw         $v1, 0x1C($sp)
    /* 2FC78 8003F478 1000A28F */  lw         $v0, 0x10($sp)
    /* 2FC7C 8003F47C 00000000 */  nop
    /* 2FC80 8003F480 23886200 */  subu       $s1, $v1, $v0
    /* 2FC84 8003F484 002B1100 */  sll        $a1, $s1, 12
    /* 2FC88 8003F488 1A00B200 */  div        $zero, $a1, $s2
    /* 2FC8C 8003F48C 02004016 */  bnez       $s2, .Lfunc_8003F2AC_8003F498
    /* 2FC90 8003F490 00000000 */   nop
    /* 2FC94 8003F494 0D000700 */  break      7
  .Lfunc_8003F2AC_8003F498:
    /* 2FC98 8003F498 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 2FC9C 8003F49C 04004116 */  bne        $s2, $at, .Lfunc_8003F2AC_8003F4B0
    /* 2FCA0 8003F4A0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2FCA4 8003F4A4 0200A114 */  bne        $a1, $at, .Lfunc_8003F2AC_8003F4B0
    /* 2FCA8 8003F4A8 00000000 */   nop
    /* 2FCAC 8003F4AC 0D000600 */  break      6
  .Lfunc_8003F2AC_8003F4B0:
    /* 2FCB0 8003F4B0 12280000 */  mflo       $a1
    /* 2FCB4 8003F4B4 2400A38F */  lw         $v1, 0x24($sp)
    /* 2FCB8 8003F4B8 1800A28F */  lw         $v0, 0x18($sp)
    /* 2FCBC 8003F4BC 00000000 */  nop
    /* 2FCC0 8003F4C0 23886200 */  subu       $s1, $v1, $v0
    /* 2FCC4 8003F4C4 00331100 */  sll        $a2, $s1, 12
    /* 2FCC8 8003F4C8 1A00D200 */  div        $zero, $a2, $s2
    /* 2FCCC 8003F4CC 02004016 */  bnez       $s2, .Lfunc_8003F2AC_8003F4D8
    /* 2FCD0 8003F4D0 00000000 */   nop
    /* 2FCD4 8003F4D4 0D000700 */  break      7
  .Lfunc_8003F2AC_8003F4D8:
    /* 2FCD8 8003F4D8 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 2FCDC 8003F4DC 04004116 */  bne        $s2, $at, .Lfunc_8003F2AC_8003F4F0
    /* 2FCE0 8003F4E0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 2FCE4 8003F4E4 0200C114 */  bne        $a2, $at, .Lfunc_8003F2AC_8003F4F0
    /* 2FCE8 8003F4E8 00000000 */   nop
    /* 2FCEC 8003F4EC 0D000600 */  break      6
  .Lfunc_8003F2AC_8003F4F0:
    /* 2FCF0 8003F4F0 12300000 */  mflo       $a2
    /* 2FCF4 8003F4F4 21206002 */  addu       $a0, $s3, $zero
    /* 2FCF8 8003F4F8 79000734 */  ori        $a3, $zero, 0x79
    /* 2FCFC 8003F4FC 23280500 */  negu       $a1, $a1
    /* 2FD00 8003F500 002C0500 */  sll        $a1, $a1, 16
    /* 2FD04 8003F504 032C0500 */  sra        $a1, $a1, 16
    /* 2FD08 8003F508 00340600 */  sll        $a2, $a2, 16
    /* 2FD0C 8003F50C C7FE000C */  jal        BuildOrientMatrix
    /* 2FD10 8003F510 03340600 */   sra       $a2, $a2, 16
    /* 2FD14 8003F514 2120A002 */  addu       $a0, $s5, $zero
    /* 2FD18 8003F518 BC56000C */  jal        func_80015AF0
    /* 2FD1C 8003F51C 21286002 */   addu      $a1, $s3, $zero
  .Lfunc_8003F2AC_8003F520:
    /* 2FD20 8003F520 2120A002 */  addu       $a0, $s5, $zero
    /* 2FD24 8003F524 0000828E */  lw         $v0, 0x0($s4)
    /* 2FD28 8003F528 9000B127 */  addiu      $s1, $sp, 0x90
    /* 2FD2C 8003F52C 23100200 */  negu       $v0, $v0
    /* 2FD30 8003F530 9000A2AF */  sw         $v0, 0x90($sp)
    /* 2FD34 8003F534 0400828E */  lw         $v0, 0x4($s4)
    /* 2FD38 8003F538 21282002 */  addu       $a1, $s1, $zero
    /* 2FD3C 8003F53C 23100200 */  negu       $v0, $v0
    /* 2FD40 8003F540 9400A2AF */  sw         $v0, 0x94($sp)
    /* 2FD44 8003F544 0800828E */  lw         $v0, 0x8($s4)
    /* 2FD48 8003F548 1400A626 */  addiu      $a2, $s5, 0x14
    /* 2FD4C 8003F54C 23100200 */  negu       $v0, $v0
    /* 2FD50 8003F550 8655000C */  jal        func_80015618
    /* 2FD54 8003F554 9800A2AF */   sw        $v0, 0x98($sp)
    /* 2FD58 8003F558 1C00848E */  lw         $a0, 0x1C($s4)
    /* 2FD5C 8003F55C 00000000 */  nop
    /* 2FD60 8003F560 27008010 */  beqz       $a0, .Lfunc_8003F2AC_8003F600
    /* 2FD64 8003F564 00000000 */   nop
    /* 2FD68 8003F568 12FE000C */  jal        func_8003F848
    /* 2FD6C 8003F56C 21286002 */   addu      $a1, $s3, $zero
    /* 2FD70 8003F570 21206002 */  addu       $a0, $s3, $zero
    /* 2FD74 8003F574 5000B027 */  addiu      $s0, $sp, 0x50
    /* 2FD78 8003F578 3FFF000C */  jal        TransposeRotMatrix
    /* 2FD7C 8003F57C 21280002 */   addu      $a1, $s0, $zero
    /* 2FD80 8003F580 21200002 */  addu       $a0, $s0, $zero
    /* 2FD84 8003F584 4400A527 */  addiu      $a1, $sp, 0x44
    /* 2FD88 8003F588 8655000C */  jal        func_80015618
    /* 2FD8C 8003F58C 21302002 */   addu      $a2, $s1, $zero
    /* 2FD90 8003F590 2120A002 */  addu       $a0, $s5, $zero
    /* 2FD94 8003F594 21280002 */  addu       $a1, $s0, $zero
    /* 2FD98 8003F598 9000A28F */  lw         $v0, 0x90($sp)
    /* 2FD9C 8003F59C 9800A38F */  lw         $v1, 0x98($sp)
    /* 2FDA0 8003F5A0 23100200 */  negu       $v0, $v0
    /* 2FDA4 8003F5A4 6400A2AF */  sw         $v0, 0x64($sp)
    /* 2FDA8 8003F5A8 9400A28F */  lw         $v0, 0x94($sp)
    /* 2FDAC 8003F5AC 23180300 */  negu       $v1, $v1
    /* 2FDB0 8003F5B0 6C00A3AF */  sw         $v1, 0x6C($sp)
    /* 2FDB4 8003F5B4 23100200 */  negu       $v0, $v0
    /* 2FDB8 8003F5B8 9D4A000C */  jal        func_80012A74
    /* 2FDBC 8003F5BC 6800A2AF */   sw        $v0, 0x68($sp)
    /* 2FDC0 8003F5C0 5000A28F */  lw         $v0, 0x50($sp)
    /* 2FDC4 8003F5C4 5400A38F */  lw         $v1, 0x54($sp)
    /* 2FDC8 8003F5C8 5800A48F */  lw         $a0, 0x58($sp)
    /* 2FDCC 8003F5CC 5C00A58F */  lw         $a1, 0x5C($sp)
    /* 2FDD0 8003F5D0 0000A2AE */  sw         $v0, 0x0($s5)
    /* 2FDD4 8003F5D4 0400A3AE */  sw         $v1, 0x4($s5)
    /* 2FDD8 8003F5D8 0800A4AE */  sw         $a0, 0x8($s5)
    /* 2FDDC 8003F5DC 0C00A5AE */  sw         $a1, 0xC($s5)
    /* 2FDE0 8003F5E0 6000A28F */  lw         $v0, 0x60($sp)
    /* 2FDE4 8003F5E4 6400A38F */  lw         $v1, 0x64($sp)
    /* 2FDE8 8003F5E8 6800A48F */  lw         $a0, 0x68($sp)
    /* 2FDEC 8003F5EC 6C00A58F */  lw         $a1, 0x6C($sp)
    /* 2FDF0 8003F5F0 1000A2AE */  sw         $v0, 0x10($s5)
    /* 2FDF4 8003F5F4 1400A3AE */  sw         $v1, 0x14($s5)
    /* 2FDF8 8003F5F8 1800A4AE */  sw         $a0, 0x18($s5)
    /* 2FDFC 8003F5FC 1C00A5AE */  sw         $a1, 0x1C($s5)
  .Lfunc_8003F2AC_8003F600:
    /* 2FE00 8003F600 0980053C */  lui        $a1, %hi(D_8008E7E4)
    /* 2FE04 8003F604 E4E7A524 */  addiu      $a1, $a1, %lo(D_8008E7E4)
    /* 2FE08 8003F608 0000A28E */  lw         $v0, 0x0($s5)
    /* 2FE0C 8003F60C 0400A38E */  lw         $v1, 0x4($s5)
    /* 2FE10 8003F610 0800A48E */  lw         $a0, 0x8($s5)
    /* 2FE14 8003F614 0000A2AC */  sw         $v0, 0x0($a1)
    /* 2FE18 8003F618 0400A3AC */  sw         $v1, 0x4($a1)
    /* 2FE1C 8003F61C 0800A4AC */  sw         $a0, 0x8($a1)
    /* 2FE20 8003F620 0C00A28E */  lw         $v0, 0xC($s5)
    /* 2FE24 8003F624 1000A38E */  lw         $v1, 0x10($s5)
    /* 2FE28 8003F628 1400A48E */  lw         $a0, 0x14($s5)
    /* 2FE2C 8003F62C 0C00A2AC */  sw         $v0, 0xC($a1)
    /* 2FE30 8003F630 1000A3AC */  sw         $v1, 0x10($a1)
    /* 2FE34 8003F634 1400A4AC */  sw         $a0, 0x14($a1)
    /* 2FE38 8003F638 1800A28E */  lw         $v0, 0x18($s5)
    /* 2FE3C 8003F63C 1C00A38E */  lw         $v1, 0x1C($s5)
    /* 2FE40 8003F640 1800A2AC */  sw         $v0, 0x18($a1)
    /* 2FE44 8003F644 1C00A3AC */  sw         $v1, 0x1C($a1)
    /* 2FE48 8003F648 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_8003F2AC_8003F64C:
    /* 2FE4C 8003F64C B800BF8F */  lw         $ra, 0xB8($sp)
    /* 2FE50 8003F650 B400B58F */  lw         $s5, 0xB4($sp)
    /* 2FE54 8003F654 B000B48F */  lw         $s4, 0xB0($sp)
    /* 2FE58 8003F658 AC00B38F */  lw         $s3, 0xAC($sp)
    /* 2FE5C 8003F65C A800B28F */  lw         $s2, 0xA8($sp)
    /* 2FE60 8003F660 A400B18F */  lw         $s1, 0xA4($sp)
    /* 2FE64 8003F664 A000B08F */  lw         $s0, 0xA0($sp)
    /* 2FE68 8003F668 C000BD27 */  addiu      $sp, $sp, 0xC0
    /* 2FE6C 8003F66C 0800E003 */  jr         $ra
    /* 2FE70 8003F670 00000000 */   nop
endlabel CalcLookAtAngles
