.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80027024, 0x88

glabel func_80027024
    /* 17824 80027024 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 17828 80027028 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1782C 8002702C 21888000 */  addu       $s1, $a0, $zero
    /* 17830 80027030 1800B2AF */  sw         $s2, 0x18($sp)
    /* 17834 80027034 2190A000 */  addu       $s2, $a1, $zero
    /* 17838 80027038 4400838F */  lw         $v1, %gp_rel(gCdDriverMode)($gp)
    /* 1783C 8002703C 13000234 */  ori        $v0, $zero, 0x13
    /* 17840 80027040 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 17844 80027044 03006210 */  beq        $v1, $v0, .Lfunc_80027024_80027054
    /* 17848 80027048 1000B0AF */   sw        $s0, 0x10($sp)
    /* 1784C 8002704C 249C0008 */  j          .Lfunc_80027024_80027090
    /* 17850 80027050 01000234 */   ori       $v0, $zero, 0x1
  .Lfunc_80027024_80027054:
    /* 17854 80027054 01000234 */  ori        $v0, $zero, 0x1
    /* 17858 80027058 480082AF */  sw         $v0, %gp_rel(D_8008A850)($gp)
    /* 1785C 8002705C F69F000C */  jal        SetCdFileTable
    /* 17860 80027060 21202002 */   addu      $a0, $s1, $zero
    /* 17864 80027064 FC9F000C */  jal        GetCdFileTableCount
    /* 17868 80027068 00000000 */   nop
    /* 1786C 8002706C 21804000 */  addu       $s0, $v0, $zero
    /* 17870 80027070 F99F000C */  jal        SetCdFileTableCount
    /* 17874 80027074 21201202 */   addu      $a0, $s0, $s2
    /* 17878 80027078 C0201000 */  sll        $a0, $s0, 3
    /* 1787C 8002707C 23209000 */  subu       $a0, $a0, $s0
    /* 17880 80027080 80200400 */  sll        $a0, $a0, 2
    /* 17884 80027084 21202402 */  addu       $a0, $s1, $a0
    /* 17888 80027088 FF9F000C */  jal        BuildCdFileTable
    /* 1788C 8002708C 21284002 */   addu      $a1, $s2, $zero
  .Lfunc_80027024_80027090:
    /* 17890 80027090 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 17894 80027094 1800B28F */  lw         $s2, 0x18($sp)
    /* 17898 80027098 1400B18F */  lw         $s1, 0x14($sp)
    /* 1789C 8002709C 1000B08F */  lw         $s0, 0x10($sp)
    /* 178A0 800270A0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 178A4 800270A4 0800E003 */  jr         $ra
    /* 178A8 800270A8 00000000 */   nop
endlabel func_80027024
