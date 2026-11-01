/* Local J460 decompiler output.
 * VA: 0x009a0de0
 * Entry: 009a0de0
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Ring path post-sample helper
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Ring path post-sample helper */

void __fastcall HELPER_HomingLaser_SimplifySamples(int param_1)

{
  int *piVar1;
  float *pfVar2;
  int iVar3;
  float *pfVar4;
  uint uVar5;
  float fVar6;
  float in_XMM1_Da;
  float fVar7;
  float fVar8;
  float local_28;
  float local_24;
  uint local_20;
  
  piVar1 = (int *)(param_1 + 0x1c);
  if ((int *)(param_1 + 0x28) != piVar1) {
    FUN_008c2a70(*piVar1,*(undefined4 *)(param_1 + 0x20),param_1);
  }
  iVar3 = *(int *)(param_1 + 0x20) - *piVar1 >> 3;
  if (iVar3 != 0) {
    local_20 = iVar3 - 1;
    uVar5 = 1;
    if (1 < local_20) {
      do {
        iVar3 = *piVar1;
        local_28 = *(float *)(iVar3 + uVar5 * 8) - *(float *)(iVar3 + -8 + uVar5 * 8);
        local_24 = *(float *)(iVar3 + 4 + uVar5 * 8) - *(float *)(iVar3 + -4 + uVar5 * 8);
        fVar6 = local_28 * local_28 + local_24 * local_24;
        FUN_00435a50();
        if (0.0 < fVar6) {
          local_28 = local_28 * (DAT_00baa454 / fVar6);
          local_24 = local_24 * (DAT_00baa454 / fVar6);
        }
        iVar3 = iVar3 + uVar5 * 8;
        pfVar4 = (float *)(iVar3 + 8);
        fVar7 = *pfVar4 - *(float *)(*piVar1 + uVar5 * 8);
        fVar8 = *(float *)(iVar3 + 0xc) - *(float *)(*piVar1 + 4 + uVar5 * 8);
        fVar6 = fVar7 * fVar7 + fVar8 * fVar8;
        FUN_00435a50();
        if (0.0 < fVar6) {
          fVar7 = fVar7 * (DAT_00baa454 / fVar6);
          fVar8 = fVar8 * (DAT_00baa454 / fVar6);
        }
        if ((float)((uint)(DAT_00baa454 - (local_28 * fVar7 + local_24 * fVar8)) & DAT_00bacb40) <
            in_XMM1_Da) {
          pfVar2 = *(float **)(param_1 + 0x20);
          for (; pfVar4 != pfVar2; pfVar4 = pfVar4 + 2) {
            pfVar4[-2] = *pfVar4;
            pfVar4[-1] = pfVar4[1];
          }
          uVar5 = uVar5 - 1;
          *(float **)(param_1 + 0x20) = pfVar2 + -2;
          local_20 = local_20 - 1;
        }
        uVar5 = uVar5 + 1;
      } while (uVar5 < local_20);
    }
  }
  return;
}

