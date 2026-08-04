.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamSys__LoadNextFlashback, 0xC4

glabel DreamSys__LoadNextFlashback
    /* 4AE3C 8005A63C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4AE40 8005A640 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4AE44 8005A644 21808000 */  addu       $s0, $a0, $zero
    /* 4AE48 8005A648 1800BFAF */  sw         $ra, 0x18($sp)
    /* 4AE4C 8005A64C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4AE50 8005A650 7C08038E */  lw         $v1, 0x87C($s0)
    /* 4AE54 8005A654 6C04028E */  lw         $v0, 0x46C($s0)
    /* 4AE58 8005A658 00000000 */  nop
    /* 4AE5C 8005A65C 2A106200 */  slt        $v0, $v1, $v0
    /* 4AE60 8005A660 20004010 */  beqz       $v0, .LDreamSys__LoadNextFlashback_8005A6E4
    /* 4AE64 8005A664 0E000234 */   ori       $v0, $zero, 0xE
    /* 4AE68 8005A668 440002AE */  sw         $v0, 0x44($s0)
    /* 4AE6C 8005A66C C0100300 */  sll        $v0, $v1, 3
    /* 4AE70 8005A670 21104300 */  addu       $v0, $v0, $v1
    /* 4AE74 8005A674 80100200 */  sll        $v0, $v0, 2
    /* 4AE78 8005A678 70044224 */  addiu      $v0, $v0, 0x470
    /* 4AE7C 8005A67C 0700A014 */  bnez       $a1, .LDreamSys__LoadNextFlashback_8005A69C
    /* 4AE80 8005A680 21880202 */   addu      $s1, $s0, $v0
    /* 4AE84 8005A684 0000028E */  lw         $v0, 0x0($s0)
    /* 4AE88 8005A688 00000000 */  nop
    /* 4AE8C 8005A68C 3000428C */  lw         $v0, 0x30($v0)
    /* 4AE90 8005A690 00000000 */  nop
    /* 4AE94 8005A694 09F84000 */  jalr       $v0
    /* 4AE98 8005A698 0E000534 */   ori       $a1, $zero, 0xE
  .LDreamSys__LoadNextFlashback_8005A69C:
    /* 4AE9C 8005A69C 2000228E */  lw         $v0, 0x20($s1)
    /* 4AEA0 8005A6A0 00000000 */  nop
    /* 4AEA4 8005A6A4 800102AE */  sw         $v0, 0x180($s0)
    /* 4AEA8 8005A6A8 0000238E */  lw         $v1, 0x0($s1)
    /* 4AEAC 8005A6AC 00000000 */  nop
    /* 4AEB0 8005A6B0 640103AE */  sw         $v1, 0x164($s0)
    /* 4AEB4 8005A6B4 0700238A */  lwl        $v1, 0x7($s1)
    /* 4AEB8 8005A6B8 0400239A */  lwr        $v1, 0x4($s1)
    /* 4AEBC 8005A6BC 0B00248A */  lwl        $a0, 0xB($s1)
    /* 4AEC0 8005A6C0 0800249A */  lwr        $a0, 0x8($s1)
    /* 4AEC4 8005A6C4 0C002586 */  lh         $a1, 0xC($s1)
    /* 4AEC8 8005A6C8 6F0103AA */  swl        $v1, 0x16F($s0)
    /* 4AECC 8005A6CC 6C0103BA */  swr        $v1, 0x16C($s0)
    /* 4AED0 8005A6D0 730104AA */  swl        $a0, 0x173($s0)
    /* 4AED4 8005A6D4 700104BA */  swr        $a0, 0x170($s0)
    /* 4AED8 8005A6D8 740105A6 */  sh         $a1, 0x174($s0)
    /* 4AEDC 8005A6DC BA690108 */  j          .LDreamSys__LoadNextFlashback_8005A6E8
    /* 4AEE0 8005A6E0 01000234 */   ori       $v0, $zero, 0x1
  .LDreamSys__LoadNextFlashback_8005A6E4:
    /* 4AEE4 8005A6E4 21100000 */  addu       $v0, $zero, $zero
  .LDreamSys__LoadNextFlashback_8005A6E8:
    /* 4AEE8 8005A6E8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4AEEC 8005A6EC 1400B18F */  lw         $s1, 0x14($sp)
    /* 4AEF0 8005A6F0 1000B08F */  lw         $s0, 0x10($sp)
    /* 4AEF4 8005A6F4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4AEF8 8005A6F8 0800E003 */  jr         $ra
    /* 4AEFC 8005A6FC 00000000 */   nop
endlabel DreamSys__LoadNextFlashback
