/* Local J460 decompiler output.
 * VA: 0x0099f2c0
 * Entry: 0099f2c0
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Tear flag 71 geometry primitive
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Tear flag 71 geometry primitive */

void __fastcall HELPER_HomingLaser_TurnHorizontal(int *param_1)

{
  int iVar1;
  bool bVar2;
  char cVar3;
  uint uVar4;
  float *pfVar5;
  int iVar6;
  float fVar7;
  float fVar8;
  float local_88;
  float fStack_84;
  float fStack_80;
  float fStack_7c;
  float local_78;
  float fStack_74;
  float local_70;
  float local_6c;
  float local_68;
  float local_64;
  undefined local_60 [4];
  int local_5c;
  float local_54;
  float local_50;
  uint local_4c;
  float *local_48;
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
  undefined4 uStack_14;
  
  puStack_20 = &stack0xfffffffc;
  uStack_14 = 0xffffffff;
  puStack_18 = &LAB_00b0d9e0;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_44 = (float)param_1[3];
  local_28 = local_44 - (float)param_1[1];
  local_38 = (float)param_1[4];
  local_2c = local_38 - (float)param_1[2];
  fVar7 = local_28 * local_28 + local_2c * local_2c;
  FUN_00435a50(uVar4);
  if (0.0 < fVar7) {
    local_28 = local_28 * (DAT_00baa454 / fVar7);
    local_2c = local_2c * (DAT_00baa454 / fVar7);
  }
  local_48 = (float *)DAT_00baa54c;
  FUN_0041d540();
  fVar7 = DAT_00baa54c;
  FUN_0041d520();
  local_40 = local_28 * (float)local_48 - local_2c * fVar7;
  local_3c = local_28 * fVar7 + local_2c * (float)local_48;
  local_34 = ((float)param_1[2] - local_38) * ((float)param_1[2] - local_38) +
             ((float)param_1[1] - local_44) * ((float)param_1[1] - local_44);
  FUN_00435a50(uVar4);
  local_38 = 0.0;
  local_48 = *(float **)(*param_1 + 0x3c8);
  local_30 = DAT_00baa454;
  local_44 = 0.0;
  local_5c = *(int *)(DAT_00c71678 + 0x18300);
  if (*(int *)(local_5c + 0x1264) != 0) {
    do {
      iVar1 = *(int *)(*(int *)(local_5c + 0x125c) + (int)local_44 * 4);
      if ((((float *)iVar1 == local_48) ||
          ((((*(int *)(DAT_00c71678 + 0x26614) < 2 || (iVar6 = *(int *)(iVar1 + 0x28), iVar6 != 1))
            && (iVar6 = *(int *)(iVar1 + 0x28), 0x3dd < iVar6 - 10U)) ||
           ((*(int *)(iVar1 + 0x188) == 1 || (*(int *)(iVar1 + 0x188) == 0)))))) ||
         ((*(char *)(iVar1 + 0x3b0) != '\0' || (*(char *)(iVar1 + 0x173) != '\0')))) {
LAB_0099f4ba:
        local_21 = '\0';
      }
      else {
        local_54 = *(float *)(iVar1 + 0x16c);
        if (((((*(uint *)(iVar1 + 0x168) & 0x10) != 0) && (iVar6 != 0x322)) && (iVar6 != 0x362)) ||
           (local_21 = '\x01', (*(uint *)(iVar1 + 0x168) & 0x20000010) != 0)) goto LAB_0099f4ba;
      }
      if ((((*(int *)(DAT_00c71678 + 0x26614) < 2) || (*(int *)(iVar1 + 0x28) != 3)) ||
          (*(int *)(iVar1 + 0x2c) != 0x43)) || (cVar3 = FUN_006a8fa0(local_48), cVar3 != '\0')) {
        bVar2 = false;
      }
      else {
        bVar2 = true;
      }
      if ((local_21 != '\0') || (bVar2)) {
        local_68 = *(float *)(iVar1 + 0x33c);
        local_64 = *(float *)(iVar1 + 0x340);
        fVar7 = local_68 - (float)param_1[1];
        fVar8 = local_64 - (float)param_1[2];
        local_50 = local_2c * fVar8 + local_28 * fVar7;
        local_54 = fVar8 * local_3c + fVar7 * local_40;
        if ((DAT_00baa9a0 < local_50) &&
           ((local_50 < local_34 &&
            (iVar6 = *param_1,
            *(float *)(iVar6 + 0x370) + *(float *)(iVar1 + 0x370) <
            (float)((uint)local_54 & DAT_00bacb40))))) {
          if ((*(int *)(iVar6 + 0x184) != 0) && (*(int *)(iVar6 + 0x184) != 3)) {
            local_4c = *(uint *)(iVar6 + 0x434) & DAT_00c34bbc;
            if (((*(uint *)(iVar6 + 0x428) & DAT_00c34bb0 | *(uint *)(iVar6 + 0x42c) & DAT_00c34bb4)
                 == 0) && ((*(uint *)(iVar6 + 0x430) & DAT_00c34bb8 | local_4c) == 0)) {
              local_70 = local_28 * local_50 + (float)param_1[1];
              local_6c = local_2c * local_50 + (float)param_1[2];
              cVar3 = FUN_007f0df0(&local_70,&local_68,3,0,0,0,0);
              if (cVar3 == '\0') goto LAB_0099f68b;
            }
          }
          local_38 = (float)iVar1;
          local_34 = local_50;
          if (local_54 <= 0.0) {
            local_30 = DAT_00baad50;
          }
          else {
            local_30 = DAT_00baa454;
          }
        }
      }
LAB_0099f68b:
      local_44 = (float)((int)local_44 + 1);
    } while ((uint)local_44 < *(uint *)(local_5c + 0x1264));
    if (local_38 != 0.0) {
      local_48 = (float *)param_1[0x12];
      local_88 = (float)param_1[1];
      fStack_84 = (float)param_1[2];
      local_70 = local_40 * local_30;
      local_64 = local_2c * local_34 + fStack_84;
      local_6c = local_3c * local_30;
      local_68 = local_28 * local_34 + local_88;
      if (1 < (uint)((param_1[0x13] - (int)local_48) / 0x18)) {
        param_1[0x13] = param_1[0x13] + -0x18;
      }
      if (1 < (uint)((param_1[0x13] - (int)local_48) / 0x18)) {
        param_1[0x13] = param_1[0x13] + -0x18;
      }
      pfVar5 = (float *)param_1[0x13];
      local_44 = local_64;
      local_40 = local_70;
      local_3c = local_6c;
      local_38 = local_68;
      if (local_48 == pfVar5) {
        local_78 = local_28 * DAT_00baa924 + local_88;
        fStack_74 = local_2c * DAT_00baa924 + fStack_84;
        if (pfVar5 == (float *)param_1[0x14]) {
          fStack_80 = local_88;
          fStack_7c = fStack_84;
          FUN_009a17b0(pfVar5,&local_88);
        }
        else {
          *pfVar5 = local_88;
          pfVar5[1] = fStack_84;
          pfVar5[2] = local_88;
          pfVar5[3] = fStack_84;
          *(ulonglong *)(pfVar5 + 4) = CONCAT44(fStack_74,local_78);
          param_1[0x13] = param_1[0x13] + 0x18;
        }
        pfVar5 = (float *)param_1[0x13];
      }
      fVar7 = local_28 * DAT_00baa87c;
      local_78 = local_38 - local_28 * DAT_00baa784;
      fStack_74 = local_44 - local_2c * DAT_00baa784;
      fStack_80 = local_38 - local_28 * DAT_00baa950;
      fStack_7c = local_44 - local_2c * DAT_00baa950;
      local_88 = local_38 - fVar7;
      fStack_84 = local_44 - local_2c * DAT_00baa87c;
      local_28 = fVar7;
      if (pfVar5 == (float *)param_1[0x14]) {
        FUN_009a17b0(pfVar5,&local_88);
      }
      else {
        *pfVar5 = local_88;
        pfVar5[1] = fStack_84;
        pfVar5[2] = fStack_80;
        pfVar5[3] = fStack_7c;
        *(ulonglong *)(pfVar5 + 4) = CONCAT44(fStack_74,local_78);
        param_1[0x13] = param_1[0x13] + 0x18;
      }
      pfVar5 = (float *)param_1[0x13];
      local_78 = local_40 * DAT_00baa950 + local_38;
      fStack_74 = local_3c * DAT_00baa950 + local_44;
      fStack_80 = local_40 * DAT_00baa784 + local_38;
      fStack_7c = local_3c * DAT_00baa784 + local_44;
      local_88 = local_40 * DAT_00baa87c + local_38;
      fStack_84 = local_3c * DAT_00baa87c + local_44;
      if (pfVar5 == (float *)param_1[0x14]) {
        FUN_009a17b0(pfVar5,&local_88);
      }
      else {
        *pfVar5 = local_88;
        pfVar5[1] = fStack_84;
        pfVar5[2] = fStack_80;
        pfVar5[3] = fStack_7c;
        *(ulonglong *)(pfVar5 + 4) = CONCAT44(fStack_74,local_78);
        param_1[0x13] = param_1[0x13] + 0x18;
      }
      pfVar5 = (float *)HELPER_Laser_WallEndpoint(local_60,&local_68,&local_70);
      fStack_80 = local_40 * DAT_00baa924;
      local_88 = *pfVar5;
      param_1[3] = (int)local_88;
      fStack_84 = pfVar5[1];
      fStack_80 = local_88 - fStack_80;
      fStack_7c = local_3c * DAT_00baa924;
      param_1[4] = (int)fStack_84;
      pfVar5 = (float *)param_1[0x13];
      fStack_7c = fStack_84 - fStack_7c;
      local_78 = local_88;
      fStack_74 = fStack_84;
      if (pfVar5 == (float *)param_1[0x14]) {
        FUN_009a17b0(pfVar5,&local_88);
      }
      else {
        *pfVar5 = local_88;
        pfVar5[1] = fStack_84;
        pfVar5[2] = fStack_80;
        pfVar5[3] = fStack_7c;
        *(ulonglong *)(pfVar5 + 4) = CONCAT44(fStack_84,local_88);
        param_1[0x13] = param_1[0x13] + 0x18;
      }
      if (param_1[0xd] != param_1[0xe]) {
        fVar7 = (float)param_1[4] - *(float *)(param_1[0xe] + -4);
        fVar8 = (float)param_1[3] - *(float *)(param_1[0xe] + -8);
        fVar7 = fVar7 * fVar7 + fVar8 * fVar8;
        FUN_00435a50();
        if (DAT_00baa904 < fVar7) {
          param_1[8] = param_1[7];
          param_1[0xe] = param_1[0xd];
          param_1[0xb] = param_1[10];
        }
      }
    }
  }
  ExceptionList = local_1c;
  return;
}

