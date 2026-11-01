/* Local J460 decompiler output.
 * VA: 0x0099ec00
 * Entry: 0099ec00
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Ring and beam homing curve update
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Ring and beam homing curve update */

void __fastcall HELPER_HomingLaser_ApplyHoming(int param_1)

{
  float fVar1;
  int iVar2;
  float *pfVar3;
  int iVar4;
  uint uVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float in_XMM1_Da;
  float in_XMM2_Da;
  float fVar9;
  float local_2c;
  float local_28;
  float local_24;
  int local_20;
  
  if (*(int *)(param_1 + 0x40) == 1) {
    iVar4 = *(int *)(param_1 + 0x1c);
    uVar5 = 0;
    if (*(int *)(param_1 + 0x20) - iVar4 >> 3 != 0) {
      do {
        local_2c = *(float *)(iVar4 + uVar5 * 8) - *(float *)(param_1 + 4);
        fVar7 = *(float *)(iVar4 + 4 + uVar5 * 8);
        local_28 = fVar7 - *(float *)(param_1 + 8);
        fVar6 = local_2c * local_2c + local_28 * local_28;
        FUN_00435a50();
        if (0.0 < fVar6) {
          local_2c = local_2c * (DAT_00baa454 / fVar6);
          local_28 = local_28 * (DAT_00baa454 / fVar6);
        }
        iVar2 = (*(int *)(param_1 + 0x20) - *(int *)(param_1 + 0x1c) >> 3) + -1;
        fVar6 = (((float)((double)uVar5 + (double)(&DAT_00bacb00)[-((int)uVar5 >> 0x1f)]) *
                 _DAT_00baa8f8) / (float)((double)iVar2 + (double)(&DAT_00bacb00)[-(iVar2 >> 0x1f)])
                - (float)*(int *)(DAT_00c71678 + 0x264f8) * DAT_00baa120) - in_XMM2_Da;
        FUN_0041d520();
        fVar6 = fVar6 * DAT_00baa81c * in_XMM1_Da;
        *(float *)(iVar4 + uVar5 * 8) = local_2c * fVar6 + *(float *)(iVar4 + uVar5 * 8);
        *(float *)(iVar4 + 4 + uVar5 * 8) = local_28 * fVar6 + fVar7;
        uVar5 = uVar5 + 1;
      } while (uVar5 < (uint)(*(int *)(param_1 + 0x20) - *(int *)(param_1 + 0x1c) >> 3));
      return;
    }
  }
  else {
    fVar7 = *(float *)(param_1 + 0x10) - *(float *)(param_1 + 8);
    fVar6 = *(float *)(param_1 + 0xc) - *(float *)(param_1 + 4);
    fVar7 = fVar7 * fVar7 + fVar6 * fVar6;
    FUN_00435a50();
    fVar7 = fVar7 / DAT_00baaa94;
    uVar5 = 0;
    iVar4 = *(int *)(param_1 + 0x20);
    local_20 = *(int *)(param_1 + 0x1c);
    if (iVar4 - local_20 >> 3 != 1) {
      pfVar3 = (float *)(local_20 + 4);
      fVar6 = in_XMM1_Da * DAT_00baa87c;
      do {
        fVar1 = *pfVar3;
        local_24 = pfVar3[2] - fVar1;
        fVar9 = pfVar3[1] - pfVar3[-1];
        fVar8 = local_24 * local_24 + fVar9 * fVar9;
        FUN_00435a50();
        if (0.0 < fVar8) {
          local_24 = local_24 * (DAT_00baa454 / fVar8);
          fVar9 = fVar9 * (DAT_00baa454 / fVar8);
        }
        fVar9 = (float)((uint)fVar9 ^ DAT_00bacb70);
        if (uVar5 < 0x14) {
          iVar4 = iVar4 - local_20;
          fVar8 = (float)((double)uVar5 + (double)(&DAT_00bacb00)[-((int)uVar5 >> 0x1f)]) /
                  DAT_00baa87c;
LAB_0099eedf:
          local_28 = fVar8 * fVar6;
        }
        else {
          iVar4 = iVar4 - local_20;
          local_28 = fVar6;
          if ((iVar4 >> 3) - 0x16U < uVar5) {
            iVar2 = ((iVar4 >> 3) - uVar5) + 1;
            fVar8 = (float)((double)iVar2 + (double)(&DAT_00bacb00)[-(iVar2 >> 0x1f)]) /
                    DAT_00baa884;
            goto LAB_0099eedf;
          }
        }
        iVar4 = (iVar4 >> 3) + -2;
        fVar8 = (((float)((double)uVar5 + (double)(&DAT_00bacb00)[-((int)uVar5 >> 0x1f)]) /
                 (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)])) * fVar7 *
                 DAT_00baa854 - (float)*(int *)(DAT_00c71678 + 0x264f8) * DAT_00baa120) - in_XMM2_Da
        ;
        FUN_0041d520();
        uVar5 = uVar5 + 1;
        pfVar3[-1] = local_24 * fVar8 * local_28 + pfVar3[-1];
        *pfVar3 = fVar9 * fVar8 * local_28 + fVar1;
        pfVar3 = pfVar3 + 2;
        local_20 = *(int *)(param_1 + 0x1c);
        iVar4 = *(int *)(param_1 + 0x20);
      } while (uVar5 < (iVar4 - local_20 >> 3) - 1U);
    }
  }
  return;
}

