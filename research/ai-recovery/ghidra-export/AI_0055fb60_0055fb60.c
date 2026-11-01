/* Local J460 decompiler output.
 * VA: 0x0055fb60
 * Entry: 0055fb60
 * Dispatcher: 0x006c2990
 * Types: 812
 * Identities: 812.0.0,812.1.0
 * Evidence: dispatcher=0x006c2990; end=0x00560570; instructions=547
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=812; identities=812.0.0,812.1.0; dispatcher=0x006c2990;
   end=0x00560570; instructions=547 */

void __fastcall AI_0055fb60(int param_1)

{
  char cVar1;
  int iVar2;
  uint uVar3;
  float *pfVar4;
  int iVar5;
  float fVar6;
  float fVar7;
  undefined auVar8 [16];
  float fVar9;
  double dVar10;
  undefined local_e4 [4];
  int local_e0;
  float local_dc;
  float local_d8;
  float local_d4;
  float local_d0;
  float local_cc;
  char local_c5;
  float local_c4;
  undefined local_c0 [12];
  undefined4 local_b4;
  undefined4 local_b0;
  undefined4 local_ac;
  int local_2c;
  uint local_14;
  
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  local_d8 = (*(float *)(param_1 + 0xbb0) + DAT_00baa9b4) * DAT_00baa088;
  local_dc = local_d8;
  FUN_0041d540();
  FUN_0041d520();
  iVar2 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1d18);
  local_e0 = FUN_006b9bb0();
  if ((((iVar2 == 0x1f) || (iVar2 == 6)) || (local_e0 == 0x1b)) ||
     (local_c5 = '\0', local_e0 == 0x1c)) {
    local_c5 = '\x01';
  }
  if (DAT_00ba9fe4 < *(float *)(param_1 + 0x14)) {
    if (*(int *)(param_1 + 8) != *(int *)(param_1 + 0xc)) {
      local_cc = *(float *)(param_1 + 0x33c) - *(float *)(*(int *)(param_1 + 0xc) + -0x18);
      local_c4 = *(float *)(param_1 + 0x340) - *(float *)(*(int *)(param_1 + 0xc) + -0x14);
      fVar6 = local_cc * local_cc + local_c4 * local_c4;
      FUN_00435a50();
      fVar7 = local_cc;
      if (DAT_00ba9fe4 < fVar6) {
        local_c4 = local_c4 * (DAT_00baa454 / fVar6);
        fVar7 = local_cc * (DAT_00baa454 / fVar6);
      }
      *(float *)(param_1 + 0x360) = fVar7;
      *(float *)(param_1 + 0x364) = local_c4;
    }
    local_c4 = *(float *)(param_1 + 0x364);
    fVar7 = *(float *)(param_1 + 0x360);
    if (fVar7 * fVar7 + local_c4 * local_c4 < DAT_00baa004) {
      iVar2 = FUN_006eef60();
      local_c4 = (float)((double)iVar2 + (double)(&DAT_00bacb00)[-(iVar2 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa704;
      local_c4 = local_c4 + local_c4;
      fVar7 = local_c4;
      FUN_0041d540();
      local_cc = fVar7;
      FUN_0041d520();
      *(float *)(param_1 + 0x360) = local_cc;
      *(float *)(param_1 + 0x364) = local_c4;
      fVar7 = local_cc;
    }
    fVar7 = local_c4 * local_c4 + fVar7 * fVar7;
    FUN_00435a50();
    if ((fVar7 < DAT_00baa7e8) && (DAT_00ba9fe4 < fVar7)) {
      fVar7 = DAT_00baa7e8 / fVar7;
      *(float *)(param_1 + 0x360) = fVar7 * *(float *)(param_1 + 0x360);
      *(float *)(param_1 + 0x364) = local_c4 * fVar7;
    }
    *(undefined4 *)(param_1 + 0x410) = 0xf;
  }
  iVar2 = *(int *)(param_1 + 0xb64);
  if (iVar2 != 0) {
    if (iVar2 == 0x10) {
      FUN_0040a380("AppearEnd",0);
      if (((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) ||
         (DAT_00ba9fe4 < *(float *)(param_1 + 0x14))) {
        *(undefined4 *)(param_1 + 0xb64) = 3;
        FUN_00aef12b();
        return;
      }
    }
    else if (iVar2 == 3) {
      fVar7 = *(float *)(param_1 + 0xbb0) - DAT_00baaa78;
      auVar8 = ZEXT416((uint)fVar7);
      if (DAT_00baab30 < (float)((uint)fVar7 & DAT_00bacb40)) {
        FUN_00499d20();
      }
      fVar7 = auVar8._0_4_;
      if (fVar7 <= DAT_00baaa78) {
        if (fVar7 < DAT_00baae7c) {
          auVar8._0_4_ = fVar7 + DAT_00baab30;
        }
      }
      else {
        auVar8._0_4_ = fVar7 - DAT_00baab30;
      }
      local_c4 = ((auVar8._0_4_ + DAT_00baaa78) * DAT_00baa834) / DAT_00baab30;
      dVar10 = floor((double)local_c4);
      local_c4 = (float)dVar10;
      iVar2 = (int)dVar10;
      if (iVar2 < 0) {
        iVar2 = 0;
      }
      FUN_0040a380((&PTR_s_Shake00_00b618d8)[iVar2 % 0xc],0);
      if ((0.0 < *(float *)(param_1 + 0x14)) && (uVar3 = FUN_006eef60(), uVar3 % 3 == 0)) {
        fVar7 = DAT_00baa454;
        if (*(int *)(param_1 + 0x2c) == 1) {
          fVar7 = DAT_00baa3c4;
        }
        FUN_006d6ba0(0x92,0x3f800000,10,0,fVar7);
      }
      if ((*(int *)(param_1 + 0x2c) == 1) && (*(int *)(param_1 + 0x410) < 1)) {
        pfVar4 = (float *)FUN_006bec40(local_e4,0);
        local_c4 = *pfVar4 - *(float *)(param_1 + 0x33c);
        local_cc = pfVar4[1] - *(float *)(param_1 + 0x340);
        if (*(int *)(param_1 + 0xf1c) != -1) {
          pfVar4 = (float *)FUN_006d82d0();
          local_c4 = *pfVar4;
          local_cc = pfVar4[1];
        }
        fVar7 = local_c4 * local_c4 + local_cc * local_cc;
        FUN_00435a50();
        if (0.0 < fVar7) {
          fVar7 = DAT_00baa198 / fVar7;
          fVar6 = *(float *)(param_1 + 0x36c);
          fVar9 = local_cc * fVar7;
          if (NAN(fVar6) == (fVar6 == 0.0)) {
            *(float *)(param_1 + 0x364) =
                 (*(float *)(param_1 + 0x39c) * fVar9) / fVar6 + *(float *)(param_1 + 0x364);
            *(float *)(param_1 + 0x360) =
                 (*(float *)(param_1 + 0x39c) * local_c4 * fVar7) / fVar6 +
                 *(float *)(param_1 + 0x360);
          }
          fVar7 = local_d8 + fVar9 * DAT_00baa280;
          FUN_00499d60();
          *(float *)(param_1 + 0xbb0) = fVar7 * DAT_00baa948 - DAT_00baa9b4;
        }
        fVar7 = *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
                *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364);
        FUN_00435a50();
        if (DAT_00baa7e8 < fVar7) {
          *(undefined4 *)(param_1 + 0x410) = 0xf;
        }
        fVar7 = *(float *)(param_1 + 0x36c) * DAT_00baa3e0;
      }
      else {
        if ((*(int *)(param_1 + 0xf1c) != -1) &&
           ((FUN_006d82d0(), (NAN(local_d4) || NAN(DAT_00c7b640)) == (local_d4 == DAT_00c7b640) ||
            ((NAN(local_d0) || NAN(DAT_00c7b644)) == (local_d0 == DAT_00c7b644))))) {
          fVar7 = *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
                  *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364);
          FUN_00435a50();
          local_c4 = fVar7 / DAT_00baa438;
          if (fVar7 / DAT_00baa438 <= DAT_00baa454) {
            local_c4 = DAT_00baa454;
          }
          local_cc = local_d4 * DAT_00baa198 * *(float *)(param_1 + 0x39c) +
                     *(float *)(param_1 + 0x360);
          local_d0 = local_d0 * DAT_00baa198 * *(float *)(param_1 + 0x39c) +
                     *(float *)(param_1 + 0x364);
          *(float *)(param_1 + 0x360) = local_cc;
          *(float *)(param_1 + 0x364) = local_d0;
          fVar7 = local_d0 * local_d0 + local_cc * local_cc;
          FUN_00435a50();
          if ((local_c4 < fVar7) && (DAT_00ba9fe4 < fVar7)) {
            *(float *)(param_1 + 0x360) = local_cc * (local_c4 / fVar7);
            *(float *)(param_1 + 0x364) = local_d0 * (local_c4 / fVar7);
          }
        }
        local_d0 = *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360);
        fVar7 = *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364) + local_d0;
        FUN_00435a50();
        fVar7 = fVar7 + fVar7;
        if (*(float *)(param_1 + 0x360) <= 0.0 && *(float *)(param_1 + 0x360) != 0.0) {
          fVar7 = fVar7 * DAT_00baad50;
        }
        fVar7 = fVar7 + *(float *)(param_1 + 0xbb0);
        if (DAT_00baab30 < (float)((uint)fVar7 & DAT_00bacb40)) {
          FUN_00499d20();
        }
        if (fVar7 <= DAT_00baaa78) {
          if (fVar7 < DAT_00baae7c) {
            fVar7 = fVar7 + DAT_00baab30;
          }
        }
        else {
          fVar7 = fVar7 - DAT_00baab30;
        }
        *(float *)(param_1 + 0xbb0) = fVar7;
        fVar7 = *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364) + local_d0;
        FUN_00435a50();
        if (DAT_00baa454 <= fVar7) {
          *(undefined4 *)(param_1 + 0x410) = 0xf;
        }
        else if (0 < *(int *)(param_1 + 0x410)) {
          *(int *)(param_1 + 0x410) =
               ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4)) +
               *(int *)(param_1 + 0x410);
        }
        if (fVar7 <= DAT_00baa06c) {
          iVar2 = 0;
        }
        else {
          fVar6 = DAT_00baa87c;
          if (*(int *)(param_1 + 0x2c) == 1) {
            fVar6 = DAT_00baa784;
          }
          iVar5 = 1;
          if (1 < (int)(fVar6 / fVar7)) {
            iVar5 = (int)(fVar6 / fVar7);
          }
          iVar2 = *(int *)(param_1 + 0xbc0);
          if ((int)((float)iVar5 + (float)iVar5) < iVar2) {
            AI_0043ef30();
            if (local_c5 != '\0') {
              local_2c = (local_e0 != 0x1c) + 3;
            }
            local_b0 = 0x3f333333;
            if (*(int *)(param_1 + 0x2c) == 1) {
              local_b4 = 0xbdcccccd;
              local_ac = 0x3fb33333;
            }
            local_d4 = local_dc;
            local_d0 = local_d8;
            FUN_00a0ffc0();
            local_d4 = local_d4 * DAT_00baa81c;
            local_d0 = local_d0 * DAT_00baa81c;
            FUN_006cb2e0(param_1 + 0x33c,&local_d4,0,local_c0);
            FUN_006d6ba0(0x99,0x3f800000,2,0,0x3f800000);
            *(undefined4 *)(param_1 + 0xbc0) = 0;
            iVar2 = 0;
          }
          iVar2 = iVar2 + 1;
        }
        *(int *)(param_1 + 0xbc0) = iVar2;
        fVar7 = *(float *)(param_1 + 0x36c) * DAT_00baa438;
      }
      *(float *)(param_1 + 0x36c) = fVar7;
      if (local_c5 == '\0') {
        fVar7 = *(float *)(param_1 + 0x360) * *(float *)(param_1 + 0x360) +
                *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364);
        FUN_00435a50();
        if ((DAT_00baa630 < fVar7) && (cVar1 = FUN_006ac710(7,0), cVar1 != '\0')) {
          FUN_006eef60();
          FUN_006b64d0();
        }
      }
    }
    FUN_00aef12b();
    return;
  }
  *(undefined4 *)(param_1 + 0x184) = 6;
  *(undefined4 *)(param_1 + 0xb64) = 0x10;
  *(undefined4 *)(param_1 + 0xbb0) = 0;
  FUN_00aef12b();
  return;
}

