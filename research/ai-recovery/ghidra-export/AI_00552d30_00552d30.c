/* Local J460 decompiler output.
 * VA: 0x00552d30
 * Entry: 00552d30
 * Dispatcher: 0x006c2990
 * Types: 802
 * Identities: 802.0.0,802.1.0
 * Evidence: dispatcher=0x006c2990; end=0x005542e0; instructions=1273
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=802; identities=802.0.0,802.1.0; dispatcher=0x006c2990;
   end=0x005542e0; instructions=1273 */

void __fastcall AI_00552d30(int *param_1)

{
  char cVar1;
  char cVar2;
  uint uVar3;
  undefined4 uVar4;
  int iVar5;
  float *pfVar6;
  char *pcVar7;
  int iVar8;
  char *pcVar9;
  bool bVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  int *piVar15;
  float fVar16;
  float fVar17;
  float local_b8;
  float local_b4;
  float local_90;
  float local_8c;
  int local_88;
  int local_84;
  int local_80;
  int local_7c;
  int local_78;
  int local_74;
  uint local_70;
  int *local_6c;
  float local_68;
  char local_64 [4];
  int local_60;
  undefined local_5c [4];
  float local_58;
  int local_54;
  int local_50;
  float local_4c;
  code *local_48;
  int local_44;
  float local_40;
  int *local_3c;
  float local_38;
  int *local_34;
  int *local_30;
  int *local_2c;
  float local_28;
  char local_21;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af4bb0;
  local_1c = ExceptionList;
  uVar3 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_54 = (int)(float)param_1[0xe9] - (int)(float)param_1[0xe8];
  local_44 = *(int *)(DAT_00c71678 + 0x18300);
  if (param_1[0x2dd] == 1) {
    if (((*(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca] < 5) &&
        (iVar5 = param_1[0xef], iVar5 != 0)) && (*(int *)(iVar5 + 0x28) == 3)) {
      param_1[0x2f1] = *(int *)(iVar5 + 0xd7c);
    }
    if (((param_1[10] == 0x322) && (*(char *)((int)param_1 + 0x173) == '\0')) &&
       (param_1[0xef] == 0)) {
      puStack_20 = &stack0xfffffffc;
      uVar4 = FUN_00435c70();
      (**(code **)(*param_1 + 0x24))(uVar4);
    }
    if ((float)param_1[5] <= 0.0) {
      ExceptionList = local_1c;
      return;
    }
    param_1[5] = 0;
    fVar14 = DAT_00baa120;
    fVar12 = DAT_00baa06c;
    pfVar6 = (float *)param_1[2];
    if (pfVar6 == (float *)param_1[3]) {
      ExceptionList = local_1c;
      return;
    }
    do {
      fVar11 = pfVar6[2];
      if (((((uint)fVar11 & 0x1000086) != 0) && (((uint)pfVar6[0xc] >> 1 & 1) == 0)) &&
         ((pfVar6[4] != 1.401298e-45 &&
          (((pfVar6[6] != 1.401298e-45 && (pfVar6[6] != 4.203895e-45)) &&
           (((uint)fVar11 & 0x1000) == 0)))))) {
        *pfVar6 = 0.0;
        goto LAB_00552ee8;
      }
      if (((((uint)fVar11 & 8) == 0) || (((uint)pfVar6[0xc] >> 1 & 1) != 0)) ||
         ((pfVar6[4] == 1.401298e-45 || (pfVar6[4] == 4.203895e-45)))) {
        fVar11 = pfVar6[4];
        if (fVar11 == 1.261169e-44) {
          fVar11 = *pfVar6 * fVar12;
          goto LAB_00552ee4;
        }
        if (fVar11 == 4.203895e-45) {
          if (pfVar6[5] == 3.377129e-43) {
LAB_00552ec7:
            fVar11 = *pfVar6 * fVar12;
            goto LAB_00552ee4;
          }
        }
        else {
          if (fVar11 == 1.123841e-42) goto LAB_00552ec7;
          if ((int)fVar11 - 10U < 0x3de) {
            fVar11 = *pfVar6 * fVar14;
            goto LAB_00552ee4;
          }
        }
      }
      else {
        fVar11 = *pfVar6 * fVar12;
LAB_00552ee4:
        *pfVar6 = fVar11;
      }
LAB_00552ee8:
      fVar11 = *pfVar6;
      pfVar6 = pfVar6 + 0xe;
      param_1[5] = (int)((float)param_1[5] + fVar11);
      if (pfVar6 == (float *)param_1[3]) {
        ExceptionList = local_1c;
        return;
      }
    } while( true );
  }
  switch(param_1[0x2d9]) {
  case 0:
    param_1[0x5a] = param_1[0x5a] | 0x10;
    param_1[0x2d9] = 3;
    param_1[0x3c6] = 1;
    param_1[0x5b] = param_1[0x5b];
    break;
  case 3:
    goto switchD_00552f2c_caseD_3;
  case 8:
    iVar5 = param_1[0x1f];
    if ((iVar5 == 0) || (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x23) == '\0')) {
      if (param_1[0x2f0] == 1) {
        pcVar7 = "Attack Up";
LAB_00553858:
        puStack_20 = &stack0xfffffffc;
        FUN_0040a380(pcVar7,0);
        bVar10 = false;
      }
      else {
        if (param_1[0x2f0] == 3) {
          pcVar7 = "Attack Down";
          goto LAB_00553858;
        }
        puStack_20 = &stack0xfffffffc;
        FUN_0040a380("Attack Hori",0);
        bVar10 = param_1[0x2f0] == 0;
      }
      *(bool *)(param_1 + 0x52) = bVar10;
      param_1[0xcd] = param_1[0xcf];
      param_1[0xce] = param_1[0xd0];
      param_1[0x104] = 0;
      param_1[0x2ec] = 0x40a00000;
      fVar12 = DAT_00baa3e0;
      if (param_1[0xb] == 0) {
        fVar12 = DAT_00baa490;
      }
      FUN_006b6470(0x73,2,0,fVar12);
      iVar5 = param_1[0x1f];
      if (iVar5 != 0) goto LAB_005538cd;
    }
    else {
LAB_005538cd:
      if (*(char *)(iVar5 + 0x34) != '\0') {
        FUN_0067f1d0(uVar3);
        if ((*(char *)(param_1 + 100) != '\0') && (param_1[0xb] == 1)) {
          pfVar6 = (float *)param_1[0x5e];
          cVar1 = '\0';
          local_21 = '\0';
          fVar12 = DAT_00baa904;
          fVar14 = DAT_00baa2d0;
          if (pfVar6 != (float *)param_1[0x5f]) {
            do {
              fVar11 = (((float)param_1[0x65] * fVar14 + (float)param_1[0xcf] + *pfVar6) - fVar12) /
                       fVar12 + fVar14;
              iVar8 = (int)fVar11;
              iVar5 = (int)((((float)param_1[0x66] * fVar14 + (float)param_1[0xd0] + pfVar6[1]) -
                            DAT_00baaa00) / fVar12 + fVar14);
              if ((((-1 < iVar8) && (cVar1 = local_21, iVar8 < *(int *)(local_44 + 0xc))) &&
                  (-1 < iVar5)) &&
                 ((iVar5 < *(int *)(local_44 + 0x10) &&
                  (iVar5 = *(int *)(local_44 + 0xc) * iVar5 + (int)fVar11, -1 < iVar5)))) {
                if (iVar5 < 0x1c0) {
                  local_2c = *(int **)(local_44 + 0x24 + iVar5 * 4);
                }
                else {
                  local_2c = (int *)0x0;
                }
                iVar5 = FUN_007f0800(iVar5);
                fVar12 = DAT_00baa904;
                fVar14 = DAT_00baa2d0;
                cVar1 = local_21;
                if (((iVar5 == 3) || (iVar5 == 2)) &&
                   ((local_2c != (int *)0x0 && (local_2c[0xf] == 3)))) {
                  local_80 = param_1[0xcf];
                  local_7c = param_1[0xd0];
                  local_48 = *(code **)(*local_2c + 0x14);
                  local_90 = (float)param_1[10];
                  local_8c = (float)param_1[0xb];
                  local_88 = param_1[0xd];
                  local_84 = param_1[0xe];
                  local_78 = param_1[0xd8];
                  local_74 = param_1[0xd9];
                  local_28 = 2.802597e-45;
                  if ((param_1[0x5a] & 0x20000000U) == 0) {
                    local_28 = 0.0;
                  }
                  if ((param_1[0x5b] & 0x400000U) == 0) {
                    local_70 = 0;
                  }
                  else {
                    local_70 = 4;
                  }
                  local_70 = (uint)((param_1[0x5a] & 0x100U) != 0) | (uint)local_28 | local_70;
                  local_6c = param_1;
                  cVar2 = (*local_48)(0,&local_90);
                  fVar12 = DAT_00baa904;
                  fVar14 = DAT_00baa2d0;
                  cVar1 = local_21;
                  if (cVar2 != '\0') {
                    local_28 = *(float *)(DAT_00c71678 + 0x18300);
                    local_30 = *(int **)((int)local_28 + 0xc);
                    fVar17 = (float)(local_2c[9] % (int)local_30) * DAT_00baa904 + DAT_00baa904;
                    fVar12 = (float)(local_2c[9] / (int)local_30) * DAT_00baa904 + DAT_00baaa00;
                    fVar14 = fVar17 - (float)param_1[0xcf];
                    fVar11 = fVar12 - (float)param_1[0xd0];
                    if ((float)((uint)fVar14 & DAT_00bacb40) <= (float)((uint)fVar11 & DAT_00bacb40)
                       ) {
                      fVar13 = 0.0;
                      fVar16 = DAT_00baa454;
                      if (fVar11 < 0.0) {
                        fVar16 = DAT_00baad50;
                      }
                    }
                    else {
                      fVar16 = 0.0;
                      fVar13 = DAT_00baa454;
                      if (fVar14 < 0.0) {
                        fVar13 = DAT_00baad50;
                      }
                    }
                    iVar8 = (int)(((fVar13 * DAT_00baa904 + fVar17) - DAT_00baa904) / DAT_00baa904 +
                                 DAT_00baa2d0);
                    iVar5 = (int)(((fVar12 + fVar16 * DAT_00baa904) - DAT_00baaa00) / DAT_00baa904 +
                                 DAT_00baa2d0);
                    if ((((-1 < iVar8) && (iVar8 < (int)local_30)) && (-1 < iVar5)) &&
                       ((iVar5 < *(int *)((int)local_28 + 0x10) &&
                        (iVar8 = iVar5 * (int)local_30 + iVar8, -1 < iVar8)))) {
                      if (iVar8 < 0x1c0) {
                        uVar4 = *(undefined4 *)(local_44 + 0x24 + iVar8 * 4);
                      }
                      else {
                        uVar4 = 0;
                      }
                      FUN_0081e6e0(uVar4,local_2c);
                    }
                    local_21 = '\x01';
                    fVar12 = DAT_00baa904;
                    fVar14 = DAT_00baa2d0;
                    cVar1 = '\x01';
                  }
                }
              }
              pfVar6 = pfVar6 + 2;
            } while (pfVar6 != (float *)param_1[0x5f]);
            if (cVar1 != '\0') {
              param_1[0x104] = 0;
              param_1[0xd8] = (int)((float)param_1[0x65] * fVar14);
              param_1[0xd9] = (int)((float)param_1[0x66] * fVar14);
            }
          }
        }
        local_4c = (float)param_1[0xe7] * (float)param_1[0xd8] + (float)param_1[0xcf];
        local_34 = (int *)((float)param_1[0xdc] * DAT_00baa4b0);
        local_48 = (code *)((float)param_1[0xe7] * (float)param_1[0xd9] + (float)param_1[0xd0]);
        FUN_00945190(&local_4c,param_1 + 0xdd,0);
        FUN_0041a790(local_64,&local_b8,8);
        local_48 = (code *)0x0;
        local_4c = 0.0;
        local_28 = 0.0;
        if (local_58 != 0.0) {
          do {
            piVar15 = *(int **)(local_60 + (int)local_28 * 4);
            if (((piVar15 != param_1) && (piVar15[10] != 0x322)) &&
               ((piVar15[0x62] == 4 || (piVar15[0x62] == 3)))) {
              if (DAT_00ba9fe4 <
                  local_40 * ((float)piVar15[0xcf] - (float)param_1[0xcf]) +
                  ((float)piVar15[0xd0] - (float)param_1[0xd0]) * (float)local_3c) {
                local_38 = (float)piVar15[0xcf] + DAT_00c7b640;
                local_34 = (int *)((float)piVar15[0xd0] + DAT_00c7b644);
                FUN_00945190(&local_38,piVar15 + 0xdd,piVar15[0x3b]);
                local_90 = local_90 + (float)piVar15[0xe7] * (float)piVar15[0xd8];
                local_8c = local_8c + (float)piVar15[0xe7] * (float)piVar15[0xd9];
                cVar1 = FUN_00945470(&local_4c);
                iVar5 = DAT_00c71678;
                fVar12 = DAT_00baa304;
                if ((cVar1 != '\0') &&
                   ((((1 < *(int *)(DAT_00c71678 + 0x26614) && (piVar15[10] == 1)) ||
                     (piVar15[10] - 10U < 0x3de)) || (piVar15[10] == 4)))) {
                  fVar14 = (float)param_1[0xe7];
                  fVar11 = DAT_00baa304;
                  if ((NAN(fVar14) || NAN(DAT_00baa454)) == (fVar14 == DAT_00baa454)) {
                    fVar11 = DAT_00baa304 / ((fVar14 + DAT_00baa304) - fVar14 * DAT_00baa304);
                  }
                  fVar14 = (float)param_1[0xd9];
                  fVar17 = ((float)param_1[0xd8] - (float)piVar15[0xd8]) * fVar11 +
                           (float)piVar15[0xd8];
                  piVar15[0xd8] = (int)fVar17;
                  piVar15[0xd9] =
                       (int)((fVar14 - (float)piVar15[0xd9]) * fVar11 + (float)piVar15[0xd9]);
                  if (((1 < *(int *)(iVar5 + 0x26614)) && (piVar15[10] == 1)) ||
                     ((piVar15[10] - 10U < 0x3de || (piVar15[10] == 4)))) {
                    fVar14 = (float)piVar15[0xdb];
                    if ((NAN(fVar14) || NAN(DAT_00ba9fe4)) == (fVar14 == DAT_00ba9fe4)) {
                      piVar15[0xd9] =
                           (int)((((local_b4 + (float)piVar15[0xdc] * (float)local_3c) -
                                  (float)piVar15[0xd0]) * fVar12 * (float)piVar15[0xe7]) / fVar14 +
                                (float)piVar15[0xd9]);
                      piVar15[0xd8] =
                           (int)(fVar17 + (((local_b8 + (float)piVar15[0xdc] * local_40) -
                                           (float)piVar15[0xcf]) * fVar12 * (float)piVar15[0xe7]) /
                                          fVar14);
                    }
                  }
                }
              }
            }
            local_28 = (float)((int)local_28 + 1);
          } while ((uint)local_28 < (uint)local_58);
        }
        if (local_64[0] == '\0') {
          local_14 = 0;
          FUN_00a648b0(0,0);
          local_14 = 0xffffffff;
        }
        fVar12 = (float)param_1[0xcf] - (float)param_1[0xcd];
        local_21 = false;
        if ((float)param_1[0xe7] * DAT_00baa75c * (float)param_1[0xe7] <=
            ((float)param_1[0xd0] - (float)param_1[0xce]) *
            ((float)param_1[0xd0] - (float)param_1[0xce]) + fVar12 * fVar12) {
          param_1[0x104] = 0;
        }
        else {
          param_1[0x104] = param_1[0x104] + local_54;
          local_21 = 6 < param_1[0x104];
        }
        param_1[0xcd] = param_1[0xcf];
        param_1[0xce] = param_1[0xd0];
        if (((param_1[0xb] == 1) && (iVar5 = param_1[0xf1], iVar5 != 0)) &&
           ((cVar1 = FUN_006ac530(), cVar1 != '\0' &&
            (((cVar1 = FUN_00417430(0x20000000,0), cVar1 == '\0' &&
              ((*(float *)(iVar5 + 0x340) - (float)param_1[0xd0]) * (float)local_3c +
               (*(float *)(iVar5 + 0x33c) - (float)param_1[0xcf]) * local_40 < DAT_00baae4c)) &&
             (uVar3 = FUN_006eef60(), (uVar3 & 7) == 0)))))) {
          local_21 = '\x01';
          param_1[0x2e8] = 0xf;
          if (param_1[0x2f0] == 1) {
            pcVar7 = "AttackStop Up";
          }
          else {
            if (param_1[0x2f0] != 3) {
              FUN_0040a380("AttackStop Hori",0);
              *(bool *)(param_1 + 0x52) = param_1[0x2f0] == 0;
              goto LAB_00554103;
            }
            pcVar7 = "AttackStop Down";
          }
          FUN_0040a380(pcVar7,0);
          *(undefined *)(param_1 + 0x52) = 0;
        }
LAB_00554103:
        uVar3 = FUN_006eef60();
        if ((uVar3 & 1) == 0) {
          iVar5 = FUN_006eef60();
          FUN_006b64d0((float)((double)param_1[0xb] +
                              (double)(&DAT_00bacb00)[-(param_1[0xb] >> 0x1f)]) * DAT_00baa1f8 +
                       (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa280 + DAT_00baa1f8);
        }
        fVar12 = (float)param_1[0xe7];
        fVar14 = (float)param_1[0x2ec] - fVar12 * DAT_00baa120;
        if (fVar14 <= DAT_00baa6fc) {
          fVar14 = DAT_00baa6fc;
        }
        param_1[0x2ec] = (int)fVar14;
        param_1[0xd8] = (int)(fVar14 * local_40 * fVar12 + (float)param_1[0xd8]);
        param_1[0xd9] = (int)(fVar14 * (float)local_3c * fVar12 + (float)param_1[0xd9]);
        param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3c4);
        if (local_21 == '\0') break;
        local_34 = param_1 + 0xf1;
        param_1[0x2d9] = 3;
        if (param_1[0xf1] != 0) {
          FUN_004cf210(&local_34);
        }
        goto LAB_00554221;
      }
    }
    fVar12 = (float)param_1[0xdb] * DAT_00baa354;
    goto LAB_00554263;
  case 0xd:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    cVar1 = FUN_0040b030("Shoot");
    if (cVar1 != '\0') {
      local_28 = 3.75548e-43;
      FUN_00956780();
      FUN_0092dc30(local_28,0x3f800000,2,0,0x3f800000,0);
      uVar4 = FUN_007e90f0();
      local_34 = (int *)((param_1[0xb] != 1) + 1);
      pfVar6 = (float *)FUN_0067f070(&local_40);
      local_4c = *pfVar6 + 0.0;
      local_48 = (code *)(pfVar6[1] - DAT_00baa784);
      FUN_006fe410(5,10,param_1 + 0xcf,&local_4c,param_1,local_34,uVar4,0);
    }
    if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) break;
    param_1[0x2d9] = 3;
    if (param_1[0xf1] != 0) {
      local_34 = param_1 + 0xf1;
      FUN_004cf210(&local_34);
      param_1[0xf1] = 0;
      param_1[0x104] = 0;
      param_1[0x2ee] = (int)DAT_00c7b640;
      param_1[0x2ef] = (int)DAT_00c7b644;
      break;
    }
LAB_00554221:
    param_1[0xf1] = 0;
    param_1[0x104] = 0;
    param_1[0x2ee] = (int)DAT_00c7b640;
    param_1[0x2ef] = (int)DAT_00c7b644;
    break;
  case 0x10:
    param_1[0x2d9] = 3;
    param_1[0x2e8] = 0x1e;
    param_1[0x62] = 0;
    param_1[0x2ee] = (int)DAT_00c7b640;
    param_1[0x2ef] = (int)DAT_00c7b644;
    param_1[0x104] = 0;
    param_1[0x2e9] = 0;
switchD_00552f2c_caseD_3:
    if (((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) &&
       (*(char *)(param_1[0x1f] + 0x34) == '\0')) {
      fVar12 = (float)param_1[0xdb] * DAT_00baa3d0;
      *(undefined *)((int)param_1 + 0x171) = 1;
LAB_00554263:
      param_1[0xdb] = (int)fVar12;
      break;
    }
    *(undefined *)((int)param_1 + 0x171) = 1;
    puStack_20 = &stack0xfffffffc;
    FUN_006bec40(&local_40,0);
    iVar5 = FUN_006be840();
    local_48 = *(code **)(iVar5 + 0x33c);
    local_34 = *(int **)(iVar5 + 0x340);
    if (*(int *)(iVar5 + 0x28) == 3) {
      local_50 = *(int *)(iVar5 + 0x410);
    }
    else {
      local_50 = 0;
      if (*(int *)(iVar5 + 0x28) == 1) {
        local_50 = iVar5;
      }
    }
    local_28 = (float)iVar5;
    cVar1 = FUN_006ac530();
    if ((cVar1 == '\0') || (uVar3 = FUN_006eef60(), uVar3 % 0xf != 0)) {
      param_1[0x2ee] = (int)DAT_00c7b640;
      param_1[0x2ef] = (int)DAT_00c7b644;
    }
    else {
      pfVar6 = (float *)FUN_0067f070(local_5c);
      iVar5 = FUN_006eef60();
      fVar14 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4;
      fVar12 = fVar14 * *pfVar6 * DAT_00baa868;
      param_1[0x2ef] = (int)(fVar14 * pfVar6[1] * DAT_00baa868);
      param_1[0x2ee] = (int)fVar12;
      iVar5 = (int)local_28;
    }
    local_68 = (float)param_1[0xcf];
    local_58 = local_40 - local_68;
    fVar12 = (float)local_3c - (float)param_1[0xd0];
    local_21 = '\x01';
    local_2c = (int *)local_40;
    local_30 = local_3c;
    local_28 = DAT_00baa4b0 -
               (float)((double)param_1[0xb] + (double)(&DAT_00bacb00)[-(param_1[0xb] >> 0x1f)]) *
               DAT_00baa154;
    local_3c = (int *)fVar12;
    if (local_50 == 0) {
LAB_00553202:
      if (0.0 < local_58 * local_58 + (float)local_3c * (float)local_3c) {
        local_40 = (float)local_2c + (float)param_1[0x2ee];
        fVar12 = local_28 * DAT_00baa3bc;
        local_3c = (int *)((float)local_30 + (float)param_1[0x2ef]);
        goto LAB_0055323d;
      }
    }
    else {
      cVar1 = FUN_00505cc0();
      if (cVar1 == '\0') {
        param_1[0x2e9] = 0xf;
      }
      else if (param_1[0x2e9] < 1) goto LAB_00553202;
      local_40 = local_68 - (float)local_2c;
      local_21 = '\0';
      local_3c = (int *)((float)param_1[0xd0] - (float)local_30);
      pfVar6 = (float *)FUN_00a10100(local_5c,0x42a00000);
      local_40 = (float)local_2c + *pfVar6;
      local_3c = (int *)((float)local_30 + pfVar6[1]);
      fVar12 = local_28 * DAT_00baa3bc;
LAB_0055323d:
      FUN_007e33c0(&local_40,fVar12,0,1);
    }
    uVar3 = FUN_006eef60();
    if ((uVar3 & 3) == 0) {
      iVar8 = FUN_006eef60();
      FUN_006b64d0((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa280 + DAT_00baa1f8 +
                   (float)((double)param_1[0xb] + (double)(&DAT_00bacb00)[-(param_1[0xb] >> 0x1f)])
                   * DAT_00baa1f8);
    }
    if (((param_1[0x2e8] < 1) ||
        (iVar8 = param_1[0x2e8] - local_54, param_1[0x2e8] = iVar8, iVar8 < 1)) &&
       (param_1[0x62] == 0)) {
      param_1[0x62] = 4;
    }
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3e0);
    fVar12 = (float)param_1[0xd8] * (float)param_1[0xd8] +
             (float)param_1[0xd9] * (float)param_1[0xd9];
    FUN_00435a50();
    if (DAT_00baa630 <= fVar12) {
      iVar8 = FUN_0067f260();
      param_1[0x2f0] = iVar8;
      if (iVar8 == 1) {
        pcVar7 = "Move Up";
      }
      else {
        if (iVar8 != 3) {
          FUN_0040a380("Move Hori",0);
          bVar10 = param_1[0x2f0] == 0;
          goto LAB_005533b3;
        }
        pcVar7 = "Move Down";
      }
LAB_005533ac:
      FUN_0040a380(pcVar7,0);
      bVar10 = false;
    }
    else {
      if (param_1[0x2f0] == 1) {
        pcVar7 = "Idle Up";
        goto LAB_005533ac;
      }
      if (param_1[0x2f0] == 3) {
        pcVar7 = "Idle Down";
        goto LAB_005533ac;
      }
      FUN_0040a380("Idle Hori",0);
      bVar10 = param_1[0x2f0] == 0;
    }
LAB_005533b3:
    *(bool *)(param_1 + 0x52) = bVar10;
    iVar8 = param_1[0xef];
    if ((iVar8 != 0) && (*(int *)(iVar8 + 0x28) == 3)) {
      iVar8 = *(int *)(iVar8 + 0xd7c);
      if (param_1[0x2f1] < 0x19) {
        if (0x18 < iVar8) {
          param_1[0x2f1] = 0x19;
          goto LAB_00553447;
        }
      }
      else if (param_1[0x2f1] < 0x23) {
        if (0x22 < iVar8) {
          param_1[0x2f1] = 0x23;
LAB_00553447:
          cVar1 = FUN_0040a5d0(&DAT_00b1de50,1);
          if (cVar1 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x23) = 1;
          }
          param_1[0x2d9] = 0xd;
          break;
        }
      }
      else if ((param_1[0x2f1] / 10 < iVar8 / 10) &&
              (iVar8 = (iVar8 / 10) * 10, param_1[0x2f1] = iVar8, iVar8 != 0x28)) goto LAB_00553447;
    }
    if (((((NAN((float)local_2c) || NAN((float)local_48)) == ((float)local_2c == (float)local_48))
         || ((NAN((float)local_30) || NAN((float)local_34)) == ((float)local_30 == (float)local_34))
         ) || (0 < param_1[0x2e8])) ||
       ((local_21 == '\0' || (uVar3 = FUN_006eef60(), (uVar3 & 3) != 0)))) break;
    local_38 = (float)local_2c;
    local_34 = local_30;
    cVar1 = FUN_006ac530();
    piVar15 = local_30;
    local_4c = (float)local_2c;
    if (cVar1 != '\0') {
      local_2c = *(int **)(iVar5 + 0x360);
      fVar14 = (float)param_1[0xcf] - *(float *)(iVar5 + 0x33c);
      local_30 = *(int **)(iVar5 + 0x364);
      fVar12 = (float)param_1[0xd0] - *(float *)(iVar5 + 0x340);
      fVar12 = fVar12 * fVar12 + fVar14 * fVar14;
      FUN_00435a50();
      local_38 = (float)local_2c * fVar12 * DAT_00baa120 + *(float *)(iVar5 + 0x33c);
      local_34 = (int *)((float)local_30 * fVar12 * DAT_00baa120 + *(float *)(iVar5 + 0x340));
      piVar15 = local_34;
      local_4c = local_38;
    }
    local_48 = (code *)((float)piVar15 - (float)param_1[0xd0]);
    local_4c = local_4c - (float)param_1[0xcf];
    fVar12 = (float)((uint)local_48 & DAT_00bacb40);
    if ((float)((uint)local_4c & DAT_00bacb40) <= (float)((uint)local_48 & DAT_00bacb40)) {
      fVar12 = (float)((uint)local_4c & DAT_00bacb40);
    }
    if ((*(float *)(iVar5 + 0x370) + DAT_00baa868 <= fVar12) ||
       (cVar1 = FUN_007f0df0(param_1 + 0xcf,&local_38,(param_1[0xb] != 0) + '\x01',0,0,0,0),
       cVar1 == '\0')) break;
    local_34 = (int *)FUN_0067f260();
    param_1[0x2f0] = (int)local_34;
    param_1[0x2d9] = 8;
    cVar1 = FUN_006ac530();
    if ((cVar1 == '\0') || (cVar1 = FUN_00417430(0x20000000,0), cVar1 != '\0')) {
      bVar10 = false;
    }
    else {
      bVar10 = true;
    }
    if (local_34 == (int *)0x1) {
      pcVar7 = "AttackStartQuick Up";
      pcVar9 = "AttackStart Up";
LAB_00553669:
      if (!bVar10) {
        pcVar7 = pcVar9;
      }
      FUN_0040a380(pcVar7,0);
      bVar10 = false;
    }
    else {
      if (local_34 == (int *)0x3) {
        pcVar7 = "AttackStartQuick Down";
        pcVar9 = "AttackStart Down";
        goto LAB_00553669;
      }
      pcVar7 = "AttackStartQuick Hori";
      if (!bVar10) {
        pcVar7 = "AttackStart Hori";
      }
      FUN_0040a380(pcVar7,0);
      bVar10 = param_1[0x2f0] == 0;
    }
    *(bool *)(param_1 + 0x52) = bVar10;
    if (param_1[0xf1] != 0) {
      local_34 = param_1 + 0xf1;
      FUN_004cf210(&local_34);
    }
    param_1[0xf1] = iVar5;
    FUN_004cdcf0(param_1 + 0xf1);
    param_1[0x2e8] = 0x1e;
  }
  if (0 < param_1[0x2e9]) {
    iVar8 = ((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]) + param_1[0x2e9];
    iVar5 = 0;
    if (0 < iVar8) {
      iVar5 = iVar8;
    }
    param_1[0x2e9] = iVar5;
  }
  ExceptionList = local_1c;
  return;
}

