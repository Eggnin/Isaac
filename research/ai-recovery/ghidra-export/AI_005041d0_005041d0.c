/* Local J460 decompiler output.
 * VA: 0x005041d0
 * Entry: 005041d0
 * Dispatcher: 0x006c2990
 * Types: 830
 * Identities: 830.0.0,830.10.0
 * Evidence: dispatcher=0x006c2990; end=0x00504a40; instructions=512
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=830; identities=830.0.0,830.10.0;
   dispatcher=0x006c2990; end=0x00504a40; instructions=512 */

void __fastcall AI_005041d0(int *param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  char cVar8;
  uint uVar9;
  undefined4 uVar10;
  int *piVar11;
  int iVar12;
  float *pfVar13;
  uint uVar14;
  char *pcVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  undefined4 uVar19;
  undefined4 uVar20;
  undefined4 uVar21;
  int local_cc [8];
  undefined4 local_ac;
  undefined4 uStack_a8;
  undefined4 local_a4;
  int local_a0 [8];
  undefined4 local_80;
  undefined4 uStack_7c;
  undefined4 local_78;
  undefined local_74 [4];
  float local_70;
  float local_6c;
  float local_68;
  int local_54;
  undefined4 local_50;
  undefined local_4c;
  undefined4 local_44;
  uint local_40;
  uint local_3c;
  undefined4 local_38;
  undefined local_34;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af413d;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar12 = param_1[0x2d9];
  if (param_1[0xb] == 10) {
    if (iVar12 == 0) {
      param_1[0x5b] = param_1[0x5b] | 0x400;
      param_1[0x2d9] = 4;
      param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 0x20d0011;
      puStack_20 = &stack0xfffffffc;
      FUN_0040a380(&DAT_00b1d6fc,0);
      if (param_1[0x1f] != 0) {
        FUN_00408e00();
      }
      iVar7 = _UNK_00bac7bc;
      iVar6 = _UNK_00bac7b8;
      iVar5 = _UNK_00bac7b4;
      iVar4 = _DAT_00bac7b0;
      iVar3 = _UNK_00bac5fc;
      iVar2 = _UNK_00bac5f8;
      iVar1 = _UNK_00bac5f4;
      iVar12 = _DAT_00bac5f0;
      local_80 = 0;
      uStack_7c = 0;
      local_78 = 0;
      if (param_1 + 0x79 != local_a0) {
        *(undefined8 *)(param_1 + 0x81) = 0;
        param_1[0x79] = iVar4;
        param_1[0x7a] = iVar5;
        param_1[0x7b] = iVar6;
        param_1[0x7c] = iVar7;
        param_1[0x83] = 0;
        param_1[0x7d] = iVar12;
        param_1[0x7e] = iVar1;
        param_1[0x7f] = iVar2;
        param_1[0x80] = iVar3;
      }
      param_1[0x30d] = 0x41000000;
      param_1[0x2f0] = 8;
      *(undefined *)(param_1 + 0x5d) = 1;
    }
    else {
      puStack_20 = &stack0xfffffffc;
      if (0.0 < (float)param_1[5]) {
        local_68 = DAT_00baa454;
        puStack_20 = &stack0xfffffffc;
        uVar9 = FUN_006eef60(local_24);
        fVar17 = DAT_00baa454;
        fVar18 = local_68;
        if (uVar9 % 3 == 0) {
          fVar18 = DAT_00baa630;
        }
        fVar16 = DAT_00baa75c;
        if (((param_1[6] & 4U) != 0) || (fVar16 = fVar18, 0.0 < fVar18)) {
          fVar18 = (float)param_1[0xe0] - fVar16;
          if ((float)param_1[0xe0] - fVar16 <= DAT_00baa454) {
            fVar18 = DAT_00baa454;
          }
          param_1[0xe0] = (int)fVar18;
        }
        else {
          fVar18 = (float)param_1[0xe0];
        }
        param_1[3] = param_1[2];
        param_1[5] = 0;
        param_1[6] = 0;
        param_1[7] = 0;
        if (fVar18 <= fVar17) {
          uVar10 = FUN_00435c70();
          (**(code **)(*param_1 + 0x24))(uVar10);
          goto LAB_00504a1f;
        }
      }
      param_1[0xd4] = -0x3e900000;
      param_1[0x61] = 6;
      if (*(char *)(param_1 + 100) != '\0') {
        local_68 = 6.992479e-43;
        FUN_00956780();
        FUN_0092dc30(local_68,0x3f000000,2,0,0x3fc00000,0);
        param_1[0x2f0] = param_1[0x2f0] + -1;
        if (param_1[0x2f0] < 1) {
          uVar10 = FUN_00435c70();
          (**(code **)(*param_1 + 0x24))(uVar10);
        }
      }
      local_70 = (float)param_1[0xd8];
      if (((NAN(local_70) || NAN(DAT_00c7b640)) == (local_70 == DAT_00c7b640)) ||
         ((NAN((float)param_1[0xd9]) || NAN(DAT_00c7b644)) == ((float)param_1[0xd9] == DAT_00c7b644)
         )) {
        local_68 = (float)param_1[0xd9];
      }
      else {
        piVar11 = (int *)FUN_0067f070(&local_6c);
        param_1[0xd8] = *piVar11;
        local_68 = (float)piVar11[1];
        param_1[0xd9] = (int)local_68;
        local_70 = (float)param_1[0xd8];
      }
      fVar16 = local_70 * local_70 + local_68 * local_68;
      FUN_00435a50();
      fVar17 = local_70;
      fVar18 = local_68;
      if (0.0 < fVar16) {
        fVar17 = local_70 * ((float)param_1[0x30d] / fVar16);
        fVar18 = local_68 * ((float)param_1[0x30d] / fVar16);
      }
      param_1[0xd9] = (int)fVar18;
      param_1[0xd8] = (int)fVar17;
      fVar17 = fVar18 * fVar18 + fVar17 * fVar17 + (float)param_1[0x2ed] * (float)param_1[0x2ed];
      FUN_00435a50();
      fVar18 = fVar17 / DAT_00baa81c;
      if (fVar17 / DAT_00baa81c <= DAT_00baa120) {
        fVar18 = DAT_00baa120;
      }
      if (DAT_00baa630 <= fVar18) {
        fVar18 = DAT_00baa630;
      }
      param_1[0x53] = (int)fVar18;
    }
  }
  else {
    if (iVar12 == 0) {
      param_1[0x2d9] = 4;
      FUN_0040a380("WalkVert",0);
      iVar7 = _UNK_00bac7bc;
      iVar6 = _UNK_00bac7b8;
      iVar5 = _UNK_00bac7b4;
      iVar4 = _DAT_00bac7b0;
      iVar3 = _UNK_00bac5fc;
      iVar2 = _UNK_00bac5f8;
      iVar1 = _UNK_00bac5f4;
      iVar12 = _DAT_00bac5f0;
      local_ac = 0;
      uStack_a8 = 0;
      local_a4 = 0;
      if (param_1 + 0x79 != local_cc) {
        *(undefined8 *)(param_1 + 0x81) = 0;
        param_1[0x79] = iVar4;
        param_1[0x7a] = iVar5;
        param_1[0x7b] = iVar6;
        param_1[0x7c] = iVar7;
        param_1[0x83] = 0;
        param_1[0x7d] = iVar12;
        param_1[0x7e] = iVar1;
        param_1[0x7f] = iVar2;
        param_1[0x80] = iVar3;
      }
      goto LAB_00504a1f;
    }
    if (iVar12 != 4) {
      puStack_20 = &stack0xfffffffc;
      if (iVar12 == 8) {
        param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa304);
        puStack_20 = &stack0xfffffffc;
        if (param_1[0x1f] != 0) {
          puStack_20 = &stack0xfffffffc;
          cVar8 = FUN_0040add0("Shoot");
          if (cVar8 != '\0') {
            FUN_006d6ba0(0xf9,0x3f800000,10,0,0x3f4ccccd);
            iVar12 = FUN_006be840();
            local_6c = *(float *)(iVar12 + 0x33c) - (float)param_1[0xcf];
            local_68 = *(float *)(iVar12 + 0x340) - (float)param_1[0xd0];
            pfVar13 = (float *)FUN_00a10030(local_74);
            local_6c = *pfVar13 * DAT_00baa7e8;
            local_68 = pfVar13[1] * DAT_00baa7e8;
            uVar10 = FUN_006eef60();
            piVar11 = (int *)FUN_00428b20(0x33e,10,param_1 + 0xcf,&local_6c,param_1,0,uVar10);
            (**(code **)(*piVar11 + 0xc))();
          }
          if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) goto LAB_00504a1f;
        }
        param_1[0x2d9] = 4;
      }
      goto LAB_00504a1f;
    }
    local_40 = 0xf;
    local_44 = 8;
    local_54 = s_WalkVert_00b1dd18._0_4_;
    local_50 = s_WalkVert_00b1dd18._4_4_;
    local_4c = 0;
    local_28 = 0xf;
    local_2c = 8;
    local_3c = s_WalkHori_00b1dd30._0_4_;
    local_38 = s_WalkHori_00b1dd30._4_4_;
    local_34 = 0;
    local_14._0_1_ = 1;
    local_14._1_3_ = 0;
    puStack_20 = &stack0xfffffffc;
    FUN_006c1330(&local_3c,&local_54,0x3dcccccd);
    local_14 = (uint)local_14._1_3_ << 8;
    if (0xf < local_28) {
      uVar14 = local_28 + 1;
      uVar9 = local_3c;
      if (0xfff < uVar14) {
        uVar9 = *(uint *)(local_3c - 4);
        uVar14 = local_28 + 0x24;
        if (0x1f < (local_3c - uVar9) - 4) goto LAB_0050472a;
      }
      FUN_00aef15c(uVar9,uVar14);
    }
    local_14 = -1;
    local_2c = 0;
    local_28 = 0xf;
    local_3c = local_3c & 0xffffff00;
    if (0xf < local_40) {
      uVar9 = local_40 + 1;
      iVar12 = local_54;
      if (0xfff < uVar9) {
        iVar12 = *(int *)(local_54 + -4);
        uVar9 = local_40 + 0x24;
        if (0x1f < (local_54 - iVar12) - 4U) {
LAB_0050472a:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar12,uVar9);
    }
    if ((param_1[0x5a] & 0x1000800U) == 0) {
      uVar21 = 1;
      uVar20 = 900;
      uVar19 = 0x3e99999a;
      uVar10 = FUN_006bec40(&local_6c,0);
      FUN_007e33c0(uVar10,uVar19,uVar20,uVar21);
      if (0 < param_1[0x2e8]) {
        param_1[0x2e8] = param_1[0x2e8] + -1;
      }
      iVar12 = FUN_006be840();
      local_68 = *(float *)(iVar12 + 0x33c);
      local_70 = *(float *)(iVar12 + 0x340);
      if (param_1[0x2e8] < 1) {
        fVar18 = ((float)param_1[0xd0] - local_70) * ((float)param_1[0xd0] - local_70) +
                 ((float)param_1[0xcf] - local_68) * ((float)param_1[0xcf] - local_68);
        FUN_00435a50();
        if (((fVar18 < DAT_00baaa00) && (uVar9 = FUN_006eef60(), uVar9 % 0xf == 0)) ||
           (uVar9 = FUN_006eef60(), uVar9 % 0x78 == 0)) {
          FUN_00452bf0(&local_54);
          local_14 = 2;
          cVar8 = FUN_0040cae0("WalkHori",8);
          pcVar15 = "AttackHori";
          if (cVar8 == '\0') {
            pcVar15 = "AttackVert";
          }
          FUN_0040a380(pcVar15,0);
          local_14 = -1;
          if (0xf < local_40) {
            uVar9 = local_40 + 1;
            iVar12 = local_54;
            if (0xfff < uVar9) {
              iVar12 = *(int *)(local_54 + -4);
              uVar9 = local_40 + 0x24;
              if (0x1f < (local_54 - iVar12) - 4U) {
                    /* WARNING: Subroutine does not return */
                _invalid_parameter_noinfo_noreturn();
              }
            }
            FUN_00aef15c(iVar12,uVar9);
          }
          param_1[0x2d9] = 8;
          local_6c = local_68 - (float)param_1[0xcf];
          local_68 = local_70 - (float)param_1[0xd0];
          pfVar13 = (float *)FUN_00a10030(local_74);
          fVar18 = pfVar13[1];
          fVar17 = *pfVar13 * DAT_00baa834;
          param_1[0x2e8] = 0x78;
          fVar18 = fVar18 * DAT_00baa834;
          param_1[0xcd] = (int)fVar17;
          param_1[0xce] = (int)fVar18;
        }
      }
    }
    else {
      iVar12 = FUN_006be840();
      local_6c = *(float *)(iVar12 + 0x33c);
      local_68 = *(float *)(iVar12 + 0x340);
      FUN_007e4940(&local_6c,0);
      fVar18 = DAT_00baa3a4;
      fVar17 = (float)param_1[0xdb] * DAT_00baa3a4;
      param_1[0xdb] = (int)fVar17;
      if (0 < param_1[0x2d4]) {
        param_1[0xdb] = (int)(fVar17 * fVar18);
      }
    }
    if ((*(char *)(param_1 + 0x2d0) != '\0') && (uVar9 = FUN_006eef60(), uVar9 % 3 == 0)) {
      FUN_006d6ba0(0x74,0x3f800000,0x3c,0,0x3f800000);
    }
  }
LAB_00504a1f:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

