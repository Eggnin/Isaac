/* Local J460 decompiler output.
 * VA: 0x0050c370
 * Entry: 0050c370
 * Dispatcher: 0x006c2990
 * Types: 22,205,817
 * Identities: 205.0.0,22.0.0,22.1.0,22.2.0,22.3.0,817.0.0,817.1.0
 * Evidence: dispatcher=0x006c2990; end=0x0050d370; instructions=1009
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=22,205,817;
   identities=205.0.0,22.0.0,22.1.0,22.2.0,22.3.0,817.0.0,817.1.0; dispatcher=0x006c2990;
   end=0x0050d370; instructions=1009 */

void __fastcall AI_0050c370(float param_1)

{
  bool bVar1;
  undefined *puVar2;
  char cVar3;
  int iVar4;
  uint uVar5;
  float *pfVar6;
  undefined4 uVar7;
  uint uVar8;
  float *pfVar9;
  undefined4 uVar10;
  int iVar11;
  float fVar12;
  float fVar13;
  double dVar14;
  undefined4 uVar15;
  TypeDescriptor *pTVar16;
  undefined8 uVar17;
  undefined local_9c [8];
  float local_94;
  float local_90;
  float local_8c;
  float local_88;
  float local_84;
  float *local_80;
  float local_7c;
  float local_78;
  float local_74;
  float *local_70;
  float local_6c;
  undefined4 local_54;
  undefined4 local_50;
  undefined local_4c;
  undefined4 local_44;
  uint local_40;
  undefined4 local_3c;
  undefined4 local_38;
  char local_34 [4];
  int local_30;
  float local_2c;
  float local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af4295;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_7c = param_1;
  if (*(int *)((int)param_1 + 0xb64) == 0) {
    puStack_20 = &stack0xfffffffc;
    if ((*(int *)((int)param_1 + 0x28) == 0x331) &&
       (puStack_20 = &stack0xfffffffc, FUN_0040a940("HeadAppear",0),
       *(int *)((int)param_1 + 0x2c) == 1)) {
      *(undefined4 *)((int)param_1 + 0x350) = 0xc0c00000;
      *(undefined4 *)((int)param_1 + 0x184) = 6;
    }
    *(undefined4 *)((int)param_1 + 0xb64) = 4;
    *(undefined4 *)((int)param_1 + 0xbb0) = 0;
    goto LAB_0050d345;
  }
  if (*(int *)((int)param_1 + 0xb64) == 4) {
    puStack_20 = &stack0xfffffffc;
    if (*(int *)((int)param_1 + 0xf1c) == -1) {
      puStack_20 = &stack0xfffffffc;
      FUN_006be840(local_24);
      cVar3 = FUN_006d7d60();
      if (cVar3 != '\0') goto LAB_0050c43c;
      FUN_007e6300();
    }
    else {
LAB_0050c43c:
      uVar10 = 0;
      uVar7 = FUN_006bec40(&local_2c,0);
      FUN_007e4940(uVar7,uVar10);
      if (*(int *)((int)param_1 + 0xf1c) == -1) {
        cVar3 = 0 < *(int *)((int)param_1 + 0xb50);
      }
      else {
        cVar3 = FUN_006d8290();
      }
      if (cVar3 != '\0') {
        uVar5 = FUN_006eef60();
        FUN_006d6ba0(0x8f,0x3f800000,uVar5 % 100 + 0x2d,0,0x3f800000);
      }
    }
    if ((*(int *)((int)param_1 + 0x28) == 0x331) && (*(int *)((int)param_1 + 0x2c) == 1)) {
      FUN_0040a380("WalkVert",0);
      if ((float)(*(uint *)((int)param_1 + 0x364) & DAT_00bacb40) <
          (float)((uint)*(float *)((int)param_1 + 0x360) & DAT_00bacb40)) {
        *(bool *)((int)param_1 + 0x148) = *(float *)((int)param_1 + 0x360) < 0.0;
      }
    }
    else {
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
      local_28 = 2.101948e-44;
      local_2c = 1.121039e-44;
      local_3c._0_1_ = s_WalkHori_00b1dd30[0];
      local_3c._1_1_ = s_WalkHori_00b1dd30[1];
      local_3c._2_1_ = s_WalkHori_00b1dd30[2];
      local_3c._3_1_ = s_WalkHori_00b1dd30[3];
      local_38._0_1_ = s_WalkHori_00b1dd30[4];
      local_38._1_1_ = s_WalkHori_00b1dd30[5];
      local_38._2_1_ = s_WalkHori_00b1dd30[6];
      local_38._3_1_ = s_WalkHori_00b1dd30[7];
      local_34[0] = '\0';
      local_14._0_1_ = 1;
      local_14._1_3_ = 0;
      FUN_006c1330(&local_3c,&local_54,0x3dcccccd);
      local_14 = (uint)local_14._1_3_ << 8;
      if (0xf < (uint)local_28) {
        uVar8 = (int)local_28 + 1;
        uVar5 = local_3c;
        if (0xfff < uVar8) {
          uVar5 = *(uint *)(local_3c - 4);
          uVar8 = (int)local_28 + 0x24;
          if (0x1f < (local_3c - uVar5) - 4) goto LAB_0050c5ea;
        }
        FUN_00aef15c(uVar5,uVar8);
      }
      local_14 = -1;
      local_2c = 0.0;
      local_28 = 2.101948e-44;
      local_3c = local_3c & 0xffffff00;
      if (0xf < local_40) {
        uVar5 = local_40 + 1;
        iVar4 = local_54;
        if (0xfff < uVar5) {
          iVar4 = *(int *)(local_54 + -4);
          uVar5 = local_40 + 0x24;
          if (0x1f < (local_54 - iVar4) - 4U) {
LAB_0050c5ea:
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(iVar4,uVar5);
      }
    }
    if ((*(int *)((int)param_1 + 0x7c) == 0) || (*(char *)((int)param_1 + 0x8c) == '\0')) {
      cVar3 = FUN_0040aaf0("HeadWalk",1);
      if ((cVar3 != '\0') && (*(int *)((int)param_1 + 0x9c) != 0)) {
        FUN_00408e00();
      }
    }
    else {
      FUN_0040a940("HeadWalk",0);
    }
    fVar12 = *(float *)((int)param_1 + 0x36c) * DAT_00baa3a4;
    *(float *)((int)param_1 + 0x36c) = fVar12;
    if ((*(int *)((int)param_1 + 0x28) == 0x16) && (*(int *)((int)param_1 + 0x2c) == 1)) {
      *(float *)((int)param_1 + 0x36c) = fVar12 * DAT_00baa418;
    }
  }
  else {
    puVar2 = &stack0xfffffffc;
    if ((*(int *)((int)param_1 + 0x28) == 0x16) &&
       ((*(int *)((int)param_1 + 0x2c) == 2 ||
        (puVar2 = &stack0xfffffffc, *(int *)((int)param_1 + 0x2c) == 3)))) {
      local_40 = 0xf;
      local_44 = 8;
      local_4c = 0;
      *(float *)((int)param_1 + 0x36c) = *(float *)((int)param_1 + 0x36c) * DAT_00baa3a4;
      local_54._0_1_ = s_WalkVert_00b1dd18[0];
      local_54._1_1_ = s_WalkVert_00b1dd18[1];
      local_54._2_1_ = s_WalkVert_00b1dd18[2];
      local_54._3_1_ = s_WalkVert_00b1dd18[3];
      local_50._0_1_ = s_WalkVert_00b1dd18[4];
      local_50._1_1_ = s_WalkVert_00b1dd18[5];
      local_50._2_1_ = s_WalkVert_00b1dd18[6];
      local_50._3_1_ = s_WalkVert_00b1dd18[7];
      local_28 = 2.101948e-44;
      local_2c = 1.121039e-44;
      local_3c._0_1_ = s_WalkHori_00b1dd30[0];
      local_3c._1_1_ = s_WalkHori_00b1dd30[1];
      local_3c._2_1_ = s_WalkHori_00b1dd30[2];
      local_3c._3_1_ = s_WalkHori_00b1dd30[3];
      local_38._0_1_ = s_WalkHori_00b1dd30[4];
      local_38._1_1_ = s_WalkHori_00b1dd30[5];
      local_38._2_1_ = s_WalkHori_00b1dd30[6];
      local_38._3_1_ = s_WalkHori_00b1dd30[7];
      local_34[0] = '\0';
      local_14._0_1_ = 3;
      local_14._1_3_ = 0;
      FUN_006c1330(&local_3c,&local_54,0x3dcccccd);
      local_14 = CONCAT31(local_14._1_3_,2);
      if (0xf < (uint)local_28) {
        uVar8 = (int)local_28 + 1;
        uVar5 = local_3c;
        if (0xfff < uVar8) {
          uVar5 = *(uint *)(local_3c - 4);
          uVar8 = (int)local_28 + 0x24;
          if (0x1f < (local_3c - uVar5) - 4) goto LAB_0050c792;
        }
        FUN_00aef15c(uVar5,uVar8);
      }
      local_14 = -1;
      local_2c = 0.0;
      local_28 = 2.101948e-44;
      local_3c = local_3c & 0xffffff00;
      puVar2 = puStack_20;
      if (0xf < local_40) {
        uVar5 = local_40 + 1;
        iVar4 = local_54;
        if (0xfff < uVar5) {
          iVar4 = *(int *)(local_54 + -4);
          uVar5 = local_40 + 0x24;
          if (0x1f < (local_54 - iVar4) - 4U) {
LAB_0050c792:
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(iVar4,uVar5);
        puVar2 = puStack_20;
      }
    }
    puStack_20 = puVar2;
    cVar3 = FUN_0040add0();
    if (cVar3 != '\0') {
      FUN_006d6ba0((*(int *)((int)param_1 + 0x28) == 0xcd) + 0x9e,0x3f800000,2,0,0x3f800000);
      if (*(int *)((int)param_1 + 0x28) == 0x16) {
        iVar4 = *(int *)((int)param_1 + 0x2c);
        if (iVar4 == 1) {
          uVar7 = FUN_006eef60();
          iVar4 = FUN_00428b20(0x17,1,(int)param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar7);
          fVar12 = *(float *)(iVar4 + 900) * DAT_00baa2d0;
          *(float *)(iVar4 + 900) = fVar12;
          *(float *)(iVar4 + 0x380) = fVar12;
LAB_0050cab0:
          *(undefined4 *)(iVar4 + 0x16c) = *(undefined4 *)(iVar4 + 0x16c);
          *(uint *)(iVar4 + 0x168) = *(uint *)(iVar4 + 0x168) & 0xfffffffb;
        }
        else if (iVar4 == 2) {
          local_74 = DAT_00baa7e8;
          if (*(char *)((int)param_1 + 0x148) != '\0') {
            local_74 = DAT_00baadb4;
          }
          local_70 = (float *)0x0;
          local_6c = local_74;
          uVar7 = FUN_006eef60();
          local_84 = local_6c + *(float *)((int)param_1 + 0x33c);
          local_80 = (float *)(*(float *)((int)param_1 + 0x340) + DAT_00ba9fe4);
          iVar4 = FUN_00428b20(0x26,1,&local_84,&local_74,param_1,1,uVar7);
          *(uint *)(iVar4 + 0x168) = *(uint *)(iVar4 + 0x168) & 0xfffffffb;
          *(undefined4 *)(iVar4 + 0x16c) = *(undefined4 *)(iVar4 + 0x16c);
          uVar7 = FUN_00407170();
          local_84 = *(float *)((int)param_1 + 0xc38) * DAT_00ba9fe4;
          local_80 = (float *)(*(float *)((int)param_1 + 0xc38) * DAT_00baadec);
          FUN_006d7cf0(&local_84,uVar7,&local_74);
        }
        else {
          if (iVar4 != 3) goto LAB_0050ca5e;
          fVar12 = 0.0;
          local_78 = 8.407791e-45;
          do {
            uVar7 = FUN_006eef60();
            local_6c = (float)FUN_00428b20(0xde,0,(int)param_1 + 0x33c,&DAT_00c7b640,param_1,1,uVar7
                                          );
            if (fVar12 == 0.0) {
              fVar12 = local_6c;
            }
            local_80 = (float *)((int)local_6c + 0x3bc);
            if (*(int *)((int)local_6c + 0x3bc) != 0) {
              local_70 = local_80;
              FUN_004cf210();
            }
            *local_80 = fVar12;
            if (fVar12 != 0.0) {
              FUN_004cdcf0();
            }
            *(uint *)((int)local_6c + 0x168) = *(uint *)((int)local_6c + 0x168) & 0xfffffffb;
            *(undefined4 *)((int)local_6c + 0x16c) = *(undefined4 *)((int)local_6c + 0x16c);
            uVar5 = FUN_006eef60();
            local_78 = (float)((int)local_78 + -1);
            *(float *)((int)local_6c + 0x380) =
                 (float)((double)(uVar5 % 100 + 200) + DAT_00bacb00) +
                 *(float *)((int)local_6c + 0x380);
          } while (local_78 != 0.0);
          local_78 = 0.0;
        }
      }
      else {
        if (*(int *)((int)param_1 + 0x28) != 0x331) {
LAB_0050ca5e:
          uVar7 = FUN_006eef60();
          uVar17 = 0xc5d6ac;
          pTVar16 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uVar15 = 0;
          uVar10 = 0x55;
          if (*(int *)((int)param_1 + 0x28) == 0x16) {
            uVar10 = 0x12;
          }
          uVar7 = FUN_00428b20(uVar10,0,(int)param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar7);
          iVar4 = __RTDynamicCast(uVar7,uVar15,pTVar16,uVar17);
          *(undefined *)(iVar4 + 0x174) = 1;
          goto LAB_0050cab0;
        }
        if (*(int *)((int)param_1 + 0x2c) == 1) {
          uVar5 = FUN_006eef60();
          uVar7 = 0x328;
        }
        else {
          uVar5 = FUN_006eef60();
          uVar7 = 0x32a;
        }
        iVar4 = FUN_00428b20(uVar7,0,(int)param_1 + 0x33c,&DAT_00c7b640,param_1,
                             (ulonglong)uVar5 << 0x20);
        *(uint *)(iVar4 + 0x168) = *(uint *)(iVar4 + 0x168) & 0xfffffffb;
        *(undefined4 *)(iVar4 + 0x16c) = *(undefined4 *)(iVar4 + 0x16c);
      }
    }
    if ((*(int *)((int)param_1 + 0x9c) == 0) || (*(char *)((int)param_1 + 0xac) == '\0')) {
      *(undefined4 *)((int)param_1 + 0xb64) = 4;
    }
  }
  iVar4 = FUN_006d6c20();
  local_70 = (float *)&DAT_00000005;
  if ((*(int *)((int)param_1 + 0x28) == 0x16) && (*(int *)((int)param_1 + 0x2c) == 3)) {
    AI_0041af60(local_34,0xde,0xffffffff,0xffffffff,1,0);
    fVar12 = 0.0;
    if (local_28 != 0.0) {
      do {
        iVar11 = *(int *)(local_30 + (int)fVar12 * 4);
        if ((*(int *)(iVar11 + 0x3bc) != iVar11) &&
           (*(uint *)(iVar11 + 0x3ec) % (uint)local_70 == 0)) {
          iVar4 = iVar4 + -1;
        }
        fVar12 = (float)((int)fVar12 + 1);
        param_1 = local_7c;
      } while ((uint)fVar12 < (uint)local_28);
    }
    if (local_34[0] == '\0') {
      local_14 = 4;
      FUN_00a648b0(0,0);
      local_14 = -1;
    }
  }
  if ((*(float *)((int)param_1 + 0xbb0) - *(float *)((int)param_1 + 0x39c) <= 0.0) &&
     (uVar5 = FUN_006eef60(), (int)(uVar5 % 5 + 4) <= iVar4)) {
    uVar5 = FUN_006eef60();
    *(float *)((int)param_1 + 0xbb0) =
         (float)((double)(uVar5 % 0x32 + 0x14) + DAT_00bacb00) + *(float *)((int)param_1 + 0xbb0);
  }
  if ((0 < *(int *)((int)param_1 + 0xb50)) || (*(int *)((int)param_1 + 0xf1c) != -1)) {
    if (0.0 < *(float *)((int)param_1 + 0xbb0)) {
      *(float *)((int)param_1 + 0xbb0) =
           *(float *)((int)param_1 + 0xbb0) - *(float *)((int)param_1 + 0x39c);
    }
    else {
      iVar4 = FUN_006be840();
      local_6c = *(float *)(iVar4 + 0x33c) - *(float *)((int)param_1 + 0x33c);
      fVar12 = *(float *)(iVar4 + 0x340) - *(float *)((int)param_1 + 0x340);
      fVar12 = fVar12 * fVar12 + local_6c * local_6c;
      FUN_00435a50();
      if (*(int *)((int)param_1 + 0xf1c) == -1) {
        bVar1 = fVar12 < DAT_00baab08;
        iVar4 = -1;
      }
      else {
        pfVar6 = (float *)FUN_006d85a0();
        if (((NAN(*pfVar6) || NAN(DAT_00c7b640)) == (*pfVar6 == DAT_00c7b640)) ||
           ((NAN(pfVar6[1]) || NAN((float)DAT_00c7b644)) == (pfVar6[1] == (float)DAT_00c7b644))) {
          iVar4 = *(int *)((int)param_1 + 0xf1c);
          bVar1 = true;
        }
        else {
          iVar4 = *(int *)((int)param_1 + 0xf1c);
          bVar1 = false;
        }
      }
      if ((bVar1) && ((*(uint *)((int)param_1 + 0x168) & 0x1000a00) == 0)) {
        if (iVar4 == -1) {
          iVar4 = FUN_006be840();
          local_74 = *(float *)(iVar4 + 0x33c);
          local_70 = *(float **)(iVar4 + 0x340);
          cVar3 = FUN_007f0df0(&local_74,(int)param_1 + 0x33c,2,0,0,0,0);
          if (cVar3 == '\0') {
            *(undefined4 *)((int)param_1 + 0xbb0) = 0x40e00000;
            goto LAB_0050ce7b;
          }
        }
        fVar12 = DAT_00baa98c;
        *(undefined4 *)((int)param_1 + 0xbb0) = 0x42960000;
        if (*(int *)((int)param_1 + 0x28) == 0xcd) {
          if (*(int *)((int)param_1 + 0xf1c) == -1) {
            uVar5 = FUN_006eef60();
            fVar12 = *(float *)((int)param_1 + 0xbb0);
            uVar5 = uVar5 % 0x14;
          }
          else {
            uVar5 = 0;
          }
          *(float *)((int)param_1 + 0xbb0) = (float)((double)(uVar5 + 0x37) + DAT_00bacb00) + fVar12
          ;
        }
        if ((*(int *)((int)param_1 + 0x28) == 0x16) && (*(int *)((int)param_1 + 0x2c) == 3)) {
          *(undefined4 *)((int)param_1 + 0xbb0) = 0x43520000;
        }
        if (*(int *)((int)param_1 + 0xf1c) == -1) {
          *(float *)((int)param_1 + 0xf20) = DAT_00c7b640;
          pfVar6 = DAT_00c7b644;
        }
        else {
          FUN_006d85a0();
          *(float *)((int)param_1 + 0xf20) = local_74;
          pfVar6 = local_70;
        }
        *(float **)((int)param_1 + 0xf24) = pfVar6;
        fVar12 = *(float *)((int)param_1 + 0xf20);
        if (((NAN(fVar12) || NAN(DAT_00c7b640)) == (fVar12 == DAT_00c7b640)) ||
           ((NAN((float)pfVar6) || NAN((float)DAT_00c7b644)) ==
            ((float)pfVar6 == (float)DAT_00c7b644))) {
          local_6c = fVar12;
        }
        cVar3 = FUN_0040aaf0("HeadAttack",1);
        if (cVar3 != '\0') {
          FUN_0040a1b0();
          *(undefined *)((int)param_1 + 0xac) = 1;
        }
        *(undefined4 *)((int)param_1 + 0xb64) = 8;
        *(bool *)((int)param_1 + 0x148) = local_6c < 0.0;
      }
      else {
        *(undefined4 *)((int)param_1 + 0xbb0) = 0x40400000;
      }
    }
  }
LAB_0050ce7b:
  if ((*(char *)((int)param_1 + 0x173) != '\0') && (DAT_00baadec < *(float *)((int)param_1 + 0x380))
     ) {
    iVar4 = FUN_006d6c20();
    local_70 = (float *)(DAT_00baa75c / ((float)iVar4 * DAT_00baa198 + DAT_00baa454));
    dVar14 = ceil((double)(float)local_70);
    local_70 = (float *)(float)dVar14;
    iVar4 = *(int *)((int)param_1 + 0x28);
    iVar11 = (int)dVar14;
    if (iVar4 == 0x16) {
      iVar4 = *(int *)((int)param_1 + 0x2c);
      if ((iVar4 == 1) || (iVar4 == 2)) {
        uVar5 = FUN_006eef60();
        iVar4 = (uVar5 & 1) + 1;
        if (iVar4 < iVar11) {
          iVar11 = iVar4;
        }
      }
      else if (iVar4 == 3) {
        iVar11 = 1;
      }
    }
    else if (iVar4 == 0xcd) {
      iVar11 = 1;
    }
    else if (iVar4 == 0x331) {
      iVar11 = 1;
      if (1 < iVar11 + -1) {
        iVar11 = iVar11 + -1;
      }
    }
    pfVar6 = (float *)(iVar11 - *(short *)((int)param_1 + 0xc76));
    local_70 = (float *)0x0;
    if (0 < (int)pfVar6) {
      local_70 = pfVar6;
    }
    if (0 < (int)local_70) {
      do {
        local_6c = 0.0;
        if (*(int *)((int)param_1 + 0x28) == 0x16) {
          if (*(int *)((int)param_1 + 0x2c) == 3) {
            local_7c = 0.0;
            do {
              uVar7 = FUN_006eef60();
              iVar4 = FUN_006eef60();
              local_6c = (float)((double)iVar4 + (&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4 *
                         DAT_00baa704;
              local_6c = local_6c + local_6c;
              iVar4 = FUN_006eef60();
              local_78 = (float)((double)iVar4 + (&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4 *
                         DAT_00baa81c + DAT_00baa784;
              fVar12 = local_6c;
              FUN_0041d540();
              local_8c = fVar12 * local_78 + *(float *)((int)param_1 + 0x33c);
              fVar13 = local_6c;
              FUN_0041d520();
              fVar12 = local_7c;
              local_88 = fVar13 * local_78 + *(float *)((int)param_1 + 0x340);
              iVar4 = FUN_00428b20(*(undefined4 *)(&DAT_00b615d0 + (int)local_7c),
                                   *(undefined4 *)(&DAT_00b615d4 + (int)local_7c),&local_8c,
                                   &DAT_00c7b640,param_1,0,uVar7);
              local_7c = (float)((int)fVar12 + 8);
              *(uint *)(iVar4 + 0x168) = *(uint *)(iVar4 + 0x168) & 0xfffffffb;
              *(undefined4 *)(iVar4 + 0x16c) = *(undefined4 *)(iVar4 + 0x16c);
            } while ((uint)local_7c < 0x68);
          }
          else {
            uVar5 = FUN_006eef60();
            local_78 = 1.821688e-44;
            if (uVar5 % 0xb < 8) {
              if (uVar5 % 0xb == 7) {
                local_78 = 1.961818e-44;
              }
            }
            else {
              local_78 = 2.522337e-44;
            }
            if (*(int *)((int)param_1 + 0x2c) == 1) {
              local_78 = 3.222986e-44;
              local_6c = 1.401298e-45;
            }
            else if (*(int *)((int)param_1 + 0x2c) == 2) {
              local_78 = 1.079e-43;
              local_6c = 0.0;
            }
            iVar4 = FUN_006eef60();
            local_7c = (float)((double)iVar4 + (&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4 *
                       DAT_00baa708;
            local_7c = local_7c + local_7c;
            iVar4 = FUN_006eef60();
            local_80 = (float *)((float)((double)iVar4 + (&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                                 DAT_00ba9ff4 * DAT_00baa7a4);
            if ((float)local_80 <= (float)DAT_00baa630) {
              local_80 = DAT_00baa630;
            }
            uVar7 = FUN_006eef60();
            fVar12 = local_7c;
            FUN_0041d540();
            local_94 = fVar12 * (float)local_80 + *(float *)((int)param_1 + 0x33c);
            fVar12 = local_7c;
            FUN_0041d520();
            local_90 = fVar12 * (float)local_80 + *(float *)((int)param_1 + 0x340);
            iVar4 = FUN_00428b20(local_78,local_6c,&local_94,&DAT_00c7b640,param_1,0,uVar7);
            *(uint *)(iVar4 + 0x168) = *(uint *)(iVar4 + 0x168) & 0xfffffffb;
            *(undefined4 *)(iVar4 + 0x16c) = *(undefined4 *)(iVar4 + 0x16c);
            if (*(int *)((int)param_1 + 0x2c) == 1) {
              fVar12 = *(float *)(iVar4 + 900) * DAT_00baa2d0;
              *(float *)(iVar4 + 900) = fVar12;
              *(float *)(iVar4 + 0x380) = fVar12;
            }
          }
        }
        else {
          if (*(int *)((int)param_1 + 0x28) == 0x331) {
            if (*(int *)((int)param_1 + 0x2c) != 1) {
              pfVar9 = (float *)FUN_00813520(local_9c,(int)param_1 + 0x33c,0x42a00000,1,
                                             DAT_00ba9fe4 <
                                             *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7240),0
                                            );
              iVar4 = FUN_006eef60();
              fVar12 = (float)((double)iVar4 + (&DAT_00bacb00)[-(iVar4 >> 0x1f)]) * DAT_00ba9ff4 *
                       DAT_00baa704;
              local_80 = (float *)(fVar12 + fVar12);
              pfVar6 = local_80;
              FUN_0041d540();
              local_2c = (float)pfVar6 * DAT_00baa81c + *pfVar9;
              pfVar6 = local_80;
              FUN_0041d520();
              local_28 = (float)pfVar6 * DAT_00baa81c + pfVar9[1];
              FUN_0055c4c0();
              goto LAB_0050d323;
            }
            uVar8 = FUN_006eef60();
            uVar5 = 0;
            uVar7 = 0x328;
          }
          else {
            uVar5 = FUN_006eef60();
            uVar5 = uVar5 & 1;
            uVar8 = FUN_006eef60();
            uVar7 = 0x5e;
            if (uVar5 != 0) {
              uVar7 = 0x1d;
            }
          }
          iVar4 = FUN_00428b20(uVar7,uVar5,(int)param_1 + 0x33c,&DAT_00c7b640,param_1,
                               (ulonglong)uVar8 << 0x20);
          *(undefined4 *)(iVar4 + 0x16c) = *(undefined4 *)(iVar4 + 0x16c);
          *(uint *)(iVar4 + 0x168) = *(uint *)(iVar4 + 0x168) & 0xfffffffb;
        }
LAB_0050d323:
        local_70 = (float *)((int)local_70 + -1);
      } while (local_70 != (float *)0x0);
    }
  }
  if (*(int *)((int)param_1 + 0xf1c) != -1) {
    *(undefined4 *)((int)param_1 + 0x36c) = 0x3f800000;
  }
LAB_0050d345:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

