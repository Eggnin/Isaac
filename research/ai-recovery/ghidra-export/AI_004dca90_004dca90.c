/* Local J460 decompiler output.
 * VA: 0x004dca90
 * Entry: 004dca90
 * Dispatcher: 0x006c2990
 * Types: 860
 * Identities: 860.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004dd7f0; instructions=755
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=860; identities=860.0.0; dispatcher=0x006c2990;
   end=0x004dd7f0; instructions=755 */

void __fastcall AI_004dca90(int param_1)

{
  uint uVar1;
  char cVar2;
  uint uVar3;
  undefined4 *puVar4;
  int iVar5;
  uint *puVar6;
  float *pfVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  double dVar12;
  undefined8 uVar13;
  char local_6c [4];
  int local_68;
  uint local_60;
  float local_5c;
  float local_58 [2];
  float local_50;
  float local_4c;
  float local_48;
  float local_44;
  float local_40;
  float local_3c;
  float local_38;
  float local_34;
  float local_30;
  float local_2c;
  float local_28;
  char local_21;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af3a3d;
  local_1c = ExceptionList;
  uVar3 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  local_3c = *(float *)(DAT_00c71678 + 0x18300);
  local_21 = '\0';
  switch(*(undefined4 *)(param_1 + 0xb64)) {
  case 0:
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0xbb0) = 0;
    return;
  default:
    goto switchD_004dcaef_caseD_1;
  case 3:
    ExceptionList = &local_1c;
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa438;
    puStack_20 = &stack0xfffffffc;
    uVar3 = FUN_006eef60(uVar3);
    if (uVar3 % 0x5a == 0) {
      local_40 = 1.526014e-42;
      FUN_00956780();
      FUN_0092dc30(local_40,0x3f800000,0x3c,0,0x3f800000,0);
    }
    fVar8 = *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
            *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364);
    FUN_00435a50();
    fVar8 = fVar8 + fVar8;
    if (*(float *)(param_1 + 0x360) <= 0.0 && *(float *)(param_1 + 0x360) != 0.0) {
      fVar8 = fVar8 * DAT_00baad50;
    }
    fVar8 = fVar8 + *(float *)(param_1 + 0xbb0);
    if (DAT_00baab30 < (float)((uint)fVar8 & DAT_00bacb40)) {
      FUN_00499d20();
    }
    local_48 = DAT_00baab30;
    if (fVar8 <= DAT_00baaa78) {
      if (fVar8 < DAT_00baae7c) {
        fVar8 = fVar8 + DAT_00baab30;
      }
    }
    else {
      fVar8 = fVar8 - DAT_00baab30;
    }
    *(float *)(param_1 + 0xbb0) = fVar8;
    if (fVar8 < 0.0) {
      fVar8 = fVar8 + local_48;
    }
    local_48 = (fVar8 * DAT_00baa834) / local_48;
    dVar12 = floor((double)local_48);
    local_40 = (float)dVar12;
    cVar2 = FUN_0040a5d0(&DAT_00b1bc54,1);
    if (((cVar2 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
       (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
      *(undefined *)(param_1 + 0x8c) = 0;
    }
    if ((*(uint *)(param_1 + 0x168) & 0x1000a00) == 0) {
      iVar5 = FUN_006be840();
      fVar8 = *(float *)(param_1 + 0x340) - *(float *)(iVar5 + 0x340);
      fVar11 = *(float *)(param_1 + 0x33c) - *(float *)(iVar5 + 0x33c);
      fVar8 = fVar8 * fVar8 + fVar11 * fVar11;
      FUN_00435a50();
      if ((fVar8 <= DAT_00baa9d0) || (DAT_00baab7c <= fVar8)) {
        *(undefined4 *)(param_1 + 0xbc0) = 0;
      }
      else {
        *(int *)(param_1 + 0xbc0) = *(int *)(param_1 + 0xbc0) + 1;
        if ((0x1e < *(int *)(param_1 + 0xbc0)) && (uVar3 = FUN_006eef60(), uVar3 % 0x1e == 0)) {
          iVar5 = FUN_006be840();
          local_5c = *(float *)(iVar5 + 0x33c) - *(float *)(param_1 + 0x33c);
          local_58[0] = *(float *)(iVar5 + 0x340) - *(float *)(param_1 + 0x340);
          puVar4 = (undefined4 *)FUN_00a10030();
          local_40 = 1.527415e-42;
          *(undefined4 *)(param_1 + 0x334) = *puVar4;
          *(undefined4 *)(param_1 + 0x338) = puVar4[1];
          *(undefined4 *)(param_1 + 0xb64) = 6;
          *(undefined4 *)(param_1 + 0xbc0) = 0;
          FUN_00956780();
          FUN_0092dc30(local_40,0x3f800000,2,0,0x3f800000,0);
        }
      }
    }
    if (*(char *)(param_1 + 400) != '\0') {
      fVar11 = *(float *)(param_1 + 0x1a0) * DAT_00baa500;
      fVar8 = *(float *)(param_1 + 0x198) * *(float *)(param_1 + 0x1a0) +
              *(float *)(param_1 + 0x194) * *(float *)(param_1 + 0x19c);
      *(float *)(param_1 + 0x360) =
           *(float *)(param_1 + 0x194) - *(float *)(param_1 + 0x19c) * DAT_00baa500 * fVar8;
      *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x198) - fVar11 * fVar8;
    }
    break;
  case 6:
    ExceptionList = &local_1c;
    *(undefined4 *)(param_1 + 0x36c) = 0x3f4ccccd;
    *(undefined4 *)(param_1 + 0xbb0) = 0;
    puStack_20 = &stack0xfffffffc;
    FUN_0040a380("Teleport",0);
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar2 = FUN_0040add0();
      if (cVar2 != '\0') {
        *(undefined4 *)(param_1 + 0x15c) = 0;
        *(undefined4 *)(param_1 + 0x188) = 0;
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) {
        ExceptionList = local_1c;
        return;
      }
    }
    *(float *)(param_1 + 0x360) = DAT_00c7b640;
    *(float *)(param_1 + 0x364) = DAT_00c7b644;
    iVar5 = FUN_006be840();
    uVar3 = 0;
    local_30 = *(float *)(iVar5 + 0x33c);
    local_2c = *(float *)(iVar5 + 0x340);
    local_40 = *(float *)(param_1 + 0x334) * DAT_00baaa00 + local_30;
    local_38 = *(float *)(param_1 + 0x338) * DAT_00baaa00 + local_2c;
    do {
      uVar13 = CONCAT44(0x3f800000,&local_5c);
      local_5c = local_40;
      local_58[0] = local_38;
      cVar2 = FUN_00813360(&local_5c,0x3f800000);
      if ((cVar2 != '\0') && (cVar2 = FUN_006b9740(&local_5c,uVar13), cVar2 == '\0')) break;
      local_38 = *(float *)(param_1 + 0x334);
      local_34 = *(float *)(param_1 + 0x338);
      iVar5 = FUN_006eef60();
      fVar8 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4 -
              DAT_00baa2d0;
      if (uVar3 < 3) {
        fVar8 = fVar8 * DAT_00baa9b4;
      }
      else {
        fVar8 = fVar8 * DAT_00baaa78;
        if (6 < uVar3) {
          fVar8 = fVar8 + DAT_00baaa78;
        }
      }
      fVar8 = fVar8 * DAT_00baa088;
      local_48 = fVar8;
      FUN_0041d540();
      local_44 = fVar8;
      fVar8 = local_48;
      FUN_0041d520();
      uVar3 = uVar3 + 1;
      local_5c = (local_44 * local_38 - fVar8 * local_34) * DAT_00baaa00 + local_30;
      local_58[0] = (fVar8 * local_38 + local_44 * local_34) * DAT_00baaa00 + local_2c;
      local_40 = local_5c;
      local_38 = local_58[0];
    } while (uVar3 < 10);
    uVar13 = CONCAT44(0x3f800000,&local_5c);
    cVar2 = FUN_00813360(&local_5c,0x3f800000);
    if (cVar2 == '\0') {
      ExceptionList = local_1c;
      return;
    }
    cVar2 = FUN_006b9740(&local_5c,uVar13);
    if (cVar2 != '\0') {
      ExceptionList = local_1c;
      return;
    }
    *(float *)(param_1 + 0x33c) = local_40;
    *(float *)(param_1 + 0x340) = local_38;
    *(undefined4 *)(param_1 + 0xb64) = 7;
    ExceptionList = local_1c;
    return;
  case 7:
    ExceptionList = &local_1c;
    FUN_0040a380("TeleportEnd",0);
    if (*(int *)(param_1 + 0x7c) == 0) {
LAB_004dd1cc:
      *(undefined4 *)(param_1 + 0x36c) = 0x3f4ccccd;
      cVar2 = local_21;
    }
    else {
      cVar2 = FUN_0040add0();
      if (cVar2 == '\0') {
        if ((*(int *)(param_1 + 0x7c) == 0) || (cVar2 = FUN_0040ae70(), cVar2 == '\0'))
        goto LAB_004dd1cc;
        *(undefined4 *)(param_1 + 0x36c) = 0x3f7851ec;
        cVar2 = '\x01';
      }
      else {
        local_21 = '\x01';
        *(undefined4 *)(param_1 + 0x15c) = *(undefined4 *)(*(int *)(param_1 + 0x330) + 0x24);
        *(undefined4 *)(param_1 + 0x188) = 4;
        *(undefined4 *)(param_1 + 0x36c) = 0x3f7851ec;
        local_48 = *(float *)(param_1 + 0x360);
        local_44 = *(float *)(param_1 + 0x364);
        fVar8 = local_48 * local_48 + local_44 * local_44;
        FUN_00435a50();
        cVar2 = local_21;
        if (DAT_00ba9fe4 < fVar8) {
          fVar8 = DAT_00baa6fc / fVar8;
          *(float *)(param_1 + 0x360) = local_48 * fVar8;
          *(float *)(param_1 + 0x364) = local_44 * fVar8;
        }
      }
    }
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      *(undefined4 *)(param_1 + 0xb64) = 3;
    }
    if (cVar2 == '\0') {
      ExceptionList = local_1c;
      return;
    }
  }
  FUN_006bec40(&local_5c,0);
  local_28 = local_5c - *(float *)(param_1 + 0x33c);
  local_2c = local_58[0] - *(float *)(param_1 + 0x340);
  fVar8 = local_28 * local_28 + local_2c * local_2c;
  FUN_00435a50();
  if (DAT_00ba9fe4 < fVar8) {
    local_28 = local_28 * (DAT_00baa454 / fVar8);
    local_2c = local_2c * (DAT_00baa454 / fVar8);
  }
  local_30 = 0.0;
  local_40 = DAT_00baaae8;
  AI_0041af60(local_6c,2,0xffffffff,0xffffffff,0,0);
  uVar3 = 0;
  local_14 = 0;
  if (local_60 != 0) {
    local_58[0] = *(float *)(param_1 + 0x340);
    do {
      local_48 = *(float *)(local_68 + uVar3 * 4);
      local_44 = local_58[0] - *(float *)((int)local_48 + 0x340);
      local_34 = *(float *)(param_1 + 0x33c) - *(float *)((int)local_48 + 0x33c);
      fVar10 = local_44 * local_44 + local_34 * local_34;
      local_4c = fVar10;
      FUN_00435a50();
      fVar9 = 0.0;
      fVar8 = *(float *)((int)local_48 + 0x360);
      fVar11 = *(float *)((int)local_48 + 0x364);
      local_50 = fVar10;
      if (((NAN(fVar8) || NAN(DAT_00c7b640)) == (fVar8 == DAT_00c7b640)) ||
         ((NAN(fVar11) || NAN(DAT_00c7b644)) == (fVar11 == DAT_00c7b644))) {
        local_3c = fVar8 * DAT_00baa1d4;
        local_38 = fVar11 * DAT_00baa1d4;
        fVar8 = local_3c * local_3c + local_38 * local_38;
        FUN_00435a50();
        if ((DAT_00baa454 < fVar8) && (DAT_00ba9fe4 < fVar8)) {
          local_3c = local_3c * (DAT_00baa454 / fVar8);
          local_38 = local_38 * (DAT_00baa454 / fVar8);
        }
        fVar10 = local_4c;
        FUN_00435a50();
        fVar8 = local_34;
        fVar11 = local_44;
        if (0.0 < fVar10) {
          fVar11 = local_44 * (DAT_00baa454 / fVar10);
          fVar8 = local_34 * (DAT_00baa454 / fVar10);
        }
        fVar9 = local_3c * fVar8 + local_38 * fVar11;
        if (0.0 <= fVar9) goto LAB_004dd411;
      }
      else {
LAB_004dd411:
        fVar8 = ((DAT_00baa6fc - fVar9 * DAT_00baa6fc) + DAT_00baa2d0) * local_50;
        if ((0.0 < fVar8) && (fVar8 <= local_40)) {
          local_30 = local_48;
          local_40 = fVar8;
        }
      }
      uVar3 = uVar3 + 1;
    } while (uVar3 < local_60);
    if (local_30 != 0.0) {
      local_34 = *(float *)((int)local_30 + 0x360);
      local_38 = *(float *)((int)local_30 + 0x364);
      if (((NAN(local_34) || NAN(DAT_00c7b640)) != (local_34 == DAT_00c7b640)) &&
         ((NAN(local_38) || NAN(DAT_00c7b644)) != (local_38 == DAT_00c7b644))) {
        local_34 = *(float *)(param_1 + 0x33c) - *(float *)((int)local_30 + 0x33c);
        local_38 = *(float *)(param_1 + 0x340) - *(float *)((int)local_30 + 0x340);
      }
      fVar8 = local_34 * local_34 + local_38 * local_38;
      FUN_00435a50();
      if (DAT_00ba9fe4 < fVar8) {
        local_34 = (DAT_00baa454 / fVar8) * local_34;
        local_38 = local_38 * (DAT_00baa454 / fVar8);
      }
      fVar8 = DAT_00baa54c;
      FUN_0041d540();
      local_58[0] = fVar8;
      fVar8 = DAT_00baa54c;
      FUN_0041d520();
      local_3c = local_58[0] * local_34 - fVar8 * local_38;
      local_38 = fVar8 * local_34 + local_58[0] * local_38;
      if ((*(float *)(param_1 + 0x340) - *(float *)((int)local_30 + 0x340)) * local_38 +
          (*(float *)(param_1 + 0x33c) - *(float *)((int)local_30 + 0x33c)) * local_3c < 0.0) {
        local_3c = (float)((uint)local_3c ^ DAT_00bacb70);
        local_38 = (float)((uint)local_38 ^ DAT_00bacb70);
      }
      local_58[0] = 20.0;
      local_44 = local_2c;
      local_50 = DAT_00baaa78 / (local_40 + DAT_00baa924);
      local_48 = local_28;
      pfVar7 = local_58;
      if (local_50 <= DAT_00baa87c) {
        pfVar7 = &local_50;
      }
      fVar8 = local_28 * local_28 + local_2c * local_2c;
      FUN_00435a50();
      if (DAT_00ba9fe4 < fVar8) {
        local_44 = (DAT_00baa454 / fVar8) * local_2c;
        local_48 = (DAT_00baa454 / fVar8) * local_28;
      }
      fVar8 = *pfVar7;
      local_28 = fVar8 * local_3c + (local_28 - fVar8 * local_48 * DAT_00baa120);
      local_2c = fVar8 * local_38 + (local_2c - fVar8 * local_44 * DAT_00baa120);
    }
  }
  if ((*(uint *)(param_1 + 0x168) & 0x1000a00) == 0) {
    iVar5 = FUN_006be840();
    local_28 = local_28 + *(float *)(iVar5 + 0x360) * DAT_00baa1f8;
    local_2c = *(float *)(iVar5 + 0x364) * DAT_00baa1f8 + local_2c;
  }
  local_28 = local_28 * _DAT_00baa1f0 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x360);
  local_2c = local_2c * _DAT_00baa1f0 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364);
  *(float *)(param_1 + 0x360) = local_28;
  *(float *)(param_1 + 0x364) = local_2c;
  fVar8 = local_28 * local_28 + local_2c * local_2c;
  FUN_00435a50();
  if ((DAT_00baa834 < fVar8) && (DAT_00ba9fe4 < fVar8)) {
    fVar8 = DAT_00baa834 / fVar8;
    *(float *)(param_1 + 0x360) = local_28 * fVar8;
    *(float *)(param_1 + 0x364) = local_2c * fVar8;
  }
  if (local_6c[0] == '\0') {
    if (DAT_00c7de78 == 0) {
      puVar6 = &DAT_00c7f618;
    }
    else {
      puVar6 = (uint *)(DAT_00c7de78 + 0x30);
    }
    if (local_68 != 0) {
      uVar1 = *(uint *)(local_68 + -4);
      uVar3 = *puVar6;
      *puVar6 = *puVar6 - uVar1;
      puVar6[1] = puVar6[1] - (uint)(uVar3 < uVar1);
      free((uint *)(local_68 + -4));
    }
  }
switchD_004dcaef_caseD_1:
  ExceptionList = local_1c;
  return;
}

