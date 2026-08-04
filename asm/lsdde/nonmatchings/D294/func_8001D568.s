.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001D568, 0x98

glabel func_8001D568
    /* DD68 8001D568 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* DD6C 8001D56C 4800B0AF */  sw         $s0, 0x48($sp)
    /* DD70 8001D570 21808000 */  addu       $s0, $a0, $zero
    /* DD74 8001D574 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* DD78 8001D578 2188A000 */  addu       $s1, $a1, $zero
    /* DD7C 8001D57C 0400222A */  slti       $v0, $s1, 0x4
    /* DD80 8001D580 19004010 */  beqz       $v0, .Lfunc_8001D568_8001D5E8
    /* DD84 8001D584 5000BFAF */   sw        $ra, 0x50($sp)
    /* DD88 8001D588 0200222A */  slti       $v0, $s1, 0x2
    /* DD8C 8001D58C 16004014 */  bnez       $v0, .Lfunc_8001D568_8001D5E8
    /* DD90 8001D590 00000000 */   nop
    /* DD94 8001D594 2000048E */  lw         $a0, 0x20($s0)
    /* DD98 8001D598 00000000 */  nop
    /* DD9C 8001D59C 12008010 */  beqz       $a0, .Lfunc_8001D568_8001D5E8
    /* DDA0 8001D5A0 00000000 */   nop
    /* DDA4 8001D5A4 E97C000C */  jal        func_8001F3A4
    /* DDA8 8001D5A8 00000000 */   nop
    /* DDAC 8001D5AC 0E004010 */  beqz       $v0, .Lfunc_8001D568_8001D5E8
    /* DDB0 8001D5B0 21200002 */   addu      $a0, $s0, $zero
    /* DDB4 8001D5B4 0000028E */  lw         $v0, 0x0($s0)
    /* DDB8 8001D5B8 00000000 */  nop
    /* DDBC 8001D5BC 8C00428C */  lw         $v0, 0x8C($v0)
    /* DDC0 8001D5C0 00000000 */  nop
    /* DDC4 8001D5C4 09F84000 */  jalr       $v0
    /* DDC8 8001D5C8 1000A527 */   addiu     $a1, $sp, 0x10
    /* DDCC 8001D5CC 21200002 */  addu       $a0, $s0, $zero
    /* DDD0 8001D5D0 0000828C */  lw         $v0, 0x0($a0)
    /* DDD4 8001D5D4 1000A527 */  addiu      $a1, $sp, 0x10
    /* DDD8 8001D5D8 9000428C */  lw         $v0, 0x90($v0)
    /* DDDC 8001D5DC 00000000 */  nop
    /* DDE0 8001D5E0 09F84000 */  jalr       $v0
    /* DDE4 8001D5E4 21302002 */   addu      $a2, $s1, $zero
  .Lfunc_8001D568_8001D5E8:
    /* DDE8 8001D5E8 5000BF8F */  lw         $ra, 0x50($sp)
    /* DDEC 8001D5EC 4C00B18F */  lw         $s1, 0x4C($sp)
    /* DDF0 8001D5F0 4800B08F */  lw         $s0, 0x48($sp)
    /* DDF4 8001D5F4 5800BD27 */  addiu      $sp, $sp, 0x58
    /* DDF8 8001D5F8 0800E003 */  jr         $ra
    /* DDFC 8001D5FC 00000000 */   nop
endlabel func_8001D568
