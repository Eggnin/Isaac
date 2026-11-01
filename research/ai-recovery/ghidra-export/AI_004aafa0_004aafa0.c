/* Local J460 decompiler output.
 * VA: 0x004aafa0
 * Entry: 004aafa0
 * Dispatcher: 0x006c2990
 * Types: 950
 * Identities: 950.0.0,950.1.0,950.10.0,950.2.0
 * Evidence: dispatcher=0x006c2990; end=0x004ae4d0; instructions=2849
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=950; identities=950.0.0,950.1.0,950.10.0,950.2.0;
   dispatcher=0x006c2990; end=0x004ae4d0; instructions=2849 */

void __fastcall AI_004aafa0(float **param_1)

{
  undefined *puVar1;
  float *pfVar2;
  undefined auVar3 [16];
  int iVar4;
  char cVar5;
  uint uVar6;
  float ***pppfVar7;
  char *pcVar8;
  int iVar9;
  int iVar10;
  undefined4 uVar11;
  int *piVar12;
  uint uVar13;
  bool bVar14;
  float **ppfVar15;
  float fVar16;
  float **ppfVar17;
  float *pfVar18;
  float fVar19;
  float fVar20;
  float *pfVar21;
  undefined4 uVar22;
  int local_160;
  float **local_158;
  float local_154;
  undefined4 local_150;
  undefined local_14c [8];
  float local_144;
  float **local_140;
  undefined4 local_13c;
  float **local_138;
  undefined4 local_134;
  float *local_130;
  float local_12c;
  float **local_128;
  float local_124;
  float local_120;
  float *local_11c;
  float *local_118;
  float *local_114;
  float **local_110;
  float **local_10c;
  float *local_108;
  float **local_104;
  float *local_100;
  float **local_fc;
  undefined local_f8 [8];
  float local_f0;
  undefined4 local_ec;
  undefined4 local_e4;
  undefined4 local_e0;
  undefined4 local_a0;
  undefined4 local_9c;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined local_40 [8];
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af3170;
  local_1c = ExceptionList;
  uVar6 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  pfVar18 = param_1[0xef];
  ppfVar15 = (float **)DAT_00c71678[0x60c0];
  local_118 = (float *)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  local_110 = DAT_00baa454;
  if (pfVar18 != (float *)0x0) {
    local_110 = (float **)(pfVar18[0xe0] / pfVar18[0xe1]);
  }
  local_114 = param_1[0x2dd];
  local_104 = param_1;
  local_138 = ppfVar15;
  local_24 = uVar6;
  if ((local_114 == (float *)0x1) || (local_114 == (float *)0x2)) {
    local_150 = (float **)CONCAT31(local_150._1_3_,local_114 == (float *)0x2);
    puVar1 = &stack0xfffffffc;
    if ((param_1[0x2d9] == (float *)0x2) &&
       ((cVar5 = FUN_009561e0(0xe,0xffffffff,0,0), puVar1 = puStack_20, cVar5 != '\0' &&
        (iVar10 = FUN_0092b190(0x3b6,0), puVar1 = puStack_20, iVar10 != 0)))) {
      param_1[0x2d9] = (float *)0x7;
    }
    puStack_20 = puVar1;
    if (local_114 != (float *)0x2) {
      FUN_004aaef0(uVar6);
      iVar10 = FUN_0040b220(0);
      local_fc = (float **)((float)param_1[0xe7] * DAT_00baa0d0);
      local_128 = (float **)(iVar10 + 0x48);
      iVar10 = FUN_0040b220(0);
      fVar16 = *(float *)(iVar10 + 0x60);
      if ((float)local_fc < (float)((uint)(fVar16 - 0.0) & DAT_00bacb40)) {
        if (0.0 <= fVar16) {
          pfVar18 = (float *)(fVar16 - (float)local_fc);
        }
        else {
          pfVar18 = (float *)((float)local_fc + fVar16);
        }
      }
      else {
        pfVar18 = (float *)0x0;
      }
      local_128[6] = pfVar18;
    }
    FUN_006b6af0(&local_10c,"CordPos");
    if ((((NAN((float)local_10c) || NAN(DAT_00c7b640)) == ((float)local_10c == DAT_00c7b640)) ||
        ((NAN((float)local_108) || NAN(DAT_00c7b644)) == ((float)local_108 == DAT_00c7b644))) &&
       (param_1[0x305] == (float *)0x0)) {
      uVar6 = 0;
      do {
        fVar16 = (float)((double)uVar6 + (double)(&DAT_00bacb00)[-((int)uVar6 >> 0x1f)]) *
                 DAT_00baa280;
        local_fc = (float **)
                   ((float)((double)uVar6 + (double)(&DAT_00bacb00)[-((int)uVar6 >> 0x1f)]) /
                   DAT_00baa804);
        FUN_0041d520();
        local_12c = fVar16 * DAT_00baa81c +
                    (((float)param_1[0xcd] - DAT_00baa7e8) - (float)param_1[0xcf]) * (float)local_fc
                    + (float)param_1[0xcf];
        local_128 = (float **)
                    ((((float)param_1[0xce] + 0.0) - (float)param_1[0xd0]) * (float)local_fc +
                     (float)param_1[0xd0] + 0.0);
        FUN_004b0f50(&local_12c);
        local_13c = 0;
        local_138 = (float **)0x0;
        FUN_004b0f50(&local_13c);
        local_134 = 0xc1f00000;
        local_130 = (float *)0x0;
        FUN_004b0f50(&local_134);
        uVar6 = uVar6 + 1;
      } while (uVar6 < 10);
      FUN_004b0e40(param_1 + 0x301);
    }
    pfVar18 = param_1[0xef];
    if (pfVar18 == (float *)0x0) {
      local_100 = param_1[0xcd];
      local_fc = (float **)param_1[0xce];
    }
    else {
      local_100 = (float *)(pfVar18[0xcf] + 0.0);
      local_fc = (float **)(pfVar18[0xd0] + DAT_00baa87c);
    }
    local_104 = (float **)local_100;
    local_110 = local_fc;
    if (param_1[0x305] != (float *)0x0) {
      uVar6 = (uint)param_1[0x304] & 1;
      pfVar18 = param_1[0xcf];
      fVar16 = param_1[0x302][(uint)param_1[0x304] >> 1 & (int)param_1[0x303] - 1U];
      *(float *)((int)fVar16 + 4 + uVar6 * 8) = (float)param_1[0xd0] + 0.0;
      *(float *)((int)fVar16 + uVar6 * 8) = (float)local_10c + (float)pfVar18;
      uVar6 = (int)param_1[0x304] + 1U & 1;
      fVar16 = param_1[0x302][(int)param_1[0x303] - 1U & (int)param_1[0x304] + 1U >> 1];
      *(float **)((int)fVar16 + uVar6 * 8) = param_1[0xd8];
      *(float **)((int)fVar16 + 4 + uVar6 * 8) = param_1[0xd9];
      uVar6 = (int)param_1[0x304] + 2U & 1;
      fVar16 = param_1[0x302][(int)param_1[0x304] + 2U >> 1 & (int)param_1[0x303] - 1U];
      *(float **)((int)fVar16 + uVar6 * 8) = local_108;
      *(undefined4 *)((int)fVar16 + 4 + uVar6 * 8) = 0;
      uVar6 = (int)param_1[0x305] + (int)param_1[0x304] + -3;
      uVar13 = uVar6 & 1;
      fVar16 = param_1[0x302][uVar6 >> 1 & (int)param_1[0x303] - 1U];
      *(float *)((int)fVar16 + uVar13 * 8) = (float)local_100 - DAT_00baa7e8;
      *(float *)((int)fVar16 + 4 + uVar13 * 8) = (float)local_fc + 0.0;
      uVar6 = (int)param_1[0x305] + (int)param_1[0x304] + -2;
      uVar13 = uVar6 & 1;
      fVar16 = param_1[0x302][uVar6 >> 1 & (int)param_1[0x303] - 1U];
      *(float *)((int)fVar16 + uVar13 * 8) = DAT_00c7b640;
      *(float *)((int)fVar16 + 4 + uVar13 * 8) = DAT_00c7b644;
      uVar6 = (int)param_1[0x305] + (int)param_1[0x304] + -1;
      uVar13 = uVar6 & 1;
      fVar16 = param_1[0x302][uVar6 >> 1 & (int)param_1[0x303] - 1U];
      *(undefined4 *)((int)fVar16 + uVar13 * 8) = 0xc1f00000;
      *(undefined4 *)((int)fVar16 + 4 + uVar13 * 8) = 0;
      FUN_004e8fa0(local_150);
    }
    local_110 = (float **)((float)local_110 - (float)param_1[0xd0]);
    local_104 = (float **)((float)local_104 - (float)param_1[0xcf]);
    fVar16 = (float)local_110 * (float)local_110 + (float)local_104 * (float)local_104;
    FUN_00435a50();
    if (DAT_00baaa88 < fVar16) {
      fVar19 = fVar16 - DAT_00baaa88;
      param_1[0xd8] =
           (float *)(((float)local_104 / fVar16) * fVar19 * DAT_00baa120 * DAT_00baa1f8 *
                     (float)param_1[0xe7] + (float)param_1[0xd8]);
      param_1[0xd9] =
           (float *)(((float)local_110 / fVar16) * fVar19 * DAT_00baa120 * DAT_00baa1f8 *
                     (float)param_1[0xe7] + (float)param_1[0xd9]);
    }
    goto LAB_004ae458;
  }
  puStack_20 = &stack0xfffffffc;
  if (((param_1[0xef] == (float *)0x0) &&
      (pfVar18 = param_1[0x2d9], puStack_20 = &stack0xfffffffc, pfVar18 != (float *)0x0)) &&
     ((puStack_20 = &stack0xfffffffc, pfVar18 != (float *)0x10 &&
      ((puStack_20 = &stack0xfffffffc, pfVar18 != (float *)0x2 &&
       (puStack_20 = &stack0xfffffffc, pfVar18 != (float *)0x7)))))) {
    param_1[0x2d9] = (float *)0x10;
    puStack_20 = &stack0xfffffffc;
    FUN_0040a380("Transition",0);
  }
  fVar16 = DAT_00baa2d0;
  local_114 = (float *)0x2;
  switch(param_1[0x2d9]) {
  case (float *)0x0:
    param_1[0x3c6] = (float *)0x3;
    if (param_1[0xd] == (float *)0x0) {
      uVar11 = FUN_00812d00(&local_10c);
      piVar12 = (int *)FUN_00428b20(0x3b6,1,uVar11,&DAT_00c7b640,param_1,0,param_1[0xfb]);
      (**(code **)(*piVar12 + 0xc))();
      FUN_006a92e0(param_1);
      FUN_006a92a0(piVar12);
      param_1[0x2d9] = (float *)0x3;
      FUN_0040a380(&DAT_00b1bc54,0);
      FUN_0040a940(&DAT_00b1d20c,0);
      iVar10 = FUN_0040b220(2);
      ppfVar15 = local_138;
      *(undefined *)(iVar10 + 0x74) = 0;
      param_1[0x5b] = (float *)((uint)param_1[0x5b] | 8);
      param_1[0x62] = (float *)&DAT_00000004;
      param_1[0x5a] = (float *)((uint)param_1[0x5a] & 0xfffffffb | 0x80000011);
      param_1[0x2e8] = (float *)&DAT_00000014;
      param_1[0x2e9] = (float *)0xffffffff;
      iVar10 = 0;
      do {
        FUN_008167e0(iVar10);
        iVar10 = iVar10 + 1;
      } while (iVar10 < 8);
      ppfVar15[1][0x11] = (float)((uint)ppfVar15[1][0x11] | 4);
      ppfVar15[1][0x11] = (float)((uint)ppfVar15[1][0x11] & 0xfffffffe);
      ppfVar15[1][0x11] = (float)((uint)ppfVar15[1][0x11] | 0x8000);
      FUN_007f1380();
      FUN_0093da00();
      FUN_007067c0(&DAT_00c33c70,0);
      param_1 = local_104;
    }
    else {
      param_1[0x2d9] = (float *)0x2;
      FUN_0040a380("Appear",0);
      FUN_0040a940(&DAT_00b1d20c,0);
      iVar10 = FUN_0040b220(2);
      *(undefined *)(iVar10 + 0x74) = 0;
      ppfVar15 = DAT_00c71678;
      param_1[0x62] = (float *)0x0;
      param_1[0x5b] = (float *)((uint)param_1[0x5b] | 8);
      param_1[0x5a] = (float *)((uint)param_1[0x5a] & 0xfffffffb | 0x80000011);
      *(undefined *)(ppfVar15 + 0x8bb4) = 0;
    }
    local_50 = _DAT_00bac7b0;
    uStack_4c = _UNK_00bac7b4;
    uStack_48 = _UNK_00bac7b8;
    uStack_44 = _UNK_00bac7bc;
    param_1[0x30d] = (float *)0x0;
    local_40._4_4_ = _UNK_00bac9c4;
    local_40._0_4_ = _DAT_00bac9c0;
    uStack_38 = _UNK_00bac9c8;
    uStack_34 = _UNK_00bac9cc;
    local_30 = 0;
    local_2c = 0;
    local_28 = 0;
    FUN_004071f0(&local_50);
    break;
  case (float *)0x2:
  case (float *)0x7:
    param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa3a4);
    cVar5 = FUN_0040b030("Splat");
    if (cVar5 != '\0') {
      uVar11 = FUN_006eef60();
      piVar12 = (int *)FUN_00428b20(1000,0xa9,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar11);
      fVar19 = DAT_00c3793c * DAT_00baa4b0;
      fVar16 = DAT_00c37940 * DAT_00baa4b0;
      piVar12[0x5a] = piVar12[0x5a] | 0x10000;
      piVar12[0x5b] = piVar12[0x5b];
      piVar12[0x39] = (int)fVar19;
      piVar12[0x3a] = (int)fVar16;
      piVar12[0x117] = 300;
      piVar12[0x118] = 300;
      (**(code **)(*piVar12 + 0xc))();
      uVar11 = FUN_006eef60();
      piVar12 = (int *)FUN_00428b20(1000,0x84,param_1 + 0xcf,&DAT_00c7b640,param_1,1,uVar11);
      (**(code **)(*piVar12 + 0xc))();
    }
    local_110 = (float **)param_1[0x2d9];
    cVar5 = FUN_0040b030("Sound");
    if ((cVar5 != '\0') || (local_110 == (float **)0x7)) {
      bVar14 = local_110 != (float **)0x7;
      if (bVar14) {
        FUN_006d6ba0(0x21d,0x3f800000,2,0,0x3f800000);
        FUN_00703770(param_1 + 0xcf,0x3d23d70a,0x3d8f5c29,0x14);
      }
      FUN_007067c0(&DAT_00c5c660,bVar14);
    }
    cVar5 = FUN_0040b090("Sound");
    if (cVar5 != '\0') {
      FUN_00703670(6);
    }
    cVar5 = FUN_0040b030("Shoot");
    if ((cVar5 != '\0') || (local_110 == (float **)0x7)) {
      ppfVar15[1][0x11] = (float)((uint)ppfVar15[1][0x11] | 4);
      ppfVar15[1][0x11] = (float)((uint)ppfVar15[1][0x11] & 0xfffffffe);
      FUN_007f1380();
      FUN_0093da00();
      local_118 = (float *)0x0;
      local_114 = (float *)0x0;
      if (ppfVar15[0x499] != (float *)0x0) {
        pfVar18 = (float *)0x0;
        do {
          local_130 = (float *)ppfVar15[0x497][(int)pfVar18];
          if (local_130[10] == 1.345247e-42) {
            if (local_130[0xb] == 5.605194e-45) {
              pfVar21 = (float *)FUN_00812d00(&local_10c);
              local_114 = (float *)(*pfVar21 - local_130[0xcd]);
              local_118 = (float *)(pfVar21[1] - local_130[0xce]);
            }
LAB_004ab524:
            (**(code **)((int)*local_130 + 0x28))();
          }
          else if ((local_130[10] == 1.401298e-42) &&
                  ((local_130[0xb] == 1.036961e-43 || (local_130[0xb] == 2.368194e-43))))
          goto LAB_004ab524;
          pfVar18 = (float *)((int)pfVar18 + 1);
        } while (pfVar18 < ppfVar15[0x499]);
      }
      local_11c = (float *)0x0;
      do {
        FUN_008167e0(local_11c);
        local_11c = (float *)((int)local_11c + 1);
      } while ((int)local_11c < 8);
      fVar16 = (float)FUN_0082c720(*(undefined4 *)ppfVar15[1][4],1,1000,0xffffffff);
      ppfVar15[1][4] = fVar16;
      pfVar18 = ppfVar15[1];
      if (pfVar18 != (float *)0x0) {
        pfVar18 = (float *)pfVar18[0x16];
      }
      uVar6 = 0;
      local_124 = (float)ppfVar15[8] - (float)ppfVar15[6];
      local_130 = (float *)((float)ppfVar15[7] - (float)ppfVar15[5]);
      local_fc = (float **)(local_124 + (float)local_130);
      local_128 = (float **)((float)local_130 + (float)local_fc);
      local_150 = (float **)(local_124 + (float)local_128);
      do {
        FUN_007e90f0();
        pfVar21 = ppfVar15[5];
        local_11c = ppfVar15[6];
        fVar16 = (((float)((double)(int)pfVar18 + (double)(&DAT_00bacb00)[-((int)pfVar18 >> 0x1f)])
                   * DAT_00ba9ff0 +
                  ((float)((double)uVar6 + (double)(&DAT_00bacb00)[-((int)uVar6 >> 0x1f)]) -
                  DAT_00baa2d0)) * (float)local_150) / DAT_00baa87c;
        if (fVar16 <= (float)local_128) {
          if (fVar16 <= (float)local_fc) {
            if (fVar16 <= (float)local_130) {
              local_140 = (float **)((float)pfVar21 + fVar16);
              local_11c = (float *)((float)local_11c + 0.0);
            }
            else {
              local_140 = (float **)((float)pfVar21 + (float)local_130);
              local_11c = (float *)((fVar16 - (float)local_130) + (float)local_11c);
            }
          }
          else {
            local_140 = (float **)(((float)local_130 - (fVar16 - (float)local_fc)) + (float)pfVar21)
            ;
            local_11c = (float *)((float)local_11c + local_124);
          }
        }
        else {
          local_140 = (float **)((float)pfVar21 + 0.0);
          local_11c = (float *)((local_124 - (fVar16 - (float)local_128)) + (float)local_11c);
        }
        local_10c = local_140;
        local_108 = local_11c;
        pfVar21 = (float *)FUN_00812d00(local_14c);
        local_140 = (float **)((float)local_140 - *pfVar21);
        local_11c = (float *)((float)local_11c - pfVar21[1]);
        FUN_007e90f0();
        fVar19 = (float)local_11c * (float)local_11c + (float)local_140 * (float)local_140;
        FUN_00435a50();
        ppfVar17 = local_140;
        fVar16 = (float)local_11c;
        if (0.0 < fVar19) {
          fVar19 = ((float)((double)(int)pfVar18 + (double)(&DAT_00bacb00)[-((int)pfVar18 >> 0x1f)])
                    * DAT_00ba9ff0 * DAT_00baa9a0 + DAT_00baa81c) / fVar19;
          ppfVar17 = (float **)((float)local_140 * fVar19);
          fVar16 = (float)local_11c * fVar19;
        }
        local_10c = (float **)((float)local_10c + (float)ppfVar17);
        local_108 = (float *)((float)local_108 + fVar16);
        uVar11 = FUN_007e90f0();
        piVar12 = (int *)FUN_00428b20(1000,0xaa,&local_10c,&DAT_00c7b640,0,0,uVar11);
        (**(code **)(*piVar12 + 0xc))();
        param_1 = local_104;
        uVar6 = uVar6 + 1;
      } while (uVar6 < 0x1e);
      if (local_104[0x305] != (float *)0x0) {
        uVar6 = (uint)local_104[0x304] & 1;
        fVar16 = local_104[0x302][(int)local_104[0x303] - 1U & (uint)local_104[0x304] >> 1];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
        uVar6 = (uint)local_104[0x309] & 1;
        fVar16 = local_104[0x307][(uint)local_104[0x309] >> 1 & (int)local_104[0x308] - 1U];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
        uVar6 = (int)local_104[0x304] + 3U & 1;
        fVar16 = local_104[0x302][(int)local_104[0x304] + 3U >> 1 & (int)local_104[0x303] - 1U];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
        uVar6 = (int)local_104[0x309] + 3U & 1;
        fVar16 = local_104[0x307][(int)local_104[0x309] + 3U >> 1 & (int)local_104[0x308] - 1U];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
        uVar6 = (int)local_104[0x304] + 6U & 1;
        fVar16 = local_104[0x302][(int)local_104[0x304] + 6U >> 1 & (int)local_104[0x303] - 1U];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
        uVar6 = (int)local_104[0x309] + 6U & 1;
        fVar16 = local_104[0x307][(int)local_104[0x309] + 6U >> 1 & (int)local_104[0x308] - 1U];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
        uVar6 = (int)local_104[0x304] + 9U & 1;
        fVar16 = local_104[0x302][(int)local_104[0x304] + 9U >> 1 & (int)local_104[0x303] - 1U];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
        uVar6 = (int)local_104[0x309] + 9U & 1;
        fVar16 = local_104[0x307][(int)local_104[0x309] + 9U >> 1 & (int)local_104[0x308] - 1U];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
        uVar6 = (uint)(local_104[0x304] + 3) & 1;
        fVar16 = local_104[0x302][(uint)(local_104[0x304] + 3) >> 1 & (int)local_104[0x303] - 1U];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
        uVar6 = (uint)(local_104[0x309] + 3) & 1;
        fVar16 = local_104[0x307][(uint)(local_104[0x309] + 3) >> 1 & (int)local_104[0x308] - 1U];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
        uVar6 = (int)local_104[0x304] + 0xfU & 1;
        fVar16 = local_104[0x302][(int)local_104[0x304] + 0xfU >> 1 & (int)local_104[0x303] - 1U];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
        uVar6 = (int)local_104[0x309] + 0xfU & 1;
        fVar16 = local_104[0x307][(int)local_104[0x309] + 0xfU >> 1 & (int)local_104[0x308] - 1U];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
        uVar6 = (int)local_104[0x304] + 0x12U & 1;
        fVar16 = local_104[0x302][(int)local_104[0x304] + 0x12U >> 1 & (int)local_104[0x303] - 1U];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
        uVar6 = (int)local_104[0x309] + 0x12U & 1;
        fVar16 = local_104[0x307][(int)local_104[0x309] + 0x12U >> 1 & (int)local_104[0x308] - 1U];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
        uVar6 = (int)local_104[0x304] + 0x15U & 1;
        fVar16 = local_104[0x302][(int)local_104[0x304] + 0x15U >> 1 & (int)local_104[0x303] - 1U];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
        uVar6 = (int)local_104[0x309] + 0x15U & 1;
        fVar16 = local_104[0x307][(int)local_104[0x309] + 0x15U >> 1 & (int)local_104[0x308] - 1U];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
        uVar6 = (uint)(local_104[0x304] + 6) & 1;
        fVar16 = local_104[0x302][(uint)(local_104[0x304] + 6) >> 1 & (int)local_104[0x303] - 1U];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
        uVar6 = (uint)(local_104[0x309] + 6) & 1;
        fVar16 = local_104[0x307][(uint)(local_104[0x309] + 6) >> 1 & (int)local_104[0x308] - 1U];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
        uVar6 = (int)local_104[0x304] + 0x1bU & 1;
        fVar16 = local_104[0x302][(int)local_104[0x304] + 0x1bU >> 1 & (int)local_104[0x303] - 1U];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
        local_fc = (float **)local_104[0x309];
        uVar6 = (int)local_fc + 0x1bU & 1;
        fVar16 = local_104[0x307][(int)local_fc + 0x1bU >> 1 & (int)local_104[0x308] - 1U];
        *(float *)((int)fVar16 + uVar6 * 8) = (float)local_114 + *(float *)((int)fVar16 + uVar6 * 8)
        ;
        *(float *)((int)fVar16 + 4 + uVar6 * 8) =
             (float)local_118 + *(float *)((int)fVar16 + 4 + uVar6 * 8);
      }
      local_11c = (float *)0x0;
      if ((int)DAT_00c71678[0x6eab] - (int)DAT_00c71678[0x6eaa] >> 2 != 0) {
        do {
          pfVar18 = DAT_00c71678[0x6eab];
          local_104 = DAT_00c71678;
          if ((int)pfVar18 - (int)DAT_00c71678[0x6eaa] >> 2 == 0) {
            FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
            pfVar18 = local_104[0x6eab];
          }
          pfVar21 = local_104[0x6eaa];
          if (local_11c < (float *)((int)pfVar18 - (int)pfVar21 >> 2)) {
            pfVar21 = pfVar21 + (int)local_11c;
          }
          local_104 = (float **)*pfVar21;
          local_130 = (float *)(*(float *)((int)local_104 + 0x340) - (float)param_1[0xd0]);
          local_124 = *(float *)((int)local_104 + 0x33c) - (float)param_1[0xcf];
          fVar16 = (float)local_130 * (float)local_130 + local_124 * local_124;
          FUN_00435a50();
          if (DAT_00baa9a0 <= fVar16) {
            fVar19 = *(float *)((int)local_104 + 0x340);
          }
          else {
            fVar19 = (float)local_130;
            fVar20 = local_124;
            if (0.0 < fVar16) {
              fVar19 = (float)local_130 * (DAT_00baa9a0 / fVar16);
              fVar20 = local_124 * (DAT_00baa9a0 / fVar16);
            }
            fVar19 = fVar19 + (float)param_1[0xd0];
            *(float *)((int)local_104 + 0x33c) = fVar20 + (float)param_1[0xcf];
            *(float *)((int)local_104 + 0x340) = fVar19;
          }
          local_100 = (float *)((float)local_114 + *(float *)((int)local_104 + 0x33c));
          local_fc = (float **)((float)local_118 + fVar19);
          FUN_00812f50(&local_12c,&local_100,0,0,0);
          FUN_007cd950(&local_12c,0,0);
          local_11c = (float *)((int)local_11c + 1);
        } while (local_11c < (float *)((int)DAT_00c71678[0x6eab] - (int)DAT_00c71678[0x6eaa] >> 2));
      }
      local_104 = DAT_00c71678;
      uVar11 = FUN_00812d00(local_14c);
      local_130 = (float *)FUN_00428b20(0x3b6,1,uVar11,&DAT_00c7b640,param_1,0,param_1[0xfb]);
      (**(code **)((int)*local_130 + 0xc))();
      local_128 = (float **)(local_130 + 0xf0);
      if (*local_128 != (float *)0x0) {
        local_fc = local_128;
        FUN_004cf210(&local_fc);
      }
      *local_128 = (float *)param_1;
      FUN_004cdcf0(local_128);
      if (param_1[0xef] != (float *)0x0) {
        local_fc = param_1 + 0xef;
        FUN_004cf210(&local_fc);
      }
      param_1[0xef] = local_130;
      FUN_004cdcf0(param_1 + 0xef);
      param_1[0xcf] = (float *)((float)local_114 + (float)param_1[0xcf]);
      param_1[0xd0] = (float *)((float)local_118 + (float)param_1[0xd0]);
    }
    ppfVar17 = DAT_00c71678;
    if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
      if (local_110 == (float **)0x7) goto LAB_004ac08d;
      FUN_0082f1c0(99,0);
    }
    else {
      if (local_110 != (float **)0x7) {
        pfVar18 = ppfVar15[0x47e];
        if (*(char *)(pfVar18 + 0x23) == '\0') {
          FUN_00945130(param_1 + 0xcf);
          *(undefined *)(pfVar18 + 0x23) = 1;
        }
        break;
      }
LAB_004ac08d:
      pfVar18 = DAT_00c71678[0x6eaa];
      if (pfVar18 != DAT_00c71678[0x6eab]) {
        do {
          fVar16 = *pfVar18;
          pfVar18 = pfVar18 + 1;
          *(undefined *)((int)fVar16 + 0x410) = 1;
        } while (pfVar18 != ppfVar17[0x6eab]);
      }
      FUN_007eb1b0();
      *(undefined *)(DAT_00c71678 + 0x8bb4) = 1;
    }
    param_1[0x62] = (float *)&DAT_00000004;
    param_1[0x2d9] = (float *)0x3;
    FUN_0040a380(&DAT_00b1bc54,0);
    param_1[0x2e8] = (float *)&DAT_0000003c;
    FUN_007067c0(&DAT_00c33c70,1);
    uVar11 = FUN_009beba0(local_14c,0);
    FUN_00944d40(uVar11);
    local_138[1][0x11] = (float)((uint)local_138[1][0x11] | 0x8000);
    break;
  case (float *)0x3:
    param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa3a4);
    local_110 = (float **)param_1[0xef][0xcf];
    local_104 = (float **)param_1[0xef][0xd0];
    FUN_006bec40(&local_10c,0);
    local_124 = (float)local_10c - (float)param_1[0xcf];
    local_128 = (float **)(param_1[0xef] + 0xde);
    ppfVar15 = (float **)(param_1[0xef] + 0xdd);
    local_130 = (float *)((float)local_108 - (float)param_1[0xd0]);
    local_120 = local_124;
    local_11c = local_130;
    ppfVar17 = DAT_00baa54c;
    FUN_0041d540();
    local_138 = ppfVar17;
    local_fc = DAT_00baa54c;
    FUN_0041d520();
    local_10c = (float **)((float)local_138 * local_124 - (float)local_fc * (float)local_130);
    local_108 = (float *)((float)local_138 * (float)local_130 + (float)local_fc * local_124);
    FUN_00a10030(&local_154);
    local_110 = (float **)((float)local_110 - (float)param_1[0xcf]);
    local_104 = (float **)((float)local_104 - (float)param_1[0xd0]);
    local_10c = (float **)((float)local_110 * (float)local_138 - (float)local_104 * (float)local_fc)
    ;
    local_108 = (float *)((float)local_110 * (float)local_fc + (float)local_104 * (float)local_138);
    FUN_00a10030(&local_100);
    if ((float)local_104 * (float)local_130 + (float)local_110 * local_124 <= 0.0) {
LAB_004ac401:
      uVar22 = 0;
      uVar11 = FUN_00a10100(local_14c,param_1[0x30d]);
      FUN_004314b0(uVar11,uVar22);
      fVar16 = DAT_00baa2d0;
    }
    else {
      if ((float)*ppfVar15 <= (float)*local_128 && (float)*local_128 != (float)*ppfVar15) {
        ppfVar15 = local_128;
      }
      if ((float)*ppfVar15 * param_1[0xef][0xdc] + (float)param_1[0xdc] <
          (float)((uint)((float)local_104 * (float)local_150 + local_154 * (float)local_110) &
                 DAT_00bacb40)) goto LAB_004ac401;
      uVar22 = 0;
      fVar16 = (float)local_fc * (float)local_130 + (float)local_100 * local_124;
      local_108 = (float *)(fVar16 * (float)local_fc);
      local_10c = (float **)(fVar16 * (float)local_100);
      uVar11 = FUN_00a10100(local_14c,param_1[0x30d]);
      FUN_004314b0(uVar11,uVar22);
      fVar16 = DAT_00baa3e0;
    }
    if (param_1[0x2fb] != (float *)0x0) {
      fVar16 = DAT_00baa0d0;
    }
    fVar19 = DAT_00baa3e0;
    FUN_00684cb0();
    param_1[0x30d] = (float *)(((float)param_1[0x30d] - fVar16) * fVar19 + fVar16);
    if ((0 < (int)param_1[0x2e8]) &&
       (pfVar18 = (float *)((int)param_1[0x2e8] - (int)local_118), param_1[0x2e8] = pfVar18,
       (int)pfVar18 < 1)) {
      uVar6 = FUN_006eef60();
      pfVar18 = (float *)(uVar6 & 3);
      goto LAB_004ace95;
    }
    break;
  case (float *)0x8:
    pfVar18 = param_1[0x104];
    param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa3a4);
    if (0 < (int)pfVar18) {
      pfVar18 = (float *)((int)pfVar18 + (int)local_118);
      param_1[0x104] = pfVar18;
    }
    if ((int)pfVar18 < 0x5a) {
      iVar10 = FUN_006be840();
      local_114 = *(float **)(iVar10 + 0x33c);
      local_11c = *(float **)(iVar10 + 0x340);
      local_10c = (float **)((float)param_1[0xcf] + 0.0);
      local_108 = (float *)((float)param_1[0xd0] - DAT_00baa854);
      local_140 = (float **)((float)(int)param_1[0x104] / DAT_00baa87c);
      if ((float)DAT_00baa454 <= (float)(float **)((float)(int)param_1[0x104] / DAT_00baa87c)) {
        local_140 = DAT_00baa454;
      }
      cVar5 = FUN_0040b030("Shoot");
      fVar16 = DAT_00baa120;
      if (cVar5 != '\0') {
        FUN_0067f1d0();
        local_12c = 0.0;
        local_128 = (float **)0xc1f00000;
        iVar10 = 0;
        if (0 < 0x5a - (int)param_1[0x104]) {
          iVar10 = 0x5a - (int)param_1[0x104];
        }
        ppfVar15 = local_fc;
        FUN_00499d60(iVar10 + 0xf,&local_12c,param_1,0);
        piVar12 = (int *)FUN_0096f310(1,&local_10c,(float)ppfVar15 * DAT_00baa948);
        ppfVar15 = local_fc;
        iVar10 = DAT_00baabc4;
        if (param_1[0x2f0] == (float *)0x1) {
          iVar10 = DAT_00baae30;
        }
        piVar12[0xd6] = iVar10;
        local_128 = (float **)0x42c80000;
        local_fc = (float **)
                   (((float)local_11c - (float)local_108) * (float)local_fc +
                   ((float)local_114 - (float)local_10c) * (float)local_100);
        pppfVar7 = &local_fc;
        if ((float)local_fc <= DAT_00baa9d0) {
          pppfVar7 = &local_128;
        }
        ppfVar17 = *pppfVar7;
        param_1[0xce] = (float *)((float)ppfVar17 * (float)ppfVar15 + (float)local_108);
        param_1[0xcd] = (float *)((float)ppfVar17 * (float)local_100 + (float)local_10c);
        *(undefined *)(piVar12 + 0x146) = 1;
        if ((int)param_1[0x104] < 1) {
          FUN_006d6ba0(0x224,0x3f800000,2,0,0x3f800000);
          FUN_00703670(10);
          pfVar18 = param_1[0xcd];
          pfVar21 = param_1[0xce];
        }
        else {
          pfVar18 = (float *)(((float)local_114 - (float)param_1[0xcd]) * DAT_00baa120 +
                             (float)param_1[0xcd]);
          param_1[0xcd] = pfVar18;
          pfVar21 = (float *)(((float)local_11c - (float)param_1[0xce]) * DAT_00baa120 +
                             (float)param_1[0xce]);
          param_1[0xce] = pfVar21;
        }
        piVar12[0xcd] = (int)pfVar18;
        piVar12[0xce] = (int)pfVar21;
        iVar4 = DAT_00c34b7c;
        iVar9 = DAT_00c34b78;
        iVar10 = DAT_00c34b74;
        piVar12[0x10a] = DAT_00c34b70;
        piVar12[0x10b] = iVar10;
        piVar12[0x10c] = iVar9;
        piVar12[0x10d] = iVar4;
        (**(code **)(*piVar12 + 0xc))();
        FUN_006a92e0(piVar12);
        if (param_1[0x2f0] == (float *)0x3) {
          pcVar8 = "BrimstoneLoopDown";
        }
        else {
          pcVar8 = "BrimstoneLoopUp";
          if (param_1[0x2f0] != (float *)0x1) {
            pcVar8 = "BrimstoneLoopRight";
          }
        }
        FUN_0040a380(pcVar8,0);
        fVar16 = DAT_00baa120;
        if (param_1[0x104] == (float *)0x0) {
          param_1[0x104] = (float *)0x1;
        }
      }
      if ((param_1[0xf0] != (float *)0x0) && (param_1[0xf0][10] == 9.809089e-45)) {
        local_104 = (float **)param_1[0x2ee];
        if ((float)local_104 < (float)DAT_00baa454) {
          local_104 = (float **)((float)local_104 + (float)param_1[0xe7] * DAT_00baa08c);
          if ((float)DAT_00baa454 <= (float)local_104) {
            local_104 = DAT_00baa454;
          }
          param_1[0x2ee] = (float *)local_104;
        }
        local_110 = (float **)
                    (((float)local_11c - (float)param_1[0xce]) * fVar16 * (float)local_104);
        local_104 = (float **)
                    (((float)local_114 - (float)param_1[0xcd]) * fVar16 * (float)local_104);
        fVar16 = (float)local_110 * (float)local_110 + (float)local_104 * (float)local_104;
        FUN_00435a50();
        if (fVar16 <= DAT_00baa75c) {
          if ((fVar16 < DAT_00baa630) && (0.0 < fVar16)) {
            local_110 = (float **)((DAT_00baa630 / fVar16) * (float)local_110);
            local_104 = (float **)((DAT_00baa630 / fVar16) * (float)local_104);
          }
        }
        else if (0.0 < fVar16) {
          local_104 = (float **)((float)local_104 * (DAT_00baa75c / fVar16));
          local_110 = (float **)((float)local_110 * (DAT_00baa75c / fVar16));
        }
        local_104 = (float **)
                    ((float)local_140 * (float)local_104 * (float)param_1[0xe7] +
                    (float)param_1[0xcd]);
        local_140 = (float **)
                    ((float)local_140 * (float)local_110 * (float)param_1[0xe7] +
                    (float)param_1[0xce]);
        local_110 = local_10c;
        local_150 = (float **)((float)local_104 - (float)local_10c);
        local_128 = (float **)((float)local_140 - (float)local_108);
        local_118 = local_108;
        ppfVar15 = local_128;
        FUN_00499d60();
        local_fc = (float **)((float)ppfVar15 * DAT_00baa948);
        fVar16 = (float)param_1[0xce] - (float)local_118;
        FUN_00499d60();
        fVar16 = (float)local_fc - fVar16 * DAT_00baa948;
        FUN_00682740();
        ppfVar15 = local_140;
        ppfVar17 = local_104;
        if (DAT_00baa81c < (float)((uint)fVar16 & DAT_00bacb40)) {
          local_fc = (float **)((DAT_00baa81c - fVar16) * DAT_00baa088);
          ppfVar15 = local_fc;
          FUN_0041d540();
          local_104 = ppfVar15;
          ppfVar17 = local_fc;
          FUN_0041d520();
          ppfVar15 = (float **)
                     ((float)local_104 * (float)local_128 + (float)ppfVar17 * (float)local_150 +
                     (float)local_118);
          ppfVar17 = (float **)
                     (((float)local_104 * (float)local_150 - (float)ppfVar17 * (float)local_128) +
                     (float)local_110);
        }
        param_1[0xcd] = (float *)ppfVar17;
        param_1[0xce] = (float *)ppfVar15;
        pfVar18 = param_1[0xcd];
        if (((float)local_118 - (float)ppfVar15) * ((float)local_118 - (float)ppfVar15) +
            ((float)local_110 - (float)pfVar18) * ((float)local_110 - (float)pfVar18) < DAT_00baac08
           ) {
          local_100 = (float *)((float)pfVar18 - (float)local_110);
          local_fc = (float **)((float)ppfVar15 - (float)local_118);
          pfVar21 = (float *)FUN_00a10100(local_14c,0x42700000);
          pfVar18 = (float *)((float)local_110 + *pfVar21);
          fVar16 = pfVar21[1];
          param_1[0xcd] = pfVar18;
          param_1[0xce] = (float *)((float)local_118 + fVar16);
        }
        pfVar2 = param_1[0xf0];
        pfVar21 = param_1[0xce];
        pfVar2[0xcd] = (float)pfVar18;
        pfVar2[0xce] = (float)pfVar21;
        if (0xf < (int)param_1[0x104]) {
          local_100 = (float *)((float)local_114 - (float)local_10c);
          local_fc = (float **)((float)local_11c - (float)local_108);
          ppfVar15 = (float **)FUN_0067f260();
          local_fc = ppfVar15;
          if ((ppfVar15 != (float **)param_1[0x2f0]) &&
             ((uVar6 = FUN_006eef60(), (uVar6 & 3) == 0 ||
              (((float)local_11c - (float)param_1[0xce]) * ((float)local_11c - (float)param_1[0xce])
               + ((float)local_114 - (float)param_1[0xcd]) *
                 ((float)local_114 - (float)param_1[0xcd]) < DAT_00baabf0)))) {
            (**(code **)((int)*param_1[0xf0] + 0x28))();
            param_1[0x2f0] = (float *)ppfVar15;
            if (local_fc == (float **)0x3) {
              FUN_0040a380("BrimstoneStartDown",0);
            }
            else if (local_fc == (float **)0x1) {
              FUN_0040a380("BrimstoneStartUp",0);
            }
            else {
              FUN_0040a380("BrimstoneStartRight",0);
              *(bool *)(param_1 + 0x52) = param_1[0x2f0] == (float *)0x0;
            }
            iVar10 = FUN_00440e30();
            FUN_0040a720(iVar10 + -2);
            param_1[0x2f1] = (float *)&DAT_00000004;
            FUN_006d6ba0(0x51,0x3f000000,2,0,0x3f800000);
            param_1[0x2ee] = (float *)0x0;
          }
        }
      }
    }
    else {
      cVar5 = FUN_004073b0();
      if (cVar5 != '\0') {
        if ((param_1[0x2f0] == (float *)0x3) || (param_1[0x2f0] == (float *)0x1)) {
          pcVar8 = "BrimstoneEndDown";
        }
        else {
          pcVar8 = "BrimstoneEndRight";
        }
        FUN_0040a380(pcVar8,0);
      }
      cVar5 = FUN_0040a550(&DAT_00b1a4ec);
      if (cVar5 != '\0') {
        FUN_0040a380(&DAT_00b1bc54,0);
        *(undefined *)(param_1 + 0x52) = 0;
        param_1[0x2d9] = (float *)0x3;
      }
    }
    break;
  case (float *)0x9:
    param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa304);
    cVar5 = FUN_0040b030("Shoot");
    if (cVar5 != '\0') {
      FUN_006d6ba0(0x226,0x3f800000,2,0,0x3f800000);
      iVar10 = FUN_0040b220(0);
      *(undefined4 *)(iVar10 + 0x60) = 0x3f800000;
      uVar6 = FUN_006eef60();
      for (iVar10 = (uVar6 & 1) + 3; iVar10 != 0; iVar10 = iVar10 + -1) {
        iVar9 = FUN_006eef60();
        fVar16 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa704;
        local_fc = (float **)(fVar16 + fVar16);
        ppfVar15 = local_fc;
        FUN_0041d540();
        local_10c = (float **)((float)ppfVar15 * DAT_00baa7b8);
        ppfVar15 = local_fc;
        FUN_0041d520();
        local_108 = (float *)((float)ppfVar15 * DAT_00baa7b8);
        AI_0043ef30();
        local_a0 = 0;
        local_9c = 0x4000;
        local_e4 = 0x3fc00000;
        iVar9 = FUN_006eef60();
        local_ec = 0xbdc49ba6;
        local_f0 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa6fc;
        FUN_006cb2e0(param_1 + 0xcf,&local_10c,0,local_f8);
      }
      param_1[0x104] = (float *)((int)param_1[0x104] + 1);
    }
    cVar5 = FUN_0040b030("Splat");
    if (cVar5 == '\0') {
LAB_004ace68:
      pfVar18 = (float *)0xffffffff;
    }
    else {
      if ((int)param_1[0x104] < 3) {
        FUN_0040a720(6);
        goto LAB_004ace68;
      }
      if (DAT_00baa2d0 <= (float)local_110) goto LAB_004ace68;
      uVar6 = FUN_006eef60();
      pfVar18 = (float *)0xffffffff;
      if ((uVar6 & 1) == 0) {
        pfVar18 = local_114;
      }
    }
    cVar5 = FUN_0040a550(&DAT_00b1a4ec);
    if (cVar5 != '\0') {
      FUN_0040a380(&DAT_00b1bc54,0);
      param_1[0x2d9] = (float *)0x3;
    }
LAB_004ace95:
    if (-1 < (int)pfVar18) {
      local_fc = (float **)FUN_006be840();
      switch(pfVar18) {
      case (float *)0x0:
        if ((float)((uint)((float)local_fc[0xcf] - (float)param_1[0xcf]) & DAT_00bacb40) <=
            (float)((uint)((float)local_fc[0xd0] - (float)param_1[0xd0]) & DAT_00bacb40)) {
          if (0.0 <= (float)local_fc[0xd0] - (float)param_1[0xd0]) {
            pfVar18 = (float *)0x3;
            pcVar8 = "BrimstoneStartDown";
          }
          else {
            pfVar18 = (float *)0x1;
            pcVar8 = "BrimstoneStartUp";
          }
          FUN_0040a380(pcVar8,0);
        }
        else {
          pfVar18 = (float *)0x0;
          if (0.0 <= (float)local_fc[0xcf] - (float)param_1[0xcf]) {
            pfVar18 = local_114;
          }
          FUN_0040a380("BrimstoneStartRight",0);
          *(bool *)(param_1 + 0x52) = pfVar18 == (float *)0x0;
        }
        param_1[0x2f0] = pfVar18;
        param_1[0x2ee] = (float *)0x0;
        param_1[0x2d9] = (float *)&DAT_00000008;
        FUN_006d6ba0(0x223,0x3f800000,2,0,0x3f800000);
        iVar10 = FUN_0040b220(0);
        *(undefined4 *)(iVar10 + 0x60) = 0x40000000;
        param_1[0x2e8] = (float *)&DAT_00000014;
        break;
      case (float *)0x1:
        FUN_0040a380("JacobAttack",0);
        param_1[0x2d9] = (float *)0x9;
        param_1[0x2e8] = (float *)0x28;
        break;
      case (float *)0x2:
        FUN_0040a380("CrossStart",0);
        param_1[0x2d9] = (float *)0xa;
        param_1[0x2e8] = (float *)&DAT_00000005;
        break;
      case (float *)0x3:
        FUN_0040a380("GodheadStart",0);
        param_1[0x2d9] = (float *)0xb;
        param_1[0x2e8] = (float *)&DAT_0000003c;
        break;
      case (float *)0x4:
        FUN_0040a380("BlackholeAttack",0);
        param_1[0x2d9] = (float *)0xc;
        param_1[0x2e8] = (float *)0x96;
        *(bool *)(param_1 + 0x52) =
             (float)local_fc[0xcf] <= (float)param_1[0xcf] &&
             (float)param_1[0xcf] != (float)local_fc[0xcf];
        FUN_006d6ba0(0x21f,0x3f800000,2,0,0x40000000);
      }
      param_1[0x2ec] = param_1[0xcf];
      param_1[0x2ed] = param_1[0xd0];
      uVar6 = FUN_006eef60();
      param_1[0x104] = (float *)0x0;
      param_1[0x2e8] = (float *)((int)param_1[0x2e8] + uVar6 % 0x1e);
    }
    break;
  case (float *)0xa:
    param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa304);
    param_1[0xd8] = (float *)((float)param_1[0x2ec] - (float)param_1[0xcf]);
    param_1[0xd9] = (float *)((float)param_1[0x2ed] - (float)param_1[0xd0]);
    pfVar18 = param_1[0x104];
    if ((0 < (int)pfVar18) && (local_114 = (float *)0x0, 0 < (int)local_118)) {
      do {
        local_124 = (float)(((int)pfVar18 + -1) / 5);
        if ((((int)pfVar18 + -1) % 5 == 0) && ((int)local_124 < 5)) {
          local_fc = (float **)(DAT_00baa81c - (float)(int)local_124 * fVar16);
          FUN_006d6ba0(0x10b,0x3f000000,2,0,0x3f800000);
          FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
          AI_0043ef30();
          local_ec = 0xbdc8b439;
          local_f0 = -0.5;
          local_104 = (float **)0x0;
          do {
            ppfVar15 = local_104;
            FUN_0067f1d0();
            local_10c = (float **)((float)local_10c * (float)local_fc);
            local_108 = (float *)((float)local_108 * (float)local_fc);
            if (ppfVar15 == (float **)0x3) {
              local_10c = (float **)((float)local_10c * DAT_00baa528);
              local_108 = (float *)((float)local_108 * DAT_00baa528);
            }
            iVar10 = 0;
            local_138 = local_10c;
            local_130 = local_108;
            if (0 < (int)local_124) {
              local_11c = (float *)((float)((int)local_124 + -1) * DAT_00baa2d0);
              do {
                ppfVar15 = (float **)
                           (((float)iVar10 - (float)local_11c) * DAT_00baa89c * DAT_00baa088);
                local_128 = ppfVar15;
                FUN_0041d540();
                local_150 = ppfVar15;
                ppfVar15 = local_128;
                FUN_0041d520();
                local_144 = (float)local_150 * (float)local_138 - (float)ppfVar15 * (float)local_130
                ;
                local_140 = (float **)
                            ((float)local_150 * (float)local_130 +
                            (float)ppfVar15 * (float)local_138);
                FUN_006cb2e0(param_1 + 0xcf,&local_144,0,local_f8);
                iVar10 = iVar10 + 1;
              } while (iVar10 < (int)local_124);
            }
            local_104 = (float **)((int)local_104 + 1);
            fVar16 = DAT_00baa2d0;
          } while (local_104 < &DAT_00000004);
        }
        pfVar18 = (float *)((int)param_1[0x104] + 1);
        param_1[0x104] = pfVar18;
        if (0x19 < (int)pfVar18) {
          if ((DAT_00baa220 <= (float)local_110) || (uVar6 = FUN_006eef60(), (uVar6 & 1) != 0)) {
            FUN_0040a380("CrossEnd",0);
          }
          else {
            FUN_0040a380("Scream",0);
            param_1[0x2d9] = (float *)0xd;
          }
          param_1[0x104] = (float *)0xffffffff;
          break;
        }
        local_114 = (float *)((int)local_114 + 1);
      } while ((int)local_114 < (int)local_118);
    }
    cVar5 = FUN_0040b030("Shoot");
    if (cVar5 != '\0') {
      param_1[0x104] = (float *)0x1;
    }
    cVar5 = FUN_0040a550(&DAT_00b1a4ec);
    if (cVar5 != '\0') {
      if ((int)param_1[0x104] < 1) {
        FUN_0040a380(&DAT_00b1bc54,0);
        param_1[0x2d9] = (float *)0x3;
      }
      else {
        FUN_0040a380("CrossLoop",0);
      }
    }
    break;
  case (float *)0xb:
    param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa304);
    cVar5 = FUN_0040b030("Shoot");
    if (cVar5 != '\0') {
      FUN_006d6ba0(0x225,0x3f800000,2,0,0x3f800000);
      iVar10 = FUN_0040b220(0);
      *(undefined4 *)(iVar10 + 0x60) = 0x3f800000;
      iVar10 = FUN_006be840();
      local_10c = (float **)(*(float *)(iVar10 + 0x33c) - (float)param_1[0xcf]);
      local_108 = (float *)(*(float *)(iVar10 + 0x340) - (float)param_1[0xd0]);
      FUN_00a10030(local_14c);
      FUN_006eef60();
      AI_0043ef30();
      local_ec = 0xbda3d70a;
      local_e4 = 0x40000000;
      local_e0 = 0x3ec90fdb;
      if ((*(byte *)(param_1 + 0x104) & 1) != 0) {
        local_e0 = 0;
      }
      local_a0 = 0;
      local_9c = 0x8000;
      local_10c = (float **)0x40e00000;
      local_108 = (float *)0x41000000;
      FUN_006cb2e0(param_1 + 0xcf,&local_10c,9,local_f8);
    }
    cVar5 = FUN_0040a550(&DAT_00b1a4ec);
    if (cVar5 != '\0') {
      iVar10 = 3;
      if ((float)local_110 < DAT_00baa2d0) {
        iVar10 = 4;
      }
      if (param_1[0x104] == (float *)0xffffffff) goto LAB_004ad5b4;
      if ((int)param_1[0x104] < iVar10) {
        FUN_0040a380("GodheadShoot",1);
        param_1[0x104] = (float *)((int)param_1[0x104] + 1);
      }
      else {
        FUN_0040a380("GodheadEnd",0);
        param_1[0x104] = (float *)0xffffffff;
      }
    }
    break;
  case (float *)0xc:
    param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa304);
    cVar5 = FUN_0040b030("Shoot");
    if (cVar5 != '\0') {
      FUN_006d6ba0(0x220,0x3f800000,2,0,0x3f800000);
      FUN_0092e230(0x21f);
      iVar10 = FUN_006be840();
      local_100 = (float *)(*(float *)(iVar10 + 0x33c) - (float)param_1[0xcf]);
      local_fc = (float **)(*(float *)(iVar10 + 0x340) - (float)param_1[0xd0]);
      FUN_00a10030(&local_10c);
      *(bool *)(param_1 + 0x52) = (float)local_10c < 0.0;
      uVar11 = FUN_006eef60();
      local_100 = (float *)((float)local_10c * DAT_00baa854);
      local_fc = (float **)((float)local_108 * DAT_00baa854);
      piVar12 = (int *)FUN_00428b20(1000,0xab,param_1 + 0xcf,&local_100,param_1,0,uVar11);
      (**(code **)(*piVar12 + 0xc))();
      piVar12[0xd3] = 0;
      piVar12[0xd4] = -0x3dc80000;
      FUN_006d0c20(piVar12);
    }
    cVar5 = FUN_0040b090("Sound");
    if (((cVar5 != '\0') && (cVar5 = FUN_0040b090("Splat"), cVar5 == '\0')) &&
       (iVar10 = FUN_006ac760(), iVar10 != 0)) {
      uVar11 = FUN_006eef60();
      piVar12 = (int *)FUN_00428b20(1000,0xab,param_1 + 0xcf,&DAT_00c7b640,param_1,1,uVar11);
      (**(code **)(*piVar12 + 0xc))();
      iVar10 = FUN_006eef60();
      local_fc = (float **)
                 ((float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                  DAT_00ba9ff4 * DAT_00baa198 + DAT_00baa198);
      iVar10 = FUN_006eef60();
      piVar12[0xd3] = 0;
      piVar12[0xd4] = -0x3dc80000;
      piVar12[0x39] =
           (int)((float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa198 + DAT_00baa2d0);
      piVar12[0x3a] = (int)local_fc;
    }
    cVar5 = FUN_0040a550(&DAT_00b1a4ec);
    if (cVar5 != '\0') {
      FUN_0040a380(&DAT_00b1bc54,0);
      param_1[0x2d9] = (float *)0x3;
      *(undefined *)(param_1 + 0x52) = 0;
    }
    break;
  case (float *)0xd:
    if (param_1[0x104] < &DAT_0000000f) {
      FUN_00703670(4);
      param_1[0x2ee] = (float *)((float)param_1[0xe7] * DAT_00baa904 + (float)param_1[0x2ee]);
      FUN_006bec40(local_14c,0);
      FUN_00417510(ppfVar15 + 0x496);
      local_14 = 0;
      local_138 = (float **)0x0;
      if (local_158 != (float **)0x0) {
        do {
          auVar3 = _DAT_00baaf00;
          piVar12 = *(int **)(local_160 + (int)local_138 * 4);
          if ((((piVar12 != (int *)0x0) && (piVar12[10] == 9)) && (piVar12[0xd] == 0x3b6)) &&
             ((piVar12[0xc] == 0 &&
              (((float)param_1[0xd0] - (float)piVar12[0xd0]) *
               ((float)param_1[0xd0] - (float)piVar12[0xd0]) +
               ((float)param_1[0xcf] - (float)piVar12[0xcf]) *
               ((float)param_1[0xcf] - (float)piVar12[0xcf]) <=
               (float)param_1[0x2ee] * (float)param_1[0x2ee])))) {
            local_50 = _DAT_00bac7b0;
            uStack_4c = _UNK_00bac7b4;
            uStack_48 = _UNK_00bac7b8;
            uStack_44 = _UNK_00bac7bc;
            piVar12[0xc] = 1;
            _local_40 = auVar3;
            local_30 = 0;
            local_2c = 0;
            local_28 = 0;
            (**(code **)(*piVar12 + 0x3c))(&local_50,0xc,0xff,1,1);
            uVar6 = piVar12[0x10e];
            piVar12[0x115] = piVar12[0x10f];
            piVar12[0x116] = 0x40000000;
            piVar12[0x104] = -0x3e240000;
            piVar12[0x106] = -0x4251eb85;
            piVar12[0x105] = (int)&DAT_bf800000;
            piVar12[0x10a] = -0x40000000;
            piVar12[0x10f] = piVar12[0x10f] | 3;
            piVar12[0x117] = (int)(float)piVar12[0xe9] + 0x14;
            piVar12[0x10e] = uVar6 | 0x8080000;
            piVar12[0x114] = uVar6 & 0xf7ffffff;
            local_128 = (float **)FUN_006be840();
            if (piVar12[0xf1] != 0) {
              local_fc = (float **)(piVar12 + 0xf1);
              FUN_004cf210(&local_fc);
            }
            piVar12[0xf1] = (int)local_128;
            if (local_128 != (float **)0x0) {
              FUN_004cdcf0(piVar12 + 0xf1);
            }
            piVar12[0x10b] = 0x3f59999a;
            param_1[0x2f0] = (float *)((int)param_1[0x2f0] + 1);
          }
          local_138 = (float **)((int)local_138 + 1);
        } while (local_138 < local_158);
      }
      local_14 = 0xffffffff;
      FUN_004175b0();
    }
    cVar5 = FUN_0040b030("Shoot");
    if (cVar5 != '\0') {
      param_1[0x104] = (float *)0x0;
      param_1[0x2ee] = (float *)0x0;
      FUN_00703770(param_1 + 0xcf,0x3ca3d70a,0x3d8f5c29,0x14);
      param_1[0x2f0] = (float *)0x0;
      FUN_006d6ba0(0x228,0x3f800000,2,0,0x3f800000);
    }
    cVar5 = FUN_0040a550(&DAT_00b1a4ec);
    if (cVar5 != '\0') {
LAB_004ad5b4:
      FUN_0040a380(&DAT_00b1bc54,0);
      param_1[0x2d9] = (float *)0x3;
    }
    break;
  case (float *)0x10:
    FUN_00944d10(param_1 + 0xcf);
    pfVar18 = (float *)((float)param_1[0xdb] * DAT_00baa2d0);
    param_1[0x62] = (float *)0x0;
    param_1[0xdb] = pfVar18;
    cVar5 = FUN_0040b030("Sound");
    if (cVar5 != '\0') {
      local_138 = (float **)0x0;
      if (ppfVar15[0x499] != (float *)0x0) {
        do {
          local_fc = (float **)ppfVar15[0x497][(int)local_138];
          if (local_fc[0xd] == (float *)0x3b6) {
            pfVar18 = local_fc[10];
            if (pfVar18 == (float *)0x9) {
              local_fc[0x10e] = (float *)0x0;
              local_fc[0x10f] = (float *)0x0;
              goto LAB_004adc69;
            }
            if (pfVar18 == (float *)0x7) {
              local_fc[0x116] = (float *)0x1;
            }
            else if (pfVar18 == (float *)0x3e8) {
              if (local_fc[0xb] == (float *)0x7e) {
                local_fc[0x114] = (float *)0x1;
              }
              else {
                if ((local_fc[0xb] != (float *)0xab) || (local_fc[0xc] != (float *)0x0))
                goto LAB_004adc70;
                local_fc[0x114] = (float *)0x2;
                FUN_0040a380("Fizzle",0);
              }
LAB_004adc69:
              *(undefined *)((int)local_fc + 0x173) = 1;
            }
          }
LAB_004adc70:
          local_138 = (float **)((int)local_138 + 1);
        } while (local_138 < ppfVar15[0x499]);
      }
      local_104 = (float **)0x0;
      if (param_1[0x305] != (float *)0x0) {
        do {
          puVar1 = (undefined *)((int)local_104 + (int)param_1[0x304]);
          uVar6 = (uint)puVar1 & 1;
          local_10c = *(float ***)
                       ((int)param_1[0x302][(uint)puVar1 >> 1 & (int)param_1[0x303] - 1U] +
                       uVar6 * 8);
          local_108 = *(float **)
                       ((int)param_1[0x302][(uint)puVar1 >> 1 & (int)param_1[0x303] - 1U] + 4 +
                       uVar6 * 8);
          local_fc = *(float ***)
                      ((int)param_1[0x302]
                            [(uint)((undefined *)((int)local_104 + 2) + (int)param_1[0x304]) >> 1 &
                             (int)param_1[0x303] - 1U] +
                      ((uint)((undefined *)((int)local_104 + 2) + (int)param_1[0x304]) & 1) * 8);
          uVar11 = FUN_006eef60();
          iVar10 = FUN_00428b20(1000,200,&local_10c,&DAT_00c7b640,0,0,uVar11);
          local_104 = (float **)((int)local_104 + 3);
          *(undefined4 *)(iVar10 + 0xdc) = 0;
          *(float ***)(iVar10 + 0xe0) = local_fc;
        } while (local_104 < param_1[0x305]);
      }
      FUN_00499380();
      FUN_00499380();
      FUN_006d6ba0(0x1e,0x3f800000,2,0,0x3f800000);
    }
    FUN_0040b030("Shoot");
    cVar5 = FUN_0040b030("Splat");
    if (cVar5 != '\0') {
      uVar11 = FUN_006eef60();
      piVar12 = (int *)FUN_00428b20(1000,0x84,param_1 + 0xcf,&DAT_00c7b640,param_1,2,uVar11);
      (**(code **)(*piVar12 + 0xc))();
      FUN_006d6ba0(0xe2,0x3f800000,2,0,0x3f800000);
    }
    cVar5 = FUN_0040a550(&DAT_00b1a4ec);
    if (cVar5 != '\0') {
      FUN_006c0f30(0x3b6,2,0,0xffffffff);
      FUN_0040a380("Appear",0);
      FUN_006d6ba0(0x22f,0x3f19999a,2,0,0x3f800000);
    }
  }
  if ((param_1[0x2d9] != (float *)0x2) && (iVar10 = FUN_006ac760(), iVar10 != 0)) {
    uVar11 = FUN_006eef60();
    piVar12 = (int *)FUN_00428b20(1000,0xa9,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar11);
    iVar10 = FUN_006eef60();
    piVar12[0x117] = 0x3c;
    piVar12[0x118] = 0x3c;
    fVar16 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) * DAT_00ba9ff4 +
             DAT_00baa2d0;
    piVar12[0x39] = (int)fVar16;
    piVar12[0x3a] = (int)fVar16;
    (**(code **)(*piVar12 + 0xc))();
  }
LAB_004ae458:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

