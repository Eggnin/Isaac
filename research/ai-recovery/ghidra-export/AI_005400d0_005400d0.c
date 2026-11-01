/* Local J460 decompiler output.
 * VA: 0x005400d0
 * Entry: 005400d0
 * Dispatcher: 0x006c2990
 * Types: 256
 * Identities: 256.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00540510; instructions=238
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=256; identities=256.0.0; dispatcher=0x006c2990;
   end=0x00540510; instructions=238 */

void __fastcall AI_005400d0(int *param_1)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  float *pfVar4;
  float fVar5;
  float fVar6;
  double dVar7;
  float fVar8;
  float local_1c;
  float local_10 [3];
  
  iVar3 = FUN_009be530(DAT_00c71678 + 0x1baa8,param_1[0xfb]);
  if ((iVar3 != 0) && (*(char *)((int)param_1 + 0x173) == '\0')) {
    FUN_009e5c00(param_1);
    (**(code **)(*param_1 + 0x28))();
    FUN_007599d0(1,param_1 + 0xcf,0);
    return;
  }
  iVar3 = FUN_009be080(9,DAT_00c71678 + 0x1baa8,1);
  fVar5 = DAT_00baa7a8;
  if ((iVar3 != 0) && ((param_1[0x5a] & 0x20000000U) == 0)) {
    FUN_006c0f30(0xd,0,0,0xffffffff);
    iVar3 = DAT_00c7b640;
    param_1[0x2ee] = DAT_00c7b640;
    iVar2 = DAT_00c7b644;
    param_1[0x2ef] = DAT_00c7b644;
    param_1[0x2ec] = iVar3;
    param_1[0x2ed] = iVar2;
    return;
  }
  if (param_1[0x2d9] == 0) {
    param_1[0x104] = 0;
    param_1[0x2d9] = 4;
    iVar3 = FUN_006eef60();
    fVar5 = (float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) * DAT_00ba9ff4;
    param_1[0x2ec] = (int)((fVar5 + fVar5) * DAT_00baa708);
    return;
  }
  if (param_1[0x2d9] == 4) {
    fVar6 = (float)param_1[0x2ec] + _DAT_00baa188;
    bVar1 = DAT_00baa7a8 <= fVar6;
    param_1[0x2ec] = (int)fVar6;
    if (bVar1) {
      param_1[0x2ec] = (int)(fVar6 - fVar5);
    }
    iVar3 = FUN_006bec40(local_10,0);
    local_10[0] = *(float *)(iVar3 + 4) - (float)param_1[0xd0];
    FUN_00435a50();
    FUN_006be840();
    if (param_1[0x3c7] == -1) {
      pfVar4 = (float *)FUN_00a10030(local_10);
      dVar7 = (double)((float)param_1[0x2ec] * DAT_00baa2d0);
      _libm_sse2_cos_precise();
      local_1c = (float)dVar7 * DAT_00baa81c + *pfVar4 * DAT_00baa854 * DAT_00baa3e0;
      dVar7 = (double)(float)param_1[0x2ec];
      _libm_sse2_sin_precise();
      fVar6 = (float)dVar7 * DAT_00baa81c;
      fVar5 = pfVar4[1] * DAT_00baa854 * DAT_00baa3e0;
    }
    else {
      pfVar4 = (float *)FUN_006d82d0(local_10);
      dVar7 = (double)((float)param_1[0x2ec] * DAT_00baa2d0);
      _libm_sse2_cos_precise();
      local_1c = (float)dVar7 * DAT_00baa7a4 + *pfVar4 * DAT_00baa854 * DAT_00baa4b0;
      dVar7 = (double)(float)param_1[0x2ec];
      _libm_sse2_sin_precise();
      fVar6 = (float)dVar7 * DAT_00baa7a4;
      fVar5 = pfVar4[1] * DAT_00baa854 * DAT_00baa4b0;
    }
    fVar8 = local_1c * DAT_00baa380 * DAT_00baa3e0 * DAT_00baa0b4 * (float)param_1[0xe7] +
            (float)param_1[0xd8];
    local_10[0] = (fVar6 + fVar5) * DAT_00baa380 * DAT_00baa3e0 * DAT_00baa0b4 *
                  (float)param_1[0xe7] + (float)param_1[0xd9];
    param_1[0xd8] = (int)fVar8;
    param_1[0xd9] = (int)local_10[0];
    fVar5 = local_10[0] * local_10[0] + fVar8 * fVar8;
    FUN_00435a50();
    if ((DAT_00baa7e8 < fVar5) && (0.0 < fVar5)) {
      fVar5 = DAT_00baa7e8 / fVar5;
      param_1[0xd9] = (int)(fVar5 * local_10[0]);
      param_1[0xd8] = (int)(fVar5 * fVar8);
    }
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa418);
  }
  FUN_0040a380(&DAT_00b1de04,0);
  *(bool *)(param_1 + 0x52) = 0.0 < (float)param_1[0xd8];
  return;
}

