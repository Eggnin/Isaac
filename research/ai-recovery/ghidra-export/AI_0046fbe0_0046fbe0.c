/* Local J460 decompiler output.
 * VA: 0x0046fbe0
 * Entry: 0046fbe0
 * Dispatcher: 0x006c2990
 * Types: 100
 * Identities: 100.0.0,100.1.0
 * Evidence: dispatcher=0x006c2990; end=0x00471050; instructions=1200
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=100; identities=100.0.0,100.1.0; dispatcher=0x006c2990;
   end=0x00471050; instructions=1200 */

void __fastcall AI_0046fbe0(int *param_1)

{
  code *pcVar1;
  bool bVar2;
  bool bVar3;
  char cVar4;
  char cVar5;
  byte bVar6;
  uint uVar7;
  float *pfVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  int *piVar12;
  undefined4 uVar13;
  float *pfVar14;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 extraout_ECX_03;
  undefined4 extraout_ECX_04;
  undefined4 extraout_ECX_05;
  undefined4 extraout_ECX_06;
  float fVar15;
  float fVar16;
  int *piVar17;
  undefined8 uVar18;
  undefined4 uVar19;
  undefined4 uVar20;
  TypeDescriptor *pTVar21;
  TypeDescriptor *pTVar22;
  undefined4 uVar23;
  undefined4 local_198;
  undefined4 local_194;
  undefined4 local_190;
  undefined4 local_18c;
  undefined4 local_188;
  undefined4 local_184;
  undefined4 local_180;
  undefined4 local_17c;
  undefined4 local_178;
  undefined4 local_174;
  char local_170 [4];
  int local_16c;
  int *local_164;
  undefined local_160 [4];
  int *local_15c;
  undefined local_158 [8];
  float local_150;
  float local_14c;
  char local_145;
  char local_144 [4];
  int local_140;
  int *local_13c;
  int *local_138;
  int *local_134;
  float local_130;
  int *local_12c;
  undefined local_128 [44];
  undefined4 local_fc;
  undefined4 uStack_f8;
  undefined4 uStack_f4;
  undefined4 uStack_f0;
  undefined4 local_dc;
  undefined4 local_d8;
  undefined4 local_d4;
  undefined4 local_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined local_6c [16];
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined local_40 [8];
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined8 local_30;
  undefined4 local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af2901;
  local_1c = ExceptionList;
  uVar7 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_24 = uVar7;
  if (param_1[0x2d9] == 0) {
    param_1[0x2d9] = 4;
    puStack_20 = &stack0xfffffffc;
    goto LAB_00470742;
  }
  param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
  pfVar8 = (float *)FUN_006bec40(&local_13c,0);
  pfVar14 = (float *)(param_1 + 0xcf);
  local_130 = *pfVar8 - *pfVar14;
  local_12c = (int *)(pfVar8[1] - (float)param_1[0xd0]);
  iVar9 = FUN_006be840(uVar7);
  local_13c = (int *)(*(float *)(iVar9 + 0x33c) - *pfVar14);
  local_138 = (int *)(*(float *)(iVar9 + 0x340) - (float)param_1[0xd0]);
  iVar9 = param_1[0x2d9];
  param_1[0x62] = 2;
  param_1[0x61] = 5;
  if (iVar9 == 4) {
    FUN_0040a380(&DAT_00b1bc54,0);
    if (((param_1[0x5b] & 0x10000000U) != 0) &&
       ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) != 0))
    goto LAB_00470598;
    uVar7 = FUN_006eef60();
    if (uVar7 % 3 == 0) {
      fVar15 = local_130 * local_130 + (float)local_12c * (float)local_12c;
      FUN_00435a50();
      if (fVar15 <= DAT_00baa9d0) goto LAB_0046fd57;
    }
    else {
LAB_0046fd57:
      if (param_1[0xb] == 0) {
        iVar10 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0) +
                 *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4);
        iVar9 = 0;
        if (0 < iVar10) {
          iVar9 = iVar10;
        }
        if (5 < iVar9) goto LAB_0046fd8f;
      }
      if (param_1[0x2f0] < 1) {
        local_140 = 0;
        local_13c = (int *)0x0;
        local_138 = (int *)0x0;
        local_14 = 0;
        local_134 = (int *)0x4;
        FUN_0042c920(0,&local_134);
        local_134 = (int *)&DAT_00000008;
        if (local_13c == local_138) {
          FUN_0042c920(local_13c,&local_134);
        }
        else {
          *local_13c = 8;
          local_13c = local_13c + 1;
        }
        iVar10 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0) +
                 *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4);
        iVar9 = 0;
        if (0 < iVar10) {
          iVar9 = iVar10;
        }
        if ((iVar9 < 6) || (param_1[0xb] == 0)) {
          local_145 = '\x01';
        }
        else {
          local_145 = '\0';
        }
        local_12c = local_13c;
        cVar4 = FUN_00417430(0,0x10000000);
        cVar5 = local_145;
        if (cVar4 != '\0') {
          iVar9 = FUN_006ac7e0(0x32e,0,extraout_ECX,0);
          iVar10 = FUN_006ac7e0(0x5e,0,extraout_ECX_00,0);
          iVar11 = FUN_006ac7e0(0x55,0,extraout_ECX_01,0);
          local_130 = (float)(iVar11 + iVar9 + iVar10);
          if (param_1[0xb] != 1) {
            uVar19 = 0x12;
          }
          else {
            uVar19 = 0x1d;
          }
          iVar9 = FUN_006ac7e0(uVar19,param_1[0xb] == 1,extraout_ECX_02,0);
          cVar5 = (int)local_130 + iVar9 < 3;
        }
        if (cVar5 != '\0') {
          local_134 = (int *)0x9;
          if (local_12c == local_138) {
            FUN_0042c920(local_12c,&local_134);
          }
          else {
            *local_12c = 9;
            local_13c = local_12c + 1;
          }
        }
        piVar12 = local_138;
        param_1[0x104] = 0;
        iVar9 = FUN_0067f010();
        param_1[0x2d9] = *(int *)(local_140 + iVar9 * 4);
        local_14 = 0xffffffff;
        if (local_140 != 0) {
          uVar7 = (int)piVar12 - local_140 & 0xfffffffc;
          iVar9 = local_140;
          if (0xfff < uVar7) {
            iVar9 = *(int *)(local_140 + -4);
            uVar7 = uVar7 + 0x23;
            if (0x1f < (local_140 - iVar9) - 4U) {
                    /* WARNING: Subroutine does not return */
              _invalid_parameter_noinfo_noreturn();
            }
          }
          FUN_00aef15c(iVar9,uVar7);
        }
        goto LAB_00470598;
      }
    }
LAB_0046fd8f:
    param_1[0x2f0] = 0;
    fVar15 = (float)param_1[0xdb] * DAT_00baa354;
    param_1[0x104] = 0;
    param_1[0x2d9] = 6;
    param_1[0xdb] = (int)fVar15;
    fVar16 = local_130 * local_130 + (float)local_12c * (float)local_12c;
    FUN_00435a50();
    fVar15 = local_130;
    piVar12 = local_12c;
    if (DAT_00ba9fe4 < fVar16) {
      fVar15 = local_130 * (DAT_00baa454 / fVar16);
      piVar12 = (int *)((DAT_00baa454 / fVar16) * (float)local_12c);
    }
    fVar16 = (float)piVar12 * DAT_00baa7b8;
    param_1[0x2ec] = (int)(fVar15 * DAT_00baa7b8);
    param_1[0x2ed] = (int)fVar16;
  }
  else if (iVar9 == 6) {
    FUN_0040a380(&DAT_00b1d560,0);
    if (param_1[0xc] == 2) {
      param_1[0x53] = 0x3fb33333;
    }
    if (param_1[0x1f] == 0) {
LAB_00470314:
      param_1[0x2d9] = 4;
      param_1[0x53] = 0x3f800000;
    }
    else {
      cVar5 = FUN_0040add0(&DAT_00b1d560);
      if (cVar5 == '\0') {
        if (param_1[0x1f] == 0) goto LAB_00470314;
        cVar5 = FUN_0040add0(&DAT_00b1d574);
        if (cVar5 != '\0') {
          FUN_006d6ba0(0x30,0x3f800000,2,0,0x3f800000);
          uVar19 = FUN_006eef60();
          piVar12 = (int *)FUN_00428b20(1000,0x10,pfVar14,&DAT_00c7b640,param_1,2,uVar19);
          bVar6 = FUN_006eef60();
          piVar12[0x37] = 0;
          *(byte *)(piVar12 + 0x52) = (bVar6 ^ 0xff) & 1;
          piVar12[0x38] = 0x41700000;
          piVar12[0x39] = 0x3fa66666;
          piVar12[0x3a] = 0x3f800000;
          uVar18 = FUN_004238f0(0x3f333333);
          (*(code *)((ulonglong)uVar18 >> 0x20))((int)uVar18,0xffffffff,0xff,0,1);
          FUN_004564b0(param_1);
          (**(code **)(*piVar12 + 0xc))();
          FUN_0041a790(local_144,param_1 + 0xcf,0xffffffff);
          local_14 = 1;
          local_12c = (int *)0x0;
          piVar12 = local_138;
          if (local_138 != (int *)0x0) {
            do {
              local_134 = *(int **)(local_140 + (int)local_12c * 4);
              if ((9 < local_134[10]) && (local_134[10] != param_1[10])) {
                pcVar1 = *(code **)(*local_134 + 0x20);
                FUN_00431310(param_1);
                (*pcVar1)(0x42c80000,0,0,&local_198,0x1e);
                piVar12 = local_138;
              }
              local_12c = (int *)((int)local_12c + 1);
            } while (local_12c < piVar12);
          }
          local_14 = 0xffffffff;
          if (local_144[0] == '\0') {
            local_14 = 2;
            FUN_00a648b0(0,0);
            local_14 = 0xffffffff;
          }
        }
      }
      else {
        FUN_006d6ba0(0xe,0x3f800000,2,0,0x3f800000);
      }
      if (param_1[0x1f] == 0) goto LAB_00470314;
      cVar5 = FUN_0040ae70(&DAT_00b1d560);
      if ((cVar5 != '\0') &&
         ((param_1[0x1f] == 0 || (cVar5 = FUN_0040ae70(&DAT_00b1d574), cVar5 == '\0')))) {
        fVar15 = (float)param_1[0xdb];
        bVar2 = NAN(DAT_00ba9fe4);
        bVar3 = fVar15 == DAT_00ba9fe4;
        param_1[0x62] = 0;
        param_1[0x61] = 3;
        if ((NAN(fVar15) || bVar2) == bVar3) {
          param_1[0xd9] =
               (int)(((float)param_1[0xe7] * (float)param_1[0x2ed]) / fVar15 + (float)param_1[0xd9])
          ;
          param_1[0xd8] =
               (int)(((float)param_1[0xe7] * (float)param_1[0x2ec]) / fVar15 + (float)param_1[0xd8])
          ;
        }
      }
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) goto LAB_00470314;
    }
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3e0);
  }
  else if (iVar9 == 8) {
    FUN_0040a380(&DAT_00b1d53c,0);
    if (param_1[0x1f] != 0) {
      cVar5 = FUN_0040add0("Shoot");
      if (cVar5 != '\0') {
        if (param_1[0xb] == 1) {
          AI_0043ef30();
          local_dc = 0x3f0c8c8d;
          local_d8 = 0x3f0c8c8d;
          local_fc = _DAT_00bac630;
          uStack_f8 = _UNK_00bac634;
          uStack_f4 = _UNK_00bac638;
          uStack_f0 = _UNK_00bac63c;
          local_d4 = 0x3f0c8c8d;
          local_13c = (int *)0x41200000;
          local_138 = (int *)0x0;
          FUN_006cb2e0(pfVar14,&local_13c,8,local_128);
        }
        else {
          uVar19 = 2;
          local_12c = (int *)0x2;
          uVar13 = 0x1e;
          local_130 = 4.203895e-44;
          if (param_1[0xc] == 2) {
LAB_00470417:
            uVar19 = 0;
            local_12c = (int *)0x0;
          }
          else if (param_1[0xc] == 1) {
            uVar13 = 0x5e;
            local_130 = 1.317221e-43;
            goto LAB_00470417;
          }
          FUN_006d0c60(local_158,uVar13,uVar19);
          local_14 = 3;
          if (((uint)local_14c < 3) &&
             ((cVar5 = FUN_00417430(0,0x10000000), cVar5 == '\0' || ((uint)local_14c < 2)))) {
            uVar19 = FUN_006eef60();
            local_13c = (int *)(*pfVar14 + DAT_00ba9fe4);
            local_138 = (int *)((float)param_1[0xd0] + DAT_00baa8d0);
            uVar20 = 0;
            pTVar22 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
            pTVar21 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
            uVar13 = 0;
            uVar19 = FUN_00428b20(local_130,local_12c,&local_13c,&DAT_00c7b640,param_1,0,uVar19);
            local_12c = (int *)__RTDynamicCast(uVar19,uVar13,pTVar21,pTVar22,uVar20);
            local_12c[0xe0] = 0x41200000;
            cVar5 = FUN_00417430(0,0x10000000);
            if (cVar5 != '\0') {
              (**(code **)(*local_12c + 0xc))();
              local_12c[0xe0] = 0x3f800000;
              local_12c[0xe1] = 0x3f800000;
            }
          }
          param_1[0x2f0] = param_1[0x2f0] + 1;
          local_14 = 0xffffffff;
          FUN_004175b0();
        }
        param_1[0x104] = 0;
      }
      if (param_1[0x1f] != 0) {
        cVar5 = FUN_0040ae70("Shoot");
        if ((cVar5 != '\0') && (cVar5 = FUN_0040b090(&DAT_00b1d560), cVar5 == '\0')) {
          local_134 = (int *)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
          while (0 < (int)local_134) {
            iVar9 = FUN_006eef60();
            fVar15 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
            piVar17 = (int *)(fVar15 + fVar15);
            local_12c = piVar17;
            FUN_0041d520();
            local_130 = (float)param_1[0x104] * DAT_00baa6fc;
            piVar12 = local_12c;
            local_15c = piVar17;
            FUN_0041d540();
            local_150 = (float)piVar12 * local_130 + (float)param_1[0xcf];
            local_14c = (float)local_15c * local_130 + (float)param_1[0xd0];
            if (param_1[0xc] == 1) {
              uVar19 = 0x1a;
              local_28 = 0;
              local_50 = _DAT_00bac7b0;
              uStack_4c = _UNK_00bac7b4;
              uStack_48 = _UNK_00bac7b8;
              uStack_44 = _UNK_00bac7bc;
              local_40._4_4_ = _UNK_00bac444;
              local_40._0_4_ = _DAT_00bac440;
              uStack_38 = _UNK_00bac448;
              uStack_34 = _UNK_00bac44c;
              fVar15 = 0.0;
            }
            else {
              _local_40 = ZEXT816(0);
              uVar19 = 0x19;
              local_28 = 0x3f800000;
              local_50 = _DAT_00babf20;
              uStack_4c = _UNK_00babf24;
              uStack_48 = _UNK_00babf28;
              uStack_44 = _UNK_00babf2c;
              fVar15 = DAT_00baa454;
            }
            local_30 = CONCAT44(fVar15,fVar15);
            uVar13 = FUN_006eef60();
            uVar23 = 0;
            pTVar22 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
            pTVar21 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
            uVar20 = 0;
            uVar19 = FUN_00428b20(1000,uVar19,&local_150,&DAT_00c7b640,param_1,0,uVar13);
            piVar12 = (int *)__RTDynamicCast(uVar19,uVar20,pTVar21,pTVar22,uVar23);
            fVar16 = (float)param_1[0x104] * DAT_00baa198 + DAT_00baa454;
            fVar15 = fVar16 * DAT_00c3793c;
            piVar12[0x3a] = (int)(fVar16 * DAT_00c37940);
            piVar12[0x39] = (int)fVar15;
            (**(code **)(*piVar12 + 0xc))();
            local_12c = (int *)DAT_00baa454;
            fVar15 = DAT_00baa528;
            if ((param_1[0x319] == 0x12) || (fVar15 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
              local_12c = (int *)fVar15;
            }
            local_130 = 2.592402e-43;
            FUN_00956780();
            FUN_0092dc30(local_130,0x3fc00000,2,0,local_12c,0);
            local_130 = local_14c - (float)param_1[0xd0];
            local_12c = (int *)(local_150 - (float)param_1[0xcf]);
            fVar15 = local_130 * local_130 + (float)local_12c * (float)local_12c;
            FUN_00435a50();
            if (DAT_00ba9fe4 < fVar15) {
              local_12c = (int *)((float)local_12c * (DAT_00baa454 / fVar15));
              local_130 = local_130 * (DAT_00baa454 / fVar15);
            }
            local_12c = (int *)((float)local_12c * DAT_00baa7a4);
            local_130 = local_130 * DAT_00baa7a4;
            uVar19 = FUN_006eef60();
            piVar12 = (int *)FUN_00428b20(1000,2,&local_150,&DAT_00c7b640,0,2,uVar19);
            (**(code **)(*piVar12 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
            piVar12[0x37] = (int)local_12c;
            local_134 = (int *)((int)local_134 + -1);
            piVar12[0x38] = (int)local_130;
            piVar12[0xd6] = 0x41200000;
            param_1[0x104] = param_1[0x104] + 1;
          }
        }
        goto LAB_0047057f;
      }
    }
LAB_0047058e:
    param_1[0x2d9] = 4;
  }
  else {
    if (iVar9 != 9) goto LAB_00470598;
    FUN_0040a380(&DAT_00b1d554,0);
    param_1[0x104] = param_1[0x104] + 1;
    cVar5 = FUN_0040b030(&DAT_00b1d560);
    if (cVar5 != '\0') {
      FUN_006d6ba0(0x9e,0x3fcccccd,2,0,0x3f800000);
    }
    cVar5 = FUN_0040b030("Shoot");
    if (cVar5 == '\0') {
LAB_0047057f:
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) goto LAB_0047058e;
    }
    else {
      local_5c = 0x3ecccccd;
      local_6c = ZEXT816(0);
      local_58 = 0x3ec28f5c;
      local_7c = _DAT_00babca0;
      uStack_78 = _UNK_00babca4;
      uStack_74 = _UNK_00babca8;
      uStack_70 = _UNK_00babcac;
      local_54 = 0x3eae147b;
      iVar9 = FUN_006b6830(pfVar14,&local_7c);
      local_130 = 2.802597e-45;
      *(undefined4 *)(iVar9 + 0x34c) = 0;
      *(undefined4 *)(iVar9 + 0x350) = 0xc2200000;
      cVar5 = FUN_00417430(0,0x10000000);
      if (cVar5 != '\0') {
        iVar9 = FUN_006ac7e0(0x32e,0,extraout_ECX_03,0);
        iVar10 = FUN_006ac7e0(0x5e,0,extraout_ECX_04,0);
        iVar11 = FUN_006ac7e0(0x55,0,extraout_ECX_05,0);
        local_134 = (int *)(iVar11 + iVar9 + iVar10);
        if (param_1[0xb] != 1) {
          uVar19 = 0x12;
        }
        else {
          uVar19 = 0x1d;
        }
        iVar9 = FUN_006ac7e0(uVar19,param_1[0xb] == 1,extraout_ECX_06,0);
        fVar15 = (float)(3 - (int)((int)local_134 + iVar9));
        local_130 = 2.802597e-45;
        if ((int)fVar15 < 3) {
          local_130 = fVar15;
        }
      }
      piVar12 = param_1 + 0xcf;
      if (param_1[0xb] == 1) {
        uVar7 = FUN_006eef60();
        if (uVar7 % 3 == 0) {
          uVar19 = FUN_006eef60();
          uVar20 = 0;
          pTVar22 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
          pTVar21 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uVar13 = 0;
          uVar19 = FUN_00428b20(0x1d,1,piVar12,&DAT_00c7b640,param_1,0,uVar19);
          local_134 = (int *)__RTDynamicCast(uVar19,uVar13,pTVar21,pTVar22,uVar20);
          iVar9 = FUN_006be840();
          local_13c = *(int **)(iVar9 + 0x33c);
          local_138 = *(int **)(iVar9 + 0x340);
          piVar12 = (int *)FUN_00813520(&local_150,&local_13c,0x42480000,0,0,0);
          piVar17 = local_134;
          local_134[0xcd] = *piVar12;
          local_134[0xce] = piVar12[1];
          local_15c = local_134 + 0x12;
          local_134[0x2d9] = 4;
          local_134[0x104] = 5;
          cVar5 = FUN_0040a5d0(&DAT_00b1de1c,1);
          piVar12 = local_15c;
          if (cVar5 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(piVar12 + 0x11) = 1;
            piVar17 = local_134;
          }
          if (piVar17[0x1f] != 0) {
            FUN_00408e00();
          }
        }
        else {
          uVar7 = FUN_006eef60();
          if ((uVar7 & 1) == 0) {
            iVar10 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0) +
                     *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4);
            iVar9 = 0;
            if (0 < iVar10) {
              iVar9 = iVar10;
            }
            if (iVar9 < 5) {
              if (0 < (int)local_130) {
                do {
                  FUN_00813520(&local_13c,piVar12,0x42c80000,0,0,0);
                  FUN_006c2750(piVar12,param_1,local_13c,local_138,0,0xc1f00000);
                  local_130 = (float)((int)local_130 + -1);
                } while (local_130 != 0.0);
                local_130 = 0.0;
              }
              goto LAB_00470598;
            }
          }
          FUN_00813520(&local_13c,piVar12,0x42c80000,0,0,0);
          uVar19 = 1;
LAB_00471027:
          FUN_006c2750(param_1 + 0xcf,param_1,local_13c,local_138,uVar19,0xc1f00000);
        }
      }
      else if (param_1[0xc] == 2) {
        pfVar14 = (float *)FUN_00a10030(&local_150);
        local_134 = (int *)(*pfVar14 * DAT_00baa83c);
        local_12c = (int *)(pfVar14[1] * DAT_00baa83c);
        uVar19 = FUN_006eef60();
        local_14c = (float)local_134 * DAT_00baa280;
        local_15c = (int *)((float)local_12c * DAT_00baa280);
        uVar20 = 0;
        pTVar22 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
        pTVar21 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uVar13 = 0;
        local_138 = (int *)(local_14c + (float)local_12c);
        local_13c = (int *)((float)local_134 + (float)local_15c);
        uVar19 = FUN_00428b20(0x12,0,piVar12,&local_13c,param_1,0,uVar19);
        iVar9 = __RTDynamicCast(uVar19,uVar13,pTVar21,pTVar22,uVar20);
        *(uint *)(iVar9 + 0x168) = *(uint *)(iVar9 + 0x168) & 0xfffffffb;
        *(undefined *)(iVar9 + 0x174) = 1;
        *(undefined4 *)(iVar9 + 0x16c) = *(undefined4 *)(iVar9 + 0x16c);
        if (1 < (int)local_130) {
          uVar19 = FUN_006eef60();
          local_13c = (int *)((float)local_134 - (float)local_15c);
          local_138 = (int *)((float)local_12c - local_14c);
          uVar20 = 0;
          pTVar22 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
          pTVar21 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uVar13 = 0;
          uVar19 = FUN_00428b20(0x12,0,piVar12,&local_13c,param_1,0,uVar19);
          iVar9 = __RTDynamicCast(uVar19,uVar13,pTVar21,pTVar22,uVar20);
          *(uint *)(iVar9 + 0x168) = *(uint *)(iVar9 + 0x168) & 0xfffffffb;
          *(undefined *)(iVar9 + 0x174) = 1;
          *(undefined4 *)(iVar9 + 0x16c) = *(undefined4 *)(iVar9 + 0x16c);
        }
      }
      else {
        if (param_1[0xc] != 1) {
          FUN_00813520(&local_13c,param_1 + 0xcf,0x42c80000,0,0,0);
          uVar19 = 0;
          goto LAB_00471027;
        }
        FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
        uVar19 = AI_0043ef30();
        local_150 = (float)param_1[0xcf] + DAT_00ba9fe4;
        local_14c = (float)param_1[0xd0] - DAT_00baa854;
        local_13c = (int *)0x41000000;
        local_138 = (int *)0x40c00000;
        FUN_006cb2e0(&local_150,&local_13c,9,uVar19);
      }
    }
  }
LAB_00470598:
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    if (param_1[0xb] == 1) {
      local_134 = (int *)0x3;
      do {
        FUN_00813520(local_160,param_1 + 0xcf,0x42c80000,0,0,0);
        FUN_006c2750(param_1 + 0xcf,param_1,DAT_00c7b640,DAT_00c7b644,0,0xc1f00000);
        local_134 = (int *)((int)local_134 + -1);
      } while (local_134 != (int *)0x0);
    }
    if ((param_1[0x5b] & 0x10000000U) != 0) {
      FUN_006d0ca0(local_170,param_1[10],0,0);
      local_14 = 4;
      local_134 = (int *)0x0;
      if (local_164 != (int *)0x0) {
        do {
          piVar12 = (int *)__RTDynamicCast(*(undefined4 *)(local_16c + (int)local_134 * 4),0,
                                           &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                           &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0)
          ;
          if (((piVar12 != (int *)0x0) && (piVar12 != param_1)) && (piVar12[10] == 0x1e)) {
            local_188 = DAT_00c7b640;
            local_180 = DAT_00c7b640;
            local_184 = DAT_00c7b644;
            local_17c = DAT_00c7b644;
            local_198 = 0;
            local_194 = 0;
            local_190 = 0;
            local_18c = 0;
            local_178 = 0;
            local_174 = 0;
            (**(code **)(*piVar12 + 0x24))(&local_198);
          }
          local_134 = (int *)((int)local_134 + 1);
        } while (local_134 < local_164);
      }
      local_14 = 0xffffffff;
      if (local_170[0] == '\0') {
        local_14 = 5;
        FUN_00a648b0(0,0);
      }
    }
  }
LAB_00470742:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

