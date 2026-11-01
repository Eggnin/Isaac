/* Local J460 decompiler output.
 * VA: 0x0055a010
 * Entry: 0055a010
 * Dispatcher: 0x006c2990
 * Types: 813
 * Identities: 813.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0055a850; instructions=489
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=813; identities=813.0.0; dispatcher=0x006c2990;
   end=0x0055a850; instructions=489 */

void __fastcall AI_0055a010(int param_1)

{
  bool bVar1;
  char cVar2;
  undefined4 uVar3;
  float *pfVar4;
  uint uVar5;
  int iVar6;
  undefined4 uVar7;
  int *piVar8;
  uint uVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  undefined4 uVar13;
  float local_104;
  float local_100;
  float local_fc;
  float local_f8;
  float local_f4;
  char local_ed;
  undefined local_ec [148];
  undefined4 local_58;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined uStack_3c;
  undefined4 uStack_34;
  uint uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined uStack_24;
  undefined4 uStack_1c;
  uint uStack_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 uStack_8;
  
  uStack_8 = -1;
  puStack_c = &LAB_00af4d35;
  local_10 = ExceptionList;
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  bVar1 = false;
  uVar3 = FUN_006be840(local_14);
  local_ed = FUN_006d7d60(uVar3);
  switch(*(undefined4 *)(param_1 + 0xb64)) {
  case 0:
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0x410) = 0;
    FUN_0040a940("HeadAppear",0);
    cVar2 = FUN_0040a5d0("WalkVert",1);
    if (((cVar2 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
       (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
      *(undefined *)(param_1 + 0x8c) = 0;
    }
    break;
  case 4:
  case 8:
  case 0x10:
    uStack_30 = 0xf;
    uStack_34 = 8;
    uStack_44._0_1_ = s_WalkVert_00b1dd18[0];
    uStack_44._1_1_ = s_WalkVert_00b1dd18[1];
    uStack_44._2_1_ = s_WalkVert_00b1dd18[2];
    uStack_44._3_1_ = s_WalkVert_00b1dd18[3];
    uStack_40._0_1_ = s_WalkVert_00b1dd18[4];
    uStack_40._1_1_ = s_WalkVert_00b1dd18[5];
    uStack_40._2_1_ = s_WalkVert_00b1dd18[6];
    uStack_40._3_1_ = s_WalkVert_00b1dd18[7];
    uStack_3c = 0;
    uStack_18 = 0xf;
    uStack_1c = 8;
    uStack_2c._0_1_ = s_WalkHori_00b1dd30[0];
    uStack_2c._1_1_ = s_WalkHori_00b1dd30[1];
    uStack_2c._2_1_ = s_WalkHori_00b1dd30[2];
    uStack_2c._3_1_ = s_WalkHori_00b1dd30[3];
    uStack_28._0_1_ = s_WalkHori_00b1dd30[4];
    uStack_28._1_1_ = s_WalkHori_00b1dd30[5];
    uStack_28._2_1_ = s_WalkHori_00b1dd30[6];
    uStack_28._3_1_ = s_WalkHori_00b1dd30[7];
    uStack_24 = 0;
    uStack_8._0_1_ = 1;
    uStack_8._1_3_ = 0;
    FUN_006c1330(&uStack_2c,&uStack_44,0x3dcccccd);
    uStack_8 = (uint)uStack_8._1_3_ << 8;
    if (0xf < uStack_18) {
      uVar9 = uStack_18 + 1;
      uVar5 = uStack_2c;
      if (0xfff < uVar9) {
        uVar5 = *(uint *)(uStack_2c - 4);
        uVar9 = uStack_18 + 0x24;
        if (0x1f < (uStack_2c - uVar5) - 4) goto code_r0x0055a1b7;
      }
      FUN_00aef15c(uVar5,uVar9);
    }
    uStack_8 = -1;
    uStack_1c = 0;
    uStack_18 = 0xf;
    uStack_2c = uStack_2c & 0xffffff00;
    if (0xf < uStack_30) {
      uVar5 = uStack_30 + 1;
      iVar6 = uStack_44;
      if (0xfff < uVar5) {
        iVar6 = *(int *)(uStack_44 + -4);
        uVar5 = uStack_30 + 0x24;
        if (0x1f < (uStack_44 - iVar6) - 4U) {
code_r0x0055a1b7:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar6,uVar5);
    }
    iVar6 = *(int *)(param_1 + 0xb64);
    if (iVar6 == 4) {
      FUN_0040a940("HeadFull",0);
      *(undefined4 *)(param_1 + 0xc34) = 0x3e99999a;
      if (*(int *)(param_1 + 0xf1c) == -1) {
        if (DAT_00baa2d0 < *(float *)(param_1 + 0x380) / *(float *)(param_1 + 900)) {
          pfVar4 = (float *)FUN_006bec40(&local_fc,0);
          fVar10 = *(float *)(param_1 + 0x340) - pfVar4[1];
          fVar12 = *(float *)(param_1 + 0x33c) - *pfVar4;
          fVar10 = fVar10 * fVar10 + fVar12 * fVar12;
          FUN_00435a50();
          if (DAT_00baa9d0 <= fVar10) goto code_r0x0055a2fc;
          if (local_ed == '\0') goto code_r0x0055a3fa;
        }
code_r0x0055a28f:
        *(undefined4 *)(param_1 + 0x410) = 4;
        *(undefined4 *)(param_1 + 0xb64) = 8;
        if (*(int *)(param_1 + 0xf1c) == -1) {
          *(float *)(param_1 + 0xf20) = DAT_00c7b640;
          fVar10 = DAT_00c7b644;
        }
        else {
          FUN_006d85a0(&local_fc);
          *(float *)(param_1 + 0xf20) = local_fc;
          fVar10 = local_f8;
        }
        *(float *)(param_1 + 0xf24) = fVar10;
      }
      else {
        cVar2 = FUN_006cae60(0,7);
        if (cVar2 != '\0') goto code_r0x0055a28f;
      }
code_r0x0055a2fc:
      if (((local_ed != '\0') && (*(char *)(param_1 + 0xb40) != '\0')) &&
         (uVar5 = FUN_006eef60(), uVar5 % 3 == 0)) {
        uVar13 = 0x78;
        uVar7 = 0x3f4ccccd;
        uVar3 = 0xa7;
code_r0x0055a3f3:
        FUN_006d6ba0(uVar3,uVar7,uVar13,0,0x3f800000);
      }
    }
    else if (iVar6 == 8) {
      FUN_0040a940("HeadAttack",0);
      *(undefined4 *)(param_1 + 0xc34) = 0x3dcccccd;
      if ((0 < *(int *)(param_1 + 0x410)) &&
         (iVar6 = *(int *)(param_1 + 0x410) + -1, *(int *)(param_1 + 0x410) = iVar6, iVar6 < 1)) {
        bVar1 = true;
      }
      if ((*(int *)(param_1 + 0x9c) == 0) || (*(char *)(param_1 + 0xac) == '\0')) {
        *(undefined4 *)(param_1 + 0xb64) = 0x10;
      }
    }
    else if (iVar6 == 0x10) {
      FUN_0040a940(&DAT_00b5fed4,0);
      *(undefined4 *)(param_1 + 0xc34) = 0x3f3851ec;
      if (((local_ed == '\0') || (*(char *)(param_1 + 0xb40) == '\0')) ||
         (uVar5 = FUN_006eef60(), uVar5 % 3 != 0)) goto code_r0x0055a3fa;
      uVar13 = 0x28;
      uVar7 = 0x3f800000;
      uVar3 = 0xa5;
      goto code_r0x0055a3f3;
    }
code_r0x0055a3fa:
    if ((*(uint *)(param_1 + 0x168) & 0x1000800) == 0) {
      FUN_006bec40(&local_fc,0);
      FUN_007e33c0(&local_fc,*(undefined4 *)(param_1 + 0xc34),900,1);
    }
    else {
      iVar6 = FUN_006be840();
      local_fc = *(float *)(iVar6 + 0x33c);
      local_f8 = *(float *)(iVar6 + 0x340);
      FUN_007e4940(&local_fc,0);
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
    }
  }
  if (*(char *)(param_1 + 0x173) != '\0') {
    if ((*(int *)(param_1 + 0xb64) == 4) ||
       ((*(int *)(param_1 + 0xb64) == 8 && (0 < *(int *)(param_1 + 0x410))))) {
      bVar1 = true;
    }
    if ((DAT_00baae00 < *(float *)(param_1 + 0x380)) && (uVar5 = FUN_006eef60(), (uVar5 & 1) == 0))
    {
      uVar5 = FUN_006eef60();
      FUN_006c0f30(0xb,uVar5 % 3 == 0,0,0xffffffff);
      *(undefined4 *)(param_1 + 0x380) = *(undefined4 *)(param_1 + 900);
      *(undefined *)(param_1 + 0x173) = 0;
    }
  }
  if (!bVar1) goto LAB_0055a808;
  local_100 = DAT_00baa454;
  fVar10 = DAT_00baa528;
  if ((*(int *)(param_1 + 0xc64) == 0x12) ||
     (fVar10 = DAT_00baa2d0, *(int *)(param_1 + 0xc64) == 0x13)) {
    local_100 = fVar10;
  }
  local_f4 = 3.166935e-43;
  FUN_00956780();
  FUN_0092dc30(local_f4,0x3f800000,2,0,local_100,0);
  AI_0043ef30();
  uVar3 = 0xb;
  iVar6 = FUN_006b9bb0();
  if (iVar6 == 0x1b) {
    local_58 = 4;
LAB_0055a5c9:
    uVar3 = 0xc;
  }
  else if (iVar6 == 0x1c) {
    local_58 = 3;
    goto LAB_0055a5c9;
  }
  iVar6 = FUN_006be840();
  local_f4 = *(float *)(iVar6 + 0x33c);
  local_f8 = *(float *)(iVar6 + 0x340);
  if ((*(int *)(param_1 + 0xf1c) != -1) &&
     ((fVar10 = *(float *)(param_1 + 0xf20),
      (NAN(fVar10) || NAN(DAT_00c7b640)) == (fVar10 == DAT_00c7b640) ||
      ((NAN(*(float *)(param_1 + 0xf24)) || NAN(DAT_00c7b644)) ==
       (*(float *)(param_1 + 0xf24) == DAT_00c7b644))))) {
    local_f4 = fVar10 * DAT_00baaa00 + *(float *)(param_1 + 0x33c);
    local_f8 = *(float *)(param_1 + 0xf24) * DAT_00baaa00 + *(float *)(param_1 + 0x340);
  }
  fVar12 = *(float *)(param_1 + 0x33c) - local_f4;
  fVar10 = *(float *)(param_1 + 0x340) - local_f8;
  fVar10 = fVar10 * fVar10 + fVar12 * fVar12;
  local_100 = local_f8;
  local_fc = local_f4;
  FUN_00435a50();
  if (DAT_00baa9d0 < fVar10) {
    local_f4 = local_f4 - *(float *)(param_1 + 0x33c);
    local_100 = local_100 - *(float *)(param_1 + 0x340);
    fVar11 = local_f4 * local_f4 + local_100 * local_100;
    FUN_00435a50();
    fVar10 = local_f4;
    fVar12 = local_100;
    if (0.0 < fVar11) {
      fVar10 = (DAT_00baa454 / fVar11) * local_f4;
      fVar12 = (DAT_00baa454 / fVar11) * local_100;
    }
    local_fc = fVar10 * DAT_00baa9d0 + *(float *)(param_1 + 0x33c);
    local_f8 = fVar12 * DAT_00baa9d0 + *(float *)(param_1 + 0x340);
  }
  uVar5 = FUN_006eef60();
  FUN_006ccdd0(uVar5 % 3 + 7,&local_fc,0x40400000,local_ec);
  uVar7 = FUN_006eef60();
  local_104 = *(float *)(param_1 + 0x33c) + 0.0;
  local_100 = *(float *)(param_1 + 0x340) + DAT_00baa454;
  piVar8 = (int *)FUN_00428b20(1000,uVar3,&local_104,&DAT_00c7b640,param_1,0,uVar7);
  piVar8[0xd3] = 0;
  piVar8[0xd4] = -0x3e600000;
  (**(code **)(*piVar8 + 0xc))();
LAB_0055a808:
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

