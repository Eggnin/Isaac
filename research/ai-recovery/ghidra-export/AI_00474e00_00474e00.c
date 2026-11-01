/* Local J460 decompiler output.
 * VA: 0x00474e00
 * Entry: 00474e00
 * Dispatcher: 0x006c2990
 * Types: 47
 * Identities: 47.0.0,47.1.0
 * Evidence: dispatcher=0x006c2990; end=0x00475110; instructions=214
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=47; identities=47.0.0,47.1.0; dispatcher=0x006c2990;
   end=0x00475110; instructions=214 */

void __fastcall AI_00474e00(int param_1)

{
  char cVar1;
  uint uVar2;
  undefined4 uVar3;
  int *piVar4;
  float *pfVar5;
  int iVar6;
  uint uVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  undefined4 uVar11;
  TypeDescriptor *pTVar12;
  TypeDescriptor *pTVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  undefined local_5c [8];
  undefined local_54 [8];
  float local_4c;
  float local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined local_3c;
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
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00af29e5;
  local_10 = ExceptionList;
  uVar2 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa418;
  local_14 = uVar2;
  cVar1 = FUN_006ac710(7,0);
  if ((cVar1 != '\0') && (*(int *)(param_1 + 0x2c) == 1)) {
    uVar3 = FUN_006eef60(uVar2);
    uVar14 = 0;
    pTVar13 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
    pTVar12 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar11 = 0;
    uVar3 = FUN_00428b20(1000,0x16,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar3);
    piVar4 = (int *)__RTDynamicCast(uVar3,uVar11,pTVar12,pTVar13,uVar14);
    (**(code **)(*piVar4 + 0xc))();
  }
  local_30 = 0xf;
  local_34 = 8;
  local_44._0_1_ = s_WalkVert_00b1dd18[0];
  local_44._1_1_ = s_WalkVert_00b1dd18[1];
  local_44._2_1_ = s_WalkVert_00b1dd18[2];
  local_44._3_1_ = s_WalkVert_00b1dd18[3];
  local_40._0_1_ = s_WalkVert_00b1dd18[4];
  local_40._1_1_ = s_WalkVert_00b1dd18[5];
  local_40._2_1_ = s_WalkVert_00b1dd18[6];
  local_40._3_1_ = s_WalkVert_00b1dd18[7];
  local_3c = 0;
  local_18 = 0xf;
  local_1c = 8;
  local_2c._0_1_ = s_WalkHori_00b1dd30[0];
  local_2c._1_1_ = s_WalkHori_00b1dd30[1];
  local_2c._2_1_ = s_WalkHori_00b1dd30[2];
  local_2c._3_1_ = s_WalkHori_00b1dd30[3];
  local_28._0_1_ = s_WalkHori_00b1dd30[4];
  local_28._1_1_ = s_WalkHori_00b1dd30[5];
  local_28._2_1_ = s_WalkHori_00b1dd30[6];
  local_28._3_1_ = s_WalkHori_00b1dd30[7];
  local_24 = 0;
  local_8._0_1_ = 1;
  local_8._1_3_ = 0;
  FUN_006c1330(&local_2c,&local_44,0x3dcccccd);
  local_8 = (uint)local_8._1_3_ << 8;
  if (0xf < local_18) {
    uVar7 = local_18 + 1;
    uVar2 = local_2c;
    if (0xfff < uVar7) {
      uVar2 = *(uint *)(local_2c - 4);
      uVar7 = local_18 + 0x24;
      if (0x1f < (local_2c - uVar2) - 4) goto LAB_00474f78;
    }
    FUN_00aef15c(uVar2,uVar7);
  }
  local_8 = -1;
  local_1c = 0;
  local_18 = 0xf;
  local_2c = local_2c & 0xffffff00;
  if (0xf < local_30) {
    uVar2 = local_30 + 1;
    iVar6 = local_44;
    if (0xfff < uVar2) {
      iVar6 = *(int *)(local_44 + -4);
      uVar2 = local_30 + 0x24;
      if (0x1f < (local_44 - iVar6) - 4U) {
LAB_00474f78:
                    /* WARNING: Subroutine does not return */
        _invalid_parameter_noinfo_noreturn();
      }
    }
    FUN_00aef15c(iVar6,uVar2);
  }
  pfVar5 = (float *)FUN_006bec40(local_54,0);
  iVar6 = FUN_006be840();
  local_48 = (*(float *)(iVar6 + 0x360) * DAT_00baa81c + *pfVar5) - *(float *)(param_1 + 0x33c);
  local_4c = (*(float *)(iVar6 + 0x364) * DAT_00baa81c + pfVar5[1]) - *(float *)(param_1 + 0x340);
  uVar3 = FUN_006bec40(local_54,0);
  cVar1 = FUN_007f0df0((float *)(param_1 + 0x33c),uVar3,0,0,0,0,0);
  if (cVar1 == '\0') {
    uVar15 = 1;
    uVar14 = 900;
    uVar11 = 0x3f7ef9db;
    uVar3 = FUN_006bec40(local_5c,0);
    FUN_007e33c0(uVar3,uVar11,uVar14,uVar15);
  }
  else {
    fVar8 = local_48 * local_48 + local_4c * local_4c;
    FUN_00435a50();
    fVar9 = local_48;
    fVar10 = local_4c;
    if (0.0 < fVar8) {
      fVar10 = local_4c * (DAT_00baa454 / fVar8);
      fVar9 = local_48 * (DAT_00baa454 / fVar8);
    }
    fVar8 = *(float *)(param_1 + 0x36c);
    fVar9 = fVar9 * DAT_00baa324;
    if (NAN(fVar8) == (fVar8 == 0.0)) {
      *(float *)(param_1 + 0x364) =
           (*(float *)(param_1 + 0x39c) * fVar10 * DAT_00baa324) / fVar8 +
           *(float *)(param_1 + 0x364);
      *(float *)(param_1 + 0x360) =
           (*(float *)(param_1 + 0x39c) * fVar9) / fVar8 + *(float *)(param_1 + 0x360);
    }
  }
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

