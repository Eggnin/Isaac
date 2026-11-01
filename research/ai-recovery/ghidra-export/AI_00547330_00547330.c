/* Local J460 decompiler output.
 * VA: 0x00547330
 * Entry: 00547330
 * Dispatcher: 0x006c2990
 * Types: 309
 * Identities: 309.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00547b60; instructions=505
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=309; identities=309.0.0; dispatcher=0x006c2990;
   end=0x00547b60; instructions=505 */

void __fastcall AI_00547330(int param_1)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  uint3 uVar4;
  undefined *puVar5;
  char cVar6;
  uint uVar7;
  undefined4 uVar8;
  int *piVar9;
  int iVar10;
  int iVar11;
  uint *puVar12;
  int iVar13;
  float fVar14;
  float fVar15;
  undefined4 uVar16;
  TypeDescriptor *pTVar17;
  TypeDescriptor *pTVar18;
  undefined4 uVar19;
  undefined4 local_bc [8];
  int local_9c;
  int iStack_98;
  int local_94;
  char local_90 [4];
  int local_8c;
  float local_84;
  char local_80 [4];
  int local_7c;
  uint local_74;
  float local_70;
  int *local_6c;
  int *local_68;
  uint local_64;
  int *local_60;
  float local_5c;
  float local_58;
  float local_54;
  undefined local_50 [16];
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
  local_14 = -1;
  puStack_18 = &LAB_00af4975;
  local_1c = ExceptionList;
  uVar7 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar10 = *(int *)(DAT_00c71678 + 0x18300);
  iVar13 = (int)((*(float *)(param_1 + 0x33c) - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
  iVar11 = (int)((*(float *)(param_1 + 0x340) - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
  if (((((-1 < iVar13) && (iVar13 < *(int *)(iVar10 + 0xc))) && (-1 < iVar11)) &&
      ((iVar11 < *(int *)(iVar10 + 0x10) &&
       (iVar13 = *(int *)(iVar10 + 0xc) * iVar11 + iVar13, -1 < iVar13)))) &&
     ((iVar13 < 0x1c0 && (*(int *)(iVar10 + 0x76c + iVar13 * 4) < 0x3b7)))) {
    *(undefined4 *)(iVar10 + 0x76c + iVar13 * 4) = 900;
  }
  uVar3 = _UNK_00babf2c;
  uVar19 = _UNK_00babf28;
  uVar16 = _UNK_00babf24;
  uVar8 = _DAT_00babf20;
  iVar10 = *(int *)(param_1 + 0xb64);
  local_24 = uVar7;
  if (iVar10 == 0) {
    if ((undefined4 *)(param_1 + 0x1e4) != local_bc) {
      *(undefined8 *)(param_1 + 0x204) = 0;
      *(undefined4 *)(param_1 + 0x1e4) = uVar8;
      *(undefined4 *)(param_1 + 0x1e8) = uVar16;
      *(undefined4 *)(param_1 + 0x1ec) = uVar19;
      *(undefined4 *)(param_1 + 0x1f0) = uVar3;
      *(undefined4 *)(param_1 + 0x20c) = 0;
      *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
    }
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0x334) = *(undefined4 *)(param_1 + 0x33c);
    *(undefined4 *)(param_1 + 0x338) = *(undefined4 *)(param_1 + 0x340);
    local_9c = iVar10;
    iStack_98 = iVar10;
    local_94 = iVar10;
    puStack_20 = &stack0xfffffffc;
    uVar7 = FUN_006eef60(uVar7);
    *(uint *)(param_1 + 0x16c) = *(uint *)(param_1 + 0x16c) | 0x2000;
    *(undefined4 *)(param_1 + 0x168) = *(undefined4 *)(param_1 + 0x168);
    *(uint *)(param_1 + 0xbc0) = uVar7 % 10 + 1;
    uVar8 = FUN_006eef60();
    uVar19 = 0;
    pTVar18 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
    pTVar17 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar16 = 0;
    uVar8 = FUN_00428b20(1000,0x1a,(undefined4 *)(param_1 + 0x33c),&DAT_00c7b640,param_1,0,uVar8);
    piVar9 = (int *)__RTDynamicCast(uVar8,uVar16,pTVar17,pTVar18,uVar19);
    piVar9[0x117] = 0x1e;
    piVar9[0x118] = 0x1e;
    if (piVar9[0xef] != 0) {
      local_60 = piVar9 + 0xef;
      FUN_004cf210(&local_60);
    }
    piVar9[0xef] = param_1;
    FUN_004cdcf0(piVar9 + 0xef);
    fVar14 = DAT_00c3793c * DAT_00baa630;
    piVar9[0x3a] = (int)(DAT_00c37940 * DAT_00baa630);
    piVar9[0x39] = (int)fVar14;
    (**(code **)(*piVar9 + 0xc))();
  }
  else {
    puVar5 = &stack0xfffffffc;
    if (iVar10 == 3) {
      FUN_0040a380(&DAT_00b612a0,0);
      *(float *)(param_1 + 0x360) = *(float *)(param_1 + 0x334) - *(float *)(param_1 + 0x33c);
      *(float *)(param_1 + 0x364) = *(float *)(param_1 + 0x338) - *(float *)(param_1 + 0x340);
      AI_0041af60(local_90,1000,0x1a,0xffffffff,0,0);
      local_14 = 0;
      local_54 = 0.0;
      if (local_84 != 0.0) {
        do {
          iVar10 = __RTDynamicCast(*(undefined4 *)(local_8c + (int)local_54 * 4),0,
                                   &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                   &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor,0);
          if (*(int *)(iVar10 + 0x3bc) == param_1) {
            iVar13 = *(int *)(iVar10 + 0x45c);
            if (iVar13 < 0x1f) {
              *(undefined4 *)(iVar10 + 0x45c) = 0x1e;
              *(undefined4 *)(iVar10 + 0x460) = 0x1e;
            }
            else {
              fVar14 = ((float)iVar13 - DAT_00baa910) / DAT_00baadd8;
              if (fVar14 <= 0.0) {
                fVar14 = 0.0;
              }
              if (DAT_00baa454 <= fVar14) {
                fVar14 = DAT_00baa454;
              }
              fVar15 = fVar14 * DAT_00baa528 * DAT_00c3793c;
              *(float *)(iVar10 + 0xe8) = fVar14 * DAT_00baa528 * DAT_00c37940;
              *(float *)(iVar10 + 0xe4) = fVar15;
              if (iVar13 == 0x1f) {
                uVar8 = FUN_006eef60(uVar7);
                local_5c = *(float *)(iVar10 + 0x33c);
                local_58 = *(float *)(iVar10 + 0x340);
                piVar9 = (int *)FUN_00428b20(1000,7,&local_5c,&DAT_00c7b640,param_1,0,uVar8);
                iVar10 = FUN_006eef60();
                local_30 = 0;
                local_2c = 0;
                local_28 = 0;
                fVar15 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa280 + DAT_00baa3a4;
                fVar14 = fVar15 * DAT_00c3793c;
                piVar9[0x3a] = (int)(fVar15 * DAT_00c37940);
                piVar9[0x39] = (int)fVar14;
                local_40 = ZEXT416(0);
                local_50._4_4_ = _UNK_00babf24;
                local_50._0_4_ = _DAT_00babf20;
                local_50._8_4_ = _UNK_00babf28;
                local_50._12_4_ = _UNK_00babf2c;
                (**(code **)(*piVar9 + 0x3c))(local_50,0xffffffff,0xff,0,1);
                (**(code **)(*piVar9 + 0xc))();
              }
            }
          }
          local_54 = (float)((int)local_54 + 1);
        } while ((uint)local_54 < (uint)local_84);
      }
      if (*(int *)(param_1 + 0xbc0) < 1) {
        if ((uint)local_84 < 0x100) {
          uVar7 = FUN_006eef60(uVar7);
          local_54 = DAT_00baaa94;
          local_60 = (int *)0x1;
          *(uint *)(param_1 + 0xbc0) = uVar7 % 10 + 1;
          do {
            iVar10 = FUN_006eef60();
            local_70 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                       DAT_00ba9ff4;
            iVar10 = FUN_006eef60();
            fVar14 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
            local_6c = (int *)(fVar14 + fVar14);
            piVar9 = local_6c;
            FUN_0041d520();
            local_68 = piVar9;
            piVar9 = local_6c;
            FUN_0041d540();
            iVar10 = DAT_00c71678;
            local_5c = (float)piVar9 * local_70 * local_70 * local_54 + *(float *)(param_1 + 0x33c);
            local_58 = (float)local_68 * local_70 * local_70 * local_54 +
                       *(float *)(param_1 + 0x340);
            cVar6 = FUN_00813360(&local_5c,0);
            if (cVar6 != '\0') {
              iVar11 = (int)((local_5c - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
              iVar13 = (int)((local_58 - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
              if (((iVar11 < 0) ||
                  (iVar1 = *(int *)(*(int *)(iVar10 + 0x18300) + 0xc), iVar1 <= iVar11)) ||
                 ((iVar13 < 0 || (*(int *)(*(int *)(iVar10 + 0x18300) + 0x10) <= iVar13)))) {
                iVar11 = -1;
              }
              else {
                iVar11 = iVar13 * iVar1 + iVar11;
              }
              iVar10 = FUN_007f0800(iVar11);
              if (iVar10 == 0) {
                local_64 = local_64 & 0xffffff00;
                AI_0041af60(local_80,1000,0x1a,0xffffffff,0,0);
                uVar4 = local_14._1_3_;
                local_14 = CONCAT31(local_14._1_3_,1);
                uVar7 = 0;
                if (local_74 != 0) {
                  do {
                    iVar10 = *(int *)(local_7c + uVar7 * 4);
                    fVar14 = local_5c - *(float *)(iVar10 + 0x33c);
                    fVar15 = local_58 - *(float *)(iVar10 + 0x340);
                    fVar14 = fVar15 * fVar15 + fVar14 * fVar14;
                    if ((fVar14 < DAT_00baac20) &&
                       (local_64 = local_64 & 0xff, *(int *)(iVar10 + 0x3bc) == param_1)) {
                      local_64 = 1;
                    }
                    if (fVar14 < DAT_00baabe0) goto LAB_005479b2;
                    uVar7 = uVar7 + 1;
                  } while (uVar7 < local_74);
                  if ((char)local_64 != '\0') {
                    uVar8 = FUN_006eef60();
                    uVar19 = 0;
                    pTVar18 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
                    pTVar17 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
                    uVar16 = 0;
                    uVar8 = FUN_00428b20(1000,0x1a,&local_5c,&DAT_00c7b640,param_1,0,uVar8);
                    piVar9 = (int *)__RTDynamicCast(uVar8,uVar16,pTVar17,pTVar18,uVar19);
                    piVar9[0x117] = 0x2d;
                    piVar9[0x118] = 0x2d;
                    if (piVar9[0xef] != 0) {
                      local_68 = piVar9 + 0xef;
                      FUN_004cf210(&local_68);
                    }
                    piVar9[0xef] = param_1;
                    FUN_004cdcf0(piVar9 + 0xef);
                    fVar14 = DAT_00c37940 * DAT_00baa630;
                    piVar9[0x39] = (int)(DAT_00c3793c * DAT_00baa630);
                    piVar9[0x3a] = (int)fVar14;
                    (**(code **)(*piVar9 + 0xc))();
                    piVar9[0x39] = DAT_00c7b640;
                    piVar9[0x3a] = DAT_00c7b644;
                    if (local_80[0] == '\0') {
                      local_14 = CONCAT31(local_14._1_3_,2);
                      FUN_00a648b0(0,0);
                    }
                    break;
                  }
                }
LAB_005479b2:
                local_14 = (uint)local_14._1_3_ << 8;
                if (local_80[0] == '\0') {
                  local_14._0_1_ = 3;
                  local_14._1_3_ = uVar4;
                  FUN_00a648b0(0,0);
                  local_14 = (uint)local_14._1_3_ << 8;
                }
              }
            }
            local_54 = local_54 + DAT_00baa9d0;
            local_60 = (int *)((int)local_60 + 1);
          } while ((int)local_60 < 0xb);
        }
      }
      else {
        *(int *)(param_1 + 0xbc0) =
             *(int *)(param_1 + 0xbc0) -
             ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0));
      }
      puVar5 = puStack_20;
      if (local_90[0] == '\0') {
        if (DAT_00c7de78 == 0) {
          puVar12 = &DAT_00c7f618;
        }
        else {
          puVar12 = (uint *)(DAT_00c7de78 + 0x30);
        }
        if (local_8c != 0) {
          uVar2 = *(uint *)(local_8c + -4);
          uVar7 = *puVar12;
          *puVar12 = *puVar12 - uVar2;
          puVar12[1] = puVar12[1] - (uint)(uVar7 < uVar2);
          free((uint *)(local_8c + -4));
          puVar5 = puStack_20;
        }
      }
    }
    puStack_20 = puVar5;
    *(undefined4 *)(param_1 + 0x36c) = 0x3f4ccccd;
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

