/* Local J460 decompiler output.
 * VA: 0x00466600
 * Entry: 00466600
 * Dispatcher: 0x006c2990
 * Types: 71,72,73
 * Identities: 71.0.0,71.1.0,72.0.0,72.1.0,73.0.0,73.1.0
 * Evidence: dispatcher=0x006c2990; end=0x00467670; instructions=1032
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=71,72,73;
   identities=71.0.0,71.1.0,72.0.0,72.1.0,73.0.0,73.1.0; dispatcher=0x006c2990; end=0x00467670;
   instructions=1032 */

void __fastcall AI_00466600(float param_1)

{
  float fVar1;
  undefined4 uVar2;
  undefined *puVar3;
  char cVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  int iVar8;
  float *pfVar9;
  int iVar10;
  undefined4 *puVar11;
  undefined4 *puVar12;
  int iVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  undefined4 uVar18;
  undefined4 **ppuVar19;
  undefined4 uVar20;
  TypeDescriptor *pTVar21;
  TypeDescriptor *pTVar22;
  undefined4 uVar23;
  undefined4 local_9c [11];
  int local_70;
  undefined4 *local_6c;
  undefined4 *local_68;
  float local_60;
  float local_5c;
  undefined4 local_58;
  int *local_54;
  float local_50;
  undefined4 *local_4c;
  undefined4 *local_48;
  float local_44;
  float local_40;
  float local_3c;
  float local_38;
  int local_34;
  float local_30;
  undefined4 *local_2c;
  float local_28;
  float local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af277d;
  local_1c = ExceptionList;
  uVar5 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  local_34 = *(int *)((int)param_1 + 0x2c);
  if (*(int *)((int)param_1 + 0xb64) == 0) {
    *(undefined4 *)((int)param_1 + 0xb64) = 4;
    *(undefined4 *)((int)param_1 + 0x184) = 3;
    uVar2 = _UNK_00babf5c;
    uVar23 = _UNK_00babf58;
    uVar20 = _UNK_00babf54;
    uVar18 = _DAT_00babf50;
    if (local_34 != 1) {
      return;
    }
    if ((undefined4 *)((int)param_1 + 0x1e4) == local_9c) {
      return;
    }
    *(undefined8 *)((int)param_1 + 0x204) = 0x3e051eb83e051eb8;
    *(undefined4 *)((int)param_1 + 0x1e4) = uVar18;
    *(undefined4 *)((int)param_1 + 0x1e8) = uVar20;
    *(undefined4 *)((int)param_1 + 0x1ec) = uVar23;
    *(undefined4 *)((int)param_1 + 0x1f0) = uVar2;
    *(undefined4 *)((int)param_1 + 0x20c) = 0x3e051eb8;
    *(undefined (*) [16])((int)param_1 + 500) = ZEXT816(0);
    return;
  }
  fVar16 = *(float *)((int)param_1 + 0x36c);
  if (*(int *)((int)param_1 + 0x30) == 1) {
    fVar16 = fVar16 * DAT_00baa3e0;
  }
  local_38 = DAT_00baa198;
  fVar14 = DAT_00baa264;
  if ((*(int *)((int)param_1 + 0x28) == 0x48) ||
     (fVar14 = DAT_00baa2e8, *(int *)((int)param_1 + 0x28) == 0x49)) {
    local_38 = fVar14;
  }
  ExceptionList = &local_1c;
  *(float *)((int)param_1 + 0x36c) = fVar16 * DAT_00baa3e0;
  local_44 = param_1;
  puVar3 = &stack0xfffffffc;
  if (((local_34 == 0) &&
      (*(int *)((int)param_1 + 0xbc0) = *(int *)((int)param_1 + 0xbc0) + 1,
      puVar3 = &stack0xfffffffc, 0x78 < *(int *)((int)param_1 + 0xbc0))) &&
     (uVar6 = FUN_006eef60(uVar5), puVar3 = puStack_20, uVar6 % 200 == 0)) {
    puVar11 = (undefined4 *)0x0;
    *(undefined4 *)((int)param_1 + 0xbc0) = 0;
    puVar12 = (undefined4 *)0x0;
    local_6c = (undefined4 *)0x0;
    local_2c = (undefined4 *)0x0;
    local_68 = (undefined4 *)0x0;
    local_14 = 0;
    local_40 = *(float *)(DAT_00c71678 + 0x18300);
    local_70 = 0;
    if (*(int *)((int)local_40 + 0x1264) != 0) {
      uVar6 = 0;
      local_24 = 0.0;
      do {
        iVar8 = *(int *)(*(int *)(*(int *)((int)local_40 + 0x125c) + uVar6 * 4) + 0x28);
        if (iVar8 == 0x47) {
          local_2c = (undefined4 *)0x3d2;
          if (puVar12 == puVar11) {
LAB_004667f6:
            FUN_00428590(puVar12,&local_2c);
            puVar11 = local_68;
            puVar12 = local_6c;
          }
          else {
            *puVar12 = 0x3d2;
            puVar12 = puVar12 + 1;
            local_6c = puVar12;
          }
        }
        else if (iVar8 == 0x48) {
          local_2c = (undefined4 *)0x3d3;
          if (puVar12 == puVar11) goto LAB_004667f6;
          *puVar12 = 0x3d3;
          puVar12 = puVar12 + 1;
          local_6c = puVar12;
        }
        else if (iVar8 == 0x49) {
          local_2c = (undefined4 *)0x3d4;
          if (puVar12 == puVar11) goto LAB_004667f6;
          *puVar12 = 0x3d4;
          puVar12 = puVar12 + 1;
          local_6c = puVar12;
        }
        uVar6 = uVar6 + 1;
        param_1 = local_44;
        local_2c = puVar11;
      } while (uVar6 < *(uint *)((int)local_40 + 0x1264));
    }
    uVar6 = (int)puVar12 - local_70 >> 2;
    local_24 = (float)local_70;
    if (uVar6 != 0) {
      uVar7 = FUN_006eef60();
      FUN_006d6ba0(*(undefined4 *)((int)local_24 + (uVar7 % uVar6) * 4),0x3f800000,0x3c,0,0x3f800000
                  );
    }
    local_14 = 0xffffffff;
    puVar3 = puStack_20;
    if (local_24 != 0.0) {
      uVar6 = (int)local_2c - (int)local_24 & 0xfffffffc;
      iVar8 = (int)local_24;
      if (0xfff < uVar6) {
        iVar8 = *(int *)((int)local_24 + -4);
        uVar6 = uVar6 + 0x23;
        if (0x1f < ((int)local_24 - iVar8) - 4U) {
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar8,uVar6);
      puVar3 = puStack_20;
    }
  }
  puStack_20 = puVar3;
  if (*(char *)((int)param_1 + 400) == '\0') goto LAB_0046693e;
  if (local_34 == 0) {
    iVar8 = *(int *)((int)param_1 + 0x28);
    if (iVar8 == 0x47) {
      uVar18 = 0x3ce;
    }
    else {
LAB_004668d1:
      if (iVar8 == 0x48) {
        uVar18 = 0x3c9;
      }
      else {
        if (iVar8 != 0x49) goto LAB_0046693e;
        uVar18 = 0x3ca;
      }
    }
  }
  else {
    if (local_34 != 1) goto LAB_0046693e;
    iVar8 = *(int *)((int)param_1 + 0x28);
    if (iVar8 != 0x47) goto LAB_004668d1;
    uVar18 = 0x3c8;
  }
  FUN_006d6ba0(uVar18,0x3f800000,0x14,0,0x3f800000);
LAB_0046693e:
  local_6c = *(undefined4 **)((int)param_1 + 0x16c);
  if ((*(uint *)((int)param_1 + 0x168) & 0x200) == 0) {
    fVar16 = *(float *)((int)param_1 + 0x360);
    fVar14 = (local_38 * *(float *)((int)param_1 + 0x39c)) / *(float *)((int)param_1 + 0x36c);
    if (fVar16 <= 0.0) {
      fVar16 = fVar16 - fVar14;
    }
    else {
      fVar16 = fVar14 + fVar16;
    }
    *(float *)((int)param_1 + 0x360) = fVar16;
    fVar16 = *(float *)((int)param_1 + 0x364);
    if (fVar16 <= 0.0) {
      fVar14 = fVar16 - fVar14;
    }
    else {
      fVar14 = fVar14 + fVar16;
    }
    *(float *)((int)param_1 + 0x364) = fVar14;
    if ((*(uint *)((int)param_1 + 0x168) & 0x1000800) != 0) {
      iVar8 = FUN_006be840();
      local_2c = (undefined4 *)
                 ((uint)(*(float *)(iVar8 + 0x340) - *(float *)((int)param_1 + 0x340)) ^
                 DAT_00bacb70);
      local_38 = (float)((uint)(*(float *)(iVar8 + 0x33c) - *(float *)((int)param_1 + 0x33c)) ^
                        DAT_00bacb70);
      fVar14 = (float)local_2c * (float)local_2c + local_38 * local_38;
      FUN_00435a50();
      puVar11 = local_2c;
      fVar16 = local_38;
      if (0.0 < fVar14) {
        fVar16 = ((*(float *)((int)param_1 + 0x370) + DAT_00baa9a0) - fVar14) * DAT_00baa08c;
        if (fVar16 <= 0.0) {
          fVar16 = 0.0;
        }
        if (DAT_00baa2d0 <= fVar16) {
          fVar16 = DAT_00baa2d0;
        }
        puVar11 = (undefined4 *)((fVar16 / fVar14) * (float)local_2c);
        fVar16 = (fVar16 / fVar14) * local_38;
      }
      fVar14 = *(float *)((int)param_1 + 0x36c);
      if (NAN(fVar14) == (fVar14 == 0.0)) {
        *(float *)((int)param_1 + 0x364) =
             (*(float *)((int)param_1 + 0x39c) * (float)puVar11) / fVar14 +
             *(float *)((int)param_1 + 0x364);
        *(float *)((int)param_1 + 0x360) =
             (*(float *)((int)param_1 + 0x39c) * fVar16) / fVar14 + *(float *)((int)param_1 + 0x360)
        ;
      }
    }
  }
  else {
    FUN_007e6300(0);
  }
  if (*(int *)((int)param_1 + 0x28) != 0x49) {
    iVar8 = FUN_0040b220(0);
    local_44 = *(float *)(iVar8 + 0x3c) + DAT_00baa454;
    iVar8 = FUN_0040b220(0);
    *(float *)(iVar8 + 0x3c) = local_44;
  }
  if ((*(char *)((int)param_1 + 0x173) != '\0') &&
     ((*(uint *)((int)param_1 + 0x16c) & 0x20000000) == 0)) {
    iVar8 = FUN_006eef60(uVar5);
    local_44 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa704;
    local_44 = local_44 + local_44;
    fVar16 = local_44;
    FUN_0041d540();
    local_24 = fVar16 * DAT_00baa87c;
    fVar16 = local_44;
    FUN_0041d520();
    local_2c = (undefined4 *)(fVar16 * DAT_00baa87c);
    if (*(int *)((int)param_1 + 0x28) == 0x47) {
      uVar18 = FUN_006eef60();
      uVar23 = 0;
      local_3c = local_24 + *(float *)((int)param_1 + 0x33c);
      local_50 = local_24 * DAT_00baa198;
      pTVar22 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
      pTVar21 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
      uVar20 = 0;
      local_38 = (float)local_2c + *(float *)((int)param_1 + 0x340);
      local_54 = (int *)((float)local_2c * DAT_00baa198);
      local_4c = local_54;
      local_40 = local_50;
      uVar18 = FUN_00428b20(0x48,*(undefined4 *)((int)param_1 + 0x2c),&local_3c,&local_50,param_1,
                            *(undefined4 *)((int)param_1 + 0x30),uVar18);
      iVar8 = __RTDynamicCast(uVar18,uVar20,pTVar21,pTVar22,uVar23);
      local_44 = *(float *)(iVar8 + 0x16c);
      uVar6 = *(uint *)(iVar8 + 0x168) & 0xfffffffb;
      *(float *)(iVar8 + 0x16c) = local_44;
      *(uint *)(iVar8 + 0x168) = uVar6;
      uVar5 = *(uint *)((int)param_1 + 0x16c);
      if ((*(uint *)((int)param_1 + 0x168) & 0x80000000) != 0) {
        *(uint *)(iVar8 + 0x168) = uVar6 | 0x80000000;
        *(float *)(iVar8 + 0x16c) = local_44;
        uVar5 = *(uint *)((int)param_1 + 0x16c);
      }
      local_70 = *(undefined4 *)((int)param_1 + 0x168);
      if ((uVar5 & 0x10000000) != 0) {
        *(undefined4 *)(iVar8 + 900) = 0x41700000;
        *(undefined4 *)(iVar8 + 0x380) = 0x41700000;
      }
      uVar18 = FUN_006eef60();
      local_60 = *(float *)((int)param_1 + 0x33c) - local_24;
      local_4c = (undefined4 *)(local_24 * DAT_00baad0c);
      uVar23 = 0;
      local_44 = (float)local_2c * DAT_00baad0c;
      pTVar22 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
      pTVar21 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
      uVar20 = 0;
      local_5c = *(float *)((int)param_1 + 0x340) - (float)local_2c;
      local_48 = local_4c;
      local_38 = local_44;
      uVar18 = FUN_00428b20(0x48,*(undefined4 *)((int)param_1 + 0x2c),&local_60,&local_48,param_1,
                            *(undefined4 *)((int)param_1 + 0x30),uVar18);
      iVar8 = __RTDynamicCast(uVar18,uVar20,pTVar21,pTVar22,uVar23);
      local_44 = *(float *)(iVar8 + 0x16c);
      uVar6 = *(uint *)(iVar8 + 0x168) & 0xfffffffb;
      *(float *)(iVar8 + 0x16c) = local_44;
      *(uint *)(iVar8 + 0x168) = uVar6;
      uVar5 = *(uint *)((int)param_1 + 0x16c);
      if ((*(uint *)((int)param_1 + 0x168) & 0x80000000) != 0) {
        *(uint *)(iVar8 + 0x168) = uVar6 | 0x80000000;
        *(float *)(iVar8 + 0x16c) = local_44;
        uVar5 = *(uint *)((int)param_1 + 0x16c);
      }
      local_70 = *(undefined4 *)((int)param_1 + 0x168);
      if ((uVar5 & 0x10000000) != 0) {
        *(undefined4 *)(iVar8 + 900) = 0x41700000;
        *(undefined4 *)(iVar8 + 0x380) = 0x41700000;
      }
      if ((*(int *)((int)param_1 + 0x30) == 1) || (local_34 == 1)) {
        uVar18 = FUN_006eef60();
        local_6c = (undefined4 *)(local_24 + *(float *)((int)param_1 + 0x33c));
        uVar23 = 0;
        pTVar22 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
        pTVar21 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uVar20 = 0;
        local_68 = (undefined4 *)(*(float *)((int)param_1 + 0x340) - (float)local_2c);
        uVar18 = FUN_00428b20(0x48,*(undefined4 *)((int)param_1 + 0x2c),&local_6c,&DAT_00c7b640,
                              param_1,*(undefined4 *)((int)param_1 + 0x30),uVar18);
        iVar8 = __RTDynamicCast(uVar18,uVar20,pTVar21,pTVar22,uVar23);
        local_54 = *(int **)(iVar8 + 0x16c);
        uVar6 = *(uint *)(iVar8 + 0x168) & 0xfffffffb;
        *(int **)(iVar8 + 0x16c) = local_54;
        *(uint *)(iVar8 + 0x168) = uVar6;
        uVar5 = *(uint *)((int)param_1 + 0x16c);
        if ((*(uint *)((int)param_1 + 0x168) & 0x80000000) != 0) {
          *(uint *)(iVar8 + 0x168) = uVar6 | 0x80000000;
          *(int **)(iVar8 + 0x16c) = local_54;
          uVar5 = *(uint *)((int)param_1 + 0x16c);
        }
        if ((uVar5 & 0x10000000) != 0) {
          *(undefined4 *)(iVar8 + 900) = 0x41700000;
          *(undefined4 *)(iVar8 + 0x380) = 0x41700000;
        }
      }
      else {
        uVar18 = FUN_006eef60();
        uVar23 = 0;
        pTVar22 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
        pTVar21 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        local_60 = local_40;
        uVar20 = 0;
        local_5c = local_38;
        local_6c = (undefined4 *)(local_24 + *(float *)((int)param_1 + 0x33c));
        local_68 = (undefined4 *)(*(float *)((int)param_1 + 0x340) - (float)local_2c);
        uVar18 = FUN_00428b20(0x48,*(undefined4 *)((int)param_1 + 0x2c),&local_6c,&local_60,param_1,
                              *(undefined4 *)((int)param_1 + 0x30),uVar18);
        iVar8 = __RTDynamicCast(uVar18,uVar20,pTVar21,pTVar22,uVar23);
        local_40 = *(float *)(iVar8 + 0x16c);
        local_44 = (float)(*(uint *)(iVar8 + 0x168) & 0xfffffffb);
        *(float *)(iVar8 + 0x16c) = local_40;
        *(float *)(iVar8 + 0x168) = local_44;
        cVar4 = FUN_00417430(0x80000000,0);
        if (cVar4 != '\0') {
          *(uint *)(iVar8 + 0x168) = (uint)local_44 | 0x80000000;
          *(float *)(iVar8 + 0x16c) = local_40;
        }
        cVar4 = FUN_00417430(0,0x10000000);
        if (cVar4 != '\0') {
          *(undefined4 *)(iVar8 + 900) = 0x41700000;
          *(undefined4 *)(iVar8 + 0x380) = 0x41700000;
        }
        uVar18 = FUN_006eef60();
        uVar23 = 0;
        pTVar22 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
        pTVar21 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        local_6c = local_4c;
        uVar20 = 0;
        local_68 = local_54;
        local_60 = *(float *)((int)param_1 + 0x33c) - local_24;
        local_5c = (float)local_2c + *(float *)((int)param_1 + 0x340);
        uVar18 = FUN_00428b20(0x48,*(undefined4 *)((int)param_1 + 0x2c),&local_60,&local_6c,param_1,
                              *(undefined4 *)((int)param_1 + 0x30),uVar18);
        iVar8 = __RTDynamicCast(uVar18,uVar20,pTVar21,pTVar22,uVar23);
        local_4c = *(undefined4 **)(iVar8 + 0x16c);
        local_54 = (int *)(*(uint *)(iVar8 + 0x168) & 0xfffffffb);
        *(undefined4 **)(iVar8 + 0x16c) = local_4c;
        *(int **)(iVar8 + 0x168) = local_54;
        cVar4 = FUN_00417430(0x80000000,0);
        if (cVar4 != '\0') {
          *(uint *)(iVar8 + 0x168) = (uint)local_54 | 0x80000000;
          *(undefined4 **)(iVar8 + 0x16c) = local_4c;
        }
        cVar4 = FUN_00417430(0,0x10000000);
        if (cVar4 != '\0') {
          *(undefined4 *)(iVar8 + 900) = 0x41700000;
          *(undefined4 *)(iVar8 + 0x380) = 0x41700000;
        }
      }
      if (local_34 == 0) {
        FUN_006d6ba0(0x3d1,0x3f800000,0x14,0,0x3f800000);
        ExceptionList = local_1c;
        return;
      }
    }
    else if (*(int *)((int)param_1 + 0x28) == 0x48) {
      uVar18 = FUN_006eef60();
      local_6c = (undefined4 *)(local_24 * DAT_00baa198);
      uVar23 = 0;
      pTVar22 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
      local_68 = (undefined4 *)((float)local_2c * DAT_00baa198);
      pTVar21 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
      uVar20 = 0;
      local_60 = local_24 + *(float *)((int)param_1 + 0x33c);
      local_5c = (float)local_2c + *(float *)((int)param_1 + 0x340);
      uVar18 = FUN_00428b20(0x49,*(undefined4 *)((int)param_1 + 0x2c),&local_60,&local_6c,param_1,
                            *(undefined4 *)((int)param_1 + 0x30),uVar18);
      iVar8 = __RTDynamicCast(uVar18,uVar20,pTVar21,pTVar22,uVar23);
      local_4c = *(undefined4 **)(iVar8 + 0x16c);
      local_54 = (int *)(*(uint *)(iVar8 + 0x168) & 0xfffffffb);
      *(undefined4 **)(iVar8 + 0x16c) = local_4c;
      *(int **)(iVar8 + 0x168) = local_54;
      cVar4 = FUN_00417430(0x80000000,0);
      if (cVar4 != '\0') {
        *(uint *)(iVar8 + 0x168) = (uint)local_54 | 0x80000000;
        *(undefined4 **)(iVar8 + 0x16c) = local_4c;
      }
      cVar4 = FUN_00417430(0,0x10000000);
      if (cVar4 != '\0') {
        *(undefined4 *)(iVar8 + 900) = 0x41700000;
        *(undefined4 *)(iVar8 + 0x380) = 0x41700000;
      }
      uVar18 = FUN_006eef60();
      local_6c = (undefined4 *)(local_24 * DAT_00baad0c);
      uVar23 = 0;
      pTVar22 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
      local_68 = (undefined4 *)((float)local_2c * DAT_00baad0c);
      pTVar21 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
      uVar20 = 0;
      local_60 = *(float *)((int)param_1 + 0x33c) - local_24;
      local_5c = *(float *)((int)param_1 + 0x340) - (float)local_2c;
      uVar18 = FUN_00428b20(0x49,*(undefined4 *)((int)param_1 + 0x2c),&local_60,&local_6c,param_1,
                            *(undefined4 *)((int)param_1 + 0x30),uVar18);
      iVar8 = __RTDynamicCast(uVar18,uVar20,pTVar21,pTVar22,uVar23);
      local_4c = *(undefined4 **)(iVar8 + 0x16c);
      local_54 = (int *)(*(uint *)(iVar8 + 0x168) & 0xfffffffb);
      *(undefined4 **)(iVar8 + 0x16c) = local_4c;
      *(int **)(iVar8 + 0x168) = local_54;
      cVar4 = FUN_00417430(0x80000000,0);
      if (cVar4 != '\0') {
        *(uint *)(iVar8 + 0x168) = (uint)local_54 | 0x80000000;
        *(undefined4 **)(iVar8 + 0x16c) = local_4c;
      }
      cVar4 = FUN_00417430(0,0x10000000);
      if (cVar4 != '\0') {
        *(undefined4 *)(iVar8 + 900) = 0x41700000;
        *(undefined4 *)(iVar8 + 0x380) = 0x41700000;
        ExceptionList = local_1c;
        return;
      }
    }
    else {
      FUN_006d6ba0(0x109,0x3f4ccccd,2,0,0x3f800000);
      FUN_007e6ff0();
      if (*(uint *)((int)param_1 + 0x434) < 0x1c0) {
        iVar8 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x76c +
                        *(uint *)((int)param_1 + 0x434) * 4);
      }
      else {
        iVar8 = 0;
      }
      if ((local_34 == 1) || (iVar8 != 3000)) {
        local_4c = *(undefined4 **)((int)param_1 + 0x30);
        local_54 = (int *)((uint)(local_4c == (undefined4 *)0x1) * 2 + 0x17);
        if (local_34 == 1) {
          local_58 = *(undefined4 *)((int)param_1 + 0x33c);
          local_54 = *(int **)((int)param_1 + 0x340);
          iVar8 = FUN_007f0780(local_58,local_54);
          if (iVar8 == 0) {
            local_34 = 0;
            local_30 = 0.0;
            local_2c = (undefined4 *)0x0;
            do {
              if (local_34 == 0) {
                iVar8 = FUN_006be840();
                ppuVar19 = &local_6c;
                uVar18 = 0x428c0000;
                local_6c = (undefined4 *)
                           ((*(float *)(iVar8 + 0x33c) + *(float *)((int)param_1 + 0x33c)) *
                           DAT_00baa2d0);
                pfVar9 = &local_60;
                local_68 = (undefined4 *)
                           ((*(float *)(iVar8 + 0x340) + *(float *)((int)param_1 + 0x340)) *
                           DAT_00baa2d0);
              }
              else {
                ppuVar19 = (undefined4 **)((int)param_1 + 0x33c);
                uVar18 = 0x42c80000;
                pfVar9 = &local_28;
              }
              pfVar9 = (float *)FUN_00813520(pfVar9,ppuVar19,uVar18,0,0,0);
              local_30 = *pfVar9;
              local_2c = (undefined4 *)pfVar9[1];
              uVar18 = FUN_006eef60();
              uVar23 = 0;
              pTVar22 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
              pTVar21 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
              uVar20 = 0;
              uVar18 = FUN_00428b20(0x55,0,&local_30,&DAT_00c7b640,param_1,0,uVar18);
              iVar10 = __RTDynamicCast(uVar18,uVar20,pTVar21,pTVar22,uVar23);
              local_54 = (int *)(DAT_00c71678 + 0x18300);
              iVar8 = *local_54;
              local_38 = (float)(int)((local_30 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
              iVar13 = (int)(((float)local_2c - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
              if (((((-1 < (int)local_38) && ((int)local_38 < *(int *)(iVar8 + 0xc))) &&
                   (-1 < iVar13)) &&
                  ((iVar13 < *(int *)(iVar8 + 0x10) &&
                   (uVar5 = *(int *)(iVar8 + 0xc) * iVar13 + (int)local_38, uVar5 < 0x1c0)))) &&
                 (*(int *)(iVar8 + 0x76c + uVar5 * 4) < 0x3b7)) {
                *(undefined4 *)(iVar8 + 0x76c + uVar5 * 4) = 900;
              }
              fVar16 = *(float *)(iVar10 + 0x33c);
              fVar15 = *(float *)(iVar10 + 0x350) - DAT_00baa81c;
              *(float *)(iVar10 + 0x334) = fVar16;
              fVar14 = *(float *)(iVar10 + 0x340);
              *(float *)(iVar10 + 0x338) = fVar14;
              fVar17 = *(float *)((int)param_1 + 0x33c);
              *(float *)(iVar10 + 0x33c) = fVar17;
              fVar1 = *(float *)((int)param_1 + 0x340);
              *(uint *)(iVar10 + 0x168) = *(uint *)(iVar10 + 0x168) & 0xfffffffb;
              *(undefined4 *)(iVar10 + 0x16c) = *(undefined4 *)(iVar10 + 0x16c);
              fVar17 = (fVar16 - fVar17) * DAT_00baa0bc;
              local_34 = local_34 + 1;
              *(undefined4 *)(iVar10 + 0xb64) = 6;
              *(float *)(iVar10 + 0x340) = fVar1;
              fVar16 = (fVar14 - fVar1) * DAT_00baa0bc;
              *(undefined4 *)(iVar10 + 0xbbc) = 0xc1000000;
              *(float *)(iVar10 + 0x350) = fVar15;
              *(float *)(iVar10 + 0x360) = fVar17;
              *(float *)(iVar10 + 0x364) = fVar16;
              *(float *)(iVar10 + 0xbb0) = fVar17;
              *(float *)(iVar10 + 0xbb4) = fVar16;
            } while (local_34 < 2);
            ExceptionList = local_1c;
            return;
          }
        }
        else {
          if (local_4c != (undefined4 *)0x1) {
            local_48 = *(undefined4 **)((int)param_1 + 0x33c);
            local_44 = *(float *)((int)param_1 + 0x340);
            iVar8 = FUN_007f0780(local_48,local_44);
            if (iVar8 != 0) {
              ExceptionList = local_1c;
              return;
            }
          }
          uVar18 = FUN_006eef60();
          uVar23 = 0;
          pTVar22 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
          pTVar21 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uVar20 = 0;
          uVar18 = FUN_00428b20(local_54,0,(int)param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar18);
          iVar8 = __RTDynamicCast(uVar18,uVar20,pTVar21,pTVar22,uVar23);
          *(float *)(iVar8 + 0x380) = *(float *)(iVar8 + 0x380) * DAT_00baa380;
          cVar4 = FUN_00417430(0,0x10000000);
          if ((cVar4 != '\0') && (local_4c == (undefined4 *)0x1)) {
            *(undefined4 *)(iVar8 + 0x380) = 0x41200000;
            *(undefined4 *)(iVar8 + 900) = 0x41200000;
          }
          *(uint *)(iVar8 + 0x168) = *(uint *)(iVar8 + 0x168) & 0xfffffffb;
          *(undefined4 *)(iVar8 + 0x16c) = *(undefined4 *)(iVar8 + 0x16c);
        }
      }
    }
  }
  ExceptionList = local_1c;
  return;
}

