.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003BC14, 0xE0

glabel func_8003BC14
    /* 2C414 8003BC14 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2C418 8003BC18 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2C41C 8003BC1C 21808000 */  addu       $s0, $a0, $zero
    /* 2C420 8003BC20 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2C424 8003BC24 1800BFAF */  sw         $ra, 0x18($sp)
    /* 2C428 8003BC28 EFF7000C */  jal        Get_vtable_AnimEffect
    /* 2C42C 8003BC2C 2188A000 */   addu      $s1, $a1, $zero
    /* 2C430 8003BC30 21200002 */  addu       $a0, $s0, $zero
    /* 2C434 8003BC34 6000428C */  lw         $v0, 0x60($v0)
    /* 2C438 8003BC38 00000000 */  nop
    /* 2C43C 8003BC3C 09F84000 */  jalr       $v0
    /* 2C440 8003BC40 21282002 */   addu      $a1, $s1, $zero
    /* 2C444 8003BC44 07000234 */  ori        $v0, $zero, 0x7
    /* 2C448 8003BC48 10002212 */  beq        $s1, $v0, .Lfunc_8003BC14_8003BC8C
    /* 2C44C 8003BC4C 0800222A */   slti      $v0, $s1, 0x8
    /* 2C450 8003BC50 05004010 */  beqz       $v0, .Lfunc_8003BC14_8003BC68
    /* 2C454 8003BC54 05000234 */   ori       $v0, $zero, 0x5
    /* 2C458 8003BC58 0A002212 */  beq        $s1, $v0, .Lfunc_8003BC14_8003BC84
    /* 2C45C 8003BC5C 00000000 */   nop
    /* 2C460 8003BC60 37EF0008 */  j          .Lfunc_8003BC14_8003BCDC
    /* 2C464 8003BC64 00000000 */   nop
  .Lfunc_8003BC14_8003BC68:
    /* 2C468 8003BC68 08000234 */  ori        $v0, $zero, 0x8
    /* 2C46C 8003BC6C 0A002212 */  beq        $s1, $v0, .Lfunc_8003BC14_8003BC98
    /* 2C470 8003BC70 12000234 */   ori       $v0, $zero, 0x12
    /* 2C474 8003BC74 13002212 */  beq        $s1, $v0, .Lfunc_8003BC14_8003BCC4
    /* 2C478 8003BC78 21200002 */   addu      $a0, $s0, $zero
    /* 2C47C 8003BC7C 37EF0008 */  j          .Lfunc_8003BC14_8003BCDC
    /* 2C480 8003BC80 00000000 */   nop
  .Lfunc_8003BC14_8003BC84:
    /* 2C484 8003BC84 37EF0008 */  j          .Lfunc_8003BC14_8003BCDC
    /* 2C488 8003BC88 D80000AE */   sw        $zero, 0xD8($s0)
  .Lfunc_8003BC14_8003BC8C:
    /* 2C48C 8003BC8C 01000234 */  ori        $v0, $zero, 0x1
    /* 2C490 8003BC90 37EF0008 */  j          .Lfunc_8003BC14_8003BCDC
    /* 2C494 8003BC94 D80002AE */   sw        $v0, 0xD8($s0)
  .Lfunc_8003BC14_8003BC98:
    /* 2C498 8003BC98 D400028E */  lw         $v0, 0xD4($s0)
    /* 2C49C 8003BC9C 00000000 */  nop
    /* 2C4A0 8003BCA0 0E004014 */  bnez       $v0, .Lfunc_8003BC14_8003BCDC
    /* 2C4A4 8003BCA4 00000000 */   nop
    /* 2C4A8 8003BCA8 B400048E */  lw         $a0, 0xB4($s0)
    /* 2C4AC 8003BCAC 00000000 */  nop
    /* 2C4B0 8003BCB0 0000828C */  lw         $v0, 0x0($a0)
    /* 2C4B4 8003BCB4 00000000 */  nop
    /* 2C4B8 8003BCB8 4C00428C */  lw         $v0, 0x4C($v0)
    /* 2C4BC 8003BCBC 34EF0008 */  j          .Lfunc_8003BC14_8003BCD0
    /* 2C4C0 8003BCC0 00000000 */   nop
  .Lfunc_8003BC14_8003BCC4:
    /* 2C4C4 8003BCC4 0000028E */  lw         $v0, 0x0($s0)
    /* 2C4C8 8003BCC8 00000000 */  nop
    /* 2C4CC 8003BCCC 9400428C */  lw         $v0, 0x94($v0)
  .Lfunc_8003BC14_8003BCD0:
    /* 2C4D0 8003BCD0 00000000 */  nop
    /* 2C4D4 8003BCD4 09F84000 */  jalr       $v0
    /* 2C4D8 8003BCD8 00000000 */   nop
  .Lfunc_8003BC14_8003BCDC:
    /* 2C4DC 8003BCDC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 2C4E0 8003BCE0 1400B18F */  lw         $s1, 0x14($sp)
    /* 2C4E4 8003BCE4 1000B08F */  lw         $s0, 0x10($sp)
    /* 2C4E8 8003BCE8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2C4EC 8003BCEC 0800E003 */  jr         $ra
    /* 2C4F0 8003BCF0 00000000 */   nop
endlabel func_8003BC14
