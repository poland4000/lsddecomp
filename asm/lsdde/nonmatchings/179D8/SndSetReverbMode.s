.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SndSetReverbMode, 0xA4

glabel SndSetReverbMode
    /* 26864 80036064 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 26868 80036068 21280000 */  addu       $a1, $zero, $zero
    /* 2686C 8003606C 21188000 */  addu       $v1, $a0, $zero
    /* 26870 80036070 00140400 */  sll        $v0, $a0, 16
    /* 26874 80036074 1400BFAF */  sw         $ra, 0x14($sp)
    /* 26878 80036078 03004104 */  bgez       $v0, .Lfunc_80036064_80036088
    /* 2687C 8003607C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 26880 80036080 01000534 */  ori        $a1, $zero, 0x1
    /* 26884 80036084 23180400 */  negu       $v1, $a0
  .Lfunc_80036064_80036088:
    /* 26888 80036088 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 2688C 8003608C 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 26890 80036090 17004010 */  beqz       $v0, .Lfunc_80036064_800360F0
    /* 26894 80036094 01000234 */   ori       $v0, $zero, 0x1
    /* 26898 80036098 0980013C */  lui        $at, %hi(gSpuCmdBlock)
    /* 2689C 8003609C 58E222AC */  sw         $v0, %lo(gSpuCmdBlock)($at)
    /* 268A0 800360A0 0300A010 */  beqz       $a1, .Lfunc_80036064_800360B0
    /* 268A4 800360A4 00016234 */   ori       $v0, $v1, 0x100
    /* 268A8 800360A8 2DD80008 */  j          .Lfunc_80036064_800360B4
    /* 268AC 800360AC 00140200 */   sll       $v0, $v0, 16
  .Lfunc_80036064_800360B0:
    /* 268B0 800360B0 00140300 */  sll        $v0, $v1, 16
  .Lfunc_80036064_800360B4:
    /* 268B4 800360B4 03140200 */  sra        $v0, $v0, 16
    /* 268B8 800360B8 0980013C */  lui        $at, %hi(gReverbDepth)
    /* 268BC 800360BC 5CE222AC */  sw         $v0, %lo(gReverbDepth)($at)
    /* 268C0 800360C0 00140300 */  sll        $v0, $v1, 16
    /* 268C4 800360C4 03840200 */  sra        $s0, $v0, 16
    /* 268C8 800360C8 03000016 */  bnez       $s0, .Lfunc_80036064_800360D8
    /* 268CC 800360CC 00000000 */   nop
    /* 268D0 800360D0 5DE3000C */  jal        func_80038D74
    /* 268D4 800360D4 21200000 */   addu      $a0, $zero, $zero
  .Lfunc_80036064_800360D8:
    /* 268D8 800360D8 0980043C */  lui        $a0, %hi(gSpuCmdBlock)
    /* 268DC 800360DC 58E28424 */  addiu      $a0, $a0, %lo(gSpuCmdBlock)
    /* 268E0 800360E0 C8DA000C */  jal        SpuWriteCommand
    /* 268E4 800360E4 00000000 */   nop
    /* 268E8 800360E8 3DD80008 */  j          .Lfunc_80036064_800360F4
    /* 268EC 800360EC 21100002 */   addu      $v0, $s0, $zero
  .Lfunc_80036064_800360F0:
    /* 268F0 800360F0 FFFF0224 */  addiu      $v0, $zero, -0x1
  .Lfunc_80036064_800360F4:
    /* 268F4 800360F4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 268F8 800360F8 1000B08F */  lw         $s0, 0x10($sp)
    /* 268FC 800360FC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 26900 80036100 0800E003 */  jr         $ra
    /* 26904 80036104 00000000 */   nop
endlabel SndSetReverbMode
