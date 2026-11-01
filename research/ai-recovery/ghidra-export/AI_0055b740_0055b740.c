/* Local J460 decompiler output.
 * VA: 0x0055b740
 * Entry: 0055b740
 * Dispatcher: 0x006c2990
 * Types: 810
 * Identities: 810.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0055c4c0; instructions=756
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=810; identities=810.0.0; dispatcher=0x006c2990;
   end=0x0055c4c0; instructions=756 */

void __fastcall AI_0055b740(int param_1)

{
  byte bVar1;
  char cVar2;
  int iVar3;
  char *pcVar4;
  uint uVar5;
  float *pfVar6;
  float10 fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  undefined8 local_2c;
  float local_24;
  float local_20;
  float local_1c;
  float local_18;
  char local_11;
  
  fVar9 = DAT_00ba9fe4;
  fVar8 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7240);
  local_11 = DAT_00ba9fe4 < fVar8;
  if (*(int *)(param_1 + 0xb64) != 6) {
    *(uint *)(param_1 + 0x184) = (byte)local_11 + 5;
  }
  if (((*(char *)(DAT_00c7169c + 0x2a3c9) == '\0') || (fVar8 <= fVar9)) ||
     (*(float *)(param_1 + 0x350) <= DAT_00baad84)) {
    iVar3 = FUN_0040b220(0);
    *(undefined4 *)(iVar3 + 0x48) = 0x3f800000;
    *(undefined4 *)(iVar3 + 0x4c) = 0x3f800000;
    *(undefined4 *)(iVar3 + 0x50) = 0x3f800000;
LAB_0055b857:
    *(undefined4 *)(iVar3 + 0x54) = 0x3f800000;
  }
  else {
    iVar3 = FUN_00738470(local_11);
    if (iVar3 == 0x1c) {
      iVar3 = FUN_0040b220(0);
      *(undefined4 *)(iVar3 + 0x48) = 0x3fb33333;
      *(undefined4 *)(iVar3 + 0x4c) = 0x3fb33333;
      *(undefined4 *)(iVar3 + 0x50) = 0x3fb33333;
      goto LAB_0055b857;
    }
    iVar3 = FUN_0040b220(0);
    *(undefined4 *)(iVar3 + 0x48) = 0x40a00000;
    *(undefined4 *)(iVar3 + 0x4c) = 0x40a00000;
    *(undefined4 *)(iVar3 + 0x50) = 0x40a00000;
    *(undefined4 *)(iVar3 + 0x54) = 0x3f800000;
    iVar3 = FUN_0040b220(0);
    *(undefined4 *)(iVar3 + 0x58) = 0x3f800000;
    *(undefined4 *)(iVar3 + 0x5c) = 0x3f800000;
    *(undefined4 *)(iVar3 + 0x60) = 0x3f800000;
    *(undefined4 *)(iVar3 + 100) = 0x3f19999a;
  }
  switch(*(undefined4 *)(param_1 + 0xb64)) {
  case 0:
    *(undefined4 *)(param_1 + 0x184) = 6;
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0xbb0) = 0;
    *(undefined4 *)(param_1 + 0xbb4) = 0;
    FUN_0040a380("SwimRight",0);
    return;
  case 3:
    if (local_11 == '\0') {
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
      if (*(int *)(param_1 + 0xf1c) == -1) {
        bVar1 = FUN_006eef60();
        bVar1 = ~bVar1 & 1;
      }
      else {
        FUN_006d82d0((int)&local_2c + 4);
        bVar1 = FUN_00a10630(&DAT_00c7b640);
      }
      if (bVar1 == 0) {
        return;
      }
      pfVar6 = (float *)FUN_006bec40(&local_20,0);
      local_2c._4_4_ = *pfVar6 - *(float *)(param_1 + 0x33c);
      local_24 = pfVar6[1] - *(float *)(param_1 + 0x340);
      if (((NAN(local_2c._4_4_) || NAN(DAT_00c7b640)) == (local_2c._4_4_ == DAT_00c7b640)) ||
         ((NAN(local_24) || NAN(DAT_00c7b644)) == (local_24 == DAT_00c7b644))) {
        FUN_00a0ffc0();
        fVar8 = local_2c._4_4_;
      }
      else {
        pfVar6 = (float *)FUN_0067f070(&local_20);
        local_24 = pfVar6[1];
        fVar8 = *pfVar6;
      }
      if (*(int *)(param_1 + 0xf1c) != -1) {
        local_1c = local_24;
        local_24 = fVar8;
        pfVar6 = (float *)FUN_006d82d0(&local_20);
        fVar8 = *pfVar6;
        local_24 = pfVar6[1];
      }
      if (((NAN(fVar8) || NAN(DAT_00c7b640)) != (fVar8 == DAT_00c7b640)) &&
         ((NAN(local_24) || NAN(DAT_00c7b644)) != (local_24 == DAT_00c7b644))) {
        return;
      }
      local_1c = local_24;
      fVar9 = DAT_00baa75c;
      if (*(int *)(param_1 + 0xf1c) == -1) {
        local_24 = fVar8;
        iVar3 = FUN_006eef60();
        fVar9 = (float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) * DAT_00ba9ff4;
        fVar8 = local_24;
        fVar9 = fVar9 + fVar9 + DAT_00baa630;
      }
      local_24 = fVar8;
      fVar8 = *(float *)(param_1 + 0x36c);
      if (NAN(fVar8) == (fVar8 == 0.0)) {
        *(float *)(param_1 + 0x364) =
             (*(float *)(param_1 + 0x39c) * local_1c * fVar9) / fVar8 + *(float *)(param_1 + 0x364);
        *(float *)(param_1 + 0x360) =
             (*(float *)(param_1 + 0x39c) * local_24 * fVar9) / fVar8 + *(float *)(param_1 + 0x360);
      }
      if ((float)((uint)local_24 & DAT_00bacb40) <= (float)((uint)local_1c & DAT_00bacb40)) {
        if (local_1c <= 0.0) {
          if (0.0 <= local_1c) goto LAB_0055c43a;
          pcVar4 = "HopUp";
        }
        else {
          pcVar4 = "HopDown";
        }
      }
      else if (local_24 <= 0.0) {
        if (0.0 <= local_24) goto LAB_0055c43a;
        pcVar4 = "HopLeft";
      }
      else {
        pcVar4 = "HopRight";
      }
      cVar2 = FUN_0040a5d0(pcVar4,1);
      if (cVar2 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x8c) = 1;
      }
LAB_0055c43a:
      *(undefined4 *)(param_1 + 0xb64) = 7;
      return;
    }
    if ((*(int *)(param_1 + 0xf1c) != -1) && (*(int *)(param_1 + 0x3bc) != 0)) {
      local_24 = (float)(param_1 + 0x3bc);
      FUN_004cf210(&local_24);
      *(undefined4 *)(param_1 + 0x3bc) = 0;
    }
    if ((NAN(*(float *)(param_1 + 0xbb4)) != (*(float *)(param_1 + 0xbb4) == 0.0)) &&
       (*(int *)(param_1 + 0x3bc) != 0)) {
      iVar3 = FUN_006eef60();
      *(float *)(param_1 + 0xbb4) =
           *(float *)(*(int *)(param_1 + 0x3bc) + 0x370) + DAT_00baa87c +
           (float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) * DAT_00ba9ff4 *
           DAT_00baa904;
      fVar8 = *(float *)(param_1 + 0x340) - *(float *)(*(int *)(param_1 + 0x3bc) + 0x340);
      FUN_00499d60();
      *(float *)(param_1 + 3000) = fVar8 * DAT_00baa948;
      uVar5 = FUN_006eef60();
      local_24 = DAT_00baa454;
      if ((uVar5 & 1) != 0) {
        local_24 = DAT_00baad50;
      }
      iVar3 = FUN_006eef60();
      *(float *)(param_1 + 0xbbc) =
           ((float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) * DAT_00ba9ff4 +
           DAT_00baa75c) * local_24;
    }
    if ((0.0 < *(float *)(param_1 + 0x14)) && (uVar5 = FUN_006eef60(), (uVar5 & 1) == 0)) {
      iVar3 = FUN_006eef60();
      FUN_006d6ba0(0xdd,0x3f4ccccd,10,0,
                   (float)((double)iVar3 + (double)(&DAT_00bacb00)[-(iVar3 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa198 + DAT_00baa4cc);
    }
    local_1c = *(float *)(param_1 + 0x3bc);
    if (local_1c == 0.0) {
      fVar8 = (float)FUN_006be840();
LAB_0055be2a:
      local_24 = *(float *)((int)fVar8 + 0x340) - *(float *)(param_1 + 0x340);
      local_2c = CONCAT44(*(float *)((int)fVar8 + 0x33c) - *(float *)(param_1 + 0x33c),
                          (undefined4)local_2c);
      FUN_00a10030(&local_20);
      cVar2 = FUN_00417430(0x200,0);
      if (cVar2 == '\0') {
        local_18 = local_1c;
        local_1c = local_20;
      }
      else {
        local_2c = DAT_00b1f4ec;
        local_24 = DAT_00b1f4f4;
        FUN_007e90f0();
        fVar7 = (float10)FUN_007e9080();
        local_24 = (float)(fVar7 * (float10)DAT_00baab30 * (float10)DAT_00baa088);
        fVar8 = local_24;
        FUN_0041d540();
        local_1c = fVar8;
        local_18 = local_24;
        FUN_0041d520();
      }
      cVar2 = FUN_00417430(0x1000800,0);
      if (cVar2 != '\0') {
        local_1c = local_1c * DAT_00baad50;
        local_18 = local_18 * DAT_00baad50;
      }
      if (*(int *)(param_1 + 0xf1c) != -1) {
        pfVar6 = (float *)FUN_006d82d0((int)&local_2c + 4);
        local_1c = *pfVar6;
        local_18 = pfVar6[1];
      }
      if (*(int *)(param_1 + 0x30) == 1) {
        local_1c = local_1c * DAT_00baa380;
        local_18 = local_18 * DAT_00baa380;
      }
      fVar8 = *(float *)(param_1 + 0x39c);
      fVar10 = fVar8 * _DAT_00baa080 + *(float *)(param_1 + 0xbb0);
      fVar9 = DAT_00baa244;
      if (fVar10 <= DAT_00baa244) {
        fVar9 = fVar10;
      }
      *(float *)(param_1 + 0xbb0) = fVar9;
      *(float *)(param_1 + 0x360) = fVar9 * local_1c * fVar8 + *(float *)(param_1 + 0x360);
      *(float *)(param_1 + 0x364) = fVar9 * local_18 * fVar8 + *(float *)(param_1 + 0x364);
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa428;
      if (((NAN(local_1c) || NAN(DAT_00c7b640)) == (local_1c == DAT_00c7b640)) ||
         ((NAN(local_18) || NAN(DAT_00c7b644)) == (local_18 == DAT_00c7b644))) {
        if ((float)((uint)local_1c & DAT_00bacb40) <= (float)((uint)local_18 & DAT_00bacb40)) {
          if (local_18 <= 0.0) {
            if (0.0 <= local_18) goto LAB_0055c07d;
            pcVar4 = "SwimUp";
          }
          else {
            pcVar4 = "SwimDown";
          }
        }
        else if (0.0 < local_1c) {
          pcVar4 = "SwimRight";
        }
        else {
          if (0.0 <= local_1c) goto LAB_0055c07d;
          pcVar4 = "SwimLeft";
        }
        FUN_0040a380(pcVar4,0);
      }
LAB_0055c07d:
      if (*(int *)(param_1 + 0xf1c) != -1) {
        fVar8 = local_18 * local_18 + local_1c * local_1c;
        FUN_00435a50();
        if (*(int *)(param_1 + 0x30) == 1) {
          fVar8 = fVar8 / DAT_00baa380;
        }
        *(float *)(param_1 + 0x14c) = fVar8 * DAT_00baa2d0 + DAT_00baa2d0;
      }
    }
    else {
      fVar8 = *(float *)(param_1 + 0xbbc) + *(float *)(param_1 + 3000);
      FUN_00682740();
      local_24 = fVar8;
      *(float *)(param_1 + 3000) = local_24;
      fVar8 = *(float *)((int)local_1c + 0x340) - *(float *)(param_1 + 0x340);
      fVar9 = *(float *)((int)local_1c + 0x33c) - *(float *)(param_1 + 0x33c);
      fVar8 = fVar8 * fVar8 + fVar9 * fVar9;
      FUN_00435a50();
      if (*(float *)(param_1 + 0xbb4) + DAT_00baa8d0 < fVar8) {
        *(undefined4 *)(param_1 + 0xbb0) = 0x3f000000;
        fVar8 = local_1c;
        goto LAB_0055be2a;
      }
      local_24 = local_24 * DAT_00baa088;
      fVar8 = local_24;
      FUN_0041d540();
      local_18 = (fVar8 * *(float *)(param_1 + 0xbb4) + *(float *)((int)local_1c + 0x33c)) -
                 *(float *)(param_1 + 0x33c);
      FUN_0041d520();
      local_24 = (local_24 * *(float *)(param_1 + 0xbb4) + *(float *)((int)local_1c + 0x340)) -
                 *(float *)(param_1 + 0x340);
      fVar9 = local_24 * local_24 + local_18 * local_18;
      FUN_00435a50();
      fVar8 = local_18;
      if ((DAT_00baa87c < fVar9) && (0.0 < fVar9)) {
        fVar8 = local_18 * (DAT_00baa87c / fVar9);
        local_24 = local_24 * (DAT_00baa87c / fVar9);
      }
      fVar9 = *(float *)(param_1 + 0x39c);
      fVar10 = DAT_00baa248;
      if ((NAN(fVar9) || NAN(DAT_00baa454)) == (fVar9 == DAT_00baa454)) {
        fVar10 = DAT_00baa248 / ((fVar9 + DAT_00baa248) - fVar9 * DAT_00baa248);
      }
      fVar10 = DAT_00baa454 - fVar10;
      fVar9 = *(float *)((int)local_1c + 0x364);
      *(float *)(param_1 + 0x360) =
           ((fVar8 + *(float *)((int)local_1c + 0x360)) - *(float *)(param_1 + 0x360)) * fVar10 +
           *(float *)(param_1 + 0x360);
      *(float *)(param_1 + 0x364) =
           ((local_24 + fVar9) - *(float *)(param_1 + 0x364)) * fVar10 + *(float *)(param_1 + 0x364)
      ;
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3c4;
      fVar8 = DAT_00baae50;
      if (0.0 < *(float *)(param_1 + 0xbbc)) {
        fVar8 = DAT_00baa9b4;
      }
      fVar8 = (fVar8 + *(float *)(param_1 + 3000)) * DAT_00baa088;
      local_24 = fVar8;
      FUN_0041d540();
      local_1c = fVar8;
      fVar8 = local_24;
      FUN_0041d520();
      if ((float)((uint)local_1c & DAT_00bacb40) <= (float)((uint)fVar8 & DAT_00bacb40)) {
        if (fVar8 <= 0.0) {
          if (fVar8 < 0.0) {
            FUN_0040a380("SwimUp",0);
          }
        }
        else {
          FUN_0040a380("SwimDown",0);
        }
      }
      else if (0.0 < local_1c) {
        FUN_0040a380("SwimRight",0);
      }
      else if (local_1c != 0.0) {
        FUN_0040a380("SwimLeft",0);
      }
    }
    fVar9 = DAT_00baad34;
    local_24 = DAT_00baa81c;
    fVar8 = *(float *)(param_1 + 0x360);
    iVar3 = *(int *)(DAT_00c71678 + 0x18300);
    fVar11 = fVar8 * *(float *)(param_1 + 0x36c) + *(float *)(param_1 + 0x33c);
    fVar10 = *(float *)(param_1 + 0x36c) * *(float *)(param_1 + 0x364) + *(float *)(param_1 + 0x340)
    ;
    if (((fVar8 < 0.0) && (fVar11 < *(float *)(iVar3 + 0x14) + DAT_00baa81c)) ||
       ((0.0 < fVar8 && (*(float *)(iVar3 + 0x1c) - DAT_00baa81c < fVar11)))) {
      *(float *)(param_1 + 0x360) = fVar8 * DAT_00baad34;
    }
    fVar8 = *(float *)(param_1 + 0x364);
    if (((fVar8 < 0.0) && (fVar10 < *(float *)(iVar3 + 0x18) + DAT_00baa87c)) ||
       ((0.0 < fVar8 && (*(float *)(iVar3 + 0x20) - DAT_00baa75c < fVar10)))) {
      *(float *)(param_1 + 0x364) = fVar8 * fVar9;
    }
    local_24 = local_24 / *(float *)(param_1 + 0x36c);
    local_1c = *(float *)(param_1 + 0x364);
    fVar8 = *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) + local_1c * local_1c;
    FUN_00435a50();
    if ((local_24 < fVar8) && (DAT_00ba9fe4 < fVar8)) {
      *(float *)(param_1 + 0x360) = (local_24 / fVar8) * *(float *)(param_1 + 0x360);
      *(float *)(param_1 + 0x364) = local_1c * (local_24 / fVar8);
      return;
    }
    break;
  case 6:
    *(undefined4 *)(param_1 + 0x184) = 3;
    *(undefined4 *)(param_1 + 0x188) = 0;
    *(float *)(param_1 + 0x360) = *(float *)(param_1 + 3000);
    *(undefined4 *)(param_1 + 0x364) = *(undefined4 *)(param_1 + 0xbbc);
    fVar8 = *(float *)(param_1 + 0x39c);
    fVar9 = fVar8 * DAT_00baa354 + *(float *)(param_1 + 0xbb0);
    *(float *)(param_1 + 0xbb0) = fVar9;
    fVar10 = (float)((uint)fVar9 ^ DAT_00bacb70);
    fVar9 = fVar9 * fVar8 + *(float *)(param_1 + 0x350);
    *(float *)(param_1 + 0x350) = fVar9;
    if (fVar9 <= fVar10 * fVar8) {
      pcVar4 = "SwimRight";
      if (*(float *)(param_1 + 3000) < 0.0) {
        pcVar4 = "SwimLeft";
      }
      FUN_0040a380(pcVar4,0);
      return;
    }
    *(undefined4 *)(param_1 + 0x350) = 0;
    *(undefined4 *)(param_1 + 0xbb0) = 0;
    *(float *)(param_1 + 3000) = DAT_00c7b640;
    *(float *)(param_1 + 0xbbc) = DAT_00c7b644;
    *(float *)(param_1 + 0x334) = DAT_00c7b640;
    *(float *)(param_1 + 0x338) = DAT_00c7b644;
    *(undefined4 *)(param_1 + 0x184) = 6;
    *(undefined4 *)(param_1 + 0x188) = 4;
    *(undefined4 *)(param_1 + 0xb64) = 3;
    return;
  case 7:
    if (*(int *)(param_1 + 0x7c) != 0) {
      cVar2 = FUN_0040ae70(&DAT_00b1d574);
      if (cVar2 != '\0') {
        *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa354;
      }
      if ((*(int *)(param_1 + 0x7c) != 0) && (*(char *)(param_1 + 0x8c) != '\0')) {
        return;
      }
    }
    *(undefined4 *)(param_1 + 0xb64) = 3;
  }
  return;
}

