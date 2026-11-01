/* Local J460 decompiler output.
 * VA: 0x0099c430
 * Entry: 0099c430
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Target distance predicate for curve attachment
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Target distance predicate for curve
   attachment */

void __fastcall
HELPER_HomingLaser_NodeDistance(float *param_1_00,float *param_2_00,float *param_1,float *param_2)

{
  uint uVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float local_20;
  float local_18;
  float local_c;
  
  fVar12 = 0.0;
  local_c = 0.0;
  uVar1 = 1;
  fVar11 = DAT_00baaca4;
  local_20 = param_2_00[4] * 0.0 + *param_2_00 + param_1[2] * 0.0 + *param_1 * 0.0;
  local_18 = param_2_00[5] * 0.0 + param_2_00[1] + param_1[3] * 0.0 + param_1[1] * 0.0;
  do {
    fVar2 = (float)((double)uVar1 + (double)(&DAT_00bacb00)[-((int)uVar1 >> 0x1f)]) / DAT_00baa784;
    fVar7 = DAT_00baa454 - fVar2;
    fVar3 = fVar7 * fVar7 * fVar7;
    fVar4 = fVar7 * fVar7 * DAT_00baa6fc * fVar2;
    fVar8 = fVar7 * DAT_00baa6fc * fVar2 * fVar2;
    fVar7 = fVar2 * fVar2 * fVar2;
    fVar10 = *param_2_00 * fVar3 + param_2_00[4] * fVar4 + param_1[2] * fVar8 + *param_1 * fVar7;
    fVar9 = fVar10 - local_20;
    fVar6 = param_1_00[1] - local_18;
    fVar7 = param_2_00[1] * fVar3 + param_2_00[5] * fVar4 + param_1[3] * fVar8 + param_1[1] * fVar7;
    fVar8 = fVar7 - local_18;
    fVar3 = fVar8 * fVar8 + fVar9 * fVar9;
    fVar4 = *param_1_00 - local_20;
    if ((NAN(fVar3) != (fVar3 == 0.0)) ||
       (fVar3 = (fVar9 * fVar4 + fVar8 * fVar6) / fVar3, fVar3 < 0.0)) {
      fVar5 = 0.0;
      fVar3 = fVar4 * fVar4 + fVar6 * fVar6;
    }
    else {
      fVar5 = DAT_00baa454;
      fVar4 = fVar7;
      fVar6 = fVar10;
      if (fVar3 <= DAT_00baa454) {
        fVar5 = fVar3;
        fVar4 = fVar8 * fVar3 + local_18;
        fVar6 = fVar9 * fVar3 + local_20;
      }
      fVar3 = (param_1_00[1] - fVar4) * (param_1_00[1] - fVar4) +
              (*param_1_00 - fVar6) * (*param_1_00 - fVar6);
    }
    if (fVar3 < fVar11) {
      fVar12 = (fVar2 - local_c) * fVar5 + local_c;
      fVar11 = DAT_00baa454 - fVar12;
      fVar3 = fVar11 * fVar11 * fVar11;
      fVar4 = fVar11 * fVar11 * DAT_00baa6fc * fVar12;
      fVar8 = fVar11 * DAT_00baa6fc * fVar12 * fVar12;
      fVar6 = fVar12 * fVar12 * fVar12;
      fVar11 = *param_1_00 -
               (*param_2_00 * fVar3 + param_2_00[4] * fVar4 + param_1[2] * fVar8 + *param_1 * fVar6)
      ;
      fVar3 = param_1_00[1] -
              (param_2_00[1] * fVar3 + param_2_00[5] * fVar4 + param_1[3] * fVar8 +
              param_1[1] * fVar6);
      fVar11 = fVar3 * fVar3 + fVar11 * fVar11;
    }
    uVar1 = uVar1 + 1;
    local_20 = fVar10;
    local_18 = fVar7;
    local_c = fVar2;
  } while (uVar1 < 6);
  if (param_2 != (float *)0x0) {
    *param_2 = fVar12;
  }
  return;
}

