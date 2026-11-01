/* Local J460 decompiler output.
 * VA: 0x0099dca0
 * Entry: 0099dca0
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Rebuild beam controls after homing node insertion
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Rebuild beam controls after homing
   node insertion */

void __fastcall HELPER_HomingLaser_BeamTangents(int param_1)

{
  float fVar1;
  int iVar2;
  float *pfVar3;
  int iVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float local_38;
  float local_34;
  float local_30;
  float local_2c;
  uint local_20;
  
  pfVar3 = *(float **)(param_1 + 0x48);
  if (1 < (uint)((*(int *)(param_1 + 0x4c) - (int)pfVar3) / 0x18)) {
    fVar1 = pfVar3[1];
    fVar9 = pfVar3[4] - *pfVar3;
    if ((float)((uint)fVar9 & DAT_00bacb40) <= (float)((uint)(pfVar3[5] - fVar1) & DAT_00bacb40)) {
      fVar10 = 0.0;
      local_34 = DAT_00baa454;
      if (pfVar3[5] - fVar1 < 0.0) {
        local_34 = DAT_00baad50;
      }
    }
    else {
      fVar10 = DAT_00baa454;
      if (fVar9 < 0.0) {
        fVar10 = DAT_00baad50;
      }
      local_34 = 0.0;
    }
    fVar9 = pfVar3[6] - *pfVar3;
    fVar5 = (pfVar3[7] - fVar1) * (pfVar3[7] - fVar1) + fVar9 * fVar9;
    FUN_00435a50();
    fVar9 = DAT_00baa2d0;
    fVar10 = fVar10 * fVar5 * DAT_00baa2d0;
    local_34 = local_34 * fVar5 * DAT_00baa2d0;
    pfVar3[4] = fVar10 + *pfVar3;
    local_20 = 1;
    pfVar3[5] = local_34 + fVar1;
    pfVar3[9] = pfVar3[7] - local_34;
    pfVar3[8] = pfVar3[6] - fVar10;
    if ((*(int *)(param_1 + 0x4c) - (int)pfVar3) / 0x18 - 1U < 2) {
      iVar4 = *(int *)(param_1 + 0x48);
    }
    else {
      pfVar3 = (float *)(*(int *)(param_1 + 0x48) + 4);
      do {
        fVar1 = pfVar3[5];
        fVar10 = pfVar3[6];
        fVar9 = pfVar3[-1] - fVar1;
        local_2c = pfVar3[0xc] - fVar10;
        local_30 = pfVar3[0xb] - fVar1;
        fVar5 = *pfVar3 - fVar10;
        fVar6 = local_2c * local_2c + local_30 * local_30;
        FUN_00435a50();
        if (DAT_00ba9fe4 < fVar6) {
          local_30 = (DAT_00baa454 / fVar6) * local_30;
          local_2c = local_2c * (DAT_00baa454 / fVar6);
        }
        fVar11 = fVar5 * fVar5 + fVar9 * fVar9;
        fVar12 = fVar11;
        FUN_00435a50();
        fVar7 = fVar5;
        fVar8 = fVar9;
        if (0.0 < fVar12) {
          fVar7 = (DAT_00baa454 / fVar12) * fVar5;
          fVar8 = (DAT_00baa454 / fVar12) * fVar9;
        }
        if ((float)((uint)(local_30 + fVar8) & DAT_00bacb40) <=
            (float)((uint)(local_2c + fVar7) & DAT_00bacb40)) {
          fVar12 = 0.0;
          if (0.0 <= local_2c + fVar7) {
            local_38 = DAT_00baa454;
          }
          else {
            local_38 = DAT_00baad50;
          }
        }
        else {
          local_38 = 0.0;
          fVar12 = DAT_00baa454;
          if (local_30 + fVar8 < 0.0) {
            fVar12 = DAT_00baad50;
          }
        }
        local_2c = (float)((uint)fVar12 ^ DAT_00bacb70);
        if (fVar9 * local_38 + (float)((uint)fVar12 ^ DAT_00bacb70) * fVar5 < 0.0) {
          local_38 = (float)((uint)local_38 ^ DAT_00bacb70);
          local_2c = fVar12;
        }
        if ((pfVar3[3] - pfVar3[-1]) * (fVar1 - pfVar3[-1]) +
            (pfVar3[4] - *pfVar3) * (fVar10 - *pfVar3) < 0.0) {
          local_38 = local_38 + local_38;
          local_2c = local_2c + local_2c;
        }
        fVar9 = (float)((uint)fVar6 ^ DAT_00bacb70) * local_38 * DAT_00baa2d0;
        pfVar3[10] = (float)((uint)fVar6 ^ DAT_00bacb70) * local_2c * DAT_00baa2d0 + fVar10;
        pfVar3[9] = fVar9 + fVar1;
        FUN_00435a50();
        fVar9 = DAT_00baa2d0;
        local_20 = local_20 + 1;
        fVar5 = fVar11 * local_2c * DAT_00baa2d0;
        pfVar3[7] = fVar11 * local_38 * DAT_00baa2d0 + fVar1;
        pfVar3[8] = fVar5 + fVar10;
        pfVar3 = pfVar3 + 6;
        iVar4 = *(int *)(param_1 + 0x48);
      } while (local_20 < (*(int *)(param_1 + 0x4c) - iVar4) / 0x18 - 1U);
    }
    iVar2 = (*(int *)(param_1 + 0x4c) - iVar4) / 0x18;
    fVar1 = *(float *)(iVar4 + -0x18 + iVar2 * 0x18);
    fVar10 = *(float *)(iVar4 + -0x14 + iVar2 * 0x18);
    fVar5 = *(float *)(iVar4 + -0x30 + iVar2 * 0x18) - fVar1;
    fVar6 = *(float *)(iVar4 + -0x2c + iVar2 * 0x18) - fVar10;
    if ((float)((uint)fVar5 & DAT_00bacb40) <= (float)((uint)fVar6 & DAT_00bacb40)) {
      fVar5 = 0.0;
    }
    else {
      fVar6 = 0.0;
    }
    *(float *)(iVar4 + -0x10 + iVar2 * 0x18) = fVar5 * fVar9 + fVar1;
    *(float *)(iVar4 + -0xc + iVar2 * 0x18) = fVar6 * fVar9 + fVar10;
  }
  return;
}

