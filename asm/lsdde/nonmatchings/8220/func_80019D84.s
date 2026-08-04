.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80019D84, 0x160

glabel func_80019D84
    /* A584 80019D84 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A588 80019D88 2000B2AF */  sw         $s2, 0x20($sp)
    /* A58C 80019D8C 2190A000 */  addu       $s2, $a1, $zero
    /* A590 80019D90 2400BFAF */  sw         $ra, 0x24($sp)
    /* A594 80019D94 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A598 80019D98 1800B0AF */  sw         $s0, 0x18($sp)
    /* A59C 80019D9C 7800428E */  lw         $v0, 0x78($s2)
    /* A5A0 80019DA0 00000000 */  nop
    /* A5A4 80019DA4 13004014 */  bnez       $v0, .Lfunc_80019D84_80019DF4
    /* A5A8 80019DA8 21888000 */   addu      $s1, $a0, $zero
    /* A5AC 80019DAC FF00043C */  lui        $a0, (0xFFFFFF >> 16)
    /* A5B0 80019DB0 FFFF8434 */  ori        $a0, $a0, (0xFFFFFF & 0xFFFF)
    /* A5B4 80019DB4 00FF063C */  lui        $a2, (0xFF000000 >> 16)
    /* A5B8 80019DB8 3000428E */  lw         $v0, 0x30($s2)
    /* A5BC 80019DBC 0000238E */  lw         $v1, 0x0($s1)
    /* A5C0 80019DC0 0000428C */  lw         $v0, 0x0($v0)
    /* A5C4 80019DC4 24186600 */  and        $v1, $v1, $a2
    /* A5C8 80019DC8 24104400 */  and        $v0, $v0, $a0
    /* A5CC 80019DCC 25186200 */  or         $v1, $v1, $v0
    /* A5D0 80019DD0 000023AE */  sw         $v1, 0x0($s1)
    /* A5D4 80019DD4 3000458E */  lw         $a1, 0x30($s2)
    /* A5D8 80019DD8 28002226 */  addiu      $v0, $s1, 0x28
    /* A5DC 80019DDC 0000A38C */  lw         $v1, 0x0($a1)
    /* A5E0 80019DE0 24202402 */  and        $a0, $s1, $a0
    /* A5E4 80019DE4 24186600 */  and        $v1, $v1, $a2
    /* A5E8 80019DE8 25186400 */  or         $v1, $v1, $a0
    /* A5EC 80019DEC B2670008 */  j          .Lfunc_80019D84_80019EC8
    /* A5F0 80019DF0 0000A3AC */   sw        $v1, 0x0($a1)
  .Lfunc_80019D84_80019DF4:
    /* A5F4 80019DF4 0980103C */  lui        $s0, %hi(D_8008AEE8)
    /* A5F8 80019DF8 E8AE1026 */  addiu      $s0, $s0, %lo(D_8008AEE8)
    /* A5FC 80019DFC 21200002 */  addu       $a0, $s0, $zero
    /* A600 80019E00 21284002 */  addu       $a1, $s2, $zero
    /* A604 80019E04 0E002296 */  lhu        $v0, 0xE($s1)
    /* A608 80019E08 04002626 */  addiu      $a2, $s1, 0x4
    /* A60C 80019E0C 1000A2AF */  sw         $v0, 0x10($sp)
    /* A610 80019E10 16002296 */  lhu        $v0, 0x16($s1)
    /* A614 80019E14 01000734 */  ori        $a3, $zero, 0x1
    /* A618 80019E18 E068000C */  jal        func_8001A380
    /* A61C 80019E1C 1400A2AF */   sw        $v0, 0x14($sp)
    /* A620 80019E20 94004426 */  addiu      $a0, $s2, 0x94
    /* A624 80019E24 A4004526 */  addiu      $a1, $s2, 0xA4
    /* A628 80019E28 08002626 */  addiu      $a2, $s1, 0x8
    /* A62C 80019E2C 10002726 */  addiu      $a3, $s1, 0x10
    /* A630 80019E30 18002226 */  addiu      $v0, $s1, 0x18
    /* A634 80019E34 1000A2AF */  sw         $v0, 0x10($sp)
    /* A638 80019E38 20002226 */  addiu      $v0, $s1, 0x20
    /* A63C 80019E3C 3069000C */  jal        CopyPrimQuad
    /* A640 80019E40 1400A2AF */   sw        $v0, 0x14($sp)
    /* A644 80019E44 9400438E */  lw         $v1, 0x94($s2)
    /* A648 80019E48 1E002296 */  lhu        $v0, 0x1E($s1)
    /* A64C 80019E4C 00000000 */  nop
    /* A650 80019E50 0A0062A4 */  sh         $v0, 0xA($v1)
    /* A654 80019E54 9800438E */  lw         $v1, 0x98($s2)
    /* A658 80019E58 1E002296 */  lhu        $v0, 0x1E($s1)
    /* A65C 80019E5C 00000000 */  nop
    /* A660 80019E60 0A0062A4 */  sh         $v0, 0xA($v1)
    /* A664 80019E64 9C00438E */  lw         $v1, 0x9C($s2)
    /* A668 80019E68 1E002296 */  lhu        $v0, 0x1E($s1)
    /* A66C 80019E6C 00000000 */  nop
    /* A670 80019E70 0A0062A4 */  sh         $v0, 0xA($v1)
    /* A674 80019E74 A000438E */  lw         $v1, 0xA0($s2)
    /* A678 80019E78 1E002296 */  lhu        $v0, 0x1E($s1)
    /* A67C 80019E7C 00000000 */  nop
    /* A680 80019E80 0A0062A4 */  sh         $v0, 0xA($v1)
    /* A684 80019E84 9400438E */  lw         $v1, 0x94($s2)
    /* A688 80019E88 0C002296 */  lhu        $v0, 0xC($s1)
    /* A68C 80019E8C 00000000 */  nop
    /* A690 80019E90 080062A4 */  sh         $v0, 0x8($v1)
    /* A694 80019E94 9800438E */  lw         $v1, 0x98($s2)
    /* A698 80019E98 14002296 */  lhu        $v0, 0x14($s1)
    /* A69C 80019E9C 00000000 */  nop
    /* A6A0 80019EA0 080062A4 */  sh         $v0, 0x8($v1)
    /* A6A4 80019EA4 9C00438E */  lw         $v1, 0x9C($s2)
    /* A6A8 80019EA8 1C002296 */  lhu        $v0, 0x1C($s1)
    /* A6AC 80019EAC 21202002 */  addu       $a0, $s1, $zero
    /* A6B0 80019EB0 080062A4 */  sh         $v0, 0x8($v1)
    /* A6B4 80019EB4 A000438E */  lw         $v1, 0xA0($s2)
    /* A6B8 80019EB8 24008294 */  lhu        $v0, 0x24($a0)
    /* A6BC 80019EBC 21280002 */  addu       $a1, $s0, $zero
    /* A6C0 80019EC0 AD6E000C */  jal        func_8001BAB4
    /* A6C4 80019EC4 080062A4 */   sh        $v0, 0x8($v1)
  .Lfunc_80019D84_80019EC8:
    /* A6C8 80019EC8 2400BF8F */  lw         $ra, 0x24($sp)
    /* A6CC 80019ECC 2000B28F */  lw         $s2, 0x20($sp)
    /* A6D0 80019ED0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A6D4 80019ED4 1800B08F */  lw         $s0, 0x18($sp)
    /* A6D8 80019ED8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* A6DC 80019EDC 0800E003 */  jr         $ra
    /* A6E0 80019EE0 00000000 */   nop
endlabel func_80019D84
