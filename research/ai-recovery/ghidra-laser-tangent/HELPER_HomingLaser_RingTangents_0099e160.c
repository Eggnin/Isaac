/* Local J460 decompiler output.
 * VA: 0x0099e160
 * Entry: 0099e160
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Rebuild ring controls after target attachment
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Rebuild ring controls after target
   attachment */

void __fastcall HELPER_HomingLaser_RingTangents(int param_1)

{
  float *pfVar1;
  int iVar2;
  bool bVar3;
  bool bVar4;
  float fVar5;
  uint uVar6;
  int iVar7;
  float *pfVar8;
  uint uVar9;
  float fVar10;
  float in_XMM1_Da;
  float fVar11;
  float fVar12;
  float fVar13;
  
  fVar5 = DAT_00baa2d0;
  iVar7 = *(int *)(param_1 + 0x4c);
  pfVar1 = *(float **)(param_1 + 0x48);
  fVar10 = *(float *)(iVar7 + -0x18) - *pfVar1;
  fVar11 = *(float *)(iVar7 + -0x14) - pfVar1[1];
  if ((DAT_00baa06c <= fVar11 * fVar11 + fVar10 * fVar10) ||
     ((uint)((iVar7 - (int)pfVar1) / 0x18) < 3)) {
    bVar4 = false;
    iVar2 = iVar7 - (int)pfVar1 >> 0x1f;
    if ((iVar7 - (int)pfVar1) / 0x18 + iVar2 == iVar2) {
      return;
    }
    bVar3 = false;
  }
  else {
    bVar3 = true;
    bVar4 = true;
  }
  pfVar8 = pfVar1;
  uVar9 = 0;
  do {
    fVar10 = DAT_00c7b640;
    fVar11 = DAT_00c7b644;
    if (bVar3) {
      iVar2 = (iVar7 - (int)pfVar8) / 0x18;
      if (uVar9 != 0) {
        if (uVar9 == iVar2 - 1U) {
          fVar10 = pfVar8[6] - pfVar8[uVar9 * 6];
          fVar11 = pfVar8[7] - pfVar8[uVar9 * 6 + 1];
        }
        goto LAB_0099e26a;
      }
      fVar12 = *pfVar8 - pfVar8[iVar2 * 6 + -0xc];
      fVar13 = pfVar8[1] - pfVar8[iVar2 * 6 + -0xb];
    }
    else {
LAB_0099e26a:
      fVar12 = DAT_00c7b640;
      fVar13 = DAT_00c7b644;
      if (uVar9 != 0) {
        fVar12 = pfVar8[uVar9 * 6] - pfVar8[uVar9 * 6 + -6];
        fVar13 = pfVar8[uVar9 * 6 + 1] - pfVar8[uVar9 * 6 + -5];
      }
    }
    uVar6 = (iVar7 - (int)pfVar8) / 0x18 - 1;
    if (uVar9 < uVar6) {
      fVar10 = pfVar8[uVar9 * 6 + 6] - pfVar8[uVar9 * 6];
      fVar11 = pfVar8[uVar9 * 6 + 7] - pfVar8[uVar9 * 6 + 1];
    }
    fVar10 = (fVar12 + fVar10) * in_XMM1_Da;
    fVar11 = (fVar13 + fVar11) * in_XMM1_Da;
    if ((bVar4) || ((uVar9 != 0 && (uVar9 < uVar6)))) {
      fVar10 = fVar10 * fVar5;
      fVar11 = fVar11 * fVar5;
    }
    uVar6 = uVar9 + 1;
    pfVar1[uVar9 * 6 + 2] = pfVar1[uVar9 * 6] - fVar10;
    pfVar1[uVar9 * 6 + 3] = pfVar1[uVar9 * 6 + 1] - fVar11;
    pfVar1[uVar9 * 6 + 4] = fVar10 + pfVar1[uVar9 * 6];
    pfVar1[uVar9 * 6 + 5] = fVar11 + pfVar1[uVar9 * 6 + 1];
    iVar7 = *(int *)(param_1 + 0x4c);
    pfVar8 = *(float **)(param_1 + 0x48);
    uVar9 = uVar6;
    bVar3 = bVar4;
    if ((uint)((iVar7 - (int)pfVar8) / 0x18) <= uVar6) {
      return;
    }
  } while( true );
}

