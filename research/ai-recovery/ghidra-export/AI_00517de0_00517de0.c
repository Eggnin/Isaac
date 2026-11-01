/* Local J460 decompiler output.
 * VA: 0x00517de0
 * Entry: 00517de0
 * Dispatcher: 0x006c2990
 * Types: 35
 * Identities: 35.0.0,35.1.0,35.10.0,35.2.0,35.3.0
 * Evidence: dispatcher=0x006c2990; end=0x00518e20; instructions=940
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=35; identities=35.0.0,35.1.0,35.10.0,35.2.0,35.3.0;
   dispatcher=0x006c2990; end=0x00518e20; instructions=940 */

void __fastcall AI_00517de0(int *param_1)

{
  char cVar1;
  undefined4 uVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  float *pfVar6;
  float fVar7;
  uint uVar8;
  undefined auVar9 [16];
  float fVar10;
  undefined4 uVar11;
  TypeDescriptor *pTVar12;
  TypeDescriptor *pTVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  undefined4 local_11c;
  float local_118;
  float local_114;
  float local_110;
  undefined4 local_10c;
  float local_108;
  int *local_104 [44];
  ulonglong local_54;
  undefined4 local_4c;
  char local_48;
  undefined local_47;
  undefined4 local_44;
  uint local_40;
  ulonglong local_3c;
  undefined4 local_34;
  char local_30;
  undefined local_2f;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af43ad;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar4 = param_1[0xb];
  if (param_1[0x2d9] == 0) {
    if ((iVar4 == 0) || (puStack_20 = &stack0xfffffffc, iVar4 == 2)) {
      puStack_20 = &stack0xfffffffc;
      uVar2 = FUN_006eef60(local_24);
      uVar14 = 0;
      pTVar13 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
      pTVar12 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
      uVar11 = 0;
      uVar2 = FUN_00428b20(0x23,param_1[0xb] + 1,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar2);
      piVar3 = (int *)__RTDynamicCast(uVar2,uVar11,pTVar12,pTVar13,uVar14);
      if (piVar3[0xf0] != 0) {
        local_104[0] = piVar3 + 0xf0;
        FUN_004cf210(local_104);
      }
      piVar3[0xf0] = (int)param_1;
      FUN_004cdcf0(piVar3 + 0xf0);
      piVar3[0x62] = 2;
      piVar3[0x61] = 3;
      if (param_1[0xef] != 0) {
        local_104[0] = param_1 + 0xef;
        FUN_004cf210(local_104);
      }
      param_1[0xef] = (int)piVar3;
      FUN_004cdcf0(param_1 + 0xef);
      piVar3[0xd6] = 0x41200000;
      (**(code **)(*piVar3 + 0xc))();
      local_110 = 0.0;
      do {
        uVar2 = FUN_006eef60();
        uVar14 = 0;
        pTVar13 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
        pTVar12 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uVar11 = 0;
        uVar2 = FUN_00428b20(0x23,10,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar2);
        iVar4 = __RTDynamicCast(uVar2,uVar11,pTVar12,pTVar13,uVar14);
        if (*(int *)(iVar4 + 0x3bc) != 0) {
          local_104[0] = (int *)(iVar4 + 0x3bc);
          FUN_004cf210(local_104);
        }
        *(int **)(iVar4 + 0x3bc) = param_1;
        FUN_004cdcf0((int **)(iVar4 + 0x3bc));
        *(undefined4 *)(iVar4 + 0x188) = 0;
        fVar7 = (float)((int)local_110 + 1);
        *(undefined4 *)(iVar4 + 0x15c) = 0;
        *(undefined4 *)(iVar4 + 0x354) = 2000;
        *(uint *)(iVar4 + 0x168) = *(uint *)(iVar4 + 0x168) & 0xfffffffb | 0x40000;
        *(undefined4 *)(iVar4 + 0x16c) = *(undefined4 *)(iVar4 + 0x16c);
        *(undefined *)(iVar4 + 0x171) = 0;
        *(float *)(iVar4 + 0xbb0) = (float)(int)local_110;
        local_110 = fVar7;
      } while ((int)fVar7 < 8);
    }
    param_1[0x2d9] = 4;
    goto LAB_00518df7;
  }
  if ((iVar4 == 1) || (iVar4 == 3)) {
    uVar8 = FUN_006eef60(local_24);
    if (uVar8 % 10 == 0) {
      iVar4 = FUN_006eef60();
      FUN_006b64d0((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa2d0 + DAT_00baa198);
    }
    if ((*(char *)((int)param_1 + 0x173) == '\0') &&
       ((uVar8 = FUN_006eef60(), uVar8 % 1000 != 0 ||
        ((iVar4 = FUN_004567e0(), iVar4 != 0 &&
         (iVar4 = FUN_004567e0(), *(int *)(iVar4 + 0xf1c) != -1)))))) {
      if (param_1[0xf0] != 0) {
        fVar7 = (float)param_1[0xe9];
        fVar10 = (float)param_1[0xe8];
        iVar4 = FUN_004567e0();
        iVar5 = *(int *)(iVar4 + 0xba0) - ((int)fVar7 - (int)fVar10);
        iVar4 = -0x1e;
        if (-0x1e < iVar5) {
          iVar4 = iVar5;
        }
        iVar5 = FUN_004567e0();
        *(int *)(iVar5 + 0xba0) = iVar4;
        iVar4 = FUN_004567e0();
        if (*(int *)(iVar4 + 0xb64) != 4) {
          iVar4 = FUN_004567e0();
          if (*(int *)(iVar4 + 0xb64) == 8) {
            iVar4 = FUN_004567e0();
            local_114 = *(float *)(iVar4 + 0x340) - (float)param_1[0xd0];
            local_108 = *(float *)(iVar4 + 0x33c) - (float)param_1[0xcf];
            local_104[0] = (int *)(local_114 * local_114 + local_108 * local_108);
            FUN_00435a50();
            if ((DAT_00baa784 <= (float)local_104[0]) ||
               (iVar4 = FUN_004567e0(), 0xe < *(int *)(iVar4 + 0xba0))) {
              if (0.0 < (float)local_104[0]) {
                iVar4 = FUN_004567e0();
                fVar7 = (float)param_1[0xdb];
                fVar10 = ((float)*(int *)(iVar4 + 0xba0) - DAT_00baae14) / DAT_00baa910;
                auVar9 = ZEXT416((uint)fVar10);
                if (fVar10 <= 0.0) {
                  auVar9 = ZEXT816(0) << 0x20;
                }
                if (DAT_00baa454 <= auVar9._0_4_) {
                  auVar9._0_4_ = DAT_00baa454;
                }
                fVar10 = (DAT_00baa500 - auVar9._0_4_ * DAT_00baa354) / (float)local_104[0];
                if (NAN(fVar7) == (fVar7 == 0.0)) {
                  param_1[0xd9] =
                       (int)(((float)param_1[0xe7] * fVar10 * local_114) / fVar7 +
                            (float)param_1[0xd9]);
                  param_1[0xd8] =
                       (int)(((float)param_1[0xe7] * fVar10 * local_108) / fVar7 +
                            (float)param_1[0xd8]);
                }
                iVar4 = FUN_004567e0();
                param_1[0xdb] =
                     (int)(((float)*(int *)(iVar4 + 0xba0) * _DAT_00baa03c + DAT_00baa3e0) *
                          (float)param_1[0xdb]);
              }
            }
            else {
              iVar4 = FUN_004567e0();
              *(undefined4 *)(iVar4 + 0xb64) = 4;
            }
          }
          goto LAB_00518df7;
        }
        iVar4 = FUN_004567e0();
        if (*(int *)(iVar4 + 0xf1c) == -1) {
          cVar1 = FUN_006ac710(4,0);
          if ((cVar1 == '\0') || ((param_1[0x5a] & 0x1000a00U) != 0)) goto LAB_00518df7;
          iVar4 = FUN_006be840();
          local_108 = *(float *)(iVar4 + 0x33c);
          local_114 = *(float *)(iVar4 + 0x340);
          iVar4 = FUN_006be840();
          fVar7 = (*(float *)(iVar4 + 0x360) * DAT_00baa6fc + local_108) - (float)param_1[0xcf];
          local_114 = (*(float *)(iVar4 + 0x364) * DAT_00baa6fc + local_114) - (float)param_1[0xd0];
          local_108 = local_114 * local_114 + fVar7 * fVar7;
          if ((DAT_00baac44 <= local_108) ||
             (((NAN(fVar7) || NAN(DAT_00c7b640)) != (fVar7 == DAT_00c7b640) &&
              ((NAN(local_114) || NAN(DAT_00c7b644)) != (local_114 == DAT_00c7b644)))))
          goto LAB_00518df7;
          iVar4 = FUN_006be840();
          local_11c = *(undefined4 *)(iVar4 + 0x33c);
          local_118 = *(float *)(iVar4 + 0x340);
          cVar1 = FUN_007f0df0(param_1 + 0xcf,&local_11c,2,0,0,0,0);
          if (cVar1 == '\0') goto LAB_00518df7;
          FUN_006d6ba0(0xe2,0x3f800000,2,0,0x3f800000);
          fVar10 = local_108;
          FUN_00435a50();
          fVar10 = DAT_00baa848 / fVar10;
          param_1[0xd9] = (int)((fVar10 * local_114) / (float)param_1[0xdb]);
          param_1[0xd8] = (int)((fVar10 * fVar7) / (float)param_1[0xdb]);
        }
        else {
          if ((param_1[0x5a] & 0x1000a00U) != 0) goto LAB_00518df7;
          FUN_004567e0();
          FUN_006d9050(1);
          FUN_004567e0();
          cVar1 = FUN_00a10630(&DAT_00c7b640);
          if (cVar1 == '\0') goto LAB_00518df7;
          FUN_006d6ba0(0xe2,0x3f800000,2,0,0x3f800000);
          FUN_004567e0();
          pfVar6 = (float *)FUN_00a10100(&local_10c,0x41600000);
          fVar7 = pfVar6[1];
          param_1[0xd8] = (int)(*pfVar6 / (float)param_1[0xdb]);
          param_1[0xd9] = (int)(fVar7 / (float)param_1[0xdb]);
        }
        iVar4 = FUN_004567e0();
        *(undefined4 *)(iVar4 + 0xba0) = 0x1e;
        iVar4 = FUN_004567e0();
        *(undefined4 *)(iVar4 + 0xb64) = 8;
        goto LAB_00518df7;
      }
    }
    else if (param_1[0xf0] != 0) {
      iVar4 = FUN_004567e0();
      FUN_006c0f30(0xb,0,0,param_1[0x319]);
      *(undefined4 *)(iVar4 + 0x380) = *(undefined4 *)(iVar4 + 900);
      *(undefined4 *)(iVar4 + 0x188) = 4;
      if (param_1[0xb] == 3) {
        iVar4 = FUN_0040b220(0);
        *(undefined4 *)(iVar4 + 0x48) = 0x3f8a0a0b;
        *(undefined4 *)(iVar4 + 0x4c) = 0x3f61e1e3;
        *(undefined4 *)(iVar4 + 0x50) = 0x3f61e1e3;
      }
      else {
        iVar4 = FUN_0040b220(0);
        *(undefined4 *)(iVar4 + 0x48) = 0x3fb1b1b2;
        *(undefined4 *)(iVar4 + 0x4c) = 0x3fb1b1b2;
        *(undefined4 *)(iVar4 + 0x50) = 0x3fb1b1b2;
      }
      *(undefined4 *)(iVar4 + 0x54) = 0x3f800000;
    }
    if ((*(char *)((int)param_1 + 0x173) != '\0') && (param_1[0xb] == 3)) {
      uVar2 = AI_0043ef30();
      local_10c = 0x41000000;
      local_108 = 0.0;
      FUN_006cb2e0(param_1 + 0xcf,&local_10c,6,uVar2);
      FUN_006d6ba0(0x92,0x3f800000,2,0,0x3f800000);
    }
    param_1[0x5a] = param_1[0x5a] & 0xfffbffff;
    param_1[0x5b] = param_1[0x5b];
    FUN_006c0f30(0x1a,param_1[0xb] != 1,0,param_1[0x319]);
    param_1[0x62] = 4;
    param_1[0xe0] = param_1[0xe1];
    goto LAB_00518df7;
  }
  if (iVar4 == 10) {
    iVar4 = param_1[0xef];
    if (((iVar4 == 0) || (*(int *)(iVar4 + 0x28) != 0x23)) || (*(int *)(iVar4 + 0x3bc) == 0)) {
      puStack_20 = &stack0xfffffffc;
      (**(code **)(*param_1 + 0x28))();
    }
    else {
      puStack_20 = &stack0xfffffffc;
      iVar4 = FUN_00447770();
      if (*(int *)(iVar4 + 0xb64) == 8) {
        iVar4 = FUN_00447770();
        if (*(int *)(iVar4 + 0x3bc) != 0) {
          *(undefined *)((int)param_1 + 0x171) = 1;
          iVar4 = FUN_00447770();
          FUN_00447770();
          iVar5 = FUN_00447770();
          local_118 = *(float *)(iVar4 + 0x33c) - *(float *)(iVar5 + 0x33c);
          local_104[0] = (int *)(*(float *)(iVar4 + 0x340) - *(float *)(iVar5 + 0x340));
          local_110 = (DAT_00baa7b8 - (float)param_1[0x2ec]) * DAT_00baa13c;
          iVar4 = FUN_00447770();
          fVar10 = local_118 * local_118;
          param_1[0xcf] = (int)(*(float *)(iVar4 + 0x33c) - local_110 * local_118);
          local_118 = (float)((uint)((float)param_1[0x2ec] - DAT_00baa75c) & DAT_00bacb40);
          fVar10 = (float)local_104[0] * (float)local_104[0] + fVar10;
          FUN_00435a50();
          fVar7 = DAT_00baa9d0 - fVar10;
          if (DAT_00baa9d0 - fVar10 <= DAT_00ba9fe4) {
            fVar7 = DAT_00ba9fe4;
          }
          local_118 = (fVar7 * (DAT_00baa85c - local_118 * local_118)) / DAT_00baa9d0;
          iVar4 = FUN_00447770();
          param_1[0xd0] =
               (int)(local_118 +
                     ((*(float *)(iVar4 + 0x340) - local_110 * (float)local_104[0]) - DAT_00baa8dc)
                     + (float)param_1[0x2ec] + DAT_00baa784);
        }
      }
      else {
        *(undefined *)((int)param_1 + 0x171) = 0;
      }
    }
    goto LAB_00518df7;
  }
  if ((iVar4 != 0) && (puStack_20 = &stack0xfffffffc, iVar4 != 2)) goto LAB_00518df7;
  if (param_1[0x2d9] == 4) {
    local_4c = s_MrMawBodyVert_00b60db4._8_4_;
    local_40 = 0xf;
    local_44 = 0xd;
    local_54 = s_MrMawBodyVert_00b60db4._0_8_;
    local_48 = s_MrMawBodyVert_00b60db4[0xc];
    local_47 = 0;
    local_34 = s_MrMawBodyHori_00b60df8._8_4_;
    local_28 = 0xf;
    local_2c = 0xd;
    local_3c = s_MrMawBodyHori_00b60df8._0_8_;
    local_30 = s_MrMawBodyHori_00b60df8[0xc];
    local_2f = 0;
    local_14._0_1_ = 1;
    local_14._1_3_ = 0;
    puStack_20 = &stack0xfffffffc;
    FUN_006c1330(&local_3c,&local_54,0x3dcccccd);
    local_14 = (uint)local_14._1_3_ << 8;
    if (0xf < local_28) {
      uVar8 = local_28 + 1;
      iVar4 = (int)local_3c;
      if (0xfff < uVar8) {
        iVar4 = *(int *)((int)local_3c + -4);
        uVar8 = local_28 + 0x24;
        if (0x1f < ((int)local_3c - iVar4) - 4U) goto LAB_00518300;
      }
      FUN_00aef15c(iVar4,uVar8);
    }
    local_14 = -1;
    local_2c = 0;
    local_28 = 0xf;
    local_3c = local_3c & 0xffffffffffffff00;
    if (0xf < local_40) {
      uVar8 = local_40 + 1;
      iVar4 = (int)local_54;
      if (0xfff < uVar8) {
        iVar4 = *(int *)((int)local_54 + -4);
        uVar8 = local_40 + 0x24;
        if (0x1f < ((int)local_54 - iVar4) - 4U) {
LAB_00518300:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar4,uVar8);
    }
    cVar1 = FUN_00417430(0x1000800,0);
    if ((cVar1 == '\0') || (param_1[0x3c7] != -1)) {
      fVar7 = DAT_00baa304;
      if (param_1[0xb] == 2) {
        fVar7 = DAT_00baa3a4;
      }
      uVar14 = 1;
      uVar11 = 900;
      uVar2 = FUN_006bec40(&local_10c,0);
      FUN_007e33c0(uVar2,fVar7,uVar11,uVar14);
    }
    else {
      iVar4 = FUN_006be840();
      local_10c = *(undefined4 *)(iVar4 + 0x33c);
      local_108 = *(float *)(iVar4 + 0x340);
      FUN_007e4940(&local_10c,0);
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    }
    if (param_1[0x3c7] == -1) {
      uVar2 = FUN_006be840();
      cVar1 = FUN_006d7d60(uVar2);
      if ((((cVar1 != '\0') && (*(char *)(param_1 + 0x2d0) != '\0')) && (param_1[0xb] == 0)) &&
         (uVar8 = FUN_006eef60(), uVar8 % 3 == 0)) goto LAB_0051840e;
    }
    else {
      cVar1 = FUN_006d8290(10);
      if (cVar1 != '\0') {
LAB_0051840e:
        FUN_006d6ba0(0xa5,0x3f800000,0x28,0,0x3f800000);
      }
    }
    if (param_1[0xef] != 0) {
      local_118 = (float)param_1[0xd8];
      local_104[0] = (int *)param_1[0xcf];
      local_114 = (float)param_1[0xd0];
      fVar7 = (float)param_1[0xd9];
      iVar4 = FUN_00447770();
      local_110 = *(float *)(iVar4 + 0x33c);
      local_108 = *(float *)(iVar4 + 0x340);
      iVar4 = FUN_00447770();
      *(float *)(iVar4 + 0x360) = (local_118 + (float)local_104[0]) - local_110;
      *(float *)(iVar4 + 0x364) = (fVar7 + local_114) - local_108;
      iVar4 = FUN_00447770();
      *(undefined *)(iVar4 + 0x148) = *(undefined *)(param_1 + 0x52);
    }
  }
  else {
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa354);
    if (param_1[0x3c7] == -1) {
      puStack_20 = &stack0xfffffffc;
      if (param_1[0x1f] != 0) {
        puStack_20 = &stack0xfffffffc;
        uVar2 = FUN_00452bf0(&local_54);
        local_14 = 4;
        FUN_0040a690(uVar2,0);
        local_14 = -1;
        if (0xf < local_40) {
          uVar8 = local_40 + 1;
          iVar4 = (int)local_54;
          if (0xfff < uVar8) {
            iVar4 = *(int *)((int)local_54 + -4);
            uVar8 = local_40 + 0x24;
            if (0x1f < ((int)local_54 - iVar4) - 4U) {
                    /* WARNING: Subroutine does not return */
              _invalid_parameter_noinfo_noreturn();
            }
          }
          FUN_00aef15c(iVar4,uVar8);
        }
        local_44 = 0;
        local_40 = 0xf;
        local_54 = local_54 & 0xffffffffffffff00;
      }
    }
    else {
      local_4c._0_1_ = s_MrMawBodyVert_00b60db4[8];
      local_4c._1_1_ = s_MrMawBodyVert_00b60db4[9];
      local_4c._2_1_ = s_MrMawBodyVert_00b60db4[10];
      local_4c._3_1_ = s_MrMawBodyVert_00b60db4[0xb];
      local_40 = 0xf;
      local_44 = 0xd;
      local_54._0_1_ = s_MrMawBodyVert_00b60db4[0];
      local_54._1_1_ = s_MrMawBodyVert_00b60db4[1];
      local_54._2_1_ = s_MrMawBodyVert_00b60db4[2];
      local_54._3_1_ = s_MrMawBodyVert_00b60db4[3];
      local_54._4_1_ = s_MrMawBodyVert_00b60db4[4];
      local_54._5_1_ = s_MrMawBodyVert_00b60db4[5];
      local_54._6_1_ = s_MrMawBodyVert_00b60db4[6];
      local_54._7_1_ = s_MrMawBodyVert_00b60db4[7];
      local_48 = s_MrMawBodyVert_00b60db4[0xc];
      local_47 = 0;
      local_34._0_1_ = s_MrMawBodyHori_00b60df8[8];
      local_34._1_1_ = s_MrMawBodyHori_00b60df8[9];
      local_34._2_1_ = s_MrMawBodyHori_00b60df8[10];
      local_34._3_1_ = s_MrMawBodyHori_00b60df8[0xb];
      local_28 = 0xf;
      local_2c = 0xd;
      local_3c._0_1_ = s_MrMawBodyHori_00b60df8[0];
      local_3c._1_1_ = s_MrMawBodyHori_00b60df8[1];
      local_3c._2_1_ = s_MrMawBodyHori_00b60df8[2];
      local_3c._3_1_ = s_MrMawBodyHori_00b60df8[3];
      local_3c._4_1_ = s_MrMawBodyHori_00b60df8[4];
      local_3c._5_1_ = s_MrMawBodyHori_00b60df8[5];
      local_3c._6_1_ = s_MrMawBodyHori_00b60df8[6];
      local_3c._7_1_ = s_MrMawBodyHori_00b60df8[7];
      local_30 = s_MrMawBodyHori_00b60df8[0xc];
      local_2f = 0;
      local_14._0_1_ = 3;
      local_14._1_3_ = 0;
      puStack_20 = &stack0xfffffffc;
      FUN_006c1330(&local_3c,&local_54,0x3dcccccd);
      local_14 = CONCAT31(local_14._1_3_,2);
      if (0xf < local_28) {
        uVar8 = local_28 + 1;
        iVar4 = (int)local_3c;
        if (0xfff < uVar8) {
          iVar4 = *(int *)((int)local_3c + -4);
          uVar8 = local_28 + 0x24;
          if (0x1f < ((int)local_3c - iVar4) - 4U) goto LAB_00518619;
        }
        FUN_00aef15c(iVar4,uVar8);
      }
      local_14 = -1;
      local_2c = 0;
      local_28 = 0xf;
      local_3c = local_3c & 0xffffffffffffff00;
      if (0xf < local_40) {
        uVar8 = local_40 + 1;
        iVar4 = (int)local_54;
        if (0xfff < uVar8) {
          iVar4 = *(int *)((int)local_54 + -4);
          uVar8 = local_40 + 0x24;
          if (0x1f < ((int)local_54 - iVar4) - 4U) {
LAB_00518619:
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(iVar4,uVar8);
      }
      uVar2 = DAT_00baa1f8;
      if (param_1[0xb] == 2) {
        uVar2 = DAT_00baa280;
      }
      uVar15 = 1;
      uVar14 = 900;
      uVar11 = FUN_006bec40(&local_10c,0);
      FUN_007e33c0(uVar11,uVar2,uVar14,uVar15);
    }
  }
  if (*(char *)((int)param_1 + 0x173) == '\0') {
    if (param_1[0xef] == 0) {
      iVar4 = param_1[0xb];
      FUN_006c0f30(0xb,0,0,param_1[0x319]);
      param_1[0xe0] = param_1[0xe1];
      iVar5 = FUN_0040b220(0);
      *(undefined4 *)(iVar5 + 0x54) = 0x3f800000;
      if (iVar4 == 3) {
        *(undefined4 *)(iVar5 + 0x48) = 0x3f8a0a0b;
        *(undefined4 *)(iVar5 + 0x4c) = 0x3f61e1e3;
        *(undefined4 *)(iVar5 + 0x50) = 0x3f61e1e3;
      }
      else {
        *(undefined4 *)(iVar5 + 0x48) = 0x3fb1b1b2;
        *(undefined4 *)(iVar5 + 0x4c) = 0x3fb1b1b2;
        *(undefined4 *)(iVar5 + 0x50) = 0x3fb1b1b2;
      }
    }
  }
  else if (param_1[0xef] != 0) {
    iVar4 = FUN_00447770();
    FUN_006c0f30(0x1a,param_1[0xb] != 0,0,param_1[0x319]);
    *(undefined4 *)(iVar4 + 0x188) = 4;
    *(undefined4 *)(iVar4 + 0x380) = *(undefined4 *)(iVar4 + 900);
  }
LAB_00518df7:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

