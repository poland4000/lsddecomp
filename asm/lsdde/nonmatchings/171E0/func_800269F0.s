.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800269F0, 0x60

glabel func_800269F0
    /* 171F0 800269F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 171F4 800269F4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 171F8 800269F8 21808000 */  addu       $s0, $a0, $zero
    /* 171FC 800269FC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 17200 80026A00 0000028E */  lw         $v0, 0x0($s0)
    /* 17204 80026A04 200000A6 */  sh         $zero, 0x20($s0)
    /* 17208 80026A08 0C00428C */  lw         $v0, 0xC($v0)
    /* 1720C 80026A0C 00000000 */  nop
    /* 17210 80026A10 09F84000 */  jalr       $v0
    /* 17214 80026A14 00000000 */   nop
    /* 17218 80026A18 E460000C */  jal        Get_vtable_BasicClass
    /* 1721C 80026A1C 00000000 */   nop
    /* 17220 80026A20 0C00428C */  lw         $v0, 0xC($v0)
    /* 17224 80026A24 00000000 */  nop
    /* 17228 80026A28 09F84000 */  jalr       $v0
    /* 1722C 80026A2C 21200002 */   addu      $a0, $s0, $zero
    /* 17230 80026A30 3F5F000C */  jal        BMemFree
    /* 17234 80026A34 21200002 */   addu      $a0, $s0, $zero
    /* 17238 80026A38 21100000 */  addu       $v0, $zero, $zero
    /* 1723C 80026A3C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 17240 80026A40 1000B08F */  lw         $s0, 0x10($sp)
    /* 17244 80026A44 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 17248 80026A48 0800E003 */  jr         $ra
    /* 1724C 80026A4C 00000000 */   nop
endlabel func_800269F0
