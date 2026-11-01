/* Local J460 decompiler output.
 * VA: 0x005135d0
 * Entry: 005135d0
 * Dispatcher: 0x006c2990
 * Types: 41,254,283
 * Identities: 254.0.0,283.0.0,41.0.0,41.1.0,41.2.0,41.3.0,41.4.0
 * Evidence: dispatcher=0x006c2990; end=0x00515010; instructions=1474
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=41,254,283;
   identities=254.0.0,283.0.0,41.0.0,41.1.0,41.2.0,41.3.0,41.4.0; dispatcher=0x006c2990;
   end=0x00515010; instructions=1474 */

void __fastcall AI_005135d0(int *param_1)

{
  undefined auVar1 [16];
  char cVar2;
  uint uVar3;
  undefined4 *puVar4;
  int iVar5;
  float *pfVar6;
  undefined4 uVar7;
  int *piVar8;
  float *pfVar9;
  int extraout_ECX;
  int extraout_ECX_00;
  int extraout_ECX_01;
  int extraout_ECX_02;
  int extraout_ECX_03;
  int extraout_ECX_04;
  int extraout_ECX_05;
  int iVar10;
  int iVar11;
  int **ppiVar12;
  undefined *puVar13;
  bool bVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  int *piVar19;
  int *piVar20;
  float fVar21;
  undefined4 uVar22;
  TypeDescriptor *pTVar23;
  TypeDescriptor *pTVar24;
  undefined4 uVar25;
  int **local_94;
  float local_90;
  int *local_8c;
  int **local_88;
  char local_81;
  float local_80;
  int *local_7c;
  int *local_78;
  float local_74;
  int *local_70;
  char local_69;
  undefined4 local_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined local_58 [8];
  undefined4 uStack_50;
  undefined4 uStack_4c;
  float local_48;
  undefined *local_44;
  undefined *local_40;
  undefined local_3c [8];
  char local_34 [4];
  int local_30;
  float local_2c;
  float local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af434d;
  local_1c = ExceptionList;
  uVar3 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_94 = (int **)0x0;
  if ((param_1[10] == 0x29) && (param_1[0xb] == 4)) {
    puVar4 = (undefined4 *)param_1[2];
    local_69 = '\x01';
    if (puVar4 != (undefined4 *)param_1[3]) {
      do {
        if (((puVar4[4] == 1000) && (puVar4[5] == 0x93)) && (puVar4[6] != 1)) {
          *puVar4 = 0;
        }
        puVar4 = puVar4 + 0xe;
      } while (puVar4 != (undefined4 *)param_1[3]);
    }
    if (((float)param_1[0xd4] < 0.0) ||
       ((float)param_1[0x2ee] <= 0.0 && (float)param_1[0x2ee] != 0.0)) {
      fVar17 = (float)param_1[0x2ee] + (float)param_1[0xd4];
      param_1[0x2ee] = (int)((float)param_1[0x2ee] + DAT_00baa490);
      param_1[0xd4] = (int)fVar17;
      if (0.0 < fVar17) {
        param_1[0xd4] = 0;
        param_1[0x2ee] = 0;
      }
    }
  }
  else {
    local_69 = '\0';
  }
  iVar11 = param_1[10];
  local_24 = uVar3;
  if (param_1[0x2d9] == 0) {
    param_1[0x2d9] = 4;
    if (iVar11 == 0xfe) {
      param_1[0x61] = 3;
      puStack_20 = &stack0xfffffffc;
    }
    else {
      puStack_20 = &stack0xfffffffc;
      if ((iVar11 == 0x29) && (puStack_20 = &stack0xfffffffc, param_1[0xb] == 3)) {
        puStack_20 = &stack0xfffffffc;
        AI_0041af60(local_34,0x348,0xffffffff,0xffffffff,0,0);
        local_14 = 0;
        iVar11 = 0;
        fVar17 = 0.0;
        piVar8 = local_7c;
        if (local_28 != 0.0) {
          do {
            iVar5 = *(int *)(local_30 + (int)fVar17 * 4);
            if ((*(int *)(iVar5 + 0x3bc) == 0) &&
               ((fVar18 = (float)param_1[0xd0] - *(float *)(iVar5 + 0x340),
                fVar15 = (float)param_1[0xcf] - *(float *)(iVar5 + 0x33c),
                piVar19 = (int *)(fVar18 * fVar18 + fVar15 * fVar15), iVar11 == 0 ||
                ((float)piVar19 < (float)piVar8)))) {
              iVar11 = iVar5;
              piVar8 = piVar19;
            }
            fVar17 = (float)((int)fVar17 + 1);
          } while ((uint)fVar17 < (uint)local_28);
          if (iVar11 != 0) {
            if (param_1[0xf0] != 0) {
              local_94 = (int **)(param_1 + 0xf0);
              FUN_004cf210(&local_94);
            }
            param_1[0xf0] = iVar11;
            FUN_004cdcf0(param_1 + 0xf0);
            ppiVar12 = (int **)(iVar11 + 0x3bc);
            if (*(int *)(iVar11 + 0x3bc) != 0) {
              local_94 = ppiVar12;
              FUN_004cf210(&local_94);
            }
            *ppiVar12 = param_1;
            FUN_004cdcf0(ppiVar12);
          }
        }
        param_1[0x5a] = param_1[0x5a] | 0x11;
        param_1[0x5b] = param_1[0x5b] | 8;
        local_14 = 0xffffffff;
        *(undefined *)(param_1 + 0xec) = 1;
        if (local_34[0] == '\0') {
          local_14 = 1;
          FUN_00a648b0(0,0);
        }
      }
    }
    goto LAB_00514fd8;
  }
  puVar13 = &stack0xfffffffc;
  if ((iVar11 == 0x29) && (puVar13 = &stack0xfffffffc, param_1[0xb] == 3)) {
    param_1[0x5a] = param_1[0x5a] | 0x11;
    param_1[0x5b] = param_1[0x5b] | 8;
    *(undefined *)(param_1 + 0xec) = 1;
    puVar13 = &stack0xfffffffc;
    if (((NAN((float)param_1[0xcd]) || NAN(DAT_00c7b640)) != ((float)param_1[0xcd] == DAT_00c7b640))
       && (puVar13 = &stack0xfffffffc,
          (NAN((float)param_1[0xce]) || NAN(DAT_00c7b644)) != ((float)param_1[0xce] == DAT_00c7b644)
          )) {
      FUN_007e6300(1);
      puVar13 = puStack_20;
    }
    puStack_20 = puVar13;
    if ((param_1[0xf0] == 0) || (puVar13 = puStack_20, *(char *)(param_1[0xf0] + 0x173) != '\0')) {
      uStack_64 = 0;
      uStack_60 = 0;
      uStack_5c = 0;
      auVar1._4_4_ = DAT_00c7b644;
      auVar1._0_4_ = DAT_00c7b640;
      auVar1._8_4_ = DAT_00c7b640;
      auVar1._12_4_ = 0;
      _local_58 = auVar1 << 0x20;
      local_44 = (undefined *)0x0;
      local_40 = (undefined *)0x0;
      local_48 = DAT_00c7b644;
      (**(code **)(*param_1 + 0x24))(&uStack_64,uVar3);
      puVar13 = puStack_20;
    }
  }
  puStack_20 = puVar13;
  fVar18 = DAT_00baaa00;
  fVar15 = DAT_00baa904;
  fVar17 = DAT_00baa2d0;
  iVar11 = *(int *)(DAT_00c71678 + 0x18300);
  iVar10 = (int)(((float)param_1[0xcf] - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
  iVar5 = (int)(((float)param_1[0xd0] - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
  if ((((-1 < iVar10) && (iVar10 < *(int *)(iVar11 + 0xc))) && (-1 < iVar5)) &&
     ((iVar5 < *(int *)(iVar11 + 0x10) &&
      (uVar3 = iVar5 * *(int *)(iVar11 + 0xc) + iVar10, uVar3 < 0x1c0)))) {
    local_78 = (int *)0x3e8;
    piVar8 = (int *)(iVar11 + (uVar3 + 0x1db) * 4);
    iVar5 = *piVar8;
    iVar10 = iVar5 % 1000;
    if (iVar10 < 900) {
      *piVar8 = (iVar5 - iVar10) + 900;
      iVar11 = *(int *)(DAT_00c71678 + 0x18300);
    }
  }
  piVar8 = DAT_00baa3d0;
  local_70 = DAT_00baa3a4;
  fVar21 = DAT_00baa380;
  fVar16 = (*(float *)(param_1[0x105] + 0x33c) - fVar15) / fVar15 + fVar17;
  fVar17 = (*(float *)(param_1[0x105] + 0x340) - fVar18) / fVar15 + fVar17;
  local_88 = (int **)(int)fVar16;
  if ((((int)fVar16 < 0) || (*(int *)(iVar11 + 0xc) <= (int)local_88)) ||
     (((int)fVar17 < 0 || (*(int *)(iVar11 + 0x10) <= (int)fVar17)))) {
    iVar11 = -1;
  }
  else {
    iVar11 = *(int *)(iVar11 + 0xc) * (int)fVar17 + (int)fVar16;
  }
  pfVar6 = (float *)(param_1 + 0xcf);
  param_1[0x10d] = iVar11;
  piVar19 = DAT_00baa454;
  iVar11 = (int)(float)param_1[0xe9] - (int)(float)param_1[0xe8];
  fVar17 = fVar21;
  if (((param_1[10] == 0x29) && (iVar5 = param_1[0xb], fVar17 = DAT_00baa4c0, iVar5 != 1)) &&
     (fVar17 = DAT_00baa304, iVar5 != 2)) {
    if (iVar5 == 3) {
      local_70 = piVar8;
      fVar17 = fVar21;
    }
    else {
      fVar17 = fVar21;
      if (iVar5 == 4) {
        fVar17 = DAT_00baa328;
      }
    }
  }
  if ((param_1[0x2d9] == 4) || (param_1[0x2d9] == 7)) {
    local_78 = DAT_00baa454;
    if (param_1[10] == 0xfe) {
      iVar5 = param_1[0x104];
      local_8c = DAT_00baa454;
      param_1[0x104] = iVar5 - iVar11;
      if (param_1[0x3c7] == -1) {
        if ((iVar11 != 0) && (iVar5 - iVar11 < 1)) {
          uVar3 = FUN_006eef60();
          param_1[0x104] = uVar3 % 0xf + 0x1e;
          uVar3 = FUN_006eef60();
          param_1[0x2f0] = uVar3 & 3;
          iVar11 = extraout_ECX_00;
          fVar21 = DAT_00baa380;
          piVar19 = local_8c;
        }
      }
      else {
        FUN_006d82d0(&local_80);
        uVar3 = FUN_006eef60();
        fVar17 = (float)((uint)local_7c & DAT_00bacb40);
        fVar15 = (float)((uint)local_80 & DAT_00bacb40);
        param_1[0x104] = uVar3 % 0xf + 0x1e;
        if (fVar15 <= fVar17) {
          iVar11 = (uint)(0.0 <= (float)local_7c) * 2 + 1;
        }
        else {
          iVar11 = 2;
          if (local_80 < 0.0) {
            iVar11 = 0;
          }
        }
        param_1[0x2f0] = iVar11;
        piVar19 = (int *)(local_80 * local_80 + (float)local_7c * (float)local_7c);
        FUN_00435a50();
        iVar11 = extraout_ECX;
        fVar21 = DAT_00baa380;
      }
      piVar20 = local_70;
      switch(param_1[0x2f0]) {
      case 0:
        fVar17 = (float)param_1[0xd8] - (float)piVar19 * fVar21 * (float)param_1[0xe7];
        param_1[0xd9] =
             (int)((float)piVar19 * DAT_00ba9fe4 * (float)param_1[0xe7] + (float)param_1[0xd9]);
        param_1[0xd8] = (int)fVar17;
        if (*(char *)(param_1 + 100) != '\0') {
          param_1[0x2f0] = 2;
          fVar17 = *pfVar6 - fVar17;
LAB_005143d7:
          *pfVar6 = fVar17;
          param_1[0xd0] = (int)((float)param_1[0xd0] - (float)param_1[0xd9]);
        }
        break;
      case 1:
        fVar17 = (float)piVar19 * DAT_00ba9fe4 * (float)param_1[0xe7] + (float)param_1[0xd8];
        param_1[0xd8] = (int)fVar17;
        param_1[0xd9] = (int)((float)param_1[0xd9] - (float)piVar19 * fVar21 * (float)param_1[0xe7])
        ;
        if (*(char *)(param_1 + 100) != '\0') {
          param_1[0x2f0] = 3;
LAB_005143cf:
          fVar17 = *pfVar6 - fVar17;
          goto LAB_005143d7;
        }
        break;
      case 2:
        fVar17 = (float)piVar19 * fVar21 * (float)param_1[0xe7] + (float)param_1[0xd8];
        param_1[0xd9] =
             (int)((float)piVar19 * DAT_00ba9fe4 * (float)param_1[0xe7] + (float)param_1[0xd9]);
        param_1[0xd8] = (int)fVar17;
        if (*(char *)(param_1 + 100) != '\0') {
          param_1[0x2f0] = 0;
          goto LAB_005143cf;
        }
        break;
      case 3:
        fVar17 = (float)piVar19 * DAT_00ba9fe4 * (float)param_1[0xe7] + (float)param_1[0xd8];
        param_1[0xd8] = (int)fVar17;
        param_1[0xd9] = (int)((float)piVar19 * fVar21 * (float)param_1[0xe7] + (float)param_1[0xd9])
        ;
        if (*(char *)(param_1 + 100) != '\0') {
          param_1[0x2f0] = 1;
          goto LAB_005143cf;
        }
      }
    }
    else if (local_69 == '\0') {
      FUN_007e5340(fVar17,0);
      iVar11 = extraout_ECX_04;
      piVar20 = local_70;
    }
    else {
      piVar20 = DAT_00baa454;
      if ((0.0 < (float)param_1[0x2ee] || (float)param_1[0x2ee] == 0.0) &&
         (0.0 < (float)param_1[0xd4] || (float)param_1[0xd4] == 0.0)) {
        if (param_1[0x2e9] < 0) {
          param_1[0x2e9] = param_1[0x2e9] + 1;
          piVar20 = piVar8;
        }
        else {
          FUN_007e5340(fVar17,0);
          iVar11 = extraout_ECX_01;
          piVar20 = local_70;
          if (local_69 != '\0') {
            if (param_1[0x2d9] == 7) {
              iVar5 = FUN_006ac760();
              iVar11 = extraout_ECX_02;
              piVar20 = local_70;
              if (iVar5 != 0) {
                uVar3 = FUN_006eef60();
                iVar11 = 10;
                piVar20 = local_70;
                if (uVar3 % 10 == 0) {
                  param_1[0x2e9] = 0;
                  param_1[0x2d9] = 7;
                }
              }
            }
            else {
              iVar11 = param_1[0x2e9];
              param_1[0x2e9] = iVar11 + 1;
              if (((param_1[0x5a] & 0x1000a00U) != 0) ||
                 ((0x5a < iVar11 + 1 && (uVar3 = FUN_006eef60(), uVar3 % 0x14 == 0)))) {
                param_1[0x2d9] = 4;
              }
              iVar11 = FUN_006be840();
              local_80 = *(float *)(iVar11 + 0x33c);
              local_7c = *(int **)(iVar11 + 0x340);
              FUN_007e33c0(&local_80,0x3f28f5c3,0,1);
              pfVar6 = (float *)FUN_0067f170();
              fVar15 = (float)param_1[0xd8] * (float)param_1[0xd8] +
                       (float)param_1[0xd9] * (float)param_1[0xd9];
              FUN_00435a50();
              fVar17 = *pfVar6;
              param_1[0xd9] = (int)(fVar15 * pfVar6[1]);
              param_1[0xd8] = (int)(fVar15 * fVar17);
              iVar11 = extraout_ECX_03;
              piVar20 = local_70;
            }
          }
        }
      }
    }
    param_1[0xdb] = (int)((float)piVar20 * (float)param_1[0xdb]);
    if (param_1[10] == 0x29) {
      uVar3 = FUN_006eef60();
      iVar11 = 100;
      if (uVar3 % 100 == 0) {
        iVar5 = param_1[0xb];
        if ((iVar5 == 0) || (iVar5 == 4)) {
          local_70 = (int *)0x43a;
        }
        else {
          if ((iVar5 != 1) && (iVar5 != 2)) goto LAB_00514744;
          local_70 = (int *)0x43b;
        }
LAB_0051470a:
        FUN_00956780();
        FUN_0092dc30(local_70,0x3f800000,0x3c,0,0x3f800000,0);
        iVar11 = extraout_ECX_05;
      }
    }
    else if (param_1[10] == 0xfe) {
      uVar3 = FUN_006eef60();
      iVar11 = 100;
      if (uVar3 % 100 == 0) {
        local_70 = (int *)0x43c;
        goto LAB_0051470a;
      }
    }
LAB_00514744:
    if ((local_69 != '\0') &&
       (((uVar3 = DAT_00bacb40, param_1[0x2e9] < 0 || ((float)param_1[0xd4] < 0.0)) ||
        ((float)param_1[0x2ee] < 0.0)))) goto LAB_00514879;
    if (param_1[0x3c7] != -1) {
      cVar2 = FUN_00956110(9,param_1[0x3c7],param_1,iVar11);
      if ((cVar2 != '\0') &&
         ((FUN_006d82d0(&local_80),
          (NAN(local_80) || NAN(DAT_00c7b640)) == (local_80 == DAT_00c7b640) ||
          ((NAN((float)local_7c) || NAN(DAT_00c7b644)) == ((float)local_7c == DAT_00c7b644))))) {
        piVar8 = (int *)FUN_0067f170();
        param_1[0xcd] = *piVar8;
        param_1[0xce] = piVar8[1];
        param_1[0x2d9] = 8;
      }
      if (((param_1[0xb] == 1) || (param_1[10] == 0x11b)) && (param_1[0x2d9] == 8)) {
        param_1[0xcd] = (int)((float)param_1[0xcd] * _DAT_00baa560);
        param_1[0xce] = (int)((float)param_1[0xce] * _DAT_00baa560);
      }
      param_1[0xcd] = (int)((float)param_1[0xcd] * _DAT_00baa4f0);
      param_1[0xce] = (int)((float)param_1[0xce] * _DAT_00baa4f0);
      uVar3 = DAT_00bacb40;
      goto LAB_00514879;
    }
    cVar2 = FUN_006ac710(3,param_1[8]);
    uVar3 = DAT_00bacb40;
    if ((cVar2 == '\0') || ((param_1[0x5a] & 0x1000a00U) != 0)) goto LAB_00514879;
    iVar11 = FUN_006be840();
    local_88 = *(int ***)(iVar11 + 0x33c);
    local_7c = *(int **)(iVar11 + 0x340);
    iVar11 = FUN_006be840();
    local_8c = *(int **)(iVar11 + 0x360);
    local_70 = *(int **)(iVar11 + 0x364);
    iVar11 = FUN_006eef60();
    fVar17 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa85c;
    local_90 = (float)local_8c * fVar17 + (float)local_88;
    local_8c = (int *)((float)local_70 * fVar17 + (float)local_7c);
    FUN_00812f50(&local_74,&local_90,0x41a00000,0x41a00000,0x41a00000);
    iVar11 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc);
    local_2c = (float)(param_1[0x10d] % iVar11) * DAT_00baa904 + DAT_00baa904;
    local_28 = (float)(param_1[0x10d] / iVar11) * DAT_00baa904 + DAT_00baaa00;
    local_88 = (int **)(local_2c - local_74);
    local_7c = (int *)(local_28 - (float)local_70);
    local_8c = (int *)((uint)local_88 & DAT_00bacb40);
    if (((float)local_8c < DAT_00baa87c) ||
       (uVar3 = DAT_00bacb40, (float)((uint)local_7c & DAT_00bacb40) < DAT_00baa87c)) {
      fVar17 = (float)local_7c * (float)local_7c + (float)local_88 * (float)local_88;
      FUN_00435a50();
      uVar3 = DAT_00bacb40;
      if ((fVar17 < DAT_00baaa94) &&
         ((cVar2 = FUN_007f0df0(&local_2c,&local_74,0,0,0,0,0), cVar2 != '\0' ||
          (uVar3 = DAT_00bacb40, param_1[10] == 0xfe)))) {
        if ((float)local_8c <= (float)((uint)local_7c & DAT_00bacb40)) {
          param_1[0xcd] = 0;
          local_70 = DAT_00baad50;
          if ((float)local_7c < 0.0) {
            local_70 = DAT_00baa454;
          }
          param_1[0xce] = (int)local_70;
          local_78 = (int *)0x0;
        }
        else {
          param_1[0xce] = 0;
          piVar8 = DAT_00baa454;
          if (0.0 <= (float)local_88) {
            local_78 = DAT_00baad50;
            piVar8 = DAT_00baad50;
          }
          param_1[0xcd] = (int)piVar8;
          local_70 = (int *)0x0;
        }
        cVar2 = FUN_00417430(0x1000800,0);
        if (cVar2 != '\0') {
          uVar3 = (uint)local_70 ^ DAT_00bacb70;
          param_1[0xcd] = (uint)local_78 ^ DAT_00bacb70;
          param_1[0xce] = uVar3;
        }
        param_1[0x2d9] = 8;
        param_1[0x2e9] = 0;
        uVar3 = DAT_00bacb40;
        if ((param_1[10] == 0x29) && (param_1[0xb] == 4)) {
          param_1[0xcd] = (int)((float)param_1[0xcd] * DAT_00baa354);
          param_1[0xce] = (int)((float)param_1[0xce] * DAT_00baa354);
        }
      }
    }
    if ((param_1[0xb] != 1) && (param_1[10] != 0x11b)) goto LAB_00514879;
    if (param_1[0x2d9] == 8) {
      param_1[0xcd] = (int)((float)param_1[0xcd] * _DAT_00baa560);
      param_1[0xce] = (int)((float)param_1[0xce] * _DAT_00baa560);
      goto LAB_00514879;
    }
LAB_00514c11:
    fVar17 = (float)param_1[0xd8];
    fVar15 = (float)param_1[0xd9];
    if ((float)((uint)fVar17 & uVar3) <= (float)((uint)fVar15 & uVar3)) goto LAB_005148ab;
LAB_00514c36:
    local_78 = (int *)0x2;
    puVar13 = &DAT_00b60d94;
    if (fVar17 < 0.0) {
      local_78 = (int *)0x0;
    }
  }
  else {
    if (local_69 != '\0') {
      if (*(char *)(param_1 + 100) != '\0') {
        fVar17 = (float)param_1[0x65] * (float)param_1[0x65] +
                 (float)param_1[0x66] * (float)param_1[0x66];
        FUN_00435a50();
        if ((DAT_00baa7e8 < fVar17) &&
           (pfVar6 = (float *)FUN_00a10030(&local_2c),
           DAT_00baa3e0 < (float)param_1[0x68] * pfVar6[1] + (float)param_1[0x67] * *pfVar6)) {
          FUN_00703670(4);
          local_78 = (int *)0x30;
          FUN_00956780();
          FUN_0092dc30(local_78,0x3f19999a,2,0,0x3f800000,0);
          local_78 = (int *)0x1e3;
          FUN_00956780();
          FUN_0092dc30(local_78,0x3f333333,0x2d,0,0x3f800000,0);
          iVar11 = *(int *)(DAT_00c71678 + 0x18300);
          iVar5 = FUN_00812c90(param_1 + 0xcf);
          iVar11 = *(int *)(iVar11 + 0xc);
          local_80 = (float)(iVar5 % iVar11) * DAT_00baa904 + DAT_00baa904;
          local_7c = (int *)((float)(iVar5 / iVar11) * DAT_00baa904 + DAT_00baaa00);
          uVar7 = FUN_00407170(&DAT_00c7b640);
          FUN_006d7cf0(&DAT_00c7b640,uVar7);
          uVar7 = FUN_006eef60();
          piVar8 = (int *)FUN_00428b20(1000,0xf,&local_80,&DAT_00c7b640,0,0,uVar7);
          local_68 = _DAT_00bac7b0;
          uStack_64 = _UNK_00bac7b4;
          uStack_60 = _UNK_00bac7b8;
          uStack_5c = _UNK_00bac7bc;
          local_48 = 0.0;
          local_58._4_4_ = _UNK_00bac014;
          local_58._0_4_ = _DAT_00bac010;
          uStack_50 = _UNK_00bac018;
          uStack_4c = _UNK_00bac01c;
          local_44 = (undefined *)0x0;
          local_40 = (undefined *)0x0;
          (**(code **)(*piVar8 + 0x3c))(&local_68,0xffffffff,0xff,0,1);
          (**(code **)(*piVar8 + 0xc))();
          local_78 = (int *)0xffffffff;
          do {
            uVar7 = FUN_006eef60();
            piVar8 = (int *)FUN_00428b20(1000,0x94,&local_80,&DAT_00c7b640,param_1,0,uVar7);
            local_48 = 0.0;
            local_68 = _DAT_00bac920;
            uStack_64 = _UNK_00bac924;
            uStack_60 = _UNK_00bac928;
            uStack_5c = _UNK_00bac92c;
            _local_58 = ZEXT816(0);
            local_44 = &DAT_bf800000;
            local_40 = &DAT_bf800000;
            local_8c = piVar8;
            (**(code **)(*piVar8 + 0x3c))(&local_68,0xffffffff,0xff,0,1);
            ppiVar12 = (int **)(piVar8 + 0xef);
            if (piVar8[0xef] != 0) {
              local_88 = ppiVar12;
              FUN_004cf210(&local_88);
            }
            *ppiVar12 = param_1;
            FUN_004cdcf0(ppiVar12);
            fVar17 = (float)param_1[0xce];
            FUN_00499d60();
            piVar8 = (int *)((int)local_78 + 1);
            local_8c[0x11d] =
                 (int)(fVar17 * DAT_00baa948 + DAT_00baaa78 + (float)(int)local_78 * DAT_00baa9b4);
            local_78 = piVar8;
          } while ((int)piVar8 < 2);
          param_1[0x2ee] = -0x3f600000;
          fVar17 = (float)param_1[0x68] * (float)param_1[0x66] +
                   (float)param_1[0x67] * (float)param_1[0x65];
          fVar15 = fVar17 * (float)param_1[0x68] * DAT_00baa784;
          fVar17 = (float)param_1[0xd8] - fVar17 * (float)param_1[0x67] * DAT_00baa784;
          param_1[0xd8] = (int)fVar17;
          param_1[0xd9] = (int)((float)param_1[0xd9] - fVar15);
          param_1[0x2e9] = -0x2d;
          param_1[0x106] = (int)DAT_00c7b640;
          param_1[0x107] = (int)DAT_00c7b644;
          param_1[0x108] = (int)DAT_00c7b640;
          param_1[0x109] = (int)DAT_00c7b644;
          param_1[0x2d9] = 4;
          param_1[0xcd] = (int)DAT_00c7b640;
          param_1[0xce] = (int)DAT_00c7b644;
          if (*(char *)(param_1 + 100) != '\0') {
            fVar15 = (float)param_1[0xd9] * DAT_00baa06c;
            param_1[0xd8] = (int)(fVar17 * DAT_00baa06c);
            param_1[0xd9] = (int)fVar15;
          }
        }
      }
      fVar17 = (float)param_1[0xd8] * (float)param_1[0xd8] +
               (float)param_1[0xd9] * (float)param_1[0xd9];
      FUN_00435a50();
      local_8c = (int *)((fVar17 - DAT_00baa7e8) * DAT_00baa13c);
      if ((DAT_00ba9fe4 < (float)local_8c) && (cVar2 = FUN_006ac710(3,0), cVar2 != '\0')) {
        local_68 = _DAT_00bac7b0;
        uStack_64 = _UNK_00bac7b4;
        uStack_60 = _UNK_00bac7b8;
        uStack_5c = _UNK_00bac7bc;
        _local_58 = ZEXT812(0x3e99999a40400000);
        uStack_4c = (float)local_8c + DAT_00baa0d0;
        local_48 = 0.0;
        local_44 = (undefined *)0x0;
        local_40 = (undefined *)0x0;
        (**(code **)(*param_1 + 0x3c))(&local_68,3,1,1,1);
      }
    }
    pfVar6 = (float *)(param_1 + 0xcf);
    uVar3 = DAT_00bacb40;
    if (param_1[0x2d9] != 4) {
      if ((*(char *)(param_1 + 100) == '\0') && (cVar2 = FUN_00417430(0x1000a00,0), cVar2 == '\0'))
      {
        if (param_1[10] == 0x11b) {
          if (param_1[0x3c7] == -1) {
            iVar11 = FUN_006be840();
            local_88 = *(int ***)(iVar11 + 0x33c);
            local_8c = *(int **)(iVar11 + 0x340);
            pfVar9 = (float *)FUN_00a10100(&local_2c,0x42200000);
            bVar14 = ((float)local_8c - ((float)param_1[0xd0] - pfVar9[1])) * (float)param_1[0xd9] +
                     ((float)local_88 - (*pfVar6 - *pfVar9)) * (float)param_1[0xd8] < 0.0;
          }
          else {
            cVar2 = FUN_006d8260(9);
            bVar14 = cVar2 == '\0';
          }
          if (bVar14) goto LAB_005141ad;
        }
        param_1[0xdb] = (int)((float)local_70 * (float)param_1[0xdb]);
        FUN_004314b0(param_1 + 0xcd,0);
        if (local_69 != '\0') {
          fVar17 = (float)param_1[0xcd] * (float)param_1[0xcd] +
                   (float)param_1[0xce] * (float)param_1[0xce];
          FUN_00435a50();
          if (fVar17 < DAT_00baa75c) {
            pfVar9 = (float *)FUN_00a10030(&local_2c);
            fVar17 = pfVar9[1] * DAT_00baa0f4;
            param_1[0xcd] =
                 (int)(*pfVar9 * DAT_00baa0f4 * (float)param_1[0xe7] + (float)param_1[0xcd]);
            param_1[0xce] = (int)(fVar17 * (float)param_1[0xe7] + (float)param_1[0xce]);
          }
        }
        FUN_00812f00(&local_80,param_1[0x10d]);
        uVar3 = DAT_00bacb40;
        if ((float)(param_1[0xd8] & DAT_00bacb40) <= (float)(param_1[0xd9] & DAT_00bacb40)) {
          *pfVar6 = local_80 * DAT_00baa120 + *pfVar6 * DAT_00baa3e0;
        }
        else {
          param_1[0xd0] =
               (int)((float)local_7c * DAT_00baa120 + (float)param_1[0xd0] * DAT_00baa3e0);
        }
      }
      else {
LAB_005141ad:
        uVar3 = DAT_00bacb40;
        param_1[0x106] = (int)DAT_00c7b640;
        param_1[0x107] = (int)DAT_00c7b644;
        param_1[0x108] = (int)DAT_00c7b640;
        param_1[0x109] = (int)DAT_00c7b644;
        param_1[0x2d9] = 4;
        param_1[0xcd] = (int)DAT_00c7b640;
        param_1[0xce] = (int)DAT_00c7b644;
        if (*(char *)(param_1 + 100) != '\0') {
          param_1[0xd8] = (int)((float)param_1[0xd8] * DAT_00baa06c);
          param_1[0xd9] = (int)((float)param_1[0xd9] * DAT_00baa06c);
        }
      }
    }
LAB_00514879:
    if (param_1[0x2d9] != 8) goto LAB_00514c11;
    fVar17 = (float)param_1[0xcd];
    fVar15 = (float)param_1[0xce];
    if ((float)((uint)fVar15 & uVar3) < (float)((uint)fVar17 & uVar3)) goto LAB_00514c36;
LAB_005148ab:
    if (0.0 <= fVar15) {
      puVar13 = &DAT_00b1cddc;
    }
    else {
      puVar13 = &DAT_00b1cde4;
    }
  }
  piVar8 = (int *)FUN_0067f1d0();
  param_1[0x3cc] = *piVar8;
  param_1[0x3cd] = piVar8[1];
  if (0 < param_1[0x2e8]) {
    param_1[0x2e8] = ((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]) + param_1[0x2e8];
  }
  if (local_69 == '\0') {
LAB_00514d01:
    local_81 = '\0';
  }
  else {
    FUN_00452bf0(local_3c);
    local_94 = (int **)0x1;
    cVar2 = FUN_004f84a0();
    if ((cVar2 == '\0') &&
       (((float)(param_1[0xd8] & DAT_00bacb40) <= (float)(param_1[0xd9] & DAT_00bacb40) ||
        ((bool)*(char *)(param_1 + 0x52) == (float)param_1[0xd8] < 0.0)))) goto LAB_00514d01;
    local_81 = '\x01';
  }
  if (((uint)local_94 & 1) != 0) {
    FUN_0040d040();
  }
  if (local_81 != '\0') {
    param_1[0x2e8] = 0xf;
  }
  if ((local_69 == '\0') ||
     (((0.0 < (float)param_1[0x2ee] || (float)param_1[0x2ee] == 0.0 &&
       (0.0 < (float)param_1[0xd4] || (float)param_1[0xd4] == 0.0)) && (-1 < param_1[0x2e9])))) {
    fVar17 = (float)param_1[0xd8];
    if (DAT_00baa06c <= fVar17 * fVar17 + (float)param_1[0xd9] * (float)param_1[0xd9]) {
      if ((float)((uint)fVar17 & DAT_00bacb40) <= (float)(param_1[0xd9] & DAT_00bacb40)) {
        FUN_0040a380(puVar13,0);
      }
      else {
        FUN_0040a380(puVar13,0);
        *(bool *)(param_1 + 0x52) = (float)param_1[0xd8] <= 0.0 && (float)param_1[0xd8] != 0.0;
      }
    }
    else if (param_1[0x1f] != 0) {
      *(undefined *)(param_1 + 0x23) = 0;
      FUN_00408e00();
    }
  }
  if (((param_1[10] == 0x11b) && (cVar2 = FUN_006ac710(7,param_1[8]), cVar2 != '\0')) &&
     ((param_1[0x5a] & 0x1000000U) == 0)) {
    uVar7 = FUN_006eef60();
    uVar25 = 0;
    pTVar24 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
    pTVar23 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar22 = 0;
    uVar7 = FUN_00428b20(1000,0x16,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar7);
    piVar8 = (int *)__RTDynamicCast(uVar7,uVar22,pTVar23,pTVar24,uVar25);
    fVar17 = DAT_00c37940 * DAT_00baa2d0;
    piVar8[0x39] = (int)(DAT_00c3793c * DAT_00baa2d0);
    piVar8[0x117] = 0x14;
    piVar8[0x3a] = (int)fVar17;
    piVar8[0x118] = 0x14;
    (**(code **)(*piVar8 + 0xc))();
  }
  if (((*(char *)((int)param_1 + 0x173) != '\0') && (param_1[10] == 0x29)) && (param_1[0xb] == 2)) {
    uVar7 = FUN_006eef60();
    pfVar6 = (float *)FUN_0067f070(&local_90);
    local_2c = *pfVar6 * DAT_00baa81c + (float)param_1[0xcf];
    local_28 = pfVar6[1] * DAT_00baa81c + (float)param_1[0xd0];
    piVar8 = (int *)FUN_00428b20(0x348,0,&local_2c,&DAT_00c7b640,0,0,uVar7);
    if (*(char *)((int)param_1 + 0xc63) != '\0') {
      FUN_006c0f30(piVar8[10],piVar8[0xb],piVar8[0xc],param_1[0x319]);
    }
    if (piVar8[0xef] != 0) {
      local_7c = piVar8 + 0xef;
      FUN_004cf210(&local_7c);
    }
    piVar8[0xef] = (int)param_1;
    FUN_004cdcf0(piVar8 + 0xef);
    if (param_1[0xf0] != 0) {
      local_7c = param_1 + 0xf0;
      FUN_004cf210(&local_7c);
    }
    param_1[0xf0] = (int)piVar8;
    FUN_004cdcf0(param_1 + 0xf0);
    piVar8[0x5a] = piVar8[0x5a] & 0xfffffffb;
    piVar8[0x5b] = piVar8[0x5b];
    (**(code **)(*piVar8 + 0xc))();
    FUN_006c0f30(param_1[10],3,param_1[0xc],0);
    *(undefined *)((int)param_1 + 0x173) = 0;
  }
LAB_00514fd8:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

