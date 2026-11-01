/* Local J460 decompiler output.
 * VA: 0x0055ad20
 * Entry: 0055ad20
 * Dispatcher: 0x006c2990
 * Types: 806
 * Identities: 806.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0055b740; instructions=593
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=806; identities=806.0.0; dispatcher=0x006c2990;
   end=0x0055b740; instructions=593 */

void __fastcall AI_0055ad20(int param_1)

{
  undefined auVar1 [16];
  undefined auVar2 [16];
  char cVar3;
  float *pfVar4;
  int iVar5;
  uint uVar6;
  undefined4 uVar7;
  int *piVar8;
  int iVar9;
  float fVar10;
  float fVar11;
  undefined *puVar12;
  float local_1f4;
  float local_1f0;
  int local_1ec;
  float local_1e8;
  float local_1e4;
  float local_1e0;
  float local_1dc;
  float local_1d8;
  float *local_1d4;
  undefined local_1d0 [20];
  undefined4 local_1bc;
  undefined4 local_13c;
  undefined local_128 [20];
  undefined4 local_114;
  undefined4 local_94;
  undefined4 local_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined local_6c [5];
  undefined uStack_67;
  undefined2 uStack_66;
  undefined4 uStack_64;
  undefined uStack_60;
  undefined3 uStack_5f;
  undefined4 local_5c;
  undefined4 local_58;
  uint local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined local_40 [5];
  undefined auStack_3b [2];
  undefined uStack_39;
  undefined4 uStack_38;
  undefined uStack_34;
  undefined3 uStack_33;
  undefined4 local_30;
  undefined4 local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af4d75;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar5 = *(int *)(param_1 + 0xb64);
  local_1ec = param_1;
  if (iVar5 == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    *(undefined4 *)(param_1 + 0x410) = 0;
    *(undefined4 *)(param_1 + 0xbc0) = 0;
    *(undefined4 *)(param_1 + 0xbc4) = 0;
    cVar3 = FUN_0040a5d0("WalkVert",1);
    if (((cVar3 != '\0') && (*(int *)(param_1 + 0x7c) != 0)) &&
       (FUN_00408e00(), *(int *)(param_1 + 0x7c) != 0)) {
      *(undefined *)(param_1 + 0x8c) = 0;
    }
    goto LAB_0055b71b;
  }
  if (iVar5 == 4) {
    if ((*(int *)(param_1 + 0x410) < 100) &&
       (iVar5 = *(int *)(param_1 + 0x410) +
                ((int)*(float *)(param_1 + 0x3a4) - (int)*(float *)(param_1 + 0x3a0)),
       *(int *)(param_1 + 0x410) = iVar5, puStack_20 = &stack0xfffffffc, iVar5 < 100)) {
LAB_0055ae6c:
      auVar2 = _local_40;
      auVar1 = _local_6c;
      local_54 = 0xf;
      local_58 = 8;
      local_6c[4] = s_WalkVert_00b1dd18[0];
      uStack_67 = s_WalkVert_00b1dd18[1];
      uStack_66._0_1_ = s_WalkVert_00b1dd18[2];
      uStack_66._1_1_ = s_WalkVert_00b1dd18[3];
      uStack_64._0_1_ = s_WalkVert_00b1dd18[4];
      uStack_64._1_1_ = s_WalkVert_00b1dd18[5];
      uStack_64._2_1_ = s_WalkVert_00b1dd18[6];
      uStack_64._3_1_ = s_WalkVert_00b1dd18[7];
      uStack_5f = auVar1._13_3_;
      uStack_60 = 0;
      local_28 = 0xf;
      local_2c = 8;
      local_40[4] = s_WalkHori_00b1dd30[0];
      auStack_3b[0] = s_WalkHori_00b1dd30[1];
      auStack_3b[1] = s_WalkHori_00b1dd30[2];
      uStack_39 = s_WalkHori_00b1dd30[3];
      uStack_38._0_1_ = s_WalkHori_00b1dd30[4];
      uStack_38._1_1_ = s_WalkHori_00b1dd30[5];
      uStack_38._2_1_ = s_WalkHori_00b1dd30[6];
      uStack_38._3_1_ = s_WalkHori_00b1dd30[7];
      uStack_33 = auVar2._13_3_;
      uStack_34 = 0;
      local_14._0_1_ = 1;
      local_14._1_3_ = 0;
      FUN_006c1330(local_40 + 4,local_6c + 4,0x3dcccccd);
      local_14 = (uint)local_14._1_3_ << 8;
      if (0xf < local_28) {
        uVar6 = local_28 + 1;
        iVar5 = stack0xffffffc4;
        if (0xfff < uVar6) {
          iVar5 = *(int *)(stack0xffffffc4 + -4);
          uVar6 = local_28 + 0x24;
          if (0x1f < (stack0xffffffc4 - iVar5) - 4U) goto LAB_0055af53;
        }
        FUN_00aef15c(iVar5,uVar6);
      }
      local_14 = -1;
      local_2c = 0;
      local_28 = 0xf;
      local_40[4] = 0;
      if (0xf < local_54) {
        uVar6 = local_54 + 1;
        iVar5 = stack0xffffff98;
        if (0xfff < uVar6) {
          iVar5 = *(int *)(stack0xffffff98 + -4);
          uVar6 = local_54 + 0x24;
          if (0x1f < (stack0xffffff98 - iVar5) - 4U) {
LAB_0055af53:
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(iVar5,uVar6);
      }
      *(undefined4 *)(param_1 + 0xc34) = 0x3e99999a;
      if (((*(uint *)(param_1 + 0x168) & 0x1000800) == 0) || (*(int *)(param_1 + 0xf1c) != -1)) {
        uVar7 = FUN_006bec40(&local_1e8,0);
        FUN_007e33c0(uVar7,0x3e99999a,900,1);
      }
      else {
        iVar5 = FUN_006be840();
        local_1e0 = *(float *)(iVar5 + 0x33c);
        local_1dc = *(float *)(iVar5 + 0x340);
        FUN_007e4940(&local_1e0,0);
        fVar11 = DAT_00baa3a4;
        fVar10 = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
        *(float *)(param_1 + 0x36c) = fVar10;
        if (0 < *(int *)(param_1 + 0xb50)) {
          *(float *)(param_1 + 0x36c) = fVar10 * fVar11;
        }
      }
      uVar7 = FUN_006be840();
      cVar3 = FUN_006d7d60(uVar7);
      if (((cVar3 != '\0') && (*(char *)(param_1 + 0xb40) != '\0')) &&
         (uVar6 = FUN_006eef60(), uVar6 % 3 == 0)) {
        FUN_006d6ba0(0x74,0x3f800000,0x3c,0,0x3f800000);
      }
    }
    else {
      if (*(int *)(param_1 + 0xf1c) == -1) {
        puStack_20 = &stack0xfffffffc;
        iVar5 = FUN_006be840(local_24);
        fVar11 = *(float *)(iVar5 + 0x33c) - *(float *)(param_1 + 0x33c);
        fVar10 = *(float *)(iVar5 + 0x340) - *(float *)(param_1 + 0x340);
        if ((DAT_00baac5c <= fVar10 * fVar10 + fVar11 * fVar11) ||
           (uVar6 = FUN_006eef60(), uVar6 % 0x78 != 0)) goto LAB_0055ae6c;
      }
      else {
        puStack_20 = &stack0xfffffffc;
        cVar3 = FUN_006cae60(0,7);
        if ((cVar3 == '\0') && (cVar3 = FUN_006d8260(9), cVar3 == '\0')) goto LAB_0055ae6c;
      }
      FUN_006d6ba0(0xa7,0x3f800000,5,0,0x3f800000);
      fVar10 = (float)(*(uint *)(param_1 + 0x360) & DAT_00bacb40);
      fVar11 = (float)(*(uint *)(param_1 + 0x364) & DAT_00bacb40);
      *(undefined4 *)(param_1 + 0xb64) = 8;
      *(undefined4 *)(param_1 + 0x410) = 0;
      if (fVar10 <= fVar11) {
        FUN_0040a380("AttackVert",0);
      }
      else {
        FUN_0040a380("AttackHori",0);
        *(bool *)(param_1 + 0x148) =
             *(float *)(param_1 + 0x360) <= 0.0 && *(float *)(param_1 + 0x360) != 0.0;
      }
    }
  }
  else {
    puStack_20 = &stack0xfffffffc;
    if (iVar5 == 8) {
      puStack_20 = &stack0xfffffffc;
      if (*(int *)(param_1 + 0x7c) == 0) {
LAB_0055add8:
        *(undefined4 *)(param_1 + 0xb64) = 4;
        *(undefined4 *)(param_1 + 0x410) = 0;
      }
      else {
        puStack_20 = &stack0xfffffffc;
        cVar3 = FUN_0040add0("Shoot");
        if (cVar3 != '\0') {
          FUN_00704360(param_1 + 0x33c,0x42f00000,param_1,1,0);
          *(undefined4 *)(param_1 + 0xbc0) = 0xc;
        }
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0'))
        goto LAB_0055add8;
      }
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa280;
    }
  }
  FUN_006d8e40(1);
  if (*(int *)(param_1 + 0xbc4) < 1) {
    if (*(int *)(param_1 + 8) != *(int *)(param_1 + 0xc)) {
      local_1d4 = (float *)(*(float *)(*(int *)(param_1 + 0xc) + -0x14) -
                           *(float *)(param_1 + 0x340));
      local_1d8 = *(float *)(*(int *)(param_1 + 0xc) + -0x18) - *(float *)(param_1 + 0x33c);
      fVar11 = (float)local_1d4 * (float)local_1d4 + local_1d8 * local_1d8;
      if (DAT_00baa06c <= fVar11) {
        FUN_00435a50();
        if (DAT_00ba9fe4 < fVar11) {
          local_1d4 = (float *)((DAT_00baa454 / fVar11) * (float)local_1d4);
          local_1d8 = local_1d8 * (DAT_00baa454 / fVar11);
        }
      }
      else {
        pfVar4 = (float *)FUN_0067f070(&local_1e8);
        local_1d4 = (float *)pfVar4[1];
        local_1d8 = *pfVar4;
      }
      iVar5 = FUN_006eef60();
      fVar11 = (float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa9a0 + DAT_00baa904;
      local_1e0 = local_1d8 * fVar11 + *(float *)(param_1 + 0x33c);
      local_1dc = (float)local_1d4 * fVar11 + *(float *)(param_1 + 0x340);
      AI_0043ef30();
      iVar5 = FUN_006b9bb0();
      if (iVar5 == 0x1b) {
        local_94 = 4;
      }
      else if (iVar5 == 0x1c) {
        local_94 = 3;
      }
      local_114 = 0x3f19999a;
      FUN_006ccdd0(1,&local_1e0,0x3f800000,local_128);
      uVar6 = FUN_006eef60();
      *(uint *)(param_1 + 0xbc4) = uVar6 % 0x14 + 0x14;
    }
  }
  else {
    *(int *)(param_1 + 0xbc4) = *(int *)(param_1 + 0xbc4) + -1;
  }
  if (0 < *(int *)(param_1 + 0xbc0)) {
    local_1d4 = (float *)0xb9;
    FUN_00956780();
    FUN_0092dc30(local_1d4,0x3f800000,2,0,0x3f800000,0);
    AI_0043ef30();
    iVar5 = FUN_006b9bb0();
    if (iVar5 == 0x1b) {
      local_13c = 4;
    }
    else if (iVar5 == 0x1c) {
      local_13c = 3;
    }
    local_1bc = 0x3f19999a;
    FUN_006ccdd0(1,&DAT_00c7b640,0x40400000,local_1d0);
    *(int *)(param_1 + 0xbc0) = *(int *)(param_1 + 0xbc0) + -1;
  }
  if (*(char *)(param_1 + 0x173) != '\0') {
    uVar7 = FUN_006eef60();
    local_1d4 = (float *)(param_1 + 0x33c);
    piVar8 = (int *)FUN_00428b20(1000,0x84,local_1d4,&DAT_00c7b640,0,0,uVar7);
    iVar5 = FUN_006b9bb0();
    if (iVar5 == 0x1c) {
      _local_6c = ZEXT816(0);
      local_5c = 0;
      local_58 = 0;
      local_54 = 0;
      local_7c = _DAT_00bac2c0;
      uStack_78 = _UNK_00bac2c4;
      uStack_74 = _UNK_00bac2c8;
      uStack_70 = _UNK_00bac2cc;
      (**(code **)(*piVar8 + 0x3c))(&local_7c,0xffffffff,0xff,0,1);
    }
    (**(code **)(*piVar8 + 0xc))();
    if ((*(uint *)(param_1 + 0x168) & 0x1000000 | *(uint *)(param_1 + 0x16c) & 0x200000) == 0) {
      iVar5 = 4;
      do {
        iVar9 = FUN_006eef60();
        local_1d8 = (DAT_00baae2c -
                    (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa9b4) * DAT_00baa088;
        fVar11 = local_1d8;
        FUN_0041d540();
        local_1dc = fVar11;
        fVar11 = local_1d8;
        FUN_0041d520();
        local_1e8 = local_1dc * DAT_00baa7b8;
        _local_40 = ZEXT816(0);
        local_30 = 0;
        local_2c = 0;
        local_28 = 0;
        local_1e4 = fVar11 * DAT_00baa7b8;
        local_1f4 = local_1dc * DAT_00baa904 + *local_1d4;
        local_1f0 = fVar11 * DAT_00baa904 + local_1d4[1];
        local_50 = _DAT_00bac7b0;
        uStack_4c = _UNK_00bac7b4;
        uStack_48 = _UNK_00bac7b8;
        uStack_44 = _UNK_00bac7bc;
        uVar7 = FUN_006eef60();
        piVar8 = (int *)FUN_00428b20(1000,2,&local_1f4,&local_1e8,0,2,uVar7);
        (**(code **)(*piVar8 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
        piVar8[0x37] = 0;
        piVar8[0x38] = -0x3e200000;
        piVar8[0xd6] = 0x41200000;
        iVar9 = FUN_006eef60();
        piVar8[0xd5] = 500;
        piVar8[0x3b] = (int)((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                             DAT_00ba9ff4 * DAT_00baab30);
        iVar9 = FUN_006b9bb0();
        if (iVar9 == 0x1c) {
          puVar12 = &DAT_00c33d08;
        }
        else {
          puVar12 = &DAT_00c33cdc;
        }
        (**(code **)(*piVar8 + 0x3c))(puVar12,0xffffffff,0xff,0,1);
        iVar5 = iVar5 + -1;
      } while (iVar5 != 0);
      piVar8 = (int *)FUN_0060af00(0xf,0);
      piVar8[0xcf] = (int)*local_1d4;
      piVar8[0xd0] = (int)local_1d4[1];
      if (*(char *)(local_1ec + 0xc63) == '\0') {
        iVar5 = -1;
      }
      else {
        iVar5 = *(int *)(local_1ec + 0xc64);
      }
      piVar8[0x114] = iVar5;
      uVar6 = *(uint *)(local_1ec + 0x16c);
      piVar8[0x5a] = piVar8[0x5a] | *(uint *)(local_1ec + 0x168) & 0x20000100;
      piVar8[0x5b] = piVar8[0x5b] | uVar6 & 0x400000;
      piVar8[0x11e] = *(int *)(local_1ec + 0xc38);
      (**(code **)(*piVar8 + 0xc))();
    }
  }
LAB_0055b71b:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

