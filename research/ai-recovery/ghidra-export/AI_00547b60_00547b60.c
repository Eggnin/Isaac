/* Local J460 decompiler output.
 * VA: 0x00547b60
 * Entry: 00547b60
 * Dispatcher: 0x006c2990
 * Types: 310
 * Identities: 310.0.0,310.0.1,310.0.2,310.0.3,310.1.0
 * Evidence: dispatcher=0x006c2990; end=0x00548720; instructions=730
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=310;
   identities=310.0.0,310.0.1,310.0.2,310.0.3,310.1.0; dispatcher=0x006c2990; end=0x00548720;
   instructions=730 */

void __fastcall AI_00547b60(int param_1)

{
  float *pfVar1;
  undefined auVar2 [16];
  char cVar3;
  int iVar4;
  undefined4 uVar5;
  int *piVar6;
  int iVar7;
  undefined4 *puVar8;
  uint uVar9;
  uint uVar10;
  undefined4 *puVar11;
  undefined4 *puVar12;
  float fVar13;
  double dVar14;
  undefined4 uVar16;
  undefined8 uVar15;
  float local_88;
  float local_84;
  float local_80;
  float local_7c;
  float local_78;
  float local_74;
  float local_70;
  float local_6c;
  float local_68;
  float local_64;
  float local_60;
  float local_5c;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined local_48 [5];
  undefined auStack_43 [2];
  undefined uStack_41;
  undefined8 uStack_40;
  undefined4 local_38;
  undefined4 local_34;
  uint local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined local_24;
  undefined4 local_1c;
  uint local_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  auVar2 = _local_48;
  local_8 = -1;
  puStack_c = &LAB_00af49d5;
  local_10 = ExceptionList;
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  if (*(int *)(param_1 + 0x2c) == 1) {
    FUN_00548720(local_14);
    goto LAB_005486ff;
  }
  iVar7 = *(int *)(param_1 + 0xb64);
  if (iVar7 == 0) {
    *(undefined4 *)(param_1 + 0xbc0) = 0;
LAB_00547fd2:
    *(undefined4 *)(param_1 + 0xb64) = 4;
  }
  else if (iVar7 == 4) {
    if (((*(int *)(param_1 + 0xbc0) < 1) && (*(int *)(param_1 + 0x30) != 3)) &&
       (*(int *)(param_1 + 0xf1c) == -1)) {
      uVar16 = 0;
      uVar5 = FUN_006bec40(&local_78,0);
      FUN_007e4940(uVar5,uVar16);
      if ((0 < *(int *)(param_1 + 0xb50)) &&
         (10 < *(int *)(DAT_00c71678 + 0x264f8) - *(int *)(param_1 + 0x328))) {
        uVar9 = FUN_006eef60();
        FUN_006d6ba0(0x8f,0x3f800000,uVar9 % 100 + 0x2d,0,0x3f800000);
      }
      iVar7 = *(int *)(param_1 + 0xbc0);
      if (iVar7 < 0) {
        iVar4 = ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0)) + iVar7;
        iVar7 = 0;
        if (iVar4 < 0) {
          iVar7 = iVar4;
        }
        *(int *)(param_1 + 0xbc0) = iVar7;
      }
      if (((iVar7 == 0) && (*(int *)(param_1 + 0xb50) < 1)) &&
         (uVar9 = FUN_006eef60(), uVar9 % 10 == 0)) {
        *(undefined4 *)(param_1 + 0xbc0) = 0x5a;
      }
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    }
    else {
      fVar13 = DAT_00baa354;
      if ((*(int *)(param_1 + 0x30) != 2) && (fVar13 = DAT_00baa2d0, *(int *)(param_1 + 0x30) == 3))
      {
        fVar13 = DAT_00baa3e0;
      }
      uVar15 = 0x100000000;
      uVar5 = FUN_006bec40(&local_78,0);
      FUN_007e33c0(uVar5,fVar13,uVar15);
      iVar4 = *(int *)(param_1 + 0xbc0) +
              ((int)*(float *)(param_1 + 0x3a0) - (int)*(float *)(param_1 + 0x3a4));
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3e0;
      iVar7 = 0;
      if (0 < iVar4) {
        iVar7 = iVar4;
      }
      *(int *)(param_1 + 0xbc0) = iVar7;
      if (iVar7 == 0) {
        uVar9 = FUN_006eef60();
        *(uint *)(param_1 + 0xbc0) = -0x1e - uVar9 % 0x3c;
      }
    }
    auVar2 = _local_48;
    local_18 = 0xf;
    local_1c = 8;
    local_2c._0_1_ = s_WalkVert_00b1dd18[0];
    local_2c._1_1_ = s_WalkVert_00b1dd18[1];
    local_2c._2_1_ = s_WalkVert_00b1dd18[2];
    local_2c._3_1_ = s_WalkVert_00b1dd18[3];
    local_28._0_1_ = s_WalkVert_00b1dd18[4];
    local_28._1_1_ = s_WalkVert_00b1dd18[5];
    local_28._2_1_ = s_WalkVert_00b1dd18[6];
    local_28._3_1_ = s_WalkVert_00b1dd18[7];
    local_24 = 0;
    local_30 = 0xf;
    local_34 = 8;
    local_48[4] = s_WalkHori_00b1dd30[0];
    auStack_43[0] = s_WalkHori_00b1dd30[1];
    auStack_43[1] = s_WalkHori_00b1dd30[2];
    uStack_41 = s_WalkHori_00b1dd30[3];
    uStack_40._0_1_ = s_WalkHori_00b1dd30[4];
    uStack_40._1_1_ = s_WalkHori_00b1dd30[5];
    uStack_40._2_1_ = s_WalkHori_00b1dd30[6];
    uStack_40._3_1_ = s_WalkHori_00b1dd30[7];
    uStack_40._5_3_ = auVar2._13_3_;
    uStack_40._4_1_ = 0;
    local_8._0_1_ = 1;
    local_8._1_3_ = 0;
    FUN_006c1330(local_48 + 4,&local_2c,0x3dcccccd);
    local_8 = (uint)local_8._1_3_ << 8;
    if (0xf < local_30) {
      uVar9 = local_30 + 1;
      iVar7 = stack0xffffffbc;
      if (0xfff < uVar9) {
        iVar7 = *(int *)(stack0xffffffbc + -4);
        uVar9 = local_30 + 0x24;
        if (0x1f < (stack0xffffffbc - iVar7) - 4U) goto LAB_00547f6c;
      }
      FUN_00aef15c(iVar7,uVar9);
    }
    local_8 = -1;
    local_34 = 0;
    local_30 = 0xf;
    local_48[4] = 0;
    if (0xf < local_18) {
      uVar10 = local_18 + 1;
      uVar9 = local_2c;
      if (0xfff < uVar10) {
        uVar9 = *(uint *)(local_2c - 4);
        uVar10 = local_18 + 0x24;
        if (0x1f < (local_2c - uVar9) - 4) {
LAB_00547f6c:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(uVar9,uVar10);
    }
    if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0')) {
      cVar3 = FUN_0040aaf0(&DAT_00b1dce4,1);
      if ((cVar3 != '\0') && (*(int *)(param_1 + 0x9c) != 0)) {
        FUN_00408e00();
      }
    }
    else {
      FUN_0040a940(&DAT_00b1dce4,0);
    }
  }
  else if (iVar7 == 0x10) {
    local_18 = 0xf;
    local_1c = 8;
    local_24 = 0;
    *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    local_2c._0_1_ = s_WalkVert_00b1dd18[0];
    local_2c._1_1_ = s_WalkVert_00b1dd18[1];
    local_2c._2_1_ = s_WalkVert_00b1dd18[2];
    local_2c._3_1_ = s_WalkVert_00b1dd18[3];
    local_28._0_1_ = s_WalkVert_00b1dd18[4];
    local_28._1_1_ = s_WalkVert_00b1dd18[5];
    local_28._2_1_ = s_WalkVert_00b1dd18[6];
    local_28._3_1_ = s_WalkVert_00b1dd18[7];
    local_30 = 0xf;
    local_34 = 8;
    local_48[4] = s_WalkHori_00b1dd30[0];
    auStack_43[0] = s_WalkHori_00b1dd30[1];
    auStack_43[1] = s_WalkHori_00b1dd30[2];
    uStack_41 = s_WalkHori_00b1dd30[3];
    uStack_40._0_1_ = s_WalkHori_00b1dd30[4];
    uStack_40._1_1_ = s_WalkHori_00b1dd30[5];
    uStack_40._2_1_ = s_WalkHori_00b1dd30[6];
    uStack_40._3_1_ = s_WalkHori_00b1dd30[7];
    uStack_40._5_3_ = auVar2._13_3_;
    uStack_40._4_1_ = 0;
    local_8._0_1_ = 3;
    local_8._1_3_ = 0;
    FUN_006c1330(local_48 + 4,&local_2c,0x3dcccccd);
    local_8 = CONCAT31(local_8._1_3_,2);
    if (0xf < local_30) {
      uVar9 = local_30 + 1;
      iVar7 = stack0xffffffbc;
      if (0xfff < uVar9) {
        iVar7 = *(int *)(stack0xffffffbc + -4);
        uVar9 = local_30 + 0x24;
        if (0x1f < (stack0xffffffbc - iVar7) - 4U) goto LAB_00547cb0;
      }
      FUN_00aef15c(iVar7,uVar9);
    }
    local_8 = -1;
    local_34 = 0;
    local_30 = 0xf;
    local_48[4] = 0;
    if (0xf < local_18) {
      uVar10 = local_18 + 1;
      uVar9 = local_2c;
      if (0xfff < uVar10) {
        uVar9 = *(uint *)(local_2c - 4);
        uVar10 = local_18 + 0x24;
        if (0x1f < (local_2c - uVar9) - 4) {
LAB_00547cb0:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(uVar9,uVar10);
    }
    if ((*(int *)(param_1 + 0x9c) == 0) || (*(char *)(param_1 + 0xac) == '\0')) goto LAB_00547fd2;
  }
  cVar3 = FUN_006ac710(10,0);
  if (cVar3 != '\0') {
    iVar7 = *(int *)(param_1 + 0x30);
    if (iVar7 == 3) {
      uVar5 = FUN_006eef60();
      piVar6 = (int *)FUN_00428b20(1000,0x16,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar5);
      iVar7 = FUN_006eef60();
      fVar13 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa1f8 + DAT_00baa198;
      piVar6[0x39] = (int)fVar13;
      piVar6[0x3a] = (int)fVar13;
      (**(code **)(*piVar6 + 0xc))();
      piVar6[0x117] = 0x1e;
      piVar6[0x118] = 0x1e;
      iVar7 = *(int *)(param_1 + 0x30);
    }
    if (iVar7 != 0) {
      FUN_006eef60();
      FUN_006b64d0();
    }
  }
  iVar7 = *(int *)(param_1 + 0xbc0);
  if ((0 < iVar7) && (fVar13 = *(float *)(param_1 + 0x14), 0.0 < fVar13)) {
    local_5c = fVar13 + fVar13;
    dVar14 = ceil((double)local_5c);
    local_5c = (float)dVar14;
    iVar7 = iVar7 - (int)dVar14;
    iVar4 = 1;
    if (1 < iVar7) {
      iVar4 = iVar7;
    }
    *(int *)(param_1 + 0xbc0) = iVar4;
  }
  fVar13 = *(float *)(param_1 + 0x30);
  local_64 = fVar13;
  if (((uint)fVar13 < 3) && (0.0 < *(float *)(param_1 + 0x14))) {
    local_70 = *(float *)(param_1 + 0x380) - *(float *)(param_1 + 0x14);
    do {
      if (((float)((double)(3 - (int)fVar13) + (double)(&DAT_00bacb00)[-(3 - (int)fVar13 >> 0x1f)])
          * *(float *)(param_1 + 900)) /
          (float)((double)(4 - (int)fVar13) + (double)(&DAT_00bacb00)[-(4 - (int)fVar13 >> 0x1f)]) <
          local_70) break;
      *(uint *)(param_1 + 0x30) = (int)fVar13 + 1;
      FUN_006b45c0();
      pfVar1 = (float *)(param_1 + 0x33c);
      iVar7 = FUN_006be840();
      local_60 = *pfVar1 - *(float *)(iVar7 + 0x33c);
      local_5c = *(float *)(param_1 + 0x340) - *(float *)(iVar7 + 0x340);
      fVar13 = local_60 * local_60 + local_5c * local_5c;
      FUN_00435a50();
      if (0.0 < fVar13) {
        local_60 = local_60 * (DAT_00baa454 / fVar13);
        local_5c = local_5c * (DAT_00baa454 / fVar13);
      }
      fVar13 = local_5c * DAT_00baa81c;
      *(float *)(param_1 + 0x360) =
           local_60 * DAT_00baa81c * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x360);
      *(float *)(param_1 + 0x364) =
           fVar13 * *(float *)(param_1 + 0x39c) + *(float *)(param_1 + 0x364);
      uVar5 = FUN_006eef60();
      iVar7 = FUN_006eef60();
      local_68 = ((float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4
                  * DAT_00baa9b4 - DAT_00baa910) * DAT_00baa088;
      fVar13 = local_68;
      FUN_0041d540();
      local_6c = fVar13;
      FUN_0041d520();
      fVar13 = local_5c * local_68;
      local_68 = local_5c * local_6c + local_60 * local_68;
      local_6c = local_60 * local_6c - fVar13;
      iVar7 = FUN_006eef60();
      local_88 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa784 + DAT_00baa784;
      local_84 = local_68 * local_88;
      local_88 = local_6c * local_88;
      local_80 = local_60 * DAT_00baa87c + *pfVar1;
      local_7c = local_5c * DAT_00baa87c + *(float *)(param_1 + 0x340);
      iVar7 = FUN_00428b20(0x136,1,&local_80,&local_88,param_1,0,uVar5);
      *(uint *)(iVar7 + 0x168) = *(uint *)(iVar7 + 0x168) & 0xfffffffb;
      *(undefined4 *)(iVar7 + 0x16c) = *(undefined4 *)(iVar7 + 0x16c);
      local_78 = *(float *)(iVar7 + 0x360) * DAT_00baa1f8;
      local_38 = 0;
      local_74 = *(float *)(iVar7 + 0x364) * DAT_00baa1f8;
      local_34 = 0;
      local_58 = _DAT_00bac7b0;
      uStack_54 = _UNK_00bac7b4;
      uStack_50 = _UNK_00bac7b8;
      uStack_4c = _UNK_00bac7bc;
      local_30 = 0;
      _local_48 = ZEXT816(0);
      uVar5 = FUN_006eef60();
      piVar6 = (int *)FUN_00428b20(1000,2,pfVar1,&local_78,0,2,uVar5);
      (**(code **)(*piVar6 + 0x3c))(&local_58,0xffffffff,0xff);
      piVar6[0x37] = 0;
      piVar6[0x38] = -0x3f400000;
      piVar6[0xd6] = 0x3f800000;
      fVar13 = *(float *)(param_1 + 0x30);
    } while ((uint)fVar13 < 3);
    if ((uint)local_64 < (uint)fVar13) {
      uVar5 = *(undefined4 *)(param_1 + 0x2c);
      *(undefined4 *)(param_1 + 0x2c) = 0xffffffff;
      FUN_006c0f30(*(undefined4 *)(param_1 + 0x28),uVar5,fVar13,0xffffffff);
      *(undefined4 *)(param_1 + 0xb64) = 0x10;
      FUN_0040a940("Transition",0);
    }
  }
  if (*(char *)(param_1 + 0x173) != '\0') {
    iVar7 = FUN_006eef60();
    local_64 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa704;
    local_64 = local_64 + local_64;
    fVar13 = local_64;
    FUN_0041d520();
    local_70 = fVar13;
    FUN_0041d540();
    uVar5 = FUN_006eef60();
    iVar7 = FUN_006eef60();
    local_7c = local_70 * DAT_00baa87c + *(float *)(param_1 + 0x340);
    fVar13 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4;
    local_80 = local_64 * DAT_00baa87c + *(float *)(param_1 + 0x33c);
    local_74 = fVar13 + fVar13 + DAT_00baa630;
    local_78 = local_64 * local_74;
    local_74 = local_70 * local_74;
    iVar7 = FUN_00428b20(0x136,1,&local_80,&local_78,param_1,0,uVar5);
    *(uint *)(iVar7 + 0x168) = *(uint *)(iVar7 + 0x168) & 0xfffffffb;
    *(undefined4 *)(iVar7 + 0x16c) = *(undefined4 *)(iVar7 + 0x16c);
    if ((*(float *)(param_1 + 0x380) <= DAT_00baae00) || (uVar9 = FUN_006eef60(), (uVar9 & 1) != 0))
    goto LAB_005486ff;
    FUN_006c0f30(0xb,0,0,0xffffffff);
    puVar8 = (undefined4 *)FUN_0040cf00();
    local_34 = 0x3f;
    local_30 = 0x3f;
    stack0xffffffbc = (int)puVar8;
    puVar11 = (undefined4 *)"resources/gfx/Monsters/Classic/Monster_000_Bodies02_scarred.png";
    puVar12 = puVar8;
    for (iVar7 = 0xf; iVar7 != 0; iVar7 = iVar7 + -1) {
      *puVar12 = *puVar11;
      puVar11 = puVar11 + 1;
      puVar12 = puVar12 + 1;
    }
    *(undefined2 *)puVar12 = *(undefined2 *)puVar11;
    *(undefined *)((int)puVar12 + 2) = *(undefined *)((int)puVar11 + 2);
    *(undefined *)((int)puVar8 + 0x3f) = 0;
    local_8 = 4;
    uVar5 = FUN_006ba840(&local_2c,local_48 + 4);
    local_8._0_1_ = 5;
    FUN_0040bf30(0,uVar5);
    local_8 = CONCAT31(local_8._1_3_,4);
    if (0xf < local_18) {
      uVar10 = local_18 + 1;
      uVar9 = local_2c;
      if (0xfff < uVar10) {
        uVar9 = *(uint *)(local_2c - 4);
        uVar10 = local_18 + 0x24;
        if (0x1f < (local_2c - uVar9) - 4) goto LAB_005486bd;
      }
      FUN_00aef15c(uVar9,uVar10);
    }
    local_8 = -1;
    local_1c = 0;
    local_18 = 0xf;
    local_2c = local_2c & 0xffffff00;
    if (0xf < local_30) {
      uVar9 = local_30 + 1;
      iVar7 = stack0xffffffbc;
      if (0xfff < uVar9) {
        iVar7 = *(int *)(stack0xffffffbc + -4);
        uVar9 = local_30 + 0x24;
        if (0x1f < (stack0xffffffbc - iVar7) - 4U) {
LAB_005486bd:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar7,uVar9);
    }
    FUN_0040c000();
    *(undefined *)(param_1 + 0x173) = 0;
    uVar9 = FUN_006eef60();
    *(undefined4 *)(param_1 + 0x380) = *(undefined4 *)(param_1 + 900);
    *(uint *)(param_1 + 0xba0) = uVar9 % 0x14 + 0x14;
  }
LAB_005486ff:
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

