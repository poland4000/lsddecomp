.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TitleScreen__Method130, 0xE0

glabel TitleScreen__Method130
    /* 3E8E4 8004E0E4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 3E8E8 8004E0E8 2800B0AF */  sw         $s0, 0x28($sp)
    /* 3E8EC 8004E0EC 21808000 */  addu       $s0, $a0, $zero
    /* 3E8F0 8004E0F0 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 3E8F4 8004E0F4 A400048E */  lw         $a0, 0xA4($s0)
    /* 3E8F8 8004E0F8 6000028E */  lw         $v0, 0x60($s0)
    /* 3E8FC 8004E0FC 0000838C */  lw         $v1, 0x0($a0)
    /* 3E900 8004E100 1400428C */  lw         $v0, 0x14($v0)
    /* 3E904 8004E104 9C01638C */  lw         $v1, 0x19C($v1)
    /* 3E908 8004E108 2000A527 */  addiu      $a1, $sp, 0x20
    /* 3E90C 8004E10C 09F86000 */  jalr       $v1
    /* 3E910 8004E110 2000A2AF */   sw        $v0, 0x20($sp)
    /* 3E914 8004E114 0000028E */  lw         $v0, 0x0($s0)
    /* 3E918 8004E118 00000000 */  nop
    /* 3E91C 8004E11C 2801428C */  lw         $v0, 0x128($v0)
    /* 3E920 8004E120 00000000 */  nop
    /* 3E924 8004E124 09F84000 */  jalr       $v0
    /* 3E928 8004E128 21200002 */   addu      $a0, $s0, $zero
    /* 3E92C 8004E12C A400048E */  lw         $a0, 0xA4($s0)
    /* 3E930 8004E130 00000000 */  nop
    /* 3E934 8004E134 0000828C */  lw         $v0, 0x0($a0)
    /* 3E938 8004E138 00000000 */  nop
    /* 3E93C 8004E13C AC01428C */  lw         $v0, 0x1AC($v0)
    /* 3E940 8004E140 00000000 */  nop
    /* 3E944 8004E144 09F84000 */  jalr       $v0
    /* 3E948 8004E148 00000000 */   nop
    /* 3E94C 8004E14C 04004010 */  beqz       $v0, .Lfunc_8004E0E4_8004E160
    /* 3E950 8004E150 00000000 */   nop
    /* 3E954 8004E154 0802828F */  lw         $v0, %gp_rel(D_8008AA10)($gp)
    /* 3E958 8004E158 00000000 */  nop
    /* 3E95C 8004E15C 000040A0 */  sb         $zero, 0x0($v0)
  .Lfunc_8004E0E4_8004E160:
    /* 3E960 8004E160 AC00028E */  lw         $v0, 0xAC($s0)
    /* 3E964 8004E164 0802858F */  lw         $a1, %gp_rel(D_8008AA10)($gp)
    /* 3E968 8004E168 1002868F */  lw         $a2, %gp_rel(D_8008AA18)($gp)
    /* 3E96C 8004E16C 0000438C */  lw         $v1, 0x0($v0)
    /* 3E970 8004E170 03000234 */  ori        $v0, $zero, 0x3
    /* 3E974 8004E174 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3E978 8004E178 A800028E */  lw         $v0, 0xA8($s0)
    /* 3E97C 8004E17C 00000000 */  nop
    /* 3E980 8004E180 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3E984 8004E184 BC00028E */  lw         $v0, 0xBC($s0)
    /* 3E988 8004E188 00000000 */  nop
    /* 3E98C 8004E18C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3E990 8004E190 C000028E */  lw         $v0, 0xC0($s0)
    /* 3E994 8004E194 00000000 */  nop
    /* 3E998 8004E198 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 3E99C 8004E19C AC00048E */  lw         $a0, 0xAC($s0)
    /* 3E9A0 8004E1A0 7800628C */  lw         $v0, 0x78($v1)
    /* 3E9A4 8004E1A4 00000000 */  nop
    /* 3E9A8 8004E1A8 09F84000 */  jalr       $v0
    /* 3E9AC 8004E1AC 0D000734 */   ori       $a3, $zero, 0xD
    /* 3E9B0 8004E1B0 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 3E9B4 8004E1B4 2800B08F */  lw         $s0, 0x28($sp)
    /* 3E9B8 8004E1B8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 3E9BC 8004E1BC 0800E003 */  jr         $ra
    /* 3E9C0 8004E1C0 00000000 */   nop
endlabel TitleScreen__Method130
