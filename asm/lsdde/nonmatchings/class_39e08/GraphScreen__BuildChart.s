.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching GraphScreen__BuildChart, 0xE0

glabel GraphScreen__BuildChart
    /* 48A28 80058228 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 48A2C 8005822C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 48A30 80058230 21908000 */  addu       $s2, $a0, $zero
    /* 48A34 80058234 0980043C */  lui        $a0, %hi(D_8008ABAC)
    /* 48A38 80058238 ACAB8424 */  addiu      $a0, $a0, %lo(D_8008ABAC)
    /* 48A3C 8005823C 0980053C */  lui        $a1, %hi(D_8008ABB4)
    /* 48A40 80058240 B4ABA524 */  addiu      $a1, $a1, %lo(D_8008ABB4)
    /* 48A44 80058244 21300000 */  addu       $a2, $zero, $zero
    /* 48A48 80058248 2400BFAF */  sw         $ra, 0x24($sp)
    /* 48A4C 8005824C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 48A50 80058250 3401010C */  jal        New_Sprite
    /* 48A54 80058254 1800B0AF */   sw        $s0, 0x18($sp)
    /* 48A58 80058258 A80042AE */  sw         $v0, 0xA8($s2)
    /* 48A5C 8005825C 0980053C */  lui        $a1, %hi(D_8008ABB8)
    /* 48A60 80058260 B8ABA524 */  addiu      $a1, $a1, %lo(D_8008ABB8)
    /* 48A64 80058264 0000A280 */  lb         $v0, 0x0($a1)
    /* 48A68 80058268 0100A380 */  lb         $v1, 0x1($a1)
    /* 48A6C 8005826C 0200A480 */  lb         $a0, 0x2($a1)
    /* 48A70 80058270 1000A2A3 */  sb         $v0, 0x10($sp)
    /* 48A74 80058274 1100A3A3 */  sb         $v1, 0x11($sp)
    /* 48A78 80058278 1200A4A3 */  sb         $a0, 0x12($sp)
    /* 48A7C 8005827C 01001034 */  ori        $s0, $zero, 0x1
    /* 48A80 80058280 04005126 */  addiu      $s1, $s2, 0x4
  .Lfunc_80058228_80058284:
    /* 48A84 80058284 0980043C */  lui        $a0, %hi(D_8008ABAC)
    /* 48A88 80058288 ACAB8424 */  addiu      $a0, $a0, %lo(D_8008ABAC)
    /* 48A8C 8005828C 1000A527 */  addiu      $a1, $sp, 0x10
    /* 48A90 80058290 3401010C */  jal        New_Sprite
    /* 48A94 80058294 21300000 */   addu      $a2, $zero, $zero
    /* 48A98 80058298 A80022AE */  sw         $v0, 0xA8($s1)
    /* 48A9C 8005829C 0700022A */  slti       $v0, $s0, 0x7
    /* 48AA0 800582A0 02004010 */  beqz       $v0, .Lfunc_80058228_800582AC
    /* 48AA4 800582A4 01000434 */   ori       $a0, $zero, 0x1
    /* 48AA8 800582A8 14000434 */  ori        $a0, $zero, 0x14
  .Lfunc_80058228_800582AC:
    /* 48AAC 800582AC 01001026 */  addiu      $s0, $s0, 0x1
    /* 48AB0 800582B0 1000A293 */  lbu        $v0, 0x10($sp)
    /* 48AB4 800582B4 1200A393 */  lbu        $v1, 0x12($sp)
    /* 48AB8 800582B8 23104400 */  subu       $v0, $v0, $a0
    /* 48ABC 800582BC 1000A2A3 */  sb         $v0, 0x10($sp)
    /* 48AC0 800582C0 1100A293 */  lbu        $v0, 0x11($sp)
    /* 48AC4 800582C4 23186400 */  subu       $v1, $v1, $a0
    /* 48AC8 800582C8 1200A3A3 */  sb         $v1, 0x12($sp)
    /* 48ACC 800582CC 23104400 */  subu       $v0, $v0, $a0
    /* 48AD0 800582D0 1100A2A3 */  sb         $v0, 0x11($sp)
    /* 48AD4 800582D4 6400022A */  slti       $v0, $s0, 0x64
    /* 48AD8 800582D8 EAFF4014 */  bnez       $v0, .Lfunc_80058228_80058284
    /* 48ADC 800582DC 04003126 */   addiu     $s1, $s1, 0x4
    /* 48AE0 800582E0 CD5E000C */  jal        BMemAlloc
    /* 48AE4 800582E4 04000434 */   ori       $a0, $zero, 0x4
    /* 48AE8 800582E8 400242AE */  sw         $v0, 0x240($s2)
    /* 48AEC 800582EC 2400BF8F */  lw         $ra, 0x24($sp)
    /* 48AF0 800582F0 2000B28F */  lw         $s2, 0x20($sp)
    /* 48AF4 800582F4 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 48AF8 800582F8 1800B08F */  lw         $s0, 0x18($sp)
    /* 48AFC 800582FC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 48B00 80058300 0800E003 */  jr         $ra
    /* 48B04 80058304 00000000 */   nop
endlabel GraphScreen__BuildChart
