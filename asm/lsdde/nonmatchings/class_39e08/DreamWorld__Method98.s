.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamWorld__Method98, 0xAC

glabel DreamWorld__Method98
    /* 443E8 80053BE8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 443EC 80053BEC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 443F0 80053BF0 21808000 */  addu       $s0, $a0, $zero
    /* 443F4 80053BF4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 443F8 80053BF8 3C00028E */  lw         $v0, 0x3C($s0)
    /* 443FC 80053BFC 00000000 */  nop
    /* 44400 80053C00 6401428C */  lw         $v0, 0x164($v0)
    /* 44404 80053C04 00000000 */  nop
    /* 44408 80053C08 06004104 */  bgez       $v0, .Lfunc_80053BE8_80053C24
    /* 4440C 80053C0C 05000234 */   ori       $v0, $zero, 0x5
    /* 44410 80053C10 0000028E */  lw         $v0, 0x0($s0)
    /* 44414 80053C14 00000000 */  nop
    /* 44418 80053C18 9C00428C */  lw         $v0, 0x9C($v0)
    /* 4441C 80053C1C 1D4F0108 */  j          .Lfunc_80053BE8_80053C74
    /* 44420 80053C20 00000000 */   nop
  .Lfunc_80053BE8_80053C24:
    /* 44424 80053C24 3C00048E */  lw         $a0, 0x3C($s0)
    /* 44428 80053C28 200002AE */  sw         $v0, 0x20($s0)
    /* 4442C 80053C2C 0000828C */  lw         $v0, 0x0($a0)
    /* 44430 80053C30 00000000 */  nop
    /* 44434 80053C34 0002428C */  lw         $v0, 0x200($v0)
    /* 44438 80053C38 00000000 */  nop
    /* 4443C 80053C3C 09F84000 */  jalr       $v0
    /* 44440 80053C40 00000000 */   nop
    /* 44444 80053C44 21200002 */  addu       $a0, $s0, $zero
    /* 44448 80053C48 01000334 */  ori        $v1, $zero, 0x1
    /* 4444C 80053C4C 21284000 */  addu       $a1, $v0, $zero
    /* 44450 80053C50 21300000 */  addu       $a2, $zero, $zero
    /* 44454 80053C54 0A000734 */  ori        $a3, $zero, 0xA
    /* 44458 80053C58 AD4F010C */  jal        DreamWorld__ScheduleAction
    /* 4445C 80053C5C 1000A3AF */   sw        $v1, 0x10($sp)
    /* 44460 80053C60 3C00048E */  lw         $a0, 0x3C($s0)
    /* 44464 80053C64 00000000 */  nop
    /* 44468 80053C68 0000828C */  lw         $v0, 0x0($a0)
    /* 4446C 80053C6C 00000000 */  nop
    /* 44470 80053C70 FC00428C */  lw         $v0, 0xFC($v0)
  .Lfunc_80053BE8_80053C74:
    /* 44474 80053C74 00000000 */  nop
    /* 44478 80053C78 09F84000 */  jalr       $v0
    /* 4447C 80053C7C 00000000 */   nop
    /* 44480 80053C80 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 44484 80053C84 1800B08F */  lw         $s0, 0x18($sp)
    /* 44488 80053C88 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4448C 80053C8C 0800E003 */  jr         $ra
    /* 44490 80053C90 00000000 */   nop
endlabel DreamWorld__Method98
