/* Local J460 decompiler output.
 * VA: 0x005562b0
 * Entry: 005562b0
 * Dispatcher: 0x006c2990
 * Types: 835
 * Identities: 835.0.0,835.10.0
 * Evidence: dispatcher=0x006c2990; end=0x005579b0; instructions=1298
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=835; identities=835.0.0,835.10.0;
   dispatcher=0x006c2990; end=0x005579b0; instructions=1298 */

void __fastcall AI_005562b0(int *param_1)

{
  char cVar1;
  int iVar2;
  float *pfVar3;
  int iVar4;
  uint uVar5;
  undefined4 uVar6;
  int ***pppiVar7;
  int *piVar8;
  char *pcVar9;
  uint uVar10;
  int iVar11;
  uint uVar12;
  float fVar13;
  float fVar14;
  int **ppiVar15;
  int **ppiVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  double dVar20;
  undefined4 uVar21;
  undefined4 local_170;
  int **local_16c;
  int **local_168;
  int **local_164;
  float local_160;
  int **local_15c;
  int **local_158;
  int **local_154;
  float local_150;
  float local_14c;
  int **local_148;
  int **local_144;
  int **local_140 [47];
  undefined local_84 [24];
  undefined local_6c [24];
  undefined local_54 [24];
  undefined local_3c [24];
  undefined local_24 [8];
  float local_1c;
  float local_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00af4c55;
  local_10 = ExceptionList;
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  iVar11 = param_1[0x2dd];
  if ((iVar11 == 1) || (iVar11 == 2)) {
    if (param_1[0xb] == 10) {
      iVar2 = param_1[0xef];
      if ((iVar2 == 0) ||
         (((*(int *)(DAT_00c71678 + 0x26614) < 2 || (*(int *)(iVar2 + 0x28) != 1)) &&
          (0x3dd < *(int *)(iVar2 + 0x28) - 10U)))) {
        if (iVar11 == 1) {
          FUN_00435c70(local_14);
          (**(code **)(*param_1 + 0x24))();
        }
      }
      else {
        pfVar3 = (float *)FUN_006b6af0(&local_1c,"CordPos");
        fVar13 = (float)param_1[0xd4];
        fVar14 = (float)param_1[0xd0];
        uVar5 = param_1[0x304] & 1;
        fVar17 = pfVar3[1];
        iVar11 = *(int *)(param_1[0x302] + ((uint)param_1[0x304] >> 1 & param_1[0x303] - 1U) * 4);
        *(float *)(iVar11 + uVar5 * 8) = (float)param_1[0xd3] + *pfVar3 + (float)param_1[0xcf];
        *(float *)(iVar11 + 4 + uVar5 * 8) = fVar14 + 0.0;
        uVar5 = param_1[0x304] + 1U & 1;
        iVar11 = *(int *)(param_1[0x302] + (param_1[0x303] - 1U & param_1[0x304] + 1U >> 1) * 4);
        *(int *)(iVar11 + uVar5 * 8) = param_1[0xd8];
        *(int *)(iVar11 + 4 + uVar5 * 8) = param_1[0xd9];
        uVar5 = param_1[0x304] + 2U & 1;
        iVar11 = *(int *)(param_1[0x302] + (param_1[0x303] - 1U & param_1[0x304] + 2U >> 1) * 4);
        *(float *)(iVar11 + uVar5 * 8) = fVar13 + fVar17;
        *(undefined4 *)(iVar11 + 4 + uVar5 * 8) = 0;
        FUN_00447770();
        pcVar9 = "LeftEye";
        if (param_1[0xc] != 0) {
          pcVar9 = "RightEye";
        }
        FUN_006b6af0(&local_144,pcVar9);
        uVar5 = param_1[0x305] + -3 + param_1[0x304];
        fVar13 = *(float *)(param_1[0xef] + 0x340);
        uVar12 = uVar5 & 1;
        iVar11 = *(int *)(param_1[0x302] + (param_1[0x303] - 1U & uVar5 >> 1) * 4);
        *(float *)(iVar11 + uVar12 * 8) = *(float *)(param_1[0xef] + 0x33c) + (float)local_144;
        *(float *)(iVar11 + 4 + uVar12 * 8) = fVar13 + 0.0;
        uVar5 = param_1[0x305] + -2 + param_1[0x304];
        uVar12 = uVar5 & 1;
        fVar13 = *(float *)(param_1[0xef] + 0x364) * DAT_00baa198;
        iVar11 = *(int *)(param_1[0x302] + (uVar5 >> 1 & param_1[0x303] - 1U) * 4);
        *(float *)(iVar11 + uVar12 * 8) = *(float *)(param_1[0xef] + 0x360) * DAT_00baa198;
        *(float *)(iVar11 + 4 + uVar12 * 8) = fVar13;
        uVar5 = param_1[0x305] + -1 + param_1[0x304];
        uVar12 = uVar5 & 1;
        iVar11 = *(int *)(param_1[0x302] + (uVar5 >> 1 & param_1[0x303] - 1U) * 4);
        *(int ***)(iVar11 + uVar12 * 8) = local_140[0];
        *(undefined4 *)(iVar11 + 4 + uVar12 * 8) = 0;
        fVar13 = DAT_00baa784;
        if ((**(char **)(DAT_00c71678 + 0x18300) == '\0') ||
           (*(int *)(DAT_00c71678 + 0x264f8) - *(int *)(*(char **)(DAT_00c71678 + 0x18300) + 0x11f0)
            < 2)) {
          local_148 = (int **)0x1;
          local_150 = 4.203895e-45;
          do {
            uVar5 = param_1[0x304];
            uVar12 = uVar5 & 1;
            fVar14 = *(float *)(param_1[0xef] + 0x340);
            iVar11 = *(int *)(param_1[0x302] + (param_1[0x303] - 1U & uVar5 >> 1) * 4);
            fVar19 = (float)((double)(int)local_148 +
                            (double)(&DAT_00bacb00)[-((int)local_148 >> 0x1f)]) / fVar13;
            fVar17 = *(float *)(iVar11 + 4 + uVar12 * 8);
            fVar18 = *(float *)(iVar11 + 4 + uVar12 * 8);
            uVar10 = (int)local_150 + uVar5 & 1;
            iVar2 = *(int *)(param_1[0x302] +
                            (param_1[0x303] - 1U & (int)local_150 + uVar5 >> 1) * 4);
            *(float *)(iVar2 + uVar10 * 8) =
                 ((*(float *)(param_1[0xef] + 0x33c) + (float)local_144) -
                 *(float *)(iVar11 + uVar12 * 8)) * fVar19 + *(float *)(iVar11 + uVar12 * 8);
            *(float *)(iVar2 + 4 + uVar10 * 8) = ((fVar14 + 0.0) - fVar17) * fVar19 + fVar18;
            uVar5 = (int)local_150 + 1U + param_1[0x304];
            uVar12 = uVar5 & 1;
            iVar11 = *(int *)(param_1[0x302] + (param_1[0x303] - 1U & uVar5 >> 1) * 4);
            *(undefined4 *)(iVar11 + uVar12 * 8) = 0;
            *(undefined4 *)(iVar11 + 4 + uVar12 * 8) = 0;
            uVar5 = param_1[0x304] + 2;
            uVar12 = uVar5 & 1;
            iVar11 = *(int *)(param_1[0x302] + (param_1[0x303] - 1U & uVar5 >> 1) * 4);
            uVar5 = (int)local_150 + 2U + param_1[0x304];
            uVar10 = uVar5 & 1;
            iVar2 = *(int *)(param_1[0x302] + (uVar5 >> 1 & param_1[0x303] - 1U) * 4);
            *(float *)(iVar2 + uVar10 * 8) =
                 ((float)local_140[0] - *(float *)(iVar11 + uVar12 * 8)) * fVar19 +
                 *(float *)(iVar11 + uVar12 * 8);
            *(undefined4 *)(iVar2 + 4 + uVar10 * 8) = 0;
            local_150 = (float)((int)local_150 + 3);
            local_148 = (int **)((int)local_148 + 1);
          } while ((uint)local_150 < 0x12);
          FUN_004b0e40();
        }
        else {
          FUN_004e8fa0();
        }
        local_148 = (int **)((*(float *)(param_1[0xef] + 0x340) + 0.0) - (float)param_1[0xd0]);
        local_140[0] = (int **)((*(float *)(param_1[0xef] + 0x33c) + (float)local_144) -
                               (float)param_1[0xcf]);
        fVar13 = (float)local_148 * (float)local_148 + (float)local_140[0] * (float)local_140[0];
        FUN_00435a50();
        if (DAT_00baa98c < fVar13) {
          fVar14 = fVar13 - DAT_00baa98c;
          param_1[0xd8] =
               (int)(((float)local_140[0] / fVar13) * fVar14 * DAT_00baa120 * DAT_00baa1f8 *
                     (float)param_1[0xe7] + (float)param_1[0xd8]);
          param_1[0xd9] =
               (int)(((float)local_148 / fVar13) * fVar14 * DAT_00baa120 * DAT_00baa1f8 *
                     (float)param_1[0xe7] + (float)param_1[0xd9]);
        }
      }
    }
    goto LAB_0055798b;
  }
  if (iVar11 == 3) {
    if ((param_1[0xb] == 10) && (param_1[0x2df] == param_1[0xef])) {
      param_1[0x2e0] = 0;
    }
    goto LAB_0055798b;
  }
  if (param_1[0xb] != 10) {
    local_154 = (int **)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
    FUN_006d8e40();
    iVar11 = param_1[0x2d9];
    if (iVar11 == 0) {
      param_1[0x2d9] = 4;
      FUN_0040a6e0("WalkVert",0);
      if (param_1[0x3c7] == -1) {
        uVar5 = FUN_006eef60();
        iVar11 = uVar5 % 0x96 + 0x3c;
      }
      else {
        iVar11 = 0x3c;
      }
      param_1[0x2e8] = iVar11;
      local_140[0] = (int **)0x0;
      FUN_0044bcc0(2,local_140);
      uVar5 = 0;
      do {
        uVar6 = FUN_007e90f0();
        local_1c = DAT_00baa8d0;
        if (uVar5 == 0) {
          local_1c = DAT_00baae14;
        }
        local_1c = local_1c + (float)param_1[0xcf];
        local_18 = (float)param_1[0xd0] + DAT_00baa8d0;
        piVar8 = (int *)FUN_00428b20(0x343,10,&local_1c,&DAT_00c7b640,param_1,uVar5,uVar6);
        uVar12 = param_1[0x2ff] + uVar5 & 3;
        iVar11 = *(int *)(param_1[0x2fd] + (param_1[0x2fe] - 1U & param_1[0x2ff] + uVar5 >> 2) * 4);
        local_148 = (int **)(iVar11 + uVar12 * 4);
        if (*(int *)(iVar11 + uVar12 * 4) != 0) {
          local_140[0] = local_148;
          FUN_004cf210();
        }
        *local_148 = piVar8;
        if (piVar8 != (int *)0x0) {
          FUN_004cdcf0();
        }
        if (piVar8[0xef] != 0) {
          local_140[0] = (int **)(piVar8 + 0xef);
          FUN_004cf210();
        }
        piVar8[0xef] = (int)param_1;
        FUN_004cdcf0();
        (**(code **)(*piVar8 + 0xc))();
        uVar5 = uVar5 + 1;
      } while (uVar5 < 2);
      goto LAB_0055798b;
    }
    if (iVar11 != 4) {
      if (iVar11 == 8) {
        cVar1 = FUN_0040b030();
        if (cVar1 != '\0') {
          FUN_00704360(param_1 + 0xcf,0x42f00000,param_1,1,0);
          uVar6 = AI_0043ef30();
          local_170 = 0x41000000;
          local_16c = (int **)0x40c00000;
          FUN_006cb2e0(param_1 + 0xcf,&local_170,9,uVar6);
        }
        cVar1 = FUN_0040a550();
        if (cVar1 != '\0') {
          param_1[0x2d9] = 4;
          param_1[0x104] = 0;
          if (param_1[0x3c7] == -1) {
            uVar5 = FUN_006eef60();
            iVar11 = uVar5 % 0x96 + 0x3c;
          }
          else {
            iVar11 = 0x3c;
          }
          param_1[0x2e8] = iVar11;
        }
        param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa280);
      }
      goto LAB_0055798b;
    }
    FUN_0040c340();
    local_8 = 0;
    FUN_0040c340();
    local_8._0_1_ = 1;
    FUN_0040c340();
    local_8._0_1_ = 2;
    FUN_0040c340();
    local_8 = CONCAT31(local_8._1_3_,3);
    FUN_006c1870(local_3c,local_54,local_6c,local_84,0x3dcccccd);
    FUN_0040d040();
    FUN_0040d040();
    FUN_0040d040();
    local_8 = 0xffffffff;
    FUN_0040d040();
    if (param_1[0x3c7] == -1) {
      fVar13 = (float)param_1[0xcf];
      local_15c = (int **)param_1[0xd0];
      local_148 = (int **)0x0;
      local_160 = fVar13;
      ppiVar15 = local_15c;
      fVar14 = DAT_00baacb4;
      if (param_1[0x300] != 0) {
        do {
          uVar5 = (int)local_148 + param_1[0x2ff] & 3;
          uVar12 = (uint)((int)local_148 + param_1[0x2ff]) >> 2;
          if ((*(int *)(*(int *)(param_1[0x2fd] + (param_1[0x2fe] - 1U & uVar12) * 4) + uVar5 * 4)
               != 0) &&
             ((((iVar11 = *(int *)(*(int *)(param_1[0x2fd] + (param_1[0x2fe] - 1U & uVar12) * 4) +
                                  uVar5 * 4), 1 < *(int *)(DAT_00c71678 + 0x26614) &&
                (*(int *)(iVar11 + 0x28) == 1)) || (*(int *)(iVar11 + 0x28) - 10U < 0x3de)) &&
              (fVar17 = *(float *)(*(int *)(*(int *)(param_1[0x2fd] +
                                                    (param_1[0x2fe] - 1U & uVar12) * 4) + uVar5 * 4)
                                  + 3000), fVar17 < fVar14)))) {
            iVar11 = *(int *)(*(int *)(param_1[0x2fd] + (param_1[0x2fe] - 1U & uVar12) * 4) +
                             uVar5 * 4);
            fVar13 = *(float *)(iVar11 + 0x33c);
            local_15c = *(int ***)(iVar11 + 0x340);
            local_160 = fVar13;
            ppiVar15 = local_15c;
            fVar14 = fVar17;
          }
          local_148 = (int **)((int)local_148 + 1);
        } while (local_148 < (int **)param_1[0x300]);
        if (fVar14 < DAT_00baacb4) {
          ppiVar16 = DAT_00baa2d0;
          if (0.0 < fVar14) {
            fVar13 = ((float)ppiVar15 - (float)param_1[0xd0]) *
                     ((float)ppiVar15 - (float)param_1[0xd0]) +
                     (fVar13 - (float)param_1[0xcf]) * (fVar13 - (float)param_1[0xcf]);
            FUN_00435a50();
            local_148 = (int **)0x3f000000;
            local_140[0] = (int **)(fVar13 / DAT_00baa9d0);
            pppiVar7 = local_140;
            if ((float)DAT_00baa2d0 <= (float)(int **)(fVar13 / DAT_00baa9d0)) {
              pppiVar7 = &local_148;
            }
            ppiVar16 = *pppiVar7;
          }
          FUN_007e33c0(&local_160,ppiVar16,900,1);
          goto LAB_00557237;
        }
      }
      FUN_007e6b90();
    }
    else {
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa304);
      pfVar3 = (float *)FUN_006d82d0();
      fVar13 = pfVar3[1] * DAT_00baa4b0 * DAT_00baa4c0;
      param_1[0xd8] =
           (int)(*pfVar3 * DAT_00baa4b0 * DAT_00baa4c0 * (float)param_1[0xe7] + (float)param_1[0xd8]
                );
      param_1[0xd9] = (int)(fVar13 * (float)param_1[0xe7] + (float)param_1[0xd9]);
    }
LAB_00557237:
    uVar5 = FUN_006eef60();
    if (uVar5 % 0x28 == 0) {
      FUN_006d6ba0(0xa7,0x3f800000,0x3c,0,0x3f800000);
    }
    if (((param_1[0x2e8] < 1) ||
        (iVar11 = param_1[0x2e8] - (int)local_154, param_1[0x2e8] = iVar11, iVar11 < 1)) &&
       (((param_1[0x3c7] == -1 && (uVar5 = FUN_006eef60(), uVar5 % 0x3c == 0)) ||
        (cVar1 = FUN_006cae60(0,7), cVar1 != '\0')))) {
      param_1[0x2d9] = 8;
      FUN_0040c340();
      local_8 = 4;
      FUN_0040c340();
      local_8._0_1_ = 5;
      FUN_0040c340();
      local_8._0_1_ = 6;
      FUN_0040c340();
      local_8 = CONCAT31(local_8._1_3_,7);
      FUN_006c1870(local_84,local_6c,local_54,local_3c,0);
      FUN_0040d040();
      FUN_0040d040();
      FUN_0040d040();
      FUN_0040d040();
      param_1[0x104] = 0;
    }
    goto LAB_0055798b;
  }
  if (param_1[0x2d9] == 0) {
    param_1[0x5a] = param_1[0x5a] | 1;
    param_1[0x5b] = param_1[0x5b] | 8;
    param_1[0x3c6] = 7;
    *(undefined *)(param_1 + 0xec) = 1;
    param_1[0x61] = 3;
    param_1[0x2d9] = 4;
    param_1[0xd4] = -0x3e600000;
    FUN_0040a380(&DAT_00b1d428,0);
    param_1[0x30d] = 0x42b40000;
    param_1[0x2ee] = 0x461c4000;
    fVar13 = (float)param_1[0xd0] + DAT_00baa9d0;
    param_1[0xcd] = (int)((float)param_1[0xcf] + 0.0);
    param_1[0xce] = (int)fVar13;
    FUN_0040a940(&DAT_00b1d20c,0);
    iVar11 = FUN_0040b220();
    *(undefined *)(iVar11 + 0x74) = 0;
    if ((param_1[0xef] != 0) && (cVar1 = FUN_006ac530(), cVar1 != '\0')) {
      *(bool *)(param_1 + 0x52) = param_1[0xc] == 0;
      pfVar3 = (float *)FUN_006b6af0(&local_1c,"CordPos");
      local_154 = (int **)(*pfVar3 + (float)param_1[0xd3] + (float)param_1[0xcf]);
      local_15c = (int **)((float)param_1[0xd0] + 0.0);
      local_148 = (int **)((float)param_1[0xd4] + pfVar3[1]);
      FUN_00447770();
      pcVar9 = "LeftEye";
      if (param_1[0xc] != 0) {
        pcVar9 = "RightEye";
      }
      FUN_006b6af0(&local_144,pcVar9);
      uVar5 = 0;
      local_16c = (int **)((float)local_140[0] - (float)local_148);
      local_164 = (int **)((*(float *)(param_1[0xef] + 0x33c) + (float)local_144) - (float)local_154
                          );
      local_150 = (*(float *)(param_1[0xef] + 0x340) + 0.0) - (float)local_15c;
      do {
        local_140[0] = (int **)((float)((double)uVar5 +
                                       (double)(&DAT_00bacb00)[-((int)uVar5 >> 0x1f)]) /
                               DAT_00baa784);
        FUN_004b0f50();
        FUN_004b0f50();
        local_18 = 0.0;
        local_1c = (float)local_140[0] * (float)local_16c + (float)local_148;
        FUN_004b0f50();
        uVar5 = uVar5 + 1;
      } while (uVar5 < 6);
      FUN_004b0e40();
      iVar11 = 10;
      do {
        FUN_004e8fa0();
        iVar11 = iVar11 + -1;
      } while (iVar11 != 0);
    }
    goto LAB_0055798b;
  }
  if (((param_1[0x2d9] != 4) ||
      (param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa418), param_1[0xef] == 0)) ||
     (cVar1 = FUN_006ac530(), cVar1 == '\0')) goto LAB_0055798b;
  FUN_00447770();
  iVar2 = FUN_006be840();
  local_164 = (int **)iVar2;
  FUN_00447770();
  FUN_006bec40(&local_144,0);
  local_148 = (int **)((float)param_1[0x30d] * DAT_00baa088);
  local_16c = local_148;
  FUN_0041d540();
  local_15c = local_148;
  FUN_0041d520();
  iVar11 = param_1[0x2e9];
  if (0 < iVar11) {
    iVar11 = iVar11 + ((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]);
    param_1[0x2e9] = iVar11;
  }
  fVar13 = (float)param_1[0xcf] - (float)local_144;
  fVar14 = (float)param_1[0xd0] - (float)local_140[0];
  if (DAT_00baac5c <= fVar14 * fVar14 + fVar13 * fVar13) {
LAB_005564af:
    if (((param_1[0x2fb] == 0) && (iVar4 = FUN_006ac760(), iVar4 != 0)) && (iVar11 < 1)) {
      fVar14 = 0.0;
      fVar13 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1264);
      iVar2 = (int)local_164;
      local_150 = fVar13;
      if (fVar13 != 0.0) {
        local_140[0] = *(int ***)(*(int *)(DAT_00c71678 + 0x18300) + 0x125c);
        do {
          piVar8 = local_140[0][(int)fVar14];
          iVar11 = piVar8[10];
          if ((((iVar11 == 1) ||
               ((iVar11 - 10U < 0x3de && (fVar13 = local_150, iVar11 != param_1[10])))) ||
              ((fVar13 = local_150, iVar11 == 5 || (iVar11 == 4)))) &&
             (*(char *)((int)piVar8 + 0x173) == '\0')) {
            fVar18 = *(float *)(param_1[0xef] + 0x33c) - (float)piVar8[0xcf];
            fVar17 = *(float *)(param_1[0xef] + 0x340) - (float)piVar8[0xd0];
            fVar13 = local_150;
            if (DAT_00baac40 < fVar17 * fVar17 + fVar18 * fVar18) {
              local_154 = (int **)((float)piVar8[0xcf] - (float)param_1[0xcf]);
              local_148 = (int **)((float)piVar8[0xd0] - (float)param_1[0xd0]);
              fVar13 = (float)local_154 * (float)local_154 + (float)local_148 * (float)local_148;
              FUN_00435a50();
              ppiVar15 = local_148;
              fVar17 = (float)local_154;
              if (0.0 < fVar13) {
                ppiVar15 = (int **)((float)local_148 * ((float)DAT_00baa454 / fVar13));
                fVar17 = (float)local_154 * ((float)DAT_00baa454 / fVar13);
              }
              fVar13 = local_150;
              if (DAT_00baa3c4 < (float)local_16c * fVar17 + (float)local_15c * (float)ppiVar15) {
                FUN_006d0c20();
                iVar2 = (int)local_164;
                break;
              }
            }
          }
          fVar14 = (float)((int)fVar14 + 1);
          iVar2 = (int)local_164;
        } while ((uint)fVar14 < (uint)fVar13);
      }
    }
  }
  else {
    local_144 = (int **)((float)local_144 - (float)param_1[0xcf]);
    local_140[0] = (int **)((float)local_140[0] - (float)param_1[0xd0]);
    pfVar3 = (float *)FUN_00a10030();
    if ((float)local_15c * pfVar3[1] + (float)local_16c * *pfVar3 <= DAT_00baa3c4)
    goto LAB_005564af;
    FUN_006d0c20();
  }
  iVar11 = param_1[0x2fb];
  if (iVar11 == 0) {
    local_148 = (int **)param_1[0xcd];
    local_164 = (int **)param_1[0xce];
  }
  else {
    local_148 = *(int ***)(iVar11 + 0x33c);
    local_164 = *(int ***)(iVar11 + 0x340);
  }
  local_168 = local_148;
  local_154 = local_164;
  if (((DAT_00baa9a0 <=
        ((float)local_164 - (float)param_1[0xd0]) * ((float)local_164 - (float)param_1[0xd0]) +
        ((float)local_148 - (float)param_1[0xcf]) * ((float)local_148 - (float)param_1[0xcf])) ||
      (uVar5 = FUN_006eef60(), uVar5 % 0x14 != 0)) || (param_1[0x2fb] == iVar2)) {
    ppiVar15 = DAT_00baad50;
    if (param_1[0xc] == 0) {
      ppiVar15 = DAT_00baa454;
    }
    local_144 = (int **)((float)local_148 - *(float *)(param_1[0xef] + 0x33c));
    local_140[0] = (int **)((float)local_154 - *(float *)(param_1[0xef] + 0x340));
    local_148 = ppiVar15;
    pfVar3 = (float *)FUN_00a10030();
    if (DAT_00baa120 < (float)local_148 * *pfVar3) goto LAB_00556762;
  }
  else {
LAB_00556762:
    FUN_006d0c20();
    param_1[0x2e8] = 0;
    param_1[0x2e9] = 0x2d;
  }
  local_148 = (int **)param_1[0xcf];
  fVar13 = ((float)local_168 - (float)local_148) * ((float)local_168 - (float)local_148) +
           ((float)local_164 - (float)param_1[0xd0]) * ((float)local_164 - (float)param_1[0xd0]);
  FUN_00435a50();
  ppiVar15 = DAT_00baa2d0;
  param_1[0x2ee] = (int)fVar13;
  if (param_1[0x2fb] != 0) {
    fVar13 = fVar13 * (float)ppiVar15;
    param_1[0x2ee] = (int)fVar13;
  }
  if (param_1[0x2fb] == iVar2) {
    local_144 = local_168;
    pppiVar7 = &local_144;
    param_1[0x2ee] = (int)(fVar13 * 0.0);
    local_140[0] = local_164;
    ppiVar15 = (int **)param_1[0xd0];
  }
  else {
    local_158 = (int **)((float)local_148 - (float)local_168);
    local_140[0] = (int **)param_1[0xd0];
    local_154 = (int **)((float)local_140[0] - (float)local_164);
    pfVar3 = (float *)FUN_00a10100(&local_1c,0x42200000);
    local_158 = (int **)((float)local_168 + *pfVar3);
    pppiVar7 = &local_158;
    local_154 = (int **)((float)local_164 + pfVar3[1]);
    ppiVar15 = local_140[0];
  }
  uVar21 = 0;
  local_14c = (float)*pppiVar7 - (float)local_148;
  local_148 = (int **)((float)pppiVar7[1] - (float)ppiVar15);
  uVar6 = FUN_00a10100(&local_1c,0x3e800000);
  FUN_00431450(uVar6,uVar21);
  local_14c = (float)*pppiVar7 - (float)param_1[0xcf];
  local_148 = (int **)((float)pppiVar7[1] - (float)param_1[0xd0]);
  iVar11 = FUN_00a10100(&local_1c,0x3f000000);
  fVar13 = (float)param_1[0xe7] * *(float *)(iVar11 + 4) + (float)local_15c;
  FUN_00499d60();
  fVar13 = fVar13 * DAT_00baa948;
  param_1[0x30d] = (int)fVar13;
  if (param_1[0x2e8] < 1) {
    uVar5 = 0;
    do {
      local_148 = DAT_00baa454;
      if (param_1[0xc] == 0) {
        local_148 = DAT_00baad50;
      }
      iVar11 = FUN_006eef60();
      local_140[0] = (int **)(((float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)])
                               * DAT_00ba9ff4 * DAT_00baaab0 - DAT_00baa9ec) * DAT_00baa088);
      ppiVar15 = local_140[0];
      FUN_0041d540();
      local_154 = ppiVar15;
      ppiVar15 = local_140[0];
      FUN_0041d520();
      iVar11 = param_1[0xef];
      fVar17 = (float)local_148 * (float)local_154 - (float)ppiVar15 * 0.0;
      fVar18 = (float)local_148 * (float)ppiVar15 + (float)local_154 * 0.0;
      local_160 = fVar17 * DAT_00baa9a0;
      fVar14 = fVar18 * DAT_00baaa94;
      fVar18 = fVar18 * DAT_00baa9a0;
      fVar13 = *(float *)(iVar11 + 0x340);
      param_1[0xcd] = (int)(fVar17 * DAT_00baaa94 + *(float *)(iVar11 + 0x33c));
      param_1[0xce] = (int)(fVar14 + fVar13);
      local_160 = local_160 + *(float *)(iVar11 + 0x33c);
      local_15c = (int **)(fVar18 + *(float *)(iVar11 + 0x340));
      cVar1 = FUN_00813360(&local_160,0);
    } while ((cVar1 == '\0') && (uVar5 = uVar5 + 1, uVar5 < 10));
    uVar5 = FUN_006eef60();
    fVar13 = (float)param_1[0x30d];
    iVar11 = uVar5 % 0x3c + 0xf;
  }
  else {
    iVar11 = ((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]) + param_1[0x2e8];
  }
  param_1[0x2e8] = iVar11;
  FUN_00682740();
  local_140[0] = (int **)(fVar13 / DAT_00baa910 + (float)DAT_00baa2d0);
  dVar20 = floor((double)(float)local_140[0]);
  local_140[0] = (int **)(float)dVar20;
  uVar5 = 4 - (int)dVar20;
  if (param_1[0xc] != 0) {
    uVar5 = (int)dVar20 + 8;
  }
  uVar5 = uVar5 & 0x80000007;
  if ((int)uVar5 < 0) {
    uVar5 = (uVar5 - 1 | 0xfffffff8) + 1;
  }
  if (uVar5 < 8) {
    FUN_0041e420(local_24,0x10,"Idle%d",uVar5);
    FUN_0040a380(local_24,0);
  }
LAB_0055798b:
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

