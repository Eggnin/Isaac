/* Local J460 decompiler output.
 * VA: 0x0050bbe0
 * Entry: 0050bbe0
 * Dispatcher: 0x006c2990
 * Types: 16
 * Identities: 16.0.0,16.1.0,16.2.0
 * Evidence: dispatcher=0x006c2990; end=0x0050c370; instructions=493
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=16; identities=16.0.0,16.1.0,16.2.0;
   dispatcher=0x006c2990; end=0x0050c370; instructions=493 */

void __fastcall AI_0050bbe0(int *param_1)

{
  char cVar1;
  uint uVar2;
  char *pcVar3;
  int *piVar4;
  undefined4 uVar5;
  int *piVar6;
  int iVar7;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  uint uVar8;
  uint uVar9;
  float fVar10;
  float fVar11;
  undefined8 uVar12;
  float local_134;
  float local_130;
  undefined local_12c [8];
  undefined4 local_124;
  float local_120;
  float local_11c;
  undefined4 local_118;
  int local_114;
  undefined4 local_54;
  undefined4 local_50;
  undefined local_4c;
  undefined4 local_44;
  uint local_40;
  undefined4 local_3c;
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
  puStack_18 = &LAB_00af4245;
  local_1c = ExceptionList;
  uVar2 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_24 = uVar2;
  if (param_1[0x2d9] == 0) {
    param_1[0x2d9] = 4;
    puStack_20 = &stack0xfffffffc;
    goto LAB_0050c352;
  }
  FUN_006bec40(local_12c,0);
  if (param_1[0x2d9] == 4) {
    if (param_1[0xb] == 2) {
      FUN_007e33c0(local_12c,0x3f99999a,0,1);
      if (param_1[0x3c7] == -1) {
        iVar7 = FUN_006ac760();
        if ((iVar7 != 0) &&
           (iVar7 = FUN_006be840(), fVar10 = *(float *)(iVar7 + 0x33c) - (float)param_1[0xcf],
           fVar11 = *(float *)(iVar7 + 0x340) - (float)param_1[0xd0],
           fVar11 * fVar11 + fVar10 * fVar10 < DAT_00baabe0)) goto LAB_0050bcfa;
      }
      else {
        cVar1 = FUN_006d8260(9);
        if (cVar1 != '\0') {
LAB_0050bcfa:
          uVar12 = FUN_00435c70();
          (*(code *)((ulonglong)uVar12 >> 0x20))((int)uVar12);
        }
      }
      fVar10 = (float)param_1[0xdb] * DAT_00baa3e0;
    }
    else {
      if (param_1[0x3c7] == -1) {
        uVar5 = FUN_006be840();
        cVar1 = FUN_006d7d60(uVar5);
        if (cVar1 != '\0') goto LAB_0050bd4c;
        FUN_007e6300(1);
      }
      else {
LAB_0050bd4c:
        FUN_007e4940(local_12c,0);
        if (param_1[0x3c7] == -1) {
          if ((0 < param_1[0x2d4]) && (10 < *(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca]))
          goto LAB_0050bd9a;
        }
        else {
          cVar1 = FUN_006d8290(10);
          if (cVar1 != '\0') {
LAB_0050bd9a:
            uVar9 = FUN_006eef60(uVar2);
            FUN_006d6ba0(0x8f,0x3f800000,uVar9 % 100 + 0x2d,0,0x3f800000);
          }
        }
      }
      fVar10 = (float)param_1[0xdb] * DAT_00baa3a4;
    }
    param_1[0xdb] = (int)fVar10;
    local_40 = 0xf;
    local_44 = 8;
    local_54._0_1_ = s_WalkVert_00b1dd18[0];
    local_54._1_1_ = s_WalkVert_00b1dd18[1];
    local_54._2_1_ = s_WalkVert_00b1dd18[2];
    local_54._3_1_ = s_WalkVert_00b1dd18[3];
    local_50._0_1_ = s_WalkVert_00b1dd18[4];
    local_50._1_1_ = s_WalkVert_00b1dd18[5];
    local_50._2_1_ = s_WalkVert_00b1dd18[6];
    local_50._3_1_ = s_WalkVert_00b1dd18[7];
    local_4c = 0;
    local_28 = 0xf;
    local_2c = 8;
    local_3c._0_1_ = s_WalkHori_00b1dd30[0];
    local_3c._1_1_ = s_WalkHori_00b1dd30[1];
    local_3c._2_1_ = s_WalkHori_00b1dd30[2];
    local_3c._3_1_ = s_WalkHori_00b1dd30[3];
    local_38._0_1_ = s_WalkHori_00b1dd30[4];
    local_38._1_1_ = s_WalkHori_00b1dd30[5];
    local_38._2_1_ = s_WalkHori_00b1dd30[6];
    local_38._3_1_ = s_WalkHori_00b1dd30[7];
    local_34 = 0;
    local_14._0_1_ = 1;
    local_14._1_3_ = 0;
    FUN_006c1330(&local_3c,&local_54,0x3dcccccd);
    local_14 = (uint)local_14._1_3_ << 8;
    if (0xf < local_28) {
      uVar8 = local_28 + 1;
      uVar9 = local_3c;
      if (0xfff < uVar8) {
        uVar9 = *(uint *)(local_3c - 4);
        uVar8 = local_28 + 0x24;
        if (0x1f < (local_3c - uVar9) - 4) goto LAB_0050bebd;
      }
      FUN_00aef15c(uVar9,uVar8);
    }
    local_14 = -1;
    local_2c = 0;
    local_28 = 0xf;
    local_3c = local_3c & 0xffffff00;
    if (0xf < local_40) {
      uVar9 = local_40 + 1;
      iVar7 = local_54;
      if (0xfff < uVar9) {
        iVar7 = *(int *)(local_54 + -4);
        uVar9 = local_40 + 0x24;
        if (0x1f < (local_54 - iVar7) - 4U) {
LAB_0050bebd:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar7,uVar9);
    }
    if ((param_1[0x2d4] < 1) || (pcVar3 = "WalkOpenEye", param_1[0xb] == 2)) {
      pcVar3 = "Walk";
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      cVar1 = FUN_0040aaf0(pcVar3,1);
      uVar5 = extraout_ECX_00;
      if ((cVar1 != '\0') && (param_1[0x27] != 0)) {
        FUN_00408e00();
        uVar5 = extraout_ECX_01;
      }
    }
    else {
      FUN_0040a940(pcVar3,0);
      uVar5 = extraout_ECX;
    }
    if (param_1[0x3c7] == -1) {
      if ((*(char *)(param_1 + 100) != '\0') && (uVar9 = FUN_006eef60(), uVar9 % 300 == 0))
      goto LAB_0050bf6f;
    }
    else {
      cVar1 = FUN_00956110(9,param_1[0x3c7],param_1,uVar5);
      if (cVar1 != '\0') {
LAB_0050bf6f:
        if (param_1[0xb] != 2) {
          FUN_0040a940("Explode",0);
          param_1[0x2d9] = 5;
        }
      }
    }
  }
  else if ((param_1[0x2d9] == 5) &&
          ((param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4), param_1[0x27] == 0 ||
           (*(char *)(param_1 + 0x2b) == '\0')))) {
    piVar6 = param_1 + 0xcf;
    FUN_006ff2a0(piVar6,0x42200000,0x42700000,1,param_1,DAT_00c79100,DAT_00c79104,DAT_00c79108,
                 DAT_00c7910c,4,0,0);
    uVar5 = FUN_006eef60(uVar2);
    FUN_00428b20(1000,1,piVar6,&DAT_00c7b640,0,0,uVar5);
    uVar5 = FUN_006eef60();
    piVar4 = (int *)FUN_00428b20(1000,0x12,piVar6,&DAT_00c7b640,0,0,uVar5);
    (**(code **)(*piVar4 + 0xc))();
    AI_0043ef30();
    iVar7 = FUN_006d8240();
    local_118 = DAT_00baa7b8;
    if (0 < iVar7) {
      local_118 = DAT_00baa81c;
    }
    local_114 = 0;
    FUN_006cb2e0(piVar6,&local_118,6,extraout_ECX_02);
    uVar5 = FUN_00435c70();
    (**(code **)(*param_1 + 0x24))(uVar5);
  }
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    if (param_1[0xb] == 2) {
      if ((param_1[0x5a] & 0x1000000U) == 0) {
        piVar6 = param_1 + 0xcf;
        FUN_006ff2a0(piVar6,0x42200000,0x42700000,1,param_1,DAT_00c79100,DAT_00c79104,DAT_00c79108,
                     DAT_00c7910c,4,0,0);
        uVar5 = FUN_006eef60(uVar2);
        FUN_00428b20(1000,1,piVar6,&DAT_00c7b640,0,0,uVar5);
        uVar5 = FUN_006eef60();
        piVar6 = (int *)FUN_00428b20(1000,0x12,piVar6,&DAT_00c7b640,0,0,uVar5);
        (**(code **)(*piVar6 + 0xc))();
      }
    }
    else if (param_1[0xb] == 1) {
      uVar5 = DAT_00baa81c;
      iVar7 = FUN_006d8240();
      local_118 = uVar5;
      if (iVar7 < 1) {
        local_118 = DAT_00baa7b8;
      }
      local_114 = 0;
      uVar5 = AI_0043ef30();
      FUN_006cb2e0(param_1 + 0xcf,&local_118,7,uVar5);
      uVar5 = FUN_006eef60();
      FUN_00428b20(4,3,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar5);
    }
    else if (DAT_00baadc0 < (float)param_1[0xe0]) {
      iVar7 = 4 - *(short *)((int)param_1 + 0xc76);
      local_114 = 0;
      if (0 < iVar7) {
        local_114 = iVar7;
      }
      if (0 < local_114) {
        do {
          uVar9 = FUN_006eef60(uVar2);
          local_124 = 0xd;
          if (uVar9 % 0xb < 8) {
            if (uVar9 % 0xb == 7) {
              local_124 = 0xe;
            }
          }
          else {
            local_124 = 0x12;
          }
          iVar7 = FUN_006eef60(uVar2);
          local_11c = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) *
                      DAT_00ba9ff4 * DAT_00baa708;
          local_11c = local_11c + local_11c;
          iVar7 = FUN_006eef60();
          local_120 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) *
                      DAT_00ba9ff4 * DAT_00baa7a4;
          uVar5 = FUN_006eef60();
          fVar10 = local_11c;
          FUN_0041d540();
          local_134 = fVar10 * local_120 + (float)param_1[0xcf];
          fVar10 = local_11c;
          FUN_0041d520();
          local_130 = fVar10 * local_120 + (float)param_1[0xd0];
          iVar7 = FUN_00428b20(local_124,0,&local_134,&DAT_00c7b640,param_1,0,uVar5);
          *(uint *)(iVar7 + 0x168) = *(uint *)(iVar7 + 0x168) & 0xfffffffb;
          local_114 = local_114 + -1;
          *(undefined4 *)(iVar7 + 0x16c) = *(undefined4 *)(iVar7 + 0x16c);
        } while (local_114 != 0);
      }
    }
  }
LAB_0050c352:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

