.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SceneObj__ResetStatic, 0xC0

glabel SceneObj__ResetStatic
    /* 3A870 8004A070 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3A874 8004A074 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3A878 8004A078 21808000 */  addu       $s0, $a0, $zero
    /* 3A87C 8004A07C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 3A880 8004A080 2000BFAF */  sw         $ra, 0x20($sp)
    /* 3A884 8004A084 5223010C */  jal        Dreamer__Release
    /* 3A888 8004A088 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 3A88C 8004A08C 21884000 */  addu       $s1, $v0, $zero
    /* 3A890 8004A090 7001848F */  lw         $a0, %gp_rel(D_8008A978)($gp)
    /* 3A894 8004A094 01000234 */  ori        $v0, $zero, 0x1
    /* 3A898 8004A098 01008324 */  addiu      $v1, $a0, 0x1
    /* 3A89C 8004A09C 700183AF */  sw         $v1, %gp_rel(D_8008A978)($gp)
    /* 3A8A0 8004A0A0 05006210 */  beq        $v1, $v0, .Lfunc_8004A070_8004A0B8
    /* 3A8A4 8004A0A4 02000234 */   ori       $v0, $zero, 0x2
    /* 3A8A8 8004A0A8 11006210 */  beq        $v1, $v0, .Lfunc_8004A070_8004A0F0
    /* 3A8AC 8004A0AC 00000000 */   nop
    /* 3A8B0 8004A0B0 41280108 */  j          .Lfunc_8004A070_8004A104
    /* 3A8B4 8004A0B4 1000A0AF */   sw        $zero, 0x10($sp)
  .Lfunc_8004A070_8004A0B8:
    /* 3A8B8 8004A0B8 04000012 */  beqz       $s0, .Lfunc_8004A070_8004A0CC
    /* 3A8BC 8004A0BC 02008224 */   addiu     $v0, $a0, 0x2
    /* 3A8C0 8004A0C0 700182AF */  sw         $v0, %gp_rel(D_8008A978)($gp)
    /* 3A8C4 8004A0C4 41280108 */  j          .Lfunc_8004A070_8004A104
    /* 3A8C8 8004A0C8 00000000 */   nop
  .Lfunc_8004A070_8004A0CC:
    /* 3A8CC 8004A0CC 1000A28F */  lw         $v0, 0x10($sp)
    /* 3A8D0 8004A0D0 00000000 */  nop
    /* 3A8D4 8004A0D4 C21F0200 */  srl        $v1, $v0, 31
    /* 3A8D8 8004A0D8 21104300 */  addu       $v0, $v0, $v1
    /* 3A8DC 8004A0DC 43100200 */  sra        $v0, $v0, 1
    /* 3A8E0 8004A0E0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3A8E4 8004A0E4 740182AF */  sw         $v0, %gp_rel(D_8008A97C)($gp)
    /* 3A8E8 8004A0E8 41280108 */  j          .Lfunc_8004A070_8004A104
    /* 3A8EC 8004A0EC 00000000 */   nop
  .Lfunc_8004A070_8004A0F0:
    /* 3A8F0 8004A0F0 1000A28F */  lw         $v0, 0x10($sp)
    /* 3A8F4 8004A0F4 7401838F */  lw         $v1, %gp_rel(D_8008A97C)($gp)
    /* 3A8F8 8004A0F8 00000000 */  nop
    /* 3A8FC 8004A0FC 23104300 */  subu       $v0, $v0, $v1
    /* 3A900 8004A100 1000A2AF */  sw         $v0, 0x10($sp)
  .Lfunc_8004A070_8004A104:
    /* 3A904 8004A104 1000A58F */  lw         $a1, 0x10($sp)
    /* 3A908 8004A108 099C000C */  jal        func_80027024
    /* 3A90C 8004A10C 21202002 */   addu      $a0, $s1, $zero
    /* 3A910 8004A110 FCFF4010 */  beqz       $v0, .Lfunc_8004A070_8004A104
    /* 3A914 8004A114 00000000 */   nop
    /* 3A918 8004A118 2000BF8F */  lw         $ra, 0x20($sp)
    /* 3A91C 8004A11C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3A920 8004A120 1800B08F */  lw         $s0, 0x18($sp)
    /* 3A924 8004A124 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3A928 8004A128 0800E003 */  jr         $ra
    /* 3A92C 8004A12C 00000000 */   nop
endlabel SceneObj__ResetStatic
