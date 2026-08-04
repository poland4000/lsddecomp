.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndResetBankEntry, 0xA0

glabel SndResetBankEntry
    /* 241AC 800339AC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 241B0 800339B0 00240400 */  sll        $a0, $a0, 16
    /* 241B4 800339B4 03240400 */  sra        $a0, $a0, 16
    /* 241B8 800339B8 0980023C */  lui        $v0, %hi(gSoundBankTable)
    /* 241BC 800339BC E8024224 */  addiu      $v0, $v0, %lo(gSoundBankTable)
    /* 241C0 800339C0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 241C4 800339C4 80900400 */  sll        $s2, $a0, 2
    /* 241C8 800339C8 21904202 */  addu       $s2, $s2, $v0
    /* 241CC 800339CC 002C0500 */  sll        $a1, $a1, 16
    /* 241D0 800339D0 032C0500 */  sra        $a1, $a1, 16
    /* 241D4 800339D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 241D8 800339D8 40800500 */  sll        $s0, $a1, 1
    /* 241DC 800339DC 21800502 */  addu       $s0, $s0, $a1
    /* 241E0 800339E0 80801000 */  sll        $s0, $s0, 2
    /* 241E4 800339E4 23800502 */  subu       $s0, $s0, $a1
    /* 241E8 800339E8 80801000 */  sll        $s0, $s0, 2
    /* 241EC 800339EC 23800502 */  subu       $s0, $s0, $a1
    /* 241F0 800339F0 80801000 */  sll        $s0, $s0, 2
    /* 241F4 800339F4 002A0500 */  sll        $a1, $a1, 8
    /* 241F8 800339F8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 241FC 800339FC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 24200 80033A00 0000518E */  lw         $s1, 0x0($s2)
    /* 24204 80033A04 2520A400 */  or         $a0, $a1, $a0
    /* 24208 80033A08 A7C1000C */  jal        SndFindVoiceById
    /* 2420C 80033A0C 21881102 */   addu      $s1, $s0, $s1
    /* 24210 80033A10 2B0020A2 */  sb         $zero, 0x2B($s1)
    /* 24214 80033A14 0000428E */  lw         $v0, 0x0($s2)
    /* 24218 80033A18 00000000 */  nop
    /* 2421C 80033A1C 21800202 */  addu       $s0, $s0, $v0
    /* 24220 80033A20 9000028E */  lw         $v0, 0x90($s0)
    /* 24224 80033A24 FDFF0324 */  addiu      $v1, $zero, -0x3
    /* 24228 80033A28 24104300 */  and        $v0, $v0, $v1
    /* 2422C 80033A2C 900002AE */  sw         $v0, 0x90($s0)
    /* 24230 80033A30 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 24234 80033A34 1800B28F */  lw         $s2, 0x18($sp)
    /* 24238 80033A38 1400B18F */  lw         $s1, 0x14($sp)
    /* 2423C 80033A3C 1000B08F */  lw         $s0, 0x10($sp)
    /* 24240 80033A40 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 24244 80033A44 0800E003 */  jr         $ra
    /* 24248 80033A48 00000000 */   nop
endlabel SndResetBankEntry
