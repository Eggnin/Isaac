/* Local J460 decompiler output.
 * VA: 0x0099fed0
 * Entry: 0099fed0
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Laser sampled branch
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Laser sampled branch */

void __fastcall HELPER_HomingLaser_PrimitiveB(int param_1)

{
  int iVar1;
  float *pfVar2;
  int iVar3;
  float fVar4;
  float in_XMM1_Da;
  float fVar5;
  float in_XMM2_Da;
  float fVar6;
  float in_XMM3_Da;
  float fVar7;
  float fVar8;
  float fVar9;
  float local_7c;
  float local_78;
  float local_74;
  undefined local_60 [4];
  float local_5c;
  float local_58;
  float local_54;
  float local_50;
  float local_4c [2];
  float local_44;
  uint local_40;
  float local_3c;
  float local_38;
  float local_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  
  local_7c = *(float *)(param_1 + 0xc) - *(float *)(param_1 + 4);
  local_38 = *(float *)(param_1 + 4);
  local_74 = *(float *)(param_1 + 8);
  local_78 = *(float *)(param_1 + 0x10) - local_74;
  fVar4 = local_7c * local_7c + local_78 * local_78;
  local_3c = in_XMM3_Da;
  local_34 = local_74;
  FUN_00435a50();
  if (0.0 < fVar4) {
    local_7c = local_7c * (DAT_00baa454 / fVar4);
    local_78 = local_78 * (DAT_00baa454 / fVar4);
  }
  fVar4 = DAT_00baa54c;
  FUN_0041d540();
  fVar7 = DAT_00baa54c;
  FUN_0041d520();
  local_54 = local_7c * in_XMM1_Da;
  iVar3 = *(int *)(param_1 + 0x4c) - *(int *)(param_1 + 0x48);
  local_50 = local_78 * in_XMM1_Da;
  fVar8 = local_54 * DAT_00baa198;
  local_4c[0] = (fVar4 * local_7c - fVar7 * local_78) * in_XMM2_Da * DAT_00baa2d0;
  local_44 = (fVar7 * local_7c + fVar4 * local_78) * in_XMM2_Da * DAT_00baa2d0;
  fVar9 = local_50 * DAT_00baa198;
  local_5c = local_54 * DAT_00baa2d0 - local_4c[0];
  local_58 = local_50 * DAT_00baa2d0 - local_44;
  iVar1 = iVar3 >> 0x1f;
  fVar6 = local_4c[0] + local_54 * DAT_00baa2d0;
  fVar5 = local_44 + local_50 * DAT_00baa2d0;
  fVar4 = fVar8;
  fVar7 = fVar9;
  if (iVar3 / 0x18 + iVar1 == iVar1) {
    local_20 = fVar8 + local_38;
    local_30 = *(float *)(param_1 + 4);
    fStack_2c = *(float *)(param_1 + 8);
    fStack_1c = local_74 + fVar9;
    pfVar2 = *(float **)(param_1 + 0x4c);
    if (pfVar2 == *(float **)(param_1 + 0x50)) {
      fStack_28 = local_30;
      fStack_24 = fStack_2c;
      FUN_009a17b0(pfVar2,&local_30);
    }
    else {
      *pfVar2 = local_30;
      pfVar2[1] = fStack_2c;
      pfVar2[2] = local_30;
      pfVar2[3] = fStack_2c;
      *(ulonglong *)(pfVar2 + 4) = CONCAT44(fStack_1c,local_20);
      *(int *)(param_1 + 0x4c) = *(int *)(param_1 + 0x4c) + 0x18;
    }
  }
  else {
    FUN_009a1610(local_60,*(int *)(param_1 + 0x4c) + -0x18);
    iVar1 = *(int *)(param_1 + 0x4c);
    local_38 = *(float *)(iVar1 + -0x18);
    local_74 = *(float *)(iVar1 + -0x14);
    *(float *)(iVar1 + -8) = fVar4 + local_38;
    *(float *)(iVar1 + -4) = local_74 + fVar7;
    local_34 = local_74;
  }
  pfVar2 = *(float **)(param_1 + 0x4c);
  local_54 = local_38 + local_54;
  fStack_2c = local_74 + local_58;
  local_30 = local_38 + local_5c;
  local_50 = local_74 + local_50;
  local_20 = fVar4 + local_30;
  fStack_28 = local_30 - fVar4;
  local_58 = local_38 + fVar6;
  fStack_1c = fVar7 + fStack_2c;
  local_5c = local_74 + fVar5;
  fStack_24 = fStack_2c - fVar7;
  if (pfVar2 == *(float **)(param_1 + 0x50)) {
    FUN_009a17b0(pfVar2,&local_30);
  }
  else {
    *pfVar2 = local_30;
    pfVar2[1] = fStack_2c;
    pfVar2[2] = fStack_28;
    pfVar2[3] = fStack_24;
    *(ulonglong *)(pfVar2 + 4) = CONCAT44(fStack_1c,local_20);
    *(int *)(param_1 + 0x4c) = *(int *)(param_1 + 0x4c) + 0x18;
  }
  local_20 = local_4c[0] + local_54;
  fStack_28 = local_54 - local_4c[0];
  fStack_24 = local_50 - local_44;
  pfVar2 = *(float **)(param_1 + 0x4c);
  fStack_1c = local_44 + local_50;
  local_30 = local_54;
  fStack_2c = local_50;
  if (pfVar2 == *(float **)(param_1 + 0x50)) {
    FUN_009a17b0(pfVar2,&local_30);
  }
  else {
    *pfVar2 = local_54;
    pfVar2[1] = local_50;
    pfVar2[2] = fStack_28;
    pfVar2[3] = fStack_24;
    *(ulonglong *)(pfVar2 + 4) = CONCAT44(fStack_1c,local_20);
    *(int *)(param_1 + 0x4c) = *(int *)(param_1 + 0x4c) + 0x18;
  }
  local_20 = local_58 - fVar8;
  pfVar2 = *(float **)(param_1 + 0x4c);
  fStack_1c = local_5c - fVar9;
  fStack_28 = fVar8 + local_58;
  local_30 = local_58;
  fStack_24 = fVar9 + local_5c;
  fStack_2c = local_5c;
  if (pfVar2 == *(float **)(param_1 + 0x50)) {
    FUN_009a17b0(pfVar2,&local_30);
  }
  else {
    *pfVar2 = local_58;
    pfVar2[1] = local_5c;
    pfVar2[2] = fStack_28;
    pfVar2[3] = fStack_24;
    *(ulonglong *)(pfVar2 + 4) = CONCAT44(fStack_1c,local_20);
    *(int *)(param_1 + 0x4c) = *(int *)(param_1 + 0x4c) + 0x18;
  }
  fVar6 = fVar6 * DAT_00baa2d0;
  pfVar2 = *(float **)(param_1 + 0x4c);
  fVar5 = fVar5 * DAT_00baa2d0;
  local_20 = local_38 - fVar6;
  fStack_28 = fVar6 + local_38;
  fStack_1c = local_74 - fVar5;
  fStack_24 = local_74 + fVar5;
  local_30 = local_38;
  fStack_2c = local_74;
  if (pfVar2 == *(float **)(param_1 + 0x50)) {
    FUN_009a17b0(pfVar2,&local_30);
  }
  else {
    *pfVar2 = local_38;
    pfVar2[1] = local_74;
    pfVar2[2] = fStack_28;
    pfVar2[3] = fStack_24;
    *(ulonglong *)(pfVar2 + 4) = CONCAT44(fStack_1c,local_20);
    *(int *)(param_1 + 0x4c) = *(int *)(param_1 + 0x4c) + 0x18;
  }
  local_44 = (float)((uint)local_7c ^ DAT_00bacb70);
  local_40 = (uint)local_78 ^ DAT_00bacb70;
  pfVar2 = (float *)HELPER_Laser_WallEndpoint(local_4c,&local_38,&local_44);
  fVar4 = *pfVar2;
  *(float *)(param_1 + 0xc) = fVar4;
  fVar7 = pfVar2[1];
  *(float *)(param_1 + 0x10) = fVar7;
  fVar5 = (fVar7 - local_74) * (fVar7 - local_74) + (fVar4 - local_38) * (fVar4 - local_38);
  FUN_00435a50();
  if ((NAN(local_3c) == (local_3c == 0.0)) && (local_3c < fVar5)) {
    fVar4 = local_38 - local_7c * local_3c;
    fVar7 = local_74 - local_78 * local_3c;
    *(float *)(param_1 + 0xc) = fVar4;
    *(float *)(param_1 + 0x10) = fVar7;
    fVar5 = local_3c;
  }
  pfVar2 = *(float **)(param_1 + 0x4c);
  fStack_28 = local_7c * fVar5 * DAT_00baa2d0;
  fStack_24 = local_78 * fVar5 * DAT_00baa2d0;
  local_20 = fVar4 - fStack_28;
  fStack_28 = fStack_28 + fVar4;
  fStack_1c = fVar7 - fStack_24;
  fStack_24 = fStack_24 + fVar7;
  if (pfVar2 != *(float **)(param_1 + 0x50)) {
    *pfVar2 = fVar4;
    pfVar2[1] = fVar7;
    pfVar2[2] = fStack_28;
    pfVar2[3] = fStack_24;
    *(ulonglong *)(pfVar2 + 4) = CONCAT44(fStack_1c,local_20);
    *(int *)(param_1 + 0x4c) = *(int *)(param_1 + 0x4c) + 0x18;
    return;
  }
  local_30 = fVar4;
  fStack_2c = fVar7;
  FUN_009a17b0(pfVar2,&local_30);
  return;
}

