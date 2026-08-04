.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001E58C, 0x74

glabel func_8001E58C
    /* ED8C 8001E58C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* ED90 8001E590 3400B1AF */  sw         $s1, 0x34($sp)
    /* ED94 8001E594 2188A000 */  addu       $s1, $a1, $zero
    /* ED98 8001E598 3000B0AF */  sw         $s0, 0x30($sp)
    /* ED9C 8001E59C 2180C000 */  addu       $s0, $a2, $zero
    /* EDA0 8001E5A0 3800BFAF */  sw         $ra, 0x38($sp)
    /* EDA4 8001E5A4 0000828C */  lw         $v0, 0x0($a0)
    /* EDA8 8001E5A8 1000A527 */  addiu      $a1, $sp, 0x10
    /* EDAC 8001E5AC 8400428C */  lw         $v0, 0x84($v0)
    /* EDB0 8001E5B0 00000000 */  nop
    /* EDB4 8001E5B4 09F84000 */  jalr       $v0
    /* EDB8 8001E5B8 21300000 */   addu      $a2, $zero, $zero
    /* EDBC 8001E5BC 21202002 */  addu       $a0, $s1, $zero
    /* EDC0 8001E5C0 00000286 */  lh         $v0, 0x0($s0)
    /* EDC4 8001E5C4 21288000 */  addu       $a1, $a0, $zero
    /* EDC8 8001E5C8 000082AC */  sw         $v0, 0x0($a0)
    /* EDCC 8001E5CC 02000286 */  lh         $v0, 0x2($s0)
    /* EDD0 8001E5D0 01000634 */  ori        $a2, $zero, 0x1
    /* EDD4 8001E5D4 040082AC */  sw         $v0, 0x4($a0)
    /* EDD8 8001E5D8 04000286 */  lh         $v0, 0x4($s0)
    /* EDDC 8001E5DC 1000A727 */  addiu      $a3, $sp, 0x10
    /* EDE0 8001E5E0 A67B000C */  jal        CopyTripleArray
    /* EDE4 8001E5E4 080082AC */   sw        $v0, 0x8($a0)
    /* EDE8 8001E5E8 3800BF8F */  lw         $ra, 0x38($sp)
    /* EDEC 8001E5EC 3400B18F */  lw         $s1, 0x34($sp)
    /* EDF0 8001E5F0 3000B08F */  lw         $s0, 0x30($sp)
    /* EDF4 8001E5F4 4000BD27 */  addiu      $sp, $sp, 0x40
    /* EDF8 8001E5F8 0800E003 */  jr         $ra
    /* EDFC 8001E5FC 00000000 */   nop
endlabel func_8001E58C
