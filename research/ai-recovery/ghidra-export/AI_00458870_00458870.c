/* Local J460 decompiler output.
 * VA: 0x00458870
 * Entry: 00458870
 * Dispatcher: 0x006c2990
 * Types: 65
 * Identities: 65.0.0,65.1.0,65.10.0
 * Evidence: dispatcher=0x006c2990; end=0x00459d20; instructions=1203
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=65; identities=65.0.0,65.1.0,65.10.0;
   dispatcher=0x006c2990; end=0x00459d20; instructions=1203 */

void __fastcall AI_00458870(int *param_1)

{
  double dVar1;
  byte bVar2;
  undefined *puVar3;
  char cVar4;
  uint uVar5;
  undefined4 uVar6;
  int iVar7;
  int **ppiVar8;
  int **ppiVar9;
  float *pfVar10;
  int iVar11;
  undefined4 *puVar12;
  char extraout_CL;
  int **ppiVar13;
  int iVar14;
  undefined4 extraout_ECX;
  byte *pbVar15;
  int *piVar16;
  uint uVar17;
  int *piVar18;
  bool bVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  undefined4 uVar23;
  undefined1 *puVar24;
  int *local_140;
  int *local_13c;
  uint local_138;
  int **local_134;
  int *local_130;
  int *local_12c;
  int *local_128;
  float local_124;
  int *local_120;
  float local_11c;
  int *local_118;
  char local_111;
  undefined local_110 [4];
  undefined4 local_10c;
  undefined4 local_108;
  undefined4 local_fc;
  uint local_b8;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  uint local_4c;
  uint local_48;
  undefined4 local_44;
  uint local_40;
  undefined4 local_3c;
  undefined4 local_38;
  char local_34 [4];
  int local_30;
  int *local_2c;
  int *local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af257d;
  local_1c = ExceptionList;
  uVar5 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
  local_24 = uVar5;
  if (param_1[0x2d9] == 0) {
    param_1[0x2d9] = 4;
    param_1[0x2f0] = 0;
    param_1[0x104] = 0;
    param_1[0x30d] = 0x3f000000;
    puStack_20 = &stack0xfffffffc;
    if (param_1[0xb] == 1) {
      param_1[799] = param_1[8];
      puStack_20 = &stack0xfffffffc;
    }
    goto LAB_00459cfb;
  }
  if (param_1[0xb] == 0) {
    local_118 = (int *)param_1[0xe1];
    puVar3 = &stack0xfffffffc;
    if ((float)param_1[0xe0] / (float)local_118 < DAT_00baa2d0) {
      puStack_20 = &stack0xfffffffc;
      uVar6 = FUN_006eef60(uVar5);
      FUN_00428b20(1000,1,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar6);
      FUN_006c0f30(param_1[10],10,param_1[0xc],0xffffffff);
      if ((param_1[0x5b] & 0x10000000U) != 0) {
        FUN_004a5d10(param_1[0xb],1);
        param_1[0xe1] = (int)local_118;
      }
      param_1[0x104] = 0;
      param_1[0x30d] = 0x3f000000;
      param_1[0x2d9] = 8;
      cVar4 = FUN_0040a5d0(&DAT_00b1dd24,1);
      if (cVar4 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
      FUN_006d6ba0(0x3ee,0x3f800000,2,0,0x3f800000);
      puVar3 = puStack_20;
    }
  }
  else {
    puVar3 = &stack0xfffffffc;
    if (((param_1[0xb] == 1) && (puVar3 = &stack0xfffffffc, DAT_00ba9fe4 < (float)param_1[5])) &&
       (puVar3 = &stack0xfffffffc, (param_1[6] & 0x100U) == 0)) {
      FUN_006d0dd0(local_34,param_1[799]);
      local_14 = 0;
      piVar18 = (int *)0x0;
      piVar16 = local_28;
      if (local_28 != (int *)0x0) {
        do {
          local_118 = *(int **)(local_30 + (int)piVar18 * 4);
          if (local_118 != param_1) {
            local_50 = DAT_00c7b644;
            local_48 = DAT_00c7b644;
            local_54 = DAT_00c7b640;
            local_4c = DAT_00c7b640;
            local_64 = 0;
            local_60 = 0;
            local_5c = 0;
            local_58 = 0;
            local_44 = 0;
            local_40 = 0;
            (**(code **)(*local_118 + 0x20))(param_1[5],0x100,0,&local_64,0x1e);
            piVar16 = local_28;
          }
          piVar18 = (int *)((int)piVar18 + 1);
        } while (piVar18 < piVar16);
      }
      local_14 = 0xffffffff;
      puVar3 = puStack_20;
      if (local_34[0] == '\0') {
        local_14 = 1;
        FUN_00a648b0(0,0);
        local_14 = 0xffffffff;
        puVar3 = puStack_20;
      }
    }
  }
  puStack_20 = puVar3;
  iVar7 = FUN_006be840();
  ppiVar9 = (int **)(param_1 + 0xcf);
  iVar14 = param_1[0x2d9];
  local_134 = ppiVar9;
  iVar11 = *(int *)(DAT_00c71678 + 0x18300);
  local_11c = *(float *)(iVar7 + 0x33c) - (float)param_1[0xcf];
  local_124 = *(float *)(iVar7 + 0x340) - (float)param_1[0xd0];
  local_130 = *(int **)(iVar11 + 0x14);
  local_120 = *(int **)(iVar11 + 0x18);
  local_13c = *(int **)(iVar11 + 0x18);
  local_118 = *(int **)(iVar11 + 0x1c);
  local_140 = local_130;
  local_2c = local_118;
  local_128 = *(int **)(iVar11 + 0x20);
  local_28 = *(int **)(iVar11 + 0x20);
  if (iVar14 != 9) {
    ppiVar13 = &local_140;
    if ((float)local_130 < (float)param_1[0xcf]) {
      ppiVar13 = ppiVar9;
    }
    ppiVar8 = &local_2c;
    if ((float)*ppiVar13 <= (float)local_118 && (float)local_118 != (float)*ppiVar13) {
      ppiVar8 = ppiVar13;
    }
    *ppiVar9 = *ppiVar8;
  }
  iVar11 = param_1[0xb];
  if (iVar11 == 10) {
    param_1[0x62] = 4;
    param_1[0x61] = 5;
    if (iVar14 == 4) {
      local_40 = 0xf;
      local_44 = 8;
      local_54._0_1_ = s_WalkVert_00b1dd18[0];
      local_54._1_1_ = s_WalkVert_00b1dd18[1];
      local_54._2_1_ = s_WalkVert_00b1dd18[2];
      local_54._3_1_ = s_WalkVert_00b1dd18[3];
      local_50._0_1_ = s_WalkVert_00b1dd18[4];
      local_50._1_1_ = s_WalkVert_00b1dd18[5];
      local_50._2_1_ = s_WalkVert_00b1dd18[6];
      local_50._3_1_ = s_WalkVert_00b1dd18[7];
      local_4c = local_4c & 0xffffff00;
      local_28 = (int *)&DAT_0000000f;
      local_2c = (int *)&DAT_00000008;
      local_3c._0_1_ = s_WalkHori_00b1dd30[0];
      local_3c._1_1_ = s_WalkHori_00b1dd30[1];
      local_3c._2_1_ = s_WalkHori_00b1dd30[2];
      local_3c._3_1_ = s_WalkHori_00b1dd30[3];
      local_38._0_1_ = s_WalkHori_00b1dd30[4];
      local_38._1_1_ = s_WalkHori_00b1dd30[5];
      local_38._2_1_ = s_WalkHori_00b1dd30[6];
      local_38._3_1_ = s_WalkHori_00b1dd30[7];
      local_34[0] = '\0';
      local_14._0_1_ = 3;
      local_14._1_3_ = 0;
      FUN_006c1330(&local_3c,&local_54,0x40000000);
      local_14 = CONCAT31(local_14._1_3_,2);
      if (&DAT_0000000f < local_28) {
        piVar16 = (int *)((int)local_28 + 1);
        uVar5 = local_3c;
        if ((int *)0xfff < piVar16) {
          uVar5 = *(uint *)(local_3c - 4);
          piVar16 = local_28 + 9;
          if (0x1f < (local_3c - uVar5) - 4) goto LAB_00458cdf;
        }
        FUN_00aef15c(uVar5,piVar16);
      }
      local_14 = 0xffffffff;
      local_2c = (int *)0x0;
      local_28 = (int *)&DAT_0000000f;
      local_3c = local_3c & 0xffffff00;
      if (0xf < local_40) {
        uVar17 = local_40 + 1;
        uVar5 = local_54;
        if (0xfff < uVar17) {
          uVar5 = *(uint *)(local_54 - 4);
          uVar17 = local_40 + 0x24;
          if (0x1f < (local_54 - uVar5) - 4) {
LAB_00458cdf:
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(uVar5,uVar17);
      }
      local_118 = (int *)(((float)param_1[0x30d] + DAT_00baa120) * _DAT_00baa41c);
      param_1[0x30d] = (int)local_118;
      param_1[0xdb] = (int)(((float)local_118 * DAT_00baa120 + DAT_00baa454) * (float)param_1[0xdb])
      ;
      uVar6 = FUN_006bec40(&local_2c,0);
      FUN_007e33c0(uVar6,(float)local_118 * DAT_00baa280 + DAT_00baa2d0,900,1);
      iVar14 = param_1[0x104];
      fVar20 = (float)param_1[0xe0];
      param_1[0x104] = iVar14 + 1;
      if (iVar14 < 10) {
        param_1[0x2ec] = (int)fVar20;
        fVar21 = fVar20;
      }
      else {
        fVar21 = (float)param_1[0x2ec];
      }
      piVar16 = DAT_00baab14;
      if ((fVar20 + DAT_00baa9a8) - (float)param_1[0x30d] * DAT_00baa784 < fVar21) {
        param_1[0x104] = 0;
        param_1[0x2d9] = 8;
        cVar4 = FUN_0040a5d0(&DAT_00b1dd24,1);
        if (cVar4 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
        FUN_006d6ba0(0x3ee,0x3f800000,2,0,0x3f800000);
        piVar16 = DAT_00baab14;
      }
    }
    else {
      piVar16 = DAT_00baab14;
      if (iVar14 == 8) {
        iVar14 = param_1[0x104] + 1;
        param_1[0x104] = iVar14;
        param_1[0x2ec] = param_1[0xe0];
        param_1[0x30d] = 0x3f000000;
        if (iVar14 < 0x29) {
          piVar16 = DAT_00baab14;
          if ((iVar14 == 3) && (param_1[0xc] == 1)) {
            AI_0043ef30();
            iVar14 = FUN_006d8240();
            local_2c = DAT_00baa81c;
            if (0 < iVar14) {
              local_2c = DAT_00baa834;
            }
            local_28 = (int *)0x40c00000;
            FUN_006cb2e0(ppiVar9,&local_2c,9,local_110);
            FUN_006d6ba0(0x70,0x3f800000,2,0,0x3f800000);
            piVar16 = DAT_00baab14;
          }
        }
        else {
          param_1[0x2d9] = 4;
          param_1[0x104] = 0;
          piVar16 = DAT_00baab14;
        }
      }
    }
    goto LAB_00459cb6;
  }
  param_1[0x61] = 3;
  fVar20 = DAT_00baaa94;
  if (iVar14 == 4) {
    FUN_007e6650(0);
    local_40 = 0xf;
    local_44 = 4;
    local_54 = 0x6b6c6157;
    local_50 = local_50 & 0xffffff00;
    local_28 = (int *)&DAT_0000000f;
    local_2c = (int *)&DAT_00000004;
    local_3c = 0x6b6c6157;
    local_38 = local_38 & 0xffffff00;
    local_14._0_1_ = 5;
    local_14._1_3_ = 0;
    FUN_006c1330(&local_3c,&local_54,0x40000000);
    local_14 = CONCAT31(local_14._1_3_,4);
    if (&DAT_0000000f < local_28) {
      piVar16 = (int *)((int)local_28 + 1);
      uVar5 = local_3c;
      if ((int *)0xfff < piVar16) {
        uVar5 = *(uint *)(local_3c - 4);
        piVar16 = local_28 + 9;
        if (0x1f < (local_3c - uVar5) - 4) goto LAB_00458fd9;
      }
      FUN_00aef15c(uVar5,piVar16);
    }
    local_14 = 0xffffffff;
    local_2c = (int *)0x0;
    local_28 = (int *)&DAT_0000000f;
    local_3c = local_3c & 0xffffff00;
    if (0xf < local_40) {
      uVar17 = local_40 + 1;
      uVar5 = local_54;
      if (0xfff < uVar17) {
        uVar5 = *(uint *)(local_54 - 4);
        uVar17 = local_40 + 0x24;
        if (0x1f < (local_54 - uVar5) - 4) {
LAB_00458fd9:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(uVar5,uVar17);
    }
    local_44 = 0;
    local_40 = 0xf;
    local_54 = local_54 & 0xffffff00;
    if (((param_1[0x5b] & 0x10000000U) != 0) &&
       (piVar16 = DAT_00baab14,
       (*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) != 0))
    goto LAB_00459cb6;
    uVar5 = FUN_006eef60();
    if (uVar5 % 0x5a == 0) {
      local_120 = (int *)(local_11c * local_11c);
      fVar20 = local_124 * local_124 + (float)local_120;
      FUN_00435a50();
      if (DAT_00baaa94 <= fVar20) goto LAB_004590c0;
      param_1[0x2d9] = 8;
      puVar24 = &DAT_00b1d2cc;
LAB_0045907e:
      param_1[0x104] = 0;
      cVar4 = FUN_0040a5d0(puVar24,1);
      piVar16 = DAT_00baab14;
      if (cVar4 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
        piVar16 = DAT_00baab14;
      }
    }
    else {
      local_120 = (int *)(local_11c * local_11c);
LAB_004590c0:
      uVar5 = FUN_006eef60();
      if (uVar5 % 200 == 0) {
        fVar20 = local_124 * local_124 + (float)local_120;
        FUN_00435a50();
        if (fVar20 <= DAT_00baaa44) goto LAB_004590f4;
      }
      else {
LAB_004590f4:
        uVar5 = FUN_006eef60();
        if ((uVar5 % 0x1e != 0) || (DAT_00baa87c <= (float)((uint)local_124 & DAT_00bacb40))) {
          uVar5 = FUN_006eef60();
          piVar16 = DAT_00baab14;
          if ((uVar5 % 0xb4 != 0) ||
             (cVar4 = FUN_00417430(0x1000a00,0), piVar16 = DAT_00baab14, cVar4 != '\0'))
          goto LAB_00459cb6;
          uVar5 = FUN_006eef60();
          FUN_006d6ba0((uVar5 & 3) + 0x73,0x3f800000,2,0,0x3f800000);
          param_1[0x2d9] = 6;
          puVar24 = &DAT_00b1d2ec;
          goto LAB_0045907e;
        }
      }
      cVar4 = FUN_00417430(0x1000a00,0);
      piVar16 = DAT_00baab14;
      if (cVar4 == '\0') {
        FUN_006d6ba0(0x77,0x3f800000,2,0,0x3f800000);
        *(bool *)(param_1 + 0x52) = local_11c < 0.0;
        cVar4 = FUN_0040a5d0("DashStart",1);
        if (cVar4 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
        param_1[0xcd] = param_1[0xcf];
        param_1[0xce] = param_1[0xd0];
        param_1[0x2d9] = 9;
        uVar5 = FUN_006eef60();
        param_1[0x104] = 3;
        param_1[0x2f1] = uVar5 % 3;
        FUN_006d6ba0(0x3ef,0x3f800000,2,0,0x3f800000);
        piVar16 = DAT_00baab14;
      }
    }
  }
  else if (iVar14 == 8) {
    iVar11 = param_1[0x104];
    iVar14 = iVar11 + 1;
    param_1[0x104] = iVar14;
    piVar16 = DAT_00baab14;
    if (iVar11 == 5) {
      AI_0043ef30();
      local_10c = 0xc2340000;
      local_108 = 0x40e00000;
      if (param_1[0xb] == 1) {
        local_b8 = local_b8 | 1;
        local_fc = 0x3fc00000;
      }
      iVar14 = FUN_006d8240();
      local_2c = DAT_00baa81c;
      if (0 < iVar14) {
        local_2c = DAT_00baa834;
      }
      local_28 = (int *)0x0;
      FUN_006cb2e0(ppiVar9,&local_2c,extraout_ECX,local_110);
      FUN_006d6ba0(0x70,0x3f800000,2,0,0x3f800000);
      piVar16 = DAT_00baab14;
    }
    else if (0x26 < iVar14) {
      param_1[0x2d9] = 4;
    }
  }
  else if (iVar14 == 6) {
    iVar14 = param_1[0x104];
    local_124 = (float)(iVar14 + 1);
    param_1[0x104] = (int)local_124;
    if (0x14 < (int)local_124) {
      param_1[0x62] = 0;
      param_1[0x57] = 0;
    }
    if (iVar11 == 1) {
      local_11c = 2.101948e-44;
    }
    else {
      local_11c = 2.802597e-45;
      if (param_1[0xc] == 0) {
        local_11c = 7.006492e-45;
      }
    }
    if (((-1 < iVar14 + -0x20) &&
        (local_120 = (int *)((iVar14 + -0x20) / 5), iVar14 + -0x20 == (int)local_120 * 5)) &&
       ((int)local_120 < (int)local_11c)) {
      if (param_1[0xb] == 1) {
        uVar6 = FUN_0081e9d0(&local_2c,0x41a00000);
        ppiVar9 = (int **)FUN_00813520(&local_140,uVar6,0,0,0,0);
        local_12c = *ppiVar9;
        local_128 = ppiVar9[1];
        pfVar10 = (float *)FUN_0067f070(&local_2c);
        iVar14 = FUN_006eef60();
        fVar20 = (float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) * DAT_00ba9ff4
        ;
        local_128 = (int *)(pfVar10[1] * fVar20 * DAT_00baa87c + (float)local_128);
        local_12c = (int *)(fVar20 * *pfVar10 * DAT_00baa87c + (float)local_12c);
        if ((int)((int)local_120 + 1) % 5 == 0) {
          iVar14 = FUN_006be840();
          fVar20 = (float)local_134[1] - *(float *)(iVar14 + 0x340);
          fVar21 = (float)*local_134 - *(float *)(iVar14 + 0x33c);
          fVar20 = fVar20 * fVar20 + fVar21 * fVar21;
          FUN_00435a50();
          local_28 = (int *)(fVar20 * DAT_00baa198 * *(float *)(iVar14 + 0x364) +
                            *(float *)(iVar14 + 0x340));
          local_2c = (int *)(fVar20 * DAT_00baa198 * *(float *)(iVar14 + 0x360) +
                            *(float *)(iVar14 + 0x33c));
          FUN_00812f50(&local_140,&local_2c,0x41a00000,0x41a00000,0x41a00000);
          local_12c = local_140;
          local_128 = local_13c;
        }
        uVar6 = FUN_006eef60();
        piVar16 = (int *)FUN_00428b20(1000,0x13,&local_12c,&DAT_00c7b640,param_1,2,uVar6);
        local_138 = DAT_00c3793c ^ DAT_00bacb70;
        local_134 = (int **)(DAT_00c37940 ^ DAT_00bacb70);
        FUN_006ac2a0(0x41200000,local_138,local_134,0xffffffff);
        (**(code **)(*piVar16 + 0xc))();
      }
      else {
        ppiVar9 = (int **)FUN_00813460(&local_2c,0,0);
        local_12c = *ppiVar9;
        local_128 = ppiVar9[1];
        if (param_1[0xc] == 0) {
          uVar6 = FUN_006eef60(uVar5);
          uVar23 = 3;
        }
        else {
          uVar6 = FUN_006eef60(uVar5);
          uVar23 = 4;
        }
        FUN_00428b20(4,uVar23,&local_12c,&DAT_00c7b640,param_1,0,uVar6);
      }
      uVar6 = FUN_00812c90(&local_12c);
      FUN_004565e0(uVar6,900);
      local_124 = (float)param_1[0x104];
    }
    piVar16 = DAT_00baab14;
    if ((int)local_11c * 5 + 0x71 < (int)local_124) {
      param_1[0x62] = 4;
      iVar14 = *(int *)(param_1[0xcc] + 0x24);
      param_1[0x2d9] = 9;
      param_1[0x61] = 2;
      param_1[0x57] = iVar14;
      param_1[0xcd] = param_1[0xcf];
      param_1[0xce] = param_1[0xd0];
      param_1[0x104] = 0;
      iVar14 = FUN_006be840();
      piVar16 = DAT_00baab14;
      if (*(float *)(iVar14 + 0x33c) <= (float)DAT_00baab14) {
        param_1[0xcf] = (int)((float)local_118 + DAT_00baaa94);
        *(undefined *)(param_1 + 0x52) = 1;
      }
      else {
        param_1[0xcf] = (int)((float)local_130 - DAT_00baaa94);
        *(undefined *)(param_1 + 0x52) = 0;
      }
    }
  }
  else {
    piVar16 = DAT_00baab14;
    if (iVar14 == 9) {
      param_1[0x61] = 2;
      if (((iVar11 == 1) && (iVar14 = FUN_006ac760(), fVar20 = DAT_00baaa94, iVar14 != 0)) &&
         ((param_1[0xd] != param_1[10] && (param_1[0x104] == 2)))) {
        FUN_006d6ba0(0x77,0x3f19999a,2,0,0x3f800000);
        if ((float)param_1[0xd8] <= DAT_00ba9fe4) {
          local_130 = (int *)((float)local_118 + DAT_00baaa94);
        }
        else {
          local_130 = (int *)((float)local_130 - DAT_00baaa94);
        }
        local_134 = (int **)(((float)local_128 - (float)local_120) * DAT_00baa2d0);
        iVar11 = FUN_006eef60(uVar5);
        dVar1 = (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)];
        iVar14 = param_1[0x2f1];
        param_1[0x2f1] = iVar14 + 1;
        local_118 = (int *)((float)(iVar14 % 3) * (float)local_134 * DAT_00baa2d0 +
                           (float)((double)iVar11 + dVar1) * DAT_00ba9ff4 * (float)local_134 +
                           (float)local_120 + DAT_00baa904);
        if (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1bb0) == 0x37) {
          iVar14 = FUN_006eef60();
          local_118 = (int *)((float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                              DAT_00ba9ff4 *
                              (((float)local_128 - (float)DAT_00baab14) - DAT_00baa9a0) +
                             DAT_00baab30);
        }
        uVar6 = FUN_006eef60();
        local_2c = local_130;
        local_28 = local_118;
        piVar16 = (int *)FUN_00428b20(param_1[10],param_1[0xb],&local_2c,&DAT_00c7b640,param_1,0,
                                      uVar6);
        piVar16[0x2d9] = param_1[0x2d9];
        piVar16[0x104] = 3;
        *(undefined *)(piVar16 + 0x52) = *(undefined *)(param_1 + 0x52);
        if ((int *)piVar16[0xef] != (int *)0x0) {
          local_134 = (int **)(piVar16 + 0xef);
          FUN_004cf210(&local_134);
        }
        piVar16[0xef] = (int)param_1;
        FUN_004cdcf0(piVar16 + 0xef);
        iVar14 = param_1[0xe0];
        piVar16[0x5a] = piVar16[0x5a] | 0x80000000;
        piVar16[0xe0] = iVar14;
        piVar16[0x5b] = piVar16[0x5b];
        piVar16[0x61] = 0;
        piVar16[799] = param_1[799];
        (**(code **)(*piVar16 + 0xc))();
        fVar20 = DAT_00baaa94;
      }
      iVar14 = DAT_00c71678;
      pfVar10 = (float *)(param_1 + 0xcf);
      local_111 = '\0';
      if (*(char *)(param_1 + 0x52) == '\0') {
        param_1[0xd8] = 0x41900000;
        iVar14 = *(int *)(iVar14 + 0x18300);
        if (*(float *)(iVar14 + 0x1c) + fVar20 < (float)param_1[0xcf]) {
          fVar20 = *(float *)(iVar14 + 0x14) - fVar20;
          goto LAB_00459a9b;
        }
      }
      else {
        param_1[0xd8] = -0x3e700000;
        iVar14 = *(int *)(iVar14 + 0x18300);
        fVar21 = *(float *)(iVar14 + 0x14) - fVar20;
        if ((float)param_1[0xcf] <= fVar21 && fVar21 != (float)param_1[0xcf]) {
          fVar20 = *(float *)(iVar14 + 0x1c) + fVar20;
LAB_00459a9b:
          *pfVar10 = fVar20;
          param_1[0x2f0] = 1;
          local_111 = '\x01';
          if (param_1[0xb] != 1) {
            FUN_006d6ba0(0x3ef,0x3f800000,2,0,0x3f800000);
          }
        }
      }
      iVar14 = FUN_006d8240();
      if (0 < iVar14) {
        param_1[0xd8] = (int)((float)param_1[0xd8] * DAT_00baa4c0);
      }
      if (((extraout_CL != '\0') && (param_1[0xd] == param_1[10])) && (param_1[0xb] == 1)) {
        (**(code **)(*param_1 + 0x28))();
      }
      if (((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) &&
         ((FUN_0040a380(&DAT_00b1dd28,0), param_1[0x1f] == 0 || (*(char *)(param_1 + 0x23) == '\0'))
         )) {
LAB_00459b89:
        param_1[0xd8] = 0;
      }
      else {
        puVar12 = (undefined4 *)param_1[0x1f];
        if (puVar12 == (undefined4 *)0x0) {
          puVar12 = (undefined4 *)&DAT_00b1a4ec;
        }
        else if (&DAT_0000000f < (undefined *)puVar12[5]) {
          puVar12 = (undefined4 *)*puVar12;
        }
        pbVar15 = &DAT_00b1dd28;
        do {
          bVar2 = *(byte *)puVar12;
          bVar19 = bVar2 < *pbVar15;
          if (bVar2 != *pbVar15) {
LAB_00459b80:
            uVar5 = -(uint)bVar19 | 1;
            goto LAB_00459b85;
          }
          if (bVar2 == 0) break;
          bVar2 = *(byte *)((int)puVar12 + 1);
          bVar19 = bVar2 < pbVar15[1];
          if (bVar2 != pbVar15[1]) goto LAB_00459b80;
          puVar12 = (undefined4 *)((int)puVar12 + 2);
          pbVar15 = pbVar15 + 2;
        } while (bVar2 != 0);
        uVar5 = 0;
LAB_00459b85:
        if (uVar5 != 0) goto LAB_00459b89;
      }
      piVar16 = DAT_00baab14;
      piVar18 = local_120;
      if (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1bb0) == 0x37) {
        piVar18 = DAT_00baab14;
      }
      fVar20 = ((float)local_128 - (float)piVar18) * DAT_00baa1f8;
      if (param_1[0x104] < 1) {
        if ((((float)param_1[0xd8] < 0.0) &&
            (*pfVar10 <= (float)param_1[0xcd] && (float)param_1[0xcd] != *pfVar10)) ||
           ((0.0 < (float)param_1[0xd8] &&
            ((float)param_1[0xcd] <= *pfVar10 && *pfVar10 != (float)param_1[0xcd])))) {
          param_1[0x2d9] = 4;
        }
      }
      else if (local_111 != '\0') {
        fVar22 = (float)local_128 - DAT_00baa904;
        fVar21 = fVar20 + (float)param_1[0xd0];
        param_1[0xd0] = (int)fVar21;
        if (fVar22 < fVar21) {
          param_1[0xd0] = (int)(fVar21 - fVar20 * DAT_00baa6fc);
        }
        param_1[0x104] = param_1[0x104] + -1;
      }
      if ((((param_1[0x2f0] != 0) &&
           (cVar4 = FUN_006ac710(0x28,0), piVar16 = DAT_00baab14, cVar4 != '\0')) &&
          (param_1[0xb] == 0)) && (param_1[0xc] == 1)) {
        uVar6 = FUN_006eef60();
        FUN_00428b20(4,3,pfVar10,&DAT_00c7b640,param_1,0,uVar6);
        param_1[0x2f0] = 0;
        piVar16 = DAT_00baab14;
      }
    }
  }
LAB_00459cb6:
  if ((*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1bb0) == 0x37) &&
     ((float)param_1[0xd0] < (float)piVar16)) {
    param_1[0xd9] =
         (int)((((float)piVar16 - (float)param_1[0xd0]) - (float)param_1[0xd9]) * DAT_00baa2d0 +
              (float)param_1[0xd9]);
  }
LAB_00459cfb:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

