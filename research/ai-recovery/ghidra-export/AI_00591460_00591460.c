/* Local J460 decompiler output.
 * VA: 0x00591460
 * Entry: 00591460
 * Dispatcher: 0x006c2990
 * Types: 904
 * Identities: 904.0.0,904.1.0,904.10.0
 * Evidence: dispatcher=0x006c2990; end=0x00591797; instructions=178
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=904; identities=904.0.0,904.1.0,904.10.0;
   dispatcher=0x006c2990; end=0x00591797; instructions=178 */

void __fastcall AI_00591460(int *param_1)

{
  code *pcVar1;
  uint3 uVar2;
  char cVar3;
  int iVar4;
  undefined4 uVar5;
  int *piVar6;
  uint uVar7;
  int extraout_ECX;
  int *extraout_EDX;
  int **ppiVar8;
  int iVar9;
  int **ppiVar10;
  float fVar11;
  int **local_12c;
  int **local_128;
  int local_120;
  int *local_11c;
  char local_118 [4];
  undefined8 local_114;
  uint local_10c;
  float local_108;
  float local_104;
  float local_100;
  int *local_fc;
  int **local_f8;
  int **local_f4;
  int **local_f0;
  undefined local_ec [172];
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined local_30 [16];
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = -1;
  puStack_c = &LAB_00af566b;
  local_10 = ExceptionList;
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  iVar9 = param_1[0xb];
  local_11c = param_1;
  if (iVar9 == 0) {
    FUN_0058ec70();
    goto LAB_00591ca0;
  }
  if (iVar9 == 1) {
    if (param_1[0x2d9] == 0) {
      param_1[0x62] = 0;
      FUN_0040a380("Appear",0);
      param_1[0x2d9] = 3;
      param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 0x11;
      param_1[0x5b] = param_1[0x5b];
    }
    else if (param_1[0x2d9] == 3) {
      if ((param_1[0x1f] != 0) && (cVar3 = FUN_0040add0("Sound"), cVar3 != '\0')) {
        FUN_006d6ba0(499,0x3f800000,2,0,0x3f800000);
        param_1[0x62] = 4;
      }
      param_1[0xd8] = (int)((float)param_1[0xcd] - (float)param_1[0xcf]);
      param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
    }
    if (*(char *)((int)param_1 + 0x173) == '\0') {
      if ((float)param_1[5] <= 0.0) goto LAB_00591ca0;
      if ((param_1[6] & 0x1000004U) != 0) {
        *(undefined *)((int)param_1 + 0x173) = 1;
      }
      param_1[3] = param_1[2];
      param_1[5] = 0;
      param_1[6] = 0;
      param_1[7] = 0;
      if (*(char *)((int)param_1 + 0x173) == '\0') goto LAB_00591ca0;
    }
    iVar9 = 7;
    do {
      iVar4 = FUN_006eef60();
      local_f8 = (int **)((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baab30 * DAT_00baa088);
      ppiVar8 = local_f8;
      FUN_0041d540();
      local_f4 = ppiVar8;
      ppiVar8 = local_f8;
      FUN_0041d520();
      local_f0 = ppiVar8;
      iVar4 = FUN_006eef60();
      fVar11 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4;
      local_104 = fVar11 * (float)local_f0 * DAT_00baa834 + (float)param_1[0xd0];
      local_108 = fVar11 * (float)local_f4 * DAT_00baa834 + (float)param_1[0xcf];
      uVar5 = FUN_006eef60();
      local_100 = (float)local_f4 * DAT_00baa784;
      local_fc = (int *)((float)local_f0 * DAT_00baa784);
      piVar6 = (int *)FUN_00428b20(1000,4,&local_108,&local_100,0,0x10007,uVar5);
      (**(code **)(*piVar6 + 0xc))();
      iVar9 = iVar9 + -1;
    } while (iVar9 != 0);
    cVar3 = FUN_00929a20(0x198);
    uVar7 = param_1[0xfb];
    if (cVar3 == '\0') {
      local_114 = DAT_00b1f594;
      local_f8 = DAT_00b1f59c;
      if (uVar7 == 0) {
        FUN_00a112c0(0x10,"RNG Seed is zero!\n");
        pcVar1 = (code *)swi(3);
        (*pcVar1)();
        return;
      }
      uVar7 = uVar7 >> ((byte)DAT_00b1f594 & 0x1f) ^ uVar7;
      uVar7 = uVar7 << ((byte)((ulonglong)DAT_00b1f594 >> 0x20) & 0x1f) ^ uVar7;
      FUN_0071b410(0,uVar7 >> ((byte)DAT_00b1f59c & 0x1f) ^ uVar7,1,7,param_1);
    }
    else {
      FUN_006ee440(0,0);
      FUN_00428b20(5,0x15e,param_1 + 0xcf,&local_108,0,0x8d,uVar7);
    }
    goto LAB_00591ca0;
  }
  if (iVar9 != 10) goto LAB_00591ca0;
  if (param_1[0x2d9] == 0) {
    param_1[0x2d9] = 3;
    param_1[0x5b] = param_1[0x5b] | 0x2008;
    param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 0x44000011;
    goto LAB_00591ca0;
  }
  local_fc = (int *)param_1[0xef];
  if (((local_fc == (int *)0x0) || (local_fc[10] != 0x388)) || (local_fc[0xb] != 0)) {
    (**(code **)(*param_1 + 0x28))(local_14);
    goto LAB_00591ca0;
  }
  local_f4 = (int **)0x0;
  local_f8 = *(int ***)(DAT_00c71678 + 0x18300);
  local_f0 = (int **)0x0;
  local_12c = (int **)0x0;
  local_8 = 0;
  ppiVar8 = (int **)0x0;
  local_128 = (int **)0x0;
  FUN_006d0c60(local_118,0x3c6,0xffffffff);
  local_8._0_1_ = 1;
  if (local_10c == 0) {
LAB_00591bd0:
    (**(code **)(*param_1 + 0x28))();
    uVar2 = local_8._1_3_;
    local_8 = (uint)local_8._1_3_ << 8;
    if (local_118[0] == '\0') {
      local_8 = CONCAT31(uVar2,2);
      FUN_00a648b0(0,0);
    }
    if (local_f0 == (int **)0x0) goto LAB_00591ca0;
    uVar7 = (int)local_f4 - (int)local_f0 & 0xfffffffc;
    ppiVar8 = local_f0;
    if (0xfff < uVar7) {
      uVar7 = uVar7 + 0x23;
      ppiVar8 = (int **)local_f0[-1];
      if (0x1f < (uint)((int)local_f0 + (-4 - (int)local_f0[-1]))) {
                    /* WARNING: Subroutine does not return */
        _invalid_parameter_noinfo_noreturn();
      }
    }
  }
  else {
    uVar7 = 0;
    piVar6 = local_fc;
    iVar9 = (int)local_114;
    do {
      local_f4 = *(int ***)(iVar9 + uVar7 * 4);
      if (local_f4[0xef] == piVar6) {
        if (((local_f4[0xf1] != (int *)0x0) &&
            (piVar6 = local_fc, (local_f4[0xf1][0x5a] & 0x100U) != 0)) &&
           ((cVar3 = FUN_00612890(), piVar6 = local_fc, cVar3 != '\0' &&
            (*(int *)(extraout_ECX + 0x410) == local_fc[0x3d0])))) {
          if (ppiVar8 == (int **)0x0) {
            FUN_0042c920(0,&local_f4);
            piVar6 = local_fc;
            ppiVar8 = local_128;
          }
          else {
            *ppiVar8 = extraout_EDX;
            ppiVar8 = ppiVar8 + 1;
            local_128 = ppiVar8;
          }
        }
        iVar9 = (int)local_114;
      }
      param_1 = local_11c;
      local_f4 = (int **)0x0;
      uVar7 = uVar7 + 1;
    } while (uVar7 < local_10c);
    local_f0 = (int **)0x0;
    if (ppiVar8 == (int **)0x0) goto LAB_00591bd0;
    iVar9 = FUN_006ac760();
    ppiVar10 = local_12c;
    if (iVar9 != 0) {
      do {
        local_40 = _DAT_00bac540;
        uStack_3c = _UNK_00bac544;
        uStack_38 = _UNK_00bac548;
        uStack_34 = _UNK_00bac54c;
        local_20 = 0x3f333333;
        local_30 = ZEXT816(0);
        local_1c = 0;
        local_18 = 0;
        (**(code **)(*(int *)(*ppiVar10)[0xf1] + 0x3c))(&local_40,6,0,1,1);
        ppiVar10 = ppiVar10 + 1;
        local_12c = local_f0;
      } while (ppiVar10 != ppiVar8);
    }
    if (DAT_00baa854 < (float)param_1[0xe9]) {
      do {
        local_108 = *(float *)((*local_12c)[0xf1] + 0x33c);
        local_104 = *(float *)((*local_12c)[0xf1] + 0x340);
        cVar3 = FUN_00813360(&local_108,0x40000000);
        if (cVar3 == '\0') {
          *(undefined *)((int)param_1 + 0x173) = 1;
          break;
        }
        local_12c = local_12c + 1;
      } while (local_12c != ppiVar8);
    }
    uVar2 = local_8._1_3_;
    if (*(char *)(param_1 + 100) != '\0') {
      *(undefined *)((int)param_1 + 0x173) = 1;
LAB_00591a4d:
      AI_0043ef30();
      FUN_00812f50(&local_120,param_1 + 0xcf,0x41000000,0x41000000,0x41000000);
      local_108 = 8.0;
      fVar11 = (float)((double)((int)ppiVar8 - (int)local_f0 >> 2) +
                      (double)(&DAT_00bacb00)[-((int)ppiVar8 - (int)local_f0 >> 0x1f)]) *
               DAT_00baa7a4;
      if (fVar11 <= DAT_00baa7a4) {
        fVar11 = DAT_00baa7a4;
      }
      if (DAT_00baa868 <= fVar11) {
        fVar11 = DAT_00baa868;
      }
      local_104 = (float)(int)fVar11;
      FUN_006cb2e0(&local_120,&local_108,9,local_ec);
      param_1[0xcf] = local_120;
      param_1[0xd0] = (int)local_11c;
      FUN_00703670(5);
      ppiVar10 = local_f0;
      do {
        uStack_3c = 0;
        uStack_38 = 0;
        uStack_34 = 0;
        local_30._4_4_ = DAT_00c7b644;
        local_30._0_4_ = DAT_00c7b640;
        local_30._8_4_ = DAT_00c7b640;
        local_30._12_4_ = 0;
        local_30 = local_30 << 0x20;
        local_20 = DAT_00c7b644;
        local_1c = 0;
        local_18 = 0;
        (**(code **)(**ppiVar10 + 0x20))(0x447a0000,0,0,&uStack_3c,0x1e);
        ppiVar10 = ppiVar10 + 1;
      } while (ppiVar10 != ppiVar8);
      iVar9 = local_fc[0x3d0];
      *(uint *)(iVar9 + 0x168) = *(uint *)(iVar9 + 0x168) & 0xffbfffff;
      *(undefined4 *)(iVar9 + 0x16c) = *(undefined4 *)(iVar9 + 0x16c);
      goto LAB_00591bd0;
    }
    if (*(char *)((int)param_1 + 0x173) != '\0') goto LAB_00591a4d;
    local_8 = (uint)local_8._1_3_ << 8;
    if (local_118[0] == '\0') {
      local_8 = CONCAT31(uVar2,3);
      FUN_00a648b0(0,0);
    }
    if (local_f0 == (int **)0x0) goto LAB_00591ca0;
    uVar7 = (int)local_f4 - (int)local_f0 & 0xfffffffc;
    ppiVar8 = local_f0;
    if (0xfff < uVar7) {
      ppiVar8 = (int **)local_f0[-1];
      uVar7 = uVar7 + 0x23;
      if (0x1f < (uint)((int)local_f0 + (-4 - (int)ppiVar8))) {
                    /* WARNING: Subroutine does not return */
        _invalid_parameter_noinfo_noreturn();
      }
    }
  }
  FUN_00aef15c(ppiVar8,uVar7);
LAB_00591ca0:
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

