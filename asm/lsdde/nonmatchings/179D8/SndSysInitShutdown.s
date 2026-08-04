.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndSysInitShutdown, 0x14C

glabel SndSysInitShutdown
    /* 22A1C 8003221C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 22A20 80032220 1000B0AF */  sw         $s0, 0x10($sp)
    /* 22A24 80032224 1400BFAF */  sw         $ra, 0x14($sp)
    /* 22A28 80032228 4493000C */  jal        func_80024D10
    /* 22A2C 8003222C 21808000 */   addu      $s0, $a0, $zero
    /* 22A30 80032230 05000016 */  bnez       $s0, .Lfunc_8003221C_80032248
    /* 22A34 80032234 00000000 */   nop
    /* 22A38 80032238 55E3000C */  jal        func_80038D54
    /* 22A3C 8003223C 00000000 */   nop
    /* 22A40 80032240 95C80008 */  j          .Lfunc_8003221C_80032254
    /* 22A44 80032244 801F063C */   lui       $a2, (0x1F801C00 >> 16)
  .Lfunc_8003221C_80032248:
    /* 22A48 80032248 AADA000C */  jal        SndFlushQueue
    /* 22A4C 8003224C 00000000 */   nop
    /* 22A50 80032250 801F063C */  lui        $a2, (0x1F801C00 >> 16)
  .Lfunc_8003221C_80032254:
    /* 22A54 80032254 001CC634 */  ori        $a2, $a2, (0x1F801C00 & 0xFFFF)
    /* 22A58 80032258 21200000 */  addu       $a0, $zero, $zero
    /* 22A5C 8003225C 0780073C */  lui        $a3, %hi(D_8006DC5C)
    /* 22A60 80032260 5CDCE724 */  addiu      $a3, $a3, %lo(D_8006DC5C)
  .Lfunc_8003221C_80032264:
    /* 22A64 80032264 21280000 */  addu       $a1, $zero, $zero
    /* 22A68 80032268 2118E000 */  addu       $v1, $a3, $zero
  .Lfunc_8003221C_8003226C:
    /* 22A6C 8003226C 00006294 */  lhu        $v0, 0x0($v1)
    /* 22A70 80032270 02006324 */  addiu      $v1, $v1, 0x2
    /* 22A74 80032274 0100A524 */  addiu      $a1, $a1, 0x1
    /* 22A78 80032278 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 22A7C 8003227C 0800A228 */  slti       $v0, $a1, 0x8
    /* 22A80 80032280 FAFF4014 */  bnez       $v0, .Lfunc_8003221C_8003226C
    /* 22A84 80032284 0200C624 */   addiu     $a2, $a2, 0x2
    /* 22A88 80032288 01008424 */  addiu      $a0, $a0, 0x1
    /* 22A8C 8003228C 18008228 */  slti       $v0, $a0, 0x18
    /* 22A90 80032290 F4FF4014 */  bnez       $v0, .Lfunc_8003221C_80032264
    /* 22A94 80032294 00000000 */   nop
    /* 22A98 80032298 801F063C */  lui        $a2, (0x1F801D80 >> 16)
    /* 22A9C 8003229C 801DC634 */  ori        $a2, $a2, (0x1F801D80 & 0xFFFF)
    /* 22AA0 800322A0 21200000 */  addu       $a0, $zero, $zero
    /* 22AA4 800322A4 0780033C */  lui        $v1, %hi(D_8006DC6C)
    /* 22AA8 800322A8 6CDC6324 */  addiu      $v1, $v1, %lo(D_8006DC6C)
  .Lfunc_8003221C_800322AC:
    /* 22AAC 800322AC 00006294 */  lhu        $v0, 0x0($v1)
    /* 22AB0 800322B0 02006324 */  addiu      $v1, $v1, 0x2
    /* 22AB4 800322B4 01008424 */  addiu      $a0, $a0, 0x1
    /* 22AB8 800322B8 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 22ABC 800322BC 10008228 */  slti       $v0, $a0, 0x10
    /* 22AC0 800322C0 FAFF4014 */  bnez       $v0, .Lfunc_8003221C_800322AC
    /* 22AC4 800322C4 0200C624 */   addiu     $a2, $a2, 0x2
    /* 22AC8 800322C8 75BB000C */  jal        SndDriverInit
    /* 22ACC 800322CC 18000434 */   ori       $a0, $zero, 0x18
    /* 22AD0 800322D0 21280000 */  addu       $a1, $zero, $zero
    /* 22AD4 800322D4 0980033C */  lui        $v1, %hi(D_80090368)
    /* 22AD8 800322D8 68036324 */  addiu      $v1, $v1, %lo(D_80090368)
  .Lfunc_8003221C_800322DC:
    /* 22ADC 800322DC 0F000434 */  ori        $a0, $zero, 0xF
    /* 22AE0 800322E0 3C006224 */  addiu      $v0, $v1, 0x3C
  .Lfunc_8003221C_800322E4:
    /* 22AE4 800322E4 000040AC */  sw         $zero, 0x0($v0)
    /* 22AE8 800322E8 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 22AEC 800322EC FDFF8104 */  bgez       $a0, .Lfunc_8003221C_800322E4
    /* 22AF0 800322F0 FCFF4224 */   addiu     $v0, $v0, -0x4
    /* 22AF4 800322F4 0100A524 */  addiu      $a1, $a1, 0x1
    /* 22AF8 800322F8 2000A228 */  slti       $v0, $a1, 0x20
    /* 22AFC 800322FC F7FF4014 */  bnez       $v0, .Lfunc_8003221C_800322DC
    /* 22B00 80032300 40006324 */   addiu     $v1, $v1, 0x40
    /* 22B04 80032304 3C000234 */  ori        $v0, $zero, 0x3C
    /* 22B08 80032308 0980013C */  lui        $at, %hi(D_8009024C)
    /* 22B0C 8003230C 4C0222AC */  sw         $v0, %lo(D_8009024C)($at)
    /* 22B10 80032310 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 22B14 80032314 0980013C */  lui        $at, %hi(D_8008EA00)
    /* 22B18 80032318 00EA20AC */  sw         $zero, %lo(D_8008EA00)($at)
    /* 22B1C 8003231C 0780013C */  lui        $at, %hi(D_8006DC8C)
    /* 22B20 80032320 8CDC20AC */  sw         $zero, %lo(D_8006DC8C)($at)
    /* 22B24 80032324 0780013C */  lui        $at, %hi(D_8006DC90)
    /* 22B28 80032328 90DC22AC */  sw         $v0, %lo(D_8006DC90)($at)
    /* 22B2C 8003232C 0780013C */  lui        $at, %hi(D_8006DC94)
    /* 22B30 80032330 94DC20AC */  sw         $zero, %lo(D_8006DC94)($at)
    /* 22B34 80032334 0780013C */  lui        $at, %hi(D_8006DC9C)
    /* 22B38 80032338 9CDC20AC */  sw         $zero, %lo(D_8006DC9C)($at)
    /* 22B3C 8003233C 4795000C */  jal        func_8002551C
    /* 22B40 80032340 00000000 */   nop
    /* 22B44 80032344 0780013C */  lui        $at, %hi(D_8006DC98)
    /* 22B48 80032348 98DC22AC */  sw         $v0, %lo(D_8006DC98)($at)
    /* 22B4C 8003234C 0980013C */  lui        $at, %hi(D_8008E934)
    /* 22B50 80032350 34E920AC */  sw         $zero, %lo(D_8008E934)($at)
    /* 22B54 80032354 1400BF8F */  lw         $ra, 0x14($sp)
    /* 22B58 80032358 1000B08F */  lw         $s0, 0x10($sp)
    /* 22B5C 8003235C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 22B60 80032360 0800E003 */  jr         $ra
    /* 22B64 80032364 00000000 */   nop
endlabel SndSysInitShutdown
