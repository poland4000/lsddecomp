.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching CdAudioRegsInit, 0xF4

glabel CdAudioRegsInit
    /* 1ADF8 8002A5F8 0780033C */  lui        $v1, %hi(gpSpuRegs)
    /* 1ADFC 8002A5FC D4D8638C */  lw         $v1, %lo(gpSpuRegs)($v1)
    /* 1AE00 8002A600 00000000 */  nop
    /* 1AE04 8002A604 B8016294 */  lhu        $v0, 0x1B8($v1)
    /* 1AE08 8002A608 00000000 */  nop
    /* 1AE0C 8002A60C 09004014 */  bnez       $v0, .Lfunc_8002A5F8_8002A634
    /* 1AE10 8002A610 F8FFBD27 */   addiu     $sp, $sp, -0x8
    /* 1AE14 8002A614 BA016294 */  lhu        $v0, 0x1BA($v1)
    /* 1AE18 8002A618 00000000 */  nop
    /* 1AE1C 8002A61C 06004014 */  bnez       $v0, .Lfunc_8002A5F8_8002A638
    /* 1AE20 8002A620 FF3F0234 */   ori       $v0, $zero, 0x3FFF
    /* 1AE24 8002A624 800162A4 */  sh         $v0, 0x180($v1)
    /* 1AE28 8002A628 820162A4 */  sh         $v0, 0x182($v1)
    /* 1AE2C 8002A62C 0780033C */  lui        $v1, %hi(gpSpuRegs)
    /* 1AE30 8002A630 D4D8638C */  lw         $v1, %lo(gpSpuRegs)($v1)
  .Lfunc_8002A5F8_8002A634:
    /* 1AE34 8002A634 FF3F0234 */  ori        $v0, $zero, 0x3FFF
  .Lfunc_8002A5F8_8002A638:
    /* 1AE38 8002A638 B00162A4 */  sh         $v0, 0x1B0($v1)
    /* 1AE3C 8002A63C B20162A4 */  sh         $v0, 0x1B2($v1)
    /* 1AE40 8002A640 01C00234 */  ori        $v0, $zero, 0xC001
    /* 1AE44 8002A644 AA0162A4 */  sh         $v0, 0x1AA($v1)
    /* 1AE48 8002A648 0780033C */  lui        $v1, %hi(gpCdRegIndex)
    /* 1AE4C 8002A64C C0D8638C */  lw         $v1, %lo(gpCdRegIndex)($v1)
    /* 1AE50 8002A650 80000234 */  ori        $v0, $zero, 0x80
    /* 1AE54 8002A654 0200A2A3 */  sb         $v0, 0x2($sp)
    /* 1AE58 8002A658 0000A2A3 */  sb         $v0, 0x0($sp)
    /* 1AE5C 8002A65C 02000234 */  ori        $v0, $zero, 0x2
    /* 1AE60 8002A660 0300A0A3 */  sb         $zero, 0x3($sp)
    /* 1AE64 8002A664 0100A0A3 */  sb         $zero, 0x1($sp)
    /* 1AE68 8002A668 000062A0 */  sb         $v0, 0x0($v1)
    /* 1AE6C 8002A66C 0780033C */  lui        $v1, %hi(gpCdRegAck)
    /* 1AE70 8002A670 C8D8638C */  lw         $v1, %lo(gpCdRegAck)($v1)
    /* 1AE74 8002A674 0000A293 */  lbu        $v0, 0x0($sp)
    /* 1AE78 8002A678 00000000 */  nop
    /* 1AE7C 8002A67C 000062A0 */  sb         $v0, 0x0($v1)
    /* 1AE80 8002A680 0780033C */  lui        $v1, %hi(gpCdRegStat)
    /* 1AE84 8002A684 CCD8638C */  lw         $v1, %lo(gpCdRegStat)($v1)
    /* 1AE88 8002A688 0100A293 */  lbu        $v0, 0x1($sp)
    /* 1AE8C 8002A68C 00000000 */  nop
    /* 1AE90 8002A690 000062A0 */  sb         $v0, 0x0($v1)
    /* 1AE94 8002A694 0780033C */  lui        $v1, %hi(gpCdRegIndex)
    /* 1AE98 8002A698 C0D8638C */  lw         $v1, %lo(gpCdRegIndex)($v1)
    /* 1AE9C 8002A69C 03000234 */  ori        $v0, $zero, 0x3
    /* 1AEA0 8002A6A0 000062A0 */  sb         $v0, 0x0($v1)
    /* 1AEA4 8002A6A4 0780033C */  lui        $v1, %hi(gpCdRegParam)
    /* 1AEA8 8002A6A8 C4D8638C */  lw         $v1, %lo(gpCdRegParam)($v1)
    /* 1AEAC 8002A6AC 0200A293 */  lbu        $v0, 0x2($sp)
    /* 1AEB0 8002A6B0 00000000 */  nop
    /* 1AEB4 8002A6B4 000062A0 */  sb         $v0, 0x0($v1)
    /* 1AEB8 8002A6B8 0780033C */  lui        $v1, %hi(gpCdRegAck)
    /* 1AEBC 8002A6BC C8D8638C */  lw         $v1, %lo(gpCdRegAck)($v1)
    /* 1AEC0 8002A6C0 0300A293 */  lbu        $v0, 0x3($sp)
    /* 1AEC4 8002A6C4 00000000 */  nop
    /* 1AEC8 8002A6C8 000062A0 */  sb         $v0, 0x0($v1)
    /* 1AECC 8002A6CC 0780033C */  lui        $v1, %hi(gpCdRegStat)
    /* 1AED0 8002A6D0 CCD8638C */  lw         $v1, %lo(gpCdRegStat)($v1)
    /* 1AED4 8002A6D4 20000234 */  ori        $v0, $zero, 0x20
    /* 1AED8 8002A6D8 000062A0 */  sb         $v0, 0x0($v1)
    /* 1AEDC 8002A6DC 21100000 */  addu       $v0, $zero, $zero
    /* 1AEE0 8002A6E0 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 1AEE4 8002A6E4 0800E003 */  jr         $ra
    /* 1AEE8 8002A6E8 00000000 */   nop
endlabel CdAudioRegsInit
