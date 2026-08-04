.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdFreeRequest, 0x84

glabel CdFreeRequest
    /* 18BC4 800283C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 18BC8 800283C8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 18BCC 800283CC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 18BD0 800283D0 34A0000C */  jal        CdStreamLock
    /* 18BD4 800283D4 21808000 */   addu      $s0, $a0, $zero
    /* 18BD8 800283D8 14000012 */  beqz       $s0, .Lfunc_800283C4_8002842C
    /* 18BDC 800283DC 00000000 */   nop
    /* 18BE0 800283E0 1C00038E */  lw         $v1, 0x1C($s0)
    /* 18BE4 800283E4 00000000 */  nop
    /* 18BE8 800283E8 04006010 */  beqz       $v1, .Lfunc_800283C4_800283FC
    /* 18BEC 800283EC 00000000 */   nop
    /* 18BF0 800283F0 2000028E */  lw         $v0, 0x20($s0)
    /* 18BF4 800283F4 02A10008 */  j          .Lfunc_800283C4_80028408
    /* 18BF8 800283F8 200062AC */   sw        $v0, 0x20($v1)
  .Lfunc_800283C4_800283FC:
    /* 18BFC 800283FC 2000028E */  lw         $v0, 0x20($s0)
    /* 18C00 80028400 00000000 */  nop
    /* 18C04 80028404 8C0082AF */  sw         $v0, %gp_rel(gpCdRequestQueue)($gp)
  .Lfunc_800283C4_80028408:
    /* 18C08 80028408 2000038E */  lw         $v1, 0x20($s0)
    /* 18C0C 8002840C 00000000 */  nop
    /* 18C10 80028410 04006010 */  beqz       $v1, .Lfunc_800283C4_80028424
    /* 18C14 80028414 00000000 */   nop
    /* 18C18 80028418 1C00028E */  lw         $v0, 0x1C($s0)
    /* 18C1C 8002841C 00000000 */  nop
    /* 18C20 80028420 1C0062AC */  sw         $v0, 0x1C($v1)
  .Lfunc_800283C4_80028424:
    /* 18C24 80028424 3F5F000C */  jal        BMemFree
    /* 18C28 80028428 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_800283C4_8002842C:
    /* 18C2C 8002842C 38A0000C */  jal        CdStreamUnlock
    /* 18C30 80028430 00000000 */   nop
    /* 18C34 80028434 1400BF8F */  lw         $ra, 0x14($sp)
    /* 18C38 80028438 1000B08F */  lw         $s0, 0x10($sp)
    /* 18C3C 8002843C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 18C40 80028440 0800E003 */  jr         $ra
    /* 18C44 80028444 00000000 */   nop
endlabel CdFreeRequest
