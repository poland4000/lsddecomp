.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndVoiceControl, 0x90

glabel SndVoiceControl
    /* 221B4 800319B4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 221B8 800319B8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 221BC 800319BC 21888000 */  addu       $s1, $a0, $zero
    /* 221C0 800319C0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 221C4 800319C4 00940500 */  sll        $s2, $a1, 16
    /* 221C8 800319C8 03941200 */  sra        $s2, $s2, 16
    /* 221CC 800319CC 21204002 */  addu       $a0, $s2, $zero
    /* 221D0 800319D0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 221D4 800319D4 00840600 */  sll        $s0, $a2, 16
    /* 221D8 800319D8 03841000 */  sra        $s0, $s0, 16
    /* 221DC 800319DC 2400B3AF */  sw         $s3, 0x24($sp)
    /* 221E0 800319E0 4000B397 */  lhu        $s3, 0x40($sp)
    /* 221E4 800319E4 2800BFAF */  sw         $ra, 0x28($sp)
    /* 221E8 800319E8 52C8000C */  jal        SndValidateSeqChannel
    /* 221EC 800319EC 21280002 */   addu      $a1, $s0, $zero
    /* 221F0 800319F0 008C1100 */  sll        $s1, $s1, 16
    /* 221F4 800319F4 03241100 */  sra        $a0, $s1, 16
    /* 221F8 800319F8 21000534 */  ori        $a1, $zero, 0x21
    /* 221FC 800319FC 21000234 */  ori        $v0, $zero, 0x21
    /* 22200 80031A00 21304002 */  addu       $a2, $s2, $zero
    /* 22204 80031A04 21380002 */  addu       $a3, $s0, $zero
    /* 22208 80031A08 0980013C */  lui        $at, %hi(D_8008EA22)
    /* 2220C 80031A0C 22EA22A4 */  sh         $v0, %lo(D_8008EA22)($at)
    /* 22210 80031A10 FABC000C */  jal        SndVoiceEffect
    /* 22214 80031A14 1000B3AF */   sw        $s3, 0x10($sp)
    /* 22218 80031A18 00140200 */  sll        $v0, $v0, 16
    /* 2221C 80031A1C 0100422C */  sltiu      $v0, $v0, 0x1
    /* 22220 80031A20 23100200 */  negu       $v0, $v0
    /* 22224 80031A24 2800BF8F */  lw         $ra, 0x28($sp)
    /* 22228 80031A28 2400B38F */  lw         $s3, 0x24($sp)
    /* 2222C 80031A2C 2000B28F */  lw         $s2, 0x20($sp)
    /* 22230 80031A30 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 22234 80031A34 1800B08F */  lw         $s0, 0x18($sp)
    /* 22238 80031A38 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2223C 80031A3C 0800E003 */  jr         $ra
    /* 22240 80031A40 00000000 */   nop
endlabel SndVoiceControl
