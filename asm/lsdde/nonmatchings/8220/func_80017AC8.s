.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80017AC8, 0x6C

glabel func_80017AC8
    /* 82C8 80017AC8 1000858F */  lw         $a1, %gp_rel(gBMemPoolSelect)($gp)
    /* 82CC 80017ACC 00000000 */  nop
    /* 82D0 80017AD0 0200A014 */  bnez       $a1, .Lfunc_80017AC8_80017ADC
    /* 82D4 80017AD4 01000234 */   ori       $v0, $zero, 0x1
    /* 82D8 80017AD8 21288000 */  addu       $a1, $a0, $zero
  .Lfunc_80017AC8_80017ADC:
    /* 82DC 80017ADC 0040033C */  lui        $v1, (0x40000000 >> 16)
    /* 82E0 80017AE0 1000A2AC */  sw         $v0, 0x10($a1)
    /* 82E4 80017AE4 0400A28C */  lw         $v0, 0x4($a1)
    /* 82E8 80017AE8 0000A48C */  lw         $a0, 0x0($a1)
    /* 82EC 80017AEC 25104300 */  or         $v0, $v0, $v1
    /* 82F0 80017AF0 0800A4AC */  sw         $a0, 0x8($a1)
    /* 82F4 80017AF4 0C00A4AC */  sw         $a0, 0xC($a1)
    /* 82F8 80017AF8 000082AC */  sw         $v0, 0x0($a0)
    /* 82FC 80017AFC 0800A28C */  lw         $v0, 0x8($a1)
    /* 8300 80017B00 00000000 */  nop
    /* 8304 80017B04 040040AC */  sw         $zero, 0x4($v0)
    /* 8308 80017B08 0C00A28C */  lw         $v0, 0xC($a1)
    /* 830C 80017B0C FF0F033C */  lui        $v1, (0xFFFFFFF >> 16)
    /* 8310 80017B10 080040AC */  sw         $zero, 0x8($v0)
    /* 8314 80017B14 0000828C */  lw         $v0, 0x0($a0)
    /* 8318 80017B18 FFFF6334 */  ori        $v1, $v1, (0xFFFFFFF & 0xFFFF)
    /* 831C 80017B1C 24104300 */  and        $v0, $v0, $v1
    /* 8320 80017B20 21108200 */  addu       $v0, $a0, $v0
    /* 8324 80017B24 0080033C */  lui        $v1, (0x80000000 >> 16)
    /* 8328 80017B28 FCFF44AC */  sw         $a0, -0x4($v0)
    /* 832C 80017B2C 0800E003 */  jr         $ra
    /* 8330 80017B30 000043AC */   sw        $v1, 0x0($v0)
endlabel func_80017AC8
