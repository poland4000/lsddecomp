.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamScene__Constructor, 0x1AC

glabel DreamScene__Constructor
    /* 39E84 80049684 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 39E88 80049688 2400B1AF */  sw         $s1, 0x24($sp)
    /* 39E8C 8004968C 21888000 */  addu       $s1, $a0, $zero
    /* 39E90 80049690 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 39E94 80049694 2198A000 */  addu       $s3, $a1, $zero
    /* 39E98 80049698 2800B2AF */  sw         $s2, 0x28($sp)
    /* 39E9C 8004969C 2190C000 */  addu       $s2, $a2, $zero
    /* 39EA0 800496A0 3000B4AF */  sw         $s4, 0x30($sp)
    /* 39EA4 800496A4 21A0E000 */  addu       $s4, $a3, $zero
    /* 39EA8 800496A8 21200000 */  addu       $a0, $zero, $zero
    /* 39EAC 800496AC 3400BFAF */  sw         $ra, 0x34($sp)
    /* 39EB0 800496B0 8223010C */  jal        Dreamer__GetInstance
    /* 39EB4 800496B4 2000B0AF */   sw        $s0, 0x20($sp)
    /* 39EB8 800496B8 2E29010C */  jal        SceneObj__GetVtable
    /* 39EBC 800496BC 21804000 */   addu      $s0, $v0, $zero
    /* 39EC0 800496C0 21202002 */  addu       $a0, $s1, $zero
    /* 39EC4 800496C4 21280002 */  addu       $a1, $s0, $zero
    /* 39EC8 800496C8 0800428C */  lw         $v0, 0x8($v0)
    /* 39ECC 800496CC 00000000 */  nop
    /* 39ED0 800496D0 09F84000 */  jalr       $v0
    /* 39ED4 800496D4 21300000 */   addu      $a2, $zero, $zero
    /* 39ED8 800496D8 1828010C */  jal        DreamScene__GetVtable
    /* 39EDC 800496DC 00000000 */   nop
    /* 39EE0 800496E0 4271010C */  jal        EntityMgr__Init
    /* 39EE4 800496E4 000022AE */   sw        $v0, 0x0($s1)
    /* 39EE8 800496E8 0180043C */  lui        $a0, %hi(strEtcTim)
    /* 39EEC 800496EC EC138424 */  addiu      $a0, $a0, %lo(strEtcTim)
    /* 39EF0 800496F0 E7EC000C */  jal        LoadFileObj
    /* 39EF4 800496F4 00000000 */   nop
    /* 39EF8 800496F8 440022AE */  sw         $v0, 0x44($s1)
    /* 39EFC 800496FC 0000438C */  lw         $v1, 0x0($v0)
    /* 39F00 80049700 00000000 */  nop
    /* 39F04 80049704 7800638C */  lw         $v1, 0x78($v1)
    /* 39F08 80049708 00000000 */  nop
    /* 39F0C 8004970C 09F86000 */  jalr       $v1
    /* 39F10 80049710 21204000 */   addu      $a0, $v0, $zero
    /* 39F14 80049714 4400248E */  lw         $a0, 0x44($s1)
    /* 39F18 80049718 00000000 */  nop
    /* 39F1C 8004971C 0000828C */  lw         $v0, 0x0($a0)
    /* 39F20 80049720 00000000 */  nop
    /* 39F24 80049724 5C00428C */  lw         $v0, 0x5C($v0)
    /* 39F28 80049728 00000000 */  nop
    /* 39F2C 8004972C 09F84000 */  jalr       $v0
    /* 39F30 80049730 00000000 */   nop
    /* 39F34 80049734 1000A427 */  addiu      $a0, $sp, 0x10
    /* 39F38 80049738 0180023C */  lui        $v0, %hi(strDreamerTmd)
    /* 39F3C 8004973C F8134224 */  addiu      $v0, $v0, %lo(strDreamerTmd)
    /* 39F40 80049740 1000A0AF */  sw         $zero, 0x10($sp)
    /* 39F44 80049744 100E010C */  jal        LoadTmdModel
    /* 39F48 80049748 1400A2AF */   sw        $v0, 0x14($sp)
    /* 39F4C 8004974C 21200000 */  addu       $a0, $zero, $zero
    /* 39F50 80049750 5D23010C */  jal        Dreamer__GetModel
    /* 39F54 80049754 480022AE */   sw        $v0, 0x48($s1)
    /* 39F58 80049758 21204000 */  addu       $a0, $v0, $zero
    /* 39F5C 8004975C 21280000 */  addu       $a1, $zero, $zero
    /* 39F60 80049760 38E6000C */  jal        SysMgr__GetHandle
    /* 39F64 80049764 01000634 */   ori       $a2, $zero, 0x1
    /* 39F68 80049768 01000434 */  ori        $a0, $zero, 0x1
    /* 39F6C 8004976C 1C28010C */  jal        SceneObj__ResetStatic
    /* 39F70 80049770 400022AE */   sw        $v0, 0x40($s1)
    /* 39F74 80049774 0100842E */  sltiu      $a0, $s4, 0x1
    /* 39F78 80049778 01000534 */  ori        $a1, $zero, 0x1
    /* 39F7C 8004977C CD9B000C */  jal        CdDrvWaitReady
    /* 39F80 80049780 01000634 */   ori       $a2, $zero, 0x1
    /* 39F84 80049784 9534010C */  jal        Camera__Create
    /* 39F88 80049788 0C0033AE */   sw        $s3, 0xC($s1)
    /* 39F8C 8004978C 0009010C */  jal        func_80042400
    /* 39F90 80049790 100062AE */   sw        $v0, 0x10($s3)
    /* 39F94 80049794 21200000 */  addu       $a0, $zero, $zero
    /* 39F98 80049798 01000534 */  ori        $a1, $zero, 0x1
    /* 39F9C 8004979C 3229010C */  jal        StageRenderer__Create
    /* 39FA0 800497A0 080062AE */   sw        $v0, 0x8($s3)
    /* 39FA4 800497A4 0C0062AE */  sw         $v0, 0xC($s3)
    /* 39FA8 800497A8 0000228E */  lw         $v0, 0x0($s1)
    /* 39FAC 800497AC 21202002 */  addu       $a0, $s1, $zero
    /* 39FB0 800497B0 380032AE */  sw         $s2, 0x38($s1)
    /* 39FB4 800497B4 1000428C */  lw         $v0, 0x10($v0)
    /* 39FB8 800497B8 00000000 */  nop
    /* 39FBC 800497BC 09F84000 */  jalr       $v0
    /* 39FC0 800497C0 21284002 */   addu      $a1, $s2, $zero
    /* 39FC4 800497C4 0000428E */  lw         $v0, 0x0($s2)
    /* 39FC8 800497C8 3400258E */  lw         $a1, 0x34($s1)
    /* 39FCC 800497CC 0C01428C */  lw         $v0, 0x10C($v0)
    /* 39FD0 800497D0 00000000 */  nop
    /* 39FD4 800497D4 09F84000 */  jalr       $v0
    /* 39FD8 800497D8 21204002 */   addu      $a0, $s2, $zero
    /* 39FDC 800497DC 0000428E */  lw         $v0, 0x0($s2)
    /* 39FE0 800497E0 4400258E */  lw         $a1, 0x44($s1)
    /* 39FE4 800497E4 1401428C */  lw         $v0, 0x114($v0)
    /* 39FE8 800497E8 00000000 */  nop
    /* 39FEC 800497EC 09F84000 */  jalr       $v0
    /* 39FF0 800497F0 21204002 */   addu      $a0, $s2, $zero
    /* 39FF4 800497F4 0000228E */  lw         $v0, 0x0($s1)
    /* 39FF8 800497F8 00000000 */  nop
    /* 39FFC 800497FC 4000428C */  lw         $v0, 0x40($v0)
    /* 3A000 80049800 00000000 */  nop
    /* 3A004 80049804 09F84000 */  jalr       $v0
    /* 3A008 80049808 21202002 */   addu      $a0, $s1, $zero
    /* 3A00C 8004980C 3400BF8F */  lw         $ra, 0x34($sp)
    /* 3A010 80049810 3000B48F */  lw         $s4, 0x30($sp)
    /* 3A014 80049814 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 3A018 80049818 2800B28F */  lw         $s2, 0x28($sp)
    /* 3A01C 8004981C 2400B18F */  lw         $s1, 0x24($sp)
    /* 3A020 80049820 2000B08F */  lw         $s0, 0x20($sp)
    /* 3A024 80049824 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 3A028 80049828 0800E003 */  jr         $ra
    /* 3A02C 8004982C 00000000 */   nop
endlabel DreamScene__Constructor
