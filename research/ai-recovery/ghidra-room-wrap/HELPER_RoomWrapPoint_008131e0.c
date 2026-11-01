/* Local J460 decompiler output.
 * VA: 0x008131e0
 * Entry: 008131e0
 * Dispatcher: 0x006c2990
 * Types: 0
 * Identities: *
 * Evidence: Continuum helper delegates
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=0; identities=*; Continuum helper delegates */

void __thiscall
HELPER_RoomWrapPoint
          (int param_1_00,float *param_1,float *param_2,float param_3,float param_4,float param_5)

{
  float fVar1;
  bool bVar2;
  float fVar3;
  float in_XMM3_Da;
  float fVar4;
  float fVar5;
  float local_10;
  float local_c;
  
  FUN_00812f50(&local_10,param_2,param_3,param_4,param_5);
  fVar1 = *param_2;
  if (((NAN(local_10) || NAN(fVar1)) != (local_10 == fVar1)) &&
     ((NAN(local_c) || NAN(param_2[1])) != (local_c == param_2[1]))) {
    fVar1 = param_2[1];
    *param_1 = *param_2;
    param_1[1] = fVar1;
    return;
  }
  fVar4 = param_2[1];
  fVar5 = local_c - param_2[1];
  fVar3 = local_10 - fVar1;
  if ((NAN(fVar5) != (fVar5 == 0.0)) ||
     ((bVar2 = false, NAN(fVar3) == (fVar3 == 0.0) &&
      ((float)((uint)fVar3 & DAT_00bacb40) < (float)((uint)fVar5 & DAT_00bacb40))))) {
    bVar2 = true;
  }
  fVar3 = in_XMM3_Da + *(float *)(param_1_00 + 0x14);
  param_3 = param_3 + *(float *)(param_1_00 + 0x18);
  param_4 = *(float *)(param_1_00 + 0x1c) - param_4;
  param_5 = *(float *)(param_1_00 + 0x20) - param_5;
  if (bVar2) {
    if (fVar1 < local_10) {
      param_1[1] = fVar4;
      *param_1 = fVar1 + (param_4 - fVar3);
      return;
    }
    if (local_10 < fVar1) {
      param_1[1] = fVar4;
      *param_1 = fVar1 - (param_4 - fVar3);
      return;
    }
  }
  else {
    if (fVar4 < local_c) {
      *param_1 = fVar1;
      param_1[1] = fVar4 + (param_5 - param_3);
      return;
    }
    if (local_c < fVar4) {
      fVar4 = fVar4 - (param_5 - param_3);
    }
  }
  *param_1 = fVar1;
  param_1[1] = fVar4;
  return;
}

