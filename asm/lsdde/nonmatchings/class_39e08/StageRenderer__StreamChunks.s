.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__StreamChunks, 0x110

glabel StageRenderer__StreamChunks
    /* 3C130 8004B930 6800828C */  lw         $v0, 0x68($a0)
    /* 3C134 8004B934 00000000 */  nop
    /* 3C138 8004B938 00004884 */  lh         $t0, 0x0($v0)
    /* 3C13C 8004B93C 0400438C */  lw         $v1, 0x4($v0)
    /* 3C140 8004B940 02004784 */  lh         $a3, 0x2($v0)
    /* 3C144 8004B944 33006014 */  bnez       $v1, .Lfunc_8004B930_8004BA14
    /* 3C148 8004B948 F8FFBD27 */   addiu     $sp, $sp, -0x8
    /* 3C14C 8004B94C FFFFE224 */  addiu      $v0, $a3, -0x1
    /* 3C150 8004B950 18000201 */  mult       $t0, $v0
    /* 3C154 8004B954 2A10A800 */  slt        $v0, $a1, $t0
    /* 3C158 8004B958 23100200 */  negu       $v0, $v0
    /* 3C15C 8004B95C 03004430 */  andi       $a0, $v0, 0x3
    /* 3C160 8004B960 12100000 */  mflo       $v0
    /* 3C164 8004B964 2A10A200 */  slt        $v0, $a1, $v0
    /* 3C168 8004B968 02004014 */  bnez       $v0, .Lfunc_8004B930_8004B974
    /* 3C16C 8004B96C 00000000 */   nop
    /* 3C170 8004B970 60008434 */  ori        $a0, $a0, 0x60
  .Lfunc_8004B930_8004B974:
    /* 3C174 8004B974 1A00A800 */  div        $zero, $a1, $t0
    /* 3C178 8004B978 02000015 */  bnez       $t0, .Lfunc_8004B930_8004B984
    /* 3C17C 8004B97C 00000000 */   nop
    /* 3C180 8004B980 0D000700 */  break      7
  .Lfunc_8004B930_8004B984:
    /* 3C184 8004B984 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3C188 8004B988 04000115 */  bne        $t0, $at, .Lfunc_8004B930_8004B99C
    /* 3C18C 8004B98C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3C190 8004B990 0200A114 */  bne        $a1, $at, .Lfunc_8004B930_8004B99C
    /* 3C194 8004B994 00000000 */   nop
    /* 3C198 8004B998 0D000600 */  break      6
  .Lfunc_8004B930_8004B99C:
    /* 3C19C 8004B99C 10100000 */  mfhi       $v0
    /* 3C1A0 8004B9A0 00000000 */  nop
    /* 3C1A4 8004B9A4 06004014 */  bnez       $v0, .Lfunc_8004B930_8004B9C0
    /* 3C1A8 8004B9A8 00000000 */   nop
    /* 3C1AC 8004B9AC 0300C010 */  beqz       $a2, .Lfunc_8004B930_8004B9BC
    /* 3C1B0 8004B9B0 00000000 */   nop
    /* 3C1B4 8004B9B4 702E0108 */  j          .Lfunc_8004B930_8004B9C0
    /* 3C1B8 8004B9B8 25008434 */   ori       $a0, $a0, 0x25
  .Lfunc_8004B930_8004B9BC:
    /* 3C1BC 8004B9BC 04008434 */  ori        $a0, $a0, 0x4
  .Lfunc_8004B930_8004B9C0:
    /* 3C1C0 8004B9C0 0100A224 */  addiu      $v0, $a1, 0x1
    /* 3C1C4 8004B9C4 1A004800 */  div        $zero, $v0, $t0
    /* 3C1C8 8004B9C8 02000015 */  bnez       $t0, .Lfunc_8004B930_8004B9D4
    /* 3C1CC 8004B9CC 00000000 */   nop
    /* 3C1D0 8004B9D0 0D000700 */  break      7
  .Lfunc_8004B930_8004B9D4:
    /* 3C1D4 8004B9D4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3C1D8 8004B9D8 04000115 */  bne        $t0, $at, .Lfunc_8004B930_8004B9EC
    /* 3C1DC 8004B9DC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3C1E0 8004B9E0 02004114 */  bne        $v0, $at, .Lfunc_8004B930_8004B9EC
    /* 3C1E4 8004B9E4 00000000 */   nop
    /* 3C1E8 8004B9E8 0D000600 */  break      6
  .Lfunc_8004B930_8004B9EC:
    /* 3C1EC 8004B9EC 10180000 */  mfhi       $v1
    /* 3C1F0 8004B9F0 00000000 */  nop
    /* 3C1F4 8004B9F4 0F006014 */  bnez       $v1, .Lfunc_8004B930_8004BA34
    /* 3C1F8 8004B9F8 27100400 */   nor       $v0, $zero, $a0
    /* 3C1FC 8004B9FC 0300C010 */  beqz       $a2, .Lfunc_8004B930_8004BA0C
    /* 3C200 8004BA00 00000000 */   nop
    /* 3C204 8004BA04 8C2E0108 */  j          .Lfunc_8004B930_8004BA30
    /* 3C208 8004BA08 10008434 */   ori       $a0, $a0, 0x10
  .Lfunc_8004B930_8004BA0C:
    /* 3C20C 8004BA0C 8C2E0108 */  j          .Lfunc_8004B930_8004BA30
    /* 3C210 8004BA10 52008434 */   ori       $a0, $a0, 0x52
  .Lfunc_8004B930_8004BA14:
    /* 3C214 8004BA14 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 3C218 8004BA18 0500E018 */  blez       $a3, .Lfunc_8004B930_8004BA30
    /* 3C21C 8004BA1C 21180000 */   addu      $v1, $zero, $zero
  .Lfunc_8004B930_8004BA20:
    /* 3C220 8004BA20 01006324 */  addiu      $v1, $v1, 0x1
    /* 3C224 8004BA24 2A106700 */  slt        $v0, $v1, $a3
    /* 3C228 8004BA28 FDFF4014 */  bnez       $v0, .Lfunc_8004B930_8004BA20
    /* 3C22C 8004BA2C 40200400 */   sll       $a0, $a0, 1
  .Lfunc_8004B930_8004BA30:
    /* 3C230 8004BA30 27100400 */  nor        $v0, $zero, $a0
  .Lfunc_8004B930_8004BA34:
    /* 3C234 8004BA34 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 3C238 8004BA38 0800E003 */  jr         $ra
    /* 3C23C 8004BA3C 00000000 */   nop
endlabel StageRenderer__StreamChunks
