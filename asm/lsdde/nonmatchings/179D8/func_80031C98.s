.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80031C98, 0x58

glabel func_80031C98
    /* 22498 80031C98 FFFF8230 */  andi       $v0, $a0, 0xFFFF
    /* 2249C 80031C9C 1800422C */  sltiu      $v0, $v0, 0x18
    /* 224A0 80031CA0 03004014 */  bnez       $v0, .Lfunc_80031C98_80031CB0
    /* 224A4 80031CA4 001C0400 */   sll       $v1, $a0, 16
    /* 224A8 80031CA8 3AC70008 */  j          .Lfunc_80031C98_80031CE8
    /* 224AC 80031CAC FFFF0224 */   addiu     $v0, $zero, -0x1
  .Lfunc_80031C98_80031CB0:
    /* 224B0 80031CB0 0780023C */  lui        $v0, %hi(D_8006DAD4)
    /* 224B4 80031CB4 D4DA428C */  lw         $v0, %lo(D_8006DAD4)($v0)
    /* 224B8 80031CB8 031B0300 */  sra        $v1, $v1, 12
    /* 224BC 80031CBC 21106200 */  addu       $v0, $v1, $v0
    /* 224C0 80031CC0 00004294 */  lhu        $v0, 0x0($v0)
    /* 224C4 80031CC4 00000000 */  nop
    /* 224C8 80031CC8 0000A2A4 */  sh         $v0, 0x0($a1)
    /* 224CC 80031CCC 0780023C */  lui        $v0, %hi(D_8006DAD4)
    /* 224D0 80031CD0 D4DA428C */  lw         $v0, %lo(D_8006DAD4)($v0)
    /* 224D4 80031CD4 00000000 */  nop
    /* 224D8 80031CD8 21186200 */  addu       $v1, $v1, $v0
    /* 224DC 80031CDC 02006394 */  lhu        $v1, 0x2($v1)
    /* 224E0 80031CE0 21100000 */  addu       $v0, $zero, $zero
    /* 224E4 80031CE4 0000C3A4 */  sh         $v1, 0x0($a2)
  .Lfunc_80031C98_80031CE8:
    /* 224E8 80031CE8 0800E003 */  jr         $ra
    /* 224EC 80031CEC 00000000 */   nop
endlabel func_80031C98
