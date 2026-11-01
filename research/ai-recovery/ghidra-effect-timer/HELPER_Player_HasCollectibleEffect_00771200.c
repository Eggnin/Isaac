/* Local J460 decompiler output.
 * VA: 0x00771200
 * Entry: 00771200
 * Dispatcher: 0x006c2990
 * Types: 1,1000
 * Identities: 1.*,1000.*
 * Evidence: Player HasCollectible early override
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=1,1000; identities=1.*,1000.*; Player HasCollectible
   early override */

undefined4 __thiscall HELPER_Player_HasCollectibleEffect(int param_1_00,int param_1)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  bool bVar6;
  undefined8 local_20;
  undefined local_14 [8];
  int local_c;
  
  iVar4 = DAT_00c7169c;
  iVar5 = DAT_00c7169c + 0x14;
  if (*(int *)(DAT_00c7169c + 0x4b3d8) != *(int *)(DAT_00c7169c + 0x4b3dc)) {
    iVar1 = *(int *)(param_1_00 + 0x1e50);
    if (iVar1 == 0) {
      local_20._4_4_ = 0;
      local_20._0_4_ = 0;
      uVar2 = (uint)local_20;
      uVar3 = local_20._4_4_;
    }
    else {
      uVar2 = *(uint *)(iVar1 + 8);
      uVar3 = *(uint *)(iVar1 + 0xc);
    }
    local_20 = CONCAT44(uVar3,uVar2);
    FUN_00731ee0(local_14,&local_20);
    if ((((*(char *)(local_c + 0xd) == '\0') && (*(uint *)(local_c + 0x14) <= uVar3)) &&
        ((*(uint *)(local_c + 0x14) < uVar3 || (*(uint *)(local_c + 0x10) <= uVar2)))) &&
       ((local_c != *(int *)(iVar4 + 0x4c440) &&
        (iVar1 = FUN_00914150(&local_20), iVar4 = DAT_00c7169c, iVar1 != 0)))) {
      iVar5 = iVar1;
    }
  }
  iVar1 = *(int *)(param_1_00 + 0x13c0);
  if (iVar1 == 0xd) {
    if (param_1 == 0x168) {
      return 1;
    }
    if (param_1 == 0x19c) {
      return 1;
    }
  }
  else if (iVar1 == 10) {
    if (param_1 == 0x139) {
      if (*(char *)(iVar5 + 0x132) == '\0') {
        if (*(int *)(iVar4 + 8) != 2) {
          return 0;
        }
        if (DAT_00c71678 == 0) {
          return 0;
        }
        if ((*(int *)(DAT_00c71678 + 0x26630) == 0) && (*(char *)(DAT_00c71678 + 0x26589) == '\0'))
        {
          return 0;
        }
      }
      return 1;
    }
  }
  else {
    if (iVar1 == 2) {
      bVar6 = param_1 == 0x2e;
    }
    else if (iVar1 == 5) {
      if (param_1 == 0x7a) {
        return 1;
      }
      bVar6 = param_1 == 0x75;
    }
    else if (iVar1 == 6) {
      bVar6 = param_1 == 0x9d;
    }
    else if ((iVar1 == 8) || (iVar1 == 0xb)) {
      if (param_1 != 0xd6) {
        return 0;
      }
      if (*(char *)(iVar5 + 0x183) == '\0') {
        if (*(int *)(iVar4 + 8) != 2) {
          return 0;
        }
        if (DAT_00c71678 == 0) {
          return 0;
        }
        if ((*(int *)(DAT_00c71678 + 0x26630) == 0) && (*(char *)(DAT_00c71678 + 0x26589) == '\0'))
        {
          return 0;
        }
      }
      if (iVar1 == 0xb) {
        return 1;
      }
      bVar6 = *(int *)(DAT_00c71678 + 0x26584) == 0;
    }
    else {
      if (iVar1 != 0x12) {
        return 0;
      }
      if (*(int *)(DAT_00c71678 + 0x26584) == 0x25) {
        return 0;
      }
      if (*(int *)(DAT_00c71678 + 0x26584) == 0x26) {
        return 0;
      }
      bVar6 = param_1 == 0x248;
    }
    if (bVar6) {
      return 1;
    }
  }
  return 0;
}

