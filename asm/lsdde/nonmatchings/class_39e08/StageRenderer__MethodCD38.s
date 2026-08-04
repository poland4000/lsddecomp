.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching StageRenderer__MethodCD38, 0x6C

glabel StageRenderer__MethodCD38
    /* 3D538 8004CD38 21308000 */  addu       $a2, $a0, $zero
    /* 3D53C 8004CD3C 1700C010 */  beqz       $a2, .Lfunc_8004CD38_8004CD9C
    /* 3D540 8004CD40 01000234 */   ori       $v0, $zero, 0x1
    /* 3D544 8004CD44 0000A390 */  lbu        $v1, 0x0($a1)
    /* 3D548 8004CD48 0000C484 */  lh         $a0, 0x0($a2)
    /* 3D54C 8004CD4C 003E0300 */  sll        $a3, $v1, 24
    /* 3D550 8004CD50 031E0700 */  sra        $v1, $a3, 24
    /* 3D554 8004CD54 2A186400 */  slt        $v1, $v1, $a0
    /* 3D558 8004CD58 10006014 */  bnez       $v1, .Lfunc_8004CD38_8004CD9C
    /* 3D55C 8004CD5C 03260700 */   sra       $a0, $a3, 24
    /* 3D560 8004CD60 0400C38C */  lw         $v1, 0x4($a2)
    /* 3D564 8004CD64 00000000 */  nop
    /* 3D568 8004CD68 2A186400 */  slt        $v1, $v1, $a0
    /* 3D56C 8004CD6C 0B006014 */  bnez       $v1, .Lfunc_8004CD38_8004CD9C
    /* 3D570 8004CD70 00000000 */   nop
    /* 3D574 8004CD74 0100A390 */  lbu        $v1, 0x1($a1)
    /* 3D578 8004CD78 0200C484 */  lh         $a0, 0x2($a2)
    /* 3D57C 8004CD7C 002E0300 */  sll        $a1, $v1, 24
    /* 3D580 8004CD80 031E0500 */  sra        $v1, $a1, 24
    /* 3D584 8004CD84 2A186400 */  slt        $v1, $v1, $a0
    /* 3D588 8004CD88 04006014 */  bnez       $v1, .Lfunc_8004CD38_8004CD9C
    /* 3D58C 8004CD8C 00000000 */   nop
    /* 3D590 8004CD90 0800C38C */  lw         $v1, 0x8($a2)
    /* 3D594 8004CD94 03160500 */  sra        $v0, $a1, 24
    /* 3D598 8004CD98 2A106200 */  slt        $v0, $v1, $v0
  .Lfunc_8004CD38_8004CD9C:
    /* 3D59C 8004CD9C 0800E003 */  jr         $ra
    /* 3D5A0 8004CDA0 00000000 */   nop
endlabel StageRenderer__MethodCD38
