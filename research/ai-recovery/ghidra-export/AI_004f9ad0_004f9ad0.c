/* Local J460 decompiler output.
 * VA: 0x004f9ad0
 * Entry: 004f9ad0
 * Dispatcher: 0x006c2990
 * Types: 818
 * Identities: 818.0.0,818.0.1,818.0.2,818.0.3,818.1.0,818.1.1,818.1.2,818.1.3,818.2.0,818.2.1,818.2.2,818.2.3
 * Evidence: dispatcher=0x006c2990; end=0x004faad0; instructions=949
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=818;
   identities=818.0.0,818.0.1,818.0.2,818.0.3,818.1.0,818.1.1,818.1.2,818.1.3,818.2.0,818.2.1,818.2.2,818.2.3;
   dispatcher=0x006c2990; end=0x004faad0; instructions=949 */

void __fastcall AI_004f9ad0(int *param_1)

{
  char cVar1;
  int iVar2;
  float *pfVar3;
  uint uVar4;
  undefined4 uVar5;
  int *piVar6;
  int iVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  undefined *puVar11;
  undefined local_70 [16];
  undefined local_60 [16];
  undefined4 local_50;
  undefined *local_4c;
  undefined4 local_48;
  float local_44;
  float local_40;
  float local_3c;
  float local_38;
  float local_34;
  float local_30;
  char *local_2c;
  float local_28;
  char local_21;
  float local_20;
  float local_1c;
  char local_15;
  uint local_14;
  
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  iVar2 = FUN_009be080(0x179,DAT_00c71678 + 0x1baa8,1);
  local_21 = iVar2 != 0;
  local_15 = '\0';
  fVar8 = (float)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  local_2c = *(char **)(DAT_00c71678 + 0x18300);
  local_1c = DAT_00baa454;
  local_20 = fVar8;
  switch(param_1[0x2d9]) {
  case 0:
    if (param_1[0xc] == 0) {
      param_1[0xc] = (uint)param_1[0xfb] % 3 + 1;
      (**(code **)(*param_1 + 100))();
    }
    if ((*local_2c == '\0') || (*(int *)(DAT_00c71678 + 0x264f8) - *(int *)(local_2c + 0x11f0) < 2))
    {
      param_1[0x5a] = param_1[0x5a] & 0xfffffffb;
      param_1[0x5b] = param_1[0x5b];
    }
    param_1[0x2d9] = 0x10;
    FUN_0040a380("IdleRock",0);
    local_15 = param_1[10] == 0x21;
    if (((bool)local_15) || (param_1[0xb] == 2)) {
      puVar11 = &DAT_00c34d4c;
    }
    else {
      local_60 = ZEXT816(0);
      local_50 = 0x3df0f0f2;
      puVar11 = local_70;
      local_70 = _DAT_00babf20;
      if (param_1[0xb] == 1) {
        local_4c = (undefined *)0x3e189899;
        local_48 = 0x3e70f0f2;
      }
      else {
        local_4c = &DAT_3db0b0b1;
        local_48 = 0x3d909091;
      }
    }
    FUN_004071f0(puVar11);
    param_1[0x2ec] = 0;
    if ((param_1[0x5a] & 4U) != 0) {
      uVar5 = FUN_006eef60();
      FUN_00428b20(1000,0xf,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar5);
      param_1[0x5a] = param_1[0x5a] & 0xfffffffb;
      param_1[0x5b] = param_1[0x5b];
    }
    goto LAB_004fa057;
  case 3:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa304);
    if (((param_1[0x3c7] != -1) &&
        (pfVar3 = (float *)FUN_006d82d0(&local_34),
        (NAN(*pfVar3) || NAN(DAT_00c7b640)) != (*pfVar3 == DAT_00c7b640))) &&
       ((NAN(pfVar3[1]) || NAN(DAT_00c7b644)) != (pfVar3[1] == DAT_00c7b644))) {
      param_1[0x104] = 0;
    }
    if (0 < (int)fVar8) {
      do {
        iVar2 = param_1[0x104];
        iVar7 = iVar2 + 1;
        param_1[0x104] = iVar7;
        if ((param_1[0xb] == 1) || (param_1[0xb] == 2)) {
          iVar7 = iVar2 + 2;
          param_1[0x104] = iVar7;
        }
        if (((iVar7 == 0xc) || (iVar7 == 0x18)) ||
           ((iVar7 == 0x24 || ((param_1[0x3c7] != -1 || (param_1[0x3ce] != 0)))))) {
          FUN_006bec40(&local_3c,0x42700000);
          if (local_21 == '\0') {
            if ((param_1[0xb] == 1) || (param_1[0xb] == 2)) {
              uVar4 = FUN_006eef60();
              uVar4 = uVar4 & 3;
            }
            else {
              uVar4 = FUN_006eef60();
              uVar4 = uVar4 % 6;
            }
            if (uVar4 == 0) goto LAB_004fa229;
            local_15 = '\x01';
            cVar1 = '\x01';
          }
          else {
LAB_004fa229:
            cVar1 = '\0';
          }
          iVar2 = param_1[0x3c7];
          if (iVar2 != -1) {
            local_15 = '\x01';
            pfVar3 = (float *)FUN_006d82d0(&local_34);
            iVar2 = param_1[0x3c7];
            local_3c = *pfVar3 * DAT_00baa9d0 + (float)param_1[0xcf];
            local_38 = pfVar3[1] * DAT_00baa9d0 + (float)param_1[0xd0];
            cVar1 = local_15;
          }
          if (((param_1[0x3ce] == 0) && ((param_1[0x5a] & 0x100U) == 0)) &&
             (iVar7 = 0, cVar1 == '\0')) {
            do {
              iVar2 = FUN_006eef60();
              local_1c = (float)((double)iVar2 + (double)(&DAT_00bacb00)[-(iVar2 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa704;
              local_1c = local_1c + local_1c;
              fVar8 = local_1c;
              FUN_0041d540();
              local_28 = fVar8;
              fVar8 = local_1c;
              FUN_0041d520();
              param_1[0xcd] = (int)local_28;
              local_44 = local_28 * DAT_00baa87c;
              param_1[0xce] = (int)fVar8;
              local_44 = local_44 + (float)param_1[0xcf];
              local_40 = fVar8 * DAT_00baa87c + (float)param_1[0xd0];
              cVar1 = FUN_007f0df0(param_1 + 0xcf,&local_44,1,999,0,0,0);
              fVar8 = local_20;
              if (cVar1 != '\0') break;
              iVar7 = iVar7 + 1;
            } while (iVar7 < 10);
          }
          else {
            if (((iVar2 == -1) && (param_1[0x3ce] == 0)) &&
               (cVar1 = FUN_007f0df0(param_1 + 0xcf,&local_3c,1,999,0,0,0), cVar1 == '\0')) {
              FUN_007e3260();
              FUN_007e33c0(&local_3c,0x3f800000,0,1);
              local_1c = (float)param_1[0xd8];
              local_28 = (float)param_1[0xd9];
            }
            else {
              local_1c = local_3c - (float)param_1[0xcf];
              local_28 = local_38 - (float)param_1[0xd0];
            }
            fVar9 = local_1c * local_1c + local_28 * local_28;
            FUN_00435a50();
            fVar8 = local_1c;
            fVar10 = local_28;
            if (DAT_00ba9fe4 < fVar9) {
              fVar8 = local_1c * (DAT_00baa454 / fVar9);
              fVar10 = local_28 * (DAT_00baa454 / fVar9);
            }
            param_1[0xcd] = (int)fVar8;
            param_1[0xce] = (int)fVar10;
            iVar2 = FUN_006eef60();
            local_1c = ((float)((double)iVar2 + (double)(&DAT_00bacb00)[-(iVar2 >> 0x1f)]) *
                        DAT_00ba9ff4 - DAT_00baa2d0) * DAT_00baa8d0 * DAT_00baa088;
            fVar8 = local_1c;
            FUN_0041d540();
            local_28 = fVar8;
            fVar10 = local_1c;
            FUN_0041d520();
            fVar8 = (float)param_1[0xcd];
            param_1[0xcd] = (int)(fVar8 * local_28 - (float)param_1[0xce] * fVar10);
            param_1[0xce] = (int)((float)param_1[0xce] * local_28 + fVar8 * fVar10);
            fVar8 = local_20;
          }
        }
        uVar4 = FUN_006eef60();
        if (((uVar4 & 1) == 0) && ((param_1[0x104] & 1U) != 0)) {
          param_1[0x104] = param_1[0x104] + 1;
        }
        fVar8 = (float)((int)fVar8 + -1);
        local_20 = fVar8;
      } while (fVar8 != 0.0);
    }
    if ((param_1[0x3c7] != -1) && (0x28 < param_1[0x104])) {
      param_1[0xcd] = (int)DAT_00c7b640;
      param_1[0xce] = (int)DAT_00c7b644;
    }
    if (((NAN((float)param_1[0xcd]) || NAN(DAT_00c7b640)) == ((float)param_1[0xcd] == DAT_00c7b640))
       || ((NAN((float)param_1[0xce]) || NAN(DAT_00c7b644)) ==
           ((float)param_1[0xce] == DAT_00c7b644))) {
      FUN_0040a380(&DAT_00b1dce4,0);
      fVar8 = DAT_00baa6fc;
      if ((local_21 == '\0') &&
         ((fVar8 = DAT_00baa788, param_1[0xb] != 1 && (fVar8 = DAT_00baa6fc, param_1[0xb] == 2)))) {
        fVar8 = DAT_00baa5b4;
        if (param_1[0xd] == 0x38b) {
          fVar8 = DAT_00baa554;
        }
        fVar8 = DAT_00baa6fc * fVar8;
      }
      fVar10 = fVar8 * (float)param_1[0xcd] * (float)param_1[0xe7] + (float)param_1[0xd8];
      param_1[0xd8] = (int)fVar10;
      param_1[0xd9] =
           (int)((float)param_1[0xce] * fVar8 * (float)param_1[0xe7] + (float)param_1[0xd9]);
      *(bool *)(param_1 + 0x52) = fVar10 <= 0.0;
    }
    else {
      FUN_0040a380(&DAT_00b1bc54,0);
    }
    if (0x2f < param_1[0x104]) {
      param_1[0x104] = 0;
      param_1[0xcd] = (int)DAT_00c7b640;
      param_1[0xce] = (int)DAT_00c7b644;
    }
    break;
  case 7:
    FUN_0040a380("Appear",0);
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa304);
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x2d9] = 3;
    }
    break;
  case 0x10:
    FUN_0040a380("IdleRock",0);
    fVar8 = (float)param_1[0x2ec];
    param_1[0xdf] = 0x42c80000;
    fVar10 = DAT_00ba9fe4;
    fVar9 = fVar8 * (float)param_1[0xe7] + (float)param_1[0xd4];
    param_1[0xd4] = (int)fVar9;
    if (fVar10 < fVar9) {
      param_1[0xd4] = 0;
      iVar2 = FUN_007f0780(param_1[0xcf],param_1[0xd0]);
      if (iVar2 != 0) {
        uVar5 = FUN_00435c70();
        (**(code **)(*param_1 + 0x24))(uVar5);
        break;
      }
      param_1[0xd8] = (int)((float)param_1[0xd8] * DAT_00baa3a4);
      param_1[0xd9] = (int)((float)param_1[0xd9] * DAT_00baa3a4);
      if ((float)(param_1[0x2ec] & DAT_00bacb40) <= local_1c) {
        fVar8 = 0.0;
      }
      else {
        fVar8 = (float)param_1[0x2ec] * DAT_00baad14;
      }
    }
    if (DAT_00baae30 <= (float)param_1[0xd4]) {
      param_1[0x62] = 4;
      param_1[0x61] = (uint)(DAT_00baad90 <= (float)param_1[0xd4]) * 2 + 3;
    }
    else {
      param_1[0x61] = 3;
      param_1[0x62] = 0;
    }
    param_1[0x2ec] = (int)((float)param_1[0xe7] * DAT_00baa2d0 + fVar8);
    if (param_1[10] == 0x21) {
      param_1[0x5a] = param_1[0x5a] | 1;
      param_1[0x5b] = param_1[0x5b] | 0x10;
      *(undefined *)(param_1 + 0xec) = 1;
      cVar1 = FUN_006ac710(0x1e,0);
      if ((cVar1 != '\0') && (uVar4 = FUN_006eef60(), uVar4 % 3 != 0)) {
        uVar5 = FUN_00435c70();
        (**(code **)(*param_1 + 0x20))(0x3f800000,0,0,uVar5,0x1e);
      }
      if (0.0 < (float)param_1[5]) {
        if ((param_1[6] & 0x1000004U) == 0) {
          pfVar3 = (float *)param_1[2];
          if (pfVar3 == (float *)param_1[3]) {
            fVar8 = (float)param_1[0xe0];
          }
          else {
            do {
              if (DAT_00baa81c < *pfVar3) {
                uVar4 = FUN_006eef60();
                fVar8 = DAT_00baa6fc;
                if (uVar4 % 3 != 0) {
LAB_004f9ecb:
                  fVar8 = DAT_00baa630;
                }
LAB_004f9edd:
                fVar8 = (float)param_1[0xe0] - fVar8;
                param_1[0xe0] = (int)fVar8;
              }
              else {
                if (0.0 < *pfVar3) {
                  uVar4 = FUN_006eef60();
                  fVar8 = local_1c;
                  if (uVar4 % 3 == 0) goto LAB_004f9ecb;
                  goto LAB_004f9edd;
                }
                fVar8 = (float)param_1[0xe0];
              }
              pfVar3 = pfVar3 + 0xe;
            } while (pfVar3 != (float *)param_1[3]);
          }
          if (fVar8 < local_1c) {
            param_1[0xe0] = 0x3f800000;
            fVar8 = local_1c;
          }
          local_15 = '\x01';
          if (fVar8 < DAT_00baa528) goto LAB_004f9f2e;
        }
        else {
          param_1[0xe0] = 0x3f800000;
LAB_004f9f2e:
          local_20 = 3.657389e-43;
          FUN_00956780();
          FUN_0092dc30(local_20,0x3f59999a,2,0,0x3f800000,0);
          uVar5 = FUN_00435c70();
          (**(code **)(*param_1 + 0x24))(uVar5);
        }
        local_15 = '\x01';
      }
      iVar2 = FUN_006d6c20();
      if ((iVar2 < 1) && (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x11ec) < 3)) {
        uVar5 = FUN_00435c70();
        (**(code **)(*param_1 + 0x24))(uVar5);
      }
    }
    if ((param_1[0x61] == 5) && ((float)(param_1[0x2ec] & DAT_00bacb40) < DAT_00baa304)) {
      if (param_1[10] == 0x21) {
        iVar2 = *(int *)(param_1[0xcc] + 0x44);
        param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3e0);
      }
      else {
        fVar8 = (float)param_1[0xd8] * (float)param_1[0xd8] +
                (float)param_1[0xd9] * (float)param_1[0xd9];
        FUN_00435a50();
        if ((DAT_00baa630 <= fVar8) || (uVar4 = FUN_006eef60(), (uVar4 & 3) != 0))
        goto LAB_004fa057;
        param_1[0x2d9] = 7;
        iVar2 = *(int *)(param_1[0xcc] + 0x44);
      }
      param_1[0xdf] = iVar2;
    }
LAB_004fa057:
    if (local_15 != '\0') {
      local_20 = (float)param_1[0xe0] / (float)param_1[0xe1];
      if ((float)param_1[0xe0] / (float)param_1[0xe1] <= DAT_00ba9fe4) {
        local_20 = DAT_00ba9fe4;
      }
      if (local_1c <= local_20) {
        local_20 = local_1c;
      }
      iVar2 = FUN_0040b220(1);
      *(float *)(iVar2 + 0x34) = local_20;
      *(float *)(iVar2 + 0x38) = local_20;
      iVar2 = FUN_0040b220(0);
      fVar10 = local_20 * DAT_00baa2d0;
      fVar8 = local_20 * DAT_00baa3a4;
      *(undefined4 *)(iVar2 + 0x54) = 0x3f800000;
      fVar8 = fVar8 + DAT_00baa198;
      *(float *)(iVar2 + 0x48) = fVar10 + DAT_00baa2d0;
      *(float *)(iVar2 + 0x4c) = fVar8;
      *(float *)(iVar2 + 0x50) = fVar8;
    }
  }
  if (((param_1[0xb] == 2) || (param_1[10] == 0x21)) && (uVar4 = FUN_006eef60(), uVar4 % 5 == 0)) {
    iVar2 = FUN_006eef60();
    local_38 = (float)((double)iVar2 + (double)(&DAT_00bacb00)[-(iVar2 >> 0x1f)]) * DAT_00ba9ff4 *
               _DAT_00baad58;
    iVar2 = FUN_006eef60();
    local_28 = ((float)((double)iVar2 + (double)(&DAT_00bacb00)[-(iVar2 >> 0x1f)]) * DAT_00ba9ff4 -
               DAT_00baa2d0) * DAT_00baa280;
    iVar2 = FUN_006eef60();
    local_20 = (float)((double)iVar2 + (double)(&DAT_00bacb00)[-(iVar2 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa704;
    local_20 = local_20 + local_20;
    iVar2 = FUN_006eef60();
    local_1c = (float)((double)iVar2 + (double)(&DAT_00bacb00)[-(iVar2 >> 0x1f)]) * DAT_00ba9ff4;
    fVar8 = local_20;
    FUN_0041d540();
    local_34 = fVar8 * local_1c * DAT_00baa75c + (float)param_1[0xcf];
    fVar8 = local_20;
    FUN_0041d520();
    local_30 = fVar8 * local_1c * DAT_00baa75c + (float)param_1[0xd0];
    uVar5 = FUN_006eef60();
    local_44 = (float)param_1[0xd8] * DAT_00baa198 + local_28;
    local_40 = (float)param_1[0xd9] * DAT_00baa198 + local_38;
    FUN_00428b20(1000,0x42,&local_34,&local_44,0,0,uVar5);
  }
  if ((*(char *)((int)param_1 + 0x173) != '\0') && (param_1[10] != 0x21)) {
    iVar7 = (int)(((float)param_1[0xcf] - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
    iVar2 = (int)(((float)param_1[0xd0] - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
    if (((iVar7 < 0) || ((*(int *)(local_2c + 0xc) <= iVar7 || (iVar2 < 0)))) ||
       (*(int *)(local_2c + 0x10) <= iVar2)) {
      iVar7 = -1;
    }
    else {
      iVar7 = iVar2 * *(int *)(local_2c + 0xc) + iVar7;
    }
    pfVar3 = (float *)(param_1 + 0xcf);
    iVar2 = FUN_007f0800(iVar7);
    if (iVar2 == 0) {
      if (param_1[0xb] != 1) {
        if (param_1[0xb] == 2) {
          local_34 = (float)param_1[0xd8] * DAT_00baa2d0;
          local_30 = (float)param_1[0xd9] * DAT_00baa2d0;
          piVar6 = (int *)FUN_00428b20(0x21,0xb,pfVar3,&local_34,param_1,param_1[0xc],param_1[0xfb])
          ;
          piVar6[0x5a] = piVar6[0x5a] & 0xfffffffb;
          piVar6[0x5b] = piVar6[0x5b];
          (**(code **)(*piVar6 + 0xc))();
          piVar6[0xd4] = (int)&DAT_bf800000;
          iVar2 = FUN_006eef60();
          piVar6[0x2ec] =
               (int)(DAT_00baad50 -
                    (float)((double)iVar2 + (double)(&DAT_00bacb00)[-(iVar2 >> 0x1f)]) *
                    DAT_00ba9ff4);
        }
        else {
          FUN_006d4e00();
          FUN_006c0f30(0x55,0,0,0xffffffff);
          param_1[0x2d9] = 0;
          param_1[0xe0] = param_1[0xe1];
          *(undefined *)((int)param_1 + 0x173) = 0;
          uVar5 = FUN_00407170();
          FUN_004071f0(uVar5);
          param_1[0xd3] = (int)DAT_00c7b640;
          param_1[0xd4] = (int)DAT_00c7b644;
          param_1[0xcd] = (int)DAT_00c7b640;
          param_1[0xce] = (int)DAT_00c7b644;
          (**(code **)(*param_1 + 0xc))();
        }
        goto LAB_004faa25;
      }
      iVar2 = param_1[0xfb];
      piVar6 = param_1 + 0xd8;
    }
    else {
      if (param_1[0xb] != 1) goto LAB_004faa25;
      FUN_00813520(&local_34,pfVar3,0,0,0,0);
      iVar2 = param_1[0xfb];
      pfVar3 = &local_34;
      piVar6 = (int *)&DAT_00c7b640;
    }
    FUN_00428b20(5,10,pfVar3,piVar6,0,3,iVar2);
  }
LAB_004faa25:
  pfVar3 = (float *)param_1[2];
  if (pfVar3 != (float *)param_1[3]) {
    do {
      if (((uint)pfVar3[2] & 2) != 0) {
        param_1[5] = (int)((float)param_1[5] - *pfVar3);
        *pfVar3 = 0.0;
        cVar1 = FUN_00417220(0x332,0,0xffffffff);
        if (cVar1 != '\0') {
          FUN_006c0f30(0x332,2,param_1[0xc],0xffffffff);
        }
      }
      pfVar3 = pfVar3 + 0xe;
    } while (pfVar3 != (float *)param_1[3]);
  }
  FUN_00aef12b();
  return;
}

