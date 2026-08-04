.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamSys__RestoreEntityState, 0x90

glabel DreamSys__RestoreEntityState
    /* 4C190 8005B990 21408000 */  addu       $t0, $a0, $zero
    /* 4C194 8005B994 90080725 */  addiu      $a3, $t0, 0x890
    /* 4C198 8005B998 1400098D */  lw         $t1, 0x14($t0)
    /* 4C19C 8005B99C E0080A25 */  addiu      $t2, $t0, 0x8E0
    /* 4C1A0 8005B9A0 21302001 */  addu       $a2, $t1, $zero
  .Lfunc_8005B990_8005B9A4:
    /* 4C1A4 8005B9A4 0000E28C */  lw         $v0, 0x0($a3)
    /* 4C1A8 8005B9A8 0400E38C */  lw         $v1, 0x4($a3)
    /* 4C1AC 8005B9AC 0800E48C */  lw         $a0, 0x8($a3)
    /* 4C1B0 8005B9B0 0C00E58C */  lw         $a1, 0xC($a3)
    /* 4C1B4 8005B9B4 0000C2AC */  sw         $v0, 0x0($a2)
    /* 4C1B8 8005B9B8 0400C3AC */  sw         $v1, 0x4($a2)
    /* 4C1BC 8005B9BC 0800C4AC */  sw         $a0, 0x8($a2)
    /* 4C1C0 8005B9C0 0C00C5AC */  sw         $a1, 0xC($a2)
    /* 4C1C4 8005B9C4 1000E724 */  addiu      $a3, $a3, 0x10
    /* 4C1C8 8005B9C8 F6FFEA14 */  bne        $a3, $t2, .Lfunc_8005B990_8005B9A4
    /* 4C1CC 8005B9CC 1000C624 */   addiu     $a2, $a2, 0x10
    /* 4C1D0 8005B9D0 4400278D */  lw         $a3, 0x44($t1)
    /* 4C1D4 8005B9D4 E0080625 */  addiu      $a2, $t0, 0x8E0
    /* 4C1D8 8005B9D8 00090825 */  addiu      $t0, $t0, 0x900
  .Lfunc_8005B990_8005B9DC:
    /* 4C1DC 8005B9DC 0000C28C */  lw         $v0, 0x0($a2)
    /* 4C1E0 8005B9E0 0400C38C */  lw         $v1, 0x4($a2)
    /* 4C1E4 8005B9E4 0800C48C */  lw         $a0, 0x8($a2)
    /* 4C1E8 8005B9E8 0C00C58C */  lw         $a1, 0xC($a2)
    /* 4C1EC 8005B9EC 0000E2AC */  sw         $v0, 0x0($a3)
    /* 4C1F0 8005B9F0 0400E3AC */  sw         $v1, 0x4($a3)
    /* 4C1F4 8005B9F4 0800E4AC */  sw         $a0, 0x8($a3)
    /* 4C1F8 8005B9F8 0C00E5AC */  sw         $a1, 0xC($a3)
    /* 4C1FC 8005B9FC 1000C624 */  addiu      $a2, $a2, 0x10
    /* 4C200 8005BA00 F6FFC814 */  bne        $a2, $t0, .Lfunc_8005B990_8005B9DC
    /* 4C204 8005BA04 1000E724 */   addiu     $a3, $a3, 0x10
    /* 4C208 8005BA08 0000C28C */  lw         $v0, 0x0($a2)
    /* 4C20C 8005BA0C 0400C38C */  lw         $v1, 0x4($a2)
    /* 4C210 8005BA10 0000E2AC */  sw         $v0, 0x0($a3)
    /* 4C214 8005BA14 0400E3AC */  sw         $v1, 0x4($a3)
    /* 4C218 8005BA18 0800E003 */  jr         $ra
    /* 4C21C 8005BA1C 000020AD */   sw        $zero, 0x0($t1)
endlabel DreamSys__RestoreEntityState
