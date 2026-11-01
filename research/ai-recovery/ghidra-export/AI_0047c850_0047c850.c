/* Local J460 decompiler output.
 * VA: 0x0047c850
 * Entry: 0047c850
 * Dispatcher: 0x006c2990
 * Types: 36
 * Identities: 36.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0047d8a0; instructions=936
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=36; identities=36.0.0; dispatcher=0x006c2990;
   end=0x0047d8a0; instructions=936 */

void __fastcall AI_0047c850(int *param_1)

{
  byte bVar1;
  uint uVar2;
  char cVar3;
  int iVar4;
  int *piVar5;
  int iVar6;
  byte **ppbVar7;
  undefined4 uVar8;
  int iVar9;
  byte *pbVar10;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  uint *puVar11;
  float fVar12;
  uint uVar13;
  bool bVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  undefined4 uVar19;
  float *pfVar20;
  TypeDescriptor *pTVar21;
  TypeDescriptor *pTVar22;
  undefined4 uVar23;
  undefined4 local_164;
  undefined4 local_160;
  undefined4 local_15c;
  undefined4 local_158;
  undefined4 local_154;
  undefined4 local_150;
  undefined4 local_14c;
  undefined4 local_148;
  undefined4 local_144;
  undefined4 local_140;
  char local_13c [4];
  int local_138;
  uint local_130;
  undefined4 local_12c;
  float local_128;
  float local_124;
  float local_120;
  undefined4 local_11c;
  float local_118;
  float local_114;
  float local_110;
  float local_10c;
  float local_108;
  float local_104;
  int *local_100;
  float local_fc;
  float local_f8;
  float local_f4;
  float local_f0;
  char local_e9;
  float local_e8;
  int *local_e4;
  undefined local_e0 [172];
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
  puStack_18 = &LAB_00af2b68;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_100 = param_1;
  local_e8 = (float)FUN_006be840(local_24);
  if (param_1[0x2d9] == 0) {
    iVar4 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4);
    if ((((iVar4 == 0) || (iVar4 = *(int *)(iVar4 + 0x10), iVar4 == 0)) ||
        (*(int *)(iVar4 + 0x48) == 1)) && (-1 < param_1[0xcb])) {
      local_fc = (float)param_1[0xcf];
      local_f8 = 400.0;
      local_e8 = local_fc;
      if (*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 != 0) {
        uVar13 = 0;
        do {
          if (uVar13 == 0) {
            FUN_00417870(0);
            pfVar20 = &local_fc;
          }
          else {
            FUN_00417870(uVar13);
            iVar4 = FUN_006eef60();
            fVar15 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
            local_e4 = (int *)(fVar15 + fVar15);
            piVar5 = local_e4;
            FUN_0041d540();
            local_f4 = (float)piVar5 * DAT_00baa87c + local_e8;
            piVar5 = local_e4;
            FUN_0041d520();
            pfVar20 = &local_f4;
            local_f0 = (float)piVar5 * DAT_00baa87c + DAT_00baab54;
          }
          FUN_007cd950(pfVar20,0,0);
          uVar13 = uVar13 + 1;
          param_1 = local_100;
        } while (uVar13 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8)
                                >> 2));
      }
    }
    param_1[0xd0] = (int)((float)param_1[0xd0] + DAT_00baa8a0);
    param_1[0xcd] = param_1[0xcf];
    param_1[0xce] = param_1[0xd0];
    param_1[0x2d9] = 3;
    goto LAB_0047d87a;
  }
  param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
  fVar15 = (float)param_1[0xdb] * DAT_00baa3a4;
  param_1[0xd8] = (int)((float)param_1[0xcd] - (float)param_1[0xcf]);
  param_1[0xdb] = (int)fVar15;
  FUN_006d0ca0(local_13c,param_1[10],0,0);
  local_14 = 0;
  local_e4 = (int *)0x0;
  if (local_130 != 0) {
    do {
      piVar5 = (int *)__RTDynamicCast(*(undefined4 *)(local_138 + (int)local_e4 * 4),0,
                                      &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                      &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
      if ((piVar5 != (int *)0x0) && (piVar5 != param_1)) {
        if (piVar5[10] == 0x1e) {
          if ((*(char *)((int)param_1 + 0x173) != '\0') && ((param_1[0x5b] & 0x10000000U) != 0)) {
            local_154 = DAT_00c7b640;
            local_14c = DAT_00c7b640;
            local_150 = DAT_00c7b644;
            local_148 = DAT_00c7b644;
            local_164 = 0;
            local_160 = 0;
            local_15c = 0;
            local_158 = 0;
            local_144 = 0;
            local_140 = 0;
            (**(code **)(*piVar5 + 0x24))(&local_164);
          }
        }
        else {
          local_f8 = (float)piVar5[0xd0] - (float)param_1[0xd0];
          local_100 = (int *)((float)piVar5[0xcf] - (float)param_1[0xcf]);
          fVar15 = local_f8 * local_f8 + (float)local_100 * (float)local_100;
          FUN_00435a50();
          if ((DAT_00baa06c < fVar15) && (fVar15 < DAT_00baa9a0)) {
            fVar18 = (float)piVar5[0xdb];
            fVar15 = ((DAT_00baa9a0 - fVar15) * DAT_00baa0a0) / fVar15;
            if (NAN(fVar18) == (fVar18 == 0.0)) {
              piVar5[0xd9] = (int)(((float)piVar5[0xe7] * local_f8 * fVar15) / fVar18 +
                                  (float)piVar5[0xd9]);
              piVar5[0xd8] = (int)(((float)piVar5[0xe7] * (float)local_100 * fVar15) / fVar18 +
                                  (float)piVar5[0xd8]);
            }
          }
        }
      }
      local_e4 = (int *)((int)local_e4 + 1);
    } while (local_e4 < local_130);
  }
  if (param_1[0x2d9] == 3) {
    if (param_1[0x104] == 0) {
      uVar13 = FUN_006eef60();
      iVar4 = (uVar13 & 1) * 2 + 1;
      if (0.0 < (float)param_1[0x2ec]) {
        iVar4 = 2;
        param_1[0x2ec] = 0;
      }
      FUN_0041e420(&DAT_00c7f718,0x20,"Idle%d",iVar4);
      cVar3 = FUN_0040a5d0(&DAT_00c7f718,1);
      if (cVar3 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
      param_1[0x104] = param_1[0x104] + 1;
    }
    else if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      iVar4 = 0;
      local_e4 = (int *)0x0;
      if (((param_1[0x5b] & 0x10000000U) == 0) ||
         ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) {
        uVar13 = FUN_006eef60();
        if ((uVar13 % 3 == 0) || (*(float *)((int)local_e8 + 0x340) <= DAT_00baaa94)) {
LAB_0047ce36:
          iVar6 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0) +
                  *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4);
          iVar9 = 0;
          if (0 < iVar6) {
            iVar9 = iVar6;
          }
          if (iVar9 < 0xe) {
LAB_0047ce56:
            uVar13 = FUN_006eef60();
            local_2c = 1.401298e-45;
            local_30 = 3;
            local_28 = 8.407791e-45;
            iVar4 = (&local_30)[uVar13 % 3];
            local_e4 = (int *)iVar4;
          }
LAB_0047ce7f:
          param_1[0x104] = 0;
          if (iVar4 < 1) goto LAB_0047d697;
        }
        else {
          iVar6 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0) +
                  *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4);
          iVar9 = 0;
          if (0 < iVar6) {
            iVar9 = iVar6;
          }
          if (7 < iVar9) goto LAB_0047ce36;
          if (param_1[0xc] == 1) goto LAB_0047ce56;
          fVar15 = (float)param_1[0xd0] - *(float *)((int)local_e8 + 0x340);
          fVar18 = (float)param_1[0xcf] - *(float *)((int)local_e8 + 0x33c);
          if (((float)((uint)fVar15 & DAT_00bacb40) < (float)((uint)fVar18 & DAT_00bacb40)) ||
             (0.0 < fVar15)) {
            if (0.0 < fVar18) {
              iVar4 = 4;
              param_1[0x104] = 0;
              local_e4 = (int *)0x4;
              goto LAB_0047ce91;
            }
            iVar4 = 5;
            local_e4 = (int *)iVar4;
            goto LAB_0047ce7f;
          }
          iVar4 = 2;
          param_1[0x104] = 0;
          local_e4 = (int *)0x2;
        }
LAB_0047ce91:
        param_1[0x2d9] = 8;
        FUN_0041e420(&DAT_00c7f718,0x20,"Attack%d",iVar4);
        ppbVar7 = (byte **)param_1[0x1f];
        if (ppbVar7 == (byte **)0x0) {
LAB_0047cf06:
          cVar3 = FUN_0040a5d0(&DAT_00c7f718,1);
          if (cVar3 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x23) = 1;
            iVar4 = (int)local_e4;
          }
        }
        else {
          if (&DAT_0000000f < ppbVar7[5]) {
            ppbVar7 = (byte **)*ppbVar7;
          }
          pbVar10 = &DAT_00c7f718;
          do {
            bVar1 = *(byte *)ppbVar7;
            bVar14 = bVar1 < *pbVar10;
            if (bVar1 != *pbVar10) {
LAB_0047cee6:
              uVar13 = -(uint)bVar14 | 1;
              goto LAB_0047ceeb;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar7 + 1);
            bVar14 = bVar1 < pbVar10[1];
            if (bVar1 != pbVar10[1]) goto LAB_0047cee6;
            ppbVar7 = (byte **)((int)ppbVar7 + 2);
            pbVar10 = pbVar10 + 2;
          } while (bVar1 != 0);
          uVar13 = 0;
LAB_0047ceeb:
          if ((uVar13 != 0) ||
             ((*(char *)(param_1[0x1f] + 0x34) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
          goto LAB_0047cf06;
        }
        param_1[0x2f0] = iVar4;
        param_1[0x2ec] = 0;
      }
      else {
        param_1[0x104] = 0;
      }
    }
  }
  else if (param_1[0x2d9] == 8) {
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      param_1[0x104] = 0;
      param_1[0x2d9] = 3;
    }
    else {
      cVar3 = FUN_0040add0("Shoot");
      if (cVar3 != '\0') {
        AI_0043ef30();
        iVar4 = param_1[0x2f0];
        if (iVar4 == 3) {
          FUN_006d6ba0(0x109,0x3f333333,2,0,0x3f800000);
          FUN_006d6ba0(9,0x3f800000,2,0,0x3f800000);
          if (((param_1[0x5b] & 0x10000000U) == 0) ||
             (uVar13 = FUN_006ac7e0(0xe,0,param_1[0x5b] & 0x10000000U,0), uVar13 < 3)) {
            uVar8 = FUN_006eef60();
            local_104 = (float)param_1[0xcf] + DAT_00baa950;
            local_100 = (int *)((float)param_1[0xd0] - DAT_00baa8a0);
            local_f4 = 10.0;
            local_f0 = 0.0;
            FUN_00428b20(0xe,0,&local_104,&local_f4,param_1,0,uVar8);
          }
        }
        else if (iVar4 == 1) {
          FUN_006d6ba0(0x109,0x3f800000,2,0,0x3f800000);
          FUN_006d6ba0(0xd,0x3f800000,2,0,0x3f800000);
          local_e4 = (int *)0x2;
          cVar3 = FUN_00417430(0,0x10000000);
          if (cVar3 != '\0') {
            iVar4 = FUN_006ac7e0(0x12,0,extraout_ECX,0);
            local_e4 = (int *)2;
            if (3 - iVar4 < 3) {
              local_e4 = (int *)(3 - iVar4);
            }
          }
          iVar4 = 0;
          if (0 < (int)local_e4) {
            local_f4 = 0.0;
            local_f0 = -20.0;
            do {
              local_e8 = DAT_00baad50;
              if (iVar4 == 0) {
                local_e8 = DAT_00baa454;
              }
              uVar8 = FUN_006eef60();
              local_108 = (float)param_1[0xd0] - DAT_00baa968;
              local_10c = local_e8 * DAT_00baa904 + (float)param_1[0xcf];
              uVar23 = 0;
              pTVar22 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
              pTVar21 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
              uVar19 = 0;
              uVar8 = FUN_00428b20(0x12,0,&local_10c,&local_f4,param_1,0,uVar8);
              iVar9 = __RTDynamicCast(uVar8,uVar19,pTVar21,pTVar22,uVar23);
              iVar4 = iVar4 + 1;
              fVar15 = *(float *)(iVar9 + 0x380) - DAT_00baa630;
              *(undefined *)(iVar9 + 0x174) = 1;
              *(float *)(iVar9 + 0x380) = fVar15;
            } while (iVar4 < (int)local_e4);
          }
        }
        else if (iVar4 == 6) {
          FUN_006d6ba0(0x109,0x3f99999a,2,0,0x3f800000);
          FUN_006d0c60(local_34,0x1e,0xffffffff);
          iVar4 = 2;
          local_14 = CONCAT31(local_14._1_3_,1);
          local_e4 = (int *)0x2;
          cVar3 = FUN_00417430(0,0x10000000);
          if (cVar3 != '\0') {
            iVar9 = FUN_006ac7e0(0x1e,0,extraout_ECX_00,0);
            iVar9 = 3 - iVar9;
            local_e4 = (int *)iVar4;
            if (iVar9 < 3) {
              iVar4 = iVar9;
              local_e4 = (int *)iVar9;
            }
          }
          local_e8 = 0.0;
          if (0 < iVar4) {
            do {
              fVar12 = 0.0;
              local_e9 = '\x01';
              fVar15 = (float)(&DAT_00c5c5bc)[(int)local_e8 * 2] + (float)param_1[0xcf];
              fVar18 = (float)(&DAT_00c5c5c0)[(int)local_e8 * 2] + (float)param_1[0xd0];
              iVar4 = local_30;
              local_fc = fVar15;
              local_f8 = fVar18;
              if (local_28 == 0.0) {
LAB_0047d335:
                uVar8 = FUN_006eef60();
                FUN_00428b20(0x1e,0,&local_fc,&DAT_00c7b640,param_1,0,uVar8);
              }
              else {
                do {
                  iVar9 = *(int *)(iVar4 + (int)fVar12 * 4);
                  fVar16 = fVar15 - *(float *)(iVar9 + 0x33c);
                  fVar17 = fVar18 - *(float *)(iVar9 + 0x340);
                  if (fVar17 * fVar17 + fVar16 * fVar16 < DAT_00baab54) {
                    local_e9 = '\0';
                    *(undefined4 *)(iVar9 + 0x380) = *(undefined4 *)(iVar9 + 900);
                    uVar8 = FUN_006eef60();
                    FUN_00428b20(1000,0xf,&local_fc,&DAT_00c7b640,0,0,uVar8);
                    iVar4 = local_30;
                    fVar15 = local_fc;
                    fVar18 = local_f8;
                  }
                  fVar12 = (float)((int)fVar12 + 1);
                } while ((uint)fVar12 < (uint)local_28);
                if (local_e9 != '\0') goto LAB_0047d335;
              }
              local_e8 = (float)((int)local_e8 + 1);
            } while ((int)local_e8 < (int)local_e4);
          }
          uVar13 = local_14;
          local_14 = local_14 & 0xffffff00;
          if (local_34[0] == '\0') {
            local_14._1_3_ = SUB43(uVar13,1);
            local_14._0_1_ = 2;
            FUN_00a648b0(0,0);
            local_14 = (uint)local_14._1_3_ << 8;
          }
        }
        else if (iVar4 == 2) {
          FUN_006d6ba0(0xc,0x3f800000,2,0,0x3f800000);
          iVar4 = FUN_006eef60();
          local_110 = (float)param_1[0xd0] - DAT_00baa87c;
          local_114 = ((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa8d0 - DAT_00baa854) + (float)param_1[0xcf];
          iVar4 = FUN_006eef60();
          local_f0 = 10.0;
          local_f4 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa6fc - DAT_00baa528;
          FUN_006cb2e0(&local_114,&local_f4,5,local_e0);
        }
        else if (iVar4 == 4) {
          FUN_006d6ba0(0xb,0x3f800000,2,0,0x3f800000);
          iVar4 = FUN_006eef60();
          local_124 = (float)param_1[0xcf] + DAT_00baa83c;
          local_120 = (DAT_00baade4 -
                      ((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa8d0 - DAT_00baa854)) + (float)param_1[0xd0];
          iVar4 = FUN_006eef60();
          local_11c = 0xc1200000;
          local_118 = ((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa6fc + DAT_00baa454) - DAT_00baa528;
          FUN_006cb2e0(&local_124,&local_11c,5,local_e0);
        }
        else if (iVar4 == 5) {
          FUN_006d6ba0(0xb,0x3f800000,2,0,0x3f800000);
          iVar4 = FUN_006eef60();
          local_2c = (float)param_1[0xcf] - DAT_00baa83c;
          local_28 = (DAT_00baade4 -
                     ((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                      DAT_00ba9ff4 * DAT_00baa8d0 - DAT_00baa854)) + (float)param_1[0xd0];
          iVar4 = FUN_006eef60();
          local_12c = 0x41200000;
          local_128 = ((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa6fc + DAT_00baa454) - DAT_00baa528;
          FUN_006cb2e0(&local_2c,&local_12c,5,local_e0);
        }
      }
    }
  }
LAB_0047d697:
  local_e4 = param_1 + 0x1e;
  if (param_1[0x1f] != 0) {
    cVar3 = FUN_0040add0("FaceAttackAppear");
    if (cVar3 != '\0') {
      local_e8 = 1.315819e-42;
      FUN_00956780();
      FUN_0092dc30(local_e8,0x3f800000,2,0,0x3f800000,0);
      local_e4 = param_1 + 0x1e;
    }
    if (param_1[0x1f] != 0) {
      cVar3 = FUN_0040add0("FaceAttackHide");
      if (cVar3 != '\0') {
        local_e8 = 1.317221e-42;
        FUN_00956780();
        FUN_0092dc30(local_e8,0x3f800000,2,0,0x3f800000,0);
      }
      if ((param_1[0x1f] != 0) && (cVar3 = FUN_0040add0("SmileAppear"), cVar3 != '\0')) {
        local_e8 = 1.318622e-42;
        FUN_00956780();
        FUN_0092dc30(local_e8,0x3f800000,2,0,0x3f800000,0);
      }
    }
  }
  if ((param_1[0x1f] != 0) && (cVar3 = FUN_0040add0("SmileHide"), cVar3 != '\0')) {
    local_e8 = 1.320023e-42;
    FUN_00956780();
    FUN_0092dc30(local_e8,0x3f800000,2,0,0x3f800000,0);
  }
  if (local_13c[0] == '\0') {
    if (DAT_00c7de78 == 0) {
      puVar11 = &DAT_00c7f618;
    }
    else {
      puVar11 = (uint *)(DAT_00c7de78 + 0x30);
    }
    if (local_138 != 0) {
      uVar2 = *(uint *)(local_138 + -4);
      uVar13 = *puVar11;
      *puVar11 = *puVar11 - uVar2;
      puVar11[1] = puVar11[1] - (uint)(uVar13 < uVar2);
      free((void *)(local_138 + -4));
    }
  }
LAB_0047d87a:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

