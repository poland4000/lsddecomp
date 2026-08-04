.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003D3B0, 0x94

glabel func_8003D3B0
    /* 2DBB0 8003D3B0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2DBB4 8003D3B4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2DBB8 8003D3B8 4C00828C */  lw         $v0, 0x4C($a0)
    /* 2DBBC 8003D3BC 00000000 */  nop
    /* 2DBC0 8003D3C0 1C004010 */  beqz       $v0, .Lfunc_8003D3B0_8003D434
    /* 2DBC4 8003D3C4 00000000 */   nop
    /* 2DBC8 8003D3C8 5800858C */  lw         $a1, 0x58($a0)
    /* 2DBCC 8003D3CC 5000868C */  lw         $a2, 0x50($a0)
    /* 2DBD0 8003D3D0 0100A524 */  addiu      $a1, $a1, 0x1
  .Lfunc_8003D3B0_8003D3D4:
    /* 2DBD4 8003D3D4 2A10A600 */  slt        $v0, $a1, $a2
    /* 2DBD8 8003D3D8 02004014 */  bnez       $v0, .Lfunc_8003D3B0_8003D3E4
    /* 2DBDC 8003D3DC 00000000 */   nop
    /* 2DBE0 8003D3E0 21280000 */  addu       $a1, $zero, $zero
  .Lfunc_8003D3B0_8003D3E4:
    /* 2DBE4 8003D3E4 5800828C */  lw         $v0, 0x58($a0)
    /* 2DBE8 8003D3E8 00000000 */  nop
    /* 2DBEC 8003D3EC 0B00A210 */  beq        $a1, $v0, .Lfunc_8003D3B0_8003D41C
    /* 2DBF0 8003D3F0 00000000 */   nop
    /* 2DBF4 8003D3F4 4C00828C */  lw         $v0, 0x4C($a0)
    /* 2DBF8 8003D3F8 00000000 */  nop
    /* 2DBFC 8003D3FC 1800438C */  lw         $v1, 0x18($v0)
    /* 2DC00 8003D400 80100500 */  sll        $v0, $a1, 2
    /* 2DC04 8003D404 21104300 */  addu       $v0, $v0, $v1
    /* 2DC08 8003D408 0000428C */  lw         $v0, 0x0($v0)
    /* 2DC0C 8003D40C 00000000 */  nop
    /* 2DC10 8003D410 F0FF4014 */  bnez       $v0, .Lfunc_8003D3B0_8003D3D4
    /* 2DC14 8003D414 0100A524 */   addiu     $a1, $a1, 0x1
    /* 2DC18 8003D418 FFFFA524 */  addiu      $a1, $a1, -0x1
  .Lfunc_8003D3B0_8003D41C:
    /* 2DC1C 8003D41C 0000828C */  lw         $v0, 0x0($a0)
    /* 2DC20 8003D420 00000000 */  nop
    /* 2DC24 8003D424 F000428C */  lw         $v0, 0xF0($v0)
    /* 2DC28 8003D428 00000000 */  nop
    /* 2DC2C 8003D42C 09F84000 */  jalr       $v0
    /* 2DC30 8003D430 01000634 */   ori       $a2, $zero, 0x1
  .Lfunc_8003D3B0_8003D434:
    /* 2DC34 8003D434 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2DC38 8003D438 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2DC3C 8003D43C 0800E003 */  jr         $ra
    /* 2DC40 8003D440 00000000 */   nop
endlabel func_8003D3B0
