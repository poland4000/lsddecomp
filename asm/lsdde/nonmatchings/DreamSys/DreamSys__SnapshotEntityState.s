.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching DreamSys__SnapshotEntityState, 0x8C

glabel DreamSys__SnapshotEntityState
    /* 4C104 8005B904 21488000 */  addu       $t1, $a0, $zero
    /* 4C108 8005B908 1400288D */  lw         $t0, 0x14($t1)
    /* 4C10C 8005B90C 90082725 */  addiu      $a3, $t1, 0x890
    /* 4C110 8005B910 21300001 */  addu       $a2, $t0, $zero
    /* 4C114 8005B914 50000A25 */  addiu      $t2, $t0, 0x50
  .Lfunc_8005B904_8005B918:
    /* 4C118 8005B918 0000C28C */  lw         $v0, 0x0($a2)
    /* 4C11C 8005B91C 0400C38C */  lw         $v1, 0x4($a2)
    /* 4C120 8005B920 0800C48C */  lw         $a0, 0x8($a2)
    /* 4C124 8005B924 0C00C58C */  lw         $a1, 0xC($a2)
    /* 4C128 8005B928 0000E2AC */  sw         $v0, 0x0($a3)
    /* 4C12C 8005B92C 0400E3AC */  sw         $v1, 0x4($a3)
    /* 4C130 8005B930 0800E4AC */  sw         $a0, 0x8($a3)
    /* 4C134 8005B934 0C00E5AC */  sw         $a1, 0xC($a3)
    /* 4C138 8005B938 1000C624 */  addiu      $a2, $a2, 0x10
    /* 4C13C 8005B93C F6FFCA14 */  bne        $a2, $t2, .Lfunc_8005B904_8005B918
    /* 4C140 8005B940 1000E724 */   addiu     $a3, $a3, 0x10
    /* 4C144 8005B944 4400068D */  lw         $a2, 0x44($t0)
    /* 4C148 8005B948 E0082725 */  addiu      $a3, $t1, 0x8E0
    /* 4C14C 8005B94C 2000C824 */  addiu      $t0, $a2, 0x20
  .Lfunc_8005B904_8005B950:
    /* 4C150 8005B950 0000C28C */  lw         $v0, 0x0($a2)
    /* 4C154 8005B954 0400C38C */  lw         $v1, 0x4($a2)
    /* 4C158 8005B958 0800C48C */  lw         $a0, 0x8($a2)
    /* 4C15C 8005B95C 0C00C58C */  lw         $a1, 0xC($a2)
    /* 4C160 8005B960 0000E2AC */  sw         $v0, 0x0($a3)
    /* 4C164 8005B964 0400E3AC */  sw         $v1, 0x4($a3)
    /* 4C168 8005B968 0800E4AC */  sw         $a0, 0x8($a3)
    /* 4C16C 8005B96C 0C00E5AC */  sw         $a1, 0xC($a3)
    /* 4C170 8005B970 1000C624 */  addiu      $a2, $a2, 0x10
    /* 4C174 8005B974 F6FFC814 */  bne        $a2, $t0, .Lfunc_8005B904_8005B950
    /* 4C178 8005B978 1000E724 */   addiu     $a3, $a3, 0x10
    /* 4C17C 8005B97C 0000C28C */  lw         $v0, 0x0($a2)
    /* 4C180 8005B980 0400C38C */  lw         $v1, 0x4($a2)
    /* 4C184 8005B984 0000E2AC */  sw         $v0, 0x0($a3)
    /* 4C188 8005B988 0800E003 */  jr         $ra
    /* 4C18C 8005B98C 0400E3AC */   sw        $v1, 0x4($a3)
endlabel DreamSys__SnapshotEntityState
