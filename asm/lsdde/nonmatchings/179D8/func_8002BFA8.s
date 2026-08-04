.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002BFA8, 0x6C

glabel func_8002BFA8
    /* 1C7A8 8002BFA8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1C7AC 8002BFAC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1C7B0 8002BFB0 21888000 */  addu       $s1, $a0, $zero
    /* 1C7B4 8002BFB4 2120A000 */  addu       $a0, $a1, $zero
    /* 1C7B8 8002BFB8 1000A527 */  addiu      $a1, $sp, 0x10
    /* 1C7BC 8002BFBC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 1C7C0 8002BFC0 2000BFAF */  sw         $ra, 0x20($sp)
    /* 1C7C4 8002BFC4 BDA4000C */  jal        CdIntToPos
    /* 1C7C8 8002BFC8 2180C000 */   addu      $s0, $a2, $zero
    /* 1C7CC 8002BFCC 02000434 */  ori        $a0, $zero, 0x2
    /* 1C7D0 8002BFD0 1000A527 */  addiu      $a1, $sp, 0x10
    /* 1C7D4 8002BFD4 7CA3000C */  jal        CdControl
    /* 1C7D8 8002BFD8 21300000 */   addu      $a2, $zero, $zero
    /* 1C7DC 8002BFDC 21202002 */  addu       $a0, $s1, $zero
    /* 1C7E0 8002BFE0 21280002 */  addu       $a1, $s0, $zero
    /* 1C7E4 8002BFE4 9DA4000C */  jal        CdRead
    /* 1C7E8 8002BFE8 80000634 */   ori       $a2, $zero, 0x80
    /* 1C7EC 8002BFEC 21200000 */  addu       $a0, $zero, $zero
    /* 1C7F0 8002BFF0 95A4000C */  jal        CdReadSync
    /* 1C7F4 8002BFF4 21280000 */   addu      $a1, $zero, $zero
    /* 1C7F8 8002BFF8 0100422C */  sltiu      $v0, $v0, 0x1
    /* 1C7FC 8002BFFC 2000BF8F */  lw         $ra, 0x20($sp)
    /* 1C800 8002C000 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 1C804 8002C004 1800B08F */  lw         $s0, 0x18($sp)
    /* 1C808 8002C008 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1C80C 8002C00C 0800E003 */  jr         $ra
    /* 1C810 8002C010 00000000 */   nop
endlabel func_8002BFA8
