/* Local J460 decompiler output.
 * VA: 0x0046e290
 * Entry: 0046e290
 * Dispatcher: 0x006c2990
 * Types: 67
 * Identities: 67.0.0,67.1.0
 * Evidence: dispatcher=0x006c2990; end=0x0046f6a6; instructions=1156
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=67; identities=67.0.0,67.1.0; dispatcher=0x006c2990;
   end=0x0046f6a6; instructions=1156 */

void __fastcall AI_0046e290(float *param_1)

{
  byte bVar1;
  byte **ppbVar2;
  uint uVar3;
  code *pcVar4;
  char cVar5;
  uint uVar6;
  float *pfVar7;
  byte **ppbVar8;
  int *piVar9;
  undefined4 uVar10;
  int iVar11;
  int iVar12;
  byte *pbVar13;
  undefined4 extraout_ECX;
  uint *puVar14;
  float *pfVar15;
  bool bVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float *pfVar21;
  float *pfVar22;
  undefined4 uVar23;
  TypeDescriptor *pTVar24;
  undefined4 *puVar25;
  undefined1 *puVar26;
  TypeDescriptor *pTVar27;
  undefined4 uVar28;
  char local_330 [16];
  undefined local_320 [4];
  float local_31c;
  float local_314;
  float local_310;
  float local_30c;
  float local_308;
  float local_304;
  float local_300;
  float local_2fc;
  float local_2f8;
  undefined4 local_2f4;
  undefined4 local_2f0;
  float local_2ec;
  float local_2e8;
  undefined4 local_2e4;
  undefined4 local_2e0;
  undefined4 local_2dc;
  undefined4 local_2d8;
  float local_2d4;
  float local_2d0;
  float local_2cc;
  float local_2c8;
  float *local_2c4;
  float *local_2c0;
  undefined4 local_2bc;
  undefined4 local_2b8;
  float local_2b4;
  float local_2b0;
  char local_2ac [4];
  int local_2a8;
  float local_2a0;
  undefined8 local_298;
  char local_28c [4];
  int local_288;
  float *local_280;
  char local_27c;
  int local_278;
  undefined4 local_274;
  float *local_270;
  code *local_26c;
  float local_268;
  float *local_264;
  float *local_260;
  float local_25c;
  float *local_258;
  float local_254;
  float *local_250;
  float *local_24c [127];
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
  puStack_18 = &LAB_00af28a6;
  local_1c = ExceptionList;
  uVar6 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  pfVar15 = param_1 + 0xcf;
  param_1[0x61] = 4.203895e-45;
  local_250 = param_1;
  local_24c[0] = pfVar15;
  local_24 = uVar6;
  pfVar7 = (float *)FUN_00812f50(local_320,pfVar15,0x42200000,0,0);
  iVar12 = DAT_00c71678;
  fVar19 = DAT_00baad50;
  fVar18 = *pfVar7;
  *pfVar15 = fVar18;
  param_1[0xd0] = pfVar7[1];
  iVar11 = *(int *)(iVar12 + 0x18300);
  if ((NAN(fVar18) || NAN(*(float *)(iVar11 + 0x1c))) != (fVar18 == *(float *)(iVar11 + 0x1c))) {
    param_1[0xd8] = (float)&DAT_bf800000;
    iVar11 = *(int *)(iVar12 + 0x18300);
  }
  fVar20 = DAT_00baa454;
  if ((NAN(fVar18) || NAN(*(float *)(iVar11 + 0x14))) != (fVar18 == *(float *)(iVar11 + 0x14))) {
    param_1[0xd8] = 1.0;
    iVar11 = *(int *)(iVar12 + 0x18300);
  }
  fVar18 = param_1[0xd0];
  if ((NAN(fVar18) || NAN(*(float *)(iVar11 + 0x20))) != (fVar18 == *(float *)(iVar11 + 0x20))) {
    param_1[0xd9] = (float)&DAT_bf800000;
    iVar11 = *(int *)(iVar12 + 0x18300);
  }
  fVar17 = *(float *)(iVar11 + 0x18) + DAT_00baa904;
  if ((NAN(fVar18) || NAN(fVar17)) != (fVar18 == fVar17)) {
    param_1[0xd9] = 1.0;
  }
  fVar18 = DAT_00baa280;
  if (((param_1[0xb] == 1.401298e-45) && (fVar18 = DAT_00baa490, param_1[0xc] != 2.802597e-45)) &&
     (fVar18 = DAT_00baa3a4, param_1[0xc] == 1.401298e-45)) {
    fVar18 = DAT_00baa2d0;
  }
  local_31c = param_1[0x5b];
  if ((((uint)param_1[0x5a] & 0x200) == 0) || (((uint)param_1[0x5a] & 0x100) != 0)) {
    fVar17 = fVar19;
    if (DAT_00baa120 <= param_1[0xd9]) {
      fVar17 = fVar20;
    }
    if (0.0 < param_1[0xd8]) {
      fVar19 = fVar20;
    }
    fVar20 = param_1[0xdb] * DAT_00baa3a4;
    param_1[0xdb] = fVar20;
    if (NAN(fVar20) == (fVar20 == 0.0)) {
      param_1[0xd9] = (param_1[0xe7] * fVar17 * fVar18) / fVar20 + param_1[0xd9];
      param_1[0xd8] = (param_1[0xe7] * fVar19 * fVar18) / fVar20 + param_1[0xd8];
    }
    if ((param_1[0xb] == 0.0) && (param_1[0xc] == 2.802597e-45)) {
      param_1[0xdb] = fVar20 * DAT_00baa3e0;
    }
    if (((uint)param_1[0x5a] & 0x1000800) != 0) {
      iVar11 = FUN_006be840(uVar6);
      local_258 = (float *)((uint)(*(float *)(iVar11 + 0x33c) - *pfVar15) ^ DAT_00bacb70);
      local_264 = (float *)((uint)(*(float *)(iVar11 + 0x340) - param_1[0xd0]) ^ DAT_00bacb70);
      fVar19 = (float)local_258 * (float)local_258 + (float)local_264 * (float)local_264;
      FUN_00435a50();
      fVar18 = (DAT_00baaa78 - fVar19) * DAT_00baa08c;
      if (fVar18 <= 0.0) {
        fVar18 = 0.0;
      }
      if (DAT_00baa454 <= fVar18) {
        fVar18 = DAT_00baa454;
      }
      fVar20 = (float)local_258;
      pfVar7 = local_264;
      if (0.0 < fVar19) {
        fVar20 = (float)local_258 * (fVar18 / fVar19);
        pfVar7 = (float *)((float)local_264 * (fVar18 / fVar19));
      }
      fVar18 = param_1[0xdb];
      if (NAN(fVar18) == (fVar18 == 0.0)) {
        param_1[0xd9] = (param_1[0xe7] * (float)pfVar7) / fVar18 + param_1[0xd9];
        param_1[0xd8] = (param_1[0xe7] * fVar20) / fVar18 + param_1[0xd8];
      }
    }
  }
  else {
    fVar18 = param_1[0xdb] * DAT_00baa3a4;
    param_1[0xdb] = fVar18;
    if ((param_1[0xb] == 0.0) && (param_1[0xc] == 2.802597e-45)) {
      param_1[0xdb] = fVar18 * DAT_00baa3e0;
    }
    FUN_007e6300(0);
  }
  FUN_006d0dd0(local_2ac,param_1[8]);
  local_14 = 0;
  iVar11 = *(int *)(DAT_00c71678 + 0x18300);
  pfVar7 = (float *)(*(int *)(iVar11 + 0x12c0) + *(int *)(iVar11 + 0x12c4));
  local_258 = (float *)0x0;
  if (0 < (int)pfVar7) {
    local_258 = pfVar7;
  }
  local_254 = local_2a0;
  local_26c = free_exref;
  switch(param_1[0x2d9]) {
  case 0.0:
    param_1[0x2d9] = 5.605194e-45;
    break;
  case 5.605194e-45:
    if ((((uint)param_1[0x5b] & 0x10000000) == 0) ||
       ((*(byte *)(*(int *)(iVar11 + 4) + 0x44) & 1) == 0)) {
      uVar6 = FUN_006eef60();
      pfVar15 = local_258;
      if (((uVar6 % 0x28 == 0) && ((int)local_254 + (int)local_258 < 9)) &&
         ((param_1[0xb] != 1.401298e-45 || (param_1[0xc] != 2.802597e-45)))) {
        param_1[0x2d9] = 1.821688e-44;
        puVar26 = &DAT_00b1d53c;
      }
      else {
        uVar6 = FUN_006eef60();
        if ((uVar6 % 0x46 == 0) &&
           (((int)pfVar15 - (int)local_254 < 10 &&
            ((param_1[0xb] != 1.401298e-45 || (param_1[0xc] != 2.802597e-45)))))) {
          param_1[0x2d9] = 1.961818e-44;
          puVar26 = &DAT_00b1d554;
        }
        else {
          uVar6 = FUN_006eef60();
          if ((uVar6 % 0x2d != 0) ||
             ((((int)local_254 < 5 || (4 < (int)pfVar15 - (int)local_254)) ||
              ((param_1[0xb] == 0.0 && (param_1[0xc] == 1.401298e-45)))))) {
            uVar6 = FUN_006eef60();
            if (uVar6 % 0x46 == 0) {
              if (param_1[0xb] != 1.401298e-45) {
                if (param_1[0xb] != 0.0) goto LAB_0046e7ef;
                if (param_1[0xc] != 1.401298e-45) goto LAB_0046e792;
              }
            }
            else {
LAB_0046e792:
              if (((param_1[0xb] != 1.401298e-45) || (param_1[0xc] != 2.802597e-45)) ||
                 (uVar6 = FUN_006eef60(), uVar6 % 0x14 != 0)) goto LAB_0046e7ef;
            }
          }
          param_1[0x2d9] = 1.121039e-44;
          puVar26 = &DAT_00b1d548;
        }
      }
      cVar5 = FUN_0040a5d0(puVar26,1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
        param_1[0x104] = 0.0;
        break;
      }
    }
    else {
LAB_0046e7ef:
      ppbVar2 = (byte **)param_1[0x1f];
      if (ppbVar2 != (byte **)0x0) {
        ppbVar8 = ppbVar2;
        if (&DAT_0000000f < ppbVar2[5]) {
          ppbVar8 = (byte **)*ppbVar2;
        }
        pbVar13 = &DAT_00b1dce4;
        do {
          bVar1 = *(byte *)ppbVar8;
          bVar16 = bVar1 < *pbVar13;
          if (bVar1 != *pbVar13) {
LAB_0046e825:
            uVar6 = -(uint)bVar16 | 1;
            goto LAB_0046e82a;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar8 + 1);
          bVar16 = bVar1 < pbVar13[1];
          if (bVar1 != pbVar13[1]) goto LAB_0046e825;
          ppbVar8 = (byte **)((int)ppbVar8 + 2);
          pbVar13 = pbVar13 + 2;
        } while (bVar1 != 0);
        uVar6 = 0;
LAB_0046e82a:
        if ((uVar6 == 0) && ((*(byte *)(ppbVar2 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0')))
           ) goto LAB_0046e861;
      }
      cVar5 = FUN_0040a5d0(&DAT_00b1dce4,1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
LAB_0046e861:
    param_1[0x104] = 0.0;
    break;
  case 1.121039e-44:
    if (param_1[0x104] == 2.382207e-44) {
      FUN_006d6ba0(0x70,0x3f800000,2,0,0x3f800000);
      pfVar15 = local_24c[0];
      local_254 = 0.0;
      if (local_2a0 != 0.0) {
        do {
          iVar11 = __RTDynamicCast(*(undefined4 *)(local_2a8 + (int)local_254 * 4),0,
                                   &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                   &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
          if (iVar11 != 0) {
            if (*(int *)(iVar11 + 0x3bc) != 0) {
              local_260 = (float *)(iVar11 + 0x3bc);
              FUN_004cf210(&local_260);
            }
            *(undefined4 *)(iVar11 + 0x3bc) = 0;
            *(undefined4 *)(iVar11 + 0xc7c) = 0xffffffff;
            local_264 = (float *)(*(float *)(iVar11 + 0x340) - pfVar15[1]);
            local_258 = (float *)(*(float *)(iVar11 + 0x33c) - *pfVar15);
            fVar18 = (float)local_264 * (float)local_264 + (float)local_258 * (float)local_258;
            if (DAT_00baa06c < fVar18) {
              FUN_00435a50();
              pfVar7 = local_258;
              pfVar21 = local_264;
              if (0.0 < fVar18) {
                pfVar7 = (float *)((float)local_258 * (DAT_00baa868 / fVar18));
                pfVar21 = (float *)((float)local_264 * (DAT_00baa868 / fVar18));
              }
              fVar18 = *(float *)(iVar11 + 0x36c);
              if (NAN(fVar18) == (fVar18 == 0.0)) {
                *(float *)(iVar11 + 0x364) =
                     (*(float *)(iVar11 + 0x39c) * (float)pfVar21) / fVar18 +
                     *(float *)(iVar11 + 0x364);
                *(float *)(iVar11 + 0x360) =
                     (*(float *)(iVar11 + 0x39c) * (float)pfVar7) / fVar18 +
                     *(float *)(iVar11 + 0x360);
              }
            }
          }
          local_254 = (float)((int)local_254 + 1);
          param_1 = local_250;
        } while ((uint)local_254 < (uint)local_2a0);
      }
      AI_0041af60(local_28c,1000,0x21,0xffffffff,1,0);
      pfVar15 = local_24c[0];
      local_14 = CONCAT31(local_14._1_3_,4);
      local_264 = (float *)0x0;
      pfVar7 = local_280;
      iVar11 = local_288;
      if (local_280 != (float *)0x0) {
        do {
          iVar12 = *(int *)(iVar11 + (int)local_264 * 4);
          if (iVar12 != 0) {
            local_24c[0] = (float *)(*(float *)(iVar12 + 0x33c) - *pfVar15);
            local_258 = (float *)(*(float *)(iVar12 + 0x340) - pfVar15[1]);
            fVar18 = (float)local_24c[0] * (float)local_24c[0] + (float)local_258 * (float)local_258
            ;
            if (DAT_00baa06c < fVar18) {
              FUN_00435a50();
              pfVar21 = local_24c[0];
              pfVar22 = local_258;
              if (0.0 < fVar18) {
                pfVar21 = (float *)((float)local_24c[0] * (DAT_00baa6fc / fVar18));
                pfVar22 = (float *)((float)local_258 * (DAT_00baa6fc / fVar18));
              }
              fVar18 = *(float *)(iVar12 + 0x36c);
              pfVar7 = local_280;
              iVar11 = local_288;
              if (NAN(fVar18) == (fVar18 == 0.0)) {
                *(float *)(iVar12 + 0x364) =
                     (*(float *)(iVar12 + 0x39c) * (float)pfVar22) / fVar18 +
                     *(float *)(iVar12 + 0x364);
                *(float *)(iVar12 + 0x360) =
                     (*(float *)(iVar12 + 0x39c) * (float)pfVar21) / fVar18 +
                     *(float *)(iVar12 + 0x360);
              }
            }
          }
          local_264 = (float *)((int)local_264 + 1);
          param_1 = local_250;
        } while (local_264 < pfVar7);
      }
      if (param_1[0xb] == 1.401298e-45) {
        uVar10 = AI_0043ef30();
        local_2ec = param_1[0xcf] - 0.0;
        local_2e4 = 0x41000000;
        local_2e8 = param_1[0xd0] - DAT_00baa904;
        puVar25 = &local_2e4;
        local_2e0 = 0x41000000;
        pfVar15 = &local_2ec;
LAB_0046f4e4:
        FUN_006cb2e0(pfVar15,puVar25,9,uVar10);
      }
      else if (param_1[0xc] == 1.401298e-45) {
        uVar10 = AI_0043ef30();
        puVar25 = &local_2f4;
        local_2f4 = 0x40e00000;
        pfVar15 = param_1 + 0xcf;
        local_2f0 = 0x41000000;
        goto LAB_0046f4e4;
      }
      uVar6 = local_14;
      local_14 = local_14 & 0xffffff00;
      if (local_28c[0] == '\0') {
        local_14._1_3_ = SUB43(uVar6,1);
        local_14._0_1_ = 5;
        FUN_00a648b0(0,0);
        local_14 = (uint)local_14._1_3_ << 8;
      }
    }
    break;
  case 1.821688e-44:
    if (param_1[0x104] == 2.802597e-44) {
      FUN_006d6ba0(0x6c,0x3f800000,2,0,0x3f800000);
      local_254 = 0.0;
      do {
        uVar10 = FUN_006eef60();
        uVar28 = 0;
        pTVar27 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
        pTVar24 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uVar23 = 0;
        uVar10 = FUN_00428b20(1000,1,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar10);
        piVar9 = (int *)__RTDynamicCast(uVar10,uVar23,pTVar24,pTVar27,uVar28);
        iVar11 = DAT_00baae50;
        if (local_254 == 0.0) {
          iVar11 = DAT_00baa9b4;
        }
        piVar9[0x11d] = iVar11;
        local_40 = ZEXT816(0);
        piVar9[0x5a] = piVar9[0x5a] | 0x10000;
        piVar9[0x5b] = piVar9[0x5b];
        local_50 = _DAT_00babbb0;
        uStack_4c = _UNK_00babbb4;
        uStack_48 = _UNK_00babbb8;
        uStack_44 = _UNK_00babbbc;
        local_30 = 0;
        local_2c = 0;
        local_28 = 0;
        (**(code **)(*piVar9 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
        piVar9[0xd3] = 0;
        piVar9[0xd4] = -0x3de00000;
        (**(code **)(*piVar9 + 0xc))();
        local_254 = (float)((int)local_254 + 1);
      } while ((int)local_254 < 2);
      if ((param_1[0xb] == 1.401298e-45) && (param_1[0xc] == 1.401298e-45)) {
        cVar5 = FUN_00417430(0,0x10000000);
        if ((cVar5 == '\0') || (uVar6 = FUN_006ac7e0(0x19,0,extraout_ECX,0), uVar6 < 3)) {
          local_2b0 = param_1[0xd0] + DAT_00baa87c;
          local_2b4 = param_1[0xcf];
          uVar10 = FUN_006eef60();
          FUN_00428b20(0x19,0,&local_2b4,&DAT_00c7b640,param_1,0,uVar10);
        }
      }
      else {
        iVar11 = 3;
        if (((uint)param_1[0x5b] & 0x10000000) != 0) {
          iVar11 = FUN_006ac7e0(0x12,0,(uint)param_1[0x5b] & 0x10000000,0);
          iVar11 = 6 - iVar11;
        }
        local_27c = '\0';
        local_274 = 0x10;
        local_270 = (float *)0x0;
        local_278 = FUN_00a0f4e0();
        local_14 = CONCAT31(local_14._1_3_,1);
        local_268 = param_1[0xcf];
        local_264 = (float *)(param_1[0xd0] + DAT_00baa87c);
        if (0 < iVar11) {
          uVar10 = FUN_006eef60();
          uVar10 = FUN_00428b20(0x12,0,&local_268,&DAT_00c7b640,param_1,0,uVar10);
          FUN_00417630(uVar10);
        }
        local_268 = local_268 + DAT_00baa81c;
        if (1 < iVar11) {
          uVar10 = FUN_006eef60();
          uVar10 = FUN_00428b20(0x12,0,&local_268,&DAT_00c7b640,param_1,0,uVar10);
          FUN_00417630(uVar10);
        }
        if (param_1[0xb] == 0.0) {
          local_268 = local_268 - DAT_00baa87c;
          if (2 < iVar11) {
            uVar10 = FUN_006eef60();
            uVar10 = FUN_00428b20(0x12,0,&local_268,&DAT_00c7b640,param_1,0,uVar10);
            FUN_00417630(uVar10);
          }
        }
        else if ((param_1[0xb] == 1.401298e-45) && (2 < iVar11)) {
          iVar11 = FUN_006be840();
          local_25c = param_1[0xcf] * DAT_00baa2d0 + *(float *)(iVar11 + 0x33c) * DAT_00baa2d0;
          local_258 = (float *)(param_1[0xd0] * DAT_00baa2d0 +
                               *(float *)(iVar11 + 0x340) * DAT_00baa2d0);
          FUN_00813520(&local_2bc,&local_25c,0x428c0000,0,0,0);
          FUN_006c2750(param_1 + 0xcf,param_1,local_2bc,local_2b8,0,0xc1f00000);
        }
        local_258 = (float *)0x0;
        if (local_270 != (float *)0x0) {
          do {
            iVar11 = __RTDynamicCast(*(undefined4 *)(local_278 + (int)local_258 * 4),0,
                                     &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                     &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
            *(float *)(iVar11 + 0xc7c) = param_1[8];
            if (*(float *)(iVar11 + 0x3bc) != 0.0) {
              local_250 = (float *)(iVar11 + 0x3bc);
              FUN_004cf210(&local_250);
            }
            *(float **)(iVar11 + 0x3bc) = param_1;
            FUN_004cdcf0((float **)(iVar11 + 0x3bc));
            *(uint *)(iVar11 + 0x168) = *(uint *)(iVar11 + 0x168) & 0xfffffffb;
            *(undefined4 *)(iVar11 + 0x16c) = *(undefined4 *)(iVar11 + 0x16c);
            local_258 = (float *)((int)local_258 + 1);
            *(undefined *)(iVar11 + 0x174) = 1;
          } while (local_258 < local_270);
        }
        local_14 = local_14 & 0xffffff00;
        if (local_27c == '\0') {
          if (DAT_00c7de78 == 0) {
            puVar14 = &DAT_00c7f618;
          }
          else {
            puVar14 = (uint *)(DAT_00c7de78 + 0x30);
          }
          if (local_278 != 0) {
            uVar3 = *(uint *)(local_278 + -4);
            uVar6 = *puVar14;
            *puVar14 = *puVar14 - uVar3;
            puVar14[1] = puVar14[1] - (uint)(uVar6 < uVar3);
            (*local_26c)((uint *)(local_278 + -4));
          }
          local_14 = local_14 & 0xffffff00;
        }
      }
      iVar11 = AI_0041af60(local_330,1000,0x21,0xffffffff,1,0);
      local_250 = *(float **)(iVar11 + 0xc);
      if (local_330[0] == '\0') {
        local_14._0_1_ = 3;
        FUN_00a648b0(0,0);
        local_14 = (uint)local_14._1_3_ << 8;
      }
      if (local_250 < (float *)0x19) {
        uVar6 = FUN_006eef60();
        local_254 = param_1[0xcf];
        local_260 = (float *)(param_1[0xd0] + DAT_00baa87c);
        local_258 = (float *)(uVar6 % 5 + 1);
        if (local_258 != (float *)0x0) {
          do {
            uVar10 = FUN_006eef60();
            iVar11 = FUN_006eef60();
            fVar18 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
            local_250 = (float *)(fVar18 + fVar18);
            pfVar15 = local_250;
            FUN_0041d520();
            local_24c[0] = pfVar15;
            pfVar15 = local_250;
            FUN_0041d540();
            local_2c4 = pfVar15;
            local_2c0 = local_24c[0];
            iVar11 = FUN_006eef60();
            fVar18 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
            local_250 = (float *)(fVar18 + fVar18);
            pfVar15 = local_250;
            FUN_0041d520();
            local_264 = pfVar15;
            iVar11 = FUN_006eef60();
            local_24c[0] = (float *)((float)((double)iVar11 +
                                            (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                                     DAT_00ba9ff4 * DAT_00baa904);
            pfVar15 = local_250;
            FUN_0041d540();
            local_2cc = (float)pfVar15 * (float)local_24c[0] + local_254;
            local_2c8 = (float)local_264 * (float)local_24c[0] + (float)local_260;
            piVar9 = (int *)FUN_00428b20(1000,0x21,&local_2cc,&local_2c4,param_1,0,uVar10);
            if (piVar9[0xef] != 0) {
              local_24c[0] = (float *)(piVar9 + 0xef);
              FUN_004cf210(local_24c);
            }
            piVar9[0xef] = (int)param_1;
            FUN_004cdcf0(piVar9 + 0xef);
            piVar9[0x5a] = piVar9[0x5a] & 0xfffffffb;
            piVar9[0x5b] = piVar9[0x5b];
            (**(code **)(*piVar9 + 0xc))();
            local_258 = (float *)((int)local_258 - 1);
          } while (local_258 != (float *)0x0);
          local_258 = (float *)0x0;
        }
      }
    }
    break;
  case 1.961818e-44:
    if (param_1[0x104] == 2.522337e-44) {
      FUN_006d6ba0(0x6a,0x3f800000,2,0,0x3f800000);
      if (param_1[0xb] == 0.0) {
        fVar18 = param_1[0xc];
        local_258 = (float *)0x12;
        if (fVar18 == 1.401298e-45) {
          local_258 = (float *)0x50;
        }
        else if (fVar18 == 2.802597e-45) {
          local_258 = (float *)0x3d;
        }
        uVar6 = FUN_006ac7e0(local_258,0,fVar18,0);
        if (uVar6 < 5) {
          uVar10 = FUN_006eef60();
          local_2d0 = param_1[0xd0] + DAT_00baa87c;
          local_2d4 = *pfVar15;
          uVar28 = 0;
          pTVar27 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
          pTVar24 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uVar23 = 0;
          uVar10 = FUN_00428b20(local_258,0,&local_2d4,&DAT_00c7b640,param_1,0,uVar10);
          iVar11 = __RTDynamicCast(uVar10,uVar23,pTVar24,pTVar27,uVar28);
          *(uint *)(iVar11 + 0x168) = *(uint *)(iVar11 + 0x168) & 0xfffffffb;
          *(undefined *)(iVar11 + 0x174) = 1;
          *(undefined4 *)(iVar11 + 0x16c) = *(undefined4 *)(iVar11 + 0x16c);
          if (param_1[0xc] == 0.0) {
            fVar19 = *(float *)(iVar11 + 0xc38) * DAT_00baa4c0;
            *(float *)(iVar11 + 0xc38) = fVar19;
            fVar19 = fVar19 * *(float *)(iVar11 + 0x3b4);
            fVar18 = fVar19 * DAT_00c3793c;
            *(float *)(iVar11 + 0xe8) = fVar19 * DAT_00c37940;
            *(float *)(iVar11 + 0xe4) = fVar18;
            *(float *)(iVar11 + 900) = *(float *)(iVar11 + 900) * DAT_00baa5b4;
            *(float *)(iVar11 + 0x380) = *(float *)(iVar11 + 0x380) * DAT_00baa5b4;
          }
        }
      }
      else if (param_1[0xb] == 1.401298e-45) {
        uVar10 = AI_0043ef30();
        iVar11 = FUN_006be840();
        local_2dc = *(undefined4 *)(iVar11 + 0x33c);
        local_2d8 = *(undefined4 *)(iVar11 + 0x340);
        FUN_006ccdd0(10,&local_2dc,0,uVar10);
      }
    }
  }
  param_1[0x104] = (float)((int)param_1[0x104] + 1);
  if (0x27 < (int)param_1[0x104]) {
    param_1[0x2d9] = 5.605194e-45;
  }
  if (*(char *)((int)param_1 + 0x173) == '\0') goto LAB_0046fb4c;
  local_258 = (float *)0x0;
  uVar6 = FUN_006eef60();
  if (uVar6 % 10 != 0xfffffffb) {
    do {
      uVar10 = FUN_006eef60();
      iVar11 = FUN_006eef60();
      fVar18 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa704;
      local_250 = (float *)(fVar18 + fVar18);
      iVar11 = FUN_006eef60();
      local_24c[0] = (float *)((float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)])
                               * DAT_00ba9ff4 * DAT_00baa924);
      pfVar15 = local_250;
      FUN_0041d540();
      local_2fc = (float)pfVar15 * (float)local_24c[0] + param_1[0xcf];
      pfVar15 = local_250;
      FUN_0041d520();
      local_2f8 = (float)pfVar15 * (float)local_24c[0] + param_1[0xd0];
      FUN_00428b20(1000,0x21,&local_2fc,&DAT_00c7b640,param_1,0,uVar10);
      pfVar15 = (float *)((int)local_258 + 1);
      local_258 = pfVar15;
      uVar6 = FUN_006eef60();
    } while (pfVar15 < (float *)(uVar6 % 10 + 5));
  }
  fVar18 = param_1[0xfb];
  local_298 = DAT_00b1f66c;
  local_254 = DAT_00b1f674;
  if (param_1[0xb] != 1.401298e-45) {
    local_250 = (float *)0x6;
    do {
      iVar11 = FUN_006eef60();
      fVar19 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa704;
      local_260 = (float *)(fVar19 + fVar19);
      pfVar15 = local_260;
      FUN_0041d520();
      local_258 = pfVar15;
      iVar11 = FUN_006eef60();
      local_24c[0] = (float *)((float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)])
                               * DAT_00ba9ff4 * DAT_00baa3a4 * param_1[0xdc]);
      pfVar15 = local_260;
      FUN_0041d540();
      local_314 = (float)pfVar15 * (float)local_24c[0] + param_1[0xcf];
      local_310 = (float)local_24c[0] * (float)local_258 + param_1[0xd0];
      local_260 = (float *)FUN_006eef60();
      if (fVar18 == 0.0) {
        FUN_00a112c0(0x10,"RNG Seed is zero!\n");
        pcVar4 = (code *)swi(3);
        (*pcVar4)();
        return;
      }
      uVar6 = (uint)fVar18 >> ((byte)local_298 & 0x1f) ^ (uint)fVar18;
      uVar6 = uVar6 << ((byte)((ulonglong)local_298 >> 0x20) & 0x1f) ^ uVar6;
      fVar18 = (float)(uVar6 >> (SUB41(local_254,0) & 0x1f) ^ uVar6);
      uVar10 = 0x12;
      if (((uint)fVar18 & 1) != 0) {
        uVar10 = 0xd;
      }
      iVar11 = FUN_00428b20(uVar10,0,&local_314,&DAT_00c7b640,param_1,0,local_260);
      *(uint *)(iVar11 + 0x168) = *(uint *)(iVar11 + 0x168) & 0xfffffffb;
      local_250 = (float *)((int)local_250 + -1);
      *(undefined4 *)(iVar11 + 0x16c) = *(undefined4 *)(iVar11 + 0x16c);
    } while (local_250 != (float *)0x0);
    goto LAB_0046fb4c;
  }
  if (fVar18 == 0.0) {
    FUN_00a112c0(0x10,"RNG Seed is zero!\n");
    pcVar4 = (code *)swi(3);
    (*pcVar4)();
    return;
  }
  uVar6 = (uint)fVar18 >> ((byte)DAT_00b1f66c & 0x1f) ^ (uint)fVar18;
  uVar6 = uVar6 << ((byte)((ulonglong)DAT_00b1f66c >> 0x20) & 0x1f) ^ uVar6;
  uVar6 = uVar6 >> (SUB41(DAT_00b1f674,0) & 0x1f) ^ uVar6;
  local_250 = (float *)(uVar6 % 3 + 4);
  while (local_250 != (float *)0x0) {
    iVar11 = FUN_006eef60();
    fVar18 = (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa704;
    local_260 = (float *)(fVar18 + fVar18);
    pfVar15 = local_260;
    FUN_0041d520();
    local_258 = pfVar15;
    iVar11 = FUN_006eef60();
    local_24c[0] = (float *)((float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) *
                             DAT_00ba9ff4 * DAT_00baa3a4 * param_1[0xdc]);
    pfVar15 = local_260;
    FUN_0041d540();
    local_304 = (float)pfVar15 * (float)local_24c[0] + param_1[0xcf];
    local_300 = (float)local_258 * (float)local_24c[0] + param_1[0xd0];
    local_260 = (float *)FUN_006eef60();
    if (uVar6 == 0) {
      FUN_00a112c0(0x10,"RNG Seed is zero!\n");
      pcVar4 = (code *)swi(3);
      (*pcVar4)();
      return;
    }
    uVar6 = uVar6 >> ((byte)local_298 & 0x1f) ^ uVar6;
    uVar6 = uVar6 << ((byte)((ulonglong)local_298 >> 0x20) & 0x1f) ^ uVar6;
    uVar6 = uVar6 >> (SUB41(local_254,0) & 0x1f) ^ uVar6;
    uVar10 = 0x12;
    if ((uVar6 & 1) != 0) {
      uVar10 = 0xd;
    }
    iVar11 = FUN_00428b20(uVar10,0,&local_304,&DAT_00c7b640,param_1,0,local_260);
    *(uint *)(iVar11 + 0x168) = *(uint *)(iVar11 + 0x168) & 0xfffffffb;
    local_250 = (float *)((int)local_250 + -1);
    *(undefined4 *)(iVar11 + 0x16c) = *(undefined4 *)(iVar11 + 0x16c);
  }
  local_258 = (float *)0xe;
  local_264 = (float *)0x0;
  if (param_1[0xc] == 1.401298e-45) {
    local_264 = (float *)0x0;
LAB_0046f885:
    local_258 = (float *)0x19;
  }
  else if (param_1[0xc] == 2.802597e-45) {
    local_264 = (float *)0x1;
    goto LAB_0046f885;
  }
  if (uVar6 == 0) {
    FUN_00a112c0(0x10,"RNG Seed is zero!\n");
    pcVar4 = (code *)swi(3);
    (*pcVar4)();
    return;
  }
  uVar6 = uVar6 >> ((byte)local_298 & 0x1f) ^ uVar6;
  uVar6 = uVar6 << ((byte)((ulonglong)local_298 >> 0x20) & 0x1f) ^ uVar6;
  local_250 = (float *)0x0;
  for (iVar11 = ((uVar6 >> (SUB41(local_254,0) & 0x1f) ^ uVar6) & 1) + 1; iVar11 != 0;
      iVar11 = iVar11 + -1) {
    iVar12 = FUN_006eef60();
    fVar18 = (float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baa704;
    local_260 = (float *)(fVar18 + fVar18);
    pfVar15 = local_260;
    FUN_0041d520();
    local_24c[0] = pfVar15;
    iVar12 = FUN_006eef60();
    local_250 = (float *)((float)((double)iVar12 + (double)(&DAT_00bacb00)[-(iVar12 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa3a4 * param_1[0xdc]);
    pfVar15 = local_260;
    FUN_0041d540();
    local_30c = (float)pfVar15 * (float)local_250 + param_1[0xcf];
    local_308 = (float)local_24c[0] * (float)local_250 + param_1[0xd0];
    uVar10 = FUN_006eef60();
    iVar12 = FUN_00428b20(local_258,local_264,&local_30c,&DAT_00c7b640,param_1,0,uVar10);
    *(uint *)(iVar12 + 0x168) = *(uint *)(iVar12 + 0x168) & 0xfffffffb;
    *(undefined4 *)(iVar12 + 0x16c) = *(undefined4 *)(iVar12 + 0x16c);
  }
LAB_0046fb4c:
  if (local_2ac[0] == '\0') {
    if (DAT_00c7de78 == 0) {
      puVar14 = &DAT_00c7f618;
    }
    else {
      puVar14 = (uint *)(DAT_00c7de78 + 0x30);
    }
    if (local_2a8 != 0) {
      uVar3 = *(uint *)(local_2a8 + -4);
      uVar6 = *puVar14;
      *puVar14 = *puVar14 - uVar3;
      puVar14[1] = puVar14[1] - (uint)(uVar6 < uVar3);
      (*local_26c)(local_2a8 + -4);
    }
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

