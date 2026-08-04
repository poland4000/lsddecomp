.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching Actor__RandomWander, 0x15C

glabel Actor__RandomWander
    /* 473BC 80056BBC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 473C0 80056BC0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 473C4 80056BC4 21888000 */  addu       $s1, $a0, $zero
    /* 473C8 80056BC8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 473CC 80056BCC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 473D0 80056BD0 2025010C */  jal        rand
    /* 473D4 80056BD4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 473D8 80056BD8 C21F0200 */  srl        $v1, $v0, 31
    /* 473DC 80056BDC 21184300 */  addu       $v1, $v0, $v1
    /* 473E0 80056BE0 43900300 */  sra        $s2, $v1, 1
    /* 473E4 80056BE4 40181200 */  sll        $v1, $s2, 1
    /* 473E8 80056BE8 23904300 */  subu       $s2, $v0, $v1
    /* 473EC 80056BEC 03004016 */  bnez       $s2, .Lfunc_80056BBC_80056BFC
    /* 473F0 80056BF0 21380000 */   addu      $a3, $zero, $zero
    /* 473F4 80056BF4 0880073C */  lui        $a3, %hi(D_80087868)
    /* 473F8 80056BF8 6878E724 */  addiu      $a3, $a3, %lo(D_80087868)
  .Lfunc_80056BBC_80056BFC:
    /* 473FC 80056BFC 21202002 */  addu       $a0, $s1, $zero
    /* 47400 80056C00 21280000 */  addu       $a1, $zero, $zero
    /* 47404 80056C04 465B010C */  jal        Actor__SpawnSprite
    /* 47408 80056C08 21300000 */   addu      $a2, $zero, $zero
    /* 4740C 80056C0C 7000238E */  lw         $v1, 0x70($s1)
    /* 47410 80056C10 00000000 */  nop
    /* 47414 80056C14 02006228 */  slti       $v0, $v1, 0x2
    /* 47418 80056C18 17004014 */  bnez       $v0, .Lfunc_80056BBC_80056C78
    /* 4741C 80056C1C 01000534 */   ori       $a1, $zero, 0x1
    /* 47420 80056C20 0880053C */  lui        $a1, %hi(D_80087880)
    /* 47424 80056C24 8078A524 */  addiu      $a1, $a1, %lo(D_80087880)
    /* 47428 80056C28 80100300 */  sll        $v0, $v1, 2
    /* 4742C 80056C2C 8800308E */  lw         $s0, 0x88($s1)
    /* 47430 80056C30 0880013C */  lui        $at, %hi(D_80087844)
    /* 47434 80056C34 44782124 */  addiu      $at, $at, %lo(D_80087844)
    /* 47438 80056C38 21082200 */  addu       $at, $at, $v0
    /* 4743C 80056C3C 0000228C */  lw         $v0, 0x0($at)
    /* 47440 80056C40 21200002 */  addu       $a0, $s0, $zero
    /* 47444 80056C44 EA5C010C */  jal        ActorBase__AddVelocity
    /* 47448 80056C48 0000A2AC */   sw        $v0, 0x0($a1)
    /* 4744C 80056C4C 7800258E */  lw         $a1, 0x78($s1)
    /* 47450 80056C50 0000028E */  lw         $v0, 0x0($s0)
    /* 47454 80056C54 0200A014 */  bnez       $a1, .Lfunc_80056BBC_80056C60
    /* 47458 80056C58 00000000 */   nop
    /* 4745C 80056C5C 7400258E */  lw         $a1, 0x74($s1)
  .Lfunc_80056BBC_80056C60:
    /* 47460 80056C60 B800428C */  lw         $v0, 0xB8($v0)
    /* 47464 80056C64 00000000 */  nop
    /* 47468 80056C68 09F84000 */  jalr       $v0
    /* 4746C 80056C6C 21200002 */   addu      $a0, $s0, $zero
    /* 47470 80056C70 375B0108 */  j          .Lfunc_80056BBC_80056CDC
    /* 47474 80056C74 00000000 */   nop
  .Lfunc_80056BBC_80056C78:
    /* 47478 80056C78 8800308E */  lw         $s0, 0x88($s1)
    /* 4747C 80056C7C 00000000 */  nop
    /* 47480 80056C80 0000028E */  lw         $v0, 0x0($s0)
    /* 47484 80056C84 00000000 */  nop
    /* 47488 80056C88 6400428C */  lw         $v0, 0x64($v0)
    /* 4748C 80056C8C 00000000 */  nop
    /* 47490 80056C90 09F84000 */  jalr       $v0
    /* 47494 80056C94 21200002 */   addu      $a0, $s0, $zero
    /* 47498 80056C98 0000028E */  lw         $v0, 0x0($s0)
    /* 4749C 80056C9C 21200002 */  addu       $a0, $s0, $zero
    /* 474A0 80056CA0 6800428C */  lw         $v0, 0x68($v0)
    /* 474A4 80056CA4 00000000 */  nop
    /* 474A8 80056CA8 09F84000 */  jalr       $v0
    /* 474AC 80056CAC 21280000 */   addu      $a1, $zero, $zero
    /* 474B0 80056CB0 0880063C */  lui        $a2, %hi(D_80087874)
    /* 474B4 80056CB4 7478C624 */  addiu      $a2, $a2, %lo(D_80087874)
    /* 474B8 80056CB8 0000028E */  lw         $v0, 0x0($s0)
    /* 474BC 80056CBC 03004012 */  beqz       $s2, .Lfunc_80056BBC_80056CCC
    /* 474C0 80056CC0 21200002 */   addu      $a0, $s0, $zero
    /* 474C4 80056CC4 0880063C */  lui        $a2, %hi(D_8008785C)
    /* 474C8 80056CC8 5C78C624 */  addiu      $a2, $a2, %lo(D_8008785C)
  .Lfunc_80056BBC_80056CCC:
    /* 474CC 80056CCC 4800428C */  lw         $v0, 0x48($v0)
    /* 474D0 80056CD0 00000000 */  nop
    /* 474D4 80056CD4 09F84000 */  jalr       $v0
    /* 474D8 80056CD8 01000534 */   ori       $a1, $zero, 0x1
  .Lfunc_80056BBC_80056CDC:
    /* 474DC 80056CDC 8C00248E */  lw         $a0, 0x8C($s1)
    /* 474E0 80056CE0 00000000 */  nop
    /* 474E4 80056CE4 0000828C */  lw         $v0, 0x0($a0)
    /* 474E8 80056CE8 00000000 */  nop
    /* 474EC 80056CEC 6000428C */  lw         $v0, 0x60($v0)
    /* 474F0 80056CF0 00000000 */  nop
    /* 474F4 80056CF4 09F84000 */  jalr       $v0
    /* 474F8 80056CF8 21280000 */   addu      $a1, $zero, $zero
    /* 474FC 80056CFC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 47500 80056D00 1800B28F */  lw         $s2, 0x18($sp)
    /* 47504 80056D04 1400B18F */  lw         $s1, 0x14($sp)
    /* 47508 80056D08 1000B08F */  lw         $s0, 0x10($sp)
    /* 4750C 80056D0C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 47510 80056D10 0800E003 */  jr         $ra
    /* 47514 80056D14 00000000 */   nop
endlabel Actor__RandomWander
