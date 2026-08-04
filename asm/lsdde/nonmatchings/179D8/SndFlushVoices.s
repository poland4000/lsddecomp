.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndFlushVoices, 0x3C4

glabel SndFlushVoices
    /* 1FF00 8002F700 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 1FF04 8002F704 2000B0AF */  sw         $s0, 0x20($sp)
    /* 1FF08 8002F708 21800000 */  addu       $s0, $zero, $zero
    /* 1FF0C 8002F70C 0980023C */  lui        $v0, %hi(D_8008DE68)
    /* 1FF10 8002F710 68DE428C */  lw         $v0, %lo(D_8008DE68)($v0)
    /* 1FF14 8002F714 0980043C */  lui        $a0, %hi(gNumVoices)
    /* 1FF18 8002F718 D0E98490 */  lbu        $a0, %lo(gNumVoices)($a0)
    /* 1FF1C 8002F71C 0980033C */  lui        $v1, %hi(D_8008DE6C)
    /* 1FF20 8002F720 6CDE6324 */  addiu      $v1, $v1, %lo(D_8008DE6C)
    /* 1FF24 8002F724 3400BFAF */  sw         $ra, 0x34($sp)
    /* 1FF28 8002F728 3000B4AF */  sw         $s4, 0x30($sp)
    /* 1FF2C 8002F72C 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 1FF30 8002F730 2800B2AF */  sw         $s2, 0x28($sp)
    /* 1FF34 8002F734 2400B1AF */  sw         $s1, 0x24($sp)
    /* 1FF38 8002F738 01004224 */  addiu      $v0, $v0, 0x1
    /* 1FF3C 8002F73C 0F004230 */  andi       $v0, $v0, 0xF
    /* 1FF40 8002F740 0980013C */  lui        $at, %hi(D_8008DE68)
    /* 1FF44 8002F744 68DE22AC */  sw         $v0, %lo(D_8008DE68)($at)
    /* 1FF48 8002F748 80100200 */  sll        $v0, $v0, 2
    /* 1FF4C 8002F74C 21104300 */  addu       $v0, $v0, $v1
    /* 1FF50 8002F750 18008018 */  blez       $a0, .Lfunc_8002F700_8002F7B4
    /* 1FF54 8002F754 000040AC */   sw        $zero, 0x0($v0)
    /* 1FF58 8002F758 21304000 */  addu       $a2, $v0, $zero
    /* 1FF5C 8002F75C 01000834 */  ori        $t0, $zero, 0x1
    /* 1FF60 8002F760 21388000 */  addu       $a3, $a0, $zero
    /* 1FF64 8002F764 0980043C */  lui        $a0, %hi(D_8008D98E)
    /* 1FF68 8002F768 8ED98424 */  addiu      $a0, $a0, %lo(D_8008D98E)
    /* 1FF6C 8002F76C 0780053C */  lui        $a1, %hi(D_8006DAD4)
    /* 1FF70 8002F770 D4DAA58C */  lw         $a1, %lo(D_8006DAD4)($a1)
  .Lfunc_8002F700_8002F774:
    /* 1FF74 8002F774 00000000 */  nop
    /* 1FF78 8002F778 0C00A294 */  lhu        $v0, 0xC($a1)
    /* 1FF7C 8002F77C 00000000 */  nop
    /* 1FF80 8002F780 000082A4 */  sh         $v0, 0x0($a0)
    /* 1FF84 8002F784 00008294 */  lhu        $v0, 0x0($a0)
    /* 1FF88 8002F788 00000000 */  nop
    /* 1FF8C 8002F78C 05004014 */  bnez       $v0, .Lfunc_8002F700_8002F7A4
    /* 1FF90 8002F790 34008424 */   addiu     $a0, $a0, 0x34
    /* 1FF94 8002F794 0000C38C */  lw         $v1, 0x0($a2)
    /* 1FF98 8002F798 04100802 */  sllv       $v0, $t0, $s0
    /* 1FF9C 8002F79C 25104300 */  or         $v0, $v0, $v1
    /* 1FFA0 8002F7A0 0000C2AC */  sw         $v0, 0x0($a2)
  .Lfunc_8002F700_8002F7A4:
    /* 1FFA4 8002F7A4 01001026 */  addiu      $s0, $s0, 0x1
    /* 1FFA8 8002F7A8 2A100702 */  slt        $v0, $s0, $a3
    /* 1FFAC 8002F7AC F1FF4014 */  bnez       $v0, .Lfunc_8002F700_8002F774
    /* 1FFB0 8002F7B0 1000A524 */   addiu     $a1, $a1, 0x10
  .Lfunc_8002F700_8002F7B4:
    /* 1FFB4 8002F7B4 0980023C */  lui        $v0, %hi(D_8008EA40)
    /* 1FFB8 8002F7B8 40EA4290 */  lbu        $v0, %lo(D_8008EA40)($v0)
    /* 1FFBC 8002F7BC 00000000 */  nop
    /* 1FFC0 8002F7C0 2B004014 */  bnez       $v0, .Lfunc_8002F700_8002F870
    /* 1FFC4 8002F7C4 21800000 */   addu      $s0, $zero, $zero
    /* 1FFC8 8002F7C8 FFFF1224 */  addiu      $s2, $zero, -0x1
    /* 1FFCC 8002F7CC 0980033C */  lui        $v1, %hi(D_8008DE6C)
    /* 1FFD0 8002F7D0 6CDE6324 */  addiu      $v1, $v1, %lo(D_8008DE6C)
  .Lfunc_8002F700_8002F7D4:
    /* 1FFD4 8002F7D4 0000628C */  lw         $v0, 0x0($v1)
    /* 1FFD8 8002F7D8 01001026 */  addiu      $s0, $s0, 0x1
    /* 1FFDC 8002F7DC 24904202 */  and        $s2, $s2, $v0
    /* 1FFE0 8002F7E0 0F00022A */  slti       $v0, $s0, 0xF
    /* 1FFE4 8002F7E4 FBFF4014 */  bnez       $v0, .Lfunc_8002F700_8002F7D4
    /* 1FFE8 8002F7E8 04006324 */   addiu     $v1, $v1, 0x4
    /* 1FFEC 8002F7EC 0980023C */  lui        $v0, %hi(gNumVoices)
    /* 1FFF0 8002F7F0 D0E94290 */  lbu        $v0, %lo(gNumVoices)($v0)
    /* 1FFF4 8002F7F4 00000000 */  nop
    /* 1FFF8 8002F7F8 1C004018 */  blez       $v0, .Lfunc_8002F700_8002F86C
    /* 1FFFC 8002F7FC 21800000 */   addu      $s0, $zero, $zero
    /* 20000 8002F800 01001434 */  ori        $s4, $zero, 0x1
    /* 20004 8002F804 02001334 */  ori        $s3, $zero, 0x2
    /* 20008 8002F808 21880000 */  addu       $s1, $zero, $zero
  .Lfunc_8002F700_8002F80C:
    /* 2000C 8002F80C 04101402 */  sllv       $v0, $s4, $s0
    /* 20010 8002F810 24104202 */  and        $v0, $s2, $v0
    /* 20014 8002F814 0F004010 */  beqz       $v0, .Lfunc_8002F700_8002F854
    /* 20018 8002F818 00000000 */   nop
    /* 2001C 8002F81C 0980013C */  lui        $at, %hi(gVoiceStateTable + 0x3)
    /* 20020 8002F820 A3D92124 */  addiu      $at, $at, %lo(gVoiceStateTable + 0x3)
    /* 20024 8002F824 21083100 */  addu       $at, $at, $s1
    /* 20028 8002F828 00002290 */  lbu        $v0, 0x0($at)
    /* 2002C 8002F82C 00000000 */  nop
    /* 20030 8002F830 04005314 */  bne        $v0, $s3, .Lfunc_8002F700_8002F844
    /* 20034 8002F834 21200000 */   addu      $a0, $zero, $zero
    /* 20038 8002F838 FF00053C */  lui        $a1, (0xFFFFFF >> 16)
    /* 2003C 8002F83C 7ADD000C */  jal        func_800375E8
    /* 20040 8002F840 FFFFA534 */   ori       $a1, $a1, (0xFFFFFF & 0xFFFF)
  .Lfunc_8002F700_8002F844:
    /* 20044 8002F844 0980013C */  lui        $at, %hi(gVoiceStateTable + 0x3)
    /* 20048 8002F848 A3D92124 */  addiu      $at, $at, %lo(gVoiceStateTable + 0x3)
    /* 2004C 8002F84C 21083100 */  addu       $at, $at, $s1
    /* 20050 8002F850 000020A0 */  sb         $zero, 0x0($at)
  .Lfunc_8002F700_8002F854:
    /* 20054 8002F854 0980023C */  lui        $v0, %hi(gNumVoices)
    /* 20058 8002F858 D0E94290 */  lbu        $v0, %lo(gNumVoices)($v0)
    /* 2005C 8002F85C 01001026 */  addiu      $s0, $s0, 0x1
    /* 20060 8002F860 2A100202 */  slt        $v0, $s0, $v0
    /* 20064 8002F864 E9FF4014 */  bnez       $v0, .Lfunc_8002F700_8002F80C
    /* 20068 8002F868 34003126 */   addiu     $s1, $s1, 0x34
  .Lfunc_8002F700_8002F86C:
    /* 2006C 8002F86C 21800000 */  addu       $s0, $zero, $zero
  .Lfunc_8002F700_8002F870:
    /* 20070 8002F870 21900000 */  addu       $s2, $zero, $zero
    /* 20074 8002F874 0980023C */  lui        $v0, %hi(D_80090C60)
    /* 20078 8002F878 600C4294 */  lhu        $v0, %lo(D_80090C60)($v0)
    /* 2007C 8002F87C 0980033C */  lui        $v1, %hi(D_8008E228)
    /* 20080 8002F880 28E26394 */  lhu        $v1, %lo(D_8008E228)($v1)
    /* 20084 8002F884 27100200 */  nor        $v0, $zero, $v0
    /* 20088 8002F888 24186200 */  and        $v1, $v1, $v0
    /* 2008C 8002F88C 0980023C */  lui        $v0, %hi(D_80090C64)
    /* 20090 8002F890 640C4294 */  lhu        $v0, %lo(D_80090C64)($v0)
    /* 20094 8002F894 21880000 */  addu       $s1, $zero, $zero
    /* 20098 8002F898 0980013C */  lui        $at, %hi(D_8008E228)
    /* 2009C 8002F89C 28E223A4 */  sh         $v1, %lo(D_8008E228)($at)
    /* 200A0 8002F8A0 0980033C */  lui        $v1, %hi(D_8008E22C)
    /* 200A4 8002F8A4 2CE26394 */  lhu        $v1, %lo(D_8008E22C)($v1)
    /* 200A8 8002F8A8 27100200 */  nor        $v0, $zero, $v0
    /* 200AC 8002F8AC 24186200 */  and        $v1, $v1, $v0
    /* 200B0 8002F8B0 0980013C */  lui        $at, %hi(D_8008E22C)
    /* 200B4 8002F8B4 2CE223A4 */  sh         $v1, %lo(D_8008E22C)($at)
  .Lfunc_8002F700_8002F8B8:
    /* 200B8 8002F8B8 0980013C */  lui        $at, %hi(D_8008D9A4)
    /* 200BC 8002F8BC A4D92124 */  addiu      $at, $at, %lo(D_8008D9A4)
    /* 200C0 8002F8C0 21083100 */  addu       $at, $at, $s1
    /* 200C4 8002F8C4 00002284 */  lh         $v0, 0x0($at)
    /* 200C8 8002F8C8 00000000 */  nop
    /* 200CC 8002F8CC 03004010 */  beqz       $v0, .Lfunc_8002F700_8002F8DC
    /* 200D0 8002F8D0 00000000 */   nop
    /* 200D4 8002F8D4 36B9000C */  jal        SndApplyVoiceVolume
    /* 200D8 8002F8D8 03241200 */   sra       $a0, $s2, 16
  .Lfunc_8002F700_8002F8DC:
    /* 200DC 8002F8DC 0980013C */  lui        $at, %hi(D_8008D9B0)
    /* 200E0 8002F8E0 B0D92124 */  addiu      $at, $at, %lo(D_8008D9B0)
    /* 200E4 8002F8E4 21083100 */  addu       $at, $at, $s1
    /* 200E8 8002F8E8 00002284 */  lh         $v0, 0x0($at)
    /* 200EC 8002F8EC 00000000 */  nop
    /* 200F0 8002F8F0 03004010 */  beqz       $v0, .Lfunc_8002F700_8002F900
    /* 200F4 8002F8F4 34003126 */   addiu     $s1, $s1, 0x34
    /* 200F8 8002F8F8 91BA000C */  jal        SndApplyVoicePitch
    /* 200FC 8002F8FC 03241200 */   sra       $a0, $s2, 16
  .Lfunc_8002F700_8002F900:
    /* 20100 8002F900 0100023C */  lui        $v0, (0x10000 >> 16)
    /* 20104 8002F904 21904202 */  addu       $s2, $s2, $v0
    /* 20108 8002F908 01001026 */  addiu      $s0, $s0, 0x1
    /* 2010C 8002F90C 1800022A */  slti       $v0, $s0, 0x18
    /* 20110 8002F910 E9FF4014 */  bnez       $v0, .Lfunc_8002F700_8002F8B8
    /* 20114 8002F914 21200000 */   addu      $a0, $zero, $zero
    /* 20118 8002F918 0980053C */  lui        $a1, %hi(gVoiceDirtyFlags)
    /* 2011C 8002F91C 70D9A524 */  addiu      $a1, $a1, %lo(gVoiceDirtyFlags)
    /* 20120 8002F920 0980023C */  lui        $v0, %hi(gVoiceAttrTable)
    /* 20124 8002F924 F0D74224 */  addiu      $v0, $v0, %lo(gVoiceAttrTable)
    /* 20128 8002F928 0A004924 */  addiu      $t1, $v0, 0xA
    /* 2012C 8002F92C 08004824 */  addiu      $t0, $v0, 0x8
    /* 20130 8002F930 02004724 */  addiu      $a3, $v0, 0x2
    /* 20134 8002F934 21304000 */  addu       $a2, $v0, $zero
  .Lfunc_8002F700_8002F938:
    /* 20138 8002F938 0000A290 */  lbu        $v0, 0x0($a1)
    /* 2013C 8002F93C 00000000 */  nop
    /* 20140 8002F940 01004230 */  andi       $v0, $v0, 0x1
    /* 20144 8002F944 09004010 */  beqz       $v0, .Lfunc_8002F700_8002F96C
    /* 20148 8002F948 00000000 */   nop
    /* 2014C 8002F94C 0780023C */  lui        $v0, %hi(D_8006DAD4)
    /* 20150 8002F950 D4DA428C */  lw         $v0, %lo(D_8006DAD4)($v0)
    /* 20154 8002F954 0000C394 */  lhu        $v1, 0x0($a2)
    /* 20158 8002F958 21108200 */  addu       $v0, $a0, $v0
    /* 2015C 8002F95C 000043A4 */  sh         $v1, 0x0($v0)
    /* 20160 8002F960 0000E394 */  lhu        $v1, 0x0($a3)
    /* 20164 8002F964 00000000 */  nop
    /* 20168 8002F968 020043A4 */  sh         $v1, 0x2($v0)
  .Lfunc_8002F700_8002F96C:
    /* 2016C 8002F96C 0000A290 */  lbu        $v0, 0x0($a1)
    /* 20170 8002F970 00000000 */  nop
    /* 20174 8002F974 04004230 */  andi       $v0, $v0, 0x4
    /* 20178 8002F978 09004010 */  beqz       $v0, .Lfunc_8002F700_8002F9A0
    /* 2017C 8002F97C 00000000 */   nop
    /* 20180 8002F980 0780023C */  lui        $v0, %hi(D_8006DAD4)
    /* 20184 8002F984 D4DA428C */  lw         $v0, %lo(D_8006DAD4)($v0)
    /* 20188 8002F988 0980013C */  lui        $at, %hi(D_8008D7F4)
    /* 2018C 8002F98C F4D72124 */  addiu      $at, $at, %lo(D_8008D7F4)
    /* 20190 8002F990 21082400 */  addu       $at, $at, $a0
    /* 20194 8002F994 00002394 */  lhu        $v1, 0x0($at)
    /* 20198 8002F998 21108200 */  addu       $v0, $a0, $v0
    /* 2019C 8002F99C 040043A4 */  sh         $v1, 0x4($v0)
  .Lfunc_8002F700_8002F9A0:
    /* 201A0 8002F9A0 0000A290 */  lbu        $v0, 0x0($a1)
    /* 201A4 8002F9A4 00000000 */  nop
    /* 201A8 8002F9A8 08004230 */  andi       $v0, $v0, 0x8
    /* 201AC 8002F9AC 09004010 */  beqz       $v0, .Lfunc_8002F700_8002F9D4
    /* 201B0 8002F9B0 00000000 */   nop
    /* 201B4 8002F9B4 0780023C */  lui        $v0, %hi(D_8006DAD4)
    /* 201B8 8002F9B8 D4DA428C */  lw         $v0, %lo(D_8006DAD4)($v0)
    /* 201BC 8002F9BC 0980013C */  lui        $at, %hi(D_8008D7F4 + 0x2)
    /* 201C0 8002F9C0 F6D72124 */  addiu      $at, $at, %lo(D_8008D7F4 + 0x2)
    /* 201C4 8002F9C4 21082400 */  addu       $at, $at, $a0
    /* 201C8 8002F9C8 00002394 */  lhu        $v1, 0x0($at)
    /* 201CC 8002F9CC 21108200 */  addu       $v0, $a0, $v0
    /* 201D0 8002F9D0 060043A4 */  sh         $v1, 0x6($v0)
  .Lfunc_8002F700_8002F9D4:
    /* 201D4 8002F9D4 0000A290 */  lbu        $v0, 0x0($a1)
    /* 201D8 8002F9D8 00000000 */  nop
    /* 201DC 8002F9DC 10004230 */  andi       $v0, $v0, 0x10
    /* 201E0 8002F9E0 09004010 */  beqz       $v0, .Lfunc_8002F700_8002FA08
    /* 201E4 8002F9E4 1000E724 */   addiu     $a3, $a3, 0x10
    /* 201E8 8002F9E8 0780023C */  lui        $v0, %hi(D_8006DAD4)
    /* 201EC 8002F9EC D4DA428C */  lw         $v0, %lo(D_8006DAD4)($v0)
    /* 201F0 8002F9F0 00000395 */  lhu        $v1, 0x0($t0)
    /* 201F4 8002F9F4 21108200 */  addu       $v0, $a0, $v0
    /* 201F8 8002F9F8 080043A4 */  sh         $v1, 0x8($v0)
    /* 201FC 8002F9FC 00002395 */  lhu        $v1, 0x0($t1)
    /* 20200 8002FA00 00000000 */  nop
    /* 20204 8002FA04 0A0043A4 */  sh         $v1, 0xA($v0)
  .Lfunc_8002F700_8002FA08:
    /* 20208 8002FA08 0000A0A0 */  sb         $zero, 0x0($a1)
    /* 2020C 8002FA0C 0100A524 */  addiu      $a1, $a1, 0x1
    /* 20210 8002FA10 10002925 */  addiu      $t1, $t1, 0x10
    /* 20214 8002FA14 10000825 */  addiu      $t0, $t0, 0x10
    /* 20218 8002FA18 10008424 */  addiu      $a0, $a0, 0x10
    /* 2021C 8002FA1C 0980023C */  lui        $v0, %hi(D_8008D988)
    /* 20220 8002FA20 88D94224 */  addiu      $v0, $v0, %lo(D_8008D988)
    /* 20224 8002FA24 2A10A200 */  slt        $v0, $a1, $v0
    /* 20228 8002FA28 C3FF4014 */  bnez       $v0, .Lfunc_8002F700_8002F938
    /* 2022C 8002FA2C 1000C624 */   addiu     $a2, $a2, 0x10
    /* 20230 8002FA30 0780023C */  lui        $v0, %hi(D_8006DAD4)
    /* 20234 8002FA34 D4DA428C */  lw         $v0, %lo(D_8006DAD4)($v0)
    /* 20238 8002FA38 0980033C */  lui        $v1, %hi(D_80090C60)
    /* 2023C 8002FA3C 600C6394 */  lhu        $v1, %lo(D_80090C60)($v1)
    /* 20240 8002FA40 0980043C */  lui        $a0, %hi(D_80090C64)
    /* 20244 8002FA44 640C8494 */  lhu        $a0, %lo(D_80090C64)($a0)
    /* 20248 8002FA48 0980053C */  lui        $a1, %hi(D_8008E228)
    /* 2024C 8002FA4C 28E2A594 */  lhu        $a1, %lo(D_8008E228)($a1)
    /* 20250 8002FA50 0980063C */  lui        $a2, %hi(D_8008E22C)
    /* 20254 8002FA54 2CE2C694 */  lhu        $a2, %lo(D_8008E22C)($a2)
    /* 20258 8002FA58 0980073C */  lui        $a3, %hi(D_8008E230)
    /* 2025C 8002FA5C 30E2E794 */  lhu        $a3, %lo(D_8008E230)($a3)
    /* 20260 8002FA60 0980083C */  lui        $t0, %hi(D_8008E234)
    /* 20264 8002FA64 34E20895 */  lhu        $t0, %lo(D_8008E234)($t0)
    /* 20268 8002FA68 0980013C */  lui        $at, %hi(D_80090C60)
    /* 2026C 8002FA6C 600C20A4 */  sh         $zero, %lo(D_80090C60)($at)
    /* 20270 8002FA70 0980013C */  lui        $at, %hi(D_80090C64)
    /* 20274 8002FA74 640C20A4 */  sh         $zero, %lo(D_80090C64)($at)
    /* 20278 8002FA78 0980013C */  lui        $at, %hi(D_8008E228)
    /* 2027C 8002FA7C 28E220A4 */  sh         $zero, %lo(D_8008E228)($at)
    /* 20280 8002FA80 0980013C */  lui        $at, %hi(D_8008E22C)
    /* 20284 8002FA84 2CE220A4 */  sh         $zero, %lo(D_8008E22C)($at)
    /* 20288 8002FA88 8C0143A4 */  sh         $v1, 0x18C($v0)
    /* 2028C 8002FA8C 8E0144A4 */  sh         $a0, 0x18E($v0)
    /* 20290 8002FA90 880145A4 */  sh         $a1, 0x188($v0)
    /* 20294 8002FA94 8A0146A4 */  sh         $a2, 0x18A($v0)
    /* 20298 8002FA98 980147A4 */  sh         $a3, 0x198($v0)
    /* 2029C 8002FA9C 9A0148A4 */  sh         $t0, 0x19A($v0)
    /* 202A0 8002FAA0 3400BF8F */  lw         $ra, 0x34($sp)
    /* 202A4 8002FAA4 3000B48F */  lw         $s4, 0x30($sp)
    /* 202A8 8002FAA8 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 202AC 8002FAAC 2800B28F */  lw         $s2, 0x28($sp)
    /* 202B0 8002FAB0 2400B18F */  lw         $s1, 0x24($sp)
    /* 202B4 8002FAB4 2000B08F */  lw         $s0, 0x20($sp)
    /* 202B8 8002FAB8 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 202BC 8002FABC 0800E003 */  jr         $ra
    /* 202C0 8002FAC0 00000000 */   nop
endlabel SndFlushVoices
