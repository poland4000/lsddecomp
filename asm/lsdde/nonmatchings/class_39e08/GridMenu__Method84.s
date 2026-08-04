.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching GridMenu__Method84, 0x68

glabel GridMenu__Method84
    /* 42C30 80052430 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 42C34 80052434 1800BFAF */  sw         $ra, 0x18($sp)
    /* 42C38 80052438 5000828C */  lw         $v0, 0x50($a0)
    /* 42C3C 8005243C 00000000 */  nop
    /* 42C40 80052440 11004010 */  beqz       $v0, .Lfunc_80052430_80052488
    /* 42C44 80052444 00000000 */   nop
    /* 42C48 80052448 2400868C */  lw         $a2, 0x24($a0)
    /* 42C4C 8005244C 1400838C */  lw         $v1, 0x14($a0)
    /* 42C50 80052450 1A00C224 */  addiu      $v0, $a2, 0x1A
    /* 42C54 80052454 2A104300 */  slt        $v0, $v0, $v1
    /* 42C58 80052458 0B004010 */  beqz       $v0, .Lfunc_80052430_80052488
    /* 42C5C 8005245C 0100C624 */   addiu     $a2, $a2, 0x1
    /* 42C60 80052460 0000838C */  lw         $v1, 0x0($a0)
    /* 42C64 80052464 01000234 */  ori        $v0, $zero, 0x1
    /* 42C68 80052468 240086AC */  sw         $a2, 0x24($a0)
    /* 42C6C 8005246C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 42C70 80052470 2000858C */  lw         $a1, 0x20($a0)
    /* 42C74 80052474 2800878C */  lw         $a3, 0x28($a0)
    /* 42C78 80052478 9400628C */  lw         $v0, 0x94($v1)
    /* 42C7C 8005247C 00000000 */  nop
    /* 42C80 80052480 09F84000 */  jalr       $v0
    /* 42C84 80052484 00000000 */   nop
  .Lfunc_80052430_80052488:
    /* 42C88 80052488 1800BF8F */  lw         $ra, 0x18($sp)
    /* 42C8C 8005248C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 42C90 80052490 0800E003 */  jr         $ra
    /* 42C94 80052494 00000000 */   nop
endlabel GridMenu__Method84
