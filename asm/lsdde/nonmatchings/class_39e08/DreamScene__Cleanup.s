.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamScene__Cleanup, 0xBC

glabel DreamScene__Cleanup
    /* 3A158 80049958 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3A15C 8004995C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3A160 80049960 21888000 */  addu       $s1, $a0, $zero
    /* 3A164 80049964 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3A168 80049968 2180A000 */  addu       $s0, $a1, $zero
    /* 3A16C 8004996C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3A170 80049970 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3A174 80049974 2E29010C */  jal        SceneObj__GetVtable
    /* 3A178 80049978 2190C000 */   addu      $s2, $a2, $zero
    /* 3A17C 8004997C 21202002 */  addu       $a0, $s1, $zero
    /* 3A180 80049980 21280002 */  addu       $a1, $s0, $zero
    /* 3A184 80049984 3800428C */  lw         $v0, 0x38($v0)
    /* 3A188 80049988 00000000 */  nop
    /* 3A18C 8004998C 09F84000 */  jalr       $v0
    /* 3A190 80049990 21304002 */   addu      $a2, $s2, $zero
    /* 3A194 80049994 0000028E */  lw         $v0, 0x0($s0)
    /* 3A198 80049998 00000000 */  nop
    /* 3A19C 8004999C 0000448C */  lw         $a0, 0x0($v0)
    /* 3A1A0 800499A0 341F0234 */  ori        $v0, $zero, 0x1F34
    /* 3A1A4 800499A4 FFFF8330 */  andi       $v1, $a0, 0xFFFF
    /* 3A1A8 800499A8 07006214 */  bne        $v1, $v0, .Lfunc_80049958_800499C8
    /* 3A1AC 800499AC 0F00023C */   lui       $v0, (0xFFFFF >> 16)
    /* 3A1B0 800499B0 21202002 */  addu       $a0, $s1, $zero
    /* 3A1B4 800499B4 0000828C */  lw         $v0, 0x0($a0)
    /* 3A1B8 800499B8 00000000 */  nop
    /* 3A1BC 800499BC 8000428C */  lw         $v0, 0x80($v0)
    /* 3A1C0 800499C0 7B260108 */  j          .Lfunc_80049958_800499EC
    /* 3A1C4 800499C4 21280002 */   addu      $a1, $s0, $zero
  .Lfunc_80049958_800499C8:
    /* 3A1C8 800499C8 FFFF4234 */  ori        $v0, $v0, (0xFFFFF & 0xFFFF)
    /* 3A1CC 800499CC 0200033C */  lui        $v1, (0x2F230 >> 16)
    /* 3A1D0 800499D0 30F26334 */  ori        $v1, $v1, (0x2F230 & 0xFFFF)
    /* 3A1D4 800499D4 24108200 */  and        $v0, $a0, $v0
    /* 3A1D8 800499D8 07004314 */  bne        $v0, $v1, .Lfunc_80049958_800499F8
    /* 3A1DC 800499DC 21202002 */   addu      $a0, $s1, $zero
    /* 3A1E0 800499E0 0000828C */  lw         $v0, 0x0($a0)
    /* 3A1E4 800499E4 21280002 */  addu       $a1, $s0, $zero
    /* 3A1E8 800499E8 8400428C */  lw         $v0, 0x84($v0)
  .Lfunc_80049958_800499EC:
    /* 3A1EC 800499EC 00000000 */  nop
    /* 3A1F0 800499F0 09F84000 */  jalr       $v0
    /* 3A1F4 800499F4 21304002 */   addu      $a2, $s2, $zero
  .Lfunc_80049958_800499F8:
    /* 3A1F8 800499F8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3A1FC 800499FC 1800B28F */  lw         $s2, 0x18($sp)
    /* 3A200 80049A00 1400B18F */  lw         $s1, 0x14($sp)
    /* 3A204 80049A04 1000B08F */  lw         $s0, 0x10($sp)
    /* 3A208 80049A08 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3A20C 80049A0C 0800E003 */  jr         $ra
    /* 3A210 80049A10 00000000 */   nop
endlabel DreamScene__Cleanup
