.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching TextPanel__RunFontOp, 0x98

glabel TextPanel__RunFontOp
    /* 3FC0C 8004F40C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3FC10 8004F410 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3FC14 8004F414 21808000 */  addu       $s0, $a0, $zero
    /* 3FC18 8004F418 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3FC1C 8004F41C 2198A000 */  addu       $s3, $a1, $zero
    /* 3FC20 8004F420 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3FC24 8004F424 21A0C000 */  addu       $s4, $a2, $zero
    /* 3FC28 8004F428 2400BFAF */  sw         $ra, 0x24($sp)
    /* 3FC2C 8004F42C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3FC30 8004F430 03008012 */  beqz       $s4, .Lfunc_8004F40C_8004F440
    /* 3FC34 8004F434 1400B1AF */   sw        $s1, 0x14($sp)
    /* 3FC38 8004F438 3893000C */  jal        EnterCriticalSection
    /* 3FC3C 8004F43C 00000000 */   nop
  .Lfunc_8004F40C_8004F440:
    /* 3FC40 8004F440 21880000 */  addu       $s1, $zero, $zero
  .Lfunc_8004F40C_8004F444:
    /* 3FC44 8004F444 1400048E */  lw         $a0, 0x14($s0)
    /* 3FC48 8004F448 09F86002 */  jalr       $s3
    /* 3FC4C 8004F44C 00000000 */   nop
    /* 3FC50 8004F450 21904000 */  addu       $s2, $v0, $zero
    /* 3FC54 8004F454 05004012 */  beqz       $s2, .Lfunc_8004F40C_8004F46C
    /* 3FC58 8004F458 00000000 */   nop
    /* 3FC5C 8004F45C 01003126 */  addiu      $s1, $s1, 0x1
    /* 3FC60 8004F460 0400222A */  slti       $v0, $s1, 0x4
    /* 3FC64 8004F464 F7FF4014 */  bnez       $v0, .Lfunc_8004F40C_8004F444
    /* 3FC68 8004F468 04001026 */   addiu     $s0, $s0, 0x4
  .Lfunc_8004F40C_8004F46C:
    /* 3FC6C 8004F46C 04008012 */  beqz       $s4, .Lfunc_8004F40C_8004F480
    /* 3FC70 8004F470 21104002 */   addu      $v0, $s2, $zero
    /* 3FC74 8004F474 3C93000C */  jal        ExitCriticalSection
    /* 3FC78 8004F478 00000000 */   nop
    /* 3FC7C 8004F47C 21104002 */  addu       $v0, $s2, $zero
  .Lfunc_8004F40C_8004F480:
    /* 3FC80 8004F480 2400BF8F */  lw         $ra, 0x24($sp)
    /* 3FC84 8004F484 2000B48F */  lw         $s4, 0x20($sp)
    /* 3FC88 8004F488 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3FC8C 8004F48C 1800B28F */  lw         $s2, 0x18($sp)
    /* 3FC90 8004F490 1400B18F */  lw         $s1, 0x14($sp)
    /* 3FC94 8004F494 1000B08F */  lw         $s0, 0x10($sp)
    /* 3FC98 8004F498 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3FC9C 8004F49C 0800E003 */  jr         $ra
    /* 3FCA0 8004F4A0 00000000 */   nop
endlabel TextPanel__RunFontOp
