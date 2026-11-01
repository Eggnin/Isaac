/* Local J460 decompiler output.
 * VA: 0x0056ffa0
 * Entry: 0056ffa0
 * Dispatcher: 0x006c2990
 * Types: 867
 * Identities: 867.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00571170; instructions=1012
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=867; identities=867.0.0; dispatcher=0x006c2990;
   end=0x00571170; instructions=1012 */

void __fastcall AI_0056ffa0(int *param_1)

{
  float fVar1;
  float fVar2;
  undefined auVar3 [16];
  undefined *puVar4;
  char cVar5;
  uint uVar6;
  uint uVar7;
  undefined4 uVar8;
  int *piVar9;
  int iVar10;
  undefined4 *puVar11;
  float *pfVar12;
  int iVar13;
  undefined4 *puVar14;
  int *piVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  undefined local_98 [8];
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined4 local_80;
  int iStack_7c;
  float fStack_78;
  float fStack_74;
  float local_70;
  float local_6c;
  float local_68;
  float *local_64;
  int *local_60;
  float local_5c;
  float local_58;
  float local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined local_40 [16];
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
  puStack_18 = &LAB_00af4fe5;
  local_1c = ExceptionList;
  uVar6 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar10 = param_1[0x2d9];
  local_54 = (float)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  local_60 = param_1;
  local_24 = uVar6;
  if (param_1[0x2dd] == 1) {
    if ((iVar10 == 3) || (iVar10 == 8)) {
      if (**(char **)((int)DAT_00c71678 + 0x18300) == '\0') {
        iVar13 = -1;
      }
      else {
        iVar13 = *(int *)((int)DAT_00c71678 + 0x264f8) -
                 *(int *)(*(char **)((int)DAT_00c71678 + 0x18300) + 0x11f0);
      }
      param_1[0x62] = (uint)(0x2c < iVar13);
    }
    puVar4 = &stack0xfffffffc;
    if ((iVar10 != 0x10) &&
       (puStack_20 = &stack0xfffffffc, FUN_00703670(4), puVar4 = puStack_20, param_1[0x2d9] != 5)) {
      uVar7 = FUN_006eef60();
      if (uVar7 % 3 == 0) {
        FUN_0081e9d0(&fStack_78,0);
        uVar8 = FUN_006eef60();
        piVar9 = (int *)FUN_00428b20(1000,4,&fStack_78,&DAT_00c7b640,0,
                                     *(uint *)(*(int *)((int)DAT_00c71678 + 0x18300) + 0x1d18) |
                                     0x20000,uVar8);
        iVar10 = FUN_006eef60();
        fVar17 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa198 + DAT_00baa3a4;
        fVar16 = fVar17 * DAT_00c3793c;
        piVar9[0x3a] = (int)(fVar17 * DAT_00c37940);
        piVar9[0x39] = (int)fVar16;
        iVar10 = FUN_006eef60();
        local_30 = 0;
        local_2c = 0;
        local_28 = 0;
        piVar9[0x104] =
             (int)(DAT_00baae80 -
                  (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                  DAT_00ba9ff4 * DAT_00baa9a0);
        local_40 = ZEXT816(0);
        local_50 = _DAT_00bab050;
        uStack_4c = _UNK_00bab054;
        uStack_48 = _UNK_00bab058;
        uStack_44 = _UNK_00bab05c;
        (**(code **)(*piVar9 + 0x3c))(&local_50,0xf,0xff,1,1);
        (**(code **)(*piVar9 + 0xc))();
      }
      puVar4 = puStack_20;
      if (*(int *)((int)DAT_00c71678 + 0x1830c) == 0) {
        param_1[0x2d9] = 5;
        param_1[0x104] = 0;
        local_54 = 1.004731e-42;
        FUN_00956780(uVar6);
        FUN_0092dc30(local_54,0x3f800000,2,0,0x3f800000,0);
        local_54 = 8.099505e-43;
        FUN_00956780();
        FUN_0092dc30(local_54,0x3f800000,2,0,0x3f800000,0);
        *(undefined *)((int)param_1 + 0x171) = 0;
        param_1[0x62] = 0;
        *(undefined *)(param_1 + 0x30f) = 1;
        cVar5 = FUN_0074efd0();
        puVar4 = puStack_20;
        if (((cVar5 != '\0') &&
            (iVar10 = *(int *)(*(int *)(*(int *)((int)DAT_00c71678 + 0x18300) + 4) + 0x10),
            *(int *)(iVar10 + 8) == 1)) && (*(int *)(iVar10 + 0x10) == 10)) {
          uVar7 = 0;
          uVar6 = 0x724;
          fVar16 = DAT_00c71678;
          do {
            uVar7 = uVar7 + 1;
            if (((uVar7 < 9) &&
                (iVar10 = *(int *)(uVar6 + *(int *)((int)fVar16 + 0x18300)), iVar10 != 0)) &&
               (((*(uint *)(iVar10 + 0x3a0) >> 5 & 1) != 0 && (*(int *)(iVar10 + 8) != 4)))) {
              FUN_00710d90();
              fVar16 = DAT_00c71678;
            }
            uVar6 = uVar6 + 4;
            puVar4 = puStack_20;
          } while (uVar6 < 0x744);
        }
      }
    }
  }
  else {
    puVar4 = &stack0xfffffffc;
    switch(iVar10) {
    case 0:
      param_1[0x5b] = param_1[0x5b] | 8;
      *(undefined *)(param_1 + 0xec) = 1;
      param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 0xc4100011;
      param_1[0x2d9] = 0x10;
      param_1[0x62] = 0;
      *(undefined *)((int)param_1 + 0x171) = 0;
      puStack_20 = &stack0xfffffffc;
      FUN_0040a6e0("Appear",0);
      param_1[0xcd] = param_1[0xcf];
      param_1[0xce] = param_1[0xd0];
      FUN_0041b4f0(param_1);
      param_1[0x61] = 0;
      param_1[0x3c6] = 1;
      param_1[0x2f0] = 0;
      if (param_1[0xcb] < 0) {
        FUN_0040a380(&DAT_00b1bc54,0);
        param_1[0x5a] = param_1[0x5a] & 0xbbffffff;
        param_1[0x2d9] = 3;
        param_1[0x2f0] = 0x3c;
        param_1[0x5b] = param_1[0x5b];
        param_1[0x62] = 1;
        *(undefined *)(param_1 + 0x30f) = 0;
        param_1[0x104] = 0;
        puVar4 = puStack_20;
      }
      else {
        uVar7 = 0;
        uVar6 = *(uint *)(*(int *)((int)DAT_00c71678 + 0x18300) + 0x1264);
        puVar4 = puStack_20;
        if (uVar6 != 0) {
          piVar9 = *(int **)(*(int *)((int)DAT_00c71678 + 0x18300) + 0x125c);
          do {
            iVar10 = *piVar9;
            if ((*(int *)(iVar10 + 0x28) == 5) && (*(int *)(iVar10 + 0x2c) == 100)) {
              param_1 = param_1 + 0x2fb;
              if (param_1[0x2fb] != 0) {
                local_60 = param_1;
                FUN_004cf210(&local_60);
              }
              *param_1 = iVar10;
              FUN_004cdcf0(param_1);
              puVar4 = puStack_20;
              break;
            }
            uVar7 = uVar7 + 1;
            piVar9 = piVar9 + 1;
          } while (uVar7 < uVar6);
        }
      }
      break;
    case 2:
      if (param_1[0x2e9] < 1) {
        param_1[0xd8] = (int)((float)param_1[0xcd] - (float)param_1[0xcf]);
        param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
        puStack_20 = &stack0xfffffffc;
        cVar5 = FUN_0040b030("Shoot");
        if (cVar5 != '\0') {
          FUN_006d0c60(&local_80,0x21,0xffffffff);
          iVar10 = iStack_7c;
          fVar16 = 0.0;
          local_14 = 1;
          if (fStack_74 != 0.0) {
            do {
              iVar13 = *(int *)(iVar10 + (int)fVar16 * 4);
              if (((1 < *(int *)((int)DAT_00c71678 + 0x26614)) && (*(int *)(iVar13 + 0x28) == 1)) ||
                 (*(int *)(iVar13 + 0x28) - 10U < 0x3de)) {
                FUN_006c0f30(0x21,1,0,0xffffffff);
                *(undefined4 *)(*(int *)(iVar10 + (int)fVar16 * 4) + 0xb64) = 9;
                (**(code **)(**(int **)(iVar10 + (int)fVar16 * 4) + 0xc))();
              }
              fVar16 = (float)((int)fVar16 + 1);
              param_1 = local_60;
            } while ((uint)fVar16 < (uint)fStack_74);
          }
          local_54 = 1.000527e-42;
          FUN_00956780();
          FUN_0092dc30(local_54,0x3f800000,2,0,0x3f800000,0);
          local_14 = 0xffffffff;
          FUN_004175b0();
        }
        if ((param_1[0x1f] == 0) || (puVar4 = puStack_20, *(char *)(param_1 + 0x23) == '\0')) {
          FUN_0040a380(&DAT_00b1bc54,0);
          param_1[0x5a] = param_1[0x5a] & 0xbbffffff;
          param_1[0x2d9] = 3;
          param_1[0x2f0] = 0x3c;
          param_1[0x5b] = param_1[0x5b];
          param_1[0x62] = 1;
          *(undefined *)(param_1 + 0x30f) = 0;
          fVar16 = DAT_00c71678;
          local_54 = DAT_00c71678;
          local_58 = 0.0;
          *(uint *)((int)DAT_00c71678 + 0x1839c) = *(uint *)((int)DAT_00c71678 + 0x1839c) | 0x400000
          ;
          puVar4 = puStack_20;
          if (0 < *(int *)((int)fVar16 + 0x182cc)) {
            local_5c = 0.0;
            do {
              if (((*(int *)((int)local_5c + 0x20 + (int)fVar16) == 1) &&
                  (puVar11 = *(undefined4 **)((int)local_5c + 0x24 + (int)fVar16),
                  puVar11 != (undefined4 *)0x0)) && ((puVar11[2] == 1 && (puVar11[4] == 0x1e)))) {
                uVar8 = FUN_0082c720(*puVar11,1,puVar11[3] + 1,0xffffffff);
                *(undefined4 *)((int)local_5c + 0x24 + (int)fVar16) = uVar8;
                piVar9 = *(int **)((int)local_5c + 0xa0 + (int)fVar16);
                piVar15 = *(int **)((int)local_5c + 0x9c + (int)fVar16);
                local_60 = piVar9;
                if (piVar15 != piVar9) {
                  do {
                    FUN_004d6ee0();
                    piVar15 = piVar15 + 0x1e;
                  } while (piVar15 != piVar9);
                  piVar15 = *(int **)((int)local_5c + 0x9c + (int)local_54);
                  fVar16 = local_54;
                }
                *(int **)((int)local_5c + 0xa0 + (int)fVar16) = piVar15;
                piVar9 = *(int **)((int)local_5c + 0x8c + (int)fVar16);
                piVar15 = *(int **)((int)local_5c + 0x88 + (int)fVar16);
                local_60 = piVar9;
                if (piVar15 != piVar9) {
                  do {
                    FUN_004d6ee0();
                    piVar15 = piVar15 + 0x1e;
                  } while (piVar15 != piVar9);
                  piVar15 = *(int **)((int)local_5c + 0x88 + (int)local_54);
                  fVar16 = local_54;
                }
                *(int **)((int)local_5c + 0x8c + (int)fVar16) = piVar15;
                puVar11 = *(undefined4 **)((int)local_5c + 0x7c + (int)fVar16);
                local_90 = 0;
                uStack_8c = 0;
                puVar14 = (undefined4 *)
                          ((*(int *)((int)local_5c + 0x80 + (int)fVar16) - (int)puVar11 &
                           0xffffffe0U) + (int)puVar11);
                uStack_88 = 0;
                uStack_84 = 0;
                local_80 = 0x16a9de81;
                iStack_7c = 0;
                fStack_78 = (float)((uint)fStack_78 & 0xffffff00);
                fStack_74 = 2.744384e-25;
                if (puVar11 != puVar14) {
                  auVar3._8_4_ = fStack_78;
                  auVar3._0_8_ = 0x16a9de81;
                  auVar3._12_4_ = 0x16a9de81;
                  do {
                    *puVar11 = 0;
                    puVar11[1] = 0;
                    puVar11[2] = 0;
                    puVar11[3] = 0;
                    *(undefined (*) [16])(puVar11 + 4) = auVar3;
                    puVar11 = puVar11 + 8;
                  } while (puVar11 != puVar14);
                }
                *(undefined4 **)((int)local_5c + 0x80 + (int)fVar16) = puVar14;
                piVar9 = (int *)((int)fVar16 + (int)local_5c + 0x94);
                iVar10 = *piVar9;
                FID_conflict__Erase_tree<class_fuzzer::fuzzer_allocator<struct_std::_Tree_node<struct_fuzzer::TracePC::PCTableEntry_const*,void*>_>_>
                          (piVar9,*(undefined4 *)(iVar10 + 4));
                *(int *)(iVar10 + 4) = iVar10;
                *(int *)iVar10 = iVar10;
                *(int *)(iVar10 + 8) = iVar10;
                piVar9[1] = 0;
                *(undefined4 *)((int)local_5c + 0x54 + (int)local_54) = 0;
                local_54 = DAT_00c71678;
                fVar16 = DAT_00c71678;
              }
              local_58 = (float)((int)local_58 + 1);
              local_5c = (float)((int)local_5c + 0xb8);
              puVar4 = puStack_20;
            } while ((int)local_58 < *(int *)((int)fVar16 + 0x182cc));
          }
        }
      }
      else {
        iVar10 = param_1[0x2e9] + -1;
        param_1[0x2e9] = iVar10;
        puVar4 = &stack0xfffffffc;
        if (iVar10 < 1) {
          puStack_20 = &stack0xfffffffc;
          cVar5 = FUN_0040a5d0("Appear",1);
          if (cVar5 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x23) = 1;
          }
          *(undefined *)((int)param_1 + 0x171) = 1;
          FUN_006d0c60(&local_80,0x21,0xffffffff);
          iVar10 = iStack_7c;
          fVar16 = 0.0;
          local_14 = 0;
          if (fStack_74 != 0.0) {
            do {
              *(undefined *)(*(int *)(iVar10 + (int)fVar16 * 4) + 0x173) = 1;
              (**(code **)(**(int **)(iVar10 + (int)fVar16 * 4) + 0xc))();
              fVar16 = (float)((int)fVar16 + 1);
            } while ((uint)fVar16 < (uint)fStack_74);
          }
          FUN_004175b0();
          puVar4 = puStack_20;
        }
      }
      break;
    case 3:
      fVar16 = (float)param_1[0xdb] * DAT_00baa3a4;
      *(undefined *)((int)param_1 + 0x171) = 1;
      param_1[0xdb] = (int)fVar16;
      puStack_20 = &stack0xfffffffc;
      local_5c = (float)FUN_006be840();
      FUN_006bec40(&local_70,0);
      local_60 = (int *)param_1[0xcf];
      local_64 = (float *)(local_70 - (float)local_60);
      local_58 = (float)local_64 * (float)local_64 +
                 (local_6c - (float)param_1[0xd0]) * (local_6c - (float)param_1[0xd0]);
      FUN_00435a50();
      iVar10 = param_1[0x2f0];
      if (0 < iVar10) {
        iVar10 = iVar10 - (int)local_54;
        param_1[0x2f0] = iVar10;
      }
      local_54 = (float)param_1[0xdb] * DAT_00baa3a4;
      param_1[0x2e9] = param_1[0x2e9] + ((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]);
      param_1[0xdb] = (int)local_54;
      fVar17 = *(float *)((int)local_5c + 0x340) - (float)param_1[0xd0];
      fVar16 = *(float *)((int)local_5c + 0x33c) - (float)local_60;
      fVar16 = fVar17 * fVar17 + fVar16 * fVar16;
      if (DAT_00baac24 < fVar16) {
        local_68 = (float)local_64 * DAT_00baa06c;
        local_64 = (float *)((local_6c - (float)param_1[0xd0]) * DAT_00baa06c);
        FUN_00435a50();
        fVar16 = (fVar16 - 0.0) / DAT_00baab98;
        if (fVar16 <= 0.0) {
          fVar16 = 0.0;
        }
        if (DAT_00baa454 <= fVar16) {
          fVar16 = DAT_00baa454;
        }
        pfVar12 = (float *)FUN_00a10100(&fStack_78,fVar16 * DAT_00baa7a4 + 0.0);
        if (NAN(local_54) == (local_54 == 0.0)) {
          fVar16 = pfVar12[1];
          param_1[0xd8] = (int)(((float)param_1[0xe7] * *pfVar12) / local_54 + (float)param_1[0xd8])
          ;
          param_1[0xd9] = (int)(((float)param_1[0xe7] * fVar16) / local_54 + (float)param_1[0xd9]);
          iVar10 = param_1[0x2f0];
        }
      }
      puVar4 = puStack_20;
      if ((iVar10 < 1) && (local_58 < DAT_00baaa94)) {
        FUN_0040a380("Attack",0);
        pfVar12 = (float *)(param_1 + 0xf1);
        param_1[0x2d9] = 8;
        param_1[0x104] = 0;
        if (param_1[0xf1] != 0) {
          local_64 = pfVar12;
          FUN_004cf210(&local_64);
        }
        *pfVar12 = local_5c;
        FUN_004cdcf0(pfVar12);
        param_1[0xcd] = DAT_00c7b640;
        param_1[0xce] = DAT_00c7b644;
        puVar4 = puStack_20;
      }
      break;
    case 5:
      iVar10 = param_1[0x104];
      param_1[0x104] = iVar10 + (int)local_54;
      puStack_20 = &stack0xfffffffc;
      if (0x1d < iVar10 + (int)local_54) {
        puStack_20 = &stack0xfffffffc;
        (**(code **)(*param_1 + 0x28))();
      }
      FUN_00703670(0xe);
      puVar4 = puStack_20;
      break;
    case 8:
      puStack_20 = &stack0xfffffffc;
      if (param_1[0x104] == 0) {
        local_58 = 1.001928e-42;
        puStack_20 = &stack0xfffffffc;
        FUN_00956780(uVar6);
        FUN_0092dc30(local_58,0x3f800000,2,0,0x3f800000,0);
      }
      fVar16 = local_54;
      cVar5 = FUN_0040b090("ShootEnd");
      if (cVar5 == '\0') {
        cVar5 = FUN_0040b090("Shoot");
        if ((cVar5 == '\0') || (cVar5 = FUN_0040b090("ShootEnd"), cVar5 != '\0')) {
          param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
          if (param_1[0xf1] == 0) {
            iVar10 = FUN_006be840();
            fVar17 = *(float *)(iVar10 + 0x33c);
            fVar19 = *(float *)(iVar10 + 0x340);
          }
          else {
            pfVar12 = (float *)FUN_006bec40(&fStack_78,0);
            local_5c = pfVar12[1];
            local_54 = *pfVar12;
            local_60 = (int *)((float)param_1[0xd0] - local_5c);
            local_58 = (float)param_1[0xcf] - local_54;
            fVar17 = (float)local_60 * (float)local_60 + local_58 * local_58;
            FUN_00435a50();
            piVar9 = local_60;
            fVar2 = local_58;
            if (0.0 < fVar17) {
              piVar9 = (int *)((float)local_60 * (DAT_00baaa78 / fVar17));
              fVar2 = local_58 * (DAT_00baaa78 / fVar17);
            }
            fVar1 = (float)param_1[0xdb];
            fVar18 = ((local_5c + (float)piVar9) - (float)param_1[0xd0]) * DAT_00baa06c;
            fVar17 = local_54;
            fVar19 = local_5c;
            if (NAN(fVar1) == (fVar1 == 0.0)) {
              param_1[0xd8] =
                   (int)((((local_54 + fVar2) - (float)param_1[0xcf]) * DAT_00baa06c *
                         (float)param_1[0xe7]) / fVar1 + (float)param_1[0xd8]);
              param_1[0xd9] = (int)((fVar18 * (float)param_1[0xe7]) / fVar1 + (float)param_1[0xd9]);
            }
          }
          iVar10 = param_1[0x104];
          param_1[0x104] = iVar10 + (int)fVar16;
          if ((0xe < iVar10 + (int)fVar16) && (cVar5 = FUN_00a10600(&DAT_00c7b640), cVar5 != '\0'))
          {
            fStack_78 = fVar17 - (float)param_1[0xcf];
            fStack_74 = fVar19 - (float)param_1[0xd0];
            piVar9 = (int *)FUN_00a10030(local_98);
            param_1[0xcd] = *piVar9;
            param_1[0xce] = piVar9[1];
          }
          cVar5 = FUN_0040b030("Shoot");
          puVar4 = puStack_20;
          if (cVar5 != '\0') {
            param_1[0x104] = 0;
          }
        }
        else {
          cVar5 = FUN_0040b030("Shoot");
          if (cVar5 != '\0') {
            local_58 = 1.00333e-42;
            FUN_00956780();
            FUN_0092dc30(local_58,0x3f800000,2,0,0x3f800000,0);
          }
          param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
          fVar16 = (float)param_1[0xcd] * DAT_00baa7a4;
          param_1[0xd9] =
               (int)((float)param_1[0xce] * DAT_00baa7a4 * (float)param_1[0xe7] +
                    (float)param_1[0xd9]);
          param_1[0xd8] = (int)(fVar16 * (float)param_1[0xe7] + (float)param_1[0xd8]);
          iVar10 = FUN_006ac760();
          if (iVar10 != 0) {
            local_58 = (float)param_1[0xd3];
            local_5c = (float)param_1[0xcf];
            local_64 = (float *)param_1[0xd0];
            local_60 = (int *)param_1[0xd4];
            pfVar12 = (float *)FUN_006b6af0(&local_70,&DAT_00b613c0);
            fStack_74 = (float)local_64 + (float)local_60 + pfVar12[1];
            fStack_78 = local_58 + local_5c + *pfVar12;
            uVar8 = FUN_006eef60();
            local_64 = (float *)((float)param_1[0xd9] * DAT_00baa120);
            local_70 = (float)param_1[0xd8] * DAT_00baa120 + 0.0;
            iVar10 = FUN_006eef60();
            local_6c = (DAT_00baad74 -
                       (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa7a4) + (float)local_64;
            iVar10 = FUN_00428b20(1000,0x3b,&fStack_78,&local_70,param_1,0,uVar8);
            uVar8 = FUN_004238f0(0x3f800000);
            FUN_0040b220(0);
            FUN_004071f0(uVar8);
            iVar13 = FUN_006eef60();
            *(float *)(iVar10 + 0x474) =
                 (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa81c + DAT_00baa630;
            uVar6 = FUN_006eef60();
            iVar13 = uVar6 % 10 + 10;
            *(int *)(iVar10 + 0x45c) = iVar13;
            *(int *)(iVar10 + 0x460) = iVar13;
            iVar13 = FUN_006eef60();
            fVar16 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa2d0 + DAT_00baa528;
            fVar17 = fVar16 * DAT_00c37940;
            fVar16 = fVar16 * DAT_00c3793c;
            *(undefined4 *)(iVar10 + 0x354) = 0xfffff830;
            *(float *)(iVar10 + 0xe8) = fVar17;
            *(float *)(iVar10 + 0xe4) = fVar16;
          }
          param_1[0x104] = param_1[0x104] + (int)local_54;
          puVar4 = puStack_20;
        }
      }
      else {
        param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
        if ((param_1[0x1f] == 0) || (puVar4 = puStack_20, *(char *)(param_1 + 0x23) == '\0')) {
          FUN_0040a380(&DAT_00b1bc54,0);
          param_1[0x2d9] = 3;
          param_1[0x2f0] = 0x5a;
          puVar4 = puStack_20;
        }
      }
      break;
    case 0x10:
      param_1[0xcf] = param_1[0xcd];
      param_1[0xd0] = param_1[0xce];
      iVar10 = param_1[0x2fb];
      if (((iVar10 == 0) || (*(char *)(iVar10 + 0x173) != '\0')) ||
         (puVar4 = &stack0xfffffffc, *(int *)(iVar10 + 0x30) == 0)) {
        puVar4 = &stack0xfffffffc;
        if (param_1[0x2f0] == 0) {
          param_1[0x2f0] = 1;
          FUN_007e1e70(0x42,0x3da3d70a);
          puVar4 = puStack_20;
          if (0x75 < (*(int *)(DAT_00c7169c + 0x2a2dc) - *(int *)(DAT_00c7169c + 0x2a2d8)) / 0x60) {
            *(undefined4 *)(DAT_00c7169c + 0x2a2cc) = 0x75;
          }
        }
        puStack_20 = puVar4;
        uVar6 = 0;
        if (*(int *)((int)DAT_00c71678 + 0x1baac) - *(int *)((int)DAT_00c71678 + 0x1baa8) >> 2 != 0)
        {
          do {
            iVar10 = FUN_00417870(uVar6);
            puVar4 = puStack_20;
            if (*(int *)(iVar10 + 0x17c4) != 0) goto switchD_00570301_caseD_1;
            uVar6 = uVar6 + 1;
          } while (uVar6 < (uint)(*(int *)((int)DAT_00c71678 + 0x1baac) -
                                  *(int *)((int)DAT_00c71678 + 0x1baa8) >> 2));
        }
        param_1[0x2d9] = 2;
        param_1[0x2e9] = 0x1e;
        puVar4 = puStack_20;
      }
    }
  }
switchD_00570301_caseD_1:
  puStack_20 = puVar4;
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

