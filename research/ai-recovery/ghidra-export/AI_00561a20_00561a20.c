/* Local J460 decompiler output.
 * VA: 0x00561a20
 * Entry: 00561a20
 * Dispatcher: 0x006c2990
 * Types: 874
 * Identities: 874.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00562290; instructions=511
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=874; identities=874.0.0; dispatcher=0x006c2990;
   end=0x00562290; instructions=511 */

void __fastcall AI_00561a20(int param_1)

{
  undefined4 uVar1;
  undefined auVar2 [16];
  char cVar3;
  uint uVar4;
  int iVar5;
  undefined4 uVar6;
  int *piVar7;
  int iVar8;
  undefined **ppuVar9;
  float fVar10;
  float fVar11;
  undefined8 uVar12;
  undefined local_13c [8];
  float local_134;
  float local_130;
  undefined *local_12c;
  undefined *local_128;
  undefined *local_124;
  float local_120;
  float local_11c;
  char local_115;
  undefined local_114 [8];
  undefined4 local_10c;
  undefined4 local_108;
  undefined4 local_d8;
  undefined4 uStack_d4;
  undefined4 uStack_d0;
  undefined4 uStack_cc;
  uint local_bc;
  undefined4 local_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 local_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  uint uStack_50;
  undefined4 local_4c;
  undefined4 local_48;
  uint local_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined local_30 [5];
  undefined auStack_2b [2];
  undefined uStack_29;
  undefined4 uStack_28;
  undefined uStack_24;
  undefined3 uStack_23;
  uint local_20;
  uint local_1c;
  uint local_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = -1;
  puStack_c = &LAB_00af4e65;
  local_10 = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  local_14 = uVar4;
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    goto LAB_00562265;
  }
  FUN_006bec40(local_13c,0);
  iVar5 = *(int *)(param_1 + 0xb64);
  local_115 = '\0';
  if (iVar5 == 4) {
    FUN_007e33c0(local_13c,0x3f99999a,0,1);
    cVar3 = FUN_006ac710(5,0);
    if ((cVar3 != '\0') &&
       (iVar5 = FUN_006be840(), fVar10 = *(float *)(iVar5 + 0x33c) - *(float *)(param_1 + 0x33c),
       fVar11 = *(float *)(iVar5 + 0x340) - *(float *)(param_1 + 0x340),
       fVar11 * fVar11 + fVar10 * fVar10 < DAT_00baabe0)) {
      uVar12 = FUN_00435c70(uVar4);
      (*(code *)((ulonglong)uVar12 >> 0x20))((int)uVar12);
      local_115 = '\x01';
    }
    auVar2 = _local_30;
    local_44 = 0xf;
    local_48 = 8;
    uStack_50 = uStack_50 & 0xffffff00;
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3e0;
    uStack_58._0_1_ = s_WalkVert_00b1dd18[0];
    uStack_58._1_1_ = s_WalkVert_00b1dd18[1];
    uStack_58._2_1_ = s_WalkVert_00b1dd18[2];
    uStack_58._3_1_ = s_WalkVert_00b1dd18[3];
    uStack_54._0_1_ = s_WalkVert_00b1dd18[4];
    uStack_54._1_1_ = s_WalkVert_00b1dd18[5];
    uStack_54._2_1_ = s_WalkVert_00b1dd18[6];
    uStack_54._3_1_ = s_WalkVert_00b1dd18[7];
    local_18 = 0xf;
    local_1c = 8;
    local_30[4] = s_WalkHori_00b1dd30[0];
    auStack_2b[0] = s_WalkHori_00b1dd30[1];
    auStack_2b[1] = s_WalkHori_00b1dd30[2];
    uStack_29 = s_WalkHori_00b1dd30[3];
    uStack_28._0_1_ = s_WalkHori_00b1dd30[4];
    uStack_28._1_1_ = s_WalkHori_00b1dd30[5];
    uStack_28._2_1_ = s_WalkHori_00b1dd30[6];
    uStack_28._3_1_ = s_WalkHori_00b1dd30[7];
    uStack_23 = auVar2._13_3_;
    uStack_24 = 0;
    local_8._0_1_ = 1;
    local_8._1_3_ = 0;
    FUN_006c1330(local_30 + 4,&uStack_58,0x3dcccccd);
    local_8 = (uint)local_8._1_3_ << 8;
    if (0xf < local_18) {
      uVar4 = local_18 + 1;
      iVar5 = stack0xffffffd4;
      if (0xfff < uVar4) {
        iVar5 = *(int *)(stack0xffffffd4 + -4);
        uVar4 = local_18 + 0x24;
        if (0x1f < (stack0xffffffd4 - iVar5) - 4U) goto LAB_00561c0c;
      }
      FUN_00aef15c(iVar5,uVar4);
    }
    local_8 = -1;
    local_1c = 0;
    local_18 = 0xf;
    local_30[4] = 0;
    if (0xf < local_44) {
      uVar4 = local_44 + 1;
      iVar5 = uStack_58;
      if (0xfff < uVar4) {
        iVar5 = *(int *)(uStack_58 + -4);
        uVar4 = local_44 + 0x24;
        if (0x1f < (uStack_58 - iVar5) - 4U) {
LAB_00561c0c:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar5,uVar4);
    }
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      cVar3 = FUN_0040aaf0("HeadWalk",1);
      if ((cVar3 != '\0') && (*(int *)(param_1 + 0x9c) != 0)) {
        FUN_00408e00();
      }
    }
    else {
      FUN_0040a940("HeadWalk",0);
    }
    if (*(int *)(param_1 + 0xbc0) < 1) {
      if (*(int *)(param_1 + 0xf1c) == -1) {
        if ((*(char *)(param_1 + 0xb40) != '\0') && (uVar4 = FUN_006eef60(), (uVar4 & 0xf) == 0))
        goto LAB_00561cb7;
      }
      else {
        cVar3 = FUN_006cae60(0,7);
        if (cVar3 != '\0') {
LAB_00561cb7:
          *(undefined4 *)(param_1 + 0xb64) = 8;
          FUN_006d6ba0(0x9e,0x3f800000,2,0,0x3f800000);
          if (*(char *)(param_1 + 0x148) == '\0') {
            local_12c = (undefined *)0x3f800000;
            local_128 = (undefined *)0x0;
          }
          else {
            local_124 = &DAT_bf800000;
            local_120 = 0.0;
          }
          ppuVar9 = &local_12c;
          if (*(char *)(param_1 + 0x148) != '\0') {
            ppuVar9 = &local_124;
          }
          local_12c = *ppuVar9;
          local_128 = ppuVar9[1];
          iVar5 = FUN_006eef60();
          local_11c = ((float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa950 - DAT_00baa8d0) * DAT_00baa088;
          fVar10 = local_11c;
          FUN_0041d540();
          local_120 = fVar10;
          FUN_0041d520();
          fVar10 = local_120 * (float)local_128;
          local_120 = local_120 * (float)local_12c - local_11c * (float)local_128;
          local_11c = local_11c * (float)local_12c + fVar10;
          iVar5 = FUN_006eef60();
          fVar10 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa81c + DAT_00baa81c;
          local_12c = (undefined *)(local_120 * fVar10);
          local_128 = (undefined *)(local_11c * fVar10);
          uVar6 = FUN_006eef60();
          piVar7 = (int *)FUN_00428b20(1000,0x8d,param_1 + 0x33c,&local_12c,param_1,1,uVar6);
          piVar7[0x117] = 0xb4;
          piVar7[0x118] = 0xb4;
          (**(code **)(*piVar7 + 0xc))();
          uVar6 = FUN_006eef60();
          iVar5 = FUN_00428b20(1000,2,param_1 + 0x33c,param_1 + 0x360,0,1,uVar6);
          iVar8 = FUN_006eef60();
          *(float *)(iVar5 + 0xec) =
               (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baab30;
          FUN_0040a380(&DAT_00b1d534,0);
          local_6c = _DAT_00bac7b0;
          uStack_68 = _UNK_00bac7b4;
          uStack_64 = _UNK_00bac7b8;
          uStack_60 = _UNK_00bac7bc;
          *(undefined4 *)(iVar5 + 0x34c) = 0;
          uStack_50 = _UNK_00bac58c;
          uVar6 = _UNK_00bac588;
          uStack_58 = _UNK_00bac584;
          local_5c = _DAT_00bac580;
          *(undefined **)(iVar5 + 0x350) = &DAT_c1c80000;
          *(undefined4 *)(iVar5 + 0x354) = 500;
          uVar1 = _UNK_00bac588;
          UNK_00bac588 = (char)uVar6;
          UNK_00bac589 = SUB41(uVar6,1);
          UNK_00bac58a = SUB41(uVar6,2);
          UNK_00bac58b = SUB41(uVar6,3);
          uStack_54._0_1_ = UNK_00bac588;
          uStack_54._1_1_ = UNK_00bac589;
          uStack_54._2_1_ = UNK_00bac58a;
          uStack_54._3_1_ = UNK_00bac58b;
          local_4c = 0;
          local_48 = 0;
          local_44 = 0;
          _UNK_00bac588 = uVar1;
          FUN_004073d0(&local_6c);
        }
      }
    }
  }
  else if (iVar5 == 8) {
    FUN_007e33c0(local_13c,0x3f800000,0,1);
    auVar2 = _local_30;
    local_44 = 0xf;
    local_48 = 8;
    uStack_50 = uStack_50 & 0xffffff00;
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3e0;
    uStack_58._0_1_ = s_WalkVert_00b1dd18[0];
    uStack_58._1_1_ = s_WalkVert_00b1dd18[1];
    uStack_58._2_1_ = s_WalkVert_00b1dd18[2];
    uStack_58._3_1_ = s_WalkVert_00b1dd18[3];
    uStack_54._0_1_ = s_WalkVert_00b1dd18[4];
    uStack_54._1_1_ = s_WalkVert_00b1dd18[5];
    uStack_54._2_1_ = s_WalkVert_00b1dd18[6];
    uStack_54._3_1_ = s_WalkVert_00b1dd18[7];
    local_18 = 0xf;
    local_1c = 8;
    local_30[4] = s_WalkHori_00b1dd30[0];
    auStack_2b[0] = s_WalkHori_00b1dd30[1];
    auStack_2b[1] = s_WalkHori_00b1dd30[2];
    uStack_29 = s_WalkHori_00b1dd30[3];
    uStack_28._0_1_ = s_WalkHori_00b1dd30[4];
    uStack_28._1_1_ = s_WalkHori_00b1dd30[5];
    uStack_28._2_1_ = s_WalkHori_00b1dd30[6];
    uStack_28._3_1_ = s_WalkHori_00b1dd30[7];
    uStack_23 = auVar2._13_3_;
    uStack_24 = 0;
    local_8._0_1_ = 3;
    local_8._1_3_ = 0;
    FUN_006c1330(local_30 + 4,&uStack_58,0x3dcccccd);
    local_8 = CONCAT31(local_8._1_3_,2);
    if (0xf < local_18) {
      uVar4 = local_18 + 1;
      iVar5 = stack0xffffffd4;
      if (0xfff < uVar4) {
        iVar5 = *(int *)(stack0xffffffd4 + -4);
        uVar4 = local_18 + 0x24;
        if (0x1f < (stack0xffffffd4 - iVar5) - 4U) goto LAB_00562061;
      }
      FUN_00aef15c(iVar5,uVar4);
    }
    local_8 = -1;
    local_1c = 0;
    local_18 = 0xf;
    local_30[4] = 0;
    if (0xf < local_44) {
      uVar4 = local_44 + 1;
      iVar5 = uStack_58;
      if (0xfff < uVar4) {
        iVar5 = *(int *)(uStack_58 + -4);
        uVar4 = local_44 + 0x24;
        if (0x1f < (uStack_58 - iVar5) - 4U) {
LAB_00562061:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar5,uVar4);
    }
    FUN_0040a940("HeadAttack",0);
    if ((*(int *)(param_1 + 0x9c) == 0) || (*(char *)(param_1 + 0xac) == '\0')) {
      *(undefined4 *)(param_1 + 0xb64) = 4;
    }
  }
  else if ((iVar5 == 5) &&
          ((*(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4,
           *(int *)(param_1 + 0x7c) == 0 || (*(char *)(param_1 + 0x8c) == '\0')))) {
    uVar12 = FUN_00435c70(uVar4);
    (*(code *)((ulonglong)uVar12 >> 0x20))((int)uVar12);
  }
  if ((*(char *)(param_1 + 0x173) != '\0') &&
     (uVar4 = *(uint *)(param_1 + 0x168) & 0x1000000, uVar4 == 0)) {
    if (local_115 == '\0') {
      AI_0043ef30();
      local_134 = *(float *)(param_1 + 0x360) * DAT_00baa1f8;
      local_130 = *(float *)(param_1 + 0x364) * DAT_00baa1f8;
      local_bc = local_bc | 2;
      local_d8 = _DAT_00bac520;
      uStack_d4 = _UNK_00bac524;
      uStack_d0 = _UNK_00bac528;
      uStack_cc = _UNK_00bac52c;
      local_108 = 0x3e99999a;
      local_10c = 0xc0a00000;
      fVar10 = local_130 * local_130 + local_134 * local_134;
      local_120 = local_134;
      local_11c = local_130;
      FUN_00435a50();
      if ((DAT_00baa75c < fVar10) && (0.0 < fVar10)) {
        local_130 = (DAT_00baa75c / fVar10) * local_11c;
        local_134 = (DAT_00baa75c / fVar10) * local_120;
      }
      FUN_006cb2e0(param_1 + 0x33c,&local_134,0,local_114);
    }
    else {
      _local_30 = ZEXT816(0);
      local_40 = _DAT_00bac4f0;
      uStack_3c = _UNK_00bac4f4;
      uStack_38 = _UNK_00bac4f8;
      uStack_34 = _UNK_00bac4fc;
      local_20 = uVar4;
      local_1c = uVar4;
      local_18 = uVar4;
      FUN_00700060(param_1 + 0x33c,0x42200000,0,0,0,0,&local_40,param_1,0x3f800000,1,4,0,0);
    }
  }
LAB_00562265:
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

