.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching ReleaseObjectArray, 0x70

glabel ReleaseObjectArray
    /* 8BDC 800183DC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8BE0 800183E0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8BE4 800183E4 21888000 */  addu       $s1, $a0, $zero
    /* 8BE8 800183E8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8BEC 800183EC 2180A000 */  addu       $s0, $a1, $zero
    /* 8BF0 800183F0 21100002 */  addu       $v0, $s0, $zero
    /* 8BF4 800183F4 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 8BF8 800183F8 0E004018 */  blez       $v0, .Lfunc_800183DC_80018434
    /* 8BFC 800183FC 1800BFAF */   sw        $ra, 0x18($sp)
  .Lfunc_800183DC_80018400:
    /* 8C00 80018400 0000248E */  lw         $a0, 0x0($s1)
    /* 8C04 80018404 00000000 */  nop
    /* 8C08 80018408 0000828C */  lw         $v0, 0x0($a0)
    /* 8C0C 8001840C 00000000 */  nop
    /* 8C10 80018410 0400428C */  lw         $v0, 0x4($v0)
    /* 8C14 80018414 00000000 */  nop
    /* 8C18 80018418 09F84000 */  jalr       $v0
    /* 8C1C 8001841C 00000000 */   nop
    /* 8C20 80018420 000022AE */  sw         $v0, 0x0($s1)
    /* 8C24 80018424 04003126 */  addiu      $s1, $s1, 0x4
    /* 8C28 80018428 21100002 */  addu       $v0, $s0, $zero
    /* 8C2C 8001842C F4FF401C */  bgtz       $v0, .Lfunc_800183DC_80018400
    /* 8C30 80018430 FFFF1026 */   addiu     $s0, $s0, -0x1
  .Lfunc_800183DC_80018434:
    /* 8C34 80018434 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8C38 80018438 1400B18F */  lw         $s1, 0x14($sp)
    /* 8C3C 8001843C 1000B08F */  lw         $s0, 0x10($sp)
    /* 8C40 80018440 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8C44 80018444 0800E003 */  jr         $ra
    /* 8C48 80018448 00000000 */   nop
endlabel ReleaseObjectArray
