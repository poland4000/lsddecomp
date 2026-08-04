.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching ActorBase__FindChildOfType, 0x13C

glabel ActorBase__FindChildOfType
    /* 48218 80057A18 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 4821C 80057A1C 3400B5AF */  sw         $s5, 0x34($sp)
    /* 48220 80057A20 21A8A000 */  addu       $s5, $a1, $zero
    /* 48224 80057A24 3800B6AF */  sw         $s6, 0x38($sp)
    /* 48228 80057A28 21B0C000 */  addu       $s6, $a2, $zero
    /* 4822C 80057A2C 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 48230 80057A30 2198E000 */  addu       $s3, $a3, $zero
    /* 48234 80057A34 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 48238 80057A38 3000B4AF */  sw         $s4, 0x30($sp)
    /* 4823C 80057A3C 2800B2AF */  sw         $s2, 0x28($sp)
    /* 48240 80057A40 2400B1AF */  sw         $s1, 0x24($sp)
    /* 48244 80057A44 2000B0AF */  sw         $s0, 0x20($sp)
    /* 48248 80057A48 02006386 */  lh         $v1, 0x2($s3)
    /* 4824C 80057A4C 21A00000 */  addu       $s4, $zero, $zero
    /* 48250 80057A50 80100300 */  sll        $v0, $v1, 2
    /* 48254 80057A54 21104300 */  addu       $v0, $v0, $v1
    /* 48258 80057A58 5000A38F */  lw         $v1, 0x50($sp)
    /* 4825C 80057A5C 00110200 */  sll        $v0, $v0, 4
    /* 48260 80057A60 1000648C */  lw         $a0, 0x10($v1)
    /* 48264 80057A64 00006386 */  lh         $v1, 0x0($s3)
    /* 48268 80057A68 21104400 */  addu       $v0, $v0, $a0
    /* 4826C 80057A6C 80180300 */  sll        $v1, $v1, 2
    /* 48270 80057A70 0800648E */  lw         $a0, 0x8($s3)
    /* 48274 80057A74 00000000 */  nop
    /* 48278 80057A78 2A008018 */  blez       $a0, .Lfunc_80057A18_80057B24
    /* 4827C 80057A7C 21884300 */   addu      $s1, $v0, $v1
  .Lfunc_80057A18_80057A80:
    /* 48280 80057A80 0400628E */  lw         $v0, 0x4($s3)
    /* 48284 80057A84 00000000 */  nop
    /* 48288 80057A88 1E004018 */  blez       $v0, .Lfunc_80057A18_80057B04
    /* 4828C 80057A8C 21900000 */   addu      $s2, $zero, $zero
  .Lfunc_80057A18_80057A90:
    /* 48290 80057A90 0000248E */  lw         $a0, 0x0($s1)
    /* 48294 80057A94 2128A002 */  addu       $a1, $s5, $zero
    /* 48298 80057A98 D55E010C */  jal        ActorBase__SafeCast
    /* 4829C 80057A9C 2130C002 */   addu      $a2, $s6, $zero
    /* 482A0 80057AA0 04004010 */  beqz       $v0, .Lfunc_80057A18_80057AB4
    /* 482A4 80057AA4 00000000 */   nop
    /* 482A8 80057AA8 0000228E */  lw         $v0, 0x0($s1)
    /* 482AC 80057AAC CA5E0108 */  j          .Lfunc_80057A18_80057B28
    /* 482B0 80057AB0 00000000 */   nop
  .Lfunc_80057A18_80057AB4:
    /* 482B4 80057AB4 0000228E */  lw         $v0, 0x0($s1)
    /* 482B8 80057AB8 00000000 */  nop
    /* 482BC 80057ABC 3800508C */  lw         $s0, 0x38($v0)
    /* 482C0 80057AC0 00000000 */  nop
    /* 482C4 80057AC4 0A000012 */  beqz       $s0, .Lfunc_80057A18_80057AF0
    /* 482C8 80057AC8 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_80057A18_80057ACC:
    /* 482CC 80057ACC 2128A002 */  addu       $a1, $s5, $zero
    /* 482D0 80057AD0 D55E010C */  jal        ActorBase__SafeCast
    /* 482D4 80057AD4 2130C002 */   addu      $a2, $s6, $zero
    /* 482D8 80057AD8 13004014 */  bnez       $v0, .Lfunc_80057A18_80057B28
    /* 482DC 80057ADC 21100002 */   addu      $v0, $s0, $zero
    /* 482E0 80057AE0 3800108E */  lw         $s0, 0x38($s0)
    /* 482E4 80057AE4 00000000 */  nop
    /* 482E8 80057AE8 F8FF0016 */  bnez       $s0, .Lfunc_80057A18_80057ACC
    /* 482EC 80057AEC 21200002 */   addu      $a0, $s0, $zero
  .Lfunc_80057A18_80057AF0:
    /* 482F0 80057AF0 0400628E */  lw         $v0, 0x4($s3)
    /* 482F4 80057AF4 01005226 */  addiu      $s2, $s2, 0x1
    /* 482F8 80057AF8 2A104202 */  slt        $v0, $s2, $v0
    /* 482FC 80057AFC E4FF4014 */  bnez       $v0, .Lfunc_80057A18_80057A90
    /* 48300 80057B00 04003126 */   addiu     $s1, $s1, 0x4
  .Lfunc_80057A18_80057B04:
    /* 48304 80057B04 01009426 */  addiu      $s4, $s4, 0x1
    /* 48308 80057B08 0400638E */  lw         $v1, 0x4($s3)
    /* 4830C 80057B0C 0800628E */  lw         $v0, 0x8($s3)
    /* 48310 80057B10 80180300 */  sll        $v1, $v1, 2
    /* 48314 80057B14 50006324 */  addiu      $v1, $v1, 0x50
    /* 48318 80057B18 2A108202 */  slt        $v0, $s4, $v0
    /* 4831C 80057B1C D8FF4014 */  bnez       $v0, .Lfunc_80057A18_80057A80
    /* 48320 80057B20 23882302 */   subu      $s1, $s1, $v1
  .Lfunc_80057A18_80057B24:
    /* 48324 80057B24 21100000 */  addu       $v0, $zero, $zero
  .Lfunc_80057A18_80057B28:
    /* 48328 80057B28 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 4832C 80057B2C 3800B68F */  lw         $s6, 0x38($sp)
    /* 48330 80057B30 3400B58F */  lw         $s5, 0x34($sp)
    /* 48334 80057B34 3000B48F */  lw         $s4, 0x30($sp)
    /* 48338 80057B38 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 4833C 80057B3C 2800B28F */  lw         $s2, 0x28($sp)
    /* 48340 80057B40 2400B18F */  lw         $s1, 0x24($sp)
    /* 48344 80057B44 2000B08F */  lw         $s0, 0x20($sp)
    /* 48348 80057B48 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 4834C 80057B4C 0800E003 */  jr         $ra
    /* 48350 80057B50 00000000 */   nop
endlabel ActorBase__FindChildOfType
