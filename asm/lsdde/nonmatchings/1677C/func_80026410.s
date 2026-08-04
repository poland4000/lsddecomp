.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80026410, 0x108

glabel func_80026410
    /* 16C10 80026410 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 16C14 80026414 1000B0AF */  sw         $s0, 0x10($sp)
    /* 16C18 80026418 21808000 */  addu       $s0, $a0, $zero
    /* 16C1C 8002641C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 16C20 80026420 1400B1AF */  sw         $s1, 0x14($sp)
    /* 16C24 80026424 2000028E */  lw         $v0, 0x20($s0)
    /* 16C28 80026428 00000000 */  nop
    /* 16C2C 8002642C 1000428C */  lw         $v0, 0x10($v0)
    /* 16C30 80026430 00000000 */  nop
    /* 16C34 80026434 31004010 */  beqz       $v0, .Lfunc_80026410_800264FC
    /* 16C38 80026438 21200000 */   addu      $a0, $zero, $zero
    /* 16C3C 8002643C 21280000 */  addu       $a1, $zero, $zero
    /* 16C40 80026440 CD9B000C */  jal        CdDrvWaitReady
    /* 16C44 80026444 21300000 */   addu      $a2, $zero, $zero
    /* 16C48 80026448 2800048E */  lw         $a0, 0x28($s0)
    /* 16C4C 8002644C 00000000 */  nop
    /* 16C50 80026450 0000828C */  lw         $v0, 0x0($a0)
    /* 16C54 80026454 00000000 */  nop
    /* 16C58 80026458 A001428C */  lw         $v0, 0x1A0($v0)
    /* 16C5C 8002645C 00000000 */  nop
    /* 16C60 80026460 09F84000 */  jalr       $v0
    /* 16C64 80026464 21280000 */   addu      $a1, $zero, $zero
    /* 16C68 80026468 01000334 */  ori        $v1, $zero, 0x1
    /* 16C6C 8002646C 10004310 */  beq        $v0, $v1, .Lfunc_80026410_800264B0
    /* 16C70 80026470 02001134 */   ori       $s1, $zero, 0x2
    /* 16C74 80026474 2400028E */  lw         $v0, 0x24($s0)
    /* 16C78 80026478 00000000 */  nop
    /* 16C7C 8002647C 0C004014 */  bnez       $v0, .Lfunc_80026410_800264B0
    /* 16C80 80026480 00000000 */   nop
    /* 16C84 80026484 2800058E */  lw         $a1, 0x28($s0)
    /* 16C88 80026488 1C00068E */  lw         $a2, 0x1C($s0)
    /* 16C8C 8002648C 0580043C */  lui        $a0, %hi(GraphScreen__Create)
    /* 16C90 80026490 687F8424 */  addiu      $a0, $a0, %lo(GraphScreen__Create)
    /* 16C94 80026494 4699000C */  jal        func_80026518
    /* 16C98 80026498 00000000 */   nop
    /* 16C9C 8002649C 02000334 */  ori        $v1, $zero, 0x2
    /* 16CA0 800264A0 03004314 */  bne        $v0, $v1, .Lfunc_80026410_800264B0
    /* 16CA4 800264A4 00000000 */   nop
    /* 16CA8 800264A8 6399000C */  jal        func_8002658C
    /* 16CAC 800264AC 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_80026410_800264B0:
    /* 16CB0 800264B0 2800058E */  lw         $a1, 0x28($s0)
    /* 16CB4 800264B4 1C00068E */  lw         $a2, 0x1C($s0)
    /* 16CB8 800264B8 0580043C */  lui        $a0, %hi(TitleScreen__Create)
    /* 16CBC 800264BC 18D58424 */  addiu      $a0, $a0, %lo(TitleScreen__Create)
    /* 16CC0 800264C0 4699000C */  jal        func_80026518
    /* 16CC4 800264C4 00000000 */   nop
    /* 16CC8 800264C8 09005114 */  bne        $v0, $s1, .Lfunc_80026410_800264F0
    /* 16CCC 800264CC 0100422C */   sltiu     $v0, $v0, 0x1
    /* 16CD0 800264D0 2800058E */  lw         $a1, 0x28($s0)
    /* 16CD4 800264D4 1C00068E */  lw         $a2, 0x1C($s0)
    /* 16CD8 800264D8 0580043C */  lui        $a0, %hi(GraphScreen__Create)
    /* 16CDC 800264DC 687F8424 */  addiu      $a0, $a0, %lo(GraphScreen__Create)
    /* 16CE0 800264E0 4699000C */  jal        func_80026518
    /* 16CE4 800264E4 00000000 */   nop
    /* 16CE8 800264E8 2C990008 */  j          .Lfunc_80026410_800264B0
    /* 16CEC 800264EC 00000000 */   nop
  .Lfunc_80026410_800264F0:
    /* 16CF0 800264F0 240000AE */  sw         $zero, 0x24($s0)
    /* 16CF4 800264F4 40990008 */  j          .Lfunc_80026410_80026500
    /* 16CF8 800264F8 40100200 */   sll       $v0, $v0, 1
  .Lfunc_80026410_800264FC:
    /* 16CFC 800264FC 02000234 */  ori        $v0, $zero, 0x2
  .Lfunc_80026410_80026500:
    /* 16D00 80026500 1800BF8F */  lw         $ra, 0x18($sp)
    /* 16D04 80026504 1400B18F */  lw         $s1, 0x14($sp)
    /* 16D08 80026508 1000B08F */  lw         $s0, 0x10($sp)
    /* 16D0C 8002650C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 16D10 80026510 0800E003 */  jr         $ra
    /* 16D14 80026514 00000000 */   nop
endlabel func_80026410
