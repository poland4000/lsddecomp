.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003E4B8, 0x80

glabel func_8003E4B8
    /* 2ECB8 8003E4B8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2ECBC 8003E4BC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2ECC0 8003E4C0 21888000 */  addu       $s1, $a0, $zero
    /* 2ECC4 8003E4C4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2ECC8 8003E4C8 2180A000 */  addu       $s0, $a1, $zero
    /* 2ECCC 8003E4CC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2ECD0 8003E4D0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2ECD4 8003E4D4 0000328E */  lw         $s2, 0x0($s1)
    /* 2ECD8 8003E4D8 200030AE */  sw         $s0, 0x20($s1)
    /* 2ECDC 8003E4DC 3000428E */  lw         $v0, 0x30($s2)
    /* 2ECE0 8003E4E0 00000000 */  nop
    /* 2ECE4 8003E4E4 09F84000 */  jalr       $v0
    /* 2ECE8 8003E4E8 00000000 */   nop
    /* 2ECEC 8003E4EC 02000234 */  ori        $v0, $zero, 0x2
    /* 2ECF0 8003E4F0 04000216 */  bne        $s0, $v0, .Lfunc_8003E4B8_8003E504
    /* 2ECF4 8003E4F4 03000234 */   ori       $v0, $zero, 0x3
    /* 2ECF8 8003E4F8 6400428E */  lw         $v0, 0x64($s2)
    /* 2ECFC 8003E4FC 44F90008 */  j          .Lfunc_8003E4B8_8003E510
    /* 2ED00 8003E500 00000000 */   nop
  .Lfunc_8003E4B8_8003E504:
    /* 2ED04 8003E504 05000216 */  bne        $s0, $v0, .Lfunc_8003E4B8_8003E51C
    /* 2ED08 8003E508 00000000 */   nop
    /* 2ED0C 8003E50C 6800428E */  lw         $v0, 0x68($s2)
  .Lfunc_8003E4B8_8003E510:
    /* 2ED10 8003E510 00000000 */  nop
    /* 2ED14 8003E514 09F84000 */  jalr       $v0
    /* 2ED18 8003E518 21202002 */   addu      $a0, $s1, $zero
  .Lfunc_8003E4B8_8003E51C:
    /* 2ED1C 8003E51C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2ED20 8003E520 1800B28F */  lw         $s2, 0x18($sp)
    /* 2ED24 8003E524 1400B18F */  lw         $s1, 0x14($sp)
    /* 2ED28 8003E528 1000B08F */  lw         $s0, 0x10($sp)
    /* 2ED2C 8003E52C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2ED30 8003E530 0800E003 */  jr         $ra
    /* 2ED34 8003E534 00000000 */   nop
endlabel func_8003E4B8
