.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching ExecuteLink, 0xA4

glabel ExecuteLink
    /* 4B128 8005A928 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4B12C 8005A92C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4B130 8005A930 21808000 */  addu       $s0, $a0, $zero
    /* 4B134 8005A934 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4B138 8005A938 2188A000 */  addu       $s1, $a1, $zero
    /* 4B13C 8005A93C 2128C000 */  addu       $a1, $a2, $zero
    /* 4B140 8005A940 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 4B144 8005A944 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4B148 8005A948 0000028E */  lw         $v0, 0x0($s0)
    /* 4B14C 8005A94C 440005AE */  sw         $a1, 0x44($s0)
    /* 4B150 8005A950 3000428C */  lw         $v0, 0x30($v0)
    /* 4B154 8005A954 00000000 */  nop
    /* 4B158 8005A958 09F84000 */  jalr       $v0
    /* 4B15C 8005A95C 2190E000 */   addu      $s2, $a3, $zero
    /* 4B160 8005A960 4400028E */  lw         $v0, 0x44($s0)
    /* 4B164 8005A964 00000000 */  nop
    /* 4B168 8005A968 11004010 */  beqz       $v0, .LExecuteLink_8005A9B0
    /* 4B16C 8005A96C 21100000 */   addu      $v0, $zero, $zero
    /* 4B170 8005A970 6800028E */  lw         $v0, 0x68($s0)
    /* 4B174 8005A974 00000000 */  nop
    /* 4B178 8005A978 02004010 */  beqz       $v0, .LExecuteLink_8005A984
    /* 4B17C 8005A97C 640111AE */   sw        $s1, 0x164($s0)
    /* 4B180 8005A980 240000AE */  sw         $zero, 0x24($s0)
  .LExecuteLink_8005A984:
    /* 4B184 8005A984 09004012 */  beqz       $s2, .LExecuteLink_8005A9AC
    /* 4B188 8005A988 90000534 */   ori       $a1, $zero, 0x90
    /* 4B18C 8005A98C 5800048E */  lw         $a0, 0x58($s0)
    /* 4B190 8005A990 00000000 */  nop
    /* 4B194 8005A994 0000828C */  lw         $v0, 0x0($a0)
    /* 4B198 8005A998 6E000634 */  ori        $a2, $zero, 0x6E
    /* 4B19C 8005A99C 8000428C */  lw         $v0, 0x80($v0)
    /* 4B1A0 8005A9A0 00000000 */  nop
    /* 4B1A4 8005A9A4 09F84000 */  jalr       $v0
    /* 4B1A8 8005A9A8 6E000734 */   ori       $a3, $zero, 0x6E
  .LExecuteLink_8005A9AC:
    /* 4B1AC 8005A9AC 01000234 */  ori        $v0, $zero, 0x1
  .LExecuteLink_8005A9B0:
    /* 4B1B0 8005A9B0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4B1B4 8005A9B4 1800B28F */  lw         $s2, 0x18($sp)
    /* 4B1B8 8005A9B8 1400B18F */  lw         $s1, 0x14($sp)
    /* 4B1BC 8005A9BC 1000B08F */  lw         $s0, 0x10($sp)
    /* 4B1C0 8005A9C0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4B1C4 8005A9C4 0800E003 */  jr         $ra
    /* 4B1C8 8005A9C8 00000000 */   nop
endlabel ExecuteLink
