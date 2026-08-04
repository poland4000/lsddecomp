.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamSys__BeginDream, 0x15C

glabel DreamSys__BeginDream
    /* 499B4 800591B4 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 499B8 800591B8 2800B0AF */  sw         $s0, 0x28($sp)
    /* 499BC 800591BC 21808000 */  addu       $s0, $a0, $zero
    /* 499C0 800591C0 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 499C4 800591C4 2188A000 */  addu       $s1, $a1, $zero
    /* 499C8 800591C8 3000B2AF */  sw         $s2, 0x30($sp)
    /* 499CC 800591CC 2190C000 */  addu       $s2, $a2, $zero
    /* 499D0 800591D0 3400BFAF */  sw         $ra, 0x34($sp)
    /* 499D4 800591D4 0000028E */  lw         $v0, 0x0($s0)
    /* 499D8 800591D8 00000000 */  nop
    /* 499DC 800591DC F401428C */  lw         $v0, 0x1F4($v0)
    /* 499E0 800591E0 00000000 */  nop
    /* 499E4 800591E4 09F84000 */  jalr       $v0
    /* 499E8 800591E8 6C010526 */   addiu     $a1, $s0, 0x16C
    /* 499EC 800591EC 0000028E */  lw         $v0, 0x0($s0)
    /* 499F0 800591F0 21200002 */  addu       $a0, $s0, $zero
    /* 499F4 800591F4 3801428C */  lw         $v0, 0x138($v0)
    /* 499F8 800591F8 00000000 */  nop
    /* 499FC 800591FC 09F84000 */  jalr       $v0
    /* 49A00 80059200 01000534 */   ori       $a1, $zero, 0x1
    /* 49A04 80059204 0000028E */  lw         $v0, 0x0($s0)
    /* 49A08 80059208 21200002 */  addu       $a0, $s0, $zero
    /* 49A0C 8005920C 3C01428C */  lw         $v0, 0x13C($v0)
    /* 49A10 80059210 00000000 */  nop
    /* 49A14 80059214 09F84000 */  jalr       $v0
    /* 49A18 80059218 01000534 */   ori       $a1, $zero, 0x1
    /* 49A1C 8005921C 0000028E */  lw         $v0, 0x0($s0)
    /* 49A20 80059220 21200002 */  addu       $a0, $s0, $zero
    /* 49A24 80059224 8001428C */  lw         $v0, 0x180($v0)
    /* 49A28 80059228 00000000 */  nop
    /* 49A2C 8005922C 09F84000 */  jalr       $v0
    /* 49A30 80059230 21282002 */   addu      $a1, $s1, $zero
    /* 49A34 80059234 21200002 */  addu       $a0, $s0, $zero
    /* 49A38 80059238 21280000 */  addu       $a1, $zero, $zero
    /* 49A3C 8005923C 01000634 */  ori        $a2, $zero, 0x1
    /* 49A40 80059240 0000038E */  lw         $v1, 0x0($s0)
    /* 49A44 80059244 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 49A48 80059248 BC0002AE */  sw         $v0, 0xBC($s0)
    /* 49A4C 8005924C 01000234 */  ori        $v0, $zero, 0x1
    /* 49A50 80059250 B40000AE */  sw         $zero, 0xB4($s0)
    /* 49A54 80059254 B80000AE */  sw         $zero, 0xB8($s0)
    /* 49A58 80059258 A00000AE */  sw         $zero, 0xA0($s0)
    /* 49A5C 8005925C A40000AE */  sw         $zero, 0xA4($s0)
    /* 49A60 80059260 880000AE */  sw         $zero, 0x88($s0)
    /* 49A64 80059264 900000AE */  sw         $zero, 0x90($s0)
    /* 49A68 80059268 8C0000AE */  sw         $zero, 0x8C($s0)
    /* 49A6C 8005926C 940000AE */  sw         $zero, 0x94($s0)
    /* 49A70 80059270 1000A2AF */  sw         $v0, 0x10($sp)
    /* 49A74 80059274 8C01628C */  lw         $v0, 0x18C($v1)
    /* 49A78 80059278 00000000 */  nop
    /* 49A7C 8005927C 09F84000 */  jalr       $v0
    /* 49A80 80059280 01000734 */   ori       $a3, $zero, 0x1
    /* 49A84 80059284 0000028E */  lw         $v0, 0x0($s0)
    /* 49A88 80059288 21200002 */  addu       $a0, $s0, $zero
    /* 49A8C 8005928C 9001428C */  lw         $v0, 0x190($v0)
    /* 49A90 80059290 00000000 */  nop
    /* 49A94 80059294 09F84000 */  jalr       $v0
    /* 49A98 80059298 21284002 */   addu      $a1, $s2, $zero
    /* 49A9C 8005929C 21200002 */  addu       $a0, $s0, $zero
    /* 49AA0 800592A0 1800A527 */  addiu      $a1, $sp, 0x18
    /* 49AA4 800592A4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 49AA8 800592A8 6A0102A6 */  sh         $v0, 0x16A($s0)
    /* 49AAC 800592AC 700000AE */  sw         $zero, 0x70($s0)
    /* 49AB0 800592B0 440000AE */  sw         $zero, 0x44($s0)
    /* 49AB4 800592B4 740000AE */  sw         $zero, 0x74($s0)
    /* 49AB8 800592B8 080900AE */  sw         $zero, 0x908($s0)
    /* 49ABC 800592BC 0C0900AE */  sw         $zero, 0x90C($s0)
    /* 49AC0 800592C0 100900AE */  sw         $zero, 0x910($s0)
    /* 49AC4 800592C4 BE79000C */  jal        GetPlayerPosition
    /* 49AC8 800592C8 780000AE */   sw        $zero, 0x78($s0)
    /* 49ACC 800592CC 21200002 */  addu       $a0, $s0, $zero
    /* 49AD0 800592D0 01000234 */  ori        $v0, $zero, 0x1
    /* 49AD4 800592D4 2000A0A7 */  sh         $zero, 0x20($sp)
    /* 49AD8 800592D8 2200A2A7 */  sh         $v0, 0x22($sp)
    /* 49ADC 800592DC 0000828C */  lw         $v0, 0x0($a0)
    /* 49AE0 800592E0 01000534 */  ori        $a1, $zero, 0x1
    /* 49AE4 800592E4 4400428C */  lw         $v0, 0x44($v0)
    /* 49AE8 800592E8 00000000 */  nop
    /* 49AEC 800592EC 09F84000 */  jalr       $v0
    /* 49AF0 800592F0 1800A627 */   addiu     $a2, $sp, 0x18
    /* 49AF4 800592F4 3400BF8F */  lw         $ra, 0x34($sp)
    /* 49AF8 800592F8 3000B28F */  lw         $s2, 0x30($sp)
    /* 49AFC 800592FC 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 49B00 80059300 2800B08F */  lw         $s0, 0x28($sp)
    /* 49B04 80059304 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 49B08 80059308 0800E003 */  jr         $ra
    /* 49B0C 8005930C 00000000 */   nop
endlabel DreamSys__BeginDream
