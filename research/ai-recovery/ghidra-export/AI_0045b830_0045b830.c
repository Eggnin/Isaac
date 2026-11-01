/* Local J460 decompiler output.
 * VA: 0x0045b830
 * Entry: 0045b830
 * Dispatcher: 0x006c2990
 * Types: 81
 * Identities: 81.0.0,81.1.0
 * Evidence: dispatcher=0x006c2990; end=0x0045cd60; instructions=1165
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=81; identities=81.0.0,81.1.0; dispatcher=0x006c2990;
   end=0x0045cd60; instructions=1165 */

void __fastcall AI_0045b830(int *param_1)

{
  int **ppiVar1;
  undefined auVar2 [16];
  undefined *puVar3;
  char cVar4;
  int **ppiVar5;
  int iVar6;
  undefined4 uVar7;
  float *pfVar8;
  int *piVar9;
  int iVar10;
  char *pcVar11;
  uint uVar12;
  uint uVar13;
  float fVar14;
  int *piVar15;
  float fVar16;
  float fVar17;
  undefined4 uVar18;
  TypeDescriptor *pTVar19;
  TypeDescriptor *pTVar20;
  undefined4 uVar21;
  float local_14c;
  float local_148;
  float local_144;
  int *local_140;
  int *local_13c;
  int *local_138;
  int *local_134;
  int *local_130;
  float local_12c;
  byte local_125;
  int *local_124;
  uint local_68;
  undefined local_64;
  undefined4 local_58;
  uint local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined local_40 [5];
  undefined auStack_3b [7];
  float afStack_34 [3];
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af2615;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_124 = (int *)param_1[0xd];
  local_134 = (int *)param_1[10];
  puVar3 = &stack0xfffffffc;
  if (param_1[0x2d9] == 0) goto LAB_0045cd38;
  piVar15 = param_1 + 0x1e;
  local_144 = DAT_00baa454;
  local_130 = piVar15;
  puVar3 = &stack0xfffffffc;
  if (param_1[0x1f] != 0) {
    local_140 = piVar15;
    cVar4 = FUN_0040add0("FlapChase");
    local_130 = piVar15;
    if (cVar4 != '\0') {
      local_130 = (int *)local_144;
      fVar14 = DAT_00baa528;
      if ((param_1[0x319] == 0x12) || (fVar14 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
        local_130 = (int *)fVar14;
      }
      local_12c = 1.350852e-42;
      FUN_00956780();
      FUN_0092dc30(local_12c,0x3f800000,2,0,local_130,0);
      local_130 = local_140;
    }
    puVar3 = puStack_20;
    if (param_1[0x1f] != 0) {
      cVar4 = FUN_0040add0(&DAT_00b1dd68);
      if (cVar4 != '\0') {
        local_12c = local_144;
        fVar14 = DAT_00baa528;
        if ((param_1[0x319] == 0x12) || (fVar14 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
          local_12c = fVar14;
        }
        local_140 = (int *)0x3c6;
        FUN_00956780();
        FUN_0092dc30(local_140,0x3f800000,2,0,local_12c,0);
      }
      puVar3 = puStack_20;
      if ((param_1[0x1f] != 0) &&
         (cVar4 = FUN_0040add0("OpenWings"), puVar3 = puStack_20, cVar4 != '\0')) {
        local_12c = local_144;
        fVar14 = DAT_00baa528;
        if ((param_1[0x319] == 0x12) || (fVar14 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
          local_12c = fVar14;
        }
        local_140 = (int *)0x3c7;
        FUN_00956780();
        FUN_0092dc30(local_140,0x3f800000,2,0,local_12c,0);
        puVar3 = puStack_20;
      }
    }
  }
  puStack_20 = puVar3;
  fVar14 = DAT_00baa2d0;
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
  if (((((float)param_1[0xe0] / (float)param_1[0xe1] < fVar14) && (local_124 != local_134)) &&
      (param_1[0xb] == 0)) && (param_1[0x2d9] != 0xd)) {
    FUN_006d6ba0(0x75,0x3f800000,2,0,0x3f800000);
    ppiVar1 = (int **)(param_1 + 0xe0);
    param_1[0x2d9] = 0xd;
    param_1[0x104] = 0;
    local_140 = (int *)0x3f800000;
    ppiVar5 = &local_140;
    if (local_144 < (float)*ppiVar1) {
      ppiVar5 = ppiVar1;
    }
    *ppiVar1 = *ppiVar5;
    *(undefined *)((int)param_1 + 0x173) = 0;
  }
  iVar6 = param_1[0x2d9];
  if (iVar6 == 4) {
    FUN_007e5340(0x3f800000,0);
    auVar2 = _local_40;
    local_54 = 0xf;
    local_58 = 4;
    local_68 = 0x6b6c6157;
    local_64 = 0;
    local_28 = 0xf;
    afStack_34[2] = 5.605194e-45;
    stack0xffffffc4 = 0x6b6c6157;
    stack0xffffffc9 = auVar2._9_7_;
    auStack_3b[3] = 0;
    local_14._0_1_ = 1;
    local_14._1_3_ = 0;
    FUN_006c1330(local_40 + 4,&local_68,0x40400000);
    local_14 = (uint)local_14._1_3_ << 8;
    if (0xf < local_28) {
      uVar12 = local_28 + 1;
      iVar6 = stack0xffffffc4;
      if (0xfff < uVar12) {
        iVar6 = *(int *)(stack0xffffffc4 + -4);
        uVar12 = local_28 + 0x24;
        if (0x1f < (stack0xffffffc4 - iVar6) - 4U) goto LAB_0045bc66;
      }
      FUN_00aef15c(iVar6,uVar12);
    }
    local_14 = -1;
    afStack_34[2] = 0.0;
    local_28 = 0xf;
    local_40[4] = 0;
    if (0xf < local_54) {
      uVar13 = local_54 + 1;
      uVar12 = local_68;
      if (0xfff < uVar13) {
        uVar12 = *(uint *)(local_68 - 4);
        uVar13 = local_54 + 0x24;
        if (0x1f < (local_68 - uVar12) - 4) {
LAB_0045bc66:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(uVar12,uVar13);
    }
    local_58 = 0;
    local_54 = 0xf;
    local_68 = local_68 & 0xffffff00;
    if ((((param_1[0x5b] & 0x10000000U) != 0) &&
        ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) != 0)) ||
       ((uVar12 = FUN_006eef60(), uVar12 % 3 != 0 && (local_124 != local_134)))) goto LAB_0045cd42;
    iVar6 = FUN_006be840();
    local_130 = (int *)(*(float *)(iVar6 + 0x33c) - (float)param_1[0xcf]);
    local_12c = *(float *)(iVar6 + 0x340) - (float)param_1[0xd0];
    uVar12 = FUN_006eef60();
    if ((uVar12 % 0x50 == 0) && (param_1[0xb] == 0)) {
      FUN_006d6ba0(0x7a,0x3f800000,2,0,0x3f800000);
      param_1[0x2d9] = 9;
      param_1[0x104] = 0;
      goto LAB_0045cd42;
    }
    if (param_1[0xb] != 1) {
LAB_0045bf5c:
      uVar12 = FUN_006eef60();
      if (uVar12 % 0x14 == 0) {
        fVar14 = local_12c * local_12c + (float)local_130 * (float)local_130;
        FUN_00435a50();
        if (fVar14 < DAT_00baaac0) {
          *(bool *)(param_1 + 0x52) = (float)local_130 < 0.0;
          param_1[0x2d9] = 8;
          param_1[0x104] = 0;
        }
      }
      goto LAB_0045cd42;
    }
    uVar12 = FUN_006eef60();
    if ((uVar12 % 0x14 != 0) ||
       ((DAT_00baa87c <= (float)((uint)local_130 & DAT_00bacb40) &&
        (DAT_00baa87c <= (float)((uint)local_12c & DAT_00bacb40))))) {
LAB_0045bdd2:
      uVar12 = FUN_006eef60();
      if (uVar12 % 200 != 0) goto LAB_0045bf5c;
    }
    else {
      fVar14 = (float)local_130 * (float)local_130 + local_12c * local_12c;
      FUN_00435a50();
      if (DAT_00baab54 <= fVar14) goto LAB_0045bdd2;
    }
    FUN_006d6ba0(0x7a,0x3f800000,2,0,0x3f800000);
    param_1[0x2d9] = 10;
    if (param_1[0xb] == 1) {
      uVar12 = FUN_006eef60();
      if ((uVar12 & 3) == 0) {
        param_1[0x2d9] = 0xb;
      }
      if (((param_1[0xb] != 1) || (param_1[0x2d9] != 10)) ||
         ((uVar12 = FUN_006eef60(), (uVar12 & 1) != 0 &&
          (0x3b < *(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca])))) goto LAB_0045be5d;
      iVar6 = 1;
    }
    else {
LAB_0045be5d:
      iVar6 = 0;
    }
    param_1[0x2f0] = iVar6;
    local_124 = (int *)0x0;
    local_14c = 0.0;
    local_148 = -40.0;
    do {
      _local_40 = ZEXT816(0);
      afStack_34[1] = 0.0;
      uVar7 = 0x16;
      if (param_1[0xb] == 1) {
        uVar7 = 0x20;
      }
      afStack_34[2] = 0.0;
      local_28 = 0;
      local_50 = _DAT_00babe20;
      uStack_4c = _UNK_00babe24;
      uStack_48 = _UNK_00babe28;
      uStack_44 = _UNK_00babe2c;
      fVar14 = DAT_00baa910;
      if (param_1[0x2f0] == 0) {
        fVar14 = 0.0;
      }
      piVar15 = (int *)(((float)(int)local_124 * DAT_00baa9b4 + fVar14) * DAT_00baa088);
      local_134 = piVar15;
      FUN_0041d540();
      local_13c = piVar15;
      piVar15 = local_134;
      FUN_0041d520();
      local_138 = piVar15;
      FUN_0060b890(&local_13c,uVar7,&local_50,0x40800000);
      local_124 = (int *)((int)local_124 + 1);
    } while ((int)local_124 < 4);
    param_1[0x104] = 0;
    goto LAB_0045cd42;
  }
  if (iVar6 == 8) {
    param_1[0x104] = param_1[0x104] + 1;
    FUN_0040a380(&DAT_00b1d2cc,0);
    if (param_1[0x1f] != 0) {
      cVar4 = FUN_0040add0("Shoot");
      if (cVar4 != '\0') {
LAB_0045c021:
        if (param_1[0x1f] == 0) {
          local_125 = 0;
        }
        else {
          local_125 = FUN_0040add0("Shoot");
        }
        FUN_006d6ba0((uint)local_125 * 2 + 0x6a,0x3f800000,2,0,0x3f800000);
        iVar6 = FUN_006be840();
        local_124 = *(int **)(iVar6 + 0x33c);
        local_134 = *(int **)(iVar6 + 0x340);
        iVar6 = FUN_006be840();
        local_124 = (int *)((*(float *)(iVar6 + 0x360) * DAT_00baa81c + (float)local_124) -
                           (float)param_1[0xcf]);
        local_134 = (int *)((*(float *)(iVar6 + 0x364) * DAT_00baa81c + (float)local_134) -
                           (float)param_1[0xd0]);
        fVar14 = (float)local_124 * (float)local_124 + (float)local_134 * (float)local_134;
        FUN_00435a50();
        local_13c = local_124;
        local_138 = local_134;
        if (DAT_00ba9fe4 < fVar14) {
          local_13c = (int *)((float)local_124 * (local_144 / fVar14));
          local_138 = (int *)((float)local_134 * (local_144 / fVar14));
        }
        local_13c = (int *)((float)local_13c * DAT_00baa7ec);
        local_138 = (int *)((float)local_138 * DAT_00baa7ec);
        uVar7 = AI_0043ef30();
        FUN_006cb2e0(param_1 + 0xcf,&local_13c,(local_125 ^ 1) * 2 + 2,uVar7);
        goto LAB_0045cd42;
      }
      if (param_1[0x1f] != 0) {
        cVar4 = FUN_0040add0("Shoot2");
        if (cVar4 != '\0') goto LAB_0045c021;
        if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) goto LAB_0045cd42;
      }
    }
    uVar12 = FUN_006eef60();
    puVar3 = puStack_20;
    if ((uVar12 % 3 == 0) && (param_1[0xb] == 1)) {
      FUN_006d6ba0(0x7a,0x3f800000,2,0,0x3f800000);
      param_1[0x2d9] = 10;
      if (param_1[0xb] == 1) {
        uVar12 = FUN_006eef60();
        if ((uVar12 & 3) == 0) {
          param_1[0x2d9] = 0xb;
        }
        if (((param_1[0xb] != 1) || (param_1[0x2d9] != 10)) ||
           ((uVar12 = FUN_006eef60(), (uVar12 & 1) != 0 &&
            (0x3b < *(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca])))) goto LAB_0045c22a;
        iVar6 = 1;
      }
      else {
LAB_0045c22a:
        iVar6 = 0;
      }
      param_1[0x2f0] = iVar6;
      local_124 = (int *)0x0;
      local_14c = 0.0;
      local_148 = -40.0;
      do {
        _local_40 = ZEXT816(0);
        afStack_34[1] = 0.0;
        uVar7 = 0x16;
        if (param_1[0xb] == 1) {
          uVar7 = 0x20;
        }
        afStack_34[2] = 0.0;
        local_28 = 0;
        local_50 = _DAT_00babe20;
        uStack_4c = _UNK_00babe24;
        uStack_48 = _UNK_00babe28;
        uStack_44 = _UNK_00babe2c;
        fVar14 = DAT_00baa910;
        if (param_1[0x2f0] == 0) {
          fVar14 = 0.0;
        }
        piVar15 = (int *)(((float)(int)local_124 * DAT_00baa9b4 + fVar14) * DAT_00baa088);
        local_134 = piVar15;
        FUN_0041d540();
        local_13c = piVar15;
        piVar15 = local_134;
        FUN_0041d520();
        local_138 = piVar15;
        FUN_0060b890(&local_13c,uVar7,&local_50,0x40800000);
        local_124 = (int *)((int)local_124 + 1);
      } while ((int)local_124 < 4);
      param_1[0x104] = 0;
      param_1[0x2ec] = 0;
      goto LAB_0045cd42;
    }
  }
  else {
    if (iVar6 == 9) {
      if (param_1[0x104] == 0) {
        FUN_0040a380("ChargeStart",0);
        param_1[0x104] = param_1[0x104] + 1;
      }
      else if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        FUN_0040a380("Charge",0);
      }
      cVar4 = FUN_0040a4d0("Charge");
      if (cVar4 != '\0') {
        iVar6 = param_1[0x104];
        param_1[0x104] = iVar6 + 1;
        if ((0x77 < iVar6) && (uVar12 = FUN_006eef60(), uVar12 % 0x3c != 0)) {
          FUN_006d6ba0(0x3c5,0x3f800000,0x78,0,0x3f800000);
        }
        pfVar8 = (float *)FUN_006bec40(afStack_34 + 2,0);
        iVar6 = FUN_006be840();
        local_13c = (int *)((*(float *)(iVar6 + 0x360) * DAT_00baa81c + *pfVar8) -
                           (float)param_1[0xcf]);
        local_138 = (int *)((*(float *)(iVar6 + 0x364) * DAT_00baa81c + pfVar8[1]) -
                           (float)param_1[0xd0]);
        pfVar8 = (float *)FUN_00a10030(afStack_34 + 2);
        fVar14 = (float)param_1[0xdb];
        fVar17 = *pfVar8 * DAT_00baa500;
        if (NAN(fVar14) == (fVar14 == 0.0)) {
          param_1[0xd9] =
               (int)(((float)param_1[0xe7] * pfVar8[1] * DAT_00baa500) / fVar14 +
                    (float)param_1[0xd9]);
          param_1[0xd8] = (int)(((float)param_1[0xe7] * fVar17) / fVar14 + (float)param_1[0xd8]);
        }
        fVar14 = (float)param_1[0x2ec];
        param_1[0x2ec] = (int)((float)param_1[5] + fVar14);
        fVar17 = (float)param_1[0xe1] * DAT_00baa13c;
        *(bool *)(param_1 + 0x52) = (float)local_13c < 0.0;
        if (fVar17 < (float)param_1[5] + fVar14) {
          param_1[0x2d9] = 10;
          param_1[0x104] = 0;
          param_1[0x2ec] = 0;
          if ((param_1[0xb] == 1) &&
             ((uVar12 = FUN_006eef60(), (uVar12 & 1) == 0 ||
              (*(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca] < 0x3c)))) {
            iVar6 = 1;
          }
          else {
            iVar6 = 0;
          }
          param_1[0x2f0] = iVar6;
          local_124 = (int *)0x0;
          local_14c = 0.0;
          local_148 = -40.0;
          do {
            _local_40 = ZEXT816(0);
            afStack_34[1] = 0.0;
            uVar7 = 0x16;
            if (param_1[0xb] == 1) {
              uVar7 = 0x20;
            }
            afStack_34[2] = 0.0;
            local_28 = 0;
            local_50 = _DAT_00babe20;
            uStack_4c = _UNK_00babe24;
            uStack_48 = _UNK_00babe28;
            uStack_44 = _UNK_00babe2c;
            fVar14 = DAT_00baa910;
            if (param_1[0x2f0] == 0) {
              fVar14 = 0.0;
            }
            piVar15 = (int *)(((float)(int)local_124 * DAT_00baa9b4 + fVar14) * DAT_00baa088);
            local_134 = piVar15;
            FUN_0041d540();
            local_13c = piVar15;
            piVar15 = local_134;
            FUN_0041d520();
            local_138 = piVar15;
            FUN_0060b890(&local_13c,uVar7,&local_50,0x40800000);
            local_124 = (int *)((int)local_124 + 1);
          } while ((int)local_124 < 4);
        }
      }
      goto LAB_0045cd42;
    }
    if ((iVar6 != 10) && (iVar6 != 0xb)) {
      if (iVar6 == 0xd) {
        FUN_0040a380("Split",0);
        param_1[0x104] = param_1[0x104] + 1;
        param_1[0x62] = 0;
        if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
          FUN_006d6ba0(0x109,0x40000000,2,0,0x3f800000);
          local_124 = (int *)0xffffffff;
          do {
            uVar7 = FUN_006eef60();
            uVar21 = 0;
            pTVar20 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
            pTVar19 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
            uVar18 = 0;
            uVar7 = FUN_00428b20(1000,0xf,param_1 + 0xcf,&DAT_00c7b640,param_1,3,uVar7);
            piVar15 = (int *)__RTDynamicCast(uVar7,uVar18,pTVar19,pTVar20,uVar21);
            afStack_34[1] = 0.0;
            afStack_34[2] = 0.0;
            _local_40 = ZEXT816(0);
            local_28 = 0;
            local_50 = _DAT_00babf20;
            uStack_4c = _UNK_00babf24;
            uStack_48 = _UNK_00babf28;
            uStack_44 = _UNK_00babf2c;
            (**(code **)(*piVar15 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
            piVar9 = (int *)((int)local_124 + 1);
            piVar15[0x11d] = (int)((float)(int)local_124 * DAT_00baa8d0);
            local_124 = piVar9;
          } while ((int)piVar9 < 2);
          iVar6 = 0;
          afStack_34[0] = (float)_DAT_00bacc00;
          afStack_34[1] = (float)_UNK_00bacc04;
          afStack_34[2] = (float)_UNK_00bacc08;
          local_28 = _UNK_00bacc0c;
          do {
            uVar7 = FUN_006eef60();
            uVar21 = 0;
            pTVar20 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
            pTVar19 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
            uVar18 = 0;
            local_13c = (int *)(afStack_34[iVar6 * 2] + (float)param_1[0xcf]);
            local_138 = (int *)(afStack_34[iVar6 * 2 + 1] + (float)param_1[0xd0]);
            uVar7 = FUN_00428b20(param_1[10],param_1[0xb],&local_13c,&DAT_00c7b640,param_1,0,uVar7);
            iVar10 = __RTDynamicCast(uVar7,uVar18,pTVar19,pTVar20,uVar21);
            *(float *)(iVar10 + 0x380) = *(float *)(iVar10 + 0x380) * DAT_00baa2d0;
            if ((param_1[0x5b] & 0x10000000U) != 0) {
              *(undefined4 *)(iVar10 + 900) = 0x41a00000;
              *(undefined4 *)(iVar10 + 0x380) = 0x41a00000;
            }
            iVar6 = iVar6 + 1;
            fVar17 = *(float *)(iVar10 + 0x3b4) * DAT_00baa380;
            *(undefined4 *)(iVar10 + 0xc38) = 0x3f400000;
            fVar14 = fVar17 * DAT_00c3793c;
            *(float *)(iVar10 + 0xe8) = fVar17 * DAT_00c37940;
            *(float *)(iVar10 + 0xe4) = fVar14;
          } while (iVar6 < 2);
          uVar7 = FUN_00435c70();
          (**(code **)(*param_1 + 0x24))(uVar7);
        }
      }
      goto LAB_0045cd42;
    }
    pcVar11 = "Attack2Alt";
    if (iVar6 != 0xb) {
      pcVar11 = "Attack2";
    }
    FUN_0040a380(pcVar11,0);
    if ((param_1[0x1f] == 0) || (cVar4 = FUN_0040add0("Shoot2"), cVar4 == '\0')) {
      cVar4 = FUN_0040b090("Shoot2");
      if ((cVar4 != '\0') && (fVar14 = (float)param_1[0x2ed], DAT_00ba9fe4 < fVar14)) {
        fVar17 = (float)param_1[0xe7];
        param_1[0xd8] = (int)(fVar14 * (float)param_1[0xcd] * fVar17 + (float)param_1[0xd8]);
        fVar16 = fVar17 * DAT_00baa198;
        param_1[0xd9] = (int)(fVar14 * (float)param_1[0xce] * fVar17 + (float)param_1[0xd9]);
        fVar16 = (float)param_1[0x2ed] - fVar16;
        fVar14 = 0.0;
        if (0.0 <= fVar16) {
          fVar14 = fVar16;
        }
        param_1[0x2ed] = (int)fVar14;
      }
    }
    else {
      iVar6 = FUN_006be840();
      local_13c = *(int **)(iVar6 + 0x33c);
      local_138 = *(int **)(iVar6 + 0x340);
      FUN_00812f50(&local_14c,&local_13c,0x42c80000,0x42c80000,0x42c80000);
      local_130 = (int *)((local_148 - (float)param_1[0xd0]) * DAT_00baa0d0);
      local_12c = (local_14c - (float)param_1[0xcf]) * DAT_00baa0d0;
      fVar17 = (float)local_130 * (float)local_130 + local_12c * local_12c;
      FUN_00435a50();
      fVar14 = local_12c;
      piVar15 = local_130;
      if (DAT_00baa7e8 <= fVar17) {
        if ((DAT_00baa854 < fVar17) && (DAT_00ba9fe4 < fVar17)) {
          fVar14 = local_12c * (DAT_00baa854 / fVar17);
          piVar15 = (int *)((float)local_130 * (DAT_00baa854 / fVar17));
        }
      }
      else if (DAT_00ba9fe4 < fVar17) {
        fVar14 = local_12c * (DAT_00baa7e8 / fVar17);
        piVar15 = (int *)((float)local_130 * (DAT_00baa7e8 / fVar17));
      }
      param_1[0xcd] = (int)fVar14;
      param_1[0xce] = (int)piVar15;
      param_1[0x2ed] = 0x3f800000;
      *(bool *)(param_1 + 0x52) = fVar14 < 0.0;
    }
    param_1[0x104] = param_1[0x104] + 1;
    puVar3 = puStack_20;
    if (param_1[0x1f] != 0) {
      cVar4 = FUN_0040add0("Shoot");
      if (cVar4 != '\0') {
        local_12c = (float)param_1[0x2d9];
        uVar12 = FUN_006eef60();
        if ((uVar12 & 1) != 0) {
          local_144 = DAT_00baad50;
        }
        if (((param_1[0xb] == 1) && (param_1[0x2d9] == 10)) && (param_1[0x2f0] != 0)) {
          local_125 = 1;
        }
        else {
          local_125 = 0;
        }
        iVar6 = 0;
        local_148 = 4.203895e-44;
        if (local_12c == 1.541428e-44) {
          local_148 = 7.006492e-44;
        }
        do {
          local_124 = (int *)((float)iVar6 * DAT_00baa9b4);
          if (local_125 != 0) {
            local_124 = (int *)((float)local_124 + DAT_00baa910);
          }
          local_134 = (int *)param_1[0xcf];
          local_130 = (int *)param_1[0xd0];
          piVar15 = local_130;
          if (local_12c != 1.541428e-44) {
            piVar15 = (int *)((float)local_124 * DAT_00baa088);
            local_140 = piVar15;
            FUN_0041d540();
            local_134 = (int *)((float)piVar15 * DAT_00baa81c + (float)local_134 + DAT_00ba9fe4);
            piVar15 = local_140;
            FUN_0041d520();
            piVar15 = (int *)((float)piVar15 * DAT_00baa81c + ((float)local_130 - DAT_00baa87c));
          }
          local_138 = piVar15;
          afStack_34[2] = 0.0;
          local_28 = 0xc1a00000;
          piVar15 = local_124;
          local_13c = local_134;
          if (DAT_00baab30 < (float)((uint)local_124 & DAT_00bacb40)) {
            FUN_00499d20();
          }
          if ((float)piVar15 <= DAT_00baaa78) {
            if ((float)piVar15 < DAT_00baae7c) {
              piVar15 = (int *)((float)piVar15 + DAT_00baab30);
            }
          }
          else {
            piVar15 = (int *)((float)piVar15 - DAT_00baab30);
          }
          piVar15 = (int *)FUN_0096f310(1,&local_13c,piVar15,local_148,afStack_34 + 2,param_1,0);
          piVar15[0xd6] = -0x3ee00000;
          if (local_12c == 1.541428e-44) {
            *(undefined *)(piVar15 + 0x130) = 1;
            piVar15[0x131] = 0x1e;
            piVar15[0x132] = (int)(local_144 * DAT_00baa9b4);
            piVar15[0x133] = (int)(local_144 + local_144);
          }
          (**(code **)(*piVar15 + 0xc))();
          iVar6 = iVar6 + 1;
        } while (iVar6 < 4);
        goto LAB_0045cd42;
      }
      puVar3 = puStack_20;
      if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) goto LAB_0045cd42;
    }
  }
LAB_0045cd38:
  puStack_20 = puVar3;
  param_1[0x2d9] = 4;
LAB_0045cd42:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

