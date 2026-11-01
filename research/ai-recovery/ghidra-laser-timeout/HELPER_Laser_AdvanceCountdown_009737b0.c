/* Local J460 decompiler output.
 * VA: 0x009737b0
 * Entry: 009737b0
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Active laser dispatch tail
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Active laser dispatch tail */

void __fastcall HELPER_Laser_AdvanceCountdown(int param_1)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float local_10;
  float local_c;
  
  *(undefined4 *)(param_1 + 0x544) = 0x7f800000;
  iVar4 = *(int *)(param_1 + 0x480);
  uVar2 = *(int *)(param_1 + 0x484) - iVar4 >> 3;
  if (1 < uVar2) {
    *(undefined4 *)(param_1 + 0x548) = *(undefined4 *)(iVar4 + -8 + uVar2 * 8);
    *(undefined4 *)(param_1 + 0x54c) = *(undefined4 *)(iVar4 + -4 + uVar2 * 8);
    iVar3 = *(int *)(param_1 + 0x484) - iVar4 >> 3;
    fVar8 = *(float *)(iVar4 + -8 + iVar3 * 8) - *(float *)(iVar4 + -0x10 + iVar3 * 8);
    fVar9 = *(float *)(iVar4 + -4 + iVar3 * 8) - *(float *)(iVar4 + -0xc + iVar3 * 8);
    fVar7 = fVar8 * fVar8 + fVar9 * fVar9;
    FUN_00435a50();
    if (DAT_00ba9fe4 < fVar7) {
      fVar8 = fVar8 * (DAT_00baa454 / fVar7);
      fVar9 = fVar9 * (DAT_00baa454 / fVar7);
    }
    *(float *)(param_1 + 0x550) = fVar8;
    *(float *)(param_1 + 0x554) = fVar9;
  }
  if ((*(char *)(param_1 + 0x515) == '\0') || (*(char *)(param_1 + 0x45c) != '\0')) {
    local_10 = *(float *)(param_1 + 0x34c) * DAT_00baa280;
    local_c = *(float *)(param_1 + 0x350) * DAT_00baa280;
    FUN_00970cb0(1,&local_10);
  }
  local_10 = *(float *)(param_1 + 0x388);
  iVar4 = *(int *)(param_1 + 0x3c8);
  if ((iVar4 != 0) && (*(int *)(iVar4 + 0x28) != 1)) {
    iVar4 = 0;
  }
  uVar2 = *(uint *)(param_1 + 0x42c) & DAT_00c34c44;
  uVar5 = *(uint *)(param_1 + 0x428) & DAT_00c34c40;
  uVar6 = *(uint *)(param_1 + 0x430) & DAT_00c34c48;
  uVar1 = *(uint *)(param_1 + 0x434) & DAT_00c34c4c;
  if (((uVar5 | uVar2) == 0) && ((uVar6 | uVar1) == 0)) {
    if (((*(uint *)(param_1 + 0x428) & DAT_00c34b30 | *(uint *)(param_1 + 0x42c) & DAT_00c34b34) ==
         0) && ((*(uint *)(param_1 + 0x430) & DAT_00c34b38 |
                *(uint *)(param_1 + 0x434) & DAT_00c34b3c) == 0)) goto LAB_00973a3a;
  }
  if ((*(int *)(param_1 + 0x30) == 1) || (*(int *)(param_1 + 0x30) == 2)) {
    if (iVar4 != 0) {
      FUN_00435a50();
    }
    if (((uVar5 | uVar2) == 0) && ((uVar6 | uVar1) == 0)) {
      FUN_00971810();
      return;
    }
  }
LAB_00973a3a:
  FUN_00971810();
  return;
}

