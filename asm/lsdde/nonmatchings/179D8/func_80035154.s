.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80035154, 0x7C

glabel func_80035154
    /* 25954 80035154 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 25958 80035158 00240400 */  sll        $a0, $a0, 16
    /* 2595C 8003515C 03240400 */  sra        $a0, $a0, 16
    /* 25960 80035160 80100400 */  sll        $v0, $a0, 2
    /* 25964 80035164 002C0500 */  sll        $a1, $a1, 16
    /* 25968 80035168 032C0500 */  sra        $a1, $a1, 16
    /* 2596C 8003516C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 25970 80035170 40800500 */  sll        $s0, $a1, 1
    /* 25974 80035174 21800502 */  addu       $s0, $s0, $a1
    /* 25978 80035178 80801000 */  sll        $s0, $s0, 2
    /* 2597C 8003517C 23800502 */  subu       $s0, $s0, $a1
    /* 25980 80035180 80801000 */  sll        $s0, $s0, 2
    /* 25984 80035184 23800502 */  subu       $s0, $s0, $a1
    /* 25988 80035188 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2598C 8003518C 0980013C */  lui        $at, %hi(gSoundBankTable)
    /* 25990 80035190 E8022124 */  addiu      $at, $at, %lo(gSoundBankTable)
    /* 25994 80035194 21082200 */  addu       $at, $at, $v0
    /* 25998 80035198 0000228C */  lw         $v0, 0x0($at)
    /* 2599C 8003519C 80801000 */  sll        $s0, $s0, 2
    /* 259A0 800351A0 21800202 */  addu       $s0, $s0, $v0
    /* 259A4 800351A4 29000292 */  lbu        $v0, 0x29($s0)
    /* 259A8 800351A8 140006A2 */  sb         $a2, 0x14($s0)
    /* 259AC 800351AC 01004224 */  addiu      $v0, $v0, 0x1
    /* 259B0 800351B0 A0D7000C */  jal        SndGetBankEntryField
    /* 259B4 800351B4 290002A2 */   sb        $v0, 0x29($s0)
    /* 259B8 800351B8 880002AE */  sw         $v0, 0x88($s0)
    /* 259BC 800351BC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 259C0 800351C0 1000B08F */  lw         $s0, 0x10($sp)
    /* 259C4 800351C4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 259C8 800351C8 0800E003 */  jr         $ra
    /* 259CC 800351CC 00000000 */   nop
endlabel func_80035154
