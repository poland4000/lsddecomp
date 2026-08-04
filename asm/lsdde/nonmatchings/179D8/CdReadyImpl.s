.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdReadyImpl, 0x16C

glabel CdReadyImpl
    /* 1B998 8002B198 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1B99C 8002B19C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 1B9A0 8002B1A0 21908000 */  addu       $s2, $a0, $zero
    /* 1B9A4 8002B1A4 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 1B9A8 8002B1A8 2800BFAF */  sw         $ra, 0x28($sp)
    /* 1B9AC 8002B1AC 2400B3AF */  sw         $s3, 0x24($sp)
    /* 1B9B0 8002B1B0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1B9B4 8002B1B4 4096000C */  jal        GetSystemTick
    /* 1B9B8 8002B1B8 1800B0AF */   sw        $s0, 0x18($sp)
    /* 1B9BC 8002B1BC 0780133C */  lui        $s3, %hi(gCdCommandNames)
    /* 1B9C0 8002B1C0 20D67326 */  addiu      $s3, $s3, %lo(gCdCommandNames)
    /* 1B9C4 8002B1C4 0780113C */  lui        $s1, %hi(D_8006D8D8)
    /* 1B9C8 8002B1C8 D8D83126 */  addiu      $s1, $s1, %lo(D_8006D8D8)
    /* 1B9CC 8002B1CC 0780103C */  lui        $s0, %hi(gCdIntNames)
    /* 1B9D0 8002B1D0 A0D61026 */  addiu      $s0, $s0, %lo(gCdIntNames)
    /* 1B9D4 8002B1D4 E0014224 */  addiu      $v0, $v0, 0x1E0
    /* 1B9D8 8002B1D8 0980013C */  lui        $at, %hi(D_8008B3E4)
    /* 1B9DC 8002B1DC E4B322AC */  sw         $v0, %lo(D_8008B3E4)($at)
    /* 1B9E0 8002B1E0 0180023C */  lui        $v0, %hi(D_80010AE0)
    /* 1B9E4 8002B1E4 E00A4224 */  addiu      $v0, $v0, %lo(D_80010AE0)
    /* 1B9E8 8002B1E8 0980013C */  lui        $at, %hi(D_8008B3E8)
    /* 1B9EC 8002B1EC E8B320AC */  sw         $zero, %lo(D_8008B3E8)($at)
    /* 1B9F0 8002B1F0 0980013C */  lui        $at, %hi(D_8008B3EC)
    /* 1B9F4 8002B1F4 ECB322AC */  sw         $v0, %lo(D_8008B3EC)($at)
  .Lfunc_8002B198_8002B1F8:
    /* 1B9F8 8002B1F8 4096000C */  jal        GetSystemTick
    /* 1B9FC 8002B1FC FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 1BA00 8002B200 0980033C */  lui        $v1, %hi(D_8008B3E4)
    /* 1BA04 8002B204 E4B3638C */  lw         $v1, %lo(D_8008B3E4)($v1)
    /* 1BA08 8002B208 00000000 */  nop
    /* 1BA0C 8002B20C 2A186200 */  slt        $v1, $v1, $v0
    /* 1BA10 8002B210 0B006014 */  bnez       $v1, .Lfunc_8002B198_8002B240
    /* 1BA14 8002B214 00000000 */   nop
    /* 1BA18 8002B218 0980033C */  lui        $v1, %hi(D_8008B3E8)
    /* 1BA1C 8002B21C E8B3638C */  lw         $v1, %lo(D_8008B3E8)($v1)
    /* 1BA20 8002B220 00000000 */  nop
    /* 1BA24 8002B224 01006224 */  addiu      $v0, $v1, 0x1
    /* 1BA28 8002B228 0980013C */  lui        $at, %hi(D_8008B3E8)
    /* 1BA2C 8002B22C E8B322AC */  sw         $v0, %lo(D_8008B3E8)($at)
    /* 1BA30 8002B230 1E00023C */  lui        $v0, (0x1E0000 >> 16)
    /* 1BA34 8002B234 2A104300 */  slt        $v0, $v0, $v1
    /* 1BA38 8002B238 1D004010 */  beqz       $v0, .Lfunc_8002B198_8002B2B0
    /* 1BA3C 8002B23C 00000000 */   nop
  .Lfunc_8002B198_8002B240:
    /* 1BA40 8002B240 0180043C */  lui        $a0, %hi(D_80010984)
    /* 1BA44 8002B244 84098424 */  addiu      $a0, $a0, %lo(D_80010984)
    /* 1BA48 8002B248 B996000C */  jal        DebugPuts
    /* 1BA4C 8002B24C 00000000 */   nop
    /* 1BA50 8002B250 00002492 */  lbu        $a0, 0x0($s1)
    /* 1BA54 8002B254 01002292 */  lbu        $v0, 0x1($s1)
    /* 1BA58 8002B258 0980053C */  lui        $a1, %hi(D_8008B3EC)
    /* 1BA5C 8002B25C ECB3A58C */  lw         $a1, %lo(D_8008B3EC)($a1)
    /* 1BA60 8002B260 80100200 */  sll        $v0, $v0, 2
    /* 1BA64 8002B264 21105000 */  addu       $v0, $v0, $s0
    /* 1BA68 8002B268 80200400 */  sll        $a0, $a0, 2
    /* 1BA6C 8002B26C 0000438C */  lw         $v1, 0x0($v0)
    /* 1BA70 8002B270 0780023C */  lui        $v0, %hi(gCdLastCommand)
    /* 1BA74 8002B274 1DD64290 */  lbu        $v0, %lo(gCdLastCommand)($v0)
    /* 1BA78 8002B278 21209000 */  addu       $a0, $a0, $s0
    /* 1BA7C 8002B27C 80100200 */  sll        $v0, $v0, 2
    /* 1BA80 8002B280 21105300 */  addu       $v0, $v0, $s3
    /* 1BA84 8002B284 1000A3AF */  sw         $v1, 0x10($sp)
    /* 1BA88 8002B288 0000468C */  lw         $a2, 0x0($v0)
    /* 1BA8C 8002B28C 0000878C */  lw         $a3, 0x0($a0)
    /* 1BA90 8002B290 0180043C */  lui        $a0, %hi(D_80010994)
    /* 1BA94 8002B294 94098424 */  addiu      $a0, $a0, %lo(D_80010994)
    /* 1BA98 8002B298 084B000C */  jal        DebugPrintf
    /* 1BA9C 8002B29C 00000000 */   nop
    /* 1BAA0 8002B2A0 44A9000C */  jal        CdAckInterruptImpl
    /* 1BAA4 8002B2A4 00000000 */   nop
    /* 1BAA8 8002B2A8 ADAC0008 */  j          .Lfunc_8002B198_8002B2B4
    /* 1BAAC 8002B2AC FFFF0224 */   addiu     $v0, $zero, -0x1
  .Lfunc_8002B198_8002B2B0:
    /* 1BAB0 8002B2B0 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_8002B198_8002B2B4:
    /* 1BAB4 8002B2B4 0B004014 */  bnez       $v0, .Lfunc_8002B198_8002B2E4
    /* 1BAB8 8002B2B8 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 1BABC 8002B2BC 0780023C */  lui        $v0, %hi(D_8006D934)
    /* 1BAC0 8002B2C0 34D9428C */  lw         $v0, %lo(D_8006D934)($v0)
    /* 1BAC4 8002B2C4 00000000 */  nop
    /* 1BAC8 8002B2C8 0000428C */  lw         $v0, 0x0($v0)
    /* 1BACC 8002B2CC 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* 1BAD0 8002B2D0 24104300 */  and        $v0, $v0, $v1
    /* 1BAD4 8002B2D4 03004010 */  beqz       $v0, .Lfunc_8002B198_8002B2E4
    /* 1BAD8 8002B2D8 21100000 */   addu      $v0, $zero, $zero
    /* 1BADC 8002B2DC C6FF4012 */  beqz       $s2, .Lfunc_8002B198_8002B1F8
    /* 1BAE0 8002B2E0 01000234 */   ori       $v0, $zero, 0x1
  .Lfunc_8002B198_8002B2E4:
    /* 1BAE4 8002B2E4 2800BF8F */  lw         $ra, 0x28($sp)
    /* 1BAE8 8002B2E8 2400B38F */  lw         $s3, 0x24($sp)
    /* 1BAEC 8002B2EC 2000B28F */  lw         $s2, 0x20($sp)
    /* 1BAF0 8002B2F0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 1BAF4 8002B2F4 1800B08F */  lw         $s0, 0x18($sp)
    /* 1BAF8 8002B2F8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1BAFC 8002B2FC 0800E003 */  jr         $ra
    /* 1BB00 8002B300 00000000 */   nop
endlabel CdReadyImpl
