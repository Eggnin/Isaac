/* Local J460 decompiler output.
 * VA: 0x004e0dd0
 * Entry: 004e0dd0
 * Dispatcher: 0x006c2990
 * Types: 831
 * Identities: 831.0.0,831.10.0,831.20.0
 * Evidence: dispatcher=0x006c2990; end=0x004e2b40; instructions=1568
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=831; identities=831.0.0,831.10.0,831.20.0;
   dispatcher=0x006c2990; end=0x004e2b40; instructions=1568 */

void __fastcall AI_004e0dd0(int *param_1)

{
  bool bVar1;
  bool bVar2;
  undefined uVar3;
  void **ppvVar4;
  char cVar5;
  char *pcVar6;
  undefined4 uVar7;
  int iVar8;
  uint uVar9;
  int **ppiVar10;
  float *pfVar11;
  int iVar12;
  uint uVar13;
  int *piVar14;
  float10 fVar15;
  float fVar16;
  float fVar17;
  int *piVar18;
  float fVar19;
  double dVar20;
  float local_e4;
  float local_e0;
  int *local_dc;
  int *local_d8;
  int *local_d4;
  int *local_d0;
  undefined local_cc [4];
  int local_c8;
  int *local_c4;
  int *local_c0;
  float local_bc;
  int *local_b8;
  int *local_b4;
  int *local_b0 [6];
  undefined4 local_98;
  undefined4 local_94;
  undefined local_90;
  undefined4 local_88;
  uint local_84;
  undefined4 local_6c;
  undefined4 local_68;
  undefined local_64;
  undefined4 local_5c;
  uint local_58;
  ulonglong local_54;
  char local_4c;
  undefined local_4b;
  undefined4 local_44;
  uint local_40;
  undefined4 local_3c;
  undefined4 local_38;
  uint local_34;
  ulonglong local_30;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined local_14;
  undefined3 uStack_13;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xff;
  uStack_13 = 0xffffff;
  puStack_18 = &LAB_00af3b43;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  piVar14 = (int *)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  local_c0 = piVar14;
  local_b8 = param_1;
  if (param_1[0x2dd] == 3) {
    puStack_20 = &stack0xfffffffc;
    if (param_1[0x2df] == param_1[0xf2]) {
      param_1[0x2e0] = 0;
      puStack_20 = &stack0xfffffffc;
    }
    goto switchD_004e110f_caseD_1;
  }
  iVar8 = param_1[0xb];
  if (param_1[0x2dd] == 1) {
    puStack_20 = &stack0xfffffffc;
    if (iVar8 == 0) {
      iVar8 = param_1[0x2e9];
      uVar9 = local_24;
      ppvVar4 = &local_1c;
      puStack_20 = &stack0xfffffffc;
      while ((ExceptionList = ppvVar4, 0 < iVar8 &&
             (fVar16 = ((float)iVar8 * (float)param_1[0xe1]) / DAT_00baa6fc,
             (float)param_1[0xe0] <= fVar16 && fVar16 != (float)param_1[0xe0]))) {
        param_1[0x2e9] = iVar8 + -1;
        local_b0[0] = (int *)0xed;
        FUN_00956780(uVar9);
        FUN_0092dc30(local_b0[0],0x3f800000,2,0,0x3f800000,0);
        pcVar6 = "RightEye";
        if (param_1[0x2e9] != 1) {
          pcVar6 = "LeftEye";
        }
        FUN_006b6af0(&local_dc,pcVar6);
        local_b0[0] = local_dc;
        local_c4 = (int *)((float)local_dc + (float)param_1[0xcf]);
        local_c0 = (int *)((float)param_1[0xd0] + 0.0);
        uVar7 = FUN_006eef60();
        piVar14 = (int *)FUN_00428b20(1000,2,&local_c4,&DAT_00c7b640,0,2,uVar7);
        (**(code **)(*piVar14 + 0x3c))(param_1 + 0x79,0xffffffff,0xff);
        piVar14[0x37] = 0;
        piVar14[0x38] = (int)local_d8;
        piVar14[0xd6] = 0x41200000;
        uVar7 = FUN_006eef60();
        local_e4 = DAT_00baad84;
        if (param_1[0x2e9] == 1) {
          local_e4 = DAT_00baa6fc;
        }
        local_bc = (float)local_b0[0] + (float)param_1[0xcf];
        local_e0 = 5.0;
        local_b8 = (int *)((float)param_1[0xd0] + 0.0);
        piVar14 = (int *)FUN_00428b20(0x33f,10,&local_bc,&local_e4,param_1,0,uVar7);
        piVar14[0x5a] = piVar14[0x5a] & 0xfffffffb;
        piVar14[0x5b] = piVar14[0x5b];
        if (piVar14[0xef] != 0) {
          local_b0[0] = piVar14 + 0xef;
          FUN_004cf210(local_b0);
        }
        piVar14[0xef] = (int)param_1;
        FUN_004cdcf0(piVar14 + 0xef);
        (**(code **)(*piVar14 + 0xc))();
        iVar8 = param_1[0x2e9];
        ppvVar4 = (void **)ExceptionList;
      }
      local_b0[0] = (int *)((float)iVar8 * DAT_00baa91c);
      iVar8 = FUN_0040b220();
      *(int **)(iVar8 + 0x94) = local_b0[0];
      iVar8 = FUN_0040b220();
      *(int **)(iVar8 + 0x94) = local_b0[0];
    }
    goto switchD_004e110f_caseD_1;
  }
  ExceptionList = &local_1c;
  if (iVar8 == 0x14) {
    puStack_20 = &stack0xfffffffc;
    switch(param_1[0x2d9]) {
    case 0:
      param_1[0x2d9] = 4;
      puStack_20 = &stack0xfffffffc;
      FUN_0040a380(&DAT_00b1bc54,0);
      if (param_1[0x3c7] == -1) {
        uVar9 = FUN_006eef60();
        param_1[0x2e8] = uVar9 % 0x96 + 0x3c;
      }
      else {
        param_1[0x2e8] = 0x3c;
      }
      goto LAB_004e2ae3;
    case 4:
      if (param_1[0x1f] == 0) {
LAB_004e1335:
        puStack_20 = &stack0xfffffffc;
        FUN_0040a380(&DAT_00b1bc54,0);
      }
      else {
        if (*(char *)(param_1[0x1f] + 0x34) != '\0') {
          puStack_20 = &stack0xfffffffc;
          FUN_007e5340(0x3f400000,0);
          fVar17 = DAT_00baa3a4;
          fVar16 = (float)param_1[0xe7];
          fVar19 = DAT_00baa3c4;
          if ((NAN(fVar16) || NAN(DAT_00baa454)) == (fVar16 == DAT_00baa454)) {
            fVar19 = DAT_00baa3c4 / ((fVar16 + DAT_00baa3c4) - fVar16 * DAT_00baa3c4);
          }
          bVar1 = NAN(DAT_00baa454);
          bVar2 = fVar16 == DAT_00baa454;
          param_1[0xd8] = (int)(fVar19 * (float)param_1[0xd8]);
          if ((NAN(fVar16) || bVar1) == bVar2) {
            fVar17 = fVar17 / ((fVar16 + fVar17) - fVar16 * fVar17);
          }
          param_1[0xd9] = (int)(fVar17 * (float)param_1[0xd9]);
          if (((param_1[0x2e8] < 1) ||
              (iVar8 = param_1[0x2e8] - (int)piVar14, param_1[0x2e8] = iVar8, iVar8 < 1)) &&
             (uVar9 = FUN_006eef60(), uVar9 % 0xf == 0)) {
            FUN_0040a380(&DAT_00b1de50,0);
            param_1[0x2d9] = 0xd;
            uVar9 = FUN_006eef60();
            param_1[0x2e8] = uVar9 % 0x96 + 0x3c;
            FUN_006d0c60(local_cc,param_1[10],param_1[0xb]);
            local_14 = 0;
            uStack_13 = 0;
            local_b0[0] = (int *)0x0;
            iVar8 = local_c8;
            if (local_c0 != (int *)0x0) {
              do {
                piVar14 = *(int **)(iVar8 + (int)local_b0[0] * 4);
                if ((piVar14 != param_1) &&
                   (iVar8 = local_c8,
                   ((piVar14[0x5a] & 0x20000000U) != 0) == ((param_1[0x5a] & 0x20000000U) != 0))) {
                  uVar9 = FUN_006eef60();
                  iVar12 = uVar9 % 0x96 + 0x3c;
                  iVar8 = piVar14[0x2e8];
                  if (piVar14[0x2e8] < iVar12) {
                    iVar8 = iVar12;
                  }
                  piVar14[0x2e8] = iVar8;
                  iVar8 = local_c8;
                }
                local_b0[0] = (int *)((int)local_b0[0] + 1);
              } while (local_b0[0] < local_c0);
            }
            FUN_004175b0();
          }
          break;
        }
        puStack_20 = &stack0xfffffffc;
        if (*(char *)(param_1 + 0x23) == '\0') goto LAB_004e1335;
      }
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa354);
      break;
    case 6:
      puStack_20 = &stack0xfffffffc;
      FUN_0040a380(&DAT_00b602e8,0);
      local_b0[0] = (int *)((float)param_1[0x2ec] + DAT_00baa354);
      param_1[0x2ec] = (int)local_b0[0];
      local_b8 = (int *)((float)local_b0[0] + (float)param_1[0x2ed]);
      param_1[0x2ed] = (int)local_b8;
      param_1[0xd4] = (int)local_b8;
      iVar8 = FUN_006ac760();
      piVar18 = local_b8;
      piVar14 = local_b0[0];
      if (iVar8 != 0) {
        iVar8 = FUN_006eef60();
        fVar16 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa1f8 + DAT_00baa280;
        local_b8 = (int *)(fVar16 * DAT_00c37940);
        local_b0[0] = (int *)(fVar16 * DAT_00c3793c);
        uVar7 = FUN_006eef60();
        iVar8 = FUN_00428b20(1000,0x16,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar7);
        *(int **)(iVar8 + 0xe4) = local_b0[0];
        *(int **)(iVar8 + 0xe8) = local_b8;
        *(undefined4 *)(iVar8 + 0x45c) = 0x1e;
        *(undefined4 *)(iVar8 + 0x460) = 0x1e;
        uVar7 = FUN_006eef60();
        piVar14 = (int *)FUN_00428b20(1000,7,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar7);
        iVar8 = FUN_006eef60();
        fVar19 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa2d0 + DAT_00baa2d0;
        fVar16 = fVar19 * DAT_00c3793c;
        piVar14[0x3a] = (int)(fVar19 * DAT_00c37940 * (float)local_b8);
        piVar14[0x39] = (int)(fVar16 * (float)local_b0[0]);
        (**(code **)(*piVar14 + 0xc))();
        piVar18 = (int *)param_1[0x2ed];
        piVar14 = (int *)param_1[0x2ec];
      }
      if ((float)((uint)piVar14 ^ DAT_00bacb70) < (float)piVar18) {
        param_1[0xd4] = 0;
        param_1[0x2ed] = 0;
        param_1[0x2ec] = 0;
        param_1[0x2d9] = 4;
        param_1[0x61] = 5;
        param_1[0x62] = 4;
        FUN_006d6ba0(0x102,0x3f800000,2,0,0x3f800000);
        FUN_0040a380(&DAT_00b1d574,0);
        FUN_006d7cf0(&DAT_00c7b640,param_1 + 0x79,&DAT_00c7b640);
        uVar7 = FUN_006eef60();
        iVar8 = FUN_00428b20(1000,0x16,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar7);
        fVar16 = DAT_00c37940;
        fVar19 = DAT_00c3793c * DAT_00baa500;
        *(undefined4 *)(iVar8 + 0x45c) = 0x1e;
        fVar16 = fVar16 * DAT_00baa500;
        *(undefined4 *)(iVar8 + 0x460) = 0x1e;
        *(float *)(iVar8 + 0xe4) = fVar19;
        *(float *)(iVar8 + 0xe8) = fVar16;
      }
      break;
    case 0xd:
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa304);
      puStack_20 = &stack0xfffffffc;
      cVar5 = FUN_0040b030();
      if (cVar5 != '\0') {
        local_b0[0] = (int *)0x109;
        FUN_00956780();
        FUN_0092dc30(local_b0[0],0x3f800000,2,0,0x3f800000,0);
        local_c4 = (int *)0x0;
        local_c0 = (int *)0xc0c00000;
        FUN_006d7cf0(&local_c4,param_1 + 0x79,&DAT_00c7b640);
        local_dc = (int *)((float)param_1[0xcf] + 0.0);
        local_d8 = (int *)((float)param_1[0xd0] + DAT_00baa81c);
        uVar7 = FUN_006eef60();
        FUN_00428b20(0x17,0,&local_dc,&DAT_00c7b640,param_1,0,uVar7);
      }
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        FUN_0040a380(&DAT_00b1bc54,0);
        param_1[0x2d9] = 4;
      }
    }
    goto switchD_004e110f_caseD_1;
  }
  if (iVar8 == 10) {
    if (param_1[0x2d9] != 0) {
      puStack_20 = &stack0xfffffffc;
      if (param_1[0x2d9] == 4) {
        puStack_20 = &stack0xfffffffc;
        FUN_0040a380(&DAT_00b1dce4,0);
        if ((param_1[0xef] == 0) || (*(char *)(param_1[0xef] + 0x173) != '\0')) {
          FUN_00435c70();
          (**(code **)(*param_1 + 0x24))();
        }
        uVar9 = FUN_006eef60();
        if ((uVar9 & 3) == 0) {
          FUN_006eef60();
          FUN_006b64d0();
        }
        local_34 = param_1[0xfb];
        local_28 = DAT_00b1f674;
        local_30 = DAT_00b1f66c;
        FUN_006bec40(&local_c4,0);
        iVar8 = param_1[0xef];
        if (iVar8 == 0) {
          local_d0 = local_c0;
          local_b4 = local_c4;
        }
        else {
          local_b4 = local_c4;
          local_d0 = local_c0;
          fVar16 = ((float)param_1[0xd0] - (float)local_c0) *
                   ((float)param_1[0xd0] - (float)local_c0) +
                   ((float)param_1[0xcf] - (float)local_c4) *
                   ((float)param_1[0xcf] - (float)local_c4);
          FUN_00435a50();
          if (DAT_00baaad4 < fVar16) {
            local_b4 = *(int **)(iVar8 + 0x33c);
            local_d0 = *(int **)(iVar8 + 0x340);
          }
        }
        fVar15 = (float10)FUN_007e9080();
        local_d4 = (int *)(float)fVar15;
        fVar16 = ((float)param_1[0xd0] - (float)local_d0) * ((float)param_1[0xd0] - (float)local_d0)
                 + ((float)param_1[0xcf] - (float)local_b4) *
                   ((float)param_1[0xcf] - (float)local_b4);
        FUN_00435a50();
        fVar16 = (fVar16 - DAT_00baaa94) / DAT_00baabb0;
        if (fVar16 <= DAT_00ba9fe4) {
          fVar16 = DAT_00ba9fe4;
        }
        if (DAT_00baa454 <= fVar16) {
          fVar16 = DAT_00baa454;
        }
        local_b8 = (int *)(DAT_00baa904 - fVar16 * DAT_00baa904);
        local_dc = (int *)((float)local_b4 - (float)param_1[0xcf]);
        local_d8 = (int *)((float)local_d0 - (float)param_1[0xd0]);
        FUN_00a10030();
        if (param_1[0x3c7] == -1) {
          local_b0[0] = local_c0;
          local_b4 = local_c4;
          iVar8 = -1;
        }
        else {
          ppiVar10 = (int **)FUN_006d82d0();
          iVar8 = param_1[0x3c7];
          local_b4 = *ppiVar10;
          local_b0[0] = ppiVar10[1];
          local_b8 = (int *)((float)local_b8 * DAT_00baa2d0);
        }
        fVar16 = ((float)(*(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca]) / DAT_00baa950 +
                 (float)local_d4) * DAT_00baa7a8;
        FUN_0041d520();
        piVar14 = (int *)(fVar16 * (float)local_b8 * DAT_00baa088);
        local_b8 = piVar14;
        FUN_0041d540();
        local_d4 = piVar14;
        piVar14 = local_b8;
        FUN_0041d520();
        fVar16 = (float)local_b0[0] * (float)local_d4;
        local_b0[0] = (int *)((float)local_b4 * (float)local_d4 -
                             (float)local_b0[0] * (float)piVar14);
        local_b4 = (int *)((float)local_b4 * (float)piVar14 + fVar16);
        if (iVar8 == -1) {
          local_b8 = (int *)0x0;
          local_d4 = (int *)0x0;
          local_d0 = (int *)0x0;
          FUN_006d0c60(&local_34,param_1[10],param_1[0xb]);
          uVar9 = 0;
          if (local_28 != 0) {
            do {
              piVar14 = *(int **)((int)local_30 + uVar9 * 4);
              if (piVar14 != param_1) {
                local_d8 = (int *)((float)param_1[0xd0] - (float)piVar14[0xd0]);
                local_e0 = (float)param_1[0xcf] - (float)piVar14[0xcf];
                fVar16 = (float)local_d8 * (float)local_d8 + local_e0 * local_e0;
                FUN_00435a50();
                if (DAT_00ba9fe4 < fVar16) {
                  local_b8 = (int *)((int)local_b8 + 1);
                  fVar19 = fVar16 * DAT_00baa120 + DAT_00baa81c;
                  local_d4 = (int *)((((float)local_d8 / fVar16) / fVar19) * DAT_00baa81c +
                                    (float)local_d4);
                  local_d0 = (int *)(((local_e0 / fVar16) / fVar19) * DAT_00baa81c + (float)local_d0
                                    );
                }
              }
              uVar9 = uVar9 + 1;
            } while (uVar9 < local_28);
            if (0 < (int)local_b8) {
              local_c4 = (int *)((float)local_d0 / (float)(int)local_b8 + (float)local_b0[0]);
              local_c0 = (int *)((float)local_d4 / (float)(int)local_b8 + (float)local_b4);
              FUN_00a0ffc0();
              local_b4 = local_c0;
              local_b0[0] = local_c4;
            }
          }
          FUN_004175b0();
        }
        fVar16 = (float)local_b4 * DAT_00baa304;
        param_1[0xd8] =
             (int)((float)local_b0[0] * DAT_00baa304 * (float)param_1[0xe7] + (float)param_1[0xd8]);
        param_1[0xd9] = (int)(fVar16 * (float)param_1[0xe7] + (float)param_1[0xd9]);
        param_1[0xdb] = 0x3f59999a;
      }
      goto switchD_004e110f_caseD_1;
    }
    param_1[0x5a] = param_1[0x5a] | 1;
    param_1[0x5b] = param_1[0x5b] | 8;
    param_1[0x3c6] = 4;
    param_1[0x2d9] = 4;
    *(undefined *)(param_1 + 0xec) = 1;
    param_1[0x61] = 3;
    puStack_20 = &stack0xfffffffc;
  }
  else {
    FUN_006d8e40();
    iVar8 = param_1[0x2d9];
    if (iVar8 != 0) {
      if (iVar8 == 4) {
        local_84 = 0xf;
        local_88 = 8;
        local_98._0_1_ = s_WalkVert_00b1dd18[0];
        local_98._1_1_ = s_WalkVert_00b1dd18[1];
        local_98._2_1_ = s_WalkVert_00b1dd18[2];
        local_98._3_1_ = s_WalkVert_00b1dd18[3];
        local_94._0_1_ = s_WalkVert_00b1dd18[4];
        local_94._1_1_ = s_WalkVert_00b1dd18[5];
        local_94._2_1_ = s_WalkVert_00b1dd18[6];
        local_94._3_1_ = s_WalkVert_00b1dd18[7];
        local_90 = 0;
        local_58 = 0xf;
        local_5c = 8;
        local_6c._0_1_ = s_WalkVert_00b1dd18[0];
        local_6c._1_1_ = s_WalkVert_00b1dd18[1];
        local_6c._2_1_ = s_WalkVert_00b1dd18[2];
        local_6c._3_1_ = s_WalkVert_00b1dd18[3];
        local_68._0_1_ = s_WalkVert_00b1dd18[4];
        local_68._1_1_ = s_WalkVert_00b1dd18[5];
        local_68._2_1_ = s_WalkVert_00b1dd18[6];
        local_68._3_1_ = s_WalkVert_00b1dd18[7];
        local_64 = 0;
        local_40 = 0xf;
        local_44 = 9;
        local_54._0_1_ = s_WalkRight_00b1dac0[0];
        local_54._1_1_ = s_WalkRight_00b1dac0[1];
        local_54._2_1_ = s_WalkRight_00b1dac0[2];
        local_54._3_1_ = s_WalkRight_00b1dac0[3];
        local_54._4_1_ = s_WalkRight_00b1dac0[4];
        local_54._5_1_ = s_WalkRight_00b1dac0[5];
        local_54._6_1_ = s_WalkRight_00b1dac0[6];
        local_54._7_1_ = s_WalkRight_00b1dac0[7];
        local_4c = s_WalkRight_00b1dac0[8];
        local_4b = 0;
        local_28 = 0xf;
        local_30 = CONCAT44(8,(int)local_30);
        local_3c._0_1_ = s_WalkLeft_00b1da88[0];
        local_3c._1_1_ = s_WalkLeft_00b1da88[1];
        local_3c._2_1_ = s_WalkLeft_00b1da88[2];
        local_3c._3_1_ = s_WalkLeft_00b1da88[3];
        local_38._0_1_ = s_WalkLeft_00b1da88[4];
        local_38._1_1_ = s_WalkLeft_00b1da88[5];
        local_38._2_1_ = s_WalkLeft_00b1da88[6];
        local_38._3_1_ = s_WalkLeft_00b1da88[7];
        local_34 = local_34 & 0xffffff00;
        local_14 = 4;
        uStack_13 = 0;
        FUN_006c1870(&local_3c,&local_54,&local_6c,&local_98,0x3dcccccd);
        local_14 = 3;
        uVar3 = local_14;
        local_14 = 3;
        if (0xf < local_28) {
          uVar13 = local_28 + 1;
          uVar9 = local_3c;
          if (0xfff < uVar13) {
            uVar9 = *(uint *)(local_3c - 4);
            uVar13 = local_28 + 0x24;
            if (0x1f < (local_3c - uVar9) - 4) goto LAB_004e20c8;
          }
          FUN_00aef15c(uVar9,uVar13);
        }
        local_14 = 2;
        local_30 = local_30 & 0xffffffff;
        local_28 = 0xf;
        local_3c = local_3c & 0xffffff00;
        if (0xf < local_40) {
          uVar9 = local_40 + 1;
          iVar8 = (int)local_54;
          if (0xfff < uVar9) {
            iVar8 = *(int *)((int)local_54 + -4);
            uVar9 = local_40 + 0x24;
            uVar3 = local_14;
            if (0x1f < ((int)local_54 - iVar8) - 4U) goto LAB_004e20c8;
          }
          FUN_00aef15c(iVar8,uVar9);
        }
        local_14 = 1;
        local_44 = 0;
        local_40 = 0xf;
        local_54 = local_54 & 0xffffffffffffff00;
        if (0xf < local_58) {
          uVar13 = local_58 + 1;
          uVar9 = local_6c;
          if (0xfff < uVar13) {
            uVar9 = *(uint *)(local_6c - 4);
            uVar13 = local_58 + 0x24;
            uVar3 = local_14;
            if (0x1f < (local_6c - uVar9) - 4) goto LAB_004e20c8;
          }
          FUN_00aef15c(uVar9,uVar13);
        }
        local_14 = 0xff;
        uStack_13 = 0xffffff;
        local_5c = 0;
        local_58 = 0xf;
        local_6c = local_6c & 0xffffff00;
        if (0xf < local_84) {
          uVar9 = local_84 + 1;
          iVar8 = local_98;
          if (0xfff < uVar9) {
            iVar8 = *(int *)(local_98 + -4);
            uVar9 = local_84 + 0x24;
            uVar3 = local_14;
            if (0x1f < (local_98 - iVar8) - 4U) {
LAB_004e20c8:
              local_14 = uVar3;
                    /* WARNING: Subroutine does not return */
              _invalid_parameter_noinfo_noreturn();
            }
          }
          FUN_00aef15c(iVar8,uVar9);
        }
        param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa304);
        if (param_1[0x3c7] == -1) {
          cVar5 = FUN_00417430(0x1000b00,0);
          if ((cVar5 != '\0') || (param_1[0x3ce] != 0)) {
            param_1[0x2f0] = 10;
          }
          cVar5 = FUN_00417430(0x200,0);
          if (cVar5 == '\0') {
            cVar5 = FUN_00417430(0x100,0);
            if ((cVar5 == '\0') && (param_1[0x3ce] == 0)) {
              cVar5 = FUN_00417430(0x1000800,0);
              if (cVar5 != '\0') {
                iVar8 = FUN_006be840();
                fVar16 = (float)param_1[0xd0] - *(float *)(iVar8 + 0x340);
                FUN_00499d60();
                param_1[0x2ec] = (int)(fVar16 * DAT_00baa948);
              }
            }
            else {
              local_d8 = (int *)FUN_006be840();
              cVar5 = FUN_006ac710(5,param_1[8]);
              if (cVar5 != '\0') {
                local_e0 = (float)param_1[0xcf];
                local_b0[0] = (int *)param_1[0xd0];
                local_d4 = (int *)param_1[0xd8];
                local_d0 = (int *)param_1[0xd9];
                local_b4 = (int *)param_1[0xdb];
                FUN_007e3260();
                local_dc = (int *)local_d8[0xcf];
                local_d8 = (int *)local_d8[0xd0];
                FUN_007e33c0(&local_dc,0x3f800000,900,1);
                fVar16 = (float)param_1[0xd9];
                FUN_00499d60();
                param_1[0x2ec] = (int)(fVar16 * DAT_00baa948);
                param_1[0xcf] = (int)local_e0;
                param_1[0xd0] = (int)local_b0[0];
                param_1[0xd8] = (int)local_d4;
                param_1[0xd9] = (int)local_d0;
                param_1[0xdb] = (int)local_b4;
                piVar14 = local_c0;
              }
            }
          }
          else {
            uVar9 = FUN_006eef60();
            if (uVar9 % 5 == 0) {
              iVar8 = FUN_006eef60();
              fVar16 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baab30;
              FUN_00682740();
              param_1[0x2ec] = (int)fVar16;
            }
          }
          param_1[0x2f0] = param_1[0x2f0] - (int)piVar14;
          local_c0 = (int *)((float)param_1[0x2ed] * DAT_00baa088);
          piVar18 = local_c0;
          FUN_0041d540();
          local_b0[0] = piVar18;
          FUN_0041d520();
          param_1[0xd8] =
               (int)((float)local_b0[0] * DAT_00baa4b0 * (float)param_1[0xe7] + (float)param_1[0xd8]
                    );
          param_1[0xd9] =
               (int)((float)local_c0 * DAT_00baa4b0 * (float)param_1[0xe7] + (float)param_1[0xd9]);
          iVar8 = param_1[0x2ed];
          FUN_00682a50();
          param_1[0x2ed] = iVar8;
          if ((*(char *)(param_1 + 100) != '\0') && (uVar9 = FUN_006eef60(), (uVar9 & 3) == 0)) {
            fVar16 = (float)param_1[0x68];
            fVar16 = (float)local_c0 -
                     (fVar16 + fVar16) *
                     (fVar16 * (float)local_c0 + (float)param_1[0x67] * (float)local_b0[0]);
            FUN_00499d60();
            param_1[0x2ec] = (int)(fVar16 * DAT_00baa948);
          }
          if (param_1[0x2f0] < 1) {
            iVar8 = FUN_006eef60();
            fVar16 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baab30;
            FUN_00682740();
            param_1[0x2ec] = (int)fVar16;
            uVar9 = FUN_006eef60();
            param_1[0x2f0] = uVar9 % 0x78 + 0x2d;
          }
        }
        else {
          pfVar11 = (float *)FUN_006d82d0();
          fVar16 = pfVar11[1] * DAT_00baa4b0 * DAT_00baa4c0;
          param_1[0xd8] =
               (int)(*pfVar11 * DAT_00baa4b0 * DAT_00baa4c0 * (float)param_1[0xe7] +
                    (float)param_1[0xd8]);
          param_1[0xd9] = (int)(fVar16 * (float)param_1[0xe7] + (float)param_1[0xd9]);
        }
        uVar9 = FUN_006eef60();
        if (uVar9 % 0x50 == 0) {
          FUN_006d6ba0(0xa7,0x3f800000,0x3c,0,0x3f19999a);
        }
        if (param_1[0x2e8] < 1) {
LAB_004e256a:
          uVar13 = 0;
          FUN_006d0c60(&local_34,0x33f,0x14);
          uVar9 = 0;
          if (local_28 != 0) {
            do {
              if (((*(uint *)(*(int *)((int)local_30 + uVar9 * 4) + 0x168) & 0x20000000) != 0) ==
                  ((param_1[0x5a] & 0x20000000U) != 0)) {
                uVar13 = uVar13 + 1;
              }
              uVar9 = uVar9 + 1;
            } while (uVar9 < local_28);
            param_1 = local_b8;
            if (2 < uVar13) {
              local_b8[0x2e8] = 0x3c;
            }
          }
          FUN_004175b0();
          iVar8 = param_1[0x2e8];
        }
        else {
          iVar8 = param_1[0x2e8] - (int)piVar14;
          param_1[0x2e8] = iVar8;
          if (iVar8 < 1) goto LAB_004e256a;
        }
        if ((iVar8 < 1) && ((param_1[0x3c7] == -1 || (cVar5 = FUN_006cae60(0,7), cVar5 != '\0')))) {
          param_1[0x2d9] = 8;
          if (param_1[0x3c7] == -1) {
            uVar9 = FUN_006eef60();
            param_1[0x2f1] = uVar9 % 0x5a + 0x2d;
          }
          else {
            iVar8 = FUN_006d85a0();
            fVar16 = *(float *)(iVar8 + 4);
            FUN_00499d60();
            piVar14 = (int *)(fVar16 * DAT_00baa948);
            FUN_00682740();
            local_c0 = piVar14;
            if (((float)local_c0 < DAT_00baa910) || (DAT_00baaa24 < (float)local_c0)) {
              param_1[0x2f1] = 0x5a;
              FUN_006d9050();
            }
            else {
              dVar20 = floor((double)(float)local_c0);
              local_c0 = (int *)(float)dVar20;
              param_1[0x2f1] = (int)dVar20;
              FUN_006d9050();
            }
          }
          FUN_0040a380("Attack",0);
          param_1[0x104] = 0;
        }
      }
      else if (iVar8 == 8) {
        FUN_006d9050();
        cVar5 = FUN_0040b030();
        if (cVar5 != '\0') {
          FUN_006d6ba0(0xd5,0x3f19999a,10,0,0x3f800000);
          local_c4 = (int *)0x0;
          local_c0 = (int *)0xc1a00000;
          local_b0[0] = (int *)((float)param_1[0x2f1] * DAT_00baa088);
          FUN_006d7cf0(&local_c4,local_b8 + 0x79,&DAT_00c7b640);
          uVar7 = FUN_006eef60();
          piVar14 = local_b0[0];
          FUN_0041d540();
          local_c4 = (int *)((float)piVar14 * DAT_00baa81c);
          piVar14 = local_b0[0];
          FUN_0041d520();
          local_c0 = (int *)((float)piVar14 * DAT_00baa81c);
          piVar14 = (int *)FUN_00428b20(0x33f,0x14,param_1 + 0xcf,&local_c4,local_b8,0,uVar7);
          piVar14[0x5a] = piVar14[0x5a] & 0xfffffffb;
          piVar14[0x5b] = piVar14[0x5b];
          (**(code **)(*piVar14 + 0xc))();
          piVar14[0x2d9] = 6;
          FUN_0040a380(&DAT_00b602e8,1);
          piVar14[0x2ec] = -0x3f000000;
          piVar14[0x2ed] = -0x3e900000;
          piVar14[0xd4] = -0x3e900000;
          piVar14[0x62] = 2;
          param_1 = local_b8;
        }
        if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
          param_1[0x2d9] = 4;
          param_1[0x104] = 0;
          if (param_1[0x3c7] == -1) {
            uVar9 = FUN_006eef60();
            iVar8 = uVar9 % 0xb4 + 0x5a;
          }
          else {
            iVar8 = 0x5a;
          }
          param_1[0x2e8] = iVar8;
        }
        param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa280);
      }
      if (DAT_00ba9fe4 < (float)param_1[5]) {
        iVar12 = (int)((float)param_1[5] * DAT_00baa834);
        iVar8 = 1;
        if (1 < iVar12) {
          iVar8 = iVar12;
        }
        param_1[0x2e8] = param_1[0x2e8] - iVar8;
      }
      uVar9 = FUN_006eef60();
      if (uVar9 % 6 == 0) {
        FUN_006eef60();
        FUN_006b64d0();
      }
      if (*(char *)((int)param_1 + 0x173) != '\0') {
        FUN_006b66c0(param_1 + 0xcf,param_1 + 0x79);
        uVar7 = FUN_006eef60();
        piVar14 = (int *)FUN_00428b20(1000,0x84,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar7);
        uVar7 = FUN_004238f0();
        (**(code **)(*piVar14 + 0x3c))(uVar7,0xffffffff,0xff,0,1);
        (**(code **)(*piVar14 + 0xc))();
        cVar5 = FUN_00417430(0x1000000,0x200000);
        if (cVar5 == '\0') {
          local_bc = 0.0;
          local_b8 = (int *)0xc1e00000;
          local_b0[0] = (int *)0x4;
          do {
            iVar8 = FUN_006eef60();
            local_c0 = (int *)((DAT_00baae2c -
                               (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                               DAT_00ba9ff4 * DAT_00baa9b4) * DAT_00baa088);
            piVar14 = local_c0;
            FUN_0041d540();
            local_d8 = piVar14;
            piVar14 = local_c0;
            FUN_0041d520();
            local_e4 = (float)local_d8 * DAT_00baa7b8;
            local_e0 = (float)piVar14 * DAT_00baa7b8;
            uVar7 = FUN_00407170();
            piVar14 = (int *)FUN_006d7cf0(&local_bc,uVar7,&local_e4);
            iVar8 = FUN_006eef60();
            piVar14[0xd5] = 500;
            piVar14[0x3b] =
                 (int)((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baab30);
            (**(code **)(*piVar14 + 0x3c))(param_1 + 0x79,0xffffffff,0xff);
            local_b0[0] = (int *)((int)local_b0[0] - 1);
          } while (local_b0[0] != (int *)0x0);
          piVar14 = (int *)FUN_0060af00(0xf,0);
          piVar14[0xcf] = param_1[0xcf];
          piVar14[0xd0] = param_1[0xd0];
          if (*(char *)((int)param_1 + 0xc63) == '\0') {
            iVar8 = -1;
          }
          else {
            iVar8 = param_1[0x319];
          }
          piVar14[0x114] = iVar8;
          uVar9 = param_1[0x5b];
          piVar14[0x5a] = piVar14[0x5a] | param_1[0x5a] & 0x20000100U;
          piVar14[0x5b] = piVar14[0x5b] | uVar9 & 0x400000;
          piVar14[0x11e] = param_1[0x30e];
          (**(code **)(*piVar14 + 0xc))();
        }
      }
      goto switchD_004e110f_caseD_1;
    }
    param_1[0x3c6] = 1;
    param_1[0x2d9] = 4;
    FUN_0040a6e0("WalkVert",0);
    if (param_1[0x3c7] == -1) {
      uVar9 = FUN_006eef60();
      iVar8 = uVar9 % 0x96 + 0x3c;
    }
    else {
      iVar8 = 0x3c;
    }
    param_1[0x2e8] = iVar8;
    param_1[0x2f0] = 0;
    iVar8 = FUN_006eef60();
    fVar16 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baab30;
    FUN_00682740();
    param_1[0x2ed] = (int)fVar16;
    param_1[0x2ec] = (int)fVar16;
    param_1[0x2e9] = 2;
    iVar8 = FUN_0040b220();
    *(undefined4 *)(iVar8 + 0x94) = 0x42c00000;
    iVar8 = FUN_0040b220();
    *(undefined4 *)(iVar8 + 0x94) = 0x42c00000;
  }
LAB_004e2ae3:
  FUN_004071f0();
switchD_004e110f_caseD_1:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

