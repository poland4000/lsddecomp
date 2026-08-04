.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching Test4FallingLink, 0xB8

glabel Test4FallingLink
    /* 4C690 8005BE90 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4C694 8005BE94 03000234 */  ori        $v0, $zero, 0x3
    /* 4C698 8005BE98 0A00A210 */  beq        $a1, $v0, .Lfunc_8005BE90_8005BEC4
    /* 4C69C 8005BE9C 1000BFAF */   sw        $ra, 0x10($sp)
    /* 4C6A0 8005BEA0 01000234 */  ori        $v0, $zero, 0x1
    /* 4C6A4 8005BEA4 0700A210 */  beq        $a1, $v0, .Lfunc_8005BE90_8005BEC4
    /* 4C6A8 8005BEA8 05000234 */   ori       $v0, $zero, 0x5
    /* 4C6AC 8005BEAC 0800A210 */  beq        $a1, $v0, .Lfunc_8005BE90_8005BED0
    /* 4C6B0 8005BEB0 09000234 */   ori       $v0, $zero, 0x9
    /* 4C6B4 8005BEB4 0300A210 */  beq        $a1, $v0, .Lfunc_8005BE90_8005BEC4
    /* 4C6B8 8005BEB8 0C000234 */   ori       $v0, $zero, 0xC
    /* 4C6BC 8005BEBC 1E00A214 */  bne        $a1, $v0, .Lfunc_8005BE90_8005BF38
    /* 4C6C0 8005BEC0 FFFF0224 */   addiu     $v0, $zero, -0x1
  .Lfunc_8005BE90_8005BEC4:
    /* 4C6C4 8005BEC4 05000234 */  ori        $v0, $zero, 0x5
    /* 4C6C8 8005BEC8 0D00A214 */  bne        $a1, $v0, .Lfunc_8005BE90_8005BF00
    /* 4C6CC 8005BECC 09000234 */   ori       $v0, $zero, 0x9
  .Lfunc_8005BE90_8005BED0:
    /* 4C6D0 8005BED0 0600C284 */  lh         $v0, 0x6($a2)
    /* 4C6D4 8005BED4 00000000 */  nop
    /* 4C6D8 8005BED8 01F04228 */  slti       $v0, $v0, -0xFFF
    /* 4C6DC 8005BEDC 10004014 */  bnez       $v0, .Lfunc_8005BE90_8005BF20
    /* 4C6E0 8005BEE0 0100E230 */   andi      $v0, $a3, 0x1
    /* 4C6E4 8005BEE4 0000C38C */  lw         $v1, 0x0($a2)
    /* 4C6E8 8005BEE8 E003828F */  lw         $v0, %gp_rel(gFallingLinkChunkId)($gp)
    /* 4C6EC 8005BEEC 00000000 */  nop
    /* 4C6F0 8005BEF0 0B006210 */  beq        $v1, $v0, .Lfunc_8005BE90_8005BF20
    /* 4C6F4 8005BEF4 0100E230 */   andi      $v0, $a3, 0x1
    /* 4C6F8 8005BEF8 CE6F0108 */  j          .Lfunc_8005BE90_8005BF38
    /* 4C6FC 8005BEFC FFFF0224 */   addiu     $v0, $zero, -0x1
  .Lfunc_8005BE90_8005BF00:
    /* 4C700 8005BF00 0700A214 */  bne        $a1, $v0, .Lfunc_8005BE90_8005BF20
    /* 4C704 8005BF04 0100E230 */   andi      $v0, $a3, 0x1
    /* 4C708 8005BF08 0600C284 */  lh         $v0, 0x6($a2)
    /* 4C70C 8005BF0C 00000000 */  nop
    /* 4C710 8005BF10 00084228 */  slti       $v0, $v0, 0x800
    /* 4C714 8005BF14 08004014 */  bnez       $v0, .Lfunc_8005BE90_8005BF38
    /* 4C718 8005BF18 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 4C71C 8005BF1C 0100E230 */  andi       $v0, $a3, 0x1
  .Lfunc_8005BE90_8005BF20:
    /* 4C720 8005BF20 02004010 */  beqz       $v0, .Lfunc_8005BE90_8005BF2C
    /* 4C724 8005BF24 00000000 */   nop
    /* 4C728 8005BF28 F4FF0524 */  addiu      $a1, $zero, -0xC
  .Lfunc_8005BE90_8005BF2C:
    /* 4C72C 8005BF2C CC6E010C */  jal        GetRandomSpawnFromStage
    /* 4C730 8005BF30 2130E000 */   addu      $a2, $a3, $zero
    /* 4C734 8005BF34 BC0482AF */  sw         $v0, %gp_rel(gLinkDestStage)($gp)
  .Lfunc_8005BE90_8005BF38:
    /* 4C738 8005BF38 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4C73C 8005BF3C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4C740 8005BF40 0800E003 */  jr         $ra
    /* 4C744 8005BF44 00000000 */   nop
endlabel Test4FallingLink
