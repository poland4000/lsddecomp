.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndStartVoice, 0x1C0

glabel SndStartVoice
    /* 1E5BC 8002DDBC 21388000 */  addu       $a3, $a0, $zero
    /* 1E5C0 8002DDC0 FF00E430 */  andi       $a0, $a3, 0xFF
    /* 1E5C4 8002DDC4 00110400 */  sll        $v0, $a0, 4
    /* 1E5C8 8002DDC8 0980013C */  lui        $at, %hi(gVoiceAttrTable + 0x2)
    /* 1E5CC 8002DDCC F2D72124 */  addiu      $at, $at, %lo(gVoiceAttrTable + 0x2)
    /* 1E5D0 8002DDD0 21082200 */  addu       $at, $at, $v0
    /* 1E5D4 8002DDD4 000026A4 */  sh         $a2, 0x0($at)
    /* 1E5D8 8002DDD8 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 1E5DC 8002DDDC 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 1E5E0 8002DDE0 21082400 */  addu       $at, $at, $a0
    /* 1E5E4 8002DDE4 00002390 */  lbu        $v1, 0x0($at)
    /* 1E5E8 8002DDE8 0980013C */  lui        $at, %hi(gVoiceAttrTable)
    /* 1E5EC 8002DDEC F0D72124 */  addiu      $at, $at, %lo(gVoiceAttrTable)
    /* 1E5F0 8002DDF0 21082200 */  addu       $at, $at, $v0
    /* 1E5F4 8002DDF4 000025A4 */  sh         $a1, 0x0($at)
    /* 1E5F8 8002DDF8 1000822C */  sltiu      $v0, $a0, 0x10
    /* 1E5FC 8002DDFC 03006334 */  ori        $v1, $v1, 0x3
    /* 1E600 8002DE00 0980013C */  lui        $at, %hi(gVoiceDirtyFlags)
    /* 1E604 8002DE04 70D92124 */  addiu      $at, $at, %lo(gVoiceDirtyFlags)
    /* 1E608 8002DE08 21082400 */  addu       $at, $at, $a0
    /* 1E60C 8002DE0C 000023A0 */  sb         $v1, 0x0($at)
    /* 1E610 8002DE10 05004010 */  beqz       $v0, .Lfunc_8002DDBC_8002DE28
    /* 1E614 8002DE14 F8FFBD27 */   addiu     $sp, $sp, -0x8
    /* 1E618 8002DE18 01000234 */  ori        $v0, $zero, 0x1
    /* 1E61C 8002DE1C 04408200 */  sllv       $t0, $v0, $a0
    /* 1E620 8002DE20 8EB70008 */  j          .Lfunc_8002DDBC_8002DE38
    /* 1E624 8002DE24 21300000 */   addu      $a2, $zero, $zero
  .Lfunc_8002DDBC_8002DE28:
    /* 1E628 8002DE28 21400000 */  addu       $t0, $zero, $zero
    /* 1E62C 8002DE2C F0FF8324 */  addiu      $v1, $a0, -0x10
    /* 1E630 8002DE30 01000234 */  ori        $v0, $zero, 0x1
    /* 1E634 8002DE34 04306200 */  sllv       $a2, $v0, $v1
  .Lfunc_8002DDBC_8002DE38:
    /* 1E638 8002DE38 FF00E330 */  andi       $v1, $a3, 0xFF
    /* 1E63C 8002DE3C 40100300 */  sll        $v0, $v1, 1
    /* 1E640 8002DE40 21104300 */  addu       $v0, $v0, $v1
    /* 1E644 8002DE44 80100200 */  sll        $v0, $v0, 2
    /* 1E648 8002DE48 21104300 */  addu       $v0, $v0, $v1
    /* 1E64C 8002DE4C 80100200 */  sll        $v0, $v0, 2
    /* 1E650 8002DE50 0980043C */  lui        $a0, %hi(gNumVoices)
    /* 1E654 8002DE54 D0E98490 */  lbu        $a0, %lo(gNumVoices)($a0)
    /* 1E658 8002DE58 0A000334 */  ori        $v1, $zero, 0xA
    /* 1E65C 8002DE5C 0980013C */  lui        $at, %hi(D_8008D98C)
    /* 1E660 8002DE60 8CD92124 */  addiu      $at, $at, %lo(D_8008D98C)
    /* 1E664 8002DE64 21082200 */  addu       $at, $at, $v0
    /* 1E668 8002DE68 000023A4 */  sh         $v1, 0x0($at)
    /* 1E66C 8002DE6C 17008010 */  beqz       $a0, .Lfunc_8002DDBC_8002DECC
    /* 1E670 8002DE70 21280000 */   addu      $a1, $zero, $zero
    /* 1E674 8002DE74 FFFFA330 */  andi       $v1, $a1, 0xFFFF
  .Lfunc_8002DDBC_8002DE78:
    /* 1E678 8002DE78 40100300 */  sll        $v0, $v1, 1
    /* 1E67C 8002DE7C 21104300 */  addu       $v0, $v0, $v1
    /* 1E680 8002DE80 80100200 */  sll        $v0, $v0, 2
    /* 1E684 8002DE84 21104300 */  addu       $v0, $v0, $v1
    /* 1E688 8002DE88 80100200 */  sll        $v0, $v0, 2
    /* 1E68C 8002DE8C 0980013C */  lui        $at, %hi(gVoiceStateTable + 0x3)
    /* 1E690 8002DE90 A3D92124 */  addiu      $at, $at, %lo(gVoiceStateTable + 0x3)
    /* 1E694 8002DE94 21082200 */  addu       $at, $at, $v0
    /* 1E698 8002DE98 00002390 */  lbu        $v1, 0x0($at)
    /* 1E69C 8002DE9C 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1E6A0 8002DEA0 01006330 */  andi       $v1, $v1, 0x1
    /* 1E6A4 8002DEA4 0980013C */  lui        $at, %hi(gVoiceStateTable + 0x3)
    /* 1E6A8 8002DEA8 A3D92124 */  addiu      $at, $at, %lo(gVoiceStateTable + 0x3)
    /* 1E6AC 8002DEAC 21082200 */  addu       $at, $at, $v0
    /* 1E6B0 8002DEB0 000023A0 */  sb         $v1, 0x0($at)
    /* 1E6B4 8002DEB4 0980033C */  lui        $v1, %hi(gNumVoices)
    /* 1E6B8 8002DEB8 D0E96390 */  lbu        $v1, %lo(gNumVoices)($v1)
    /* 1E6BC 8002DEBC FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 1E6C0 8002DEC0 2B104300 */  sltu       $v0, $v0, $v1
    /* 1E6C4 8002DEC4 ECFF4014 */  bnez       $v0, .Lfunc_8002DDBC_8002DE78
    /* 1E6C8 8002DEC8 FFFFA330 */   andi      $v1, $a1, 0xFFFF
  .Lfunc_8002DDBC_8002DECC:
    /* 1E6CC 8002DECC FF00E330 */  andi       $v1, $a3, 0xFF
    /* 1E6D0 8002DED0 40100300 */  sll        $v0, $v1, 1
    /* 1E6D4 8002DED4 21104300 */  addu       $v0, $v0, $v1
    /* 1E6D8 8002DED8 80100200 */  sll        $v0, $v0, 2
    /* 1E6DC 8002DEDC 21104300 */  addu       $v0, $v0, $v1
    /* 1E6E0 8002DEE0 80100200 */  sll        $v0, $v0, 2
    /* 1E6E4 8002DEE4 02000334 */  ori        $v1, $zero, 0x2
    /* 1E6E8 8002DEE8 0980013C */  lui        $at, %hi(gVoiceStateTable + 0x3)
    /* 1E6EC 8002DEEC A3D92124 */  addiu      $at, $at, %lo(gVoiceStateTable + 0x3)
    /* 1E6F0 8002DEF0 21082200 */  addu       $at, $at, $v0
    /* 1E6F4 8002DEF4 000023A0 */  sb         $v1, 0x0($at)
    /* 1E6F8 8002DEF8 0980033C */  lui        $v1, %hi(D_8008E228)
    /* 1E6FC 8002DEFC 28E26394 */  lhu        $v1, %lo(D_8008E228)($v1)
    /* 1E700 8002DF00 0980043C */  lui        $a0, %hi(D_8008E22C)
    /* 1E704 8002DF04 2CE28494 */  lhu        $a0, %lo(D_8008E22C)($a0)
    /* 1E708 8002DF08 0980013C */  lui        $at, %hi(D_8008D98A)
    /* 1E70C 8002DF0C 8AD92124 */  addiu      $at, $at, %lo(D_8008D98A)
    /* 1E710 8002DF10 21082200 */  addu       $at, $at, $v0
    /* 1E714 8002DF14 000020A4 */  sh         $zero, 0x0($at)
    /* 1E718 8002DF18 0980023C */  lui        $v0, %hi(D_80090C60)
    /* 1E71C 8002DF1C 600C4294 */  lhu        $v0, %lo(D_80090C60)($v0)
    /* 1E720 8002DF20 25180301 */  or         $v1, $t0, $v1
    /* 1E724 8002DF24 2520C400 */  or         $a0, $a2, $a0
    /* 1E728 8002DF28 0980013C */  lui        $at, %hi(D_8008E228)
    /* 1E72C 8002DF2C 28E223A4 */  sh         $v1, %lo(D_8008E228)($at)
    /* 1E730 8002DF30 27180300 */  nor        $v1, $zero, $v1
    /* 1E734 8002DF34 24104300 */  and        $v0, $v0, $v1
    /* 1E738 8002DF38 0980013C */  lui        $at, %hi(D_8008E22C)
    /* 1E73C 8002DF3C 2CE224A4 */  sh         $a0, %lo(D_8008E22C)($at)
    /* 1E740 8002DF40 27200400 */  nor        $a0, $zero, $a0
    /* 1E744 8002DF44 0980013C */  lui        $at, %hi(D_80090C60)
    /* 1E748 8002DF48 600C22A4 */  sh         $v0, %lo(D_80090C60)($at)
    /* 1E74C 8002DF4C 0980023C */  lui        $v0, %hi(D_80090C64)
    /* 1E750 8002DF50 640C4294 */  lhu        $v0, %lo(D_80090C64)($v0)
    /* 1E754 8002DF54 0780033C */  lui        $v1, %hi(D_8006DAD4)
    /* 1E758 8002DF58 D4DA638C */  lw         $v1, %lo(D_8006DAD4)($v1)
    /* 1E75C 8002DF5C 24104400 */  and        $v0, $v0, $a0
    /* 1E760 8002DF60 0980013C */  lui        $at, %hi(D_80090C64)
    /* 1E764 8002DF64 640C22A4 */  sh         $v0, %lo(D_80090C64)($at)
    /* 1E768 8002DF68 940168A4 */  sh         $t0, 0x194($v1)
    /* 1E76C 8002DF6C 960166A4 */  sh         $a2, 0x196($v1)
    /* 1E770 8002DF70 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 1E774 8002DF74 0800E003 */  jr         $ra
    /* 1E778 8002DF78 00000000 */   nop
endlabel SndStartVoice
