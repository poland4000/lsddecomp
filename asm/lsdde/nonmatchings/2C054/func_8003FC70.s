.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003FC70, 0x8C

glabel func_8003FC70
    /* 30470 8003FC70 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 30474 8003FC74 21288000 */  addu       $a1, $a0, $zero
    /* 30478 8003FC78 01000234 */  ori        $v0, $zero, 0x1
    /* 3047C 8003FC7C 1300A210 */  beq        $a1, $v0, .Lfunc_8003FC70_8003FCCC
    /* 30480 8003FC80 1000BFAF */   sw        $ra, 0x10($sp)
    /* 30484 8003FC84 0200A228 */  slti       $v0, $a1, 0x2
    /* 30488 8003FC88 05004010 */  beqz       $v0, .Lfunc_8003FC70_8003FCA0
    /* 3048C 8003FC8C 00000000 */   nop
    /* 30490 8003FC90 0A00A010 */  beqz       $a1, .Lfunc_8003FC70_8003FCBC
    /* 30494 8003FC94 00000000 */   nop
    /* 30498 8003FC98 37FF0008 */  j          .Lfunc_8003FC70_8003FCDC
    /* 3049C 8003FC9C 00000000 */   nop
  .Lfunc_8003FC70_8003FCA0:
    /* 304A0 8003FCA0 02000234 */  ori        $v0, $zero, 0x2
    /* 304A4 8003FCA4 0900A210 */  beq        $a1, $v0, .Lfunc_8003FC70_8003FCCC
    /* 304A8 8003FCA8 03000234 */   ori       $v0, $zero, 0x3
    /* 304AC 8003FCAC 0700A210 */  beq        $a1, $v0, .Lfunc_8003FC70_8003FCCC
    /* 304B0 8003FCB0 00000000 */   nop
    /* 304B4 8003FCB4 37FF0008 */  j          .Lfunc_8003FC70_8003FCDC
    /* 304B8 8003FCB8 00000000 */   nop
  .Lfunc_8003FC70_8003FCBC:
    /* 304BC 8003FCBC 0980013C */  lui        $at, %hi(D_800902E0)
    /* 304C0 8003FCC0 E00220AC */  sw         $zero, %lo(D_800902E0)($at)
    /* 304C4 8003FCC4 3BFF0008 */  j          .Lfunc_8003FC70_8003FCEC
    /* 304C8 8003FCC8 00000000 */   nop
  .Lfunc_8003FC70_8003FCCC:
    /* 304CC 8003FCCC 0980013C */  lui        $at, %hi(D_800902E0)
    /* 304D0 8003FCD0 E00225AC */  sw         $a1, %lo(D_800902E0)($at)
    /* 304D4 8003FCD4 3BFF0008 */  j          .Lfunc_8003FC70_8003FCEC
    /* 304D8 8003FCD8 00000000 */   nop
  .Lfunc_8003FC70_8003FCDC:
    /* 304DC 8003FCDC 0180043C */  lui        $a0, %hi(D_80011194)
    /* 304E0 8003FCE0 94118424 */  addiu      $a0, $a0, %lo(D_80011194)
    /* 304E4 8003FCE4 084B000C */  jal        DebugPrintf
    /* 304E8 8003FCE8 00000000 */   nop
  .Lfunc_8003FC70_8003FCEC:
    /* 304EC 8003FCEC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 304F0 8003FCF0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 304F4 8003FCF4 0800E003 */  jr         $ra
    /* 304F8 8003FCF8 00000000 */   nop
endlabel func_8003FC70
