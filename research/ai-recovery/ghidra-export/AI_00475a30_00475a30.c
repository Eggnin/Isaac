/* Local J460 decompiler output.
 * VA: 0x00475a30
 * Entry: 00475a30
 * Dispatcher: 0x006c2990
 * Types: 50
 * Identities: 50.0.0,50.1.0
 * Evidence: dispatcher=0x006c2990; end=0x004760a0; instructions=411
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=50; identities=50.0.0,50.1.0; dispatcher=0x006c2990;
   end=0x004760a0; instructions=411 */

void __fastcall AI_00475a30(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  char cVar4;
  int iVar5;
  undefined4 uVar6;
  float *pfVar7;
  int iVar8;
  uint uVar9;
  uint uVar10;
  bool bVar11;
  bool bVar12;
  float fVar13;
  char *pcVar14;
  undefined4 local_15c [8];
  undefined4 local_13c;
  undefined4 uStack_138;
  undefined4 local_134;
  undefined local_130 [8];
  undefined local_128 [8];
  undefined local_120 [8];
  undefined local_118 [8];
  float local_110;
  float local_10c;
  float local_108;
  float local_104;
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
  
  uVar3 = _UNK_00bac29c;
  uVar2 = _UNK_00bac298;
  uVar1 = _UNK_00bac294;
  uVar6 = _DAT_00bac290;
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af2a65;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  if (*(int *)(param_1 + 0xb64) == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    local_13c = 0;
    uStack_138 = 0;
    local_134 = 0;
    puStack_20 = &stack0xfffffffc;
    if ((undefined4 *)(param_1 + 0x1e4) != local_15c) {
      *(undefined4 *)(param_1 + 0x1e4) = uVar6;
      *(undefined4 *)(param_1 + 0x1e8) = uVar1;
      *(undefined4 *)(param_1 + 0x1ec) = uVar2;
      *(undefined4 *)(param_1 + 0x1f0) = uVar3;
      *(undefined8 *)(param_1 + 0x204) = 0;
      *(undefined (*) [16])(param_1 + 500) = ZEXT816(0);
      *(undefined4 *)(param_1 + 0x20c) = 0;
      puStack_20 = &stack0xfffffffc;
    }
    goto LAB_00476064;
  }
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa380;
  iVar5 = FUN_006be840(local_24);
  pfVar7 = (float *)(param_1 + 0x33c);
  local_110 = *(float *)(iVar5 + 0x33c) - *pfVar7;
  local_10c = *(float *)(iVar5 + 0x340) - *(float *)(param_1 + 0x340);
  iVar5 = *(int *)(param_1 + 0xb64);
  if (iVar5 == 4) {
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
      uVar9 = local_28 + 1;
      uVar10 = local_3c;
      if (0xfff < uVar9) {
        uVar10 = *(uint *)(local_3c - 4);
        uVar9 = local_28 + 0x24;
        if (0x1f < (local_3c - uVar10) - 4) goto LAB_00475c1a;
      }
      FUN_00aef15c(uVar10,uVar9);
    }
    local_14 = -1;
    local_2c = 0;
    local_28 = 0xf;
    local_3c = local_3c & 0xffffff00;
    if (0xf < local_40) {
      uVar10 = local_40 + 1;
      iVar5 = local_54;
      if (0xfff < uVar10) {
        iVar5 = *(int *)(local_54 + -4);
        uVar10 = local_40 + 0x24;
        if (0x1f < (local_54 - iVar5) - 4U) {
LAB_00475c1a:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar5,uVar10);
    }
    FUN_007e5340(0x3f800000,0);
    uVar10 = FUN_006eef60();
    if (uVar10 % 0x32 == 0) {
      *(undefined4 *)(param_1 + 0x410) = 0;
      uVar10 = FUN_006eef60();
      if (uVar10 % 3 == 0) {
        iVar8 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4) +
                *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0);
        iVar5 = 0;
        if (0 < iVar8) {
          iVar5 = iVar8;
        }
        if (iVar5 < 3) {
          *(undefined4 *)(param_1 + 0xb64) = 0xd;
          goto LAB_0047605e;
        }
      }
      *(undefined4 *)(param_1 + 0xb64) = 8;
    }
    goto LAB_0047605e;
  }
  if (iVar5 != 8) {
    if (iVar5 == 0xd) {
      iVar5 = *(int *)(param_1 + 0x410);
      if (iVar5 == 1) {
        *(undefined *)(param_1 + 0x148) = 0;
        cVar4 = FUN_0040a5d0(&DAT_00b1d554,1);
        if (cVar4 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x8c) = 1;
        }
      }
      else {
        if (iVar5 != 5) {
          bVar12 = SBORROW4(iVar5,0x1a);
          iVar8 = iVar5 + -0x1a;
          bVar11 = iVar5 == 0x1a;
          goto LAB_00476052;
        }
        FUN_006d6ba0(0x109,0x3f99999a,2,0,0x3f800000);
        local_10c = 1.205117e-43;
        if (*(int *)(param_1 + 0x2c) != 1) {
          local_10c = 4.063766e-44;
        }
        iVar8 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c4) +
                *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12c0);
        iVar5 = 0;
        if (0 < iVar8) {
          iVar5 = iVar8;
        }
        if (iVar5 == 1) {
          local_108 = *(float *)(param_1 + 0x33c) - DAT_00baa924;
          local_104 = *(float *)(param_1 + 0x340) + 0.0;
          FUN_00813520(local_120,&local_108,0,0,0,0);
          local_108 = *pfVar7 + DAT_00baa924;
          local_104 = *(float *)(param_1 + 0x340) + 0.0;
          FUN_00813520(local_128,&local_108,0,0,0,0);
          uVar6 = FUN_006eef60();
          fVar13 = local_10c;
          FUN_00428b20(local_10c,0,local_120,&DAT_00c7b640,param_1,0,uVar6);
          uVar6 = FUN_006eef60();
          FUN_00428b20(fVar13,0,local_128,&DAT_00c7b640,param_1,0,uVar6);
        }
        else {
          local_108 = *(float *)(param_1 + 0x33c) + 0.0;
          local_104 = *(float *)(param_1 + 0x340) - DAT_00baa924;
          FUN_00813520(local_130,&local_108,0,0,0,0);
          local_108 = *pfVar7 + 0.0;
          local_104 = *(float *)(param_1 + 0x340) + DAT_00baa924;
          FUN_00813520(local_118,&local_108,0,0,0,0);
          uVar6 = FUN_006eef60();
          fVar13 = local_10c;
          FUN_00428b20(local_10c,0,local_130,&DAT_00c7b640,param_1,0,uVar6);
          uVar6 = FUN_006eef60();
          FUN_00428b20(fVar13,0,local_118,&DAT_00c7b640,param_1,0,uVar6);
        }
      }
    }
    goto LAB_0047605e;
  }
  iVar5 = *(int *)(param_1 + 0x410);
  if (iVar5 != 1) {
    if (iVar5 == 5) {
      if (*(int *)(param_1 + 0x2c) == 1) {
        uVar6 = AI_0043ef30();
        FUN_006cb2e0(pfVar7,param_1 + 0xbb0,4,uVar6);
      }
      else {
        uVar6 = AI_0043ef30();
        FUN_006cb2e0(pfVar7,param_1 + 0xbb0,2,uVar6);
      }
    }
    else {
      bVar12 = SBORROW4(iVar5,0x18);
      iVar8 = iVar5 + -0x18;
      bVar11 = iVar5 == 0x18;
LAB_00476052:
      if (!bVar11 && bVar12 == iVar8 < 0) {
        *(undefined4 *)(param_1 + 0xb64) = 4;
      }
    }
    goto LAB_0047605e;
  }
  *(undefined *)(param_1 + 0x148) = 0;
  uVar6 = FUN_0067f260();
  switch(uVar6) {
  case 0:
    cVar4 = FUN_0040a5d0("Attack01Hori",1);
    if (cVar4 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x8c) = 1;
    }
    *(undefined *)(param_1 + 0x148) = 1;
    goto switchD_00475cdf_caseD_4;
  case 1:
    pcVar14 = "Attack01Up";
    break;
  case 2:
    pcVar14 = "Attack01Hori";
    break;
  case 3:
    pcVar14 = "Attack01Down";
    break;
  default:
    goto switchD_00475cdf_caseD_4;
  }
  cVar4 = FUN_0040a5d0(pcVar14,1);
  if (cVar4 != '\0') {
    FUN_0040a1b0();
    *(undefined *)(param_1 + 0x8c) = 1;
  }
switchD_00475cdf_caseD_4:
  pfVar7 = (float *)FUN_0067f170();
  fVar13 = pfVar7[1] * DAT_00baa81c;
  *(float *)(param_1 + 0xbb0) = *pfVar7 * DAT_00baa81c;
  *(float *)(param_1 + 0xbb4) = fVar13;
LAB_0047605e:
  *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
LAB_00476064:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

