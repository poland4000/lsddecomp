.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching ActorBase__LoadAnimSet, 0x7C

glabel ActorBase__LoadAnimSet
    /* 47D34 80057534 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 47D38 80057538 1800B2AF */  sw         $s2, 0x18($sp)
    /* 47D3C 8005753C 21908000 */  addu       $s2, $a0, $zero
    /* 47D40 80057540 1400B1AF */  sw         $s1, 0x14($sp)
    /* 47D44 80057544 2188A000 */  addu       $s1, $a1, $zero
    /* 47D48 80057548 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 47D4C 8005754C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 47D50 80057550 000026A6 */  sh         $a2, 0x0($s1)
    /* 47D54 80057554 0000428E */  lw         $v0, 0x0($s2)
    /* 47D58 80057558 0980053C */  lui        $a1, %hi(gAnimSetTable7)
    /* 47D5C 8005755C A4ABA524 */  addiu      $a1, $a1, %lo(gAnimSetTable7)
    /* 47D60 80057560 480046A6 */  sh         $a2, 0x48($s2)
    /* 47D64 80057564 C000428C */  lw         $v0, 0xC0($v0)
    /* 47D68 80057568 00000000 */  nop
    /* 47D6C 8005756C 09F84000 */  jalr       $v0
    /* 47D70 80057570 2180E000 */   addu      $s0, $a3, $zero
    /* 47D74 80057574 07000012 */  beqz       $s0, .Lfunc_80057534_80057594
    /* 47D78 80057578 000020A6 */   sh        $zero, 0x0($s1)
    /* 47D7C 8005757C 0000428E */  lw         $v0, 0x0($s2)
    /* 47D80 80057580 3000A58F */  lw         $a1, 0x30($sp)
    /* 47D84 80057584 8800428C */  lw         $v0, 0x88($v0)
    /* 47D88 80057588 00000000 */  nop
    /* 47D8C 8005758C 09F84000 */  jalr       $v0
    /* 47D90 80057590 21204002 */   addu      $a0, $s2, $zero
  .Lfunc_80057534_80057594:
    /* 47D94 80057594 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 47D98 80057598 1800B28F */  lw         $s2, 0x18($sp)
    /* 47D9C 8005759C 1400B18F */  lw         $s1, 0x14($sp)
    /* 47DA0 800575A0 1000B08F */  lw         $s0, 0x10($sp)
    /* 47DA4 800575A4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 47DA8 800575A8 0800E003 */  jr         $ra
    /* 47DAC 800575AC 00000000 */   nop
endlabel ActorBase__LoadAnimSet
