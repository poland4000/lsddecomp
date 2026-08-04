.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndStopVoiceEx, 0x1C0

glabel SndStopVoiceEx
    /* 1E938 8002E138 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1E93C 8002E13C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1E940 8002E140 21808000 */  addu       $s0, $a0, $zero
    /* 1E944 8002E144 FF000332 */  andi       $v1, $s0, 0xFF
    /* 1E948 8002E148 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1E94C 8002E14C C0880300 */  sll        $s1, $v1, 3
    /* 1E950 8002E150 1800622C */  sltiu      $v0, $v1, 0x18
    /* 1E954 8002E154 62004010 */  beqz       $v0, .Lfunc_8002E138_8002E2E0
    /* 1E958 8002E158 1800BFAF */   sw        $ra, 0x18($sp)
    /* 1E95C 8002E15C 40100300 */  sll        $v0, $v1, 1
    /* 1E960 8002E160 21104300 */  addu       $v0, $v0, $v1
    /* 1E964 8002E164 80100200 */  sll        $v0, $v0, 2
    /* 1E968 8002E168 21104300 */  addu       $v0, $v0, $v1
    /* 1E96C 8002E16C 80380200 */  sll        $a3, $v0, 2
    /* 1E970 8002E170 0980013C */  lui        $at, %hi(D_8008D998)
    /* 1E974 8002E174 98D92124 */  addiu      $at, $at, %lo(D_8008D998)
    /* 1E978 8002E178 21082700 */  addu       $at, $at, $a3
    /* 1E97C 8002E17C 00002290 */  lbu        $v0, 0x0($at)
    /* 1E980 8002E180 0980043C */  lui        $a0, %hi(D_8008EA13)
    /* 1E984 8002E184 13EA8424 */  addiu      $a0, $a0, %lo(D_8008EA13)
    /* 1E988 8002E188 000082A0 */  sb         $v0, 0x0($a0)
    /* 1E98C 8002E18C 0980013C */  lui        $at, %hi(D_8008D99C)
    /* 1E990 8002E190 9CD92124 */  addiu      $at, $at, %lo(D_8008D99C)
    /* 1E994 8002E194 21082700 */  addu       $at, $at, $a3
    /* 1E998 8002E198 00002390 */  lbu        $v1, 0x0($at)
    /* 1E99C 8002E19C FF000232 */  andi       $v0, $s0, 0xFF
    /* 1E9A0 8002E1A0 0980013C */  lui        $at, %hi(gCurrentVoice)
    /* 1E9A4 8002E1A4 26EA22A4 */  sh         $v0, %lo(gCurrentVoice)($at)
    /* 1E9A8 8002E1A8 0980013C */  lui        $at, %hi(D_8008EA18)
    /* 1E9AC 8002E1AC 18EA23A0 */  sb         $v1, %lo(D_8008EA18)($at)
    /* 1E9B0 8002E1B0 00008290 */  lbu        $v0, 0x0($a0)
    /* 1E9B4 8002E1B4 0980033C */  lui        $v1, %hi(D_8008EA18)
    /* 1E9B8 8002E1B8 18EA6390 */  lbu        $v1, %lo(D_8008EA18)($v1)
    /* 1E9BC 8002E1BC 00110200 */  sll        $v0, $v0, 4
    /* 1E9C0 8002E1C0 21306200 */  addu       $a2, $v1, $v0
    /* 1E9C4 8002E1C4 00140500 */  sll        $v0, $a1, 16
    /* 1E9C8 8002E1C8 03240200 */  sra        $a0, $v0, 16
    /* 1E9CC 8002E1CC 1A008004 */  bltz       $a0, .Lfunc_8002E138_8002E238
    /* 1E9D0 8002E1D0 40110600 */   sll       $v0, $a2, 5
    /* 1E9D4 8002E1D4 0980033C */  lui        $v1, %hi(D_8008E978)
    /* 1E9D8 8002E1D8 78E9638C */  lw         $v1, %lo(D_8008E978)($v1)
    /* 1E9DC 8002E1DC 00000000 */  nop
    /* 1E9E0 8002E1E0 21104300 */  addu       $v0, $v0, $v1
    /* 1E9E4 8002E1E4 0D004290 */  lbu        $v0, 0xD($v0)
    /* 1E9E8 8002E1E8 00000000 */  nop
    /* 1E9EC 8002E1EC 18008200 */  mult       $a0, $v0
    /* 1E9F0 8002E1F0 12280000 */  mflo       $a1
    /* 1E9F4 8002E1F4 0281023C */  lui        $v0, (0x81020409 >> 16)
    /* 1E9F8 8002E1F8 09044234 */  ori        $v0, $v0, (0x81020409 & 0xFFFF)
    /* 1E9FC 8002E1FC 1800A200 */  mult       $a1, $v0
    /* 1EA00 8002E200 0980013C */  lui        $at, %hi(D_8008D994)
    /* 1EA04 8002E204 94D92124 */  addiu      $at, $at, %lo(D_8008D994)
    /* 1EA08 8002E208 21082700 */  addu       $at, $at, $a3
    /* 1EA0C 8002E20C 00002494 */  lhu        $a0, 0x0($at)
    /* 1EA10 8002E210 C3170500 */  sra        $v0, $a1, 31
    /* 1EA14 8002E214 10180000 */  mfhi       $v1
    /* 1EA18 8002E218 21186500 */  addu       $v1, $v1, $a1
    /* 1EA1C 8002E21C 83190300 */  sra        $v1, $v1, 6
    /* 1EA20 8002E220 23186200 */  subu       $v1, $v1, $v0
    /* 1EA24 8002E224 21208300 */  addu       $a0, $a0, $v1
    /* 1EA28 8002E228 C0110300 */  sll        $v0, $v1, 7
    /* 1EA2C 8002E22C 23104300 */  subu       $v0, $v0, $v1
    /* 1EA30 8002E230 A5B80008 */  j          .Lfunc_8002E138_8002E294
    /* 1EA34 8002E234 2310A200 */   subu      $v0, $a1, $v0
  .Lfunc_8002E138_8002E238:
    /* 1EA38 8002E238 0980033C */  lui        $v1, %hi(D_8008E978)
    /* 1EA3C 8002E23C 78E9638C */  lw         $v1, %lo(D_8008E978)($v1)
    /* 1EA40 8002E240 00000000 */  nop
    /* 1EA44 8002E244 21104300 */  addu       $v0, $v0, $v1
    /* 1EA48 8002E248 0C004290 */  lbu        $v0, 0xC($v0)
    /* 1EA4C 8002E24C 00000000 */  nop
    /* 1EA50 8002E250 18008200 */  mult       $a0, $v0
    /* 1EA54 8002E254 12200000 */  mflo       $a0
    /* 1EA58 8002E258 0281023C */  lui        $v0, (0x81020409 >> 16)
    /* 1EA5C 8002E25C 09044234 */  ori        $v0, $v0, (0x81020409 & 0xFFFF)
    /* 1EA60 8002E260 18008200 */  mult       $a0, $v0
    /* 1EA64 8002E264 0980013C */  lui        $at, %hi(D_8008D994)
    /* 1EA68 8002E268 94D92124 */  addiu      $at, $at, %lo(D_8008D994)
    /* 1EA6C 8002E26C 21082700 */  addu       $at, $at, $a3
    /* 1EA70 8002E270 00002394 */  lhu        $v1, 0x0($at)
    /* 1EA74 8002E274 10100000 */  mfhi       $v0
    /* 1EA78 8002E278 21104400 */  addu       $v0, $v0, $a0
    /* 1EA7C 8002E27C 83110200 */  sra        $v0, $v0, 6
    /* 1EA80 8002E280 C3270400 */  sra        $a0, $a0, 31
    /* 1EA84 8002E284 23104400 */  subu       $v0, $v0, $a0
    /* 1EA88 8002E288 21186200 */  addu       $v1, $v1, $v0
    /* 1EA8C 8002E28C FFFF6424 */  addiu      $a0, $v1, -0x1
    /* 1EA90 8002E290 7F004224 */  addiu      $v0, $v0, 0x7F
  .Lfunc_8002E138_8002E294:
    /* 1EA94 8002E294 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* 1EA98 8002E298 0EB8000C */  jal        SndKeyOffVoice
    /* 1EA9C 8002E29C FFFF4530 */   andi      $a1, $v0, 0xFFFF
    /* 1EAA0 8002E2A0 40181100 */  sll        $v1, $s1, 1
    /* 1EAA4 8002E2A4 0980013C */  lui        $at, %hi(D_8008D7F4)
    /* 1EAA8 8002E2A8 F4D72124 */  addiu      $at, $at, %lo(D_8008D7F4)
    /* 1EAAC 8002E2AC 21082300 */  addu       $at, $at, $v1
    /* 1EAB0 8002E2B0 000022A4 */  sh         $v0, 0x0($at)
    /* 1EAB4 8002E2B4 FF000332 */  andi       $v1, $s0, 0xFF
    /* 1EAB8 8002E2B8 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 1EABC 8002E2BC 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 1EAC0 8002E2C0 21082300 */  addu       $at, $at, $v1
    /* 1EAC4 8002E2C4 00002290 */  lbu        $v0, 0x0($at)
    /* 1EAC8 8002E2C8 00000000 */  nop
    /* 1EACC 8002E2CC 04004234 */  ori        $v0, $v0, 0x4
    /* 1EAD0 8002E2D0 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 1EAD4 8002E2D4 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 1EAD8 8002E2D8 21082300 */  addu       $at, $at, $v1
    /* 1EADC 8002E2DC 000022A0 */  sb         $v0, 0x0($at)
  .Lfunc_8002E138_8002E2E0:
    /* 1EAE0 8002E2E0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1EAE4 8002E2E4 1400B18F */  lw         $s1, 0x14($sp)
    /* 1EAE8 8002E2E8 1000B08F */  lw         $s0, 0x10($sp)
    /* 1EAEC 8002E2EC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1EAF0 8002E2F0 0800E003 */  jr         $ra
    /* 1EAF4 8002E2F4 00000000 */   nop
endlabel SndStopVoiceEx
