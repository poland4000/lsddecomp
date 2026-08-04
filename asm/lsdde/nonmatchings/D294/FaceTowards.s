.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching FaceTowards, 0x1B8

glabel FaceTowards
    /* F2CC 8001EACC C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* F2D0 8001EAD0 2800B2AF */  sw         $s2, 0x28($sp)
    /* F2D4 8001EAD4 21908000 */  addu       $s2, $a0, $zero
    /* F2D8 8001EAD8 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* F2DC 8001EADC 2198C000 */  addu       $s3, $a2, $zero
    /* F2E0 8001EAE0 3800BFAF */  sw         $ra, 0x38($sp)
    /* F2E4 8001EAE4 3400B5AF */  sw         $s5, 0x34($sp)
    /* F2E8 8001EAE8 3000B4AF */  sw         $s4, 0x30($sp)
    /* F2EC 8001EAEC 2400B1AF */  sw         $s1, 0x24($sp)
    /* F2F0 8001EAF0 2000B0AF */  sw         $s0, 0x20($sp)
    /* F2F4 8001EAF4 1400428E */  lw         $v0, 0x14($s2)
    /* F2F8 8001EAF8 00000000 */  nop
    /* F2FC 8001EAFC 18005124 */  addiu      $s1, $v0, 0x18
    /* F300 8001EB00 0C00A28C */  lw         $v0, 0xC($a1)
    /* F304 8001EB04 5000B58F */  lw         $s5, 0x50($sp)
    /* F308 8001EB08 04004010 */  beqz       $v0, .Lfunc_8001EACC_8001EB1C
    /* F30C 8001EB0C 21A0E000 */   addu      $s4, $a3, $zero
    /* F310 8001EB10 1400A28C */  lw         $v0, 0x14($a1)
    /* F314 8001EB14 C87A0008 */  j          .Lfunc_8001EACC_8001EB20
    /* F318 8001EB18 38005024 */   addiu     $s0, $v0, 0x38
  .Lfunc_8001EACC_8001EB1C:
    /* F31C 8001EB1C 21800000 */  addu       $s0, $zero, $zero
  .Lfunc_8001EACC_8001EB20:
    /* F320 8001EB20 0000048E */  lw         $a0, 0x0($s0)
    /* F324 8001EB24 0000238E */  lw         $v1, 0x0($s1)
    /* F328 8001EB28 00000000 */  nop
    /* F32C 8001EB2C 05008310 */  beq        $a0, $v1, .Lfunc_8001EACC_8001EB44
    /* F330 8001EB30 23208300 */   subu      $a0, $a0, $v1
    /* F334 8001EB34 0800028E */  lw         $v0, 0x8($s0)
    /* F338 8001EB38 0800258E */  lw         $a1, 0x8($s1)
    /* F33C 8001EB3C D47A0008 */  j          .Lfunc_8001EACC_8001EB50
    /* F340 8001EB40 00000000 */   nop
  .Lfunc_8001EACC_8001EB44:
    /* F344 8001EB44 0800028E */  lw         $v0, 0x8($s0)
    /* F348 8001EB48 0800258E */  lw         $a1, 0x8($s1)
    /* F34C 8001EB4C 01000434 */  ori        $a0, $zero, 0x1
  .Lfunc_8001EACC_8001EB50:
    /* F350 8001EB50 327C000C */  jal        func_8001F0C8
    /* F354 8001EB54 23284500 */   subu      $a1, $v0, $a1
    /* F358 8001EB58 1400A2A7 */  sh         $v0, 0x14($sp)
    /* F35C 8001EB5C 0800048E */  lw         $a0, 0x8($s0)
    /* F360 8001EB60 0800238E */  lw         $v1, 0x8($s1)
    /* F364 8001EB64 00000000 */  nop
    /* F368 8001EB68 05008310 */  beq        $a0, $v1, .Lfunc_8001EACC_8001EB80
    /* F36C 8001EB6C 23208300 */   subu      $a0, $a0, $v1
    /* F370 8001EB70 0400028E */  lw         $v0, 0x4($s0)
    /* F374 8001EB74 0400258E */  lw         $a1, 0x4($s1)
    /* F378 8001EB78 E37A0008 */  j          .Lfunc_8001EACC_8001EB8C
    /* F37C 8001EB7C 00000000 */   nop
  .Lfunc_8001EACC_8001EB80:
    /* F380 8001EB80 0400028E */  lw         $v0, 0x4($s0)
    /* F384 8001EB84 0400258E */  lw         $a1, 0x4($s1)
    /* F388 8001EB88 01000434 */  ori        $a0, $zero, 0x1
  .Lfunc_8001EACC_8001EB8C:
    /* F38C 8001EB8C 327C000C */  jal        func_8001F0C8
    /* F390 8001EB90 23284500 */   subu      $a1, $v0, $a1
    /* F394 8001EB94 1000A2A7 */  sh         $v0, 0x10($sp)
    /* F398 8001EB98 1000A287 */  lh         $v0, 0x10($sp)
    /* F39C 8001EB9C 00000000 */  nop
    /* F3A0 8001EBA0 00044224 */  addiu      $v0, $v0, 0x400
    /* F3A4 8001EBA4 40180200 */  sll        $v1, $v0, 1
    /* F3A8 8001EBA8 21186200 */  addu       $v1, $v1, $v0
    /* F3AC 8001EBAC 00110300 */  sll        $v0, $v1, 4
    /* F3B0 8001EBB0 23104300 */  subu       $v0, $v0, $v1
    /* F3B4 8001EBB4 C0100200 */  sll        $v0, $v0, 3
    /* F3B8 8001EBB8 02004104 */  bgez       $v0, .Lfunc_8001EACC_8001EBC4
    /* F3BC 8001EBBC 00000000 */   nop
    /* F3C0 8001EBC0 FF0F4224 */  addiu      $v0, $v0, 0xFFF
  .Lfunc_8001EACC_8001EBC4:
    /* F3C4 8001EBC4 1400A487 */  lh         $a0, 0x14($sp)
    /* F3C8 8001EBC8 03130200 */  sra        $v0, $v0, 12
    /* F3CC 8001EBCC 1000A2A7 */  sh         $v0, 0x10($sp)
    /* F3D0 8001EBD0 40180400 */  sll        $v1, $a0, 1
    /* F3D4 8001EBD4 21186400 */  addu       $v1, $v1, $a0
    /* F3D8 8001EBD8 00110300 */  sll        $v0, $v1, 4
    /* F3DC 8001EBDC 23104300 */  subu       $v0, $v0, $v1
    /* F3E0 8001EBE0 C0100200 */  sll        $v0, $v0, 3
    /* F3E4 8001EBE4 03004104 */  bgez       $v0, .Lfunc_8001EACC_8001EBF4
    /* F3E8 8001EBE8 031B0200 */   sra       $v1, $v0, 12
    /* F3EC 8001EBEC FF0F4224 */  addiu      $v0, $v0, 0xFFF
    /* F3F0 8001EBF0 031B0200 */  sra        $v1, $v0, 12
  .Lfunc_8001EACC_8001EBF4:
    /* F3F4 8001EBF4 01000234 */  ori        $v0, $zero, 0x1
    /* F3F8 8001EBF8 1400A3A7 */  sh         $v1, 0x14($sp)
    /* F3FC 8001EBFC 1800A0A7 */  sh         $zero, 0x18($sp)
    /* F400 8001EC00 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* F404 8001EC04 1600A2A7 */  sh         $v0, 0x16($sp)
    /* F408 8001EC08 02006012 */  beqz       $s3, .Lfunc_8001EACC_8001EC14
    /* F40C 8001EC0C 1200A2A7 */   sh        $v0, 0x12($sp)
    /* F410 8001EC10 1000A0A7 */  sh         $zero, 0x10($sp)
  .Lfunc_8001EACC_8001EC14:
    /* F414 8001EC14 03008016 */  bnez       $s4, .Lfunc_8001EACC_8001EC24
    /* F418 8001EC18 21204002 */   addu      $a0, $s2, $zero
    /* F41C 8001EC1C B4006224 */  addiu      $v0, $v1, 0xB4
    /* F420 8001EC20 1400A2A7 */  sh         $v0, 0x14($sp)
  .Lfunc_8001EACC_8001EC24:
    /* F424 8001EC24 0000428E */  lw         $v0, 0x0($s2)
    /* F428 8001EC28 01000534 */  ori        $a1, $zero, 0x1
    /* F42C 8001EC2C 4400428C */  lw         $v0, 0x44($v0)
    /* F430 8001EC30 00000000 */  nop
    /* F434 8001EC34 09F84000 */  jalr       $v0
    /* F438 8001EC38 1000A627 */   addiu     $a2, $sp, 0x10
    /* F43C 8001EC3C 0700A012 */  beqz       $s5, .Lfunc_8001EACC_8001EC5C
    /* F440 8001EC40 21204002 */   addu      $a0, $s2, $zero
    /* F444 8001EC44 0000828C */  lw         $v0, 0x0($a0)
    /* F448 8001EC48 21280000 */  addu       $a1, $zero, $zero
    /* F44C 8001EC4C 4400428C */  lw         $v0, 0x44($v0)
    /* F450 8001EC50 00000000 */  nop
    /* F454 8001EC54 09F84000 */  jalr       $v0
    /* F458 8001EC58 2130A002 */   addu      $a2, $s5, $zero
  .Lfunc_8001EACC_8001EC5C:
    /* F45C 8001EC5C 3800BF8F */  lw         $ra, 0x38($sp)
    /* F460 8001EC60 3400B58F */  lw         $s5, 0x34($sp)
    /* F464 8001EC64 3000B48F */  lw         $s4, 0x30($sp)
    /* F468 8001EC68 2C00B38F */  lw         $s3, 0x2C($sp)
    /* F46C 8001EC6C 2800B28F */  lw         $s2, 0x28($sp)
    /* F470 8001EC70 2400B18F */  lw         $s1, 0x24($sp)
    /* F474 8001EC74 2000B08F */  lw         $s0, 0x20($sp)
    /* F478 8001EC78 4000BD27 */  addiu      $sp, $sp, 0x40
    /* F47C 8001EC7C 0800E003 */  jr         $ra
    /* F480 8001EC80 00000000 */   nop
endlabel FaceTowards
