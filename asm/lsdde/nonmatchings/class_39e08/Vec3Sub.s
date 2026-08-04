.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching Vec3Sub, 0x84

glabel Vec3Sub
    /* 46FD4 800567D4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 46FD8 800567D8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 46FDC 800567DC 21808000 */  addu       $s0, $a0, $zero
    /* 46FE0 800567E0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 46FE4 800567E4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 46FE8 800567E8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 46FEC 800567EC 0000028E */  lw         $v0, 0x0($s0)
    /* 46FF0 800567F0 00000000 */  nop
    /* 46FF4 800567F4 4C00428C */  lw         $v0, 0x4C($v0)
    /* 46FF8 800567F8 3000B28F */  lw         $s2, 0x30($sp)
    /* 46FFC 800567FC 09F84000 */  jalr       $v0
    /* 47000 80056800 2188E000 */   addu      $s1, $a3, $zero
    /* 47004 80056804 21200002 */  addu       $a0, $s0, $zero
    /* 47008 80056808 0000028E */  lw         $v0, 0x0($s0)
    /* 4700C 8005680C 01000534 */  ori        $a1, $zero, 0x1
    /* 47010 80056810 4400428C */  lw         $v0, 0x44($v0)
    /* 47014 80056814 00000000 */  nop
    /* 47018 80056818 09F84000 */  jalr       $v0
    /* 4701C 8005681C 21302002 */   addu      $a2, $s1, $zero
    /* 47020 80056820 21200002 */  addu       $a0, $s0, $zero
    /* 47024 80056824 0000828C */  lw         $v0, 0x0($a0)
    /* 47028 80056828 01000534 */  ori        $a1, $zero, 0x1
    /* 4702C 8005682C 4800428C */  lw         $v0, 0x48($v0)
    /* 47030 80056830 00000000 */  nop
    /* 47034 80056834 09F84000 */  jalr       $v0
    /* 47038 80056838 21304002 */   addu      $a2, $s2, $zero
    /* 4703C 8005683C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 47040 80056840 1800B28F */  lw         $s2, 0x18($sp)
    /* 47044 80056844 1400B18F */  lw         $s1, 0x14($sp)
    /* 47048 80056848 1000B08F */  lw         $s0, 0x10($sp)
    /* 4704C 8005684C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 47050 80056850 0800E003 */  jr         $ra
    /* 47054 80056854 00000000 */   nop
endlabel Vec3Sub
