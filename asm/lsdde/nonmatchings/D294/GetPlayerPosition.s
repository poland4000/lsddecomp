.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching GetPlayerPosition, 0x78

glabel GetPlayerPosition
    /* EEF8 8001E6F8 1400828C */  lw         $v0, 0x14($a0)
    /* EEFC 8001E6FC 00000000 */  nop
    /* EF00 8001E700 4400468C */  lw         $a2, 0x44($v0)
    /* EF04 8001E704 00000000 */  nop
    /* EF08 8001E708 1000C284 */  lh         $v0, 0x10($a2)
    /* EF0C 8001E70C 01000434 */  ori        $a0, $zero, 0x1
    /* EF10 8001E710 0200A4A4 */  sh         $a0, 0x2($a1)
    /* EF14 8001E714 40180200 */  sll        $v1, $v0, 1
    /* EF18 8001E718 21186200 */  addu       $v1, $v1, $v0
    /* EF1C 8001E71C 00110300 */  sll        $v0, $v1, 4
    /* EF20 8001E720 23104300 */  subu       $v0, $v0, $v1
    /* EF24 8001E724 43120200 */  sra        $v0, $v0, 9
    /* EF28 8001E728 0000A2A4 */  sh         $v0, 0x0($a1)
    /* EF2C 8001E72C 1200C284 */  lh         $v0, 0x12($a2)
    /* EF30 8001E730 0600A4A4 */  sh         $a0, 0x6($a1)
    /* EF34 8001E734 40180200 */  sll        $v1, $v0, 1
    /* EF38 8001E738 21186200 */  addu       $v1, $v1, $v0
    /* EF3C 8001E73C 00110300 */  sll        $v0, $v1, 4
    /* EF40 8001E740 23104300 */  subu       $v0, $v0, $v1
    /* EF44 8001E744 43120200 */  sra        $v0, $v0, 9
    /* EF48 8001E748 0400A2A4 */  sh         $v0, 0x4($a1)
    /* EF4C 8001E74C 1400C284 */  lh         $v0, 0x14($a2)
    /* EF50 8001E750 0A00A4A4 */  sh         $a0, 0xA($a1)
    /* EF54 8001E754 40180200 */  sll        $v1, $v0, 1
    /* EF58 8001E758 21186200 */  addu       $v1, $v1, $v0
    /* EF5C 8001E75C 00110300 */  sll        $v0, $v1, 4
    /* EF60 8001E760 23104300 */  subu       $v0, $v0, $v1
    /* EF64 8001E764 43120200 */  sra        $v0, $v0, 9
    /* EF68 8001E768 0800E003 */  jr         $ra
    /* EF6C 8001E76C 0800A2A4 */   sh        $v0, 0x8($a1)
endlabel GetPlayerPosition
