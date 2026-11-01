/* Local J460 decompiler output.
 * VA: 0x00596120
 * Entry: 00596120
 * Dispatcher: 0x006c2990
 * Types: 951
 * Identities: 951.0.0,951.1.0,951.10.0,951.100.0,951.101.0,951.102.0,951.103.0,951.104.0,951.11.0,951.2.0,951.20.0,951.21.0,951.22.0,951.23.0,951.3.0,951.30.0,951.31.0,951.40.0,951.41.0,951.42.0
 * Evidence: dispatcher=0x006c2990; end=0x00596c60; instructions=642
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=951;
   identities=951.0.0,951.1.0,951.10.0,951.100.0,951.101.0,951.102.0,951.103.0,951.104.0,951.11.0,951.2.0,951.20.0,951.21.0,951.22.0,951.23.0,951.3.0,951.30.0,951.31.0,951.40.0,951.41.0,951.42.0;
   dispatcher=0x006c2990; end=0x00596c60; instructions=642 */

void __fastcall AI_00596120(int *param_1)

{
  float *pfVar1;
  int iVar2;
  undefined *puVar3;
  int iVar4;
  undefined4 uVar5;
  int *piVar6;
  uint uVar7;
  undefined4 *puVar8;
  uint uVar9;
  int **ppiVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  double dVar19;
  uint uStack_70;
  float local_50;
  float local_4c;
  code *local_48;
  float local_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  int iStack_30;
  int iStack_2c;
  int iStack_28;
  int iStack_24;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  int iStack_14;
  float fStack_10;
  int *piStack_c;
  
  fVar12 = DAT_00baaa94;
  fVar13 = DAT_00baa1f8;
  if (param_1[0x2dd] == 1) {
    if (*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x20) - DAT_00baa8d0 <
        (float)param_1[0xd0] + DAT_00baa950) {
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa2d0);
    }
    if (param_1[0xc] == 4) {
      return;
    }
    fVar13 = (float)param_1[0xcd];
    if (((NAN(fVar13) || NAN(DAT_00c7b640)) != (fVar13 == DAT_00c7b640)) &&
       ((NAN((float)param_1[0xce]) || NAN(DAT_00c7b644)) != ((float)param_1[0xce] == DAT_00c7b644)))
    {
      return;
    }
    param_1[0xd8] = (int)(fVar13 - (float)param_1[0xcf]);
    param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
    return;
  }
  iVar4 = param_1[0x2d9];
  if (iVar4 == 0) {
    param_1[0x2d9] = 3;
    uVar7 = -(uint)(param_1[0xc] != 0) & param_1[0xc];
    uVar9 = 4;
    if (uVar7 < 4) {
      uVar9 = uVar7;
    }
    FUN_0040a380((&PTR_DAT_00b62284)[uVar9],0);
    param_1[0x5b] = param_1[0x5b] | 0x2408;
    param_1[0x3c6] = 1;
    param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 0x44050011;
    uVar7 = -(uint)(param_1[0xc] != 0) & param_1[0xc];
    uVar9 = 4;
    if (uVar7 < 4) {
      uVar9 = uVar7;
    }
    param_1[0xd4] = *(int *)(&DAT_00b62298 + uVar9 * 4);
    param_1[0xcd] = param_1[0xcf];
    param_1[0xce] = param_1[0xd0];
    goto LAB_005966b8;
  }
  if ((iVar4 != 3) && (iVar4 != 5)) goto LAB_005966b8;
  fVar11 = (float)param_1[0xd3];
  if ((NAN(fVar11) == (fVar11 == 0.0)) &&
     (fVar11 = fVar11 * _DAT_00baad4c, param_1[0xd3] = (int)fVar11,
     (float)((uint)fVar11 & DAT_00bacb40) < fVar13)) {
    param_1[0xd3] = 0;
  }
  iVar4 = param_1[0xc];
  if (iVar4 == 2) {
    pfVar1 = (float *)(param_1 + 0xcf);
    iVar2 = *(int *)(DAT_00c71678 + 0x18300);
    if (((0.0 < *(float *)(iVar2 + 0x788c)) && (*(float *)(iVar2 + 0x14) + fVar12 < *pfVar1)) ||
       ((iVar4 = 2, *(float *)(iVar2 + 0x788c) < 0.0 &&
        (fVar12 = *(float *)(iVar2 + 0x1c) - fVar12, *pfVar1 <= fVar12 && fVar12 != *pfVar1)))) {
      FUN_006d6ba0(0x89,0x3f800000,2,0,0x3f800000);
      puVar3 = PTR_s_TopCrackedBase_00b62290;
      param_1[0xc] = 3;
      FUN_0040a380(puVar3,0);
      iVar4 = param_1[0xcc];
      local_44 = *(float *)(iVar4 + 0x40) * DAT_00baa1d4;
      local_48 = *(code **)(iVar4 + 0x3c);
      FUN_006ac2a0(*(undefined4 *)(iVar4 + 0x38),local_48,local_44,0xffffffff);
      uVar5 = FUN_006eef60();
      local_50 = *pfVar1 + DAT_00ba9fe4;
      local_4c = (float)param_1[0xd0] + DAT_00baa9d0;
      piVar6 = (int *)FUN_006fe410(0x3b7,1,&local_50,&DAT_00c7b640,0,4,uVar5,0);
      iVar4 = param_1[0xcc];
      local_44 = *(float *)(iVar4 + 0x40) * DAT_00baa2d0;
      local_48 = *(code **)(iVar4 + 0x3c);
      FUN_006ac2a0(*(undefined4 *)(iVar4 + 0x38),local_48,local_44,0xffffffff);
      *(undefined *)(piVar6 + 0x52) = *(undefined *)(param_1 + 0x52);
      (**(code **)(*piVar6 + 0xc))();
      iVar4 = param_1[0xc];
      goto LAB_005963c4;
    }
  }
  else {
LAB_005963c4:
    if (iVar4 == 4) {
      param_1[0xd9] = (int)((float)param_1[0xe7] * DAT_00baa528 + (float)param_1[0xd9]);
    }
  }
  if (param_1[0x2d9] == 5) {
    param_1[0x2d9] = 3;
    if ((iVar4 == 0) || (iVar4 == 2)) {
      FUN_006d6ba0(0x89,0x3f800000,2,0,0x3f800000);
      puVar3 = PTR_s_TopCrackedBase_00b62290;
      param_1[0xc] = 3;
      FUN_0040a380(puVar3,0);
      iVar4 = param_1[0xcc];
      local_44 = *(float *)(iVar4 + 0x40) * DAT_00baa1d4;
      local_48 = *(code **)(iVar4 + 0x3c);
      FUN_006ac2a0(*(undefined4 *)(iVar4 + 0x38),local_48,local_44,0xffffffff);
      uVar5 = FUN_006eef60();
      local_50 = (float)param_1[0xcf] + DAT_00ba9fe4;
      local_4c = (float)param_1[0xd0] + DAT_00baa9d0;
      piVar6 = (int *)FUN_006fe410(0x3b7,1,&local_50,&DAT_00c7b640,0,4,uVar5,0);
      iVar4 = param_1[0xcc];
      local_44 = *(float *)(iVar4 + 0x40) * DAT_00baa2d0;
      local_48 = *(code **)(iVar4 + 0x3c);
      FUN_006ac2a0(*(undefined4 *)(iVar4 + 0x38),local_48,local_44,0xffffffff);
      *(undefined *)(piVar6 + 0x52) = *(undefined *)(param_1 + 0x52);
      *(undefined *)((int)piVar6 + 0x171) = 0;
      piVar6[0x2ee] = param_1[0x2ee];
      piVar6[0x2ef] = param_1[0x2ef];
      iStack_20 = param_1[0xcf];
      iStack_1c = param_1[0xd0];
      local_48 = *(code **)(*piVar6 + 0x24);
      iStack_30 = param_1[10];
      iStack_2c = param_1[0xb];
      iStack_28 = param_1[0xd];
      iStack_24 = param_1[0xe];
      iStack_18 = param_1[0xd8];
      iStack_14 = param_1[0xd9];
      uStack_70 = (uint)((param_1[0x5a] & 0x100U) != 0);
      if ((param_1[0x5a] & 0x20000000U) == 0) {
        uVar9 = 0;
      }
      else {
        uVar9 = 2;
      }
      if ((param_1[0x5b] & 0x400000U) == 0) {
        uVar7 = 0;
      }
      else {
        uVar7 = 4;
      }
      fStack_10 = (float)(uVar7 | uVar9 | uStack_70);
      piStack_c = param_1;
      (*local_48)();
      (**(code **)(*piVar6 + 0xc))();
    }
    else {
      FUN_00435c70();
      (**(code **)(*param_1 + 0x24))();
    }
  }
LAB_005966b8:
  if (0.0 < (float)param_1[5]) {
    iVar4 = DAT_00baad84;
    if ((float)param_1[0xd3] <= 0.0 && (float)param_1[0xd3] != 0.0) {
      iVar4 = DAT_00baa6fc;
    }
    param_1[0xd3] = iVar4;
  }
  iVar4 = *(int *)(DAT_00c71678 + 0x18300);
  if (((*(float *)(iVar4 + 0x788c) <= 0.0) ||
      ((float)param_1[0xcf] <= *(float *)(iVar4 + 0x1c) + DAT_00baaa94)) &&
     ((0.0 <= *(float *)(iVar4 + 0x788c) ||
      (fVar13 = *(float *)(iVar4 + 0x14) - DAT_00baaa94,
      fVar13 < (float)param_1[0xcf] || fVar13 == (float)param_1[0xcf])))) {
    if (*(char *)((int)param_1 + 0x173) != '\0') {
      FUN_006d6ba0(0x89,0x3f800000,2,0,0x3f800000);
      FUN_006d6ba0(0x1e7,0x3f800000,2,0,0x3f800000);
      FUN_00703670();
      local_48 = (code *)0x0;
      if (param_1[0x34] != 0) {
        uStack_70 = 0;
        do {
          ppiVar10 = (int **)(param_1 + 0x12);
          if (((int)local_48 < 0) || (param_1[0x34] <= (int)local_48)) {
            if (0xf < (uint)param_1[0x17]) {
              ppiVar10 = (int **)*ppiVar10;
            }
            FUN_00a112c0(0x10,"%s: No null with Id %d\n",ppiVar10,local_48);
          }
          puVar8 = (undefined4 *)(param_1[0x33] + uStack_70);
          if (0xf < (uint)puVar8[5]) {
            puVar8 = (undefined4 *)*puVar8;
          }
          FUN_006b6c20(&iStack_30,puVar8);
          if (DAT_00ba9fe4 < fStack_10) {
            local_50 = (((float)piStack_c + fStack_10) * fStack_10 * DAT_00baa75c) / _DAT_00baac0c;
            dVar19 = ceil((double)local_50);
            local_50 = (float)(int)dVar19;
            if (0 < (int)local_50) {
              do {
                FUN_006eef60();
                FUN_006eef60();
                FUN_006eef60();
                uVar5 = FUN_006eef60();
                iVar4 = FUN_006eef60();
                fVar14 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa704;
                fVar14 = fVar14 + fVar14;
                iVar4 = FUN_006eef60();
                fVar15 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                         DAT_00ba9ff4;
                iVar4 = FUN_006eef60();
                fVar16 = ((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa904 - DAT_00baa87c) * DAT_00baa088;
                fVar11 = fVar16;
                FUN_0041d540();
                FUN_0041d520();
                fVar13 = (float)param_1[0x2ee];
                fVar12 = (float)param_1[0x2ef];
                iVar4 = FUN_006eef60();
                fVar17 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa1f8 + DAT_00baa354;
                fVar18 = fVar14;
                FUN_0041d540();
                fStack_40 = fVar18 * fVar15 * DAT_00baa784 +
                            (fVar11 * fVar13 - fVar16 * fVar12) * fVar17;
                FUN_0041d520();
                fStack_3c = fVar14 * fVar15 * DAT_00baa784 +
                            (fVar11 * fVar12 + fVar16 * fVar13) * fVar17;
                piVar6 = (int *)FUN_006fe410(0x3b7,2,&iStack_30,&fStack_40,param_1,0,uVar5,0);
                iVar4 = FUN_006eef60();
                fVar12 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                         DAT_00ba9ff4 + DAT_00baa3a4;
                piVar6[0x30e] = (int)fVar12;
                fVar12 = fVar12 * (float)piVar6[0xed];
                fVar13 = fVar12 * DAT_00c3793c;
                piVar6[0x3a] = (int)(fVar12 * DAT_00c37940);
                piVar6[0x39] = (int)fVar13;
                piVar6[0xcd] = 0x3e800000;
                piVar6[0xce] = 0;
                (**(code **)(*piVar6 + 0xc))();
                uVar5 = FUN_006eef60();
                iVar4 = FUN_006eef60();
                fVar11 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa704;
                fVar11 = fVar11 + fVar11;
                iVar4 = FUN_006eef60();
                fVar12 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                         DAT_00ba9ff4;
                fVar13 = fVar11;
                FUN_0041d540();
                fStack_38 = fVar13 * fVar12 * DAT_00baa784;
                FUN_0041d520();
                fStack_34 = fVar11 * fVar12 * DAT_00baa784;
                piVar6 = (int *)FUN_006fe410(1000,0x3b,&iStack_30,&fStack_38,param_1,0,uVar5,0);
                piVar6[0xd3] = param_1[0xd3];
                piVar6[0xd4] = param_1[0xd4];
                piVar6[0x39] = (int)DAT_00c3793c;
                piVar6[0x3a] = (int)DAT_00c37940;
                iVar4 = FUN_006eef60();
                piVar6[0x11d] =
                     (int)((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa81c + DAT_00baa630);
                uVar9 = FUN_006eef60();
                iVar4 = uVar9 % 0xf + 0xf;
                piVar6[0x117] = iVar4;
                piVar6[0x118] = iVar4;
                (**(code **)(*piVar6 + 0xc))();
                local_50 = (float)((int)local_50 + -1);
              } while (local_50 != 0.0);
              local_50 = 0.0;
            }
          }
          local_48 = (code *)((int)local_48 + 1);
          uStack_70 = uStack_70 + 0x18;
        } while (local_48 < (uint)param_1[0x34]);
      }
    }
    return;
  }
  (**(code **)(*param_1 + 0x28))();
  return;
}

