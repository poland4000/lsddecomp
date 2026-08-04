.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching Spawner__SpawnGroupA, 0x18C

glabel Spawner__SpawnGroupA
    /* 455A4 80054DA4 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 455A8 80054DA8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 455AC 80054DAC 21908000 */  addu       $s2, $a0, $zero
    /* 455B0 80054DB0 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 455B4 80054DB4 21A8A000 */  addu       $s5, $a1, $zero
    /* 455B8 80054DB8 2800B4AF */  sw         $s4, 0x28($sp)
    /* 455BC 80054DBC 21A0C000 */  addu       $s4, $a2, $zero
    /* 455C0 80054DC0 3000BFAF */  sw         $ra, 0x30($sp)
    /* 455C4 80054DC4 2400B3AF */  sw         $s3, 0x24($sp)
    /* 455C8 80054DC8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 455CC 80054DCC 2025010C */  jal        rand
    /* 455D0 80054DD0 1800B0AF */   sw        $s0, 0x18($sp)
    /* 455D4 80054DD4 4992133C */  lui        $s3, (0x92492493 >> 16)
    /* 455D8 80054DD8 93247336 */  ori        $s3, $s3, (0x92492493 & 0xFFFF)
    /* 455DC 80054DDC 18005300 */  mult       $v0, $s3
    /* 455E0 80054DE0 CCCC103C */  lui        $s0, (0xCCCCCCCD >> 16)
    /* 455E4 80054DE4 C3270200 */  sra        $a0, $v0, 31
    /* 455E8 80054DE8 10180000 */  mfhi       $v1
    /* 455EC 80054DEC 21186200 */  addu       $v1, $v1, $v0
    /* 455F0 80054DF0 83180300 */  sra        $v1, $v1, 2
    /* 455F4 80054DF4 23186400 */  subu       $v1, $v1, $a0
    /* 455F8 80054DF8 C0200300 */  sll        $a0, $v1, 3
    /* 455FC 80054DFC 23208300 */  subu       $a0, $a0, $v1
    /* 45600 80054E00 23104400 */  subu       $v0, $v0, $a0
    /* 45604 80054E04 0980013C */  lui        $at, %hi(D_8008E0BC)
    /* 45608 80054E08 BCE022AC */  sw         $v0, %lo(D_8008E0BC)($at)
    /* 4560C 80054E0C 2025010C */  jal        rand
    /* 45610 80054E10 CDCC1036 */   ori       $s0, $s0, (0xCCCCCCCD & 0xFFFF)
    /* 45614 80054E14 19005000 */  multu      $v0, $s0
    /* 45618 80054E18 10200000 */  mfhi       $a0
    /* 4561C 80054E1C 82200400 */  srl        $a0, $a0, 2
    /* 45620 80054E20 80180400 */  sll        $v1, $a0, 2
    /* 45624 80054E24 21186400 */  addu       $v1, $v1, $a0
    /* 45628 80054E28 23104300 */  subu       $v0, $v0, $v1
    /* 4562C 80054E2C 40180200 */  sll        $v1, $v0, 1
    /* 45630 80054E30 21186200 */  addu       $v1, $v1, $v0
    /* 45634 80054E34 80180300 */  sll        $v1, $v1, 2
    /* 45638 80054E38 0880023C */  lui        $v0, %hi(D_800871C8)
    /* 4563C 80054E3C C8714224 */  addiu      $v0, $v0, %lo(D_800871C8)
    /* 45640 80054E40 21186200 */  addu       $v1, $v1, $v0
    /* 45644 80054E44 0980013C */  lui        $at, %hi(D_8008E0B4)
    /* 45648 80054E48 B4E023AC */  sw         $v1, %lo(D_8008E0B4)($at)
    /* 4564C 80054E4C 2025010C */  jal        rand
    /* 45650 80054E50 00000000 */   nop
    /* 45654 80054E54 19005000 */  multu      $v0, $s0
    /* 45658 80054E58 10180000 */  mfhi       $v1
    /* 4565C 80054E5C 82880300 */  srl        $s1, $v1, 2
    /* 45660 80054E60 80181100 */  sll        $v1, $s1, 2
    /* 45664 80054E64 21187100 */  addu       $v1, $v1, $s1
    /* 45668 80054E68 23884300 */  subu       $s1, $v0, $v1
    /* 4566C 80054E6C 05002012 */  beqz       $s1, .Lfunc_80054DA4_80054E84
    /* 45670 80054E70 80101100 */   sll       $v0, $s1, 2
    /* 45674 80054E74 0880013C */  lui        $at, %hi(D_80087328)
    /* 45678 80054E78 28732124 */  addiu      $at, $at, %lo(D_80087328)
    /* 4567C 80054E7C 21082200 */  addu       $at, $at, $v0
    /* 45680 80054E80 0000318C */  lw         $s1, 0x0($at)
  .Lfunc_80054DA4_80054E84:
    /* 45684 80054E84 6C04848F */  lw         $a0, %gp_rel(D_8008AC74)($gp)
    /* 45688 80054E88 00000000 */  nop
    /* 4568C 80054E8C 18009300 */  mult       $a0, $s3
    /* 45690 80054E90 0580133C */  lui        $s3, %hi(Spawner__Randomize)
    /* 45694 80054E94 10547326 */  addiu      $s3, $s3, %lo(Spawner__Randomize)
    /* 45698 80054E98 C31F0400 */  sra        $v1, $a0, 31
    /* 4569C 80054E9C 10100000 */  mfhi       $v0
    /* 456A0 80054EA0 21104400 */  addu       $v0, $v0, $a0
    /* 456A4 80054EA4 83100200 */  sra        $v0, $v0, 2
    /* 456A8 80054EA8 23104300 */  subu       $v0, $v0, $v1
    /* 456AC 80054EAC C0180200 */  sll        $v1, $v0, 3
    /* 456B0 80054EB0 23186200 */  subu       $v1, $v1, $v0
    /* 456B4 80054EB4 03008310 */  beq        $a0, $v1, .Lfunc_80054DA4_80054EC4
    /* 456B8 80054EB8 21800000 */   addu      $s0, $zero, $zero
    /* 456BC 80054EBC 0580133C */  lui        $s3, %hi(Spawner__RandomCoord)
    /* 456C0 80054EC0 58527326 */  addiu      $s3, $s3, %lo(Spawner__RandomCoord)
  .Lfunc_80054DA4_80054EC4:
    /* 456C4 80054EC4 1000A01A */  blez       $s5, .Lfunc_80054DA4_80054F08
    /* 456C8 80054EC8 21104002 */   addu      $v0, $s2, $zero
  .Lfunc_80054DA4_80054ECC:
    /* 456CC 80054ECC 21208002 */  addu       $a0, $s4, $zero
    /* 456D0 80054ED0 09F86002 */  jalr       $s3
    /* 456D4 80054ED4 21282002 */   addu      $a1, $s1, $zero
    /* 456D8 80054ED8 21200000 */  addu       $a0, $zero, $zero
    /* 456DC 80054EDC 0980053C */  lui        $a1, %hi(D_8008E0A4)
    /* 456E0 80054EE0 A4E0A524 */  addiu      $a1, $a1, %lo(D_8008E0A4)
    /* 456E4 80054EE4 01001026 */  addiu      $s0, $s0, 0x1
    /* 456E8 80054EE8 4403868F */  lw         $a2, %gp_rel(D_8008AB4C)($gp)
    /* 456EC 80054EEC C858010C */  jal        Actor__Create
    /* 456F0 80054EF0 21388002 */   addu      $a3, $s4, $zero
    /* 456F4 80054EF4 000042AE */  sw         $v0, 0x0($s2)
    /* 456F8 80054EF8 2A101502 */  slt        $v0, $s0, $s5
    /* 456FC 80054EFC F3FF4014 */  bnez       $v0, .Lfunc_80054DA4_80054ECC
    /* 45700 80054F00 04005226 */   addiu     $s2, $s2, 0x4
    /* 45704 80054F04 21104002 */  addu       $v0, $s2, $zero
  .Lfunc_80054DA4_80054F08:
    /* 45708 80054F08 3000BF8F */  lw         $ra, 0x30($sp)
    /* 4570C 80054F0C 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 45710 80054F10 2800B48F */  lw         $s4, 0x28($sp)
    /* 45714 80054F14 2400B38F */  lw         $s3, 0x24($sp)
    /* 45718 80054F18 2000B28F */  lw         $s2, 0x20($sp)
    /* 4571C 80054F1C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 45720 80054F20 1800B08F */  lw         $s0, 0x18($sp)
    /* 45724 80054F24 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 45728 80054F28 0800E003 */  jr         $ra
    /* 4572C 80054F2C 00000000 */   nop
endlabel Spawner__SpawnGroupA
