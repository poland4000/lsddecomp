.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching Actor__InitMotion, 0x120

glabel Actor__InitMotion
    /* 46D20 80056520 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 46D24 80056524 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 46D28 80056528 21888000 */  addu       $s1, $a0, $zero
    /* 46D2C 8005652C 2800B0AF */  sw         $s0, 0x28($sp)
    /* 46D30 80056530 2180A000 */  addu       $s0, $a1, $zero
    /* 46D34 80056534 1800A427 */  addiu      $a0, $sp, 0x18
    /* 46D38 80056538 A404828F */  lw         $v0, %gp_rel(D_8008ACAC)($gp)
    /* 46D3C 8005653C 2128C000 */  addu       $a1, $a2, $zero
    /* 46D40 80056540 3000BFAF */  sw         $ra, 0x30($sp)
    /* 46D44 80056544 1800428C */  lw         $v0, 0x18($v0)
    /* 46D48 80056548 00000000 */  nop
    /* 46D4C 8005654C A80482AF */  sw         $v0, %gp_rel(D_8008ACB0)($gp)
    /* 46D50 80056550 E559010C */  jal        Vec3Add
    /* 46D54 80056554 58002626 */   addiu     $a2, $s1, 0x58
    /* 46D58 80056558 21202002 */  addu       $a0, $s1, $zero
    /* 46D5C 8005655C 6800228E */  lw         $v0, 0x68($s1)
    /* 46D60 80056560 21280002 */  addu       $a1, $s0, $zero
    /* 46D64 80056564 1000A2AF */  sw         $v0, 0x10($sp)
    /* 46D68 80056568 6400278E */  lw         $a3, 0x64($s1)
    /* 46D6C 8005656C F559010C */  jal        Vec3Sub
    /* 46D70 80056570 1800A627 */   addiu     $a2, $sp, 0x18
    /* 46D74 80056574 5400238E */  lw         $v1, 0x54($s1)
    /* 46D78 80056578 00000000 */  nop
    /* 46D7C 8005657C 02006228 */  slti       $v0, $v1, 0x2
    /* 46D80 80056580 10004010 */  beqz       $v0, .Lfunc_80056520_800565C4
    /* 46D84 80056584 80100300 */   sll       $v0, $v1, 2
    /* 46D88 80056588 9C04848F */  lw         $a0, %gp_rel(D_8008ACA4)($gp)
    /* 46D8C 8005658C 00000000 */  nop
    /* 46D90 80056590 0000838C */  lw         $v1, 0x0($a0)
    /* 46D94 80056594 0980013C */  lui        $at, %hi(D_8008AB98)
    /* 46D98 80056598 98AB2124 */  addiu      $at, $at, %lo(D_8008AB98)
    /* 46D9C 8005659C 21082200 */  addu       $at, $at, $v0
    /* 46DA0 800565A0 0000258C */  lw         $a1, 0x0($at)
    /* 46DA4 800565A4 8000628C */  lw         $v0, 0x80($v1)
    /* 46DA8 800565A8 00000000 */  nop
    /* 46DAC 800565AC 09F84000 */  jalr       $v0
    /* 46DB0 800565B0 00000000 */   nop
    /* 46DB4 800565B4 21202002 */  addu       $a0, $s1, $zero
    /* 46DB8 800565B8 DC79000C */  jal        SceneNode__SetParent
    /* 46DBC 800565BC 21284000 */   addu      $a1, $v0, $zero
    /* 46DC0 800565C0 5400238E */  lw         $v1, 0x54($s1)
  .Lfunc_80056520_800565C4:
    /* 46DC4 800565C4 02000234 */  ori        $v0, $zero, 0x2
    /* 46DC8 800565C8 10006210 */  beq        $v1, $v0, .Lfunc_80056520_8005660C
    /* 46DCC 800565CC 03006228 */   slti      $v0, $v1, 0x3
    /* 46DD0 800565D0 05004010 */  beqz       $v0, .Lfunc_80056520_800565E8
    /* 46DD4 800565D4 00000000 */   nop
    /* 46DD8 800565D8 08006010 */  beqz       $v1, .Lfunc_80056520_800565FC
    /* 46DDC 800565DC 21202002 */   addu      $a0, $s1, $zero
    /* 46DE0 800565E0 8A590108 */  j          .Lfunc_80056520_80056628
    /* 46DE4 800565E4 00000000 */   nop
  .Lfunc_80056520_800565E8:
    /* 46DE8 800565E8 03000234 */  ori        $v0, $zero, 0x3
    /* 46DEC 800565EC 0C006210 */  beq        $v1, $v0, .Lfunc_80056520_80056620
    /* 46DF0 800565F0 21202002 */   addu      $a0, $s1, $zero
    /* 46DF4 800565F4 8A590108 */  j          .Lfunc_80056520_80056628
    /* 46DF8 800565F8 00000000 */   nop
  .Lfunc_80056520_800565FC:
    /* 46DFC 800565FC 165A010C */  jal        Actor__Method56858
    /* 46E00 80056600 21280000 */   addu      $a1, $zero, $zero
    /* 46E04 80056604 8A590108 */  j          .Lfunc_80056520_80056628
    /* 46E08 80056608 00000000 */   nop
  .Lfunc_80056520_8005660C:
    /* 46E0C 8005660C 21202002 */  addu       $a0, $s1, $zero
    /* 46E10 80056610 EF5A010C */  jal        Actor__RandomWander
    /* 46E14 80056614 21280000 */   addu      $a1, $zero, $zero
    /* 46E18 80056618 8A590108 */  j          .Lfunc_80056520_80056628
    /* 46E1C 8005661C 00000000 */   nop
  .Lfunc_80056520_80056620:
    /* 46E20 80056620 875B010C */  jal        Actor__SpawnSpriteDefault
    /* 46E24 80056624 21280000 */   addu      $a1, $zero, $zero
  .Lfunc_80056520_80056628:
    /* 46E28 80056628 3000BF8F */  lw         $ra, 0x30($sp)
    /* 46E2C 8005662C 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 46E30 80056630 2800B08F */  lw         $s0, 0x28($sp)
    /* 46E34 80056634 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 46E38 80056638 0800E003 */  jr         $ra
    /* 46E3C 8005663C 00000000 */   nop
endlabel Actor__InitMotion
