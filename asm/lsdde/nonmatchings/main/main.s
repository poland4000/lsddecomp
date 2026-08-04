.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching GameMain, 0xB8

glabel GameMain
    /* 20DC 800118DC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 20E0 800118E0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 20E4 800118E4 6546000C */  jal        EarlyInit
    /* 20E8 800118E8 1000B0AF */   sw        $s0, 0x10($sp)
    /* 20EC 800118EC DA49000C */  jal        func_80012768
    /* 20F0 800118F0 02000434 */   ori       $a0, $zero, 0x2
    /* 20F4 800118F4 1600043C */  lui        $a0, (0x166C00 >> 16)
    /* 20F8 800118F8 006C8434 */  ori        $a0, $a0, (0x166C00 & 0xFFFF)
    /* 20FC 800118FC 885E000C */  jal        BMemPMgrInit
    /* 2100 80011900 21280000 */   addu      $a1, $zero, $zero
    /* 2104 80011904 21204000 */  addu       $a0, $v0, $zero
    /* 2108 80011908 000084AF */  sw         $a0, %gp_rel(gpBMemHeap)($gp)
    /* 210C 8001190C A75E000C */  jal        BMemSetPoolSelect
    /* 2110 80011910 00000000 */   nop
    /* 2114 80011914 0680043C */  lui        $a0, %hi(gSceneMgrConfig)
    /* 2118 80011918 28688424 */  addiu      $a0, $a0, %lo(gSceneMgrConfig)
    /* 211C 8001191C DF97000C */  jal New_SceneMgr
    /* 2120 80011920 00000000 */   nop
    /* 2124 80011924 180482AF */  sw         $v0, %gp_rel(gpSceneMgr)($gp)
    /* 2128 80011928 B881000C */  jal        func_800206E0
    /* 212C 8001192C 00000000 */   nop
    /* 2130 80011930 21200000 */  addu       $a0, $zero, $zero
    /* 2134 80011934 21280000 */  addu       $a1, $zero, $zero
    /* 2138 80011938 CD96000C */  jal        New_Pad
    /* 213C 8001193C 21804000 */   addu      $s0, $v0, $zero
    /* 2140 80011940 1804848F */  lw         $a0, %gp_rel(gpSceneMgr)($gp)
    /* 2144 80011944 00000000 */  nop
    /* 2148 80011948 0000838C */  lw         $v1, 0x0($a0)
    /* 214C 8001194C 21280002 */  addu       $a1, $s0, $zero
    /* 2150 80011950 4400638C */  lw         $v1, 0x44($v1)
    /* 2154 80011954 00000000 */  nop
    /* 2158 80011958 09F86000 */  jalr       $v1
    /* 215C 8001195C 21304000 */   addu      $a2, $v0, $zero
    /* 2160 80011960 1804848F */  lw         $a0, %gp_rel(gpSceneMgr)($gp)
    /* 2164 80011964 00000000 */  nop
    /* 2168 80011968 0000828C */  lw         $v0, 0x0($a0)
    /* 216C 8001196C 00000000 */  nop
    /* 2170 80011970 4C00428C */  lw         $v0, 0x4C($v0)
    /* 2174 80011974 00000000 */  nop
    /* 2178 80011978 09F84000 */  jalr       $v0
    /* 217C 8001197C 00000000 */   nop
    /* 2180 80011980 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2184 80011984 1000B08F */  lw         $s0, 0x10($sp)
    /* 2188 80011988 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 218C 8001198C 0800E003 */  jr         $ra
    /* 2190 80011990 00000000 */   nop
endlabel main
