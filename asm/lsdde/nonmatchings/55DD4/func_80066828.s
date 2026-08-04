.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80066828

dlabel func_80066828
    /* 57028 80066828 13000000 */ .word 0x00000013
    /* 5702C 8006682C 00000000 */ .word 0x00000000
    /* 57030 80066830 01000000 */ .word 0x00000001 /* invalid instruction */
    /* 57034 80066834 01000000 */ .word 0x00000001 /* invalid instruction */
    /* 57038 80066838 01000000 */ .word 0x00000001 /* invalid instruction */
    /* 5703C 8006683C 01000000 */ .word 0x00000001 /* invalid instruction */
    /* 57040 80066840 */ .byte 0x00
enddlabel func_80066828

nonmatching gCtypeTable

dlabel gCtypeTable
    /* 57041 80066841 */ .byte 0x20
    /* 57042 80066842 */ .short 0x2020
    /* 57044 80066844 20202020 */ .word 0x20202020
    /* 57048 80066848 20200808 */ .word 0x08082020
    /* 5704C 8006684C 08080820 */ .word 0x20080808
    /* 57050 80066850 20202020 */ .word 0x20202020
    /* 57054 80066854 20202020 */ .word 0x20202020
    /* 57058 80066858 20202020 */ .word 0x20202020
    /* 5705C 8006685C 20202020 */ .word 0x20202020
    /* 57060 80066860 20181010 */ .word 0x10101820
    /* 57064 80066864 10101010 */ .word 0x10101010
    /* 57068 80066868 10101010 */ .word 0x10101010
    /* 5706C 8006686C 10101010 */ .word 0x10101010
enddlabel gCtypeTable
