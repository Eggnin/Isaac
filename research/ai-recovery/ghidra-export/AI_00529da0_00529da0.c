/* Local J460 decompiler output.
 * VA: 0x00529da0
 * Entry: 00529da0
 * Dispatcher: 0x006c2990
 * Types: 85,94,215,250,869
 * Identities: 215.0.0,250.0.0,85.0.0,869.0.0,94.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0052ae30; instructions=985
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=85,94,215,250,869;
   identities=215.0.0,250.0.0,85.0.0,869.0.0,94.0.0; dispatcher=0x006c2990; end=0x0052ae30;
   instructions=985 */

void __fastcall AI_00529da0(int *param_1)

{
  byte bVar1;
  char cVar2;
  uint uVar3;
  int iVar4;
  int *piVar5;
  int iVar6;
  undefined4 uVar7;
  byte **ppbVar8;
  float *pfVar9;
  float *pfVar10;
  byte **ppbVar11;
  byte *pbVar12;
  uint uVar13;
  float fVar14;
  bool bVar15;
  float fVar16;
  float fVar17;
  undefined local_80 [8];
  float local_78;
  float local_74;
  float local_70;
  float local_6c;
  undefined local_68 [4];
  float local_64;
  undefined local_60 [4];
  float local_5c;
  float local_58;
  float local_54;
  char local_4e;
  char local_4d;
  undefined4 local_3c;
  undefined2 local_38;
  undefined local_36;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af462d;
  local_1c = ExceptionList;
  uVar3 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_24 = uVar3;
  iVar4 = FUN_009be080(0x179,DAT_00c71678 + 0x1baa8,1);
  if ((iVar4 == 0) || ((param_1[0x5a] & 0x20000000U) != 0)) {
    local_4e = '\0';
    local_5c = (float)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  }
  else {
    local_4d = '\x01';
    fVar14 = (float)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
    if ((param_1[0x2d9] == 0) ||
       (local_4e = '\x01', local_5c = fVar14, *(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca] == 1)
       ) {
      local_3c._0_1_ = s__inert_00b60f98[0];
      local_3c._1_1_ = s__inert_00b60f98[1];
      local_3c._2_1_ = s__inert_00b60f98[2];
      local_3c._3_1_ = s__inert_00b60f98[3];
      local_28 = 0xf;
      local_2c = 6;
      local_38._0_1_ = s__inert_00b60f98[4];
      local_38._1_1_ = s__inert_00b60f98[5];
      local_36 = 0;
      local_14 = 0;
      FUN_006baa70(&local_3c);
      local_14 = 0xffffffff;
      local_4e = local_4d;
      local_5c = fVar14;
      if (0xf < local_28) {
        uVar13 = local_28 + 1;
        iVar4 = local_3c;
        if (0xfff < uVar13) {
          iVar4 = *(int *)(local_3c + -4);
          uVar13 = local_28 + 0x24;
          if (0x1f < (local_3c - iVar4) - 4U) {
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(iVar4,uVar13,uVar3);
        local_4e = local_4d;
        local_5c = fVar14;
      }
    }
  }
  iVar4 = param_1[0x2d9];
  if (iVar4 == 0) {
    param_1[0x2d9] = 4;
    param_1[0x104] = 0;
    goto LAB_0052ae07;
  }
  if (((param_1[0x5a] & 0x20000000U) == 0) || (param_1[0x3c7] == -1)) {
    piVar5 = (int *)FUN_00812f50(local_80,param_1 + 0xcf,0x41a00000,0,0x41200000);
    param_1[0xcf] = *piVar5;
    param_1[0xd0] = piVar5[1];
    iVar4 = param_1[0x2d9];
  }
  iVar6 = 4;
  if (iVar4 == 6) {
    iVar6 = 0;
  }
  param_1[0x62] = iVar6;
  if ((((param_1[10] == 0xfa) || (param_1[10] == 0x365)) && (param_1[0x3c7] != -1)) &&
     (cVar2 = FUN_00956110(9,param_1[0x3c7],param_1,iVar4), cVar2 != '\0')) {
    uVar7 = FUN_00435c70();
    (**(code **)(*param_1 + 0x24))(uVar7);
  }
  if (param_1[0x2d9] == 6) {
    iVar4 = param_1[10];
    if (((iVar4 == 0xd7) || (iVar4 == 0xfa)) || (iVar4 == 0x365)) {
      if (param_1[0x1f] == 0) {
LAB_0052a20f:
        iVar4 = 5;
        iVar6 = 4;
      }
      else {
        cVar2 = FUN_0040add0(&DAT_00b1d560);
        if (cVar2 != '\0') {
          fVar16 = ((float)param_1[0xce] - (float)param_1[0xd0]) * DAT_00baa108;
          fVar14 = ((float)param_1[0xcd] - (float)param_1[0xcf]) * DAT_00baa108;
          param_1[0xd9] = (int)fVar16;
          param_1[0x2ed] = (int)fVar16;
          param_1[0xd8] = (int)fVar14;
          param_1[0x2ec] = (int)fVar14;
          param_1[0x2ef] = -0x3f800000;
          param_1[0x104] = 0;
        }
        if (param_1[0x1f] == 0) goto LAB_0052a20f;
        cVar2 = FUN_0040ae70(&DAT_00b1d560);
        if (cVar2 != '\0') {
          fVar14 = (float)param_1[0xe7] * DAT_00baa354 + (float)param_1[0x2ef];
          param_1[0x2ef] = (int)fVar14;
          param_1[0xd4] = (int)((float)param_1[0xe7] * fVar14 + (float)param_1[0xd4]);
        }
        if (((param_1[0x1f] == 0) || (cVar2 = FUN_0040ae70(&DAT_00b1d560), cVar2 == '\0')) ||
           ((param_1[0x1f] != 0 && (cVar2 = FUN_0040ae70(&DAT_00b1d574), cVar2 != '\0'))))
        goto LAB_0052a20f;
        iVar6 = 0;
        param_1[0xd8] = param_1[0x2ec];
        param_1[0xd9] = param_1[0x2ed];
        iVar4 = 3;
      }
      param_1[0x62] = iVar6;
      param_1[0x61] = iVar4;
      if (((param_1[0x1f] != 0) && (cVar2 = FUN_0040ae70(&DAT_00b1d574), cVar2 != '\0')) &&
         ((float)(param_1[0x2ef] ^ DAT_00bacb70) * (float)param_1[0xe7] < (float)param_1[0xd4])) {
        param_1[0xd4] = 0;
        param_1[0xcd] = (int)DAT_00c7b640;
        param_1[0xce] = (int)DAT_00c7b644;
        param_1[0x104] = param_1[0x104] + 1;
      }
      if (((((NAN((float)param_1[0xcd]) || NAN(DAT_00c7b640)) !=
             ((float)param_1[0xcd] == DAT_00c7b640)) &&
           ((NAN((float)param_1[0xce]) || NAN(DAT_00c7b644)) !=
            ((float)param_1[0xce] == DAT_00c7b644))) &&
          (param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4), param_1[0x1f] != 0)) &&
         (*(char *)(param_1 + 0x23) == '\0')) {
        ppbVar8 = (byte **)param_1[0x1f];
        if (&DAT_0000000f < ppbVar8[5]) {
          ppbVar8 = (byte **)*ppbVar8;
        }
        pbVar12 = &DAT_00b1d560;
        do {
          bVar1 = *(byte *)ppbVar8;
          bVar15 = bVar1 < *pbVar12;
          if (bVar1 != *pbVar12) {
LAB_0052a320:
            uVar3 = -(uint)bVar15 | 1;
            goto LAB_0052a325;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar8 + 1);
          bVar15 = bVar1 < pbVar12[1];
          if (bVar1 != pbVar12[1]) goto LAB_0052a320;
          ppbVar8 = (byte **)((int)ppbVar8 + 2);
          pbVar12 = pbVar12 + 2;
        } while (bVar1 != 0);
        uVar3 = 0;
LAB_0052a325:
        if (uVar3 == 0) {
          param_1[0x2d9] = 4;
        }
      }
    }
    else {
      if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) == '\0')) {
        ppbVar8 = (byte **)param_1[0x1f];
        if (&DAT_0000000f < ppbVar8[5]) {
          ppbVar8 = (byte **)*ppbVar8;
        }
        pbVar12 = &DAT_00b1d560;
        do {
          bVar1 = *(byte *)ppbVar8;
          bVar15 = bVar1 < *pbVar12;
          if (bVar1 != *pbVar12) {
LAB_0052a034:
            uVar3 = -(uint)bVar15 | 1;
            goto LAB_0052a039;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar8 + 1);
          bVar15 = bVar1 < pbVar12[1];
          if (bVar1 != pbVar12[1]) goto LAB_0052a034;
          ppbVar8 = (byte **)((int)ppbVar8 + 2);
          pbVar12 = pbVar12 + 2;
        } while (bVar1 != 0);
        uVar3 = 0;
LAB_0052a039:
        if (uVar3 == 0) {
          FUN_0040a380("InAir",0);
        }
      }
      param_1[0xd8] = param_1[0x2ec];
      param_1[0xd9] = param_1[0x2ed];
      fVar14 = (float)param_1[0xe7];
      fVar16 = fVar14 * DAT_00baa354 + (float)param_1[0x2ef];
      param_1[0x2ef] = (int)fVar16;
      fVar17 = (float)((uint)fVar16 ^ DAT_00bacb70);
      fVar16 = fVar14 * fVar16 + (float)param_1[0xd4];
      param_1[0xd4] = (int)fVar16;
      if (fVar17 * fVar14 < fVar16) {
        param_1[0xd4] = 0;
        param_1[0xcd] = (int)DAT_00c7b640;
        param_1[0xce] = (int)DAT_00c7b644;
        param_1[0x104] = param_1[0x104] + 1;
        param_1[0x2d9] = 4;
      }
    }
  }
  else {
    if (((*(char *)((int)param_1 + 0x173) == '\0') || (param_1[10] != 0x5e)) ||
       ((float)param_1[0xe0] <= DAT_00baadec)) {
      if (param_1[0x2d9] == 4) {
        FUN_006bec40(&local_58,0x42700000);
        pfVar9 = (float *)(param_1 + 0xcf);
        local_64 = local_58 - *pfVar9;
        iVar4 = param_1[10];
        local_74 = local_54 - (float)param_1[0xd0];
        if (((iVar4 == 0xd7) || (iVar4 == 0xfa)) || (iVar4 == 0x365)) {
          local_4d = '\x01';
          FUN_006d8b20(0);
        }
        else {
          local_4d = '\0';
        }
        if (((NAN((float)param_1[0xcd]) || NAN(DAT_00c7b640)) ==
             ((float)param_1[0xcd] == DAT_00c7b640)) ||
           ((NAN((float)param_1[0xce]) || NAN(DAT_00c7b644)) ==
            ((float)param_1[0xce] == DAT_00c7b644))) {
          param_1[0x104] = param_1[0x104] - (int)local_5c;
          ppbVar8 = (byte **)param_1[0x1f];
          if (ppbVar8 == (byte **)0x0) {
LAB_0052aafe:
            cVar2 = FUN_0040a5d0(&DAT_00b1dce4,1);
            if (cVar2 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(param_1 + 0x23) = 1;
            }
          }
          else {
            ppbVar11 = ppbVar8;
            if (&DAT_0000000f < ppbVar8[5]) {
              ppbVar11 = (byte **)*ppbVar8;
            }
            pbVar12 = &DAT_00b1dce4;
            do {
              bVar1 = *(byte *)ppbVar11;
              bVar15 = bVar1 < *pbVar12;
              if (bVar1 != *pbVar12) {
LAB_0052aae0:
                uVar3 = -(uint)bVar15 | 1;
                goto LAB_0052aae5;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppbVar11 + 1);
              bVar15 = bVar1 < pbVar12[1];
              if (bVar1 != pbVar12[1]) goto LAB_0052aae0;
              ppbVar11 = (byte **)((int)ppbVar11 + 2);
              pbVar12 = pbVar12 + 2;
            } while (bVar1 != 0);
            uVar3 = 0;
LAB_0052aae5:
            if ((uVar3 != 0) ||
               ((*(byte *)(ppbVar8 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
            goto LAB_0052aafe;
          }
          local_5c = DAT_00baa7a4;
          if (param_1[10] == 0x365) {
            local_5c = DAT_00baa778;
          }
          if (param_1[0x3c7] == -1) {
            local_70 = (float)param_1[0xcd] - (float)param_1[0xcf];
            local_6c = (float)param_1[0xce] - (float)param_1[0xd0];
            fVar14 = local_6c * local_6c + local_70 * local_70;
            FUN_00435a50();
            if (fVar14 < DAT_00baa848) {
LAB_0052ad2c:
              param_1[0xcd] = (int)DAT_00c7b640;
              param_1[0xce] = (int)DAT_00c7b644;
              param_1[0x104] = 0;
            }
            else {
              fVar14 = (float)param_1[0xd8] * (float)param_1[0xd8] +
                       (float)param_1[0xd9] * (float)param_1[0xd9];
              FUN_00435a50();
              if ((fVar14 < DAT_00baa6fc) && (param_1[0x104] < 0)) goto LAB_0052ad2c;
            }
            pfVar9 = (float *)FUN_00a10030(local_68);
            fVar14 = (float)param_1[0xdb];
            fVar16 = *pfVar9;
            if (NAN(fVar14) == (fVar14 == 0.0)) {
              param_1[0xd9] =
                   (int)(((float)param_1[0xe7] * local_5c * pfVar9[1]) / fVar14 +
                        (float)param_1[0xd9]);
              param_1[0xd8] =
                   (int)(((float)param_1[0xe7] * local_5c * fVar16) / fVar14 + (float)param_1[0xd8])
              ;
            }
          }
          else {
            FUN_007e33c0(&DAT_00c7b640,local_5c * DAT_00baa3a4,0,1);
            param_1[0xcd] = param_1[0xcf];
            param_1[0xce] = param_1[0xd0];
            if (-1 < param_1[0x104]) {
              FUN_006d82d0(local_60);
              cVar2 = FUN_00a10600(&DAT_00c7b640);
              if (cVar2 == '\0') goto LAB_0052abdf;
            }
            param_1[0xcd] = (int)DAT_00c7b640;
            param_1[0xce] = (int)DAT_00c7b644;
            param_1[0x104] = 0;
          }
LAB_0052abdf:
          *(bool *)(param_1 + 0x52) = (float)param_1[0xd8] <= 0.0 && (float)param_1[0xd8] != 0.0;
        }
        else {
          FUN_0040a380(&DAT_00b1bc54,0);
          iVar4 = param_1[0x104];
          param_1[0x104] = (int)local_5c + iVar4;
          if (0xd < iVar4) {
            if (param_1[0x3c7] == -1) {
              if (local_4e == '\0') {
                fVar14 = local_64 * local_64 + local_74 * local_74;
                FUN_00435a50();
                local_74 = fVar14;
                iVar4 = FUN_006eef60();
                if ((((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                      DAT_00ba9ff4 * DAT_00baa9d0 + DAT_00baa9d0 <= local_74) &&
                    (param_1[0x3ce] == 0)) ||
                   ((cVar2 = FUN_007f0df0(pfVar9,&local_58,1,0,0,0,0), cVar2 == '\0' &&
                    (param_1[0x61] != 3)))) goto LAB_0052a81b;
                iVar6 = FUN_006be840();
                iVar4 = param_1[0xdc];
                local_58 = *(float *)(iVar6 + 0x360) * DAT_00baa81c + local_58;
                local_54 = *(float *)(iVar6 + 0x364) * DAT_00baa81c + local_54;
                FUN_00812f50(&local_70,&local_58,iVar4,iVar4,iVar4);
                local_5c = local_70;
                local_58 = local_70;
                local_64 = local_6c;
                local_54 = local_6c;
                param_1[0xcd] = (int)local_70;
                param_1[0xce] = (int)local_6c;
              }
              else {
LAB_0052a81b:
                pfVar9 = (float *)FUN_0067f070(&local_70);
                iVar6 = FUN_006eef60();
                iVar4 = DAT_00c71678;
                fVar14 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa904 + DAT_00baa97c;
                local_54 = fVar14 * pfVar9[1] + (float)param_1[0xd0];
                local_58 = fVar14 * *pfVar9 + (float)param_1[0xcf];
                pfVar9 = (float *)FUN_00812f50(&local_78,&local_58,0x428c0000,0x42200000,0x42700000)
                ;
                local_5c = *pfVar9;
                local_64 = pfVar9[1];
                local_74 = *(float *)(iVar4 + 0x18300);
                local_58 = local_5c;
                local_54 = local_64;
                iVar4 = FUN_007f0780(local_5c,local_64);
                if (iVar4 == 0) {
                  cVar2 = FUN_007f0df0(&local_58,param_1 + 0xcf,0,0,0,0,0);
                  local_64 = local_54;
                  local_5c = local_58;
                  if (cVar2 == '\0') {
                    uVar3 = FUN_006eef60();
                    if (uVar3 % 0x14 == 0) {
                      fVar14 = (float)param_1[0xcf];
                      local_70 = local_5c * DAT_00baa120 + fVar14 * DAT_00baa3e0;
                      local_6c = local_64 * DAT_00baa120 + (float)param_1[0xd0] * DAT_00baa3e0;
                      local_78 = local_5c * DAT_00baa3e0 + fVar14 * DAT_00baa120;
                      local_74 = local_64 * DAT_00baa3e0 + (float)param_1[0xd0] * DAT_00baa120;
                      cVar2 = FUN_007f0df0(&local_78,&local_70,1,0,0,0,0);
                      if (cVar2 != '\0') goto LAB_0052a9e7;
                    }
                  }
                  else {
LAB_0052a9e7:
                    param_1[0xcd] = (int)local_5c;
                    param_1[0xce] = (int)local_64;
                    param_1[0x104] = 0xf;
                  }
                }
              }
              iVar4 = param_1[10];
              if ((((iVar4 == 0xd7) || (iVar4 == 0xfa)) || (iVar4 == 0x365)) &&
                 ((uVar3 = FUN_006eef60(), uVar3 % 3 == 0 &&
                  (iVar4 = FUN_007f0780(local_58,local_54), iVar4 == 0)))) {
                param_1[0xcd] = (int)local_5c;
                param_1[0xce] = (int)local_64;
                param_1[0x2d9] = 6;
                cVar2 = FUN_0040a5d0(&DAT_00b1d560,1);
                if (cVar2 != '\0') {
                  FUN_0040a1b0();
                  *(undefined *)(param_1 + 0x23) = 1;
                }
              }
            }
            else {
              if ((local_4d != '\0') && (cVar2 = FUN_006d8d80(), cVar2 != '\0')) {
                pfVar10 = (float *)FUN_006d8d30(&local_70);
                local_58 = *pfVar10;
                local_54 = pfVar10[1];
                iVar4 = FUN_007f0780(local_58,local_54);
                if (iVar4 == 0) {
                  piVar5 = (int *)FUN_006d8d30(&local_58);
                  param_1[0xcd] = *piVar5;
                  param_1[0xce] = piVar5[1];
                  param_1[0x2d9] = 6;
                  cVar2 = FUN_0040a5d0(&DAT_00b1d560,1);
                  if (cVar2 != '\0') {
                    FUN_0040a1b0();
                    *(undefined *)(param_1 + 0x23) = 1;
                  }
                  goto LAB_0052abef;
                }
              }
              FUN_006d82d0(&local_78);
              cVar2 = FUN_00a10630(&DAT_00c7b640);
              if (cVar2 != '\0') {
                param_1[0xcd] = (int)*pfVar9;
                param_1[0xce] = param_1[0xd0];
                param_1[0x104] = 8;
              }
            }
          }
        }
      }
    }
    else {
      FUN_006bec40(&local_58,0);
      local_64 = local_54 - (float)param_1[0xd0];
      local_5c = local_58 - (float)param_1[0xcf];
      fVar14 = local_64 * local_64 + local_5c * local_5c;
      FUN_00435a50();
      if (fVar14 <= DAT_00ba9fe4) {
        pfVar9 = (float *)FUN_0067f070(&local_70);
        local_58 = *pfVar9 * DAT_00baa81c;
        local_54 = pfVar9[1] * DAT_00baa81c;
      }
      else {
        local_54 = (local_5c / fVar14) * DAT_00baa81c;
        local_58 = (float)((uint)((local_64 / fVar14) * DAT_00baa81c) ^ DAT_00bacb70);
      }
      local_64 = local_58;
      local_5c = local_54;
      uVar7 = FUN_006eef60();
      local_78 = local_64 + (float)param_1[0xcf];
      local_74 = local_5c + (float)param_1[0xd0];
      iVar4 = FUN_00428b20(0x55,0,&local_78,&local_58,param_1,0,uVar7);
      uVar7 = FUN_006eef60();
      local_58 = DAT_00c7b640 - local_64;
      local_54 = DAT_00c7b644 - local_5c;
      local_70 = (float)param_1[0xcf] - local_64;
      local_6c = (float)param_1[0xd0] - local_5c;
      iVar6 = FUN_00428b20(0x55,0,&local_70,&local_58,param_1,0,uVar7);
      *(uint *)(iVar4 + 0x168) = *(uint *)(iVar4 + 0x168) & 0xfffffffb;
      *(undefined4 *)(iVar4 + 0x16c) = *(undefined4 *)(iVar4 + 0x16c);
      *(uint *)(iVar6 + 0x168) = *(uint *)(iVar6 + 0x168) & 0xfffffffb;
      *(undefined4 *)(iVar6 + 0x16c) = *(undefined4 *)(iVar6 + 0x16c);
    }
LAB_0052abef:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa304);
  }
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    if (param_1[10] == 0xfa) {
      if ((param_1[0x5a] & 0x1000000U) == 0) {
        piVar5 = param_1 + 0xcf;
        FUN_006ff2a0(piVar5,0x42200000,0x42700000,1,param_1,DAT_00c79100,DAT_00c79104,DAT_00c79108,
                     DAT_00c7910c,4,0,0);
        FUN_00703190(piVar5,0);
        uVar7 = FUN_006eef60();
        FUN_00428b20(1000,1,piVar5,&DAT_00c7b640,0,0,uVar7);
      }
    }
    else if (param_1[10] == 0x365) {
      piVar5 = (int *)FUN_0060af00(3,0);
      piVar5[0xcf] = param_1[0xcf];
      piVar5[0xd0] = param_1[0xd0];
      (**(code **)(*piVar5 + 0xc))();
    }
  }
LAB_0052ae07:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

