/* Local J460 decompiler output.
 * VA: 0x006d7230
 * Entry: 006d7230
 * Dispatcher: 0x006c2990
 * Types: 
 * Identities: common_damage_filter
 * Evidence: Reads +0xC40 and rescales queued damage against MaxHealth
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=; identities=common_damage_filter; Reads +0xC40 and
   rescales queued damage against MaxHealth */

void __fastcall HELPER_006d7230_ShieldDamageAbsorption(int param_1)

{
  uint uVar1;
  char cVar2;
  uint uVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  float *pfVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  int local_24;
  uint local_20;
  uint local_14 [4];
  
  cVar2 = FUN_006a8db0();
  local_24 = param_1;
  if (cVar2 != '\0') {
    iVar5 = *(int *)(param_1 + 0x3bc);
    local_24 = param_1;
    while (iVar7 = iVar5, iVar7 != 0) {
      local_24 = iVar7;
      iVar5 = *(int *)(iVar7 + 0x3bc);
    }
  }
  if ((local_24 == 0) ||
     (((*(int *)(DAT_00c71678 + 0x26614) < 2 || (*(int *)(local_24 + 0x28) != 1)) &&
      (0x3dd < *(int *)(local_24 + 0x28) - 10U)))) {
    local_24 = param_1;
  }
  fVar10 = 0.0;
  if (0.0 < *(float *)(local_24 + 0xc40)) {
    pfVar9 = *(float **)(param_1 + 8);
    for (iVar5 = (*(int *)(param_1 + 0xc) - (int)pfVar9) / 0x38; iVar5 != 0; iVar5 = iVar5 + -1) {
      if (((uint)pfVar9[2] & 0x2000) == 0) {
        fVar10 = fVar10 + *pfVar9;
      }
      pfVar9 = pfVar9 + 0xe;
    }
    if (*(uint *)(local_24 + 0xc44) <= *(uint *)(local_24 + 0xc58)) {
      FUN_006da8e0(local_14,*(undefined4 *)(local_24 + 0xc48),0,*(int *)(local_24 + 0xc54),
                   *(undefined4 *)(local_24 + 0xc48),0,*(int *)(local_24 + 0xc54) + 1);
    }
    local_20 = *(int *)(local_24 + 0xc58);
    uVar3 = *(uint *)(local_24 + 0xc54);
    if (((local_20 + uVar3 & 3) == 0) && (*(uint *)(local_24 + 0xc50) <= local_20 + 4 >> 2)) {
      FUN_0044be50(local_20);
      local_20 = *(int *)(local_24 + 0xc58);
      uVar3 = *(uint *)(local_24 + 0xc54);
    }
    uVar3 = *(int *)(local_24 + 0xc50) * 4 - 1U & uVar3;
    local_14[0] = local_20 + uVar3;
    *(uint *)(local_24 + 0xc54) = uVar3;
    uVar3 = *(int *)(local_24 + 0xc50) - 1U & local_14[0] >> 2;
    iVar5 = *(int *)(local_24 + 0xc4c);
    if (*(int *)(iVar5 + uVar3 * 4) == 0) {
      uVar4 = FUN_00a0f4c0(0x10);
      *(undefined4 *)(*(int *)(local_24 + 0xc4c) + uVar3 * 4) = uVar4;
      iVar5 = *(int *)(local_24 + 0xc4c);
    }
    fVar11 = 0.0;
    *(float *)(*(int *)(iVar5 + uVar3 * 4) + (local_14[0] & 3) * 4) = fVar10;
    *(int *)(local_24 + 0xc58) = *(int *)(local_24 + 0xc58) + 1;
    uVar3 = *(uint *)(local_24 + 0xc58);
    if (uVar3 != 0) {
      iVar5 = *(int *)(local_24 + 0xc54);
      uVar8 = 0;
      do {
        uVar1 = iVar5 + uVar8;
        uVar8 = uVar8 + 1;
        fVar11 = fVar11 + *(float *)(*(int *)(*(int *)(local_24 + 0xc4c) +
                                             (uVar1 >> 2 & *(int *)(local_24 + 0xc50) - 1U) * 4) +
                                    (uVar1 & 3) * 4);
        iVar5 = *(int *)(local_24 + 0xc54);
      } while (uVar8 < uVar3);
    }
    fVar12 = *(float *)(param_1 + 900) / *(float *)(local_24 + 0xc40);
    fVar11 = (fVar11 / (float)((double)uVar3 + (double)(&DAT_00bacb00)[-((int)uVar3 >> 0x1f)])) *
             DAT_00baa8d0;
    fVar10 = DAT_00baa454;
    if (fVar12 < fVar11) {
      fVar12 = fVar12 / fVar11;
      fVar10 = DAT_00baa10c - fVar12 * DAT_00baa17c;
      if (fVar10 <= 0.0) {
        fVar10 = 0.0;
      }
      fVar10 = fVar10 + fVar12;
    }
    *(undefined4 *)(param_1 + 0x14) = 0;
    iVar5 = *(int *)(param_1 + 8);
    local_20 = 0;
    iVar6 = *(int *)(param_1 + 0xc) - iVar5;
    iVar7 = iVar6 >> 0x1f;
    if (iVar6 / 0x38 + iVar7 != iVar7) {
      iVar7 = 0;
      do {
        fVar11 = *(float *)(iVar7 + iVar5);
        if ((*(uint *)(iVar7 + 8 + iVar5) & 0x40002000) == 0) {
          fVar11 = fVar11 * fVar10;
          *(float *)(iVar7 + iVar5) = fVar11;
        }
        local_20 = local_20 + 1;
        iVar7 = iVar7 + 0x38;
        *(float *)(param_1 + 0x14) = fVar11 + *(float *)(param_1 + 0x14);
        iVar5 = *(int *)(param_1 + 8);
      } while (local_20 < (uint)((*(int *)(param_1 + 0xc) - iVar5) / 0x38));
    }
  }
  return;
}

