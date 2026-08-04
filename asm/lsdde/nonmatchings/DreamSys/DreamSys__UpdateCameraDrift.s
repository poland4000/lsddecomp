.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamSys__UpdateCameraDrift, 0xD4

glabel DreamSys__UpdateCameraDrift
    /* 4A014 80059814 8800838C */  lw         $v1, 0x88($a0)
    /* 4A018 80059818 00000000 */  nop
    /* 4A01C 8005981C 1F006010 */  beqz       $v1, .Lfunc_80059814_8005989C
    /* 4A020 80059820 80180300 */   sll       $v1, $v1, 2
    /* 4A024 80059824 0880013C */  lui        $at, %hi(gCameraDriftRates)
    /* 4A028 80059828 507E2124 */  addiu      $at, $at, %lo(gCameraDriftRates)
    /* 4A02C 8005982C 21082300 */  addu       $at, $at, $v1
    /* 4A030 80059830 0000268C */  lw         $a2, 0x0($at)
    /* 4A034 80059834 8C00828C */  lw         $v0, 0x8C($a0)
    /* 4A038 80059838 0880013C */  lui        $at, %hi(gCameraDriftLimits)
    /* 4A03C 8005983C 5C7E2124 */  addiu      $at, $at, %lo(gCameraDriftLimits)
    /* 4A040 80059840 21082300 */  addu       $at, $at, $v1
    /* 4A044 80059844 0000238C */  lw         $v1, 0x0($at)
    /* 4A048 80059848 2128C200 */  addu       $a1, $a2, $v0
    /* 4A04C 8005984C 0500A004 */  bltz       $a1, .Lfunc_80059814_80059864
    /* 4A050 80059850 2A10A300 */   slt       $v0, $a1, $v1
    /* 4A054 80059854 08004014 */  bnez       $v0, .Lfunc_80059814_80059878
    /* 4A058 80059858 00000000 */   nop
    /* 4A05C 8005985C 38660108 */  j          .Lfunc_80059814_800598E0
    /* 4A060 80059860 880080AC */   sw        $zero, 0x88($a0)
  .Lfunc_80059814_80059864:
    /* 4A064 80059864 27100500 */  nor        $v0, $zero, $a1
    /* 4A068 80059868 01004224 */  addiu      $v0, $v0, 0x1
    /* 4A06C 8005986C 2A104300 */  slt        $v0, $v0, $v1
    /* 4A070 80059870 08004010 */  beqz       $v0, .Lfunc_80059814_80059894
    /* 4A074 80059874 00000000 */   nop
  .Lfunc_80059814_80059878:
    /* 4A078 80059878 5C00838C */  lw         $v1, 0x5C($a0)
    /* 4A07C 8005987C 00000000 */  nop
    /* 4A080 80059880 2400628C */  lw         $v0, 0x24($v1)
    /* 4A084 80059884 00000000 */  nop
    /* 4A088 80059888 2110C200 */  addu       $v0, $a2, $v0
    /* 4A08C 8005988C 240062AC */  sw         $v0, 0x24($v1)
    /* 4A090 80059890 8C0085AC */  sw         $a1, 0x8C($a0)
  .Lfunc_80059814_80059894:
    /* 4A094 80059894 38660108 */  j          .Lfunc_80059814_800598E0
    /* 4A098 80059898 880080AC */   sw        $zero, 0x88($a0)
  .Lfunc_80059814_8005989C:
    /* 4A09C 8005989C 8C00828C */  lw         $v0, 0x8C($a0)
    /* 4A0A0 800598A0 00000000 */  nop
    /* 4A0A4 800598A4 0E004010 */  beqz       $v0, .Lfunc_80059814_800598E0
    /* 4A0A8 800598A8 00000000 */   nop
    /* 4A0AC 800598AC 02004104 */  bgez       $v0, .Lfunc_80059814_800598B8
    /* 4A0B0 800598B0 A8FD0624 */   addiu     $a2, $zero, -0x258
    /* 4A0B4 800598B4 58020634 */  ori        $a2, $zero, 0x258
  .Lfunc_80059814_800598B8:
    /* 4A0B8 800598B8 5C00828C */  lw         $v0, 0x5C($a0)
    /* 4A0BC 800598BC 00000000 */  nop
    /* 4A0C0 800598C0 2400438C */  lw         $v1, 0x24($v0)
    /* 4A0C4 800598C4 00000000 */  nop
    /* 4A0C8 800598C8 2118C300 */  addu       $v1, $a2, $v1
    /* 4A0CC 800598CC 240043AC */  sw         $v1, 0x24($v0)
    /* 4A0D0 800598D0 8C00828C */  lw         $v0, 0x8C($a0)
    /* 4A0D4 800598D4 00000000 */  nop
    /* 4A0D8 800598D8 2110C200 */  addu       $v0, $a2, $v0
    /* 4A0DC 800598DC 8C0082AC */  sw         $v0, 0x8C($a0)
  .Lfunc_80059814_800598E0:
    /* 4A0E0 800598E0 0800E003 */  jr         $ra
    /* 4A0E4 800598E4 00000000 */   nop
endlabel DreamSys__UpdateCameraDrift
