.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__MethodCDA4, 0x80

glabel StageRenderer__MethodCDA4
    /* 3D5A4 8004CDA4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3D5A8 8004CDA8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3D5AC 8004CDAC 2188C000 */  addu       $s1, $a2, $zero
    /* 3D5B0 8004CDB0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3D5B4 8004CDB4 40801100 */  sll        $s0, $s1, 1
    /* 3D5B8 8004CDB8 21801102 */  addu       $s0, $s0, $s1
    /* 3D5BC 8004CDBC 80801000 */  sll        $s0, $s0, 2
    /* 3D5C0 8004CDC0 8C001026 */  addiu      $s0, $s0, 0x8C
    /* 3D5C4 8004CDC4 21809000 */  addu       $s0, $a0, $s0
    /* 3D5C8 8004CDC8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 3D5CC 8004CDCC 0880063C */  lui        $a2, %hi(D_80086990)
    /* 3D5D0 8004CDD0 9069C624 */  addiu      $a2, $a2, %lo(D_80086990)
    /* 3D5D4 8004CDD4 0000C28C */  lw         $v0, 0x0($a2)
    /* 3D5D8 8004CDD8 0400C38C */  lw         $v1, 0x4($a2)
    /* 3D5DC 8004CDDC 0800C58C */  lw         $a1, 0x8($a2)
    /* 3D5E0 8004CDE0 000002AE */  sw         $v0, 0x0($s0)
    /* 3D5E4 8004CDE4 040003AE */  sw         $v1, 0x4($s0)
    /* 3D5E8 8004CDE8 080005AE */  sw         $a1, 0x8($s0)
    /* 3D5EC 8004CDEC 0000828C */  lw         $v0, 0x0($a0)
    /* 3D5F0 8004CDF0 00000000 */  nop
    /* 3D5F4 8004CDF4 2401428C */  lw         $v0, 0x124($v0)
    /* 3D5F8 8004CDF8 00000000 */  nop
    /* 3D5FC 8004CDFC 09F84000 */  jalr       $v0
    /* 3D600 8004CE00 2128E000 */   addu      $a1, $a3, $zero
    /* 3D604 8004CE04 000002AE */  sw         $v0, 0x0($s0)
    /* 3D608 8004CE08 01002226 */  addiu      $v0, $s1, 0x1
    /* 3D60C 8004CE0C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 3D610 8004CE10 1400B18F */  lw         $s1, 0x14($sp)
    /* 3D614 8004CE14 1000B08F */  lw         $s0, 0x10($sp)
    /* 3D618 8004CE18 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3D61C 8004CE1C 0800E003 */  jr         $ra
    /* 3D620 8004CE20 00000000 */   nop
endlabel StageRenderer__MethodCDA4
