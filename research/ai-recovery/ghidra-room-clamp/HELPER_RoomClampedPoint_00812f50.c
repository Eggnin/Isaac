/* Local J460 decompiler output.
 * VA: 0x00812f50
 * Entry: 00812f50
 * Dispatcher: 0x006c2990
 * Types: 0
 * Identities: *
 * Evidence: Continuum native room-shape clamp
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=0; identities=*; Continuum native room-shape clamp */

void __thiscall
HELPER_RoomClampedPoint
          (int param_1_00,float *param_1,float *param_2,float param_3,float param_4,float param_5)

{
  int iVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float in_XMM3_Da;
  float fVar6;
  float local_28 [2];
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  float local_10;
  
  if ((*(int *)(param_1_00 + 4) == 0) ||
     (iVar1 = *(int *)(*(int *)(param_1_00 + 4) + 0x10), iVar1 == 0)) {
    fVar4 = param_2[1];
    *param_1 = *param_2;
    param_1[1] = fVar4;
    return;
  }
  if (3 < *(int *)(iVar1 + 0x48) - 9U) {
    fVar2 = in_XMM3_Da + *(float *)(param_1_00 + 0x14);
    fVar4 = *param_2;
    if (*param_2 <= fVar2) {
      fVar4 = fVar2;
    }
    param_4 = *(float *)(param_1_00 + 0x1c) - param_4;
    if (param_4 <= fVar4) {
      fVar4 = param_4;
    }
    param_3 = param_3 + *(float *)(param_1_00 + 0x18);
    *param_1 = fVar4;
    fVar4 = param_2[1];
    if (param_2[1] <= param_3) {
      fVar4 = param_3;
    }
    param_5 = *(float *)(param_1_00 + 0x20) - param_5;
    if (param_5 <= fVar4) {
      fVar4 = param_5;
    }
    param_1[1] = fVar4;
    return;
  }
  fVar4 = *param_2;
  fVar2 = param_2[1];
  FUN_0081f8b0(local_28);
  local_28[0] = local_28[0] - (float)((uint)in_XMM3_Da ^ DAT_00bacb70);
  local_20 = (float)((uint)param_4 ^ DAT_00bacb70) + local_20;
  local_10 = (float)((uint)param_4 ^ DAT_00bacb70) + local_10;
  local_18 = local_18 - (float)((uint)in_XMM3_Da ^ DAT_00bacb70);
  fVar6 = local_14 - (float)((uint)param_3 ^ DAT_00bacb70);
  if (local_10 - local_18 <= local_20 - local_28[0]) {
    fVar6 = (float)((uint)param_5 ^ DAT_00bacb70) + local_1c;
  }
  fVar5 = in_XMM3_Da + *(float *)(param_1_00 + 0x14);
  param_4 = *(float *)(param_1_00 + 0x1c) - param_4;
  if (fVar4 <= fVar5) {
    fVar4 = fVar5;
  }
  if (param_4 <= fVar4) {
    fVar4 = param_4;
  }
  param_3 = param_3 + *(float *)(param_1_00 + 0x18);
  iVar1 = *(int *)(*(int *)(*(int *)(param_1_00 + 4) + 0x10) + 0x48);
  if (fVar2 <= param_3) {
    fVar2 = param_3;
  }
  param_5 = *(float *)(param_1_00 + 0x20) - param_5;
  if (param_5 <= fVar2) {
    fVar2 = param_5;
  }
  fVar5 = fVar2;
  if (iVar1 == 9) {
    if (((fVar4 < local_28[0]) && (fVar2 < fVar6)) &&
       (fVar5 = fVar6, local_28[0] - fVar4 < fVar6 - fVar2)) {
      *param_1 = local_28[0];
      param_1[1] = fVar2;
      return;
    }
  }
  else if (iVar1 == 10) {
    if (((local_20 < fVar4) && (fVar2 < fVar6)) && (fVar5 = fVar6, fVar4 - local_20 < fVar6 - fVar2)
       ) {
      *param_1 = local_20;
      param_1[1] = fVar2;
      return;
    }
  }
  else {
    if (iVar1 == 0xb) {
      if ((local_18 <= fVar4) || (fVar2 <= fVar6)) goto LAB_00813155;
      fVar3 = local_18 - fVar4;
      local_10 = local_18;
    }
    else {
      if (((iVar1 != 0xc) || (fVar4 <= local_10)) || (fVar2 <= fVar6)) goto LAB_00813155;
      fVar3 = fVar4 - local_10;
    }
    fVar5 = fVar6;
    if (fVar3 < fVar2 - fVar6) {
      *param_1 = local_10;
      param_1[1] = fVar2;
      return;
    }
  }
LAB_00813155:
  *param_1 = fVar4;
  param_1[1] = fVar5;
  return;
}

