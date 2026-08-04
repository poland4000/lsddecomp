.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003DA10, 0xC4

glabel func_8003DA10
    /* 2E210 8003DA10 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2E214 8003DA14 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2E218 8003DA18 21888000 */  addu       $s1, $a0, $zero
    /* 2E21C 8003DA1C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 2E220 8003DA20 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2E224 8003DA24 3C00238E */  lw         $v1, 0x3C($s1)
    /* 2E228 8003DA28 01000234 */  ori        $v0, $zero, 0x1
    /* 2E22C 8003DA2C 23006214 */  bne        $v1, $v0, .Lfunc_8003DA10_8003DABC
    /* 2E230 8003DA30 00000000 */   nop
    /* 2E234 8003DA34 0000228E */  lw         $v0, 0x0($s1)
    /* 2E238 8003DA38 1400258E */  lw         $a1, 0x14($s1)
    /* 2E23C 8003DA3C 0001428C */  lw         $v0, 0x100($v0)
    /* 2E240 8003DA40 5800308E */  lw         $s0, 0x58($s1)
    /* 2E244 8003DA44 09F84000 */  jalr       $v0
    /* 2E248 8003DA48 01000634 */   ori       $a2, $zero, 0x1
    /* 2E24C 8003DA4C 80801000 */  sll        $s0, $s0, 2
    /* 2E250 8003DA50 6400238E */  lw         $v1, 0x64($s1)
    /* 2E254 8003DA54 6000228E */  lw         $v0, 0x60($s1)
    /* 2E258 8003DA58 21180302 */  addu       $v1, $s0, $v1
    /* 2E25C 8003DA5C 21100202 */  addu       $v0, $s0, $v0
    /* 2E260 8003DA60 0000428C */  lw         $v0, 0x0($v0)
    /* 2E264 8003DA64 0000638C */  lw         $v1, 0x0($v1)
    /* 2E268 8003DA68 80100200 */  sll        $v0, $v0, 2
    /* 2E26C 8003DA6C 21104300 */  addu       $v0, $v0, $v1
    /* 2E270 8003DA70 4C00238E */  lw         $v1, 0x4C($s1)
    /* 2E274 8003DA74 0000448C */  lw         $a0, 0x0($v0)
    /* 2E278 8003DA78 2400628C */  lw         $v0, 0x24($v1)
    /* 2E27C 8003DA7C 00000000 */  nop
    /* 2E280 8003DA80 21800202 */  addu       $s0, $s0, $v0
    /* 2E284 8003DA84 0000828C */  lw         $v0, 0x0($a0)
    /* 2E288 8003DA88 0000058E */  lw         $a1, 0x0($s0)
    /* 2E28C 8003DA8C B800428C */  lw         $v0, 0xB8($v0)
    /* 2E290 8003DA90 00000000 */  nop
    /* 2E294 8003DA94 09F84000 */  jalr       $v0
    /* 2E298 8003DA98 0800A524 */   addiu     $a1, $a1, 0x8
    /* 2E29C 8003DA9C 21202002 */  addu       $a0, $s1, $zero
    /* 2E2A0 8003DAA0 0000838C */  lw         $v1, 0x0($a0)
    /* 2E2A4 8003DAA4 02000234 */  ori        $v0, $zero, 0x2
    /* 2E2A8 8003DAA8 3C0082AC */  sw         $v0, 0x3C($a0)
    /* 2E2AC 8003DAAC 6000628C */  lw         $v0, 0x60($v1)
    /* 2E2B0 8003DAB0 00000000 */  nop
    /* 2E2B4 8003DAB4 09F84000 */  jalr       $v0
    /* 2E2B8 8003DAB8 0E000534 */   ori       $a1, $zero, 0xE
  .Lfunc_8003DA10_8003DABC:
    /* 2E2BC 8003DABC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 2E2C0 8003DAC0 1400B18F */  lw         $s1, 0x14($sp)
    /* 2E2C4 8003DAC4 1000B08F */  lw         $s0, 0x10($sp)
    /* 2E2C8 8003DAC8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2E2CC 8003DACC 0800E003 */  jr         $ra
    /* 2E2D0 8003DAD0 00000000 */   nop
endlabel func_8003DA10
