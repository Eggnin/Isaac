/* Local J460 decompiler output.
 * VA: 0x0099fa60
 * Entry: 0099fa60
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Laser sampled branch
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Laser sampled branch */

void __fastcall HELPER_HomingLaser_PrimitiveA(int param_1)

{
  float *pfVar1;
  float10 fVar2;
  float fVar3;
  float fVar4;
  double dVar5;
  double dVar6;
  float in_XMM1_Da;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  uint uStack_48;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  
  fVar7 = *(float *)(param_1 + 0xc) - *(float *)(param_1 + 4);
  fVar10 = *(float *)(param_1 + 0x10) - *(float *)(param_1 + 8);
  fVar3 = fVar7 * fVar7 + fVar10 * fVar10;
  FUN_00435a50();
  if (DAT_00ba9fe4 < fVar3) {
    fVar10 = (DAT_00baa454 / fVar3) * fVar10;
    fVar7 = fVar7 * (DAT_00baa454 / fVar3);
  }
  pfVar1 = *(float **)(param_1 + 0x4c);
  local_30 = *(float *)(param_1 + 4);
  local_20 = fVar7 * DAT_00baa924 + local_30;
  fStack_2c = *(float *)(param_1 + 8);
  fStack_1c = fVar10 * DAT_00baa924 + fStack_2c;
  fStack_28 = local_30;
  fStack_24 = fStack_2c;
  if (pfVar1 == *(float **)(param_1 + 0x50)) {
    FUN_009a17b0(pfVar1,&local_30);
  }
  else {
    *pfVar1 = local_30;
    pfVar1[1] = fStack_2c;
    pfVar1[2] = local_30;
    pfVar1[3] = fStack_2c;
    *(ulonglong *)(pfVar1 + 4) = CONCAT44(fStack_1c,local_20);
    *(int *)(param_1 + 0x4c) = *(int *)(param_1 + 0x4c) + 0x18;
  }
  fVar3 = *(float *)(param_1 + 0x10) - *(float *)(param_1 + 8);
  fVar10 = *(float *)(param_1 + 0xc) - *(float *)(param_1 + 4);
  fVar2 = (float10)_CIatan2();
  fVar7 = in_XMM1_Da * DAT_00baa47c;
  uStack_48 = 0;
  fVar8 = (float)fVar2 - DAT_00baa354;
  do {
    fVar9 = fVar8 - ((float)((double)uStack_48 + (double)(&DAT_00bacb00)[-((int)uStack_48 >> 0x1f)])
                    / DAT_00baa784) * DAT_00baa708 * DAT_00baa7a4 * DAT_00baa1d4;
    dVar5 = (double)(fVar9 + DAT_00baa1d4);
    dVar6 = dVar5;
    _libm_sse2_cos_precise();
    fVar4 = *(float *)(param_1 + 4);
    _libm_sse2_sin_precise();
    fStack_24 = (float)dVar5 * fVar7 + *(float *)(param_1 + 8);
    dVar5 = (double)fVar9;
    fStack_28 = (float)dVar6 * fVar7 + fVar4;
    _libm_sse2_cos_precise();
    fVar4 = *(float *)(param_1 + 4);
    dVar6 = (double)fVar9;
    _libm_sse2_sin_precise();
    fStack_2c = (float)dVar6 * in_XMM1_Da + *(float *)(param_1 + 8);
    fVar9 = fVar9 - DAT_00baa1d4;
    dVar6 = (double)fVar9;
    local_30 = (float)dVar5 * in_XMM1_Da + fVar4;
    _libm_sse2_cos_precise();
    fVar4 = (float)dVar6 * fVar7 + *(float *)(param_1 + 4);
    dVar6 = (double)fVar9;
    _libm_sse2_sin_precise();
    pfVar1 = *(float **)(param_1 + 0x4c);
    fStack_1c = (float)dVar6 * fVar7 + *(float *)(param_1 + 8);
    local_20 = fVar4;
    if (pfVar1 == *(float **)(param_1 + 0x50)) {
      FUN_009a17b0(pfVar1,&local_30);
    }
    else {
      *pfVar1 = local_30;
      pfVar1[1] = fStack_2c;
      pfVar1[2] = fStack_28;
      pfVar1[3] = fStack_24;
      *(ulonglong *)(pfVar1 + 4) = CONCAT44(fStack_1c,fVar4);
      *(int *)(param_1 + 0x4c) = *(int *)(param_1 + 0x4c) + 0x18;
    }
    pfVar1 = *(float **)(param_1 + 0x4c);
    uStack_48 = uStack_48 + 1;
  } while (uStack_48 < 6);
  fVar8 = fVar3 * DAT_00baa1d4;
  fStack_2c = *(float *)(param_1 + 0x10);
  local_30 = *(float *)(param_1 + 0xc);
  fStack_1c = fStack_2c - fVar8;
  fVar7 = fVar10 * DAT_00baa1d4;
  fStack_28 = local_30 - fVar10 * DAT_00baa380;
  local_20 = local_30 - fVar7;
  fStack_24 = fStack_2c - fVar3 * DAT_00baa380;
  local_30 = local_30 - fVar10 * DAT_00baa2d0;
  fStack_2c = fStack_2c - fVar3 * DAT_00baa2d0;
  if (pfVar1 == *(float **)(param_1 + 0x50)) {
    FUN_009a17b0(pfVar1,&local_30);
  }
  else {
    *pfVar1 = local_30;
    pfVar1[1] = fStack_2c;
    pfVar1[2] = fStack_28;
    pfVar1[3] = fStack_24;
    *(ulonglong *)(pfVar1 + 4) = CONCAT44(fStack_1c,local_20);
    *(int *)(param_1 + 0x4c) = *(int *)(param_1 + 0x4c) + 0x18;
  }
  local_30 = *(float *)(param_1 + 0xc);
  fStack_2c = *(float *)(param_1 + 0x10);
  local_20 = local_30 + fVar10;
  pfVar1 = *(float **)(param_1 + 0x4c);
  fStack_1c = fStack_2c + fVar3;
  fStack_28 = local_30 - fVar7;
  fStack_24 = fStack_2c - fVar8;
  if (pfVar1 == *(float **)(param_1 + 0x50)) {
    FUN_009a17b0(pfVar1,&local_30);
    return;
  }
  *pfVar1 = local_30;
  pfVar1[1] = fStack_2c;
  pfVar1[2] = fStack_28;
  pfVar1[3] = fStack_24;
  *(ulonglong *)(pfVar1 + 4) = CONCAT44(fStack_1c,local_20);
  *(int *)(param_1 + 0x4c) = *(int *)(param_1 + 0x4c) + 0x18;
  return;
}

