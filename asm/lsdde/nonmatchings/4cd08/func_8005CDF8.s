.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005CDF8, 0x13C

glabel func_8005CDF8
    /* 4D5F8 8005CDF8 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 4D5FC 8005CDFC 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 4D600 8005CE00 2188C000 */  addu       $s1, $a2, $zero
    /* 4D604 8005CE04 FC03868F */  lw         $a2, %gp_rel(gEntityStageArg3)($gp)
    /* 4D608 8005CE08 3800B0AF */  sw         $s0, 0x38($sp)
    /* 4D60C 8005CE0C 2180E000 */  addu       $s0, $a3, $zero
    /* 4D610 8005CE10 4400BFAF */  sw         $ra, 0x44($sp)
    /* 4D614 8005CE14 F773010C */  jal        New_Entity
    /* 4D618 8005CE18 4000B2AF */   sw        $s2, 0x40($sp)
    /* 4D61C 8005CE1C 21904000 */  addu       $s2, $v0, $zero
    /* 4D620 8005CE20 03004016 */  bnez       $s2, .Lfunc_8005CDF8_8005CE30
    /* 4D624 8005CE24 80801000 */   sll       $s0, $s0, 2
    /* 4D628 8005CE28 C6730108 */  j          .Lfunc_8005CDF8_8005CF18
    /* 4D62C 8005CE2C 01000234 */   ori       $v0, $zero, 0x1
  .Lfunc_8005CDF8_8005CE30:
    /* 4D630 8005CE30 00002296 */  lhu        $v0, 0x0($s1)
    /* 4D634 8005CE34 00000000 */  nop
    /* 4D638 8005CE38 1800A2A7 */  sh         $v0, 0x18($sp)
    /* 4D63C 8005CE3C 0980023C */  lui        $v0, %hi(D_80088F48)
    /* 4D640 8005CE40 488F4224 */  addiu      $v0, $v0, %lo(D_80088F48)
    /* 4D644 8005CE44 21800202 */  addu       $s0, $s0, $v0
    /* 4D648 8005CE48 00000296 */  lhu        $v0, 0x0($s0)
    /* 4D64C 8005CE4C 2800B127 */  addiu      $s1, $sp, 0x28
    /* 4D650 8005CE50 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* 4D654 8005CE54 03000382 */  lb         $v1, 0x3($s0)
    /* 4D658 8005CE58 F403848F */  lw         $a0, %gp_rel(gEntityStageArg1)($gp)
    /* 4D65C 8005CE5C 40100300 */  sll        $v0, $v1, 1
    /* 4D660 8005CE60 21104300 */  addu       $v0, $v0, $v1
    /* 4D664 8005CE64 40100200 */  sll        $v0, $v0, 1
    /* 4D668 8005CE68 0980013C */  lui        $at, %hi(D_80088D3F)
    /* 4D66C 8005CE6C 3F8D2124 */  addiu      $at, $at, %lo(D_80088D3F)
    /* 4D670 8005CE70 21082200 */  addu       $at, $at, $v0
    /* 4D674 8005CE74 00002388 */  lwl        $v1, 0x0($at)
    /* 4D678 8005CE78 0980013C */  lui        $at, %hi(D_80088D3C)
    /* 4D67C 8005CE7C 3C8D2124 */  addiu      $at, $at, %lo(D_80088D3C)
    /* 4D680 8005CE80 21082200 */  addu       $at, $at, $v0
    /* 4D684 8005CE84 00002398 */  lwr        $v1, 0x0($at)
    /* 4D688 8005CE88 0980013C */  lui        $at, %hi(D_80088D40)
    /* 4D68C 8005CE8C 408D2124 */  addiu      $at, $at, %lo(D_80088D40)
    /* 4D690 8005CE90 21082200 */  addu       $at, $at, $v0
    /* 4D694 8005CE94 00002684 */  lh         $a2, 0x0($at)
    /* 4D698 8005CE98 1F00A3AB */  swl        $v1, 0x1F($sp)
    /* 4D69C 8005CE9C 1C00A3BB */  swr        $v1, 0x1C($sp)
    /* 4D6A0 8005CEA0 2000A6A7 */  sh         $a2, 0x20($sp)
    /* 4D6A4 8005CEA4 0000828C */  lw         $v0, 0x0($a0)
    /* 4D6A8 8005CEA8 21282002 */  addu       $a1, $s1, $zero
    /* 4D6AC 8005CEAC E800428C */  lw         $v0, 0xE8($v0)
    /* 4D6B0 8005CEB0 00000000 */  nop
    /* 4D6B4 8005CEB4 09F84000 */  jalr       $v0
    /* 4D6B8 8005CEB8 1800A627 */   addiu     $a2, $sp, 0x18
    /* 4D6BC 8005CEBC 21204002 */  addu       $a0, $s2, $zero
    /* 4D6C0 8005CEC0 01000534 */  ori        $a1, $zero, 0x1
    /* 4D6C4 8005CEC4 02000282 */  lb         $v0, 0x2($s0)
    /* 4D6C8 8005CEC8 0980033C */  lui        $v1, %hi(D_80088F18)
    /* 4D6CC 8005CECC 188F6324 */  addiu      $v1, $v1, %lo(D_80088F18)
    /* 4D6D0 8005CED0 40300200 */  sll        $a2, $v0, 1
    /* 4D6D4 8005CED4 2130C200 */  addu       $a2, $a2, $v0
    /* 4D6D8 8005CED8 0000428E */  lw         $v0, 0x0($s2)
    /* 4D6DC 8005CEDC 80300600 */  sll        $a2, $a2, 2
    /* 4D6E0 8005CEE0 4400428C */  lw         $v0, 0x44($v0)
    /* 4D6E4 8005CEE4 00000000 */  nop
    /* 4D6E8 8005CEE8 09F84000 */  jalr       $v0
    /* 4D6EC 8005CEEC 2130C300 */   addu      $a2, $a2, $v1
    /* 4D6F0 8005CEF0 0000428E */  lw         $v0, 0x0($s2)
    /* 4D6F4 8005CEF4 F803858F */  lw         $a1, %gp_rel(gpStageContextObj)($gp)
    /* 4D6F8 8005CEF8 0004868F */  lw         $a2, %gp_rel(gEntityStageArg4)($gp)
    /* 4D6FC 8005CEFC F403878F */  lw         $a3, %gp_rel(gEntityStageArg1)($gp)
    /* 4D700 8005CF00 1000B1AF */  sw         $s1, 0x10($sp)
    /* 4D704 8005CF04 4C00428C */  lw         $v0, 0x4C($v0)
    /* 4D708 8005CF08 00000000 */  nop
    /* 4D70C 8005CF0C 09F84000 */  jalr       $v0
    /* 4D710 8005CF10 21204002 */   addu      $a0, $s2, $zero
    /* 4D714 8005CF14 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_8005CDF8_8005CF18:
    /* 4D718 8005CF18 4400BF8F */  lw         $ra, 0x44($sp)
    /* 4D71C 8005CF1C 4000B28F */  lw         $s2, 0x40($sp)
    /* 4D720 8005CF20 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 4D724 8005CF24 3800B08F */  lw         $s0, 0x38($sp)
    /* 4D728 8005CF28 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 4D72C 8005CF2C 0800E003 */  jr         $ra
    /* 4D730 8005CF30 00000000 */   nop
endlabel func_8005CDF8
