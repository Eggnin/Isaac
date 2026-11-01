/* Local J460 decompiler output.
 * VA: 0x004df3f0
 * Entry: 004df3f0
 * Dispatcher: 0x006c2990
 * Types: 865
 * Identities: 865.0.0,865.10.0
 * Evidence: dispatcher=0x006c2990; end=0x004e07a0; instructions=1127
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=865; identities=865.0.0,865.10.0;
   dispatcher=0x006c2990; end=0x004e07a0; instructions=1127 */

void __fastcall AI_004df3f0(int *param_1)

{
  int iVar1;
  undefined *puVar2;
  char cVar3;
  uint uVar4;
  int iVar5;
  undefined4 uVar6;
  char *pcVar7;
  float *pfVar8;
  int *piVar9;
  uint uVar10;
  uint uVar11;
  undefined auVar12 [16];
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  int *local_98;
  undefined4 local_94;
  int local_90;
  float local_8c;
  undefined4 local_88;
  float local_84;
  float local_80;
  float local_7c;
  undefined4 local_78;
  float local_74;
  float local_70;
  undefined local_6c [4];
  int *local_68;
  undefined local_64 [16];
  undefined local_54 [24];
  undefined local_3c [8];
  char local_34 [4];
  int local_30;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  fVar15 = DAT_00baa3a4;
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af3add;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_68 = param_1;
  local_24 = uVar4;
  if (param_1[0xb] == 10) {
    local_74 = (float)param_1[0x2dd];
    if ((local_74 == 1.401298e-45) || (local_74 == 2.802597e-45)) {
      local_88 = (float)CONCAT31(local_88._1_3_,local_74 == 2.802597e-45);
      puStack_20 = &stack0xfffffffc;
      if (local_74 != 2.802597e-45) {
        if (param_1[0xef] == 0) {
          puStack_20 = &stack0xfffffffc;
          uVar6 = FUN_00435c70();
          (**(code **)(*param_1 + 0x24))(uVar6);
          goto LAB_004e0649;
        }
        iVar5 = param_1[0xf1];
        puStack_20 = &stack0xfffffffc;
        if (iVar5 != 0) {
          fVar15 = *(float *)(iVar5 + 0x340);
          param_1[0xd8] = (int)(*(float *)(iVar5 + 0x33c) - (float)param_1[0xcf]);
          param_1[0xd9] = (int)(fVar15 - (float)param_1[0xd0]);
          puStack_20 = &stack0xfffffffc;
          cVar3 = FUN_006ac6c0();
          iVar5 = DAT_00baadc0;
          if (cVar3 != '\0') {
            iVar5 = DAT_00baadec;
          }
          param_1[0xd4] = iVar5;
        }
        local_70 = 4.203895e-45;
        local_90 = *(int *)(DAT_00c71678 + 0x18300);
        do {
          if (param_1[0xf1] != 0) break;
          local_98 = (int *)param_1[0x304];
          uVar4 = (int)local_70 + (int)local_98 & 1;
          iVar5 = *(int *)(param_1[0x302] +
                          (param_1[0x303] - 1U & (uint)((int)local_70 + (int)local_98) >> 1) * 4);
          local_84 = *(float *)(iVar5 + uVar4 * 8) - (float)param_1[0xcf];
          local_80 = *(float *)(iVar5 + 4 + uVar4 * 8) - (float)param_1[0xd0];
          FUN_006a9ba0(local_64,&local_84);
          FUN_0041ab50(local_34,local_64,0x20);
          local_14 = 0;
          uVar4 = 0;
          if (local_28 != 0) {
            do {
              local_98 = *(int **)(local_30 + uVar4 * 4);
              if (local_98[10] == 1) {
                local_7c = 1.079e-43;
                FUN_00956780();
                FUN_0092dc30(local_7c,0x3f000000,2,0,0x3f800000,0);
                FUN_00703670(6);
                piVar9 = local_98;
                local_98[0xd8] = DAT_00c7b640;
                local_98[0xd9] = DAT_00c7b644;
                if (param_1[0xf1] != 0) {
                  local_98 = param_1 + 0xf1;
                  FUN_004cf210(&local_98);
                }
                param_1[0xf1] = (int)piVar9;
                FUN_004cdcf0(param_1 + 0xf1);
                break;
              }
              uVar4 = uVar4 + 1;
            } while (uVar4 < local_28);
          }
          if (local_34[0] == '\0') {
            local_14 = 1;
            FUN_00a648b0(0,0);
          }
          local_14 = 0xffffffff;
          local_70 = (float)((int)local_70 + 3);
        } while ((uint)local_70 < 0x15);
      }
      fVar13 = local_74;
      fVar15 = DAT_00baa198;
      if (param_1[0xf1] == 0) {
        if (local_74 == 2.802597e-45) {
          fVar15 = (float)param_1[0xe7] * DAT_00baad2c;
        }
        else {
          fVar15 = 0.0;
        }
        local_74 = (fVar15 + (float)param_1[0xe9]) / DAT_00baa854;
        fVar15 = (local_74 + local_74) - DAT_00baa454;
        FUN_004e4690();
        fVar16 = DAT_00baa2d0;
        fVar14 = (DAT_00baa454 - fVar15) * DAT_00baaa94;
        if ((0.0 < local_74) && (fVar14 <= 0.0)) {
          if (fVar13 != 2.802597e-45) {
            (**(code **)(*param_1 + 0x28))();
          }
          goto LAB_004e0649;
        }
        iVar5 = param_1[0xef];
        fVar15 = DAT_00baa198;
        if (iVar5 != 0) {
          fVar15 = *(float *)(iVar5 + 0x33c);
          param_1[0xd0] = (int)(fVar14 * (float)param_1[0xce] + *(float *)(iVar5 + 0x340));
          param_1[0xcf] = (int)(fVar14 * (float)param_1[0xcd] + fVar15);
          fVar15 = DAT_00baa198;
          if ((fVar16 < local_74) && (fVar13 != 2.802597e-45)) {
            uVar4 = param_1[0x304];
            iVar5 = *(int *)(param_1[0x302] + (uVar4 >> 1 & param_1[0x303] - 1U) * 4);
            fVar13 = (float)local_68[0xe7];
            uVar10 = uVar4 + 1 & 1;
            fVar16 = (*(float *)(param_1[0xef] + 0x340) - *(float *)(iVar5 + 4 + (uVar4 & 1) * 8)) *
                     DAT_00baa198;
            iVar1 = *(int *)(local_68[0x302] + (local_68[0x303] - 1U & uVar4 + 1 >> 1) * 4);
            *(float *)(iVar1 + uVar10 * 8) =
                 (*(float *)(param_1[0xef] + 0x33c) - *(float *)(iVar5 + (uVar4 & 1) * 8)) *
                 DAT_00baa198 * fVar13 + *(float *)(iVar1 + uVar10 * 8);
            *(float *)(iVar1 + 4 + uVar10 * 8) =
                 fVar16 * fVar13 + *(float *)(iVar1 + 4 + uVar10 * 8);
            fVar13 = *(float *)(local_68[0xef] + 0x340);
            uVar4 = local_68[0x304] + 3;
            uVar10 = local_68[0x304] + 4;
            uVar11 = uVar4 & 1;
            iVar5 = *(int *)(local_68[0x302] + (local_68[0x303] - 1U & uVar4 >> 1) * 4);
            fVar16 = (float)local_68[0xe7];
            fVar14 = *(float *)(iVar5 + 4 + uVar11 * 8);
            uVar4 = uVar10 & 1;
            iVar1 = *(int *)(local_68[0x302] + (local_68[0x303] - 1U & uVar10 >> 1) * 4);
            *(float *)(iVar1 + uVar4 * 8) =
                 (*(float *)(local_68[0xef] + 0x33c) - *(float *)(iVar5 + uVar11 * 8)) * fVar15 *
                 fVar16 + *(float *)(iVar1 + uVar4 * 8);
            *(float *)(iVar1 + 4 + uVar4 * 8) =
                 (fVar13 - fVar14) * fVar15 * fVar16 + *(float *)(iVar1 + 4 + uVar4 * 8);
            uVar4 = local_68[0x304] + 6;
            fVar13 = *(float *)(local_68[0xef] + 0x340);
            uVar10 = local_68[0x304] + 7;
            uVar11 = uVar4 & 1;
            iVar5 = *(int *)(local_68[0x302] + (uVar4 >> 1 & local_68[0x303] - 1U) * 4);
            uVar4 = uVar10 & 1;
            fVar16 = (float)local_68[0xe7];
            fVar14 = *(float *)(iVar5 + 4 + uVar11 * 8);
            iVar1 = *(int *)(local_68[0x302] + (uVar10 >> 1 & local_68[0x303] - 1U) * 4);
            *(float *)(iVar1 + uVar4 * 8) =
                 (*(float *)(local_68[0xef] + 0x33c) - *(float *)(iVar5 + uVar11 * 8)) * fVar15 *
                 fVar16 + *(float *)(iVar1 + uVar4 * 8);
            *(float *)(iVar1 + 4 + uVar4 * 8) =
                 (fVar13 - fVar14) * fVar15 * fVar16 + *(float *)(iVar1 + 4 + uVar4 * 8);
            fVar13 = *(float *)(local_68[0xef] + 0x340);
            uVar4 = local_68[0x304] + 9;
            uVar10 = local_68[0x304] + 10;
            uVar11 = uVar4 & 1;
            iVar5 = *(int *)(local_68[0x302] + (local_68[0x303] - 1U & uVar4 >> 1) * 4);
            uVar4 = uVar10 & 1;
            fVar16 = (float)local_68[0xe7];
            fVar14 = *(float *)(iVar5 + 4 + uVar11 * 8);
            iVar1 = *(int *)(local_68[0x302] + (uVar10 >> 1 & local_68[0x303] - 1U) * 4);
            *(float *)(iVar1 + uVar4 * 8) =
                 (*(float *)(local_68[0xef] + 0x33c) - *(float *)(iVar5 + uVar11 * 8)) * fVar15 *
                 fVar16 + *(float *)(iVar1 + uVar4 * 8);
            *(float *)(iVar1 + 4 + uVar4 * 8) =
                 (fVar13 - fVar14) * fVar15 * fVar16 + *(float *)(iVar1 + 4 + uVar4 * 8);
            fVar13 = *(float *)(local_68[0xef] + 0x340);
            uVar4 = local_68[0x304] + 0xc;
            uVar11 = uVar4 & 1;
            iVar5 = *(int *)(local_68[0x302] + (uVar4 >> 1 & local_68[0x303] - 1U) * 4);
            fVar16 = *(float *)(iVar5 + 4 + uVar11 * 8);
            uVar4 = local_68[0x304] + 0xd;
            uVar10 = uVar4 & 1;
            fVar14 = (float)local_68[0xe7];
            iVar1 = *(int *)(local_68[0x302] + (uVar4 >> 1 & local_68[0x303] - 1U) * 4);
            *(float *)(iVar1 + uVar10 * 8) =
                 (*(float *)(local_68[0xef] + 0x33c) - *(float *)(iVar5 + uVar11 * 8)) * fVar15 *
                 fVar14 + *(float *)(iVar1 + uVar10 * 8);
            *(float *)(iVar1 + 4 + uVar10 * 8) =
                 (fVar13 - fVar16) * fVar15 * fVar14 + *(float *)(iVar1 + 4 + uVar10 * 8);
            fVar13 = *(float *)(local_68[0xef] + 0x340);
            uVar4 = local_68[0x304] + 0xf;
            uVar11 = uVar4 & 1;
            uVar10 = local_68[0x304] + 0x10;
            iVar5 = *(int *)(local_68[0x302] + (uVar4 >> 1 & local_68[0x303] - 1U) * 4);
            fVar16 = (float)local_68[0xe7];
            fVar14 = *(float *)(iVar5 + 4 + uVar11 * 8);
            uVar4 = uVar10 & 1;
            iVar1 = *(int *)(local_68[0x302] + (uVar10 >> 1 & local_68[0x303] - 1U) * 4);
            *(float *)(iVar1 + uVar4 * 8) =
                 (*(float *)(local_68[0xef] + 0x33c) - *(float *)(iVar5 + uVar11 * 8)) * fVar15 *
                 fVar16 + *(float *)(iVar1 + uVar4 * 8);
            *(float *)(iVar1 + 4 + uVar4 * 8) =
                 (fVar13 - fVar14) * fVar15 * fVar16 + *(float *)(iVar1 + 4 + uVar4 * 8);
            param_1 = local_68;
          }
        }
      }
      iVar5 = param_1[0xef];
      if ((iVar5 != 0) && (param_1[0x305] != 0)) {
        uVar6 = *(undefined4 *)(iVar5 + 0x340);
        uVar4 = param_1[0x304] & 1;
        iVar1 = *(int *)(param_1[0x302] + (param_1[0x303] - 1U & (uint)param_1[0x304] >> 1) * 4);
        *(undefined4 *)(iVar1 + uVar4 * 8) = *(undefined4 *)(iVar5 + 0x33c);
        *(undefined4 *)(iVar1 + 4 + uVar4 * 8) = uVar6;
        fVar13 = *(float *)(param_1[0xef] + 0x364);
        uVar4 = param_1[0x304] + 1U & 1;
        iVar5 = *(int *)(param_1[0x302] + (param_1[0x304] + 1U >> 1 & param_1[0x303] - 1U) * 4);
        *(float *)(iVar5 + uVar4 * 8) = *(float *)(param_1[0xef] + 0x360) * fVar15;
        *(float *)(iVar5 + 4 + uVar4 * 8) = fVar13 * fVar15;
        uVar4 = param_1[0x304] + 2U & 1;
        iVar5 = *(int *)(param_1[0x302] + (param_1[0x304] + 2U >> 1 & param_1[0x303] - 1U) * 4);
        *(undefined4 *)(iVar5 + uVar4 * 8) = 0xc1a00000;
        *(undefined4 *)(iVar5 + 4 + uVar4 * 8) = 0;
        uVar4 = param_1[0x305] + param_1[0x304] + -3;
        uVar10 = uVar4 & 1;
        iVar5 = *(int *)(param_1[0x302] + (uVar4 >> 1 & param_1[0x303] - 1U) * 4);
        *(int *)(iVar5 + uVar10 * 8) = param_1[0xcf];
        *(int *)(iVar5 + 4 + uVar10 * 8) = param_1[0xd0];
        uVar4 = param_1[0x305] + param_1[0x304] + -2;
        uVar10 = uVar4 & 1;
        iVar5 = *(int *)(param_1[0x302] + (uVar4 >> 1 & param_1[0x303] - 1U) * 4);
        *(int *)(iVar5 + uVar10 * 8) = param_1[0xd8];
        *(int *)(iVar5 + 4 + uVar10 * 8) = param_1[0xd9];
        uVar4 = param_1[0x305] + param_1[0x304] + -1;
        uVar10 = uVar4 & 1;
        iVar5 = *(int *)(param_1[0x302] + (uVar4 >> 1 & param_1[0x303] - 1U) * 4);
        *(int *)(iVar5 + uVar10 * 8) = param_1[0xd4];
        *(undefined4 *)(iVar5 + 4 + uVar10 * 8) = 0;
        FUN_004e8fa0(local_88);
      }
    }
    else {
      puStack_20 = &stack0xfffffffc;
      if (param_1[0x2d9] == 0) {
        if (param_1[0xef] == 0) {
          puStack_20 = &stack0xfffffffc;
          (**(code **)(*param_1 + 0x28))();
          goto LAB_004e0649;
        }
        puStack_20 = &stack0xfffffffc;
        FUN_004071f0(&DAT_00c34e80);
        fVar15 = DAT_00baa54c;
        param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 0x10000;
        param_1[0x5b] = param_1[0x5b];
        FUN_0041d540();
        local_68 = (int *)fVar15;
        fVar15 = DAT_00baa54c;
        FUN_0041d520();
        uVar4 = 0;
        local_7c = (float)local_68 * (float)param_1[0xcd] - (float)param_1[0xce] * fVar15;
        local_68 = (int *)((float)local_68 * (float)param_1[0xce] + (float)param_1[0xcd] * fVar15);
        do {
          local_8c = *(float *)(param_1[0xef] + 0x33c);
          fVar15 = *(float *)(param_1[0xef] + 0x340);
          fVar13 = (float)((double)uVar4 + (double)(&DAT_00bacb00)[-((int)uVar4 >> 0x1f)]) /
                   DAT_00baa7a4;
          local_8c = ((float)param_1[0xcf] - local_8c) * fVar13 + local_8c;
          local_88 = ((float)param_1[0xd0] - fVar15) * fVar13 + fVar15;
          FUN_004b0f50(&local_8c);
          local_78 = 0;
          local_74 = 0.0;
          FUN_004b0f50(&local_78);
          local_94 = 0xc1a00000;
          local_90 = 0;
          FUN_004b0f50(&local_94);
          if ((uVar4 != 0) && (uVar4 != 6)) {
            iVar5 = FUN_006eef60();
            local_70 = (float)(uVar4 & 1);
            fVar13 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa75c;
            fVar15 = DAT_00baad50;
            if (local_70 != 0.0) {
              fVar15 = DAT_00baa454;
            }
            uVar10 = param_1[0x304] + -3 + param_1[0x305];
            uVar11 = uVar10 & 1;
            iVar5 = *(int *)(param_1[0x302] + (uVar10 >> 1 & param_1[0x303] - 1U) * 4);
            *(float *)(iVar5 + uVar11 * 8) =
                 local_7c * fVar13 * fVar15 + *(float *)(iVar5 + uVar11 * 8);
            *(float *)(iVar5 + 4 + uVar11 * 8) =
                 (float)local_68 * fVar13 * fVar15 + *(float *)(iVar5 + 4 + uVar11 * 8);
            iVar5 = FUN_006eef60();
            fVar13 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa87c;
            fVar15 = DAT_00baad50;
            if (local_70 != 0.0) {
              fVar15 = DAT_00baa454;
            }
            uVar10 = param_1[0x305] + param_1[0x304] + -2;
            uVar11 = uVar10 & 1;
            iVar5 = *(int *)(param_1[0x302] + (uVar10 >> 1 & param_1[0x303] - 1U) * 4);
            *(float *)(iVar5 + uVar11 * 8) =
                 local_7c * fVar13 * fVar15 + *(float *)(iVar5 + uVar11 * 8);
            *(float *)(iVar5 + 4 + uVar11 * 8) =
                 (float)local_68 * fVar13 * fVar15 + *(float *)(iVar5 + 4 + uVar11 * 8);
          }
          uVar4 = uVar4 + 1;
        } while (uVar4 < 7);
        FUN_004b0e40(param_1 + 0x301);
        param_1[0x3c6] = 3;
        param_1[0x2d9] = 3;
        param_1[0x61] = 0;
        param_1[0x62] = 0;
        FUN_0040a6e0(&DAT_00b60544,0);
        param_1[0xd6] = (int)((float)param_1[0xd6] + DAT_00baa85c);
      }
      if (*(char *)((int)param_1 + 0x173) != '\0') {
        local_68 = (int *)0x3;
        do {
          if ((int)local_68 + 2U < (uint)param_1[0x305]) {
            local_8c = 0.0;
            uVar4 = param_1[0x304] + 2 + (int)local_68;
            local_88 = *(float *)(*(int *)(param_1[0x302] + (uVar4 >> 1 & param_1[0x303] - 1U) * 4)
                                 + (uVar4 & 1) * 8);
            FUN_006d7cf0(&local_8c,param_1 + 0x79,&DAT_00c7b640);
          }
          local_68 = (int *)((int)local_68 + 3);
        } while (local_68 < (int *)0x15);
      }
    }
    goto LAB_004e0649;
  }
  pfVar8 = (float *)(param_1 + 0x2ec);
  iVar5 = param_1[0x2d9];
  puVar2 = &stack0xfffffffc;
  if (iVar5 != 0) {
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    FUN_004cdd80(param_1 + 0xcf,900);
    iVar5 = param_1[0x2d9];
    puVar2 = puStack_20;
  }
  puStack_20 = puVar2;
  switch(iVar5) {
  case 0:
    param_1[0x2d9] = 3;
    FUN_004071f0(&DAT_00c34e80);
    break;
  case 3:
    FUN_0040c340("WalkHori");
    local_14 = 2;
    FUN_0040c340("WalkHori");
    local_14 = CONCAT31(local_14._1_3_,3);
    FUN_006c1330(local_3c,local_54,0x3dcccccd);
    FUN_0040d040();
    local_14 = 0xffffffff;
    FUN_0040d040();
    FUN_007e5340(0x3f333333,0);
    cVar3 = FUN_006ac710(3,param_1[8]);
    if (cVar3 != '\0') {
      iVar5 = FUN_006be840();
      local_74 = *(float *)(iVar5 + 0x33c) - (float)param_1[0xcf];
      local_88 = *(float *)(iVar5 + 0x340) - (float)param_1[0xd0];
      if ((float)((uint)local_74 & DAT_00bacb40) < DAT_00baa8d0) {
LAB_004e0245:
        param_1[0x2d9] = 8;
        *pfVar8 = local_74;
        param_1[0x2ed] = (int)local_88;
      }
      else if ((float)((uint)local_88 & DAT_00bacb40) < DAT_00baa8d0) {
        fVar15 = local_88 * local_88 + local_74 * local_74;
        FUN_00435a50();
        if (fVar15 < DAT_00baab08) goto LAB_004e0245;
      }
    }
    break;
  case 7:
    param_1[0xdb] = (int)((float)param_1[0xdb] * fVar15);
    if ((float)(param_1[0x2ed] & DAT_00bacb40) <= (float)((uint)*pfVar8 & DAT_00bacb40)) {
      FUN_0040a380("PullHoriz",0);
      *(bool *)(param_1 + 0x52) = *pfVar8 <= 0.0 && *pfVar8 != 0.0;
    }
    else {
      pcVar7 = "PullUp";
      if (0.0 <= (float)param_1[0x2ed]) {
        pcVar7 = "PullDown";
      }
      FUN_0040a380(pcVar7,0);
    }
    fVar15 = DAT_00baa81c;
    if (DAT_00baa81c <= (float)param_1[0x30d] - DAT_00baa220) {
      fVar15 = (float)param_1[0x30d] - DAT_00baa220;
    }
    param_1[0x30d] = (int)fVar15;
    iVar5 = FUN_004567e0();
    if (iVar5 == 0) {
LAB_004e04a8:
      param_1[0x2d9] = 3;
    }
    else {
      fVar15 = ((float)param_1[0x30d] - 0.0) / DAT_00baaa5c;
      auVar12 = ZEXT416((uint)fVar15);
      if (fVar15 <= 0.0) {
        auVar12 = ZEXT816(0) << 0x20;
      }
      if (DAT_00baa454 <= auVar12._0_4_) {
        auVar12._0_4_ = DAT_00baa454;
      }
      local_88 = auVar12._0_4_ * DAT_00baa7a4 + 0.0;
      iVar5 = FUN_004567e0();
      *(float *)(iVar5 + 0xc34) = local_88;
      iVar5 = FUN_004567e0();
      *(undefined4 *)(iVar5 + 0x34c) = 0;
      *(undefined4 *)(iVar5 + 0x350) = 0xc1c00000;
    }
    break;
  case 8:
    if ((float)(param_1[0x2ed] & DAT_00bacb40) <= (float)((uint)*pfVar8 & DAT_00bacb40)) {
      FUN_0040a380("Attack01Horiz",0);
      *(bool *)(param_1 + 0x52) = *pfVar8 <= 0.0 && *pfVar8 != 0.0;
    }
    else {
      pcVar7 = "Attack01Up";
      if (0.0 <= (float)param_1[0x2ed]) {
        pcVar7 = "Attack01Down";
      }
      FUN_0040a380(pcVar7,0);
    }
    cVar3 = FUN_0040b030("Shoot");
    if (cVar3 != '\0') {
      iVar5 = FUN_006be840();
      fVar15 = (float)param_1[0xd0] - *(float *)(iVar5 + 0x340);
      fVar13 = (float)param_1[0xcf] - *(float *)(iVar5 + 0x33c);
      fVar15 = fVar15 * fVar15 + fVar13 * fVar13;
      FUN_00435a50();
      fVar15 = fVar15 * DAT_00baa120;
      FUN_0067f170();
      local_84 = (fVar15 * *(float *)(iVar5 + 0x360) + *(float *)(iVar5 + 0x33c)) -
                 (float)param_1[0xcf];
      local_80 = (fVar15 * *(float *)(iVar5 + 0x364) + *(float *)(iVar5 + 0x340)) -
                 (float)param_1[0xd0];
      FUN_00a10030(&local_78);
      FUN_00499d60();
      local_70 = local_88 * DAT_00baa948;
      fVar15 = local_74;
      FUN_00499d60();
      fVar15 = fVar15 * DAT_00baa948 - local_70;
      FUN_00682740();
      if (fVar15 <= DAT_00baae30) {
        fVar15 = DAT_00baae30;
      }
      if (DAT_00baa924 <= fVar15) {
        fVar15 = DAT_00baa924;
      }
      fVar15 = (fVar15 + local_70) * DAT_00baa088;
      local_88 = fVar15;
      FUN_0041d540();
      local_70 = fVar15;
      local_7c = local_88;
      FUN_0041d520();
      uVar6 = FUN_006eef60();
      local_84 = local_70 * DAT_00baa81c + (float)param_1[0xcf];
      local_80 = local_7c * DAT_00baa81c + (float)param_1[0xd0];
      piVar9 = (int *)FUN_00428b20(0x361,10,&local_84,&DAT_00c7b640,param_1,0,uVar6);
      FUN_006a92a0(param_1);
      piVar9[0xcd] = (int)local_70;
      piVar9[0xce] = (int)local_7c;
      FUN_006a92e0(piVar9);
      (**(code **)(*piVar9 + 0xc))();
      FUN_006b6470(0xe2,2,0,0x3f800000);
      param_1[0x30d] = 0x43200000;
    }
    cVar3 = FUN_0040a550(&DAT_00b1a4ec);
    if (cVar3 != '\0') goto LAB_004e04a8;
  }
  iVar5 = FUN_004567e0(uVar4);
  if ((iVar5 != 0) && (local_90 = *(int *)(iVar5 + 0x3c4), local_90 != 0)) {
    param_1[0x2d9] = 7;
    local_7c = (float)param_1[0xd0] - *(float *)(local_90 + 0x340);
    local_70 = (float)param_1[0xcf] - *(float *)(local_90 + 0x33c);
    fVar16 = local_7c * local_7c + local_70 * local_70;
    FUN_00435a50();
    fVar15 = local_70;
    fVar13 = local_7c;
    if (0.0 < fVar16) {
      fVar13 = local_7c * (DAT_00baa454 / fVar16);
      fVar15 = local_70 * (DAT_00baa454 / fVar16);
    }
    local_74 = 0.0;
    local_88 = fVar16 - (float)param_1[0x30d];
    pfVar8 = (float *)&local_88;
    if (fVar16 - (float)param_1[0x30d] <= 0.0) {
      pfVar8 = &local_74;
    }
    fVar16 = *pfVar8 * fVar15 * _DAT_00baa150;
    fVar13 = *pfVar8 * fVar13 * _DAT_00baa150;
    fVar15 = fVar13 * DAT_00baa1d4;
    param_1[0xd8] = (int)((float)param_1[0xd8] - fVar16 * DAT_00baa1d4 * (float)param_1[0xe7]);
    param_1[0xd9] = (int)((float)param_1[0xd9] - fVar15 * (float)param_1[0xe7]);
    *(float *)(local_90 + 0x360) =
         fVar16 * *(float *)(local_90 + 0x39c) + *(float *)(local_90 + 0x360);
    *(float *)(local_90 + 0x364) =
         fVar13 * *(float *)(local_90 + 0x39c) + *(float *)(local_90 + 0x364);
    local_84 = *(float *)(local_90 + 0x33c) - (float)param_1[0xcf];
    local_80 = *(float *)(local_90 + 0x340) - (float)param_1[0xd0];
    piVar9 = (int *)FUN_00a10030(local_6c);
    param_1[0x2ec] = *piVar9;
    param_1[0x2ed] = piVar9[1];
  }
LAB_004e0649:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

