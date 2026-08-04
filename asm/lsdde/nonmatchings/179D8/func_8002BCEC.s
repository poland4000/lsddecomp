.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002BCEC, 0x2BC

glabel func_8002BCEC
    /* 1C4EC 8002BCEC 0780023C */  lui        $v0, %hi(D_8006D938)
    /* 1C4F0 8002BCF0 38D9428C */  lw         $v0, %lo(D_8006D938)($v0)
    /* 1C4F4 8002BCF4 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1C4F8 8002BCF8 3800B6AF */  sw         $s6, 0x38($sp)
    /* 1C4FC 8002BCFC 21B08000 */  addu       $s6, $a0, $zero
    /* 1C500 8002BD00 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 1C504 8002BD04 3400B5AF */  sw         $s5, 0x34($sp)
    /* 1C508 8002BD08 3000B4AF */  sw         $s4, 0x30($sp)
    /* 1C50C 8002BD0C 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 1C510 8002BD10 2800B2AF */  sw         $s2, 0x28($sp)
    /* 1C514 8002BD14 2400B1AF */  sw         $s1, 0x24($sp)
    /* 1C518 8002BD18 9700C212 */  beq        $s6, $v0, .Lfunc_8002BCEC_8002BF78
    /* 1C51C 8002BD1C 2000B0AF */   sw        $s0, 0x20($sp)
    /* 1C520 8002BD20 01000434 */  ori        $a0, $zero, 0x1
    /* 1C524 8002BD24 40101600 */  sll        $v0, $s6, 1
    /* 1C528 8002BD28 21105600 */  addu       $v0, $v0, $s6
    /* 1C52C 8002BD2C 80100200 */  sll        $v0, $v0, 2
    /* 1C530 8002BD30 23105600 */  subu       $v0, $v0, $s6
    /* 1C534 8002BD34 80100200 */  sll        $v0, $v0, 2
    /* 1C538 8002BD38 0980013C */  lui        $at, %hi(D_8008B9CC)
    /* 1C53C 8002BD3C CCB92124 */  addiu      $at, $at, %lo(D_8008B9CC)
    /* 1C540 8002BD40 21082200 */  addu       $at, $at, $v0
    /* 1C544 8002BD44 0000258C */  lw         $a1, 0x0($at)
    /* 1C548 8002BD48 0980103C */  lui        $s0, %hi(D_8008CFF0)
    /* 1C54C 8002BD4C F0CF1026 */  addiu      $s0, $s0, %lo(D_8008CFF0)
    /* 1C550 8002BD50 EAAF000C */  jal        func_8002BFA8
    /* 1C554 8002BD54 21300002 */   addu      $a2, $s0, $zero
    /* 1C558 8002BD58 01000334 */  ori        $v1, $zero, 0x1
    /* 1C55C 8002BD5C 0C004310 */  beq        $v0, $v1, .Lfunc_8002BCEC_8002BD90
    /* 1C560 8002BD60 00000000 */   nop
    /* 1C564 8002BD64 0780023C */  lui        $v0, %hi(gCdDebugLevel)
    /* 1C568 8002BD68 08D6428C */  lw         $v0, %lo(gCdDebugLevel)($v0)
    /* 1C56C 8002BD6C 00000000 */  nop
    /* 1C570 8002BD70 82004018 */  blez       $v0, .Lfunc_8002BCEC_8002BF7C
    /* 1C574 8002BD74 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 1C578 8002BD78 0180043C */  lui        $a0, %hi(D_80010C58)
    /* 1C57C 8002BD7C 580C8424 */  addiu      $a0, $a0, %lo(D_80010C58)
    /* 1C580 8002BD80 084B000C */  jal        DebugPrintf
    /* 1C584 8002BD84 00000000 */   nop
    /* 1C588 8002BD88 DFAF0008 */  j          .Lfunc_8002BCEC_8002BF7C
    /* 1C58C 8002BD8C FFFF0224 */   addiu     $v0, $zero, -0x1
  .Lfunc_8002BCEC_8002BD90:
    /* 1C590 8002BD90 0780023C */  lui        $v0, %hi(gCdDebugLevel)
    /* 1C594 8002BD94 08D6428C */  lw         $v0, %lo(gCdDebugLevel)($v0)
    /* 1C598 8002BD98 00000000 */  nop
    /* 1C59C 8002BD9C 02004228 */  slti       $v0, $v0, 0x2
    /* 1C5A0 8002BDA0 05004014 */  bnez       $v0, .Lfunc_8002BCEC_8002BDB8
    /* 1C5A4 8002BDA4 21900000 */   addu      $s2, $zero, $zero
    /* 1C5A8 8002BDA8 0180043C */  lui        $a0, %hi(D_80010C78)
    /* 1C5AC 8002BDAC 780C8424 */  addiu      $a0, $a0, %lo(D_80010C78)
    /* 1C5B0 8002BDB0 084B000C */  jal        DebugPrintf
    /* 1C5B4 8002BDB4 00000000 */   nop
  .Lfunc_8002BCEC_8002BDB8:
    /* 1C5B8 8002BDB8 01000234 */  ori        $v0, $zero, 0x1
    /* 1C5BC 8002BDBC 59004010 */  beqz       $v0, .Lfunc_8002BCEC_8002BF24
    /* 1C5C0 8002BDC0 00000000 */   nop
    /* 1C5C4 8002BDC4 0980153C */  lui        $s5, %hi(D_8008B3F0)
    /* 1C5C8 8002BDC8 F0B3B526 */  addiu      $s5, $s5, %lo(D_8008B3F0)
    /* 1C5CC 8002BDCC 0800B326 */  addiu      $s3, $s5, 0x8
    /* 1C5D0 8002BDD0 21880000 */  addu       $s1, $zero, $zero
    /* 1C5D4 8002BDD4 21A0A002 */  addu       $s4, $s5, $zero
  .Lfunc_8002BCEC_8002BDD8:
    /* 1C5D8 8002BDD8 00000292 */  lbu        $v0, 0x0($s0)
    /* 1C5DC 8002BDDC 00000000 */  nop
    /* 1C5E0 8002BDE0 50004010 */  beqz       $v0, .Lfunc_8002BCEC_8002BF24
    /* 1C5E4 8002BDE4 00000000 */   nop
    /* 1C5E8 8002BDE8 0500028A */  lwl        $v0, 0x5($s0)
    /* 1C5EC 8002BDEC 0200029A */  lwr        $v0, 0x2($s0)
    /* 1C5F0 8002BDF0 00000000 */  nop
    /* 1C5F4 8002BDF4 1B00A2AB */  swl        $v0, 0x1B($sp)
    /* 1C5F8 8002BDF8 1800A2BB */  swr        $v0, 0x18($sp)
    /* 1C5FC 8002BDFC 1800A48F */  lw         $a0, 0x18($sp)
    /* 1C600 8002BE00 BDA4000C */  jal        CdIntToPos
    /* 1C604 8002BE04 21288002 */   addu      $a1, $s4, $zero
    /* 1C608 8002BE08 0400A226 */  addiu      $v0, $s5, 0x4
    /* 1C60C 8002BE0C 21102202 */  addu       $v0, $s1, $v0
    /* 1C610 8002BE10 0D00038A */  lwl        $v1, 0xD($s0)
    /* 1C614 8002BE14 0A00039A */  lwr        $v1, 0xA($s0)
    /* 1C618 8002BE18 00000000 */  nop
    /* 1C61C 8002BE1C 030043A8 */  swl        $v1, 0x3($v0)
    /* 1C620 8002BE20 000043B8 */  swr        $v1, 0x0($v0)
    /* 1C624 8002BE24 05004012 */  beqz       $s2, .Lfunc_8002BCEC_8002BE3C
    /* 1C628 8002BE28 01000234 */   ori       $v0, $zero, 0x1
    /* 1C62C 8002BE2C 07004212 */  beq        $s2, $v0, .Lfunc_8002BCEC_8002BE4C
    /* 1C630 8002BE30 21206002 */   addu      $a0, $s3, $zero
    /* 1C634 8002BE34 9BAF0008 */  j          .Lfunc_8002BCEC_8002BE6C
    /* 1C638 8002BE38 00000000 */   nop
  .Lfunc_8002BCEC_8002BE3C:
    /* 1C63C 8002BE3C 0180023C */  lui        $v0, %hi(D_80010C94)
    /* 1C640 8002BE40 940C4294 */  lhu        $v0, %lo(D_80010C94)($v0)
    /* 1C644 8002BE44 A2AF0008 */  j          .Lfunc_8002BCEC_8002BE88
    /* 1C648 8002BE48 0800A2A6 */   sh        $v0, 0x8($s5)
  .Lfunc_8002BCEC_8002BE4C:
    /* 1C64C 8002BE4C 0180023C */  lui        $v0, %hi(D_80010C98)
    /* 1C650 8002BE50 980C4284 */  lh         $v0, %lo(D_80010C98)($v0)
    /* 1C654 8002BE54 0180033C */  lui        $v1, %hi(D_80010C9A)
    /* 1C658 8002BE58 9A0C6380 */  lb         $v1, %lo(D_80010C9A)($v1)
    /* 1C65C 8002BE5C 2000A2A6 */  sh         $v0, 0x20($s5)
    /* 1C660 8002BE60 2200A3A2 */  sb         $v1, 0x22($s5)
    /* 1C664 8002BE64 A2AF0008 */  j          .Lfunc_8002BCEC_8002BE88
    /* 1C668 8002BE68 00000000 */   nop
  .Lfunc_8002BCEC_8002BE6C:
    /* 1C66C 8002BE6C 20000692 */  lbu        $a2, 0x20($s0)
    /* 1C670 8002BE70 05B0000C */  jal        Mem_Copy
    /* 1C674 8002BE74 21000526 */   addiu     $a1, $s0, 0x21
    /* 1C678 8002BE78 20000292 */  lbu        $v0, 0x20($s0)
    /* 1C67C 8002BE7C 00000000 */  nop
    /* 1C680 8002BE80 21106202 */  addu       $v0, $s3, $v0
    /* 1C684 8002BE84 000040A0 */  sb         $zero, 0x0($v0)
  .Lfunc_8002BCEC_8002BE88:
    /* 1C688 8002BE88 0780023C */  lui        $v0, %hi(gCdDebugLevel)
    /* 1C68C 8002BE8C 08D6428C */  lw         $v0, %lo(gCdDebugLevel)($v0)
    /* 1C690 8002BE90 00000000 */  nop
    /* 1C694 8002BE94 02004228 */  slti       $v0, $v0, 0x2
    /* 1C698 8002BE98 16004014 */  bnez       $v0, .Lfunc_8002BCEC_8002BEF4
    /* 1C69C 8002BE9C 18009426 */   addiu     $s4, $s4, 0x18
    /* 1C6A0 8002BEA0 0980013C */  lui        $at, %hi(D_8008B3F0)
    /* 1C6A4 8002BEA4 F0B32124 */  addiu      $at, $at, %lo(D_8008B3F0)
    /* 1C6A8 8002BEA8 21083100 */  addu       $at, $at, $s1
    /* 1C6AC 8002BEAC 00002590 */  lbu        $a1, 0x0($at)
    /* 1C6B0 8002BEB0 0980013C */  lui        $at, %hi(D_8008B3F0 + 0x1)
    /* 1C6B4 8002BEB4 F1B32124 */  addiu      $at, $at, %lo(D_8008B3F0 + 0x1)
    /* 1C6B8 8002BEB8 21083100 */  addu       $at, $at, $s1
    /* 1C6BC 8002BEBC 00002690 */  lbu        $a2, 0x0($at)
    /* 1C6C0 8002BEC0 0980013C */  lui        $at, %hi(D_8008B3F0 + 0x2)
    /* 1C6C4 8002BEC4 F2B32124 */  addiu      $at, $at, %lo(D_8008B3F0 + 0x2)
    /* 1C6C8 8002BEC8 21083100 */  addu       $at, $at, $s1
    /* 1C6CC 8002BECC 00002790 */  lbu        $a3, 0x0($at)
    /* 1C6D0 8002BED0 0980013C */  lui        $at, %hi(D_8008B3F4)
    /* 1C6D4 8002BED4 F4B32124 */  addiu      $at, $at, %lo(D_8008B3F4)
    /* 1C6D8 8002BED8 21083100 */  addu       $at, $at, $s1
    /* 1C6DC 8002BEDC 0000228C */  lw         $v0, 0x0($at)
    /* 1C6E0 8002BEE0 0180043C */  lui        $a0, %hi(D_80010C9C)
    /* 1C6E4 8002BEE4 9C0C8424 */  addiu      $a0, $a0, %lo(D_80010C9C)
    /* 1C6E8 8002BEE8 1400B3AF */  sw         $s3, 0x14($sp)
    /* 1C6EC 8002BEEC 084B000C */  jal        DebugPrintf
    /* 1C6F0 8002BEF0 1000A2AF */   sw        $v0, 0x10($sp)
  .Lfunc_8002BCEC_8002BEF4:
    /* 1C6F4 8002BEF4 18007326 */  addiu      $s3, $s3, 0x18
    /* 1C6F8 8002BEF8 00000292 */  lbu        $v0, 0x0($s0)
    /* 1C6FC 8002BEFC 01005226 */  addiu      $s2, $s2, 0x1
    /* 1C700 8002BF00 21800202 */  addu       $s0, $s0, $v0
    /* 1C704 8002BF04 4000422A */  slti       $v0, $s2, 0x40
    /* 1C708 8002BF08 06004010 */  beqz       $v0, .Lfunc_8002BCEC_8002BF24
    /* 1C70C 8002BF0C 18003126 */   addiu     $s1, $s1, 0x18
    /* 1C710 8002BF10 0980023C */  lui        $v0, %hi(gVoiceAttrTable)
    /* 1C714 8002BF14 F0D74224 */  addiu      $v0, $v0, %lo(gVoiceAttrTable)
    /* 1C718 8002BF18 2B100202 */  sltu       $v0, $s0, $v0
    /* 1C71C 8002BF1C AEFF4014 */  bnez       $v0, .Lfunc_8002BCEC_8002BDD8
    /* 1C720 8002BF20 00000000 */   nop
  .Lfunc_8002BCEC_8002BF24:
    /* 1C724 8002BF24 0780013C */  lui        $at, %hi(D_8006D938)
    /* 1C728 8002BF28 38D936AC */  sw         $s6, %lo(D_8006D938)($at)
    /* 1C72C 8002BF2C 4000422A */  slti       $v0, $s2, 0x40
    /* 1C730 8002BF30 07004010 */  beqz       $v0, .Lfunc_8002BCEC_8002BF50
    /* 1C734 8002BF34 40101200 */   sll       $v0, $s2, 1
    /* 1C738 8002BF38 21105200 */  addu       $v0, $v0, $s2
    /* 1C73C 8002BF3C C0100200 */  sll        $v0, $v0, 3
    /* 1C740 8002BF40 0980013C */  lui        $at, %hi(D_8008B3F8)
    /* 1C744 8002BF44 F8B32124 */  addiu      $at, $at, %lo(D_8008B3F8)
    /* 1C748 8002BF48 21082200 */  addu       $at, $at, $v0
    /* 1C74C 8002BF4C 000020A0 */  sb         $zero, 0x0($at)
  .Lfunc_8002BCEC_8002BF50:
    /* 1C750 8002BF50 0780023C */  lui        $v0, %hi(gCdDebugLevel)
    /* 1C754 8002BF54 08D6428C */  lw         $v0, %lo(gCdDebugLevel)($v0)
    /* 1C758 8002BF58 00000000 */  nop
    /* 1C75C 8002BF5C 02004228 */  slti       $v0, $v0, 0x2
    /* 1C760 8002BF60 06004014 */  bnez       $v0, .Lfunc_8002BCEC_8002BF7C
    /* 1C764 8002BF64 01000234 */   ori       $v0, $zero, 0x1
    /* 1C768 8002BF68 0180043C */  lui        $a0, %hi(D_80010CB8)
    /* 1C76C 8002BF6C B80C8424 */  addiu      $a0, $a0, %lo(D_80010CB8)
    /* 1C770 8002BF70 084B000C */  jal        DebugPrintf
    /* 1C774 8002BF74 21284002 */   addu      $a1, $s2, $zero
  .Lfunc_8002BCEC_8002BF78:
    /* 1C778 8002BF78 01000234 */  ori        $v0, $zero, 0x1
  .Lfunc_8002BCEC_8002BF7C:
    /* 1C77C 8002BF7C 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 1C780 8002BF80 3800B68F */  lw         $s6, 0x38($sp)
    /* 1C784 8002BF84 3400B58F */  lw         $s5, 0x34($sp)
    /* 1C788 8002BF88 3000B48F */  lw         $s4, 0x30($sp)
    /* 1C78C 8002BF8C 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 1C790 8002BF90 2800B28F */  lw         $s2, 0x28($sp)
    /* 1C794 8002BF94 2400B18F */  lw         $s1, 0x24($sp)
    /* 1C798 8002BF98 2000B08F */  lw         $s0, 0x20($sp)
    /* 1C79C 8002BF9C 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 1C7A0 8002BFA0 0800E003 */  jr         $ra
    /* 1C7A4 8002BFA4 00000000 */   nop
endlabel func_8002BCEC
