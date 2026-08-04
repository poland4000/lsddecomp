.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdStreamCallback, 0xC4

glabel CdStreamCallback
    /* 188EC 800280EC 8400828F */  lw         $v0, %gp_rel(gCdStreamLock)($gp)
    /* 188F0 800280F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 188F4 800280F4 29004014 */  bnez       $v0, .Lfunc_800280EC_8002819C
    /* 188F8 800280F8 1000BFAF */   sw        $ra, 0x10($sp)
    /* 188FC 800280FC 1661000C */  jal        BMemGetLock
    /* 18900 80028100 00000000 */   nop
    /* 18904 80028104 26004014 */  bnez       $v0, .Lfunc_800280EC_800281A0
    /* 18908 80028108 21100000 */   addu      $v0, $zero, $zero
    /* 1890C 8002810C 9C00828F */  lw         $v0, %gp_rel(gCdCallbackEnabled)($gp)
    /* 18910 80028110 00000000 */  nop
    /* 18914 80028114 03004010 */  beqz       $v0, .Lfunc_800280EC_80028124
    /* 18918 80028118 00000000 */   nop
    /* 1891C 8002811C 6893000C */  jal        SetVsyncCallback
    /* 18920 80028120 21200000 */   addu      $a0, $zero, $zero
  .Lfunc_800280EC_80028124:
    /* 18924 80028124 9000838F */  lw         $v1, %gp_rel(gCdStreamMode)($gp)
    /* 18928 80028128 01000234 */  ori        $v0, $zero, 0x1
    /* 1892C 8002812C 05006214 */  bne        $v1, $v0, .Lfunc_800280EC_80028144
    /* 18930 80028130 02000234 */   ori       $v0, $zero, 0x2
    /* 18934 80028134 63A1000C */  jal        CdStreamTaskMode1
    /* 18938 80028138 00000000 */   nop
    /* 1893C 8002813C 55A00008 */  j          .Lfunc_800280EC_80028154
    /* 18940 80028140 00000000 */   nop
  .Lfunc_800280EC_80028144:
    /* 18944 80028144 03006214 */  bne        $v1, $v0, .Lfunc_800280EC_80028154
    /* 18948 80028148 00000000 */   nop
    /* 1894C 8002814C B9A1000C */  jal        CdStreamTaskMode2
    /* 18950 80028150 00000000 */   nop
  .Lfunc_800280EC_80028154:
    /* 18954 80028154 8800828F */  lw         $v0, %gp_rel(gCdStreamingEnabled)($gp)
    /* 18958 80028158 00000000 */  nop
    /* 1895C 8002815C 07004010 */  beqz       $v0, .Lfunc_800280EC_8002817C
    /* 18960 80028160 00000000 */   nop
    /* 18964 80028164 9A9F000C */  jal        Get_vtable_CdFile
    /* 18968 80028168 00000000 */   nop
    /* 1896C 8002816C 6800428C */  lw         $v0, 0x68($v0)
    /* 18970 80028170 00000000 */  nop
    /* 18974 80028174 09F84000 */  jalr       $v0
    /* 18978 80028178 00000000 */   nop
  .Lfunc_800280EC_8002817C:
    /* 1897C 8002817C 9C00828F */  lw         $v0, %gp_rel(gCdCallbackEnabled)($gp)
    /* 18980 80028180 00000000 */  nop
    /* 18984 80028184 06004010 */  beqz       $v0, .Lfunc_800280EC_800281A0
    /* 18988 80028188 21100000 */   addu      $v0, $zero, $zero
    /* 1898C 8002818C 0380043C */  lui        $a0, %hi(CdStreamCallback)
    /* 18990 80028190 EC808424 */  addiu      $a0, $a0, %lo(CdStreamCallback)
    /* 18994 80028194 6893000C */  jal        SetVsyncCallback
    /* 18998 80028198 00000000 */   nop
  .Lfunc_800280EC_8002819C:
    /* 1899C 8002819C 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_800280EC_800281A0:
    /* 189A0 800281A0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 189A4 800281A4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 189A8 800281A8 0800E003 */  jr         $ra
    /* 189AC 800281AC 00000000 */   nop
endlabel CdStreamCallback
