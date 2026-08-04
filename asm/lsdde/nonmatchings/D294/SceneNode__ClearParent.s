.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching SceneNode__ClearParent, 0xC

glabel SceneNode__ClearParent
    /* EFB0 8001E7B0 180080AC */  sw         $zero, 0x18($a0)
    /* EFB4 8001E7B4 0800E003 */  jr         $ra
    /* EFB8 8001E7B8 200080AC */   sw        $zero, 0x20($a0)
endlabel SceneNode__ClearParent
