.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching BMemPMgrInit, 0x7C

glabel BMemPMgrInit
    /* 8220 80017A20 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8224 80017A24 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8228 80017A28 21888000 */  addu       $s1, $a0, $zero
    /* 822C 80017A2C 0004222E */  sltiu      $v0, $s1, 0x400
    /* 8230 80017A30 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8234 80017A34 02004010 */  beqz       $v0, .LBMemPMgrInit_80017A40
    /* 8238 80017A38 1000B0AF */   sw        $s0, 0x10($sp)
    /* 823C 80017A3C 00041134 */  ori        $s1, $zero, 0x400
  .LBMemPMgrInit_80017A40:
    /* 8240 80017A40 4D47000C */  jal        func_80011D34
    /* 8244 80017A44 20002426 */   addiu     $a0, $s1, 0x20
    /* 8248 80017A48 21804000 */  addu       $s0, $v0, $zero
    /* 824C 80017A4C 07000012 */  beqz       $s0, .LBMemPMgrInit_80017A6C
    /* 8250 80017A50 21200002 */   addu      $a0, $s0, $zero
    /* 8254 80017A54 1C000226 */  addiu      $v0, $s0, 0x1C
    /* 8258 80017A58 000002AE */  sw         $v0, 0x0($s0)
    /* 825C 80017A5C B25E000C */  jal        func_80017AC8
    /* 8260 80017A60 040011AE */   sw        $s1, 0x4($s0)
    /* 8264 80017A64 A15E0008 */  j          .LBMemPMgrInit_80017A84
    /* 8268 80017A68 21100002 */   addu      $v0, $s0, $zero
  .LBMemPMgrInit_80017A6C:
    /* 826C 80017A6C 0180043C */  lui        $a0, %hi(D_8001028C)
    /* 8270 80017A70 8C028424 */  addiu      $a0, $a0, %lo(D_8001028C)
    /* 8274 80017A74 21280000 */  addu       $a1, $zero, $zero
    /* 8278 80017A78 084B000C */  jal        DebugPrintf
    /* 827C 80017A7C 21302002 */   addu      $a2, $s1, $zero
    /* 8280 80017A80 21100002 */  addu       $v0, $s0, $zero
  .LBMemPMgrInit_80017A84:
    /* 8284 80017A84 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8288 80017A88 1400B18F */  lw         $s1, 0x14($sp)
    /* 828C 80017A8C 1000B08F */  lw         $s0, 0x10($sp)
    /* 8290 80017A90 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8294 80017A94 0800E003 */  jr         $ra
    /* 8298 80017A98 00000000 */   nop
endlabel BMemPMgrInit
