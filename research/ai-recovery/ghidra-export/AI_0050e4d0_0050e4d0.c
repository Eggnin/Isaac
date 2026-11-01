/* Local J460 decompiler output.
 * VA: 0x0050e4d0
 * Entry: 0050e4d0
 * Dispatcher: 0x006c2990
 * Types: 24,278
 * Identities: 24.0.0,24.1.0,24.2.0,24.3.0,278.0.0
 * Evidence: dispatcher=0x006c2990; end=0x0050f280; instructions=803
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=24,278; identities=24.0.0,24.1.0,24.2.0,24.3.0,278.0.0;
   dispatcher=0x006c2990; end=0x0050f280; instructions=803 */

void __fastcall AI_0050e4d0(float param_1)

{
  code *pcVar1;
  undefined *puVar2;
  char cVar3;
  uint uVar4;
  int iVar5;
  undefined4 *puVar6;
  undefined4 uVar7;
  int *piVar8;
  float *pfVar9;
  uint uVar10;
  uint uVar11;
  float10 fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  undefined4 uVar16;
  TypeDescriptor *pTVar17;
  TypeDescriptor *pTVar18;
  undefined4 uVar19;
  float local_ac;
  float local_a8;
  int *local_a4;
  float local_a0;
  float local_9c;
  float local_98;
  float local_94;
  undefined local_90 [4];
  int *local_8c;
  int *local_88;
  float local_84;
  char local_7d;
  undefined4 local_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined4 local_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  uint uStack_60;
  undefined8 local_5c;
  uint local_54;
  undefined4 local_3c;
  undefined4 local_38;
  uint local_34;
  ulonglong local_30;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af4315;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_84 = param_1;
  local_24 = uVar4;
  if (*(int *)((int)param_1 + 0xb74) == 1) {
    puStack_20 = &stack0xfffffffc;
    if ((0 < *(int *)((int)param_1 + 0xbc0)) &&
       (iVar5 = *(int *)((int)param_1 + 0xbc0) + -1, *(int *)((int)param_1 + 0xbc0) = iVar5,
       puStack_20 = &stack0xfffffffc, iVar5 < 1)) {
      *(undefined *)((int)param_1 + 0x3b0) = 0;
      puStack_20 = &stack0xfffffffc;
    }
    goto LAB_0050f261;
  }
  if (*(int *)((int)param_1 + 0xb64) == 0) {
    if (*(int *)((int)param_1 + 0x2c) == 3) {
      puStack_20 = &stack0xfffffffc;
      iVar5 = FUN_00738470(param_1);
      if (iVar5 == 0x20) {
        puVar6 = (undefined4 *)FUN_00407170();
      }
      else {
        local_54 = DAT_00c34dcc;
        puVar6 = &local_7c;
        local_7c = _DAT_00c34da4;
        uStack_78 = uRam00c34da8;
        uStack_74 = uRam00c34dac;
        uStack_70 = uRam00c34db0;
        local_6c = _DAT_00c34db4;
        uStack_68 = iRam00c34db8;
        uStack_64._0_1_ = (char)uRam00c34dbc;
        uStack_64._1_1_ = uRam00c34dbc._1_1_;
        uStack_64._2_1_ = cRam00c34dbe;
        uStack_64._3_1_ = cRam00c34dbf;
        uStack_60 = uRam00c34dc0;
        local_5c = DAT_00c34dc4;
      }
      FUN_004071f0(puVar6);
      *(uint *)((int)param_1 + 0xf18) = *(uint *)((int)param_1 + 0xf18) | 1;
    }
    else {
      puStack_20 = &stack0xfffffffc;
      if (*(int *)((int)param_1 + 0x2c) == 2) {
        puStack_20 = &stack0xfffffffc;
        uVar7 = FUN_00435a80();
        FUN_004071f0(uVar7);
      }
    }
    *(undefined4 *)((int)param_1 + 0xbb0) = *(undefined4 *)((int)param_1 + 0x380);
    *(undefined4 *)((int)param_1 + 0xb64) = 4;
    if (*(int *)((int)param_1 + 0x30) == 10) {
      if ((*(uint *)((int)param_1 + 0x168) & 4) != 0) {
        *(undefined4 *)((int)param_1 + 0x16c) = *(undefined4 *)((int)param_1 + 0x16c);
        *(uint *)((int)param_1 + 0x168) = *(uint *)((int)param_1 + 0x168) & 0xfffffffb;
        uVar7 = FUN_006eef60();
        uVar19 = 0;
        pTVar18 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
        pTVar17 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uVar16 = 0;
        uVar7 = FUN_00428b20(1000,0xf,(int)param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar7);
        local_88 = (int *)__RTDynamicCast(uVar7,uVar16,pTVar17,pTVar18,uVar19);
        local_88[0xd3] = *(int *)((int)param_1 + 0x34c);
        local_88[0xd4] = *(int *)((int)param_1 + 0x350);
        local_88[0xd6] = (int)(*(float *)((int)param_1 + 0x350) + DAT_00baa454);
        if (*(char *)((int)param_1 + 0xc63) != '\0') {
          pcVar1 = *(code **)(*local_88 + 0x3c);
          uVar7 = FUN_00505b80(&local_7c);
          (*pcVar1)(uVar7,0xffffffff,0xff,0,1);
        }
        (**(code **)(*local_88 + 0xc))();
      }
      FUN_0040a380("ReGen",0);
      *(undefined4 *)((int)param_1 + 0xb64) = 3;
    }
    goto LAB_0050f261;
  }
  local_9c = 0.0;
  puVar2 = &stack0xfffffffc;
  if ((*(int *)((int)param_1 + 0x28) == 0x116) &&
     (puVar2 = &stack0xfffffffc,
     DAT_00baa784 < *(float *)((int)param_1 + 0xbb0) - *(float *)((int)param_1 + 0x380))) {
    *(float *)((int)param_1 + 0xbb0) = *(float *)((int)param_1 + 0x380);
    iVar5 = FUN_006be840(uVar4);
    local_98 = *(float *)((int)param_1 + 0x33c) +
               (*(float *)(iVar5 + 0x33c) - *(float *)((int)param_1 + 0x33c)) * (float)DAT_00baa380;
    local_94 = *(float *)((int)param_1 + 0x340) +
               (*(float *)(iVar5 + 0x340) - *(float *)((int)param_1 + 0x340)) * (float)DAT_00baa380;
    puVar6 = (undefined4 *)FUN_00813520(&local_a4,&local_98,0,0,0,0);
    FUN_006c2750((int)param_1 + 0x33c,local_84,*puVar6,puVar6[1],0,0xc1f00000);
    param_1 = local_84;
    FUN_006d6ba0(0xb5,0x3e800000,2,0,0x3f800000);
    puVar2 = puStack_20;
  }
  puStack_20 = puVar2;
  if (((*(char *)((int)param_1 + 0x173) != '\0') && (*(int *)((int)param_1 + 0x28) == 0x18)) &&
     (*(int *)((int)param_1 + 0x2c) == 2)) {
    uVar7 = FUN_006eef60();
    uVar19 = 0;
    pTVar18 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
    pTVar17 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar16 = 0;
    uVar7 = FUN_00428b20(1000,0x1a,(int)param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar7);
    piVar8 = (int *)__RTDynamicCast(uVar7,uVar16,pTVar17,pTVar18,uVar19);
    if (piVar8[0xef] != 0) {
      local_8c = piVar8 + 0xef;
      FUN_004cf210(&local_8c);
    }
    piVar8[0xef] = (int)param_1;
    FUN_004cdcf0(piVar8 + 0xef);
    fVar14 = DAT_00c3793c * DAT_00baa630;
    fVar13 = DAT_00c37940 * DAT_00baa630;
    piVar8[0x117] = 0xd2;
    piVar8[0x39] = (int)fVar14;
    piVar8[0x118] = 0xd2;
    piVar8[0x3a] = (int)fVar13;
    (**(code **)(*piVar8 + 0xc))();
  }
  if (*(int *)((int)param_1 + 0xb64) == 4) {
    uVar4 = FUN_006eef60();
    if (uVar4 % 10 == 0) {
      iVar5 = FUN_006eef60();
      piVar8 = (int *)FUN_006b64d0((float)((double)iVar5 + (double)(&DAT_00bacb00)[-(iVar5 >> 0x1f)]
                                          ) * DAT_00ba9ff4 * DAT_00baa2d0 + DAT_00baa198);
      (**(code **)(*piVar8 + 0x3c))((int)param_1 + 0x1e4,0xffffffff,0xff,0,1);
    }
    local_54 = 0xf;
    local_5c = CONCAT44(8,(undefined4)local_5c);
    uStack_68._0_1_ = s_WalkVert_00b1dd18[0];
    uStack_68._1_1_ = s_WalkVert_00b1dd18[1];
    uStack_68._2_1_ = s_WalkVert_00b1dd18[2];
    uStack_68._3_1_ = s_WalkVert_00b1dd18[3];
    uStack_64._0_1_ = s_WalkVert_00b1dd18[4];
    uStack_64._1_1_ = s_WalkVert_00b1dd18[5];
    uStack_64._2_1_ = s_WalkVert_00b1dd18[6];
    uStack_64._3_1_ = s_WalkVert_00b1dd18[7];
    uStack_60 = uStack_60 & 0xffffff00;
    local_28 = 0xf;
    local_30 = CONCAT44(8,(undefined4)local_30);
    local_3c._0_1_ = s_WalkHori_00b1dd30[0];
    local_3c._1_1_ = s_WalkHori_00b1dd30[1];
    local_3c._2_1_ = s_WalkHori_00b1dd30[2];
    local_3c._3_1_ = s_WalkHori_00b1dd30[3];
    local_38._0_1_ = s_WalkHori_00b1dd30[4];
    local_38._1_1_ = s_WalkHori_00b1dd30[5];
    local_38._2_1_ = s_WalkHori_00b1dd30[6];
    local_38._3_1_ = s_WalkHori_00b1dd30[7];
    local_34 = local_34 & 0xffffff00;
    local_14._0_1_ = 1;
    local_14._1_3_ = 0;
    FUN_006c1330(&local_3c,&uStack_68,0x3dcccccd);
    local_14 = (uint)local_14._1_3_ << 8;
    if (0xf < local_28) {
      uVar10 = local_28 + 1;
      uVar4 = local_3c;
      if (0xfff < uVar10) {
        uVar4 = *(uint *)(local_3c - 4);
        uVar10 = local_28 + 0x24;
        if (0x1f < (local_3c - uVar4) - 4) goto LAB_0050ea3b;
      }
      FUN_00aef15c(uVar4,uVar10);
    }
    local_14 = -1;
    local_30 = local_30 & 0xffffffff;
    local_28 = 0xf;
    local_3c = local_3c & 0xffffff00;
    if (0xf < local_54) {
      uVar4 = local_54 + 1;
      iVar5 = uStack_68;
      if (0xfff < uVar4) {
        iVar5 = *(int *)(uStack_68 + -4);
        uVar4 = local_54 + 0x24;
        if (0x1f < (uStack_68 - iVar5) - 4U) {
LAB_0050ea3b:
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(iVar5,uVar4);
    }
    if (((*(uint *)((int)param_1 + 0x168) & 0x1000800) == 0) ||
       (*(int *)((int)param_1 + 0xf1c) != -1)) {
      piVar8 = DAT_00baa304;
      if ((*(int *)((int)param_1 + 0x28) != 0x116) &&
         ((piVar8 = DAT_00baa490, *(int *)((int)param_1 + 0x2c) != 1 &&
          (piVar8 = DAT_00baa380, *(int *)((int)param_1 + 0x2c) == 3)))) {
        local_34 = *(uint *)((int)param_1 + 0x3ec);
        local_30 = DAT_00b1f7e0;
        local_28 = DAT_00b1f7e8;
        if (*(int *)((int)param_1 + 0x30) != 0) {
          fVar12 = (float10)FUN_007e9080();
          local_8c = (int *)(float)(fVar12 * (float10)DAT_00baa1d4 + (float10)DAT_00baa324);
          piVar8 = local_8c;
        }
      }
      uVar19 = 1;
      uVar16 = 0;
      uVar7 = FUN_006bec40(&local_a4,0);
      FUN_007e33c0(uVar7,piVar8,uVar16,uVar19);
    }
    else {
      iVar5 = FUN_006be840();
      local_98 = *(float *)(iVar5 + 0x33c);
      local_94 = *(float *)(iVar5 + 0x340);
      FUN_007e4940(&local_98,0);
      *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa3a4;
    }
    if (*(int *)((int)param_1 + 0xf1c) == -1) {
      uVar7 = FUN_006be840();
      cVar3 = FUN_006d7d60(uVar7);
      if (((cVar3 != '\0') && (*(char *)((int)param_1 + 0xb40) != '\0')) &&
         (uVar4 = FUN_006eef60(), uVar4 % 3 == 0)) goto LAB_0050eb9d;
    }
    else {
      cVar3 = FUN_006d8290(10);
      if (cVar3 != '\0') {
LAB_0050eb9d:
        FUN_006d6ba0(0xa5,0x3f800000,0x28,0,0x3f800000);
      }
    }
    *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa438;
    *(bool *)((int)param_1 + 0x148) =
         *(float *)((int)param_1 + 0x360) <= 0.0 && *(float *)((int)param_1 + 0x360) != 0.0;
  }
  else {
    iVar5 = FUN_006be840(uVar4);
    local_88 = (int *)(*(float *)(iVar5 + 0x33c) - *(float *)((int)param_1 + 0x33c));
    local_8c = (int *)(*(float *)(iVar5 + 0x340) - *(float *)((int)param_1 + 0x340));
    if (*(int *)((int)param_1 + 0x2c) == 1) {
      if (*(int *)((int)param_1 + 0xf1c) != -1) {
        pfVar9 = (float *)FUN_006d82d0(&local_a4);
        local_88 = (int *)(*pfVar9 * DAT_00baa81c);
        local_8c = (int *)(pfVar9[1] * DAT_00baa81c);
      }
      fVar13 = (float)local_88 * (float)local_88 + (float)local_8c * (float)local_8c;
      FUN_00435a50();
      if ((fVar13 < DAT_00baaa94) && (DAT_00baa06c < fVar13)) {
        fVar13 = DAT_00baa2d0 / fVar13;
        fVar15 = (float)((uint)local_8c ^ DAT_00bacb70);
        fVar14 = *(float *)((int)param_1 + 0x36c);
        if (NAN(fVar14) == (fVar14 == 0.0)) {
          *(float *)((int)param_1 + 0x360) =
               ((float)((uint)local_88 ^ DAT_00bacb70) * fVar13 * *(float *)((int)param_1 + 0x39c))
               / fVar14 + *(float *)((int)param_1 + 0x360);
          *(float *)((int)param_1 + 0x364) =
               (fVar15 * fVar13 * *(float *)((int)param_1 + 0x39c)) / fVar14 +
               *(float *)((int)param_1 + 0x364);
        }
      }
      fVar13 = *(float *)((int)param_1 + 0x36c) * DAT_00baa3bc;
    }
    else {
      fVar13 = *(float *)((int)param_1 + 0x36c) * DAT_00baa354;
    }
    *(float *)((int)param_1 + 0x36c) = fVar13;
    if (*(int *)((int)param_1 + 0x7c) != 0) {
      cVar3 = FUN_0040add0("Regen");
      if (cVar3 != '\0') {
        FUN_006d6ba0(0x1d,0x3f800000,2,0,0x3f800000);
      }
      if ((*(int *)((int)param_1 + 0x7c) != 0) && (*(char *)((int)param_1 + 0x8c) != '\0'))
      goto LAB_0050ed8a;
    }
    *(undefined4 *)((int)param_1 + 0xb64) = 4;
  }
LAB_0050ed8a:
  if (*(char *)((int)param_1 + 0x173) == '\0') goto LAB_0050f261;
  if (*(int *)((int)param_1 + 0x28) == 0x116) {
    uVar7 = FUN_006eef60();
    FUN_00428b20(0x118,0,(int)param_1 + 0x33c,&DAT_00c7b640,local_84,0,uVar7);
    uVar7 = FUN_006eef60();
    uVar16 = FUN_00813520(&local_a4,(int)param_1 + 0x33c,0x42200000,0,0,0);
    FUN_00428b20(0x117,0,uVar16,&DAT_00c7b640,local_84,0,uVar7);
    goto LAB_0050f261;
  }
  if (*(int *)((int)param_1 + 0x2c) != 3) {
    if (*(int *)((int)param_1 + 0xb64) == 4) {
      *(undefined *)((int)param_1 + 0x173) = 0;
      *(undefined4 *)((int)param_1 + 0x380) = 0x41200000;
      FUN_0040a380("ReGen",0);
      *(undefined4 *)((int)param_1 + 0xb64) = 3;
      if ((*(int *)((int)param_1 + 0x2c) == 2) && (iVar5 = FUN_006d6c20(), iVar5 < 7)) {
        uVar7 = FUN_006eef60();
        iVar5 = FUN_00428b20(0x55,0,(int)param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar7);
        *(uint *)(iVar5 + 0x168) = *(uint *)(iVar5 + 0x168) & 0xfffffffb;
        *(undefined4 *)(iVar5 + 0x16c) = *(undefined4 *)(iVar5 + 0x16c);
      }
    }
    goto LAB_0050f261;
  }
  local_34 = *(uint *)((int)param_1 + 0x3ec);
  local_30 = DAT_00b1f7ec;
  local_28 = DAT_00b1f7f4;
  cVar3 = FUN_00417430(0,0x200000);
  if (cVar3 == '\0') {
    iVar5 = 0xf;
    if (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 8) == 5) {
      iVar5 = 0x19;
    }
    uVar11 = iVar5 * *(int *)((int)param_1 + 0x30);
    uVar10 = FUN_007e9020(100);
    uVar4 = 99;
    if (uVar11 < 99) {
      uVar4 = uVar11;
    }
    if (uVar10 <= uVar4) goto LAB_0050ef86;
    if (DAT_00baa06c <=
        *(float *)((int)param_1 + 0x360) * *(float *)((int)param_1 + 0x360) +
        *(float *)((int)param_1 + 0x364) * *(float *)((int)param_1 + 0x364)) {
      piVar8 = DAT_00baa54c;
      FUN_0041d540();
      local_8c = piVar8;
      piVar8 = DAT_00baa54c;
      FUN_0041d520();
      local_98 = *(float *)((int)param_1 + 0x360) * (float)local_8c -
                 *(float *)((int)param_1 + 0x364) * (float)piVar8;
      local_94 = *(float *)((int)param_1 + 0x364) * (float)local_8c +
                 *(float *)((int)param_1 + 0x360) * (float)piVar8;
      pfVar9 = (float *)FUN_00a10030(local_90);
    }
    else {
      pfVar9 = (float *)FUN_0067f070(&local_a4);
    }
    local_9c = *pfVar9;
    local_84 = pfVar9[1];
    *(undefined *)((int)param_1 + 0x173) = 0;
    local_7d = '\x01';
    if (*(int *)((int)param_1 + 0xb64) == 4) goto LAB_0050efa6;
    local_88 = (int *)0x28;
    local_7d = '\x01';
  }
  else {
LAB_0050ef86:
    local_7d = '\0';
    if (*(int *)((int)param_1 + 0xb64) != 4) goto LAB_0050f261;
    *(undefined *)((int)param_1 + 0x173) = 0;
    local_84 = 0.0;
LAB_0050efa6:
    local_88 = (int *)((4 - *(int *)((int)param_1 + 0x30)) * 10);
  }
  cVar3 = FUN_0040a5d0("ReGen",1);
  if (cVar3 != '\0') {
    FUN_0040a1b0();
    *(undefined *)((int)param_1 + 0x8c) = 1;
  }
  if ((0 < (int)local_88) && (*(int *)((int)param_1 + 0x7c) != 0)) {
    FUN_00408e00();
  }
  fVar14 = *(float *)((int)param_1 + 900) * (float)DAT_00baa304;
  *(undefined4 *)((int)param_1 + 0xb64) = 3;
  fVar13 = DAT_00baa454;
  if (DAT_00baa454 <= fVar14) {
    fVar13 = fVar14;
  }
  *(float *)((int)param_1 + 900) = fVar13;
  *(float *)((int)param_1 + 0x380) = fVar13;
  if (local_7d != '\0') {
    *(int *)((int)param_1 + 0x30) = *(int *)((int)param_1 + 0x30) + 1;
    *(undefined *)((int)param_1 + 0x3b0) = 1;
    *(undefined4 *)((int)param_1 + 0xbc0) = 2;
    uVar7 = FUN_007e90f0();
    *(undefined4 *)((int)param_1 + 0x3ec) = uVar7;
    uVar7 = FUN_007e90f0();
    local_a4 = (int *)(local_9c * DAT_00baa75c);
    local_a0 = local_84 * DAT_00baa75c;
    local_ac = (float)local_a4 + *(float *)((int)param_1 + 0x33c);
    local_a8 = local_a0 + *(float *)((int)param_1 + 0x340);
    local_94 = local_a0;
    local_8c = local_a4;
    iVar5 = FUN_00428b20(*(undefined4 *)((int)param_1 + 0x28),*(undefined4 *)((int)param_1 + 0x2c),
                         &local_ac,&local_a4,param_1,0,uVar7);
    uVar7 = *(undefined4 *)((int)param_1 + 900);
    *(undefined4 *)(iVar5 + 0x380) = uVar7;
    *(undefined4 *)(iVar5 + 900) = uVar7;
    FUN_0040a380("ReGen",0);
    if ((0 < (int)local_88) && (*(int *)(iVar5 + 0x7c) != 0)) {
      FUN_00408e00();
    }
    uVar7 = *(undefined4 *)((int)param_1 + 0x30);
    *(uint *)(iVar5 + 0x168) = *(uint *)(iVar5 + 0x168) & 0xfffffffb;
    *(undefined4 *)(iVar5 + 0x30) = uVar7;
    *(undefined4 *)(iVar5 + 0x16c) = *(undefined4 *)(iVar5 + 0x16c);
    *(undefined4 *)(iVar5 + 0xb64) = 3;
    FUN_004071f0((int)param_1 + 0x1e4);
    *(uint *)(iVar5 + 0x16c) = *(uint *)(iVar5 + 0x16c) | 0x400;
    *(uint *)(iVar5 + 0xf18) = *(uint *)(iVar5 + 0xf18) | 1;
    fVar13 = local_9c * DAT_00baad90;
    *(undefined *)(iVar5 + 0x3b0) = 1;
    fVar14 = local_84 * DAT_00baad90;
    *(undefined4 *)(iVar5 + 0xbc0) = 1;
    *(undefined4 *)(iVar5 + 0x168) = *(undefined4 *)(iVar5 + 0x168);
    *(float *)((int)param_1 + 0x360) = fVar13;
    *(float *)((int)param_1 + 0x364) = fVar14;
    *(float *)((int)param_1 + 0x33c) = *(float *)((int)param_1 + 0x33c) - (float)local_8c;
    *(float *)((int)param_1 + 0x340) = *(float *)((int)param_1 + 0x340) - local_94;
  }
LAB_0050f261:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

