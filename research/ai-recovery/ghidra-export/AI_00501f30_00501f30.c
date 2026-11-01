/* Local J460 decompiler output.
 * VA: 0x00501f30
 * Entry: 00501f30
 * Dispatcher: 0x006c2990
 * Types: 822
 * Identities: 822.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00502980; instructions=633
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=822; identities=822.0.0; dispatcher=0x006c2990;
   end=0x00502980; instructions=633 */

void __fastcall AI_00501f30(int param_1)

{
  undefined *puVar1;
  char cVar2;
  uint uVar3;
  uint uVar4;
  char *pcVar5;
  int iVar6;
  undefined4 uVar7;
  int *piVar8;
  uint uVar9;
  float fVar10;
  undefined4 uVar11;
  undefined4 local_1cc;
  undefined4 local_1c8;
  float local_1c4;
  float local_1c0;
  float local_1bc;
  float local_1b8;
  float local_1b4;
  float local_1b0;
  int local_1ac;
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
  puStack_18 = &LAB_00af40f5;
  local_1c = ExceptionList;
  uVar3 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_1ac = DAT_00baa454;
  local_24 = uVar3;
  puVar1 = &stack0xfffffffc;
  switch(*(undefined4 *)(param_1 + 0xb64)) {
  case 0:
    puStack_20 = &stack0xfffffffc;
    FUN_0040a940("HeadAppear",0);
    cVar2 = FUN_0040a5d0("WalkVert",1);
    if (((cVar2 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
       (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
      *(undefined *)(param_1 + 0x8c) = 0;
    }
    *(undefined4 *)(param_1 + 0xb64) = 3;
    *(undefined4 *)(param_1 + 0x410) = 0;
    iVar6 = FUN_006eef60();
    *(float *)(param_1 + 0xbb0) =
         (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4 *
         DAT_00baa75c + DAT_00baa7a4;
    puVar1 = puStack_20;
    break;
  case 3:
    uVar11 = 0;
    puStack_20 = &stack0xfffffffc;
    uVar7 = FUN_006bec40(&local_1b8,0);
    FUN_007e4940(uVar7,uVar11);
    if ((0 < *(int *)(param_1 + 0xb50)) &&
       (10 < *(int *)(DAT_00c71678 + 0x264f8) - *(int *)(param_1 + 0x328))) {
      uVar4 = FUN_006eef60();
      FUN_006d6ba0(0x8f,0x3f800000,uVar4 % 100 + 0x2d,0,0x3f800000);
    }
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
      uVar4 = local_3c;
      if (0xfff < uVar9) {
        uVar4 = *(uint *)(local_3c - 4);
        uVar9 = local_28 + 0x24;
        if (0x1f < (local_3c - uVar4) - 4) goto LAB_00502184;
      }
      FUN_00aef15c(uVar4,uVar9);
    }
    local_14 = -1;
    local_2c = 0;
    local_28 = 0xf;
    local_3c = local_3c & 0xffffff00;
    if (0xf < local_40) {
      uVar9 = local_40 + 1;
      uVar4 = local_54;
      if (0xfff < uVar9) {
        uVar4 = *(uint *)(local_54 - 4);
        uVar9 = local_40 + 0x24;
        if (0x1f < (local_54 - uVar4) - 4) {
LAB_00502184:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(uVar4,uVar9);
    }
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      cVar2 = FUN_0040aaf0("HeadWalkVert",1);
      if ((cVar2 != '\0') && (*(int *)(param_1 + 0x9c) != 0)) {
        FUN_00408e00();
      }
    }
    else {
      pcVar5 = "HeadWalkHori";
      if ((float)(*(uint *)(param_1 + 0x360) & DAT_00bacb40) <=
          (float)(*(uint *)(param_1 + 0x364) & DAT_00bacb40)) {
        pcVar5 = "HeadWalkVert";
      }
      FUN_0040a940(pcVar5,0);
    }
    if ((((0x1e < *(int *)(DAT_00c71678 + 0x264f8) - *(int *)(param_1 + 0x328)) &&
         (0 < *(int *)(param_1 + 0xb50))) && (*(float *)(param_1 + 0xbb0) <= 0.0)) &&
       (uVar4 = FUN_006eef60(), uVar4 % 0x14 == 0)) {
      FUN_0040a940("HeadInflate",0);
      *(undefined4 *)(param_1 + 0xb64) = 8;
    }
    if (0.0 < *(float *)(param_1 + 0xbb0)) {
      fVar10 = *(float *)(param_1 + 0xbb0) - DAT_00baa0b4;
      *(float *)(param_1 + 0xbb0) = fVar10;
      if (0.0 < *(float *)(param_1 + 0x14)) {
        fVar10 = fVar10 - *(float *)(param_1 + 0x14) / DAT_00baa730;
        if (fVar10 <= 0.0) {
          fVar10 = 0.0;
        }
        *(float *)(param_1 + 0xbb0) = fVar10;
      }
    }
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    puVar1 = puStack_20;
    break;
  case 8:
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
    local_14._0_1_ = 3;
    local_14._1_3_ = 0;
    puStack_20 = &stack0xfffffffc;
    FUN_006c1330(&local_3c,&local_54,0x3dcccccd);
    local_14 = CONCAT31(local_14._1_3_,2);
    if (0xf < local_28) {
      uVar9 = local_28 + 1;
      uVar4 = local_3c;
      if (0xfff < uVar9) {
        uVar4 = *(uint *)(local_3c - 4);
        uVar9 = local_28 + 0x24;
        if (0x1f < (local_3c - uVar4) - 4) goto LAB_00502394;
      }
      FUN_00aef15c(uVar4,uVar9);
    }
    local_14 = -1;
    local_2c = 0;
    local_28 = 0xf;
    local_3c = local_3c & 0xffffff00;
    if (0xf < local_40) {
      uVar9 = local_40 + 1;
      uVar4 = local_54;
      if (0xfff < uVar9) {
        uVar4 = *(uint *)(local_54 - 4);
        uVar9 = local_40 + 0x24;
        if (0x1f < (local_54 - uVar4) - 4) {
LAB_00502394:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(uVar4,uVar9);
    }
    cVar2 = FUN_0040add0("Inflate");
    if (cVar2 != '\0') {
      FUN_006d6ba0(0x1e4,0x3f800000,0x1e,0,0x3f800000);
      fVar10 = *(float *)(param_1 + 0x370) * DAT_00baa528;
      *(undefined4 *)(param_1 + 0xb64) = 0x10;
      *(float *)(param_1 + 0x370) = fVar10;
    }
    goto LAB_00502522;
  case 0x10:
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
    local_14._0_1_ = 5;
    local_14._1_3_ = 0;
    FUN_006c1330(&local_3c,&local_54,0x3dcccccd);
    local_14 = CONCAT31(local_14._1_3_,4);
    if (0xf < local_28) {
      uVar9 = local_28 + 1;
      uVar4 = local_3c;
      if (0xfff < uVar9) {
        uVar4 = *(uint *)(local_3c - 4);
        uVar9 = local_28 + 0x24;
        if (0x1f < (local_3c - uVar4) - 4) goto LAB_005024de;
      }
      FUN_00aef15c(uVar4,uVar9);
    }
    local_14 = -1;
    local_2c = 0;
    local_28 = 0xf;
    local_3c = local_3c & 0xffffff00;
    if (0xf < local_40) {
      uVar9 = local_40 + 1;
      uVar4 = local_54;
      if (0xfff < uVar9) {
        uVar4 = *(uint *)(local_54 - 4);
        uVar9 = local_40 + 0x24;
        if (0x1f < (local_54 - uVar4) - 4) {
LAB_005024de:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(uVar4,uVar9);
    }
    local_44 = 0;
    local_40 = 0xf;
    local_54 = local_54 & 0xffffff00;
    if (*(int *)(param_1 + 0x410) != 0) {
      if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
        FUN_0040abf0("HeadWalkInflated",0);
      }
      else {
        FUN_0040a940("HeadWalkInflated",0);
      }
      if ((*(int *)(DAT_00c71678 + 0x264f8) - *(int *)(param_1 + 0x328) & 1U) != 0) {
        local_1ac = DAT_00baad50;
      }
      iVar6 = FUN_0040b220(1);
      *(int *)(iVar6 + 0x40) = local_1ac;
      FUN_006bec40(&local_1b8,0);
      FUN_007e33c0(&local_1b8,0x3f666666,900,1);
      puVar1 = puStack_20;
      break;
    }
    if ((*(int *)(param_1 + 0x9c) == 0) || (*(char *)(param_1 + 0xac) == '\0')) {
      *(undefined4 *)(param_1 + 0x410) = 1;
    }
LAB_00502522:
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa304;
    puVar1 = puStack_20;
  }
  puStack_20 = puVar1;
  if (*(char *)(param_1 + 0x173) != '\0') {
    if (*(int *)(param_1 + 0xb64) == 0x10) {
      local_1ac = 0x8d;
      FUN_00956780();
      FUN_0092dc30(local_1ac,0x3f800000,2,0,0x3fc00000,0);
      FUN_00703670(6);
      FUN_00704360((undefined4 *)(param_1 + 0x33c),0x42f00000,param_1,0,0);
      iVar6 = FUN_0060af00(4,0);
      *(undefined4 *)(iVar6 + 0x33c) = *(undefined4 *)(param_1 + 0x33c);
      *(undefined4 *)(iVar6 + 0x340) = *(undefined4 *)(param_1 + 0x340);
      FUN_00703670(8);
      uVar7 = AI_0043ef30();
      FUN_006ccdd0(0xc,&DAT_00c7b640,0,uVar7);
      local_1ac = 0x16;
      do {
        iVar6 = FUN_006eef60();
        local_1b0 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa704;
        local_1b0 = local_1b0 + local_1b0;
        fVar10 = local_1b0;
        FUN_0041d540();
        local_1bc = fVar10;
        FUN_0041d520();
        iVar6 = FUN_006eef60();
        local_1b8 = local_1bc * DAT_00baa784 + *(float *)(param_1 + 0x33c);
        local_1c0 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                    DAT_00ba9ff4;
        local_1c4 = local_1bc * DAT_00baa854 * local_1c0;
        local_1b4 = local_1b0 * DAT_00baa784 + *(float *)(param_1 + 0x340);
        local_1c0 = local_1b0 * DAT_00baa854 * local_1c0;
        uVar7 = FUN_006eef60();
        piVar8 = (int *)FUN_00428b20(9,0,&local_1b8,&local_1c4,param_1,0,uVar7);
        iVar6 = FUN_006eef60();
        piVar8[0x105] = 0;
        piVar8[0x104] =
             (int)(DAT_00baadf0 -
                  (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4
                  * DAT_00baa7e8);
        iVar6 = FUN_006eef60();
        piVar8[0x106] =
             (int)(DAT_00baace8 -
                  (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4
                  * _DAT_00baa0a4);
        iVar6 = FUN_006eef60();
        fVar10 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4 *
                 _DAT_00baa4ac;
        piVar8[0x10b] = 0x3f666666;
        piVar8[0x10e] = 0;
        fVar10 = fVar10 + DAT_00baa304;
        piVar8[0x10f] = 0x20;
        piVar8[0x108] = (int)fVar10;
        FUN_006cb2a0(piVar8);
        (**(code **)(*piVar8 + 0xc))();
        local_1ac = local_1ac + -1;
      } while (local_1ac != 0);
      local_1ac = 0;
    }
    else if ((*(uint *)(param_1 + 0x168) & 0x1000000) == 0) {
      uVar7 = AI_0043ef30(uVar3);
      local_1cc = 0x41200000;
      local_1c8 = 0;
      FUN_006cb2e0(param_1 + 0x33c,&local_1cc,7,uVar7);
    }
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

