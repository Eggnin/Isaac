/* Local J460 decompiler output.
 * VA: 0x005381c0
 * Entry: 005381c0
 * Dispatcher: 0x006c2990
 * Types: 232,234
 * Identities: 234.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00538b70; instructions=560
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=232,234; identities=234.0.0; dispatcher=0x006c2990;
   end=0x00538b70; instructions=560 */

void __fastcall AI_005381c0(int param_1)

{
  bool bVar1;
  bool bVar2;
  char cVar3;
  uint uVar4;
  int iVar5;
  float *pfVar6;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 uVar7;
  int iVar8;
  float fVar9;
  float fVar10;
  undefined local_44 [8];
  float local_3c;
  float local_38;
  float local_34;
  undefined local_30 [4];
  float local_2c;
  float local_28;
  float local_24;
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  
  iVar8 = (int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0);
  uVar4 = FUN_006eef60();
  local_1c = (float)(uVar4 % 0x1e);
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0x184) = 0;
    *(undefined4 *)(param_1 + 0x34c) = 0;
    *(undefined4 *)(param_1 + 0x350) = 0xc1a00000;
    iVar8 = FUN_006eef60();
    local_28 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa704;
    local_28 = local_28 + local_28;
    local_24 = local_28;
    FUN_0041d540();
    FUN_0041d520();
    *(float *)(param_1 + 0xbb0) = local_24;
    *(float *)(param_1 + 0xbb4) = local_28;
    *(float *)(param_1 + 0x410) = local_1c;
    return;
  }
  FUN_00812f50(&local_3c,param_1 + 0x33c,0,0,0);
  if (((NAN(local_3c) || NAN(*(float *)(param_1 + 0x33c))) ==
       (local_3c == *(float *)(param_1 + 0x33c))) ||
     ((NAN(local_38) || NAN(*(float *)(param_1 + 0x340))) ==
      (local_38 == *(float *)(param_1 + 0x340)))) {
    *(float *)(param_1 + 0x410) = local_1c;
    iVar5 = FUN_006eef60();
    local_28 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa704;
    local_28 = local_28 + local_28;
    local_24 = local_28;
    FUN_0041d540();
    fVar9 = local_28;
    FUN_0041d520();
    *(float *)(param_1 + 0xbb0) = local_24;
    *(float *)(param_1 + 0xbb4) = fVar9;
    *(undefined4 *)(param_1 + 0xb64) = 4;
  }
  FUN_00812f50(&local_3c,param_1 + 0x33c,0,0,0);
  *(float *)(param_1 + 0x33c) = local_3c;
  *(float *)(param_1 + 0x340) = local_38;
  if (*(int *)(param_1 + 0xb64) != 4) {
    if (*(int *)(param_1 + 0xb64) == 8) {
      FUN_0040a380(&DAT_00b1dd28,0);
      fVar9 = *(float *)(param_1 + 0x36c) * DAT_00baa304;
      bVar1 = NAN(DAT_00ba9fe4);
      bVar2 = fVar9 == DAT_00ba9fe4;
      *(float *)(param_1 + 0x36c) = fVar9;
      fVar10 = *(float *)(param_1 + 3000) * DAT_00baa730;
      if ((NAN(fVar9) || bVar1) == bVar2) {
        *(float *)(param_1 + 0x364) =
             (*(float *)(param_1 + 0x39c) * *(float *)(param_1 + 0xbbc) * DAT_00baa730) / fVar9 +
             *(float *)(param_1 + 0x364);
        *(float *)(param_1 + 0x360) =
             (*(float *)(param_1 + 0x39c) * fVar10) / fVar9 + *(float *)(param_1 + 0x360);
      }
      *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) - iVar8;
      if (*(int *)(param_1 + 0x410) < 1) {
        *(undefined4 *)(param_1 + 0xb64) = 4;
        *(float *)(param_1 + 0x410) = local_1c;
      }
    }
    return;
  }
  FUN_0040a380(&DAT_00b1bc54,0);
  iVar5 = *(int *)(param_1 + 0x410);
  if (0 < iVar8) {
    local_28 = 2.802597e-44;
    do {
      if (iVar5 % (int)local_28 == 0) {
        iVar5 = FUN_006eef60();
        local_24 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa704;
        local_24 = local_24 + local_24;
        fVar9 = local_24;
        FUN_0041d540();
        local_20 = fVar9;
        fVar9 = local_24;
        FUN_0041d520();
        *(float *)(param_1 + 0xbb0) = local_20;
        *(float *)(param_1 + 0xbb4) = fVar9;
        iVar5 = *(int *)(param_1 + 0x410);
      }
      iVar5 = iVar5 + 1;
      *(int *)(param_1 + 0x410) = iVar5;
      iVar8 = iVar8 + -1;
    } while (iVar8 != 0);
  }
  FUN_006d8e40(0);
  iVar8 = FUN_006be840();
  fVar9 = *(float *)(param_1 + 0x340) - *(float *)(iVar8 + 0x340);
  fVar10 = *(float *)(param_1 + 0x33c) - *(float *)(iVar8 + 0x33c);
  fVar9 = fVar9 * fVar9 + fVar10 * fVar10;
  FUN_00435a50();
  local_34 = fVar9 * DAT_00baa3c4;
  FUN_006bec40(&local_3c,0);
  local_1c = DAT_00baa9d0;
  local_20 = DAT_00baa924;
  fVar9 = DAT_00baac3c;
  FUN_00435a50();
  if (0.0 < fVar9) {
    local_1c = (DAT_00baa454 / fVar9) * DAT_00baa9d0;
    local_20 = DAT_00baa924 * (DAT_00baa454 / fVar9);
  }
  local_24 = DAT_00baa9d0;
  local_28 = DAT_00baae30;
  if (0.0 < fVar9) {
    local_28 = (DAT_00baa454 / fVar9) * DAT_00baae30;
    local_24 = (DAT_00baa454 / fVar9) * DAT_00baa9d0;
  }
  iVar8 = FUN_006be840();
  local_2c = *(float *)(param_1 + 0x340);
  local_14 = (*(float *)(iVar8 + 0x360) * DAT_00baa87c + local_3c) - *(float *)(param_1 + 0x33c);
  local_18 = (*(float *)(iVar8 + 0x364) * DAT_00baa87c + local_38) - local_2c;
  fVar9 = local_14 * local_14 + local_18 * local_18;
  FUN_00435a50();
  if (DAT_00ba9fe4 < fVar9) {
    local_14 = (DAT_00baa454 / fVar9) * local_14;
    local_18 = local_18 * (DAT_00baa454 / fVar9);
  }
  if (*(int *)(param_1 + 0xf1c) == -1) {
    iVar8 = -1;
    uVar7 = extraout_ECX;
    fVar9 = local_2c;
  }
  else {
    pfVar6 = (float *)FUN_006d82d0(local_30);
    local_14 = *pfVar6;
    local_18 = pfVar6[1];
    fVar9 = local_14 * local_14 + local_18 * local_18;
    FUN_00435a50();
    if (DAT_00ba9fe4 < fVar9) {
      local_14 = (DAT_00baa454 / fVar9) * local_14;
      local_18 = local_18 * (DAT_00baa454 / fVar9);
    }
    iVar8 = *(int *)(param_1 + 0xf1c);
    uVar7 = extraout_ECX_00;
    fVar9 = *(float *)(param_1 + 0x340);
  }
  if (100 < *(int *)(param_1 + 0x410)) {
    if (iVar8 == -1) {
      fVar10 = *(float *)(param_1 + 0x33c) - local_3c;
      fVar9 = (fVar9 - local_38) * (fVar9 - local_38) + fVar10 * fVar10;
      FUN_00435a50();
      if (((((DAT_00baa9a0 < fVar9) && (fVar9 < DAT_00baaa5c)) &&
           (*(int *)(param_1 + 0x410) % 3 == 0)) && (uVar4 = FUN_006eef60(), (uVar4 & 1) != 0)) &&
         (((DAT_00baa444 < local_1c * local_14 + local_20 * local_18 ||
           (DAT_00baa444 < local_24 * local_14 + local_28 * local_18)) ||
          ((DAT_00baa444 < (float)((uint)local_20 ^ DAT_00bacb70) * local_18 - local_1c * local_14
           || (DAT_00baa444 <
               (float)((uint)local_28 ^ DAT_00bacb70) * local_18 - local_24 * local_14))))))
      goto LAB_005387f7;
    }
    else {
      cVar3 = FUN_00956110(9,iVar8,param_1,uVar7);
      if ((cVar3 != '\0') &&
         ((pfVar6 = (float *)FUN_006d82d0(local_44),
          (NAN(*pfVar6) || NAN(DAT_00c7b640)) == (*pfVar6 == DAT_00c7b640) ||
          ((NAN(pfVar6[1]) || NAN(DAT_00c7b644)) == (pfVar6[1] == DAT_00c7b644))))) {
LAB_005387f7:
        local_1c = DAT_00baa454;
        fVar9 = DAT_00baa528;
        if ((*(int *)(param_1 + 0xc64) == 0x12) ||
           (fVar9 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
          local_1c = fVar9;
        }
        local_28 = 2.045896e-43;
        FUN_00956780();
        FUN_0092dc30(local_28,0x3f800000,2,0,local_1c,0);
        *(undefined4 *)(param_1 + 0xb64) = 8;
        *(undefined4 *)(param_1 + 0x410) = 0x14;
        *(float *)(param_1 + 3000) = local_14;
        *(float *)(param_1 + 0xbbc) = local_18;
      }
    }
  }
  iVar8 = FUN_006be840();
  local_1c = (*(float *)(iVar8 + 0x360) * DAT_00baa87c + local_3c +
             local_34 * *(float *)(param_1 + 0xbb0)) - *(float *)(param_1 + 0x33c);
  local_18 = (*(float *)(iVar8 + 0x364) * DAT_00baa87c + local_38 +
             local_34 * *(float *)(param_1 + 0xbb4)) - *(float *)(param_1 + 0x340);
  if (*(int *)(param_1 + 0xf1c) != -1) {
    pfVar6 = (float *)FUN_006d82d0(local_44);
    local_18 = pfVar6[1] * DAT_00baa9d0;
    local_1c = *pfVar6 * DAT_00baa9d0;
  }
  cVar3 = *(char *)(param_1 + 0x148);
  if (cVar3 == '\0') {
    if (local_1c < DAT_00baae28) goto LAB_00538965;
  }
  else {
    local_28 = DAT_00baad50;
    if (local_1c <= DAT_00baa904) goto LAB_00538986;
LAB_00538965:
    *(bool *)(param_1 + 0x148) = cVar3 == '\0';
    local_28 = DAT_00baad50;
    if (cVar3 == '\0') goto LAB_00538986;
  }
  local_28 = DAT_00baa454;
LAB_00538986:
  fVar9 = local_1c * local_1c + local_18 * local_18;
  FUN_00435a50();
  if (0.0 < fVar9) {
    local_1c = local_1c * (DAT_00baa454 / fVar9);
  }
  if (((local_28 < 0.0) && (DAT_00baad50 <= local_1c)) ||
     ((0.0 < local_28 && (local_1c <= DAT_00baa454)))) {
    local_1c = local_28;
  }
  if (0.0 < fVar9) {
    local_18 = local_18 * (DAT_00baa454 / fVar9);
  }
  local_18 = local_18 * DAT_00baa6fc;
  fVar9 = *(float *)(param_1 + 0x39c);
  fVar10 = DAT_00baa120;
  if (*(int *)(param_1 + 0xf1c) != -1) {
    fVar10 = DAT_00baa1f8;
  }
  fVar10 = DAT_00baa454 - fVar10;
  if ((NAN(fVar9) || NAN(DAT_00baa454)) == (fVar9 == DAT_00baa454)) {
    fVar10 = fVar10 / ((fVar10 + fVar9) - fVar10 * fVar9);
  }
  fVar10 = DAT_00baa454 - fVar10;
  *(float *)(param_1 + 0x360) =
       (local_1c * DAT_00baa6fc - *(float *)(param_1 + 0x360)) * fVar10 +
       *(float *)(param_1 + 0x360);
  *(float *)(param_1 + 0x364) =
       (local_18 - *(float *)(param_1 + 0x364)) * fVar10 + *(float *)(param_1 + 0x364);
  return;
}

