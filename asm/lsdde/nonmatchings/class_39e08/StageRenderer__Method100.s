.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__Method100, 0x140

glabel StageRenderer__Method100
    /* 3C514 8004BD14 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3C518 8004BD18 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3C51C 8004BD1C 21888000 */  addu       $s1, $a0, $zero
    /* 3C520 8004BD20 02000234 */  ori        $v0, $zero, 0x2
    /* 3C524 8004BD24 2400BFAF */  sw         $ra, 0x24($sp)
    /* 3C528 8004BD28 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3C52C 8004BD2C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3C530 8004BD30 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3C534 8004BD34 3E00C214 */  bne        $a2, $v0, .Lfunc_8004BD14_8004BE30
    /* 3C538 8004BD38 1000B0AF */   sw        $s0, 0x10($sp)
    /* 3C53C 8004BD3C 21900000 */  addu       $s2, $zero, $zero
    /* 3C540 8004BD40 EC001434 */  ori        $s4, $zero, 0xEC
  .Lfunc_8004BD14_8004BD44:
    /* 3C544 8004BD44 21803402 */  addu       $s0, $s1, $s4
    /* 3C548 8004BD48 0400038E */  lw         $v1, 0x4($s0)
    /* 3C54C 8004BD4C 00000000 */  nop
    /* 3C550 8004BD50 2E006284 */  lh         $v0, 0x2E($v1)
    /* 3C554 8004BD54 00000000 */  nop
    /* 3C558 8004BD58 09004010 */  beqz       $v0, .Lfunc_8004BD14_8004BD80
    /* 3C55C 8004BD5C 21202002 */   addu      $a0, $s1, $zero
    /* 3C560 8004BD60 07000534 */  ori        $a1, $zero, 0x7
    /* 3C564 8004BD64 2E0060A4 */  sh         $zero, 0x2E($v1)
    /* 3C568 8004BD68 0000228E */  lw         $v0, 0x0($s1)
    /* 3C56C 8004BD6C 21300002 */  addu       $a2, $s0, $zero
    /* 3C570 8004BD70 8800428C */  lw         $v0, 0x88($v0)
    /* 3C574 8004BD74 00000000 */  nop
    /* 3C578 8004BD78 09F84000 */  jalr       $v0
    /* 3C57C 8004BD7C 21384002 */   addu      $a3, $s2, $zero
  .Lfunc_8004BD14_8004BD80:
    /* 3C580 8004BD80 B001338E */  lw         $s3, 0x1B0($s1)
    /* 3C584 8004BD84 01000234 */  ori        $v0, $zero, 0x1
    /* 3C588 8004BD88 25006216 */  bne        $s3, $v0, .Lfunc_8004BD14_8004BE20
    /* 3C58C 8004BD8C 00000000 */   nop
    /* 3C590 8004BD90 00000296 */  lhu        $v0, 0x0($s0)
    /* 3C594 8004BD94 00000000 */  nop
    /* 3C598 8004BD98 21004010 */  beqz       $v0, .Lfunc_8004BD14_8004BE20
    /* 3C59C 8004BD9C 00000000 */   nop
    /* 3C5A0 8004BDA0 0400038E */  lw         $v1, 0x4($s0)
    /* 3C5A4 8004BDA4 00000000 */  nop
    /* 3C5A8 8004BDA8 2C006284 */  lh         $v0, 0x2C($v1)
    /* 3C5AC 8004BDAC 00000000 */  nop
    /* 3C5B0 8004BDB0 16004010 */  beqz       $v0, .Lfunc_8004BD14_8004BE0C
    /* 3C5B4 8004BDB4 21202002 */   addu      $a0, $s1, $zero
    /* 3C5B8 8004BDB8 0000228E */  lw         $v0, 0x0($s1)
    /* 3C5BC 8004BDBC 00000000 */  nop
    /* 3C5C0 8004BDC0 0401428C */  lw         $v0, 0x104($v0)
    /* 3C5C4 8004BDC4 00000000 */  nop
    /* 3C5C8 8004BDC8 09F84000 */  jalr       $v0
    /* 3C5CC 8004BDCC 21280002 */   addu      $a1, $s0, $zero
    /* 3C5D0 8004BDD0 0400038E */  lw         $v1, 0x4($s0)
    /* 3C5D4 8004BDD4 02000234 */  ori        $v0, $zero, 0x2
    /* 3C5D8 8004BDD8 2C0062A4 */  sh         $v0, 0x2C($v1)
    /* 3C5DC 8004BDDC 000000A6 */  sh         $zero, 0x0($s0)
    /* 3C5E0 8004BDE0 B4012296 */  lhu        $v0, 0x1B4($s1)
    /* 3C5E4 8004BDE4 00000000 */  nop
    /* 3C5E8 8004BDE8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 3C5EC 8004BDEC B40122A6 */  sh         $v0, 0x1B4($s1)
    /* 3C5F0 8004BDF0 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 3C5F4 8004BDF4 0A004014 */  bnez       $v0, .Lfunc_8004BD14_8004BE20
    /* 3C5F8 8004BDF8 00000000 */   nop
    /* 3C5FC 8004BDFC B40120A6 */  sh         $zero, 0x1B4($s1)
    /* 3C600 8004BE00 B00120AE */  sw         $zero, 0x1B0($s1)
    /* 3C604 8004BE04 882F0108 */  j          .Lfunc_8004BD14_8004BE20
    /* 3C608 8004BE08 B80133AE */   sw        $s3, 0x1B8($s1)
  .Lfunc_8004BD14_8004BE0C:
    /* 3C60C 8004BE0C 2A006294 */  lhu        $v0, 0x2A($v1)
    /* 3C610 8004BE10 00000000 */  nop
    /* 3C614 8004BE14 02004014 */  bnez       $v0, .Lfunc_8004BD14_8004BE20
    /* 3C618 8004BE18 00000000 */   nop
    /* 3C61C 8004BE1C 000000A6 */  sh         $zero, 0x0($s0)
  .Lfunc_8004BD14_8004BE20:
    /* 3C620 8004BE20 01005226 */  addiu      $s2, $s2, 0x1
    /* 3C624 8004BE24 0700422A */  slti       $v0, $s2, 0x7
    /* 3C628 8004BE28 C6FF4014 */  bnez       $v0, .Lfunc_8004BD14_8004BD44
    /* 3C62C 8004BE2C 1C009426 */   addiu     $s4, $s4, 0x1C
  .Lfunc_8004BD14_8004BE30:
    /* 3C630 8004BE30 2400BF8F */  lw         $ra, 0x24($sp)
    /* 3C634 8004BE34 2000B48F */  lw         $s4, 0x20($sp)
    /* 3C638 8004BE38 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3C63C 8004BE3C 1800B28F */  lw         $s2, 0x18($sp)
    /* 3C640 8004BE40 1400B18F */  lw         $s1, 0x14($sp)
    /* 3C644 8004BE44 1000B08F */  lw         $s0, 0x10($sp)
    /* 3C648 8004BE48 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3C64C 8004BE4C 0800E003 */  jr         $ra
    /* 3C650 8004BE50 00000000 */   nop
endlabel StageRenderer__Method100
