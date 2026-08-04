.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8003E968, 0xA4

glabel func_8003E968
    /* 2F168 8003E968 900080AC */  sw         $zero, 0x90($a0)
    /* 2F16C 8003E96C 700080AC */  sw         $zero, 0x70($a0)
    /* 2F170 8003E970 F400828F */  lw         $v0, %gp_rel(D_8008A8FC)($gp)
    /* 2F174 8003E974 F800838F */  lw         $v1, %gp_rel(D_8008A900)($gp)
    /* 2F178 8003E978 340082AC */  sw         $v0, 0x34($a0)
    /* 2F17C 8003E97C 380083AC */  sw         $v1, 0x38($a0)
    /* 2F180 8003E980 0D000234 */  ori        $v0, $zero, 0xD
    /* 2F184 8003E984 3C0082AC */  sw         $v0, 0x3C($a0)
    /* 2F188 8003E988 D0070234 */  ori        $v0, $zero, 0x7D0
    /* 2F18C 8003E98C 440082AC */  sw         $v0, 0x44($a0)
    /* 2F190 8003E990 40000234 */  ori        $v0, $zero, 0x40
    /* 2F194 8003E994 480082AC */  sw         $v0, 0x48($a0)
    /* 2F198 8003E998 00010234 */  ori        $v0, $zero, 0x100
    /* 2F19C 8003E99C 400082AC */  sw         $v0, 0x40($a0)
    /* 2F1A0 8003E9A0 0A000234 */  ori        $v0, $zero, 0xA
    /* 2F1A4 8003E9A4 4C0082AC */  sw         $v0, 0x4C($a0)
    /* 2F1A8 8003E9A8 0100023C */  lui        $v0, (0x10000 >> 16)
    /* 2F1AC 8003E9AC 500082AC */  sw         $v0, 0x50($a0)
    /* 2F1B0 8003E9B0 204E0234 */  ori        $v0, $zero, 0x4E20
    /* 2F1B4 8003E9B4 540080AC */  sw         $zero, 0x54($a0)
    /* 2F1B8 8003E9B8 600082AC */  sw         $v0, 0x60($a0)
    /* 2F1BC 8003E9BC 0980063C */  lui        $a2, %hi(D_8008A8F8)
    /* 2F1C0 8003E9C0 F8A8C624 */  addiu      $a2, $a2, %lo(D_8008A8F8)
    /* 2F1C4 8003E9C4 0000C280 */  lb         $v0, 0x0($a2)
    /* 2F1C8 8003E9C8 0100C380 */  lb         $v1, 0x1($a2)
    /* 2F1CC 8003E9CC 0200C580 */  lb         $a1, 0x2($a2)
    /* 2F1D0 8003E9D0 5B0082A0 */  sb         $v0, 0x5B($a0)
    /* 2F1D4 8003E9D4 5C0083A0 */  sb         $v1, 0x5C($a0)
    /* 2F1D8 8003E9D8 5D0085A0 */  sb         $a1, 0x5D($a0)
    /* 2F1DC 8003E9DC 0980063C */  lui        $a2, %hi(D_8008A8F8)
    /* 2F1E0 8003E9E0 F8A8C624 */  addiu      $a2, $a2, %lo(D_8008A8F8)
    /* 2F1E4 8003E9E4 0000C280 */  lb         $v0, 0x0($a2)
    /* 2F1E8 8003E9E8 0100C380 */  lb         $v1, 0x1($a2)
    /* 2F1EC 8003E9EC 0200C580 */  lb         $a1, 0x2($a2)
    /* 2F1F0 8003E9F0 580082A0 */  sb         $v0, 0x58($a0)
    /* 2F1F4 8003E9F4 590083A0 */  sb         $v1, 0x59($a0)
    /* 2F1F8 8003E9F8 5A0085A0 */  sb         $a1, 0x5A($a0)
    /* 2F1FC 8003E9FC 01000234 */  ori        $v0, $zero, 0x1
    /* 2F200 8003EA00 B40080AC */  sw         $zero, 0xB4($a0)
    /* 2F204 8003EA04 0800E003 */  jr         $ra
    /* 2F208 8003EA08 B80082AC */   sw        $v0, 0xB8($a0)
endlabel func_8003E968
