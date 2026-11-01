/* Local J460 decompiler output.
 * VA: 0x004cf690
 * Entry: 004cf690
 * Dispatcher: 0x006c2990
 * Types: 913
 * Identities: 913.0.0
 * Evidence: dispatcher=0x006c2990; end=0x004d1290; instructions=1689
 */

/* WARNING: Type propagation algorithm not settling */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=913; identities=913.0.0; dispatcher=0x006c2990;
   end=0x004d1290; instructions=1689 */

void __fastcall AI_004cf690(float **param_1)

{
  int *piVar1;
  bool bVar2;
  undefined *puVar3;
  char cVar4;
  uint uVar5;
  int iVar6;
  float **ppfVar7;
  uint uVar8;
  char *pcVar9;
  undefined4 uVar10;
  int iVar11;
  float *pfVar12;
  float *pfVar13;
  float fVar14;
  float fVar15;
  float **ppfVar16;
  undefined local_e0 [8];
  undefined local_d8 [8];
  undefined4 local_d0;
  undefined4 uStack_cc;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  undefined4 local_c0;
  float *pfStack_bc;
  float **ppfStack_b8;
  float *pfStack_b4;
  float **local_b0;
  undefined4 local_ac;
  undefined4 local_a8;
  int local_a4;
  float local_a0;
  float local_9c;
  float **local_98;
  float **local_94;
  float **local_90;
  float **local_8c;
  char local_88 [4];
  int local_84;
  uint local_7c;
  float local_78;
  float local_74;
  float **local_70;
  float **local_6c;
  int local_68;
  float *local_64;
  float **local_60;
  char local_5c [4];
  int local_58;
  float **local_50;
  float **local_4c;
  float *local_48;
  float **local_44;
  float **local_40;
  float **local_3c;
  float **local_38;
  char local_34;
  int local_30;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af37b8;
  local_1c = ExceptionList;
  uVar5 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_68 = *(int *)(DAT_00c71678 + 0x18300);
  local_40 = param_1;
  local_24 = uVar5;
  if (param_1[0xb] == (float *)0xa) {
    if (param_1[0x2d9] == (float *)0x0) {
      param_1[0x5a] = (float *)((uint)param_1[0x5a] & 0xfffffffb);
      param_1[0x5b] = param_1[0x5b];
      *(undefined *)((int)param_1 + 0x171) = 0;
      param_1[0x57] = (float *)0x0;
      param_1[0x62] = (float *)0x0;
      param_1[0x61] = (float *)0x0;
      *(undefined *)(param_1 + 0xec) = 1;
      *(undefined2 *)(param_1 + 0x30f) = 0;
      param_1[0x2d9] = (float *)0x3;
      param_1[0x2ec] = (float *)0x0;
      puStack_20 = &stack0xfffffffc;
      goto switchD_004cfc53_caseD_1;
    }
    pfVar12 = param_1[0xef];
    puStack_20 = &stack0xfffffffc;
    if (pfVar12 == (float *)0x0) goto switchD_004cfc53_caseD_1;
    if (DAT_00baa904 < (float)param_1[0xe9]) {
      pfVar13 = param_1[0x2ec];
      if ((float)pfVar13 <= 0.0) {
        pfVar13 = (float *)((float)pfVar13 - DAT_00baa0d0);
      }
      else {
        pfVar13 = (float *)((float)pfVar13 + DAT_00baa0d0);
      }
      param_1[0x2ec] = pfVar13;
    }
    puStack_20 = &stack0xfffffffc;
    if (DAT_00baa87c < (float)param_1[0xe9]) {
      local_48 = param_1[0x2ec];
      puStack_20 = &stack0xfffffffc;
      if (NAN((float)local_48) != ((float)local_48 == 0.0)) {
        puStack_20 = &stack0xfffffffc;
        FUN_00447770();
        iVar6 = FUN_006be840();
        fVar14 = (float)param_1[0xd0] - *(float *)(iVar6 + 0x340);
        fVar15 = (float)param_1[0xcf] - *(float *)(iVar6 + 0x33c);
        fVar14 = fVar14 * fVar14 + fVar15 * fVar15;
        FUN_00435a50();
        fVar14 = (*(float *)(iVar6 + 0x340) + *(float *)(iVar6 + 0x364) * fVar14 * DAT_00baa120) -
                 (float)param_1[0xd0];
        FUN_00499d60();
        fVar14 = fVar14 * DAT_00baa948 - (float)param_1[0x2ee];
        FUN_00682740();
        local_48 = DAT_00baad84;
        if (0.0 < fVar14) {
          local_48 = DAT_00baa6fc;
        }
        param_1[0x2ec] = local_48;
        pfVar12 = param_1[0xef];
      }
      fVar14 = pfVar12[0xd0] - (float)param_1[0xd0];
      FUN_00499d60();
      local_48 = (float *)((float)local_48 * (float)param_1[0xe7]);
      local_38 = (float **)(fVar14 * DAT_00baa948);
      fVar14 = (float)param_1[0x2ee] - (float)local_38;
      FUN_00682740();
      ppfVar7 = local_38;
      if ((float)((uint)local_48 & DAT_00bacb40) <= (float)((uint)fVar14 & DAT_00bacb40)) {
        ppfVar7 = (float **)((float)param_1[0x2ee] + (float)local_48);
        FUN_00682740();
      }
      param_1[0x2ee] = (float *)ppfVar7;
      FUN_006d0c60(local_5c,0x328,0xffffffff);
      local_14 = 0;
      iVar6 = 0;
      ppfVar7 = (float **)0x0;
      if (local_50 == (float **)0x0) {
LAB_004cf971:
        (*(code *)(*param_1)[10])();
      }
      else {
        do {
          iVar11 = *(int *)(local_58 + (int)ppfVar7 * 4);
          if ((*(int *)(iVar11 + 0x30) == 0) && (*(float ***)(iVar11 + 0x3bc) == param_1)) {
            iVar6 = iVar6 + 1;
          }
          ppfVar7 = (float **)((int)ppfVar7 + 1);
        } while (ppfVar7 < local_50);
        if (iVar6 == 0) goto LAB_004cf971;
      }
      if (local_5c[0] == '\0') {
        local_14 = 1;
        FUN_00a648b0(0,0);
      }
    }
    local_14 = 0xffffffff;
    local_38 = (float **)((float)param_1[0x2ee] * DAT_00baa088);
    ppfVar7 = local_38;
    FUN_0041d520();
    local_40 = ppfVar7;
    local_3c = (float **)param_1[0x2ef];
    ppfVar7 = local_38;
    FUN_0041d540();
    param_1[0xd8] = (float *)((float)ppfVar7 * (float)local_3c);
    param_1[0xd9] = (float *)((float)local_3c * (float)local_40);
    fVar14 = (float)param_1[0xd0] - param_1[0xef][0xd0];
    fVar15 = (float)param_1[0xcf] - param_1[0xef][0xcf];
    fVar14 = fVar14 * fVar14 + fVar15 * fVar15;
    FUN_00435a50();
    if ((fVar14 < DAT_00baa848) && (DAT_00baa87c < (float)param_1[0xe9])) {
      AI_0041af60(local_5c,0x328,0xffffffff,0xffffffff,0,0);
      local_14 = 2;
      local_40 = (float **)0x0;
      iVar6 = local_58;
      if (local_50 != (float **)0x0) {
        do {
          iVar11 = *(int *)(iVar6 + (int)local_40 * 4);
          if (*(int *)(iVar11 + 0x30) == 0) {
            ppfVar7 = (float **)(iVar11 + 0x3bc);
            if (*(float ***)(iVar11 + 0x3bc) == param_1) {
              local_3c = (float **)param_1[0xef];
              if (*(float ***)(iVar11 + 0x3bc) != (float **)0x0) {
                local_38 = ppfVar7;
                FUN_004cf210(&local_38);
              }
              *ppfVar7 = (float *)local_3c;
              iVar6 = local_58;
              if (local_3c != (float **)0x0) {
                FUN_004cdcf0(ppfVar7);
                iVar6 = local_58;
              }
            }
          }
          local_40 = (float **)((int)local_40 + 1);
        } while (local_40 < local_50);
      }
      (*(code *)(*param_1)[10])();
      local_14 = 0xffffffff;
      if (local_5c[0] == '\0') {
        local_14 = 3;
        FUN_00a648b0(0,0);
        local_14 = 0xffffffff;
      }
    }
    goto switchD_004cfc53_caseD_1;
  }
  param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa354);
  puVar3 = &stack0xfffffffc;
  if ((param_1[0x2f0] == (float *)0x0) &&
     (puVar3 = &stack0xfffffffc,
     (float)param_1[0xe0] <= (float)param_1[0xe1] * DAT_00baa280 &&
     (float)param_1[0xe1] * DAT_00baa280 != (float)param_1[0xe0])) {
    param_1[0x2f0] = (float *)0x1;
    param_1[0x2d9] = (float *)0x10;
    FUN_0040a380("Transition",0);
    param_1[0x62] = (float *)0x0;
    AI_0041af60(local_88,0x328,0xffffffff,0xffffffff,0,0);
    uVar8 = 0;
    if (local_7c != 0) {
      do {
        iVar6 = *(int *)(local_84 + uVar8 * 4);
        if ((*(int *)(iVar6 + 0x30) == 0) && (*(float ***)(iVar6 + 0x3bc) == param_1)) {
          *(undefined4 *)(iVar6 + 0xbb4) = 0x3f800000;
        }
        uVar8 = uVar8 + 1;
      } while (uVar8 < local_7c);
    }
    puVar3 = puStack_20;
    if (local_88[0] == '\0') {
      local_14 = 4;
      FUN_00a648b0(0,0);
      local_14 = 0xffffffff;
      puVar3 = puStack_20;
    }
  }
  puStack_20 = puVar3;
  if ((0 < (int)param_1[0x2e9]) && (DAT_00ba9fe4 < (float)param_1[5])) {
    pfVar13 = (float *)(int)((float)(int)param_1[0x2e9] - (float)param_1[5]);
    pfVar12 = (float *)0x0;
    if (0 < (int)pfVar13) {
      pfVar12 = pfVar13;
    }
    param_1[0x2e9] = pfVar12;
  }
  switch(param_1[0x2d9]) {
  case (float *)0x0:
    local_d0 = _DAT_00bac7b0;
    uStack_cc = _UNK_00bac7b4;
    uStack_c8 = _UNK_00bac7b8;
    uStack_c4 = _UNK_00bac7bc;
    param_1[0x2d9] = (float *)0x3;
    local_c0 = _DAT_00bac0c0;
    pfStack_bc = _UNK_00bac0c4;
    ppfStack_b8 = _UNK_00bac0c8;
    pfStack_b4 = _UNK_00bac0cc;
    local_b0 = (float **)0x0;
    local_ac = 0;
    local_a8 = 0;
    FUN_004071f0(&local_d0);
    fVar14 = param_1[0xcc][9];
    param_1[0x57] = (float *)(fVar14 + fVar14);
    fVar14 = param_1[0xcc][0x11];
    param_1[0xdf] = (float *)(fVar14 + fVar14);
  default:
    goto switchD_004cfc53_caseD_1;
  case (float *)0x3:
    pcVar9 = "Walk2";
    if ((int)param_1[0x2f0] < 1) {
      pcVar9 = "Walk";
    }
    FUN_0040a380(pcVar9,0);
    FUN_006bec40(&local_64,0);
    cVar4 = FUN_00417430(0x1000b00,0);
    if (cVar4 == '\0') {
      cVar4 = FUN_006ac710(10,0);
      if (cVar4 != '\0') {
        FUN_004cf5b0(&local_38);
        if (2 < (int)local_38) goto LAB_004cfd49;
        iVar6 = 10;
        do {
          FUN_0081e9d0(&local_a0,0x41a00000);
          iVar6 = iVar6 + -1;
        } while (iVar6 != 0);
      }
    }
    else {
LAB_004cfd49:
      param_1[0xcd] = DAT_00c7b640;
      param_1[0xce] = (float *)DAT_00c7b644;
    }
    if (((NAN((float)param_1[0xcd]) || NAN((float)DAT_00c7b640)) ==
         ((float)param_1[0xcd] == (float)DAT_00c7b640)) ||
       (fVar14 = DAT_00baa304,
       (NAN((float)param_1[0xce]) || NAN((float)DAT_00c7b644)) ==
       ((float)param_1[0xce] == (float)DAT_00c7b644))) {
      local_64 = DAT_00c7b640;
      local_60 = DAT_00c7b644;
      fVar14 = DAT_00baa2d0;
    }
    FUN_007e33c0(&local_64,fVar14,0,1);
    if (((param_1[0xf0] == (float *)0x0) && ((int)param_1[0x2e9] < 1)) &&
       (uVar5 = FUN_006eef60(), (uVar5 & 3) == 0)) {
      FUN_004cf5b0(&local_40);
      param_1[0x104] = (float *)0x0;
      param_1[0x2f1] = (float *)0x0;
      if ((int)local_38 < (int)((uint)(0 < (int)param_1[0x2f0]) * 2 + 5)) {
        if (((int)local_40 < (int)((uint)(0 < (int)param_1[0x2f0]) * 4 + 4)) &&
           (iVar6 = FUN_0067f010(), iVar6 == 0)) {
          param_1[0x2d9] = (float *)0xd;
          pcVar9 = "Spit2";
          if ((int)param_1[0x2f0] < 1) {
            pcVar9 = "Spit";
          }
          FUN_0040a380(pcVar9,0);
          uVar5 = FUN_006eef60();
          param_1[0x2e9] = (float *)(uVar5 % 0x3c + 0xf);
        }
        else if (((int)local_40 < (int)((uint)(0 < (int)param_1[0x2f0]) * 2 + 2)) &&
                (uVar5 = FUN_006eef60(), uVar5 % 3 == 0)) {
          param_1[0x2d9] = (float *)&DAT_0000000e;
          pcVar9 = "Spit2";
          if ((int)param_1[0x2f0] < 1) {
            pcVar9 = "Spit";
          }
          FUN_0040a380(pcVar9,0);
          uVar5 = FUN_006eef60();
          param_1[0x2e9] = (float *)(uVar5 % 0x5a + 0x5a);
        }
        else if ((0 < (int)param_1[0x2f0]) && (uVar5 = FUN_006eef60(), (uVar5 & 3) == 0)) {
          param_1[0x2d9] = (float *)0x6;
          FUN_0040a380(&DAT_00b1d33c,0);
          FUN_006d0c60(local_88,0x328,0xffffffff);
          local_14 = 5;
          uVar5 = 0;
          if (local_7c != 0) {
            do {
              iVar6 = *(int *)(local_84 + uVar5 * 4);
              if ((*(int *)(iVar6 + 0x30) == 0) && (*(float ***)(iVar6 + 0x3bc) == param_1)) {
                *(undefined4 *)(iVar6 + 0xb64) = 0xd;
              }
              uVar5 = uVar5 + 1;
            } while (uVar5 < local_7c);
          }
          uVar5 = FUN_006eef60();
          local_14 = 0xffffffff;
          param_1[0x2e9] = (float *)(uVar5 % 0x5a + 0x5a);
          FUN_004175b0();
        }
      }
      if ((((param_1[0x2d9] == (float *)0x3) && ((int)param_1[0x2e8] < 1)) && (2 < (int)local_40))
         && (uVar5 = FUN_006eef60(), uVar5 % 3 == 0)) {
        if (param_1[0x2f0] == (float *)0x0) {
          pfVar12 = (float *)&DAT_00000008;
        }
        else {
          uVar5 = FUN_006eef60();
          pfVar12 = (float *)(~uVar5 & 1 | 8);
        }
        param_1[0x2d9] = pfVar12;
        uVar5 = FUN_006eef60();
        param_1[0x2e9] = (float *)(uVar5 % 0x5a + 0x5a);
      }
    }
    goto switchD_004cfc53_caseD_1;
  case (float *)0x6:
    pfVar12 = param_1[0x2f1];
    if (pfVar12 == (float *)0x0) {
      cVar4 = FUN_0040b030("Shoot");
      if (cVar4 != '\0') {
        param_1[0x57] = (float *)0x0;
        param_1[0x62] = (float *)0x0;
      }
      if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x2f1] = (float *)((int)param_1[0x2f1] + 1);
        param_1[0x104] = (float *)0x0;
      }
      goto switchD_004cfc53_caseD_1;
    }
    if (pfVar12 == (float *)0x1) {
      local_48 = (float *)0x0;
      local_74 = (float)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
      if (0 < (int)local_74) {
        pfVar12 = param_1[0x104];
        do {
          if ((int)pfVar12 % 10 == 0) {
            AI_0041af60(&local_34,0x328,0xffffffff,0xffffffff,0,0);
            uVar5 = 0;
            if (local_28 != 0) {
              do {
                iVar6 = *(int *)(local_30 + uVar5 * 4);
                if (*(int *)(iVar6 + 0x30) == 0) {
                  *(undefined4 *)(iVar6 + 0xba0) = 0x1e;
                }
                uVar5 = uVar5 + 1;
              } while (uVar5 < local_28);
            }
            if (local_34 == '\0') {
              local_14 = 0xb;
              FUN_00a648b0(0,0);
              local_14 = 0xffffffff;
            }
          }
          pfVar12 = param_1[0x104];
          if ((int)pfVar12 < 9) {
            if (((uint)pfVar12 & 1) == 0) {
              local_44 = (float **)0x0;
              local_4c = (float **)0x0;
              AI_0041af60(local_88,1000,0x9d,0xffffffff,0,0);
              uVar5 = local_7c;
              bVar2 = false;
              local_14 = 0xc;
              local_3c = (float **)0x0;
              do {
                if (bVar2) break;
                if (((int)local_3c < 5) && (uVar8 = FUN_006eef60(), uVar8 % 3 == 0)) {
                  iVar6 = FUN_006be840();
                  local_8c = *(float ***)(iVar6 + 0x33c);
                  local_6c = *(float ***)(iVar6 + 0x340);
                  iVar6 = FUN_006eef60();
                  fVar14 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa704;
                  local_38 = (float **)(fVar14 + fVar14);
                  ppfVar7 = local_38;
                  FUN_0041d520();
                  local_4c = ppfVar7;
                  iVar6 = FUN_006eef60();
                  local_44 = (float **)
                             ((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                              DAT_00ba9ff4 * DAT_00baa9a0 + DAT_00baa904);
                  ppfVar7 = local_38;
                  FUN_0041d540();
                  local_a0 = (float)local_8c + (float)ppfVar7 * (float)local_44;
                  local_9c = (float)local_6c + (float)local_4c * (float)local_44;
                  local_4c = (float **)
                             FUN_00812f50(local_e0,&local_a0,0x41f00000,0x41f00000,0x41f00000);
                }
                else {
                  local_4c = (float **)FUN_0081e9d0(local_d8,0x41f00000);
                }
                local_44 = (float **)local_4c[1];
                uVar8 = 0;
                local_4c = (float **)*local_4c;
                bVar2 = true;
                if (uVar5 != 0) {
                  do {
                    if (!bVar2) break;
                    iVar6 = *(int *)(local_84 + uVar8 * 4);
                    if ((*(float ***)(iVar6 + 0x3bc) == param_1) &&
                       (fVar15 = (float)local_4c - *(float *)(iVar6 + 0x33c),
                       fVar14 = (float)local_44 - *(float *)(iVar6 + 0x340),
                       fVar15 * fVar15 + fVar14 * fVar14 < DAT_00baa9d0)) {
                      bVar2 = false;
                    }
                    uVar8 = uVar8 + 1;
                  } while (uVar8 < uVar5);
                }
                local_3c = (float **)((int)local_3c + 1);
              } while ((int)local_3c < 10);
              uVar5 = FUN_006eef60();
              iVar6 = uVar5 % 5 + 1;
              local_a4 = iVar6;
              iVar11 = FUN_006eef60();
              local_3c = (float **)0x0;
              local_38 = (float **)0x0;
              local_70 = (float **)
                         ((float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baab30);
              if (iVar6 != 0) {
                do {
                  if (iVar6 == 1) {
                    local_64 = (float *)local_4c;
                    local_60 = local_44;
                  }
                  else {
                    local_6c = (float **)
                               ((((float)(int)local_38 * DAT_00baab30) / (float)iVar6 +
                                (float)local_70) * DAT_00baa088);
                    ppfVar7 = local_6c;
                    FUN_0041d520();
                    local_8c = ppfVar7;
                    ppfVar7 = local_6c;
                    FUN_0041d540();
                    local_64 = (float *)((float)local_4c + (float)ppfVar7 * DAT_00baa8d0);
                    local_60 = (float **)
                               ((float)local_8c * DAT_00baa8d0 * DAT_00baa304 + (float)local_44);
                  }
                  uVar10 = FUN_006eef60();
                  ppfVar7 = (float **)
                            FUN_00428b20(1000,0x9d,&local_64,&DAT_00c7b640,param_1,0,uVar10);
                  if (ppfVar7[0xef] != (float *)0x0) {
                    local_6c = ppfVar7 + 0xef;
                    FUN_004cf210(&local_6c);
                  }
                  ppfVar7[0xef] = (float *)param_1;
                  FUN_004cdcf0(ppfVar7 + 0xef);
                  if (local_3c == (float **)0x0) {
                    ppfVar7[0x114] = (float *)0x0;
                    (*(code *)(*ppfVar7)[3])();
                    local_3c = ppfVar7;
                  }
                  else {
                    if (ppfVar7[0xf1] != (float *)0x0) {
                      local_6c = ppfVar7 + 0xf1;
                      FUN_004cf210(&local_6c);
                    }
                    ppfVar7[0xf1] = (float *)local_3c;
                    FUN_004cdcf0(ppfVar7 + 0xf1);
                    ppfVar7[0x114] = (float *)0x0;
                    (*(code *)(*ppfVar7)[3])();
                  }
                  local_38 = (float **)((int)local_38 + 1);
                  iVar6 = local_a4;
                } while ((int)local_38 < local_a4);
              }
              if (local_88[0] == '\0') {
                local_14 = 0xd;
                goto LAB_004d0e69;
              }
              goto LAB_004d0e7e;
            }
          }
          else {
            if ((int)(pfVar12 + -2) % 0xf != 0) goto LAB_004d0e81;
            AI_0041af60(local_5c,1000,0x9d,0xffffffff,0,0);
            ppfVar7 = (float **)0x0;
            local_3c = (float **)0x0;
            ppfVar16 = (float **)0x0;
            local_98 = (float **)0x0;
            local_94 = (float **)0x0;
            local_90 = (float **)0x0;
            local_14 = 0xf;
            local_38 = (float **)0x0;
            iVar6 = local_58;
            if (local_50 == (float **)0x0) {
LAB_004d0dec:
              param_1[0x2f1] = (float *)((int)param_1[0x2f1] + 1);
              param_1[0x104] = (float *)0x0;
              ppfVar7 = local_98;
            }
            else {
              do {
                local_70 = *(float ***)(iVar6 + (int)local_38 * 4);
                if ((((float **)local_70[0xef] == param_1) && (local_70[0xf1] == (float *)0x0)) &&
                   (local_70[0x114] == (float *)0x0)) {
                  if (ppfVar16 == ppfVar7) {
                    FUN_00428590(ppfVar16,&local_70);
                    ppfVar7 = local_90;
                    iVar6 = local_58;
                    ppfVar16 = local_94;
                  }
                  else {
                    *ppfVar16 = (float *)local_70;
                    local_94 = ppfVar16 + 1;
                    ppfVar16 = local_94;
                  }
                }
                local_38 = (float **)((int)local_38 + 1);
              } while (local_38 < local_50);
              local_70 = local_98;
              local_3c = ppfVar7;
              if (local_98 == ppfVar16) goto LAB_004d0dec;
              uVar5 = (int)ppfVar16 - (int)local_98 >> 2;
              if (uVar5 != 0) {
                uVar8 = FUN_006eef60();
                uVar5 = uVar8 % uVar5;
              }
              pfVar12 = local_70[uVar5];
              ppfVar16 = (float **)0x0;
              do {
                pfVar13 = *(float **)(local_58 + (int)ppfVar16 * 4);
                if ((pfVar13 == pfVar12) || ((float *)pfVar13[0xf1] == pfVar12)) {
                  pfVar13[0x114] = 1.401298e-45;
                }
                ppfVar16 = (float **)((int)ppfVar16 + 1);
                ppfVar7 = local_70;
                param_1 = local_40;
              } while (ppfVar16 < local_50);
            }
            local_14 = CONCAT31(local_14._1_3_,0xe);
            if (ppfVar7 != (float **)0x0) {
              uVar5 = ((int)local_3c - (int)ppfVar7 >> 2) * 4;
              ppfVar16 = ppfVar7;
              if (0xfff < uVar5) {
                ppfVar16 = (float **)ppfVar7[-1];
                uVar5 = uVar5 + 0x23;
                if (0x1f < (uint)((int)ppfVar7 + (-4 - (int)ppfVar16))) {
                    /* WARNING: Subroutine does not return */
                  _invalid_parameter_noinfo_noreturn();
                }
              }
              FUN_00aef15c(ppfVar16,uVar5);
              local_98 = (float **)0x0;
              local_94 = (float **)0x0;
              local_90 = (float **)0x0;
            }
            if (local_5c[0] == '\0') {
              local_14 = 0x10;
LAB_004d0e69:
              FUN_00a648b0(0,0);
            }
LAB_004d0e7e:
            local_14 = 0xffffffff;
          }
LAB_004d0e81:
          param_1[0x104] = (float *)((int)param_1[0x104] + 1);
          local_48 = (float *)((int)local_48 + 1);
          pfVar12 = param_1[0x104];
        } while ((int)local_48 < (int)local_74);
      }
      goto switchD_004cfc53_caseD_1;
    }
    if (pfVar12 == (float *)0x2) {
      param_1[0x104] =
           (float *)((int)param_1[0x104] + ((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]));
      if (0x1d < (int)param_1[0x104]) {
        param_1[0x2f1] = (float *)0x3;
        FUN_0040a380(&DAT_00b602f0,0);
        FUN_006d0c60(local_5c,0x328,0xffffffff);
        local_40 = (float **)0x0;
        ppfVar7 = local_50;
        iVar6 = local_58;
        if (local_50 != (float **)0x0) {
          do {
            iVar11 = *(int *)(iVar6 + (int)local_40 * 4);
            if (((*(int *)(iVar11 + 0x30) == 0) && (*(float ***)(iVar11 + 0x3bc) == param_1)) &&
               (*(int *)(iVar11 + 0xb64) == 0xd)) {
              *(undefined4 *)(iVar11 + 0xb64) = 6;
              FUN_00558070(&local_64,0);
              pfVar12 = (float *)FUN_00557f70(local_d8,0xc);
              local_38 = (float **)(*pfVar12 - (float)local_64);
              local_3c = (float **)(pfVar12[1] - (float)local_60);
              fVar14 = (float)local_38 * (float)local_38 + (float)local_3c * (float)local_3c;
              FUN_00435a50();
              ppfVar16 = local_3c;
              ppfVar7 = local_38;
              if (DAT_00ba9fe4 < fVar14) {
                ppfVar16 = (float **)((float)local_3c * (DAT_00baa454 / fVar14));
                ppfVar7 = (float **)((float)local_38 * (DAT_00baa454 / fVar14));
              }
              fVar14 = (float)ppfVar16 * DAT_00baa120;
              *(float *)(iVar11 + 0x33c) = (float)ppfVar7 * DAT_00baa120 + (float)local_64;
              *(float *)(iVar11 + 0x340) = fVar14 + (float)local_60;
              ppfVar7 = local_50;
              iVar6 = local_58;
            }
            local_40 = (float **)((int)local_40 + 1);
          } while (local_40 < ppfVar7);
        }
        FUN_004175b0();
      }
      goto switchD_004cfc53_caseD_1;
    }
    cVar4 = FUN_0040b030("Shoot");
    if (cVar4 != '\0') {
      param_1[0x62] = (float *)&DAT_00000004;
      param_1[0x57] = (float *)param_1[0xcc][9];
    }
    break;
  case (float *)0x8:
    pcVar9 = "Spin2";
    if ((int)param_1[0x2f0] < 1) {
      pcVar9 = "Spin";
    }
    FUN_0040a380(pcVar9,0);
    if (param_1[0x104] == (float *)0x0) {
      FUN_006d0c60(local_88,0x328,0xffffffff);
      uVar5 = 0;
      if (local_7c != 0) {
        do {
          iVar6 = *(int *)(local_84 + uVar5 * 4);
          if ((*(int *)(iVar6 + 0x30) == 0) && (*(float ***)(iVar6 + 0x3bc) == param_1)) {
            *(undefined4 *)(iVar6 + 0xbb4) = 0x3f000000;
          }
          uVar5 = uVar5 + 1;
        } while (uVar5 < local_7c);
      }
      param_1[0x104] = (float *)((int)param_1[0x104] + 1);
      if (local_88[0] == '\0') {
        local_14 = 6;
        FUN_00a648b0(0,0);
        local_14 = 0xffffffff;
      }
    }
    if (param_1[0x1f] != (float *)0x0) {
      cVar4 = FUN_0040add0("Shoot");
      if (cVar4 != '\0') {
        FUN_006d6ba0(0x1e3,0x3f800000,2,0,0x3f800000);
        AI_0041af60(local_5c,0x328,0xffffffff,0xffffffff,0,0);
        local_14 = 7;
        local_3c = (float **)0x0;
        iVar6 = local_58;
        if (local_50 != (float **)0x0) {
          do {
            ppfVar7 = *(float ***)(iVar6 + (int)local_3c * 4);
            local_40 = ppfVar7;
            if ((ppfVar7[0xc] == (float *)0x0) && ((float **)ppfVar7[0xef] == param_1)) {
              local_38 = ppfVar7 + 0x12;
              cVar4 = FUN_0040a5d0("Attack",1);
              ppfVar16 = local_38;
              if (cVar4 != '\0') {
                FUN_0040a1b0();
                *(undefined *)(ppfVar16 + 0x11) = 1;
                ppfVar7 = local_40;
              }
              if (ppfVar7[0x1f] != (float *)0x0) {
                FUN_00408e00();
              }
              ppfVar7[0x2d9] = (float *)0xa;
              ppfVar7[0x104] = (float *)0x0;
              iVar6 = local_58;
            }
            local_3c = (float **)((int)local_3c + 1);
          } while (local_3c < local_50);
        }
        local_14 = 0xffffffff;
        if (local_5c[0] == '\0') {
          local_14 = 8;
LAB_004d01f3:
          FUN_00a648b0(0,0);
          local_14 = 0xffffffff;
        }
      }
      break;
    }
    goto LAB_004d10ed;
  case (float *)0x9:
    FUN_0040a380("Throw",0);
    if (param_1[0x1f] == (float *)0x0) goto LAB_004d10ed;
    cVar4 = FUN_0040add0("Shoot");
    if (cVar4 != '\0') {
      iVar6 = FUN_006be840();
      fVar14 = (float)param_1[0xd0] - *(float *)(iVar6 + 0x340);
      fVar15 = (float)param_1[0xcf] - *(float *)(iVar6 + 0x33c);
      fVar14 = fVar14 * fVar14 + fVar15 * fVar15;
      FUN_00435a50();
      local_64 = (float *)((*(float *)(iVar6 + 0x33c) +
                           *(float *)(iVar6 + 0x360) * fVar14 * DAT_00baa120) - (float)param_1[0xcf]
                          );
      local_60 = (float **)
                 ((*(float *)(iVar6 + 0x340) + *(float *)(iVar6 + 0x364) * fVar14 * DAT_00baa120) -
                 (float)param_1[0xd0]);
      pfVar12 = (float *)FUN_00a10030(&local_a0);
      local_4c = (float **)(*pfVar12 * DAT_00baa7b8);
      local_3c = (float **)(pfVar12[1] * DAT_00baa7b8);
      uVar10 = FUN_006eef60();
      ppfVar7 = (float **)FUN_00428b20(0x391,10,param_1 + 0xcf,&DAT_00c7b640,local_40,0,uVar10);
      local_44 = ppfVar7;
      if (ppfVar7[0xef] != (float *)0x0) {
        local_38 = ppfVar7 + 0xef;
        FUN_004cf210(&local_38);
      }
      param_1 = local_40;
      ppfVar7[0xef] = (float *)local_40;
      FUN_004cdcf0(ppfVar7 + 0xef);
      if (param_1[0xf0] != (float *)0x0) {
        local_38 = param_1 + 0xf0;
        FUN_004cf210(&local_38);
      }
      param_1[0xf0] = (float *)ppfVar7;
      FUN_004cdcf0(param_1 + 0xf0);
      fVar14 = (float)local_3c;
      FUN_00499d60();
      ppfVar7[0x2ee] = (float *)(fVar14 * DAT_00baa948);
      pfVar12 = (float *)((float)local_3c * (float)local_3c + (float)local_4c * (float)local_4c);
      FUN_00435a50();
      ppfVar7[0x2ef] = pfVar12;
      FUN_006d0c60(local_5c,0x328,0xffffffff);
      local_14 = 9;
      local_3c = (float **)0x0;
      if (local_50 != (float **)0x0) {
        do {
          iVar6 = *(int *)(local_58 + (int)local_3c * 4);
          if (*(int *)(iVar6 + 0x30) == 0) {
            ppfVar16 = (float **)(iVar6 + 0x3bc);
            ppfVar7 = local_44;
            if ((float **)*ppfVar16 == param_1) {
              if ((float **)*ppfVar16 != (float **)0x0) {
                local_38 = ppfVar16;
                FUN_004cf210(&local_38);
              }
              ppfVar7 = local_44;
              *ppfVar16 = (float *)local_44;
              FUN_004cdcf0(ppfVar16);
            }
          }
          local_3c = (float **)((int)local_3c + 1);
        } while (local_3c < local_50);
      }
      *(undefined *)((int)ppfVar7 + 0x171) = 0;
      (*(code *)(*ppfVar7)[3])();
      local_14 = 0xffffffff;
      if (local_5c[0] == '\0') {
        local_14 = 10;
        goto LAB_004d01f3;
      }
    }
    break;
  case (float *)0xd:
    if (param_1[0x1f] == (float *)0x0) goto LAB_004d10ed;
    cVar4 = FUN_0040add0("Shoot");
    if (cVar4 != '\0') {
      FUN_006d6ba0(0x13f,0x3f800000,2,0,0x3f800000);
      local_3c = (float **)FUN_00558fe0(0);
      pfVar12 = (float *)((float)local_3c[0xe1] * DAT_00baa528);
      local_3c[0xe1] = pfVar12;
      local_3c[0xe0] = pfVar12;
      FUN_00557ce0();
      iVar6 = FUN_006be840();
      local_64 = (float *)(*(float *)(iVar6 + 0x33c) - (float)param_1[0xcf]);
      local_60 = (float **)(*(float *)(iVar6 + 0x340) - (float)param_1[0xd0]);
      pfVar12 = (float *)FUN_00a10030(&local_a0);
      local_40 = (float **)(*pfVar12 * DAT_00baa8a0);
      local_4c = (float **)(pfVar12[1] * DAT_00baa8a0);
      uVar5 = FUN_006eef60();
      fVar14 = DAT_00baadd8;
      if ((uVar5 & 1) != 0) {
        fVar14 = DAT_00baa854;
      }
      ppfVar7 = (float **)(fVar14 * DAT_00baa088);
      local_38 = ppfVar7;
      FUN_0041d540();
      local_44 = ppfVar7;
      FUN_0041d520();
      ppfVar7 = local_3c;
      fVar14 = (float)local_4c * (float)local_38;
      fVar15 = (float)local_38 * (float)local_40;
      local_38 = local_3c + 0x12;
      pfVar12 = (float *)((float)local_40 * (float)local_44 - fVar14);
      pfVar13 = (float *)(fVar15 + (float)local_44 * (float)local_4c);
      local_3c[0xcd] = pfVar12;
      local_3c[0xd8] = pfVar12;
      local_3c[0xce] = pfVar13;
      local_3c[0xd9] = pfVar13;
      cVar4 = FUN_0040a5d0("Attack",1);
      ppfVar16 = local_38;
      if (cVar4 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(ppfVar16 + 0x11) = 1;
        ppfVar7 = local_3c;
      }
      if (ppfVar7[0x1f] != (float *)0x0) {
        FUN_00408e00();
      }
      ppfVar7[0x2d9] = (float *)0x9;
      param_1[0x2e8] = (float *)0x2d;
    }
    break;
  case (float *)0xe:
    if (param_1[0x1f] != (float *)0x0) {
      cVar4 = FUN_0040add0("Shoot");
      if (cVar4 != '\0') {
        iVar6 = 0;
        do {
          iVar11 = FUN_00558fe0(0);
          *(int *)((int)&local_34 + iVar6 * 4) = iVar11;
          iVar6 = iVar6 + 1;
          fVar14 = *(float *)(iVar11 + 900) * DAT_00baa528;
          *(float *)(iVar11 + 900) = fVar14;
          *(float *)(iVar11 + 0x380) = fVar14;
        } while (iVar6 < 4);
        FUN_00557ce0();
        iVar6 = 0;
        do {
          iVar11 = *(int *)((int)&local_34 + iVar6 * 4);
          FUN_00558070(&local_78,0);
          pfVar12 = (float *)FUN_00557f70(&local_a0,0xc);
          local_3c = (float **)(*pfVar12 - local_78);
          local_44 = (float **)(pfVar12[1] - local_74);
          fVar14 = (float)local_3c * (float)local_3c + (float)local_44 * (float)local_44;
          FUN_00435a50();
          ppfVar7 = local_3c;
          ppfVar16 = local_44;
          if (DAT_00ba9fe4 < fVar14) {
            ppfVar7 = (float **)((float)local_3c * (DAT_00baa454 / fVar14));
            ppfVar16 = (float **)((float)local_44 * (DAT_00baa454 / fVar14));
          }
          iVar6 = iVar6 + 1;
          fVar14 = *(float *)(iVar11 + 0xbb0) * DAT_00baa4a0;
          *(float *)(iVar11 + 0x33c) = (float)ppfVar7 * fVar14 + local_78;
          *(float *)(iVar11 + 0x340) = (float)ppfVar16 * fVar14 + local_74;
          param_1 = local_40;
        } while (iVar6 < 4);
      }
      if ((param_1[0x1f] != (float *)0x0) && (*(char *)(param_1 + 0x23) != '\0'))
      goto switchD_004cfc53_caseD_1;
    }
    if (param_1[0x2f0] == (float *)0x0) {
      param_1[0x2d9] = (float *)&DAT_00000008;
    }
    else {
      uVar5 = FUN_006eef60(uVar5);
      param_1[0x2d9] = (float *)(~uVar5 & 1 | 8);
    }
    goto switchD_004cfc53_caseD_1;
  case (float *)0x10:
    param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa304);
    if (param_1[0x1f] == (float *)0x0) goto LAB_004d10ed;
    cVar4 = FUN_0040add0("Shoot");
    if (cVar4 != '\0') {
      param_1[0x62] = (float *)&DAT_00000004;
      param_1[0x57] = (float *)param_1[0xcc][9];
      param_1[0xdf] = (float *)param_1[0xcc][0x11];
      FUN_006d6ba0(0x8d,0x3f800000,2,0,0x3f800000);
      FUN_00703670(6);
      FUN_006b66c0(param_1 + 0xcf,param_1 + 0x79);
    }
  }
  if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
LAB_004d10ed:
    param_1[0x2d9] = (float *)0x3;
  }
switchD_004cfc53_caseD_1:
  if (0 < (int)param_1[0x2e8]) {
    param_1[0x2e8] =
         (float *)(((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]) + (int)param_1[0x2e8]);
  }
  if (0 < (int)param_1[0x2e9]) {
    param_1[0x2e9] =
         (float *)(((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]) + (int)param_1[0x2e9]);
  }
  if ((*(char *)((int)param_1 + 0x173) != '\0') && (uVar5 = 0, *(int *)(local_68 + 0x1264) != 0)) {
    do {
      piVar1 = *(int **)(*(int *)(local_68 + 0x125c) + uVar5 * 4);
      ppfVar7 = (float **)piVar1[0xef];
      if ((ppfVar7 == param_1) ||
         ((ppfVar7 != (float **)0x0 && ((float **)ppfVar7[0xef] == param_1)))) {
        iVar6 = piVar1[10];
        if (iVar6 == 1000) {
          if (piVar1[0xb] != 0x9d) {
LAB_004d11c8:
            if (iVar6 == 0x328) {
              uStack_cc = 0;
              uStack_c8 = 0;
              uStack_c4 = 0;
              local_c0 = 0;
              pfStack_bc = DAT_00c7b640;
              ppfStack_b8 = DAT_00c7b644;
              pfStack_b4 = DAT_00c7b640;
              local_b0 = DAT_00c7b644;
              local_ac = 0;
              local_a8 = 0;
              (**(code **)(*piVar1 + 0x24))(&uStack_cc);
            }
            goto LAB_004d1197;
          }
        }
        else if (iVar6 != 0x391) goto LAB_004d11c8;
        (**(code **)(*piVar1 + 0x28))();
      }
LAB_004d1197:
      uVar5 = uVar5 + 1;
    } while (uVar5 < *(uint *)(local_68 + 0x1264));
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

