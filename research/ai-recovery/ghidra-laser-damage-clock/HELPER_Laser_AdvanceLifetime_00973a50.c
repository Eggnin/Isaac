/* Local J460 decompiler output.
 * VA: 0x00973a50
 * Entry: 00973a50
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Damage dispatch first call
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Damage dispatch first call */

void __fastcall HELPER_Laser_AdvanceLifetime(int param_1)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  float fVar6;
  undefined auStack_98 [4];
  int local_94;
  uint uStack_90;
  uint uStack_8c;
  uint uStack_88;
  uint uStack_84;
  undefined local_80 [56];
  uint uStack_48;
  uint uStack_44;
  uint uStack_40;
  uint uStack_3c;
  float fStack_38;
  uint local_14;
  
  local_14 = DAT_00bf93b4 ^ (uint)auStack_98;
  if (((((*(char *)(param_1 + 0x517) != '\0') && (*(char *)(param_1 + 0x515) == '\0')) &&
       (*(char *)(param_1 + 0x175) == '\0')) &&
      (((*(char *)(param_1 + 0x45c) != '\0' || (iVar2 = FUN_006ac760(), iVar2 != 0)) &&
       (iVar2 = *(int *)(param_1 + 0x3c8), iVar2 != 0)))) &&
     ((iVar1 = iVar2, *(int *)(iVar2 + 0x28) == 1 ||
      ((((iVar2 != 0 && (*(int *)(iVar2 + 0x28) == 3)) &&
        ((iVar1 = *(int *)(iVar2 + 0x2c), iVar1 == 0x50 ||
         (((iVar1 == 0xeb || (iVar1 == 0xf0)) || (iVar1 == 0xee)))))) &&
       (local_94 = *(int *)(iVar2 + 0x410), iVar1 = local_94, local_94 != 0)))))) {
    local_94 = iVar1;
    uVar3 = FUN_006eef60();
    FUN_007bf6c0(local_80,3,*(undefined4 *)(param_1 + 0x51c),(uVar3 & 1) * 2 + -1,iVar2);
    uStack_90 = ~DAT_00c34b40 & uStack_48;
    uStack_8c = ~DAT_00c34b44 & uStack_44;
    uStack_88 = ~DAT_00c34b48 & uStack_40;
    uStack_84 = ~DAT_00c34b4c & uStack_3c;
    *(uint *)(param_1 + 0x428) = uStack_90;
    *(uint *)(param_1 + 0x42c) = uStack_8c;
    *(uint *)(param_1 + 0x430) = uStack_88;
    *(uint *)(param_1 + 0x434) = uStack_84;
    uVar3 = DAT_00c34bcc;
    if (*(int *)(param_1 + 0x458) < 0) {
      uVar5 = ~DAT_00c34bc8;
      uVar4 = ~DAT_00c34bc4;
      *(uint *)(param_1 + 0x428) = *(uint *)(param_1 + 0x428) & ~DAT_00c34bc0;
      *(uint *)(param_1 + 0x42c) = *(uint *)(param_1 + 0x42c) & uVar4;
      *(uint *)(param_1 + 0x430) = *(uint *)(param_1 + 0x430) & uVar5;
      *(uint *)(param_1 + 0x434) = *(uint *)(param_1 + 0x434) & ~uVar3;
    }
    *(uint *)(param_1 + 0x42c) = *(uint *)(param_1 + 0x42c) & ~*(uint *)(param_1 + 0x44c);
    iVar2 = DAT_00c71678;
    *(uint *)(param_1 + 0x428) = *(uint *)(param_1 + 0x428) & ~*(uint *)(param_1 + 0x448);
    *(uint *)(param_1 + 0x430) = *(uint *)(param_1 + 0x430) & ~*(uint *)(param_1 + 0x450);
    *(uint *)(param_1 + 0x434) = *(uint *)(param_1 + 0x434) & ~*(uint *)(param_1 + 0x454);
    fVar6 = DAT_00baa454;
    if ((1 < *(int *)(iVar2 + 0x26614)) && (*(int *)(param_1 + 0x30) == 2)) {
      fVar6 = DAT_00baa2d0;
    }
    *(float *)(param_1 + 0x388) = fStack_38 * fVar6;
  }
  FUN_00aef12b();
  return;
}

