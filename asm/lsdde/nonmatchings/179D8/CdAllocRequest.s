.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdAllocRequest, 0x98

glabel CdAllocRequest
    /* 18B2C 8002832C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 18B30 80028330 1400BFAF */  sw         $ra, 0x14($sp)
    /* 18B34 80028334 34A0000C */  jal        CdStreamLock
    /* 18B38 80028338 1000B0AF */   sw        $s0, 0x10($sp)
    /* 18B3C 8002833C CD5E000C */  jal        BMemAlloc
    /* 18B40 80028340 24000434 */   ori       $a0, $zero, 0x24
    /* 18B44 80028344 21804000 */  addu       $s0, $v0, $zero
    /* 18B48 80028348 16000012 */  beqz       $s0, .Lfunc_8002832C_800283A4
    /* 18B4C 8002834C 00000000 */   nop
    /* 18B50 80028350 8C00828F */  lw         $v0, %gp_rel(gpCdRequestQueue)($gp)
    /* 18B54 80028354 1C0000AE */  sw         $zero, 0x1C($s0)
    /* 18B58 80028358 200000AE */  sw         $zero, 0x20($s0)
    /* 18B5C 8002835C 000000AE */  sw         $zero, 0x0($s0)
    /* 18B60 80028360 0F004010 */  beqz       $v0, .Lfunc_8002832C_800283A0
    /* 18B64 80028364 040000AE */   sw        $zero, 0x4($s0)
    /* 18B68 80028368 21184000 */  addu       $v1, $v0, $zero
    /* 18B6C 8002836C 2000628C */  lw         $v0, 0x20($v1)
    /* 18B70 80028370 00000000 */  nop
    /* 18B74 80028374 07004010 */  beqz       $v0, .Lfunc_8002832C_80028394
    /* 18B78 80028378 00000000 */   nop
  .Lfunc_8002832C_8002837C:
    /* 18B7C 8002837C 2000638C */  lw         $v1, 0x20($v1)
    /* 18B80 80028380 00000000 */  nop
    /* 18B84 80028384 2000628C */  lw         $v0, 0x20($v1)
    /* 18B88 80028388 00000000 */  nop
    /* 18B8C 8002838C FBFF4014 */  bnez       $v0, .Lfunc_8002832C_8002837C
    /* 18B90 80028390 00000000 */   nop
  .Lfunc_8002832C_80028394:
    /* 18B94 80028394 200070AC */  sw         $s0, 0x20($v1)
    /* 18B98 80028398 E9A00008 */  j          .Lfunc_8002832C_800283A4
    /* 18B9C 8002839C 1C0003AE */   sw        $v1, 0x1C($s0)
  .Lfunc_8002832C_800283A0:
    /* 18BA0 800283A0 8C0090AF */  sw         $s0, %gp_rel(gpCdRequestQueue)($gp)
  .Lfunc_8002832C_800283A4:
    /* 18BA4 800283A4 38A0000C */  jal        CdStreamUnlock
    /* 18BA8 800283A8 00000000 */   nop
    /* 18BAC 800283AC 21100002 */  addu       $v0, $s0, $zero
    /* 18BB0 800283B0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 18BB4 800283B4 1000B08F */  lw         $s0, 0x10($sp)
    /* 18BB8 800283B8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 18BBC 800283BC 0800E003 */  jr         $ra
    /* 18BC0 800283C0 00000000 */   nop
endlabel CdAllocRequest
