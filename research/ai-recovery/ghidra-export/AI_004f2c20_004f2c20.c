/* Local J460 decompiler output.
 * VA: 0x004f2c20
 * Entry: 004f2c20
 * Dispatcher: 0x006c2990
 * Types: 891
 * Identities: 891.0.0,891.1.0
 * Evidence: dispatcher=0x006c2990; end=0x004f4730; instructions=1517
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=891; identities=891.0.0,891.1.0; dispatcher=0x006c2990;
   end=0x004f4730; instructions=1517 */

void __fastcall AI_004f2c20(int *param_1)

{
  uint uVar1;
  uint uVar2;
  undefined4 *puVar3;
  undefined *puVar4;
  undefined4 *puVar5;
  char cVar6;
  uint uVar7;
  undefined4 *puVar8;
  int iVar9;
  float *pfVar10;
  char *pcVar11;
  int iVar12;
  int *piVar13;
  int iVar14;
  uint *puVar15;
  int *extraout_EDX;
  int *extraout_EDX_00;
  int *piVar16;
  int iVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  undefined4 uVar23;
  undefined4 uVar24;
  undefined4 uVar25;
  undefined4 uVar26;
  undefined *local_250;
  undefined4 local_24c;
  undefined4 local_248;
  undefined4 local_244;
  undefined4 local_240;
  undefined4 local_23c;
  undefined4 local_238;
  undefined4 local_234;
  undefined4 local_230;
  undefined4 local_22c;
  undefined4 local_228;
  undefined4 local_224;
  int local_220;
  undefined *local_21c;
  float local_218;
  int *local_214;
  float local_210;
  float local_20c;
  undefined4 *local_208;
  undefined4 *local_204;
  float local_200;
  float local_1fc;
  int *local_1f8;
  int *local_1f4;
  float local_1f0;
  int *local_1ec;
  int *local_1e4;
  int *local_1e0;
  char local_1d9;
  int *local_1d8;
  float local_1d4;
  undefined local_1d0 [168];
  undefined local_128 [168];
  undefined4 local_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined local_70 [16];
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined local_4c;
  undefined4 *local_48;
  int *local_44;
  int *local_40;
  undefined4 local_3c;
  undefined4 local_38;
  char local_34 [4];
  uint local_30;
  undefined4 local_2c;
  int *local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af3f10;
  local_1c = ExceptionList;
  uVar7 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  piVar13 = (int *)param_1[0x2fb];
  local_1d4 = (float)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  local_1d8 = (int *)free_exref;
  local_1ec = param_1;
  local_1e0 = piVar13;
  local_24 = uVar7;
  if ((piVar13 == (int *)0x0) ||
     ((((*(int *)(DAT_00c71678 + 0x26614) < 2 || (piVar13[10] != 1)) && (0x3dd < piVar13[10] - 10U))
      || (puVar4 = &stack0xfffffffc,
         ((piVar13[0x5a] & 0x20000000U) != 0) != ((param_1[0x5a] & 0x20000000U) != 0))))) {
    AI_0041af60(local_34,param_1[10],0xffffffff,0xffffffff,0,0);
    piVar13 = (int *)0x0;
    local_14 = 0;
    local_1e0 = param_1;
    if (local_28 != (int *)0x0) {
      do {
        piVar16 = *(int **)(local_30 + (int)piVar13 * 4);
        if (((piVar16 != (int *)0x0) &&
            (((1 < *(int *)(DAT_00c71678 + 0x26614) && (piVar16[10] == 1)) ||
             (piVar16[10] - 10U < 0x3de)))) &&
           (((piVar16 != param_1 &&
             (((piVar16[0x5a] & 0x20000000U) != 0) == ((param_1[0x5a] & 0x20000000U) != 0))) &&
            ((local_1e0 = (int *)piVar16[0x2fb], local_1e0 != (int *)0x0 &&
             (((1 < *(int *)(DAT_00c71678 + 0x26614) && (local_1e0[10] == 1)) ||
              (local_1e0[10] - 10U < 0x3de)))))))) break;
        piVar13 = (int *)((int)piVar13 + 1);
        local_1e0 = param_1;
      } while (piVar13 < local_28);
    }
    piVar13 = local_1e0;
    if (param_1[0x2fb] != 0) {
      local_214 = param_1 + 0x2fb;
      FUN_004cf210(&local_214);
    }
    param_1[0x2fb] = (int)piVar13;
    if (piVar13 != (int *)0x0) {
      FUN_004cdcf0(param_1 + 0x2fb);
    }
    local_14 = 0xffffffff;
    param_1[0x2e8] = 1;
    puVar4 = puStack_20;
    if (local_34[0] == '\0') {
      if (DAT_00c7de78 == 0) {
        puVar15 = &DAT_00c7f618;
      }
      else {
        puVar15 = (uint *)(DAT_00c7de78 + 0x30);
      }
      if (local_30 != 0) {
        uVar2 = *(uint *)(local_30 - 4);
        uVar1 = *puVar15;
        *puVar15 = *puVar15 - uVar2;
        puVar15[1] = puVar15[1] - (uint)(uVar1 < uVar2);
        (*(code *)local_1d8)((uint *)(local_30 - 4));
        puVar4 = puStack_20;
      }
    }
  }
  puStack_20 = puVar4;
  local_14 = 0xffffffff;
  local_1f4 = DAT_00baa454;
  if (piVar13 == param_1) {
    if (param_1[0x2f1] < 1) {
      if (param_1[0x2e8] < 1) {
        local_208 = (undefined4 *)0x0;
        local_204 = (undefined4 *)0x0;
        local_208 = (undefined4 *)FUN_00a0f4c0(0x18,uVar7);
        *local_208 = local_208;
        local_208[1] = local_208;
        local_208[2] = local_208;
        *(undefined2 *)(local_208 + 3) = 0x101;
        local_14 = 5;
        AI_0041af60(local_34,param_1[10],0xffffffff,0xffffffff,0,0);
        local_14 = CONCAT31(local_14._1_3_,6);
        local_214 = (int *)0x0;
        local_1e4 = (int *)local_30;
        if (local_28 != (int *)0x0) {
          do {
            fVar19 = *(float *)(local_30 + (int)local_214 * 4);
            piVar13 = local_214;
            if ((fVar19 != 0.0) &&
               (((1 < *(int *)(DAT_00c71678 + 0x26614) && (*(int *)((int)fVar19 + 0x28) == 1)) ||
                (local_30 = (uint)local_1e4, *(int *)((int)fVar19 + 0x28) - 10U < 0x3de)))) {
              local_1d9 = (*(uint *)((int)fVar19 + 0x168) & 0x20000000) != 0;
              cVar6 = FUN_004567b0();
              local_30 = (uint)local_1e4;
              piVar13 = extraout_EDX_00;
              if ((local_1d9 == cVar6) &&
                 (piVar13 = extraout_EDX_00, *(int **)((int)fVar19 + 0xbec) == param_1)) {
                if (*(int *)((int)fVar19 + 0xb64) != 4) {
                  iVar9 = 4;
                  goto LAB_004f3590;
                }
                local_1ec = *(int **)((int)fVar19 + 0x33c);
                local_20c = *(float *)((int)fVar19 + 0x340);
                iVar9 = FUN_006be840();
                fVar18 = *(float *)(iVar9 + 0x340) - local_20c;
                fVar20 = *(float *)(iVar9 + 0x33c) - (float)local_1ec;
                fVar18 = fVar18 * fVar18 + fVar20 * fVar20;
                FUN_00435a50();
                local_200 = fVar18 - *(float *)((int)fVar19 + 0x380) * DAT_00baa87c;
                local_1fc = fVar19;
                FUN_004f86d0(&local_220,&local_200);
                local_30 = (uint)local_1e4;
                piVar13 = local_214;
              }
            }
            local_214 = (int *)((int)piVar13 + 1);
          } while (local_214 < local_28);
        }
        iVar9 = 0;
        puVar8 = (undefined4 *)*local_208;
        while (puVar8 != local_208) {
          if (iVar9 == 0) {
            *(undefined4 *)(puVar8[5] + 0xbc0) = 2;
          }
          else {
            *(uint *)(puVar8[5] + 0xbc0) = (uint)(iVar9 == 1);
          }
          if (*(int *)(puVar8[5] + 0xba4) < 4) {
            *(undefined4 *)(puVar8[5] + 0xba4) = 0x1e;
          }
          puVar3 = (undefined4 *)puVar8[2];
          if (*(char *)((int)puVar3 + 0xd) == '\0') {
            cVar6 = *(char *)((int)(undefined4 *)*puVar3 + 0xd);
            puVar8 = puVar3;
            puVar3 = (undefined4 *)*puVar3;
            while (cVar6 == '\0') {
              cVar6 = *(char *)((int)(undefined4 *)*puVar3 + 0xd);
              puVar8 = puVar3;
              puVar3 = (undefined4 *)*puVar3;
            }
          }
          else {
            cVar6 = *(char *)((int)(undefined4 *)puVar8[1] + 0xd);
            puVar5 = (undefined4 *)puVar8[1];
            puVar3 = puVar8;
            while ((puVar8 = puVar5, cVar6 == '\0' && (puVar3 == (undefined4 *)puVar8[2]))) {
              cVar6 = *(char *)((int)(undefined4 *)puVar8[1] + 0xd);
              puVar5 = (undefined4 *)puVar8[1];
              puVar3 = puVar8;
            }
          }
          iVar9 = iVar9 + 1;
        }
        iVar9 = 300;
LAB_004f3590:
        param_1[0x2e8] = iVar9;
        if (local_34[0] == '\0') {
          if (DAT_00c7de78 == 0) {
            puVar15 = &DAT_00c7f618;
          }
          else {
            puVar15 = (uint *)(DAT_00c7de78 + 0x30);
          }
          if (local_1e4 != (int *)0x0) {
            uVar1 = *(uint *)((int)local_1e4 - 4U);
            uVar7 = *puVar15;
            *puVar15 = *puVar15 - uVar1;
            puVar15[1] = puVar15[1] - (uint)(uVar7 < uVar1);
            (*(code *)local_1d8)((uint *)((int)local_1e4 - 4U));
          }
        }
        local_14 = 0xffffffff;
        FID_conflict__Erase_tree<class_fuzzer::fuzzer_allocator<struct_std::_Tree_node<struct_fuzzer::TracePC::PCTableEntry_const*,void*>_>_>
                  (&local_208,local_208[1]);
        uVar7 = 0x18;
        puVar8 = local_208;
        goto LAB_004f3600;
      }
    }
    else {
      piVar16 = (int *)0x0;
      local_204 = (undefined4 *)0x0;
      local_48 = (undefined4 *)0x0;
      local_1f8 = (int *)0x0;
      local_44 = (int *)0x0;
      local_214 = (int *)0x0;
      local_40 = (int *)0x0;
      local_14 = 2;
      AI_0041af60(local_34,param_1[10],1,0xffffffff,0,0);
      local_14 = CONCAT31(local_14._1_3_,3);
      local_1e4 = (int *)0x0;
      uVar7 = local_30;
      piVar13 = local_28;
      if (local_28 == (int *)0x0) {
        puVar8 = (undefined4 *)0x0;
      }
      else {
        do {
          puVar8 = *(undefined4 **)(uVar7 + (int)local_1e4 * 4);
          piVar16 = local_1e4;
          if ((puVar8 != (undefined4 *)0x0) &&
             (((1 < *(int *)(DAT_00c71678 + 0x26614) && (puVar8[10] == 1)) ||
              (uVar7 = local_30, puVar8[10] - 10 < 0x3de)))) {
            local_1d9 = (puVar8[0x5a] & 0x20000000) != 0;
            local_204 = puVar8;
            cVar6 = FUN_004567b0();
            uVar7 = local_30;
            piVar13 = local_28;
            piVar16 = extraout_EDX;
            if ((local_1d9 == cVar6) && (piVar16 = extraout_EDX, (int *)puVar8[0x2fb] == param_1)) {
              local_20c = (float)puVar8[0xd0];
              local_210 = (float)puVar8[0xcf];
              cVar6 = FUN_00944a40(&local_210);
              uVar7 = local_30;
              piVar13 = local_28;
              piVar16 = local_1e4;
              if (cVar6 != '\0') {
                if (puVar8[0x2d9] != 4) {
                  local_204 = local_48;
                  puVar8 = local_48;
                  piVar16 = local_1f8;
                  goto LAB_004f3030;
                }
                if (local_1f8 == local_214) {
                  FUN_0042c920(local_1f8,&local_204);
                  local_214 = local_40;
                  local_1f8 = local_44;
                  uVar7 = local_30;
                  piVar13 = local_28;
                  piVar16 = local_1e4;
                }
                else {
                  *local_1f8 = (int)puVar8;
                  local_1f8 = local_1f8 + 1;
                  local_44 = local_1f8;
                }
              }
            }
          }
          local_1e4 = (int *)((int)piVar16 + 1);
        } while (local_1e4 < piVar13);
        local_204 = local_48;
        puVar8 = local_48;
        piVar16 = local_1f8;
      }
LAB_004f3030:
      puVar3 = local_204;
      uVar7 = (int)piVar16 - (int)puVar8 >> 2;
      local_1e4 = (int *)0x0;
      local_1f8 = (int *)uVar7;
      if (uVar7 != 0) {
        local_230 = 0x3f800000;
        local_22c = 0;
        local_238 = 0;
        local_234 = 0xc1900000;
        local_240 = 0;
        local_23c = 0x3f800000;
        local_248 = 0;
        local_244 = 0xc1900000;
        local_250 = &DAT_bf800000;
        local_24c = 0;
        local_228 = 0;
        local_224 = 0xc1900000;
        local_220 = 0;
        local_21c = &DAT_bf800000;
        local_200 = 0.0;
        local_1fc = -18.0;
        do {
          *(undefined4 *)(puVar3[(int)local_1e4] + 0xb64) = 9;
          local_20c = (float)(puVar3[(int)local_1e4] + 0x48);
          cVar6 = FUN_0040a5d0(&DAT_00b1d2ec,1);
          fVar19 = local_20c;
          if (cVar6 != '\0') {
            FUN_0040a1b0();
            *(undefined *)((int)fVar19 + 0x44) = 1;
            uVar7 = (uint)local_1f8;
          }
          uStack_74 = _UNK_00babe2c;
          uStack_78 = _UNK_00babe28;
          uStack_7c = _UNK_00babe24;
          local_80 = _DAT_00babe20;
          local_70 = ZEXT816(0);
          local_60 = 0;
          local_5c = 0;
          *(undefined4 *)(puVar3[(int)local_1e4] + 0xbc4) = 0xffffffa6;
          local_58 = 0;
          FUN_0060b890(&local_230,0x20,&local_80,0x40000000);
          local_70 = ZEXT816(0);
          local_60 = 0;
          local_5c = 0;
          local_58 = 0;
          local_80 = _DAT_00babe20;
          uStack_7c = _UNK_00babe24;
          uStack_78 = _UNK_00babe28;
          uStack_74 = _UNK_00babe2c;
          FUN_0060b890(&local_240,0x20,&local_80,0x40000000);
          local_70 = ZEXT816(0);
          local_60 = 0;
          local_5c = 0;
          local_58 = 0;
          local_80 = _DAT_00babe20;
          uStack_7c = _UNK_00babe24;
          uStack_78 = _UNK_00babe28;
          uStack_74 = _UNK_00babe2c;
          FUN_0060b890(&local_250,0x20,&local_80,0x40000000);
          local_70 = ZEXT816(0);
          local_60 = 0;
          local_5c = 0;
          local_58 = 0;
          local_80 = _DAT_00babe20;
          uStack_7c = _UNK_00babe24;
          uStack_78 = _UNK_00babe28;
          uStack_74 = _UNK_00babe2c;
          FUN_0060b890(&local_220,0x20,&local_80,0x40000000);
          local_1e4 = (int *)((int)local_1e4 + 1);
          param_1 = local_1ec;
        } while (local_1e4 < uVar7);
      }
      param_1[0x2f1] = -0x5a;
      if (local_34[0] == '\0') {
        if (DAT_00c7de78 == 0) {
          puVar15 = &DAT_00c7f618;
        }
        else {
          puVar15 = (uint *)(DAT_00c7de78 + 0x30);
        }
        if (local_30 != 0) {
          uVar1 = *(uint *)(local_30 - 4);
          uVar7 = *puVar15;
          *puVar15 = *puVar15 - uVar1;
          puVar15[1] = puVar15[1] - (uint)(uVar7 < uVar1);
          (*(code *)local_1d8)((uint *)(local_30 - 4));
        }
      }
      local_14 = 0xffffffff;
      piVar13 = local_1e0;
      if (local_204 != (undefined4 *)0x0) {
        uVar7 = ((int)local_214 - (int)local_204 >> 2) * 4;
        puVar8 = local_204;
        if (0xfff < uVar7) {
          puVar8 = (undefined4 *)local_204[-1];
          uVar7 = uVar7 + 0x23;
          if (0x1f < (uint)((int)local_204 + (-4 - (int)puVar8))) {
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
LAB_004f3600:
        FUN_00aef15c(puVar8,uVar7);
        piVar13 = local_1e0;
      }
    }
  }
  if (0 < param_1[0x2e8]) {
    param_1[0x2e8] = param_1[0x2e8] - (int)local_1d4;
  }
  if (0 < param_1[0x2e9]) {
    param_1[0x2e9] = param_1[0x2e9] - (int)local_1d4;
  }
  iVar9 = param_1[0x2f1];
  if (iVar9 < 0) {
    iVar12 = 0;
    if (iVar9 + (int)local_1d4 < 0) {
      iVar12 = iVar9 + (int)local_1d4;
    }
LAB_004f3656:
    param_1[0x2f1] = iVar12;
  }
  else if (0 < iVar9) {
    iVar12 = 0;
    if (0 < iVar9 - (int)local_1d4) {
      iVar12 = iVar9 - (int)local_1d4;
    }
    goto LAB_004f3656;
  }
  switch(param_1[0x2d9]) {
  case 0:
    param_1[0x2d9] = 4;
    param_1[0x2f0] = 0;
    break;
  case 4:
    local_40 = (int *)&DAT_0000000f;
    local_44 = (int *)&DAT_00000008;
    local_54._0_1_ = s_WalkVert_00b1dd18[0];
    local_54._1_1_ = s_WalkVert_00b1dd18[1];
    local_54._2_1_ = s_WalkVert_00b1dd18[2];
    local_54._3_1_ = s_WalkVert_00b1dd18[3];
    local_50._0_1_ = s_WalkVert_00b1dd18[4];
    local_50._1_1_ = s_WalkVert_00b1dd18[5];
    local_50._2_1_ = s_WalkVert_00b1dd18[6];
    local_50._3_1_ = s_WalkVert_00b1dd18[7];
    local_4c = 0;
    local_28 = (int *)&DAT_0000000f;
    local_2c = 8;
    local_3c._0_1_ = s_WalkHori_00b1dd30[0];
    local_3c._1_1_ = s_WalkHori_00b1dd30[1];
    local_3c._2_1_ = s_WalkHori_00b1dd30[2];
    local_3c._3_1_ = s_WalkHori_00b1dd30[3];
    local_38._0_1_ = s_WalkHori_00b1dd30[4];
    local_38._1_1_ = s_WalkHori_00b1dd30[5];
    local_38._2_1_ = s_WalkHori_00b1dd30[6];
    local_38._3_1_ = s_WalkHori_00b1dd30[7];
    local_34[0] = '\0';
    local_14._0_1_ = 9;
    local_14._1_3_ = 0;
    FUN_006c1330(&local_3c,&local_54,0x3dcccccd);
    local_14 = CONCAT31(local_14._1_3_,8);
    if (&DAT_0000000f < local_28) {
      piVar16 = (int *)((int)local_28 + 1);
      uVar7 = local_3c;
      if ((int *)0xfff < piVar16) {
        uVar7 = *(uint *)(local_3c - 4);
        piVar16 = local_28 + 9;
        if (0x1f < (local_3c - uVar7) - 4) goto LAB_004f3766;
      }
      FUN_00aef15c(uVar7,piVar16);
    }
    local_14 = 0xffffffff;
    local_2c = 0;
    local_28 = (int *)&DAT_0000000f;
    local_3c = local_3c & 0xffffff00;
    if (&DAT_0000000f < local_40) {
      piVar16 = (int *)((int)local_40 + 1);
      iVar9 = local_54;
      if ((int *)0xfff < piVar16) {
        iVar9 = *(int *)(local_54 + -4);
        piVar16 = local_40 + 9;
        if (0x1f < (local_54 - iVar9) - 4U) {
LAB_004f3766:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar9,piVar16);
    }
    if (param_1[0x3c7] == -1) {
      if ((param_1[0x5a] & 0x1000800U) == 0) {
        if (((param_1[0x2f0] == 1) || (param_1[0x2f0] == 2)) || (piVar13 == (int *)0x0)) {
          local_1d8 = (int *)FUN_006be840();
          if (param_1[0x2f0] == 1) {
            if (piVar13 == (int *)0x0) {
              pfVar10 = (float *)FUN_006bec40(&local_228,0);
              uVar25 = 0x3f2e147b;
            }
            else {
              local_1ec = (int *)local_1d8[0xcf];
              local_20c = (float)local_1d8[0xd0];
              fVar19 = ((float)param_1[0xd0] - local_20c) * ((float)param_1[0xd0] - local_20c) +
                       ((float)param_1[0xcf] - (float)local_1ec) *
                       ((float)param_1[0xcf] - (float)local_1ec);
              FUN_00435a50();
              uVar25 = 0x3f2e147b;
              local_200 = (float)local_1d8[0xd8] * fVar19 * DAT_00baa154 + (float)local_1ec;
              pfVar10 = &local_200;
              local_1fc = (float)local_1d8[0xd9] * fVar19 * DAT_00baa154 + local_20c;
            }
          }
          else {
            if (piVar13 == (int *)0x0) {
              pfVar10 = (float *)FUN_006bec40(&local_228,0);
            }
            else {
              local_200 = (float)local_1d8[0xcf];
              local_1fc = (float)local_1d8[0xd0];
              pfVar10 = &local_200;
            }
            uVar25 = 0x3f4ccccd;
          }
          FUN_007e33c0(pfVar10,uVar25,900,1);
          if (piVar13 != (int *)0x0) {
            if ((((param_1[0xb] != 1) || (uVar7 = FUN_006eef60(), uVar7 % 0xc != 0)) ||
                (param_1[0x2f1] < 0)) ||
               ((DAT_00baa87c <=
                 (float)((uint)((float)local_1d8[0xcf] - (float)param_1[0xcf]) & DAT_00bacb40) &&
                (DAT_00baa87c <=
                 (float)((uint)((float)local_1d8[0xd0] - (float)param_1[0xd0]) & DAT_00bacb40))))) {
              if (((param_1[0x2f0] == 2) &&
                  ((uVar7 = FUN_006eef60(), piVar13 = local_1d8, (uVar7 & 3) == 0 &&
                   (param_1[0x2e9] < 1)))) &&
                 ((float)((uint)((float)local_1d8[0xd0] - (float)param_1[0xd0]) & DAT_00bacb40) <
                  DAT_00baa89c)) {
                local_21c = (undefined *)local_1d8[0xd0];
                local_220 = local_1d8[0xcf];
                cVar6 = FUN_007f0df0(param_1 + 0xcf,&local_220,1,900,0,0,0);
                if (cVar6 != '\0') {
                  param_1[0x2d9] = 6;
                  FUN_0040a380("DashBegin",0);
                  fVar19 = (float)param_1[0xcf];
                  pfVar10 = (float *)(piVar13 + 0xcf);
                  *(bool *)(param_1 + 0x52) = *pfVar10 <= fVar19 && fVar19 != *pfVar10;
                  pfVar10 = (float *)(piVar13 + 0xcf);
                  piVar13 = local_1f4;
                  if (*pfVar10 <= fVar19 && fVar19 != *pfVar10) {
                    piVar13 = DAT_00baad50;
                  }
                  uVar25 = 0xa7;
                  param_1[0xcd] = (int)piVar13;
                  param_1[0xce] = 0;
                  if (param_1[0xb] == 1) {
                    uVar25 = 0x70;
                  }
                  param_1[0x104] = 0;
                  FUN_006d6ba0(uVar25,0x3f800000,2,0,0x3f800000);
                  goto LAB_004f3c11;
                }
              }
              if (((param_1[0x2f0] == 1) && (param_1[0x2e9] < 1)) &&
                 (cVar6 = FUN_006cae60(1,7), cVar6 != '\0')) {
                pcVar11 = "AttackHori";
                fVar18 = (float)(param_1[0xd8] & DAT_00bacb40);
                fVar19 = (float)(param_1[0xd9] & DAT_00bacb40);
                param_1[0x2d9] = 8;
                if (fVar18 <= fVar19) {
                  pcVar11 = "AttackVert";
                }
                FUN_0040a380(pcVar11,0);
                param_1[0x104] = 0;
              }
            }
            else if ((-1 < piVar13[0x2f1]) && (piVar13[0xf0] == 0)) {
              piVar13[0x2f1] = 8;
            }
          }
        }
        else {
          iVar9 = FUN_006be840();
          local_200 = *(float *)(iVar9 + 0x33c);
          local_1fc = *(float *)(iVar9 + 0x340);
          FUN_007e4940(&local_200,0);
          param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
        }
      }
      else {
        iVar9 = FUN_006be840();
        local_200 = *(float *)(iVar9 + 0x33c);
        local_1fc = *(float *)(iVar9 + 0x340);
        FUN_007e4940(&local_200,0);
        param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
      }
    }
    else {
      uVar26 = 1;
      uVar24 = 900;
      uVar23 = 0x3f4ccccd;
      uVar25 = FUN_006bec40(&local_200,0);
      FUN_007e33c0(uVar25,uVar23,uVar24,uVar26);
    }
LAB_004f3c11:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa438);
    break;
  case 6:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa354);
    if (param_1[0x104] != 0) {
      param_1[0x62] = 4;
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x2d9] = 4;
        param_1[0x2e9] = 0x2d;
        if (piVar13 != (int *)0x0) {
          piVar13[0x2e8] = 1;
        }
      }
      break;
    }
    if (param_1[0x1f] == 0) {
LAB_004f4463:
      FUN_0040a380("DashLoop",0);
      if (param_1[0x1f] != 0) goto LAB_004f4478;
LAB_004f4489:
      if ((param_1[0x1f] == 0) || (*(char *)(param_1[0x1f] + 0x34) == '\0')) break;
    }
    else {
      cVar6 = FUN_0040add0("Shoot");
      if (cVar6 != '\0') {
        local_1d4 = 7.987401e-44;
        if (param_1[0xb] == 1) {
          local_1d4 = 1.667545e-43;
        }
        local_1d8 = local_1f4;
        piVar13 = DAT_00baa528;
        if ((param_1[0x319] == 0x12) || (piVar13 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
          local_1d8 = piVar13;
        }
        FUN_00956780();
        FUN_0092dc30(local_1d4,0x3f800000,2,0,local_1d8,0);
      }
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) goto LAB_004f4463;
LAB_004f4478:
      cVar6 = FUN_0040ae70("Shoot");
      if (cVar6 == '\0') goto LAB_004f4489;
    }
    fVar18 = DAT_00baa904;
    param_1[0x62] = 2;
    fVar19 = DAT_00baa3a4;
    iVar9 = *(int *)(DAT_00c71678 + 0x18300);
    iVar12 = (int)(((float)param_1[0xcf] - fVar18) / fVar18 + (float)DAT_00baa2d0);
    iVar17 = (int)(((float)param_1[0xd0] - DAT_00baaa00) / fVar18 + (float)DAT_00baa2d0);
    if ((iVar12 < 0) ||
       (((iVar14 = *(int *)(iVar9 + 0xc), iVar14 <= iVar12 || (iVar17 < 0)) ||
        (*(int *)(iVar9 + 0x10) <= iVar17)))) {
      iVar14 = *(int *)(iVar9 + 0xc);
      iVar12 = -1;
    }
    else {
      iVar12 = iVar14 * iVar17 + iVar12;
    }
    fVar20 = (float)param_1[0xe7];
    fVar22 = (float)(iVar12 / iVar14) * fVar18 + DAT_00baaa00;
    fVar21 = (float)param_1[0xce] * DAT_00baa81c;
    param_1[0xd8] = (int)((float)param_1[0xcd] * DAT_00baa81c * fVar20 + (float)param_1[0xd8]);
    param_1[0xd9] = (int)(fVar21 * fVar20 + (float)param_1[0xd9]);
    if ((NAN(fVar20) || NAN((float)local_1f4)) == (fVar20 == (float)local_1f4)) {
      fVar19 = fVar19 / ((fVar20 + fVar19) - fVar20 * fVar19);
    }
    param_1[0xd9] =
         (int)(((fVar22 - (float)param_1[0xd0]) - (float)param_1[0xd9]) *
               ((float)local_1f4 - fVar19) + (float)param_1[0xd9]);
    local_1ec = (int *)((float)param_1[0xce] * fVar18 + (float)param_1[0xd0]);
    local_1f0 = (float)param_1[0xcd] * fVar18 + (float)param_1[0xcf];
    iVar9 = FUN_007f0780(local_1f0,local_1ec);
    if ((iVar9 != 0) || ((param_1[0x5a] & 0x1000a00U) != 0)) {
      FUN_0040a380("DashEnd",0);
      param_1[0x104] = 1;
    }
    break;
  case 8:
    if (param_1[0x1f] == 0) {
LAB_004f41e7:
      param_1[0x2e9] = 0x2d;
      goto LAB_004f41f1;
    }
    cVar6 = FUN_0040add0("Shoot");
    if (cVar6 != '\0') {
      if ((param_1[0x3c7] == -1) ||
         ((fVar19 = (float)param_1[0x3c8],
          (NAN(fVar19) || NAN(DAT_00c7b640)) != (fVar19 == DAT_00c7b640) &&
          ((NAN((float)param_1[0x3c9]) || NAN(DAT_00c7b644)) !=
           ((float)param_1[0x3c9] == DAT_00c7b644))))) {
        iVar9 = FUN_006be840();
        local_1d4 = *(float *)(iVar9 + 0x33c) - (float)param_1[0xcf];
        local_1d8 = (int *)(*(float *)(iVar9 + 0x340) - (float)param_1[0xd0]);
        fVar19 = local_1d4 * local_1d4 + (float)local_1d8 * (float)local_1d8;
        FUN_00435a50();
        if (fVar19 <= DAT_00ba9fe4) {
          local_1f0 = local_1d4;
          local_1ec = local_1d8;
        }
        else {
          local_1ec = (int *)((DAT_00baa81c / fVar19) * (float)local_1d8);
          local_1f0 = (DAT_00baa81c / fVar19) * local_1d4;
        }
      }
      else {
        fVar19 = (float)param_1[0x3c9] * (float)param_1[0x3c9] + fVar19 * fVar19;
        FUN_00435a50();
        if (fVar19 <= DAT_00ba9fe4) {
          local_1f0 = (float)param_1[0x3c8];
          local_1ec = (int *)param_1[0x3c9];
        }
        else {
          local_1ec = (int *)((DAT_00baa81c / fVar19) * (float)param_1[0x3c9]);
          local_1f0 = (DAT_00baa81c / fVar19) * (float)param_1[0x3c8];
        }
      }
      local_214 = local_1ec;
      local_218 = local_1f0;
      AI_0043ef30();
      iVar9 = param_1[0x319];
      local_1d8 = local_1f4;
      if (param_1[0xb] == 1) {
        piVar13 = DAT_00baa528;
        if ((iVar9 == 0x12) || (piVar13 = DAT_00baa2d0, iVar9 == 0x13)) {
          local_1d8 = piVar13;
        }
        local_1d4 = 1.485376e-43;
        FUN_00956780();
        FUN_0092dc30(local_1d4,0x3f800000,2,0,local_1d8,0);
        uVar25 = 3;
      }
      else {
        piVar13 = DAT_00baa528;
        if ((iVar9 == 0x12) || (piVar13 = DAT_00baa2d0, iVar9 == 0x13)) {
          local_1d8 = piVar13;
        }
        local_1d4 = 2.045896e-43;
        FUN_00956780();
        FUN_0092dc30(local_1d4,0x3f800000,2,0,local_1d8,0);
        uVar25 = 1;
      }
      FUN_006cb2e0(param_1 + 0xcf,&local_218,uVar25,local_128);
    }
    if (param_1[0x1f] == 0) goto LAB_004f41e7;
    cVar6 = FUN_0040add0("Shoot2");
    if (cVar6 != '\0') {
      if ((param_1[0x3c7] == -1) ||
         ((fVar19 = (float)param_1[0x3c8],
          (NAN(fVar19) || NAN(DAT_00c7b640)) != (fVar19 == DAT_00c7b640) &&
          ((NAN((float)param_1[0x3c9]) || NAN(DAT_00c7b644)) !=
           ((float)param_1[0x3c9] == DAT_00c7b644))))) {
        iVar9 = FUN_006be840();
        local_1d4 = *(float *)(iVar9 + 0x33c) - (float)param_1[0xcf];
        local_1d8 = (int *)(*(float *)(iVar9 + 0x340) - (float)param_1[0xd0]);
        fVar19 = local_1d4 * local_1d4 + (float)local_1d8 * (float)local_1d8;
        FUN_00435a50();
        pfVar10 = &local_1f0;
        if (fVar19 <= DAT_00ba9fe4) {
          local_1f0 = local_1d4;
          local_1ec = local_1d8;
        }
        else {
          local_1ec = (int *)((DAT_00baa81c / fVar19) * (float)local_1d8);
          local_1f0 = (DAT_00baa81c / fVar19) * local_1d4;
        }
      }
      else {
        local_1ec = (int *)param_1[0x3c9];
        fVar19 = (float)local_1ec * (float)local_1ec + fVar19 * fVar19;
        FUN_00435a50();
        if (fVar19 <= DAT_00ba9fe4) {
          pfVar10 = &local_210;
          local_210 = (float)param_1[0x3c8];
          local_20c = (float)param_1[0x3c9];
        }
        else {
          pfVar10 = &local_210;
          local_20c = (DAT_00baa81c / fVar19) * (float)local_1ec;
          local_210 = (DAT_00baa81c / fVar19) * (float)param_1[0x3c8];
        }
      }
      local_210 = *pfVar10;
      local_20c = pfVar10[1];
      AI_0043ef30();
      iVar9 = param_1[0x319];
      if (param_1[0xb] == 1) {
        piVar13 = DAT_00baa528;
        if ((iVar9 == 0x12) || (piVar13 = DAT_00baa2d0, iVar9 == 0x13)) {
          local_1f4 = piVar13;
        }
        local_1d4 = 1.513402e-43;
        FUN_00956780();
        FUN_0092dc30(local_1d4,0x3f800000,2,0,local_1f4,0);
        uVar25 = 4;
      }
      else {
        piVar13 = DAT_00baa528;
        if ((iVar9 == 0x12) || (piVar13 = DAT_00baa2d0, iVar9 == 0x13)) {
          local_1f4 = piVar13;
        }
        local_1d4 = 2.045896e-43;
        FUN_00956780();
        FUN_0092dc30(local_1d4,0x3f800000,2,0,local_1f4,0);
        uVar25 = 3;
      }
      FUN_006cb2e0(param_1 + 0xcf,&local_210,uVar25,local_1d0);
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) goto LAB_004f41e7;
    goto LAB_004f4217;
  case 9:
    if (param_1[0x1f] != 0) {
      cVar6 = FUN_0040add0("Shoot");
      if (cVar6 != '\0') {
        piVar13 = DAT_00baa528;
        if ((param_1[0x319] == 0x12) || (piVar13 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
          local_1f4 = piVar13;
        }
        local_1d4 = 1.709584e-43;
        FUN_00956780();
        FUN_0092dc30(local_1d4,0x3f800000,2,0,local_1f4,0);
      }
      if (param_1[0x1f] != 0) {
        cVar6 = FUN_0040add0("Shoot2");
        if (cVar6 != '\0') {
          iVar9 = 0;
          local_1fc = -18.0;
          local_200 = 0.0;
          do {
            iVar12 = FUN_0096f310(1,param_1 + 0xcf,(float)iVar9 * DAT_00baa9b4,0xf,&local_200,
                                  param_1,0);
            *(undefined4 *)(iVar12 + 0x4e0) = 0x3f400000;
            FUN_0097fc10();
            iVar9 = iVar9 + 1;
          } while (iVar9 < 4);
        }
        if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) goto LAB_004f4217;
      }
    }
    param_1[0x2e9] = 0x3c;
    param_1[0x2f1] = -0x5a;
LAB_004f41f1:
    param_1[0x2d9] = 4;
    if (local_1e0 != (int *)0x0) {
      local_1e0[0x2e8] = 1;
    }
LAB_004f4217:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa304);
  }
  piVar13 = local_1e0;
  FUN_004cdd80(param_1 + 0xcf,900);
  if (((*(char *)((int)param_1 + 0x173) != '\0') && (piVar13 != param_1)) &&
     ((param_1[0x2f0] == 1 || (param_1[0x2f0] == 2)))) {
    piVar13[0x2e8] = 0xf;
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

