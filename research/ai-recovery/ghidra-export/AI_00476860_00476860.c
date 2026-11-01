/* Local J460 decompiler output.
 * VA: 0x00476860
 * Entry: 00476860
 * Dispatcher: 0x006c2990
 * Types: 62
 * Identities: 62.0.0,62.1.0,62.2.0,62.3.0
 * Evidence: dispatcher=0x006c2990; end=0x00479d50; instructions=2872
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=62; identities=62.0.0,62.1.0,62.2.0,62.3.0;
   dispatcher=0x006c2990; end=0x00479d50; instructions=2872 */

void __fastcall AI_00476860(float **param_1)

{
  undefined *puVar1;
  short sVar2;
  code *pcVar3;
  float *pfVar4;
  bool bVar5;
  char cVar6;
  undefined2 uVar7;
  uint uVar8;
  int iVar9;
  undefined4 uVar10;
  float **ppfVar11;
  float **ppfVar12;
  int *piVar13;
  char *pcVar14;
  float ***pppfVar15;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 extraout_ECX_03;
  float ***pppfVar16;
  float *pfVar17;
  float *pfVar18;
  uint uVar19;
  float **ppfVar20;
  float **ppfVar21;
  float fVar22;
  float **ppfVar23;
  float fVar24;
  undefined4 in_stack_fffffc1c;
  undefined4 uVar25;
  TypeDescriptor *pTVar26;
  TypeDescriptor *pTVar27;
  undefined4 uVar28;
  undefined local_3bc [40];
  undefined local_394 [4];
  undefined local_390 [8];
  undefined local_388 [8];
  float **local_380;
  float **local_37c;
  float **local_378;
  float **local_374;
  float **local_370;
  undefined4 local_36c;
  float **local_368;
  float local_364;
  float **local_360;
  float **local_35c;
  float **local_358;
  float local_354;
  float **local_350;
  char local_349;
  float **local_348;
  float **local_344;
  float **local_340;
  float **local_33c;
  undefined local_338 [4];
  undefined4 local_334;
  undefined local_290 [12];
  undefined4 local_284;
  uint local_238;
  float local_228;
  float **local_224;
  undefined local_1e8 [4];
  undefined4 local_1e4;
  undefined local_1bc [16];
  undefined4 local_19c;
  undefined4 local_198;
  undefined4 local_194;
  uint local_190;
  undefined local_140 [4];
  undefined4 local_13c;
  undefined4 uStack_138;
  undefined4 uStack_134;
  undefined4 uStack_130;
  undefined4 local_12c;
  float local_128;
  undefined4 local_124;
  undefined4 uStack_120;
  undefined4 uStack_11c;
  undefined4 uStack_118;
  undefined4 local_114;
  undefined4 uStack_110;
  undefined4 uStack_10c;
  undefined4 uStack_108;
  undefined local_104 [16];
  undefined4 local_f4;
  undefined4 local_f0;
  undefined4 local_ec;
  ulonglong local_e8;
  float *local_e0;
  float *local_dc;
  float *local_d8;
  float *local_d4;
  float *local_d0;
  float *local_cc;
  undefined4 local_c8;
  undefined4 local_c4;
  undefined8 local_c0;
  undefined4 local_b8;
  undefined4 local_b4;
  undefined4 local_b0;
  undefined4 local_ac;
  undefined local_a8;
  undefined *local_a4;
  undefined4 local_a0;
  undefined local_9c;
  undefined4 local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  float *local_80;
  float *local_7c;
  float *local_78;
  float *local_74;
  undefined4 local_70;
  undefined4 local_6c;
  int local_68 [3];
  float *local_5c;
  undefined4 local_58;
  float *local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  float local_44;
  undefined4 local_40;
  float *local_3c;
  float *local_38;
  float *local_34;
  float *local_30;
  int local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af2ab5;
  local_1c = ExceptionList;
  uVar8 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_380 = param_1;
  local_24 = uVar8;
  if (param_1[0xb] == (float *)0x3) {
    FUN_005af800();
    goto LAB_00479cde;
  }
  local_350 = (float **)param_1[0xc];
  local_340 = (float **)0x0;
  local_364 = (float)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  pfVar18 = param_1[0xef];
  param_1 = param_1 + 0xef;
  local_37c = param_1;
  ppfVar20 = local_340;
  puStack_20 = &stack0xfffffffc;
  if (pfVar18 != (float *)0x0) {
    ppfVar20 = (float **)0x0;
    puStack_20 = &stack0xfffffffc;
    do {
      in_stack_fffffc1c = 0x476914;
      iVar9 = __RTDynamicCast(pfVar18,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                              &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0,uVar8);
      if (iVar9 == 0) {
        FUN_00a112c0(0x10,"m_Parent invalid downcast\n");
      }
      ppfVar20 = (float **)((int)ppfVar20 + 1);
      param_1 = (float **)(*param_1 + 0xef);
      pfVar18 = *param_1;
    } while (pfVar18 != (float *)0x0);
  }
  local_340 = ppfVar20;
  ppfVar20 = local_380;
  local_380[0xd5] = (float *)((int)local_340 * 5);
  if ((float)local_380[0xd9] <= 0.0 && (float)local_380[0xd9] != 0.0) {
    local_380[0xd5] = (float *)((int)local_340 * -5);
  }
  ppfVar11 = DAT_00baa2d0;
  if ((local_380[0x2d9] == (float *)0x0) && (local_340 == (float **)0x0)) {
    local_33c = (float **)local_380[0xb];
    if (local_33c == (float **)0x2) {
      local_380[0x5a] = (float *)((uint)local_380[0x5a] | 0x10000);
      local_380[0x5b] = local_380[0x5b];
      local_380[0xe0] = (float *)((float)local_380[0xe0] * (float)ppfVar11);
      local_348 = (float **)0x0;
      local_380[0xe1] = (float *)((float)local_380[0xe1] * (float)ppfVar11);
      FUN_0044bcc0(1,&local_348);
      local_33c = (float **)ppfVar20[0xb];
    }
    ppfVar20[0x5b] = ppfVar20[0x5b];
    ppfVar20[0x5a] = (float *)((uint)ppfVar20[0x5a] & 0xfffffffb | 0x40000);
    local_368 = (float **)0x6;
    ppfVar20[0x62] = (float *)0x0;
    ppfVar20[0x2d9] = (float *)0x3;
    if (local_33c == (float **)0x1) {
      local_368 = (float **)0x9;
    }
    ppfVar20[0x2f0] = (float *)0x0;
    local_358 = (float **)0x0;
    local_370 = (float **)&DAT_00000008;
    local_344 = ppfVar20;
    do {
      uVar10 = FUN_006eef60();
      uVar28 = 0;
      pTVar27 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
      pTVar26 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
      uVar25 = 0;
      uVar10 = FUN_00428b20(0x3e,ppfVar20[0xb],ppfVar20 + 0xcf,&DAT_00c7b640,ppfVar20,0,uVar10);
      in_stack_fffffc1c = 0x476aa0;
      ppfVar11 = (float **)__RTDynamicCast(uVar10,uVar25,pTVar26,pTVar27,uVar28);
      ppfVar11[0x5a] = (float *)((uint)ppfVar11[0x5a] & 0xfffffffb);
      ppfVar11[0x5b] = ppfVar11[0x5b];
      *(undefined *)((int)ppfVar11 + 0x171) = 0;
      if (ppfVar11[0xef] != (float *)0x0) {
        local_348 = ppfVar11 + 0xef;
        FUN_004cf210(&local_348);
      }
      ppfVar11[0xef] = (float *)local_344;
      if (local_344 != (float **)0x0) {
        FUN_004cdcf0(ppfVar11 + 0xef);
      }
      ppfVar11[0xe1] = ppfVar20[0xe1];
      ppfVar11[0xe0] = ppfVar20[0xe0];
      local_344 = local_344 + 0xf0;
      if (*local_344 != (float *)0x0) {
        local_348 = local_344;
        FUN_004cf210(&local_348);
      }
      *local_344 = (float *)ppfVar11;
      FUN_004cdcf0(local_344);
      ppfVar11[0x2d9] = (float *)0x3;
      ppfVar11[0x62] = (float *)0x0;
      local_344 = ppfVar11;
      if (ppfVar20[0xb] == (float *)0x1) {
        iVar9 = 1;
        if (local_33c == (float **)0x1) {
          iVar9 = 4;
        }
        if (iVar9 <= (int)local_358) {
          ppfVar12 = (float **)&DAT_00000005;
          if (local_33c == (float **)0x1) {
            ppfVar12 = local_370;
          }
          if ((int)local_358 < (int)ppfVar12) {
            ppfVar12 = (float **)&DAT_00000004;
            ppfVar23 = (float **)(DAT_00c3793c ^ DAT_00bacb70);
            ppfVar21 = (float **)(DAT_00c37940 ^ DAT_00bacb70);
            if (local_33c == (float **)0x1) {
              ppfVar12 = (float **)0x7;
            }
            if (local_358 == ppfVar12) {
              fVar22 = (float)ppfVar11[0xdc] * (float)DAT_00baa528;
              local_378 = ppfVar23;
              local_374 = ppfVar21;
            }
            else {
              fVar22 = (float)ppfVar11[0xdc] * (float)DAT_00baa354;
              local_360 = ppfVar23;
              local_35c = ppfVar21;
            }
            FUN_006ac2a0(fVar22,ppfVar23,ppfVar21,0xffffffff);
          }
        }
      }
      if (ppfVar20[0xb] == (float *)0x2) {
        ppfVar11[0x5a] = (float *)((uint)ppfVar11[0x5a] | 0x10000);
        ppfVar11[0x5b] = ppfVar11[0x5b];
      }
      local_358 = (float **)((int)local_358 + 1);
    } while ((int)local_358 < (int)local_368);
    ppfVar11[0xd5] = (float *)0x3e8;
    iVar9 = FUN_0040b220(0);
    *(float **)(iVar9 + 0x40) = DAT_00c7b640;
    *(float **)(iVar9 + 0x44) = DAT_00c7b644;
    ppfVar11[0x5a] = (float *)((uint)ppfVar11[0x5a] | 0x10000);
    ppfVar11[0x5b] = ppfVar11[0x5b];
  }
  if (((local_350 == (float **)0x1) && (*(short *)(ppfVar20 + 0x2f1) == 0)) &&
     (ppfVar20[0xb] == (float *)0x2)) {
    pfVar18 = ppfVar20[0xef];
    ppfVar11 = ppfVar20;
    while (pfVar18 != (float *)0x0) {
      in_stack_fffffc1c = 0x476d14;
      iVar9 = __RTDynamicCast(pfVar18,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                              &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0,uVar8);
      if (iVar9 == 0) {
        FUN_00a112c0(0x10,"m_Parent invalid downcast\n");
      }
      ppfVar11 = (float **)ppfVar11[0xef];
      ppfVar20 = local_380;
      pfVar18 = ppfVar11[0xef];
    }
    do {
      pfVar18 = (float *)ppfVar20[0xcc][0x14];
      ppfVar11[0xe1] = pfVar18;
      pfVar17 = DAT_00baa98c;
      ppfVar12 = (float **)((uint)ppfVar20[0x5b] & 0x10000000);
      if (ppfVar12 != (float **)0x0) {
        ppfVar11[0xe1] = (float *)0x42960000;
        pfVar18 = pfVar17;
      }
      *(short *)(ppfVar11 + 0x2f1) = *(short *)(ppfVar11 + 0x2f1) + 1;
      ppfVar11[0xe0] = pfVar18;
      *(undefined *)((int)ppfVar11 + 0x173) = 0;
      local_358 = (float **)0x0;
      if (ppfVar11[0x32] != (float *)0x0) {
        do {
          piVar13 = (int *)FUN_0040b220(local_358);
          if (*piVar13 == 0) {
            iVar9 = -1;
          }
          else {
            iVar9 = *(int *)(*piVar13 + 4);
          }
          if (iVar9 == 0) {
            local_3c = (float *)FUN_0040cf00();
            uVar28 = s_gfx_Bosses_Afterbirth_Boss_TheFr_00b1e260._12_4_;
            uVar25 = s_gfx_Bosses_Afterbirth_Boss_TheFr_00b1e260._8_4_;
            uVar10 = s_gfx_Bosses_Afterbirth_Boss_TheFr_00b1e260._4_4_;
            local_2c = 0x28;
            local_28 = 0x2f;
            *local_3c = (float)s_gfx_Bosses_Afterbirth_Boss_TheFr_00b1e260._0_4_;
            local_3c[1] = (float)uVar10;
            local_3c[2] = (float)uVar25;
            local_3c[3] = (float)uVar28;
            uVar28 = s_gfx_Bosses_Afterbirth_Boss_TheFr_00b1e260._28_4_;
            uVar25 = s_gfx_Bosses_Afterbirth_Boss_TheFr_00b1e260._24_4_;
            uVar10 = s_gfx_Bosses_Afterbirth_Boss_TheFr_00b1e260._20_4_;
            local_3c[4] = (float)s_gfx_Bosses_Afterbirth_Boss_TheFr_00b1e260._16_4_;
            local_3c[5] = (float)uVar10;
            local_3c[6] = (float)uVar25;
            local_3c[7] = (float)uVar28;
            *(undefined8 *)(local_3c + 8) = s_gfx_Bosses_Afterbirth_Boss_TheFr_00b1e260._32_8_;
            *(undefined *)(local_3c + 10) = 0;
            local_14 = 0;
            cVar6 = FUN_00417430(0,0x10000000);
            if (cVar6 != '\0') {
              FUN_00499580(4,6,"Bosses/AfterbirthPlus/DeliriumForms",0x23);
            }
            uVar10 = FUN_006ba840(local_68,&local_3c);
            local_14._0_1_ = 1;
            FUN_0040bf30(local_358,uVar10);
            local_14 = (uint)local_14._1_3_ << 8;
            if ((float *)0xf < local_54) {
              pfVar18 = (float *)((int)local_54 + 1);
              iVar9 = local_68[0];
              if ((float *)0xfff < pfVar18) {
                iVar9 = *(int *)(local_68[0] + -4);
                pfVar18 = local_54 + 9;
                if (0x1f < (local_68[0] - iVar9) - 4U) goto LAB_004770e8;
              }
              FUN_00aef15c(iVar9,pfVar18);
            }
            local_14 = -1;
            if (0xf < local_28) {
              uVar19 = local_28 + 1;
              pfVar18 = local_3c;
              if (0xfff < uVar19) {
                pfVar18 = (float *)local_3c[-1];
                uVar19 = local_28 + 0x24;
                if (0x1f < (uint)((int)local_3c + (-4 - (int)pfVar18))) goto LAB_004770e8;
              }
              FUN_00aef15c(pfVar18,uVar19);
            }
          }
          ppfVar12 = ppfVar11 + 0x12;
          local_358 = (float **)((int)local_358 + 1);
        } while (local_358 < ppfVar11[0x32]);
      }
      FUN_0040c000(ppfVar12);
      if (*(char *)((int)ppfVar11 + 0x151) != '\0') {
        FUN_00409030();
        FUN_00409030();
      }
      if (-1 < (int)ppfVar20[0x31e]) {
        local_350 = (float **)ppfVar20[0xcc][0x1a];
        if (ppfVar20[0x31e] <= (float *)(((int)ppfVar20[0xcc][0x1b] - (int)local_350) / 0x7c)) {
          in_stack_fffffc1c = 0x476f5c;
          (*(code *)(*ppfVar11)[0xf])(local_350 + (int)ppfVar20[0x31e] * 0x1f,0xffffffff,0xff,0,1);
        }
      }
      if (ppfVar11[0xf0] != (float *)0x0) {
        in_stack_fffffc1c = 0x476f7a;
        iVar9 = __RTDynamicCast(ppfVar11[0xf0],0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
        if (iVar9 == 0) {
          FUN_00a112c0(0x10,"m_Child invalid downcast\n");
        }
      }
      ppfVar11 = (float **)ppfVar11[0xf0];
    } while (ppfVar11 != (float **)0x0);
  }
  pfVar18 = ppfVar20[0xef];
  local_358 = ppfVar20;
  while (pfVar18 != (float *)0x0) {
    ppfVar20 = local_358 + 0xef;
    in_stack_fffffc1c = 0x476fc8;
    iVar9 = __RTDynamicCast(pfVar18,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                            &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0,uVar8);
    if (iVar9 == 0) {
      FUN_00a112c0(0x10,"m_Parent invalid downcast\n");
    }
    local_358 = (float **)*ppfVar20;
    ppfVar20 = local_380;
    pfVar18 = local_358[0xef];
  }
  ppfVar11 = ppfVar20 + 0xf0;
  pfVar18 = ppfVar20[0xf0];
  ppfVar12 = ppfVar11;
  ppfVar21 = ppfVar20;
  fVar22 = DAT_00baa010;
  ppfVar23 = local_340;
  while (DAT_00baa010 = fVar22, local_344 = ppfVar20, local_340 = ppfVar23, pfVar18 != (float *)0x0)
  {
    in_stack_fffffc1c = 0x477034;
    iVar9 = __RTDynamicCast(pfVar18,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                            &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
    if (iVar9 == 0) {
      FUN_00a112c0(0x10,"m_Child invalid downcast\n");
    }
    ppfVar20 = (float **)*ppfVar12;
    ppfVar12 = ppfVar20 + 0xf0;
    ppfVar21 = local_380;
    fVar22 = DAT_00baa010;
    ppfVar23 = local_340;
    pfVar18 = *ppfVar12;
  }
  if (local_358 == ppfVar20) {
    ppfVar21[0x5a] = (float *)((uint)ppfVar21[0x5a] & 0xfffbffff);
    ppfVar21[0x5b] = ppfVar21[0x5b];
    local_90 = 0;
    local_8c = 0;
    local_88 = 0;
    local_84 = 0;
    local_80 = DAT_00c7b640;
    local_7c = DAT_00c7b644;
    local_78 = DAT_00c7b640;
    local_74 = DAT_00c7b644;
    local_70 = 0;
    local_6c = 0;
    (*(code *)(*ppfVar21)[9])(&local_90);
    goto LAB_00479cde;
  }
  if ((ppfVar21[0xb] == (float *)0x1) && (ppfVar21[0x2d9] != (float *)0x8)) {
    ppfVar11 = (float **)*ppfVar11;
    uVar8 = 0;
    if (ppfVar11 != (float **)0x0) {
      do {
        if (ppfVar11 == ppfVar20) break;
        ppfVar11 = (float **)ppfVar11[0xf0];
        uVar8 = uVar8 + 1;
      } while (ppfVar11 != (float **)0x0);
      if ((2 < uVar8) && (pfVar18 = ppfVar21[2], pfVar18 != ppfVar21[3])) {
        do {
          if ((float *)pfVar18[4] != ppfVar21[10]) {
            ppfVar21[5] = (float *)((float)ppfVar21[5] - (*pfVar18 + fVar22));
            *pfVar18 = 0.0;
          }
          pfVar18 = pfVar18 + 0xe;
        } while (pfVar18 != ppfVar21[3]);
      }
    }
  }
  if (ppfVar21 == local_358) {
    ppfVar11 = ppfVar21;
    ppfVar20 = (float **)((float)ppfVar21[0xe0] - (float)ppfVar21[5]);
    while( true ) {
      pfVar18 = ppfVar11[0xf0];
      local_340 = ppfVar20;
      if (pfVar18 != (float *)0x0) {
        in_stack_fffffc1c = 0x4771a7;
        iVar9 = __RTDynamicCast(pfVar18,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
        if (iVar9 == 0) {
          FUN_00a112c0(0x10,"m_Child invalid downcast\n");
        }
      }
      ppfVar11 = (float **)ppfVar11[0xf0];
      ppfVar20 = ppfVar21;
      if (ppfVar11 == (float **)0x0) break;
      ppfVar20 = (float **)ppfVar11[0xe0];
      if ((float)local_340 <= (float)ppfVar20) {
        ppfVar20 = local_340;
      }
    }
    do {
      pTVar26 = (TypeDescriptor *)0x4771fe;
      local_33c = ppfVar20;
      cVar6 = FUN_00417430(0,0x10000000);
      if (((cVar6 == '\0') || ((float)ppfVar21[5] <= 0.0)) ||
         (uVar10 = extraout_ECX, (float)ppfVar20[0xe0] - (float)local_340 <= 0.0)) {
        pTVar26 = (TypeDescriptor *)0x477236;
        cVar6 = FUN_00417430(0,0x10000000);
        uVar10 = extraout_ECX_00;
        if ((cVar6 == '\0') && ((float)local_340 < (float)ppfVar20[0xe0] - (float)ppfVar20[5]))
        goto LAB_00477254;
      }
      else {
LAB_00477254:
        if (ppfVar20 != local_344) {
          pcVar3 = (code *)(*ppfVar20)[8];
          ppfVar20 = local_340;
          FUN_00431310(ppfVar21);
          pTVar26 = (TypeDescriptor *)0x0;
          in_stack_fffffc1c = 0x477297;
          (*pcVar3)((float)local_33c[0xe0] - (float)ppfVar20,0x2000,0,local_3bc,0x1e);
          uVar10 = extraout_ECX_01;
          ppfVar20 = local_33c;
        }
      }
      if (ppfVar20[0xf0] != (float *)0x0) {
        pTVar26 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        in_stack_fffffc1c = 0x4772bb;
        iVar9 = __RTDynamicCast(ppfVar20[0xf0],0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
        uVar10 = extraout_ECX_02;
        if (iVar9 == 0) {
          pTVar26 = (TypeDescriptor *)0x4772ce;
          FUN_00a112c0(0x10,"m_Child invalid downcast\n");
          uVar10 = extraout_ECX_03;
        }
      }
      local_33c = (float **)ppfVar20[0xf0];
      ppfVar20 = local_33c;
    } while (local_33c != (float **)0x0);
    pfVar18 = ppfVar21[0x2d9];
    ppfVar20 = local_344;
    if (pfVar18 == (float *)0x8) {
      if ((ppfVar21[0xb] == (float *)0x2) && (*(short *)(ppfVar21 + 0x2f1) != 0)) {
        if (*(short *)(ppfVar21 + 0x2f1) != 1) goto LAB_00479299;
LAB_00477318:
        iVar9 = FUN_006bec40(local_390,0);
        fVar22 = *(float *)(iVar9 + 4) - (float)ppfVar21[0xd0];
        FUN_00499d60();
        local_370 = (float **)(fVar22 * DAT_00baa948);
        ppfVar20 = ppfVar21 + 0x2fb;
        local_348 = local_370;
        if (*ppfVar20 != (float *)0x0) {
          iVar9 = __RTDynamicCast(*ppfVar20,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                  &IsaacRepentancePlus::Entity_Laser::RTTI_Type_Descriptor,0);
          local_348 = *(float ***)(iVar9 + 0x41c);
        }
        if (ppfVar21[0x104] == (float *)0x0) {
          FUN_0040a380("Attack3Start",0);
          *(undefined *)((int)local_344 + 0x171) = 0;
          ppfVar21[0x62] = (float *)0x4;
          *(undefined *)((int)ppfVar21 + 0x171) = 1;
          ppfVar21[0x57] = (float *)0x0;
          ppfVar21[0xd8] = DAT_00c7b640;
          ppfVar21[0xd9] = DAT_00c7b644;
          ppfVar21[0xd4] = (float *)0x0;
        }
        else if (ppfVar21[0x104] == (float *)0x2) {
          sVar2 = *(short *)((int)ppfVar21 + 0xbc6);
          if (ppfVar21[0x2d9] == (float *)0x8) {
            if (0x14 < sVar2) {
              ppfVar11 = (float **)*ppfVar20;
              local_349 = '\0';
              if (ppfVar11 == (float **)0x0) {
                local_368 = (float **)
                            FUN_0096f310(1,ppfVar21 + 0xcf,ppfVar21[0x2ee],0x3c,&DAT_00c7b640,
                                         ppfVar21,0);
                if (*ppfVar20 != (float *)0x0) {
                  local_350 = ppfVar20;
                  FUN_004cf210(&local_350);
                }
                *ppfVar20 = (float *)local_368;
                ppfVar11 = local_368;
                if (local_368 != (float **)0x0) {
                  FUN_004cdcf0(ppfVar20);
                  ppfVar11 = (float **)ppfVar21[0x2fb];
                }
                local_349 = '\x01';
              }
              ppfVar20 = (float **)
                         __RTDynamicCast(ppfVar11,0,
                                         &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                         &IsaacRepentancePlus::Entity_Laser::RTTI_Type_Descriptor,0)
              ;
              local_33c = ppfVar20;
              ppfVar11 = (float **)0x0;
              FUN_006828b0();
              local_340 = ppfVar11;
              ppfVar11 = (float **)((float)local_340 - (float)ppfVar20[0x107]);
              FUN_00682740();
              local_368 = ppfVar11;
              if ((float)((uint)ppfVar11 & DAT_00bacb40) < (float)DAT_00baa454) {
                local_350 = (float **)0x3f800000;
                if ((float)ppfVar11 <= DAT_00ba9fe4) {
                  local_368 = (float **)((uint)ppfVar11 ^ DAT_00bacb70);
                  pppfVar15 = &local_350;
                  if ((float)(float **)((uint)ppfVar11 ^ DAT_00bacb70) <= (float)DAT_00baa454) {
                    pppfVar15 = &local_368;
                  }
                  ppfVar11 = (float **)((float)ppfVar20[0x107] - (float)*pppfVar15);
                  FUN_00682740();
                  local_340 = ppfVar11;
                }
                else {
                  pppfVar15 = &local_350;
                  if ((float)ppfVar11 <= (float)DAT_00baa454) {
                    pppfVar15 = &local_368;
                  }
                  ppfVar11 = (float **)((float)ppfVar20[0x107] + (float)*pppfVar15);
                  FUN_00682740();
                  local_340 = ppfVar11;
                }
              }
              FUN_0096ce90(local_340);
              fVar22 = DAT_00baa088;
              if (*(int *)((int)ppfVar21[0x2fd]
                                [(int)ppfVar21[0x2fe] - 1U & (uint)ppfVar21[0x2ff] >> 2] +
                          ((uint)ppfVar21[0x2ff] & 3) * 4) != 0) {
                local_340 = (float **)((float)local_340 * DAT_00baa088);
                iVar9 = *(int *)((int)ppfVar21[0x2fd]
                                      [(int)ppfVar21[0x2fe] - 1U & (uint)ppfVar21[0x2ff] >> 2] +
                                ((uint)ppfVar21[0x2ff] & 3) * 4);
                ppfVar20 = local_340;
                FUN_0041d520();
                local_350 = ppfVar20;
                ppfVar20 = local_340;
                FUN_0041d540();
                fVar22 = DAT_00baa088;
                *(float ***)(iVar9 + 0x334) = ppfVar20;
                *(float ***)(iVar9 + 0x338) = local_350;
                ppfVar20 = local_33c;
              }
              local_350 = (float **)((float)ppfVar20[0x107] * fVar22);
              ppfVar11 = local_350;
              FUN_0041d520();
              local_368 = ppfVar11;
              ppfVar11 = local_350;
              FUN_0041d540();
              local_360 = ppfVar11;
              local_35c = local_368;
              iVar9 = FUN_0067f260();
              fVar22 = DAT_00baa8a0;
              if ((iVar9 != 2) && (fVar22 = 0.0, iVar9 == 0)) {
                fVar22 = DAT_00baae00;
              }
              ppfVar20[0xd4] = (float *)0xc28c0000;
              ppfVar20[0xd3] = (float *)(fVar22 - DAT_00baa784);
              pfVar18 = DAT_00baabfc;
              if ((float)ppfVar20[0x107] <= 0.0 && (float)ppfVar20[0x107] != 0.0) {
                pfVar18 = DAT_00baadc0;
              }
              ppfVar20[0xd6] = pfVar18;
              if (local_349 != '\0') {
                (*(code *)(*ppfVar20)[3])();
              }
            }
          }
          else {
            if ((sVar2 == 0x3c) || (sVar2 == 0x6e)) {
              iVar9 = FUN_006bec40(local_390,0);
              fVar22 = *(float *)(iVar9 + 4) - (float)ppfVar21[0xd0];
              FUN_00499d60();
              pfVar18 = (float *)(fVar22 * DAT_00baa948);
              ppfVar21[0x2ee] = pfVar18;
              uVar10 = FUN_004238f0(0x3f4ccccd);
              local_350 = (float **)((float)pfVar18 * DAT_00baa088);
              ppfVar20 = local_350;
              FUN_0041d520();
              local_368 = ppfVar20;
              ppfVar20 = local_350;
              FUN_0041d540();
              local_360 = ppfVar20;
              local_35c = local_368;
              local_378 = (float **)0x0;
              local_374 = (float **)0xc2a00000;
              FUN_0060b890(&local_360,0x18,uVar10,0x40800000);
            }
            else if ((sVar2 == 0x32) || (sVar2 == 100)) {
              local_33c = (float **)
                          FUN_0096f310(1,ppfVar21 + 0xcf,ppfVar21[0x2ee],0x14,&DAT_00c7b640,ppfVar21
                                       ,0);
              if (*ppfVar20 != (float *)0x0) {
                local_350 = ppfVar20;
                FUN_004cf210(&local_350);
              }
              *ppfVar20 = (float *)local_33c;
              if (local_33c != (float **)0x0) {
                FUN_004cdcf0(ppfVar20);
              }
              pfVar18 = DAT_00baabfc;
              if ((float)ppfVar21[0x2ee] <= 0.0 && (float)ppfVar21[0x2ee] != 0.0) {
                pfVar18 = DAT_00baadc0;
              }
              local_33c[0xd6] = pfVar18;
              local_350 = (float **)((float)local_33c[0x107] * DAT_00baa088);
              ppfVar20 = local_350;
              FUN_0041d520();
              local_368 = ppfVar20;
              ppfVar20 = local_350;
              FUN_0041d540();
              local_360 = ppfVar20;
              local_35c = local_368;
              iVar9 = FUN_0067f260();
              fVar22 = DAT_00baa8a0;
              if ((iVar9 != 2) && (fVar22 = 0.0, iVar9 == 0)) {
                fVar22 = DAT_00baae00;
              }
              local_33c[0xd3] = (float *)(fVar22 - DAT_00baa784);
              local_33c[0xd4] = (float *)0xc28c0000;
            }
            sVar2 = *(short *)((int)ppfVar21 + 0xbc6);
            if (((sVar2 < 0x6f) && (0x59 < sVar2)) || ((ushort)(sVar2 - 0x28U) < 0x15)) {
              local_349 = '\x01';
            }
            else {
              local_349 = '\0';
            }
            iVar9 = FUN_0040b430("Effect1");
            *(char *)(iVar9 + 0x74) = local_349;
            iVar9 = FUN_0040b430("EyesGlow");
            *(char *)(iVar9 + 0x74) = local_349;
          }
          *(short *)((int)ppfVar21 + 0xbc6) = *(short *)((int)ppfVar21 + 0xbc6) - SUB42(local_364,0)
          ;
          if (*(short *)((int)ppfVar21 + 0xbc6) < 1) {
            ppfVar21[0x104] = (float *)((int)ppfVar21[0x104] + 1);
            FUN_0040a380("Attack3End",0);
            iVar9 = FUN_0040b430("Effect1");
            *(undefined *)(iVar9 + 0x74) = 1;
            iVar9 = FUN_0040b430("EyesGlow");
            *(undefined *)(iVar9 + 0x74) = 1;
          }
        }
        if ((ppfVar21[0x1f] == (float *)0x0) || (*(char *)(ppfVar21 + 0x23) == '\0')) {
          pfVar18 = ppfVar21[0x104];
          if (pfVar18 == (float *)0x0) {
            FUN_0040a380("Attack3Charge",0);
            ppfVar21[0x104] = (float *)((int)ppfVar21[0x104] + 1);
            iVar9 = FUN_006bec40(&local_58,0);
            fVar22 = *(float *)(iVar9 + 4) - (float)ppfVar21[0xd0];
            FUN_00499d60();
            ppfVar21[0x2ee] = (float *)(fVar22 * DAT_00baa948);
            FUN_006d6ba0(0x1a8,0x3f800000,2,0,0x3f800000);
          }
          else {
            if (pfVar18 == (float *)0x1) {
              uVar7 = 0x78;
              if (ppfVar21[0x2d9] == (float *)0x8) {
                uVar7 = 0x50;
              }
              *(undefined2 *)((int)ppfVar21 + 0xbc6) = uVar7;
              ppfVar21[0x104] = (float *)0x2;
              FUN_006d6ba0(0x75,0x3f800000,2,0,0x3f800000);
            }
            else if (pfVar18 != (float *)0x2) {
              ppfVar21[0x2d9] = (float *)0x3;
              ppfVar20 = (float **)FUN_006bec40(&local_58,0);
              ppfVar21[0xcd] = *ppfVar20;
              ppfVar21[0xce] = ppfVar20[1];
              ppfVar21[0x104] = (float *)0x0;
              *(undefined *)((int)ppfVar21 + 0x171) = 0;
              ppfVar21[0x62] = (float *)0x0;
              goto LAB_00478eb0;
            }
            fVar22 = ((float)local_348 + DAT_00baa910) - DAT_00baa888;
            if (DAT_00baab30 < (float)((uint)fVar22 & DAT_00bacb40)) {
              FUN_00499d20();
            }
            if (fVar22 <= DAT_00baaa78) {
              if (fVar22 < DAT_00baae7c) {
                fVar22 = fVar22 + DAT_00baab30;
              }
            }
            else {
              fVar22 = fVar22 - DAT_00baab30;
            }
            local_368 = (float **)0x0;
            local_370 = (float **)0x167;
            local_350 = (float **)(int)(fVar22 + DAT_00baaa78);
            pppfVar15 = &local_350;
            if ((int)(float **)(int)(fVar22 + DAT_00baaa78) < 1) {
              pppfVar15 = &local_368;
            }
            pppfVar16 = &local_370;
            if ((int)*pppfVar15 < 0x167) {
              pppfVar16 = pppfVar15;
            }
            cVar6 = FUN_0040a5d0((&PTR_s_Attack3ShootLeft_00b1dc1c)[(int)*pppfVar16 / 0x2d],1);
            if (cVar6 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(ppfVar21 + 0x23) = 1;
            }
          }
        }
LAB_00478eb0:
        ppfVar21[0xd8] = DAT_00c7b640;
        ppfVar21[0xd9] = DAT_00c7b644;
        ppfVar20 = local_344;
        goto LAB_00479299;
      }
    }
    else if (pfVar18 != (float *)0x9) {
      if (pfVar18 == (float *)0xa) goto LAB_00477318;
      if (pfVar18 != (float *)0x3) {
        if (pfVar18 == (float *)0x4) {
          uVar25 = 0x4781d4;
          pfVar18 = (float *)FUN_00499230(uVar10);
          fVar22 = (float)ppfVar21[0xcf] - *pfVar18;
          fVar22 = ((float)ppfVar21[0xd0] - pfVar18[1]) * ((float)ppfVar21[0xd0] - pfVar18[1]) +
                   fVar22 * fVar22;
          ppfVar20 = (float **)0x4781f7;
          FUN_00435a50();
          if ((DAT_00baa6fc < fVar22) || (DAT_00baa85c < (float)ppfVar21[0xd4])) {
            FUN_00499190(ppfVar21 + 0xcf);
            ppfVar20 = ppfVar21 + 0xd3;
            uVar25 = 0x478233;
            FUN_00499190(ppfVar20);
          }
          fVar22 = DAT_00baa85c;
          if ((float *)0x3c < ppfVar21[0x305]) {
            local_5c = ppfVar21[0x301];
            local_54 = (float *)((int)ppfVar21[0x304] + 0x1e);
            local_58 = 0;
            uVar10 = FUN_00499270(local_394);
            uVar28 = 0x478280;
            FUN_00479d50(uVar10);
            FUN_00479d50(&local_5c);
            FUN_00498fd0(&local_5c,in_stack_fffffc1c,uVar28,uVar10,pTVar26,uVar25,ppfVar20);
            local_5c = ppfVar21[0x306];
            local_54 = (float *)((int)ppfVar21[0x309] + 0x1e);
            local_58 = 0;
            uVar10 = FUN_00499270(local_394);
            uVar28 = 0x4782d8;
            FUN_00479d50(uVar10);
            FUN_00479d50(&local_5c);
            FUN_00498fd0(&local_5c,in_stack_fffffc1c,uVar28,uVar10,pTVar26,uVar25,ppfVar20);
          }
          ppfVar11 = ppfVar21 + 0xcf;
          ppfVar21[0x2ed] = (float *)((float)ppfVar21[0xe7] * DAT_00baa280 + (float)ppfVar21[0x2ed])
          ;
          fVar24 = DAT_00ba9fe4;
          if (fVar22 < (float)ppfVar21[0xd4] || fVar22 == (float)ppfVar21[0xd4]) {
            pfVar18 = (float *)((float)ppfVar21[0xdb] * DAT_00baa418);
            ppfVar21[0x62] = (float *)0x0;
            *(undefined *)((int)ppfVar21 + 0x171) = 0;
            ppfVar21[0xdb] = pfVar18;
            iVar9 = FUN_006be840();
            local_350 = (float **)(*(float *)(iVar9 + 0x33c) - (float)*ppfVar11);
            local_368 = (float **)(*(float *)(iVar9 + 0x340) - (float)ppfVar21[0xd0]);
            ppfVar20 = (float **)
                       ((float)local_350 * (float)local_350 + (float)local_368 * (float)local_368);
            FUN_00435a50();
            local_33c = ppfVar20;
            if ((float)DAT_00baa454 < (float)((uint)local_33c & DAT_00bacb40)) {
              local_360 = (float **)
                          ((((float)((uint)local_350 ^ DAT_00bacb70) *
                            (DAT_00baaae0 - (float)local_33c)) / (float)local_33c) * _DAT_00baa040);
              local_35c = (float **)
                          ((((float)((uint)local_368 ^ DAT_00bacb70) *
                            (DAT_00baaae0 - (float)local_33c)) / (float)local_33c) * _DAT_00baa040);
              FUN_004314b0(&local_360,0);
            }
            pfVar18 = (float *)FUN_00812d00(local_388);
            local_348 = (float **)(pfVar18[1] - (float)ppfVar21[0xd0]);
            local_370 = (float **)(*pfVar18 - (float)*ppfVar11);
            ppfVar20 = (float **)
                       ((float)local_348 * (float)local_348 + (float)local_370 * (float)local_370);
            FUN_00435a50();
            local_350 = ppfVar20;
            if ((float)DAT_00baa454 < (float)((uint)ppfVar20 & DAT_00bacb40)) {
              local_368 = (float **)0x43480000;
              pppfVar15 = &local_350;
              if (DAT_00baaa94 <= (float)ppfVar20) {
                pppfVar15 = &local_368;
              }
              local_35c = (float **)
                          ((((float)*pppfVar15 * (float)local_348) / (float)ppfVar20) * DAT_00baa030
                          );
              local_360 = (float **)
                          ((((float)*pppfVar15 * (float)local_370) / (float)ppfVar20) * DAT_00baa030
                          );
              FUN_004314b0(&local_360,0);
            }
            ppfVar20 = local_344;
            if ((DAT_00baa854 < (float)ppfVar21[0x2ed] - (float)local_33c / DAT_00baa87c) &&
               (DAT_00baa9d0 < (float)local_33c)) {
              ppfVar20 = (float **)FUN_006bec40(local_390,0);
              ppfVar21[0xcd] = *ppfVar20;
              ppfVar21[0xce] = ppfVar20[1];
              ppfVar21[0x2d9] = (float *)0x3;
              ppfVar20 = local_344;
            }
          }
          else {
            ppfVar21[0x62] = (float *)0x4;
            if ((float)ppfVar21[0xd9] <= fVar24) {
              pcVar14 = "HeadWiggleUp";
              if (ppfVar21[0xb] != (float *)0x2) {
                pcVar14 = "Body1Wiggle";
              }
            }
            else {
              pcVar14 = "HeadWiggle";
            }
            FUN_0040a380(pcVar14,0);
            ppfVar20 = local_344;
            fVar22 = DAT_00baa7e8;
            pfVar18 = (float *)((float)ppfVar21[0xe7] * (float)ppfVar21[0x2ed] +
                               (float)ppfVar21[0xd4]);
            ppfVar21[0xd3] =
                 (float *)((float)ppfVar21[0xe7] * (float)ppfVar21[0x2ec] + (float)ppfVar21[0xd3]);
            ppfVar21[0xd4] = pfVar18;
            if ((fVar22 < (float)pfVar18) &&
               ((float)pfVar18 - (float)ppfVar21[0x2ed] * (float)ppfVar21[0xe7] < fVar22)) {
              pfVar18 = ppfVar21[0xd9];
              pfVar17 = ppfVar21[0xd0];
              local_344[0xcf] = (float *)((float)ppfVar21[0xd8] + (float)*ppfVar11);
              local_344[0xd0] = (float *)((float)pfVar18 + (float)pfVar17);
              *(undefined *)((int)local_344 + 0x171) = 1;
              local_344[0x104] = (float *)0x0;
              FUN_0040a380("Ground",0);
              if (*(char *)((int)ppfVar21 + 0x171) != '\0') {
                ppfVar11 = DAT_00baa454;
                if (ppfVar21[0xb] == (float *)0x0) {
                  ppfVar11 = DAT_00baa354;
                }
                FUN_006d6ba0(0x42,ppfVar11,2,0,0x3f800000);
                FUN_006c04b0(1);
              }
              *(undefined *)((int)ppfVar21 + 0x171) = 0;
            }
          }
        }
        goto LAB_00479299;
      }
      if ((((((uint)ppfVar21[0x5b] & 0x10000000) == 0) ||
           ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) &&
          (uVar8 = FUN_006eef60(), (uVar8 & 1) == 0)) &&
         (pfVar18 = ppfVar21[0x2f0], pfVar18 != (float *)0x8)) {
        if (pfVar18 == (float *)0x9) goto LAB_00477c69;
        if (pfVar18 == (float *)0xa) goto LAB_00477edd;
        if (pfVar18 == (float *)0x0) goto LAB_00477c5c;
LAB_00477c97:
        if ((((ppfVar21[0xb] == (float *)0x1) ||
             ((ppfVar21[0xb] == (float *)0x2 && (*(short *)(ppfVar21 + 0x2f1) == 1)))) &&
            (uVar8 = FUN_006eef60(), (uVar8 & 1) == 0)) && (ppfVar21[0x2f0] != (float *)0x9)) {
          ppfVar21[0x2f0] = (float *)0x9;
          ppfVar21[0x2d9] = (float *)0x9;
          cVar6 = FUN_0040a5d0(&DAT_00b1d2ec,1);
          if (cVar6 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(ppfVar21 + 0x23) = 1;
          }
        }
        else if ((ppfVar21[0xb] == (float *)0x2) && (*(short *)(ppfVar21 + 0x2f1) == 1)) {
          uVar8 = FUN_006eef60();
          pfVar18 = (float *)((uVar8 & 1) * 2 + 8);
          ppfVar21[0x2f0] = pfVar18;
          ppfVar21[0x2d9] = pfVar18;
          cVar6 = FUN_0040a5d0("Attack3Start",1);
          if (cVar6 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(ppfVar21 + 0x23) = 1;
          }
          if (ppfVar21[0x2d9] == (float *)0x8) {
            iVar9 = FUN_006bec40(local_388,0);
            fVar22 = *(float *)(iVar9 + 4) - (float)ppfVar21[0xd0];
            uVar10 = FUN_004238f0(0x3f4ccccd);
            FUN_00499d60();
            ppfVar20 = (float **)(fVar22 * DAT_00baa948 * DAT_00baa088);
            local_350 = ppfVar20;
            FUN_0041d520();
            local_368 = ppfVar20;
            ppfVar20 = local_350;
            FUN_0041d540();
            local_360 = ppfVar20;
            local_35c = local_368;
            local_378 = (float **)0x0;
            local_374 = (float **)0xc2a00000;
            local_368 = (float **)FUN_0060b890(&local_360,0x3c,uVar10,0x40800000);
            uVar8 = (uint)ppfVar21[0x2ff] & 3;
            ppfVar20 = (float **)
                       ((int)ppfVar21[0x2fd][(int)ppfVar21[0x2fe] - 1U & (uint)ppfVar21[0x2ff] >> 2]
                       + uVar8 * 4);
            if (*(int *)((int)ppfVar21[0x2fd]
                              [(int)ppfVar21[0x2fe] - 1U & (uint)ppfVar21[0x2ff] >> 2] + uVar8 * 4)
                != 0) {
              local_350 = ppfVar20;
              FUN_004cf210(&local_350);
            }
            *ppfVar20 = (float *)local_368;
            if (local_368 != (float **)0x0) {
              FUN_004cdcf0(ppfVar20);
            }
          }
        }
        else {
          ppfVar21[0x2f0] = (float *)0x8;
          ppfVar21[0x2d9] = (float *)0x8;
          FUN_0040a380(&DAT_00b1d2cc,1);
        }
        FUN_006c04b0(1);
        ppfVar21[0x104] = (float *)0x0;
        ppfVar20 = local_344;
      }
      else {
LAB_00477c5c:
        if (ppfVar21[0x2f0] == (float *)0x9) {
LAB_00477c69:
          if (((ppfVar21[0xb] == (float *)0x2) && (*(short *)(ppfVar21 + 0x2f1) == 1)) &&
             (uVar8 = FUN_006eef60(), uVar8 % 5 != 0)) goto LAB_00477c97;
        }
LAB_00477edd:
        if (10 < *(int *)(DAT_00c71678 + 0x264f8) - (int)ppfVar21[0xca]) {
          ppfVar20 = DAT_00baa354;
          if (ppfVar21[0xb] == (float *)0x1) {
            ppfVar20 = DAT_00baa454;
          }
          FUN_006d6ba0(0x40,ppfVar20,2,0,0x3f800000);
        }
        if (((NAN((float)ppfVar21[0xcd]) || NAN((float)DAT_00c7b640)) ==
             ((float)ppfVar21[0xcd] == (float)DAT_00c7b640)) ||
           ((NAN((float)ppfVar21[0xce]) || NAN((float)DAT_00c7b644)) ==
            ((float)ppfVar21[0xce] == (float)DAT_00c7b644))) {
          *(undefined *)((int)local_344 + 0x171) = 1;
          *(undefined *)((int)ppfVar21 + 0x171) = 1;
          ppfVar21[0x57] = (float *)ppfVar21[0xcc][9];
          ppfVar21[0xd4] = (float *)0x40c00000;
          ppfVar21[0x2f0] = (float *)0x4;
        }
        else {
          ppfVar20 = (float **)FUN_00812d00(local_388);
          ppfVar21[0xcd] = *ppfVar20;
          ppfVar21[0xce] = ppfVar20[1];
          ppfVar21[0x57] = (float *)0x0;
          ppfVar21[0xd4] = (float *)0x41d00000;
        }
        ppfVar20 = local_344;
        local_368 = ppfVar21 + 0xcf;
        local_364 = (float)ppfVar21[0xce] - (float)ppfVar21[0xd0];
        local_340 = (float **)((float)ppfVar21[0xcd] - (float)*local_368);
        ppfVar11 = (float **)(local_364 * local_364 + (float)local_340 * (float)local_340);
        FUN_00435a50();
        local_350 = ppfVar11;
        if ((float)DAT_00baa454 < (float)((uint)local_350 & DAT_00bacb40)) {
          if (ppfVar21[0xb] == (float *)0x2) {
            local_340 = (float **)((float)local_340 / (float)local_350);
            local_364 = local_364 / (float)local_350;
            uVar8 = FUN_006eef60();
            fVar22 = DAT_00baa7a4;
            if ((uVar8 & 1) == 0) {
              fVar22 = DAT_00baa81c;
            }
            ppfVar21[0xd9] = (float *)(fVar22 * local_364);
            ppfVar21[0xd8] = (float *)(fVar22 * (float)local_340);
          }
          else {
            pfVar18 = (float *)((local_364 / (float)local_350) * DAT_00baa7e8);
            ppfVar21[0xd8] = (float *)(((float)local_340 / (float)local_350) * DAT_00baa7e8);
            ppfVar21[0xd9] = pfVar18;
          }
        }
        ppfVar21[0x2d9] = (float *)0x4;
        pfVar18 = ppfVar21[0xd0];
        pfVar17 = ppfVar21[0xd9];
        ppfVar20[0xcf] = (float *)((float)ppfVar21[0xcf] + (float)ppfVar21[0xd8]);
        ppfVar20[0xd0] = (float *)((float)pfVar18 + (float)pfVar17);
        FUN_0040a380("Ground",0);
        ppfVar20[0x104] = (float *)0x0;
        FUN_006c04b0(1);
        FUN_00499380();
        FUN_00499380();
        pfVar18 = (float *)(DAT_00baad74 - (float)local_350 * DAT_00baa08c);
        local_380[0x2ec] = (float *)0x0;
        local_380[0x2ed] = pfVar18;
        FUN_00499190(local_368);
        FUN_00499190(local_380 + 0xd3);
        ppfVar20 = local_344;
        ppfVar21 = local_380;
      }
      goto LAB_00479299;
    }
    *(undefined *)((int)local_344 + 0x171) = 0;
    ppfVar21[0x62] = (float *)0x4;
    *(undefined *)((int)ppfVar21 + 0x171) = 1;
    ppfVar21[0x57] = (float *)0x0;
    ppfVar21[0xd8] = DAT_00c7b640;
    ppfVar21[0xd9] = DAT_00c7b644;
    ppfVar21[0xd4] = (float *)0x0;
    if (0 < (int)local_364) {
      pfVar18 = ppfVar21[0x104];
      do {
        if (ppfVar21[0x2d9] == (float *)0x9) {
          if (pfVar18 == (float *)0x14) {
            if (ppfVar21[0xb] == (float *)0x2) {
LAB_0047749c:
              if ((ppfVar21[0x1f] == (float *)0x0) || (*(char *)(ppfVar21 + 0x23) == '\0'))
              goto LAB_004774ab;
              goto LAB_004774bc;
            }
          }
          else if ((ppfVar21[0xb] != (float *)0x2) || (pfVar18 != (float *)0x2f)) goto LAB_00477bb4;
          local_33c = DAT_00baa454;
          ppfVar20 = DAT_00baa528;
          if ((ppfVar21[0x319] == (float *)0x12) ||
             (ppfVar20 = DAT_00baa2d0, ppfVar21[0x319] == (float *)0x13)) {
            local_33c = ppfVar20;
          }
          local_340 = (float **)0xb2;
          FUN_00956780();
          FUN_0092dc30(local_340,0x3f800000,2,0,local_33c,0);
          local_33c = DAT_00baa454;
          ppfVar20 = DAT_00baa528;
          if ((ppfVar21[0x319] == (float *)0x12) ||
             (ppfVar20 = DAT_00baa2d0, ppfVar21[0x319] == (float *)0x13)) {
            local_33c = ppfVar20;
          }
          local_340 = (float **)0x75;
          FUN_00956780();
          FUN_0092dc30(local_340,0x3f800000,2,0,local_33c,0);
          if (ppfVar21[0xb] == (float *)0x2) {
            AI_0043ef30();
            local_190 = local_190 | 0x80000008;
            local_1bc = _DAT_00bac630;
            local_19c = 0x3f0c8c8d;
            local_198 = 0x3f0c8c8d;
            local_194 = 0x3f0c8c8d;
            local_1e4 = 0xc2200000;
            FUN_006ccdd0(0xc,&DAT_00c7b640,0x40e00000,local_1e8);
          }
          else {
            AI_0043ef30();
            local_334 = 0xc2200000;
            iVar9 = FUN_006be840();
            local_360 = *(float ***)(iVar9 + 0x33c);
            local_35c = *(float ***)(iVar9 + 0x340);
            FUN_006ccdd0(0xf,&local_360,0,local_338);
          }
LAB_00477b65:
          local_33c = (float **)0x3a7;
          FUN_00956780();
          FUN_0092dc30(local_33c,0x3f800000,2,0,0x3f800000,0);
        }
        else {
          if (ppfVar21[0x2d9] == (float *)0x8) {
            if (pfVar18 != (float *)0x2e) {
              if (pfVar18 == (float *)0x2f) {
                pfVar18 = ppfVar21[0xb];
              }
              else {
                if (pfVar18 != (float *)0x30) goto LAB_00477bb4;
                pfVar18 = ppfVar21[0xb];
              }
              if (pfVar18 != (float *)0x1) goto LAB_0047749c;
            }
            local_33c = DAT_00baa454;
            ppfVar20 = DAT_00baa528;
            if ((ppfVar21[0x319] == (float *)0x12) ||
               (ppfVar20 = DAT_00baa2d0, ppfVar21[0x319] == (float *)0x13)) {
              local_33c = ppfVar20;
            }
            local_340 = (float **)0xb2;
            FUN_00956780();
            FUN_0092dc30(local_340,0x3f800000,2,0,local_33c,0);
            pfVar18 = ppfVar21[0x319];
            local_33c = DAT_00baa454;
            if (ppfVar21[0xb] == (float *)0x0) {
              ppfVar20 = DAT_00baa528;
              if ((pfVar18 == (float *)0x12) || (ppfVar20 = DAT_00baa2d0, pfVar18 == (float *)0x13))
              {
                local_33c = ppfVar20;
              }
              local_340 = (float **)0x19;
              FUN_00956780();
              uVar10 = 0x3f4ccccd;
            }
            else {
              ppfVar20 = DAT_00baa528;
              if ((pfVar18 == (float *)0x12) || (ppfVar20 = DAT_00baa2d0, pfVar18 == (float *)0x13))
              {
                local_33c = ppfVar20;
              }
              local_340 = (float **)0xd;
              FUN_00956780();
              uVar10 = 0x3f800000;
            }
            FUN_0092dc30(local_340,uVar10,2,0,local_33c,0);
            if ((ppfVar21[0xb] == (float *)0x0) && (ppfVar21[0xc] == (float *)0x1)) {
              AI_0043ef30();
              local_354 = (float)ppfVar21[0xcf] + DAT_00ba9fe4;
              local_350 = (float **)((float)ppfVar21[0xd0] - DAT_00baa87c);
              local_238 = local_238 | 0x800;
              local_284 = 0xbd75c28f;
              local_378 = (float **)0x41000000;
              local_374 = (float **)0x40c00000;
              local_228 = local_354;
              local_224 = local_350;
              FUN_006cb2e0(&local_354,&local_378,9,local_290);
            }
            else {
              local_140[0] = 1;
              local_13c = _DAT_00babf20;
              uStack_138 = _UNK_00babf24;
              uStack_134 = _UNK_00babf28;
              uStack_130 = _UNK_00babf2c;
              local_12c = 0x3f800000;
              iVar9 = FUN_006eef60();
              local_f4 = 0;
              local_f0 = 0;
              local_ec = 0;
              local_c8 = 0xc47a0000;
              local_c4 = 0;
              local_b8 = 0;
              local_e0 = DAT_00c7b640;
              local_d8 = DAT_00c7b640;
              local_d0 = DAT_00c7b640;
              local_b4 = 0x1e;
              local_b0 = 0;
              local_ac = 0;
              local_a8 = 0;
              local_a4 = &DAT_bf800000;
              local_a0 = 0;
              local_9c = 0;
              local_128 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa708;
              local_124 = _DAT_00bac820;
              uStack_120 = _UNK_00bac824;
              uStack_11c = _UNK_00bac828;
              uStack_118 = _UNK_00bac82c;
              local_114 = _DAT_00bac7b0;
              uStack_110 = _UNK_00bac7b4;
              uStack_10c = _UNK_00bac7b8;
              uStack_108 = _UNK_00bac7bc;
              local_104 = ZEXT816(0);
              local_e8 = 0;
              local_dc = DAT_00c7b644;
              local_d4 = DAT_00c7b644;
              local_cc = DAT_00c7b644;
              local_c0 = 0;
              iVar9 = FUN_006be840();
              local_36c = *(undefined4 *)(iVar9 + 0x33c);
              local_368 = *(float ***)(iVar9 + 0x340);
              iVar9 = FUN_006ccdd0(1,&local_36c,0x41200000,local_140);
              fVar22 = *(float *)(iVar9 + 0x418) - DAT_00baa1f8;
              fVar24 = *(float *)(iVar9 + 0x364) * DAT_00baa2e4;
              *(uint *)(iVar9 + 0x438) = *(uint *)(iVar9 + 0x438) | 2;
              *(float *)(iVar9 + 0x418) = fVar22;
              fVar22 = *(float *)(iVar9 + 0x414) * (float)DAT_00baa354;
              *(undefined4 *)(iVar9 + 0x43c) = *(undefined4 *)(iVar9 + 0x43c);
              *(undefined4 *)(iVar9 + 0x420) = 0x3fcccccd;
              *(float *)(iVar9 + 0x414) = fVar22 - DAT_00baa83c;
              *(float *)(iVar9 + 0x410) = *(float *)(iVar9 + 0x410) - DAT_00baa904;
              fVar22 = *(float *)(iVar9 + 0x360) * DAT_00baa2e4;
              *(float *)(iVar9 + 0x364) = fVar24;
              *(float *)(iVar9 + 0x360) = fVar22;
            }
            goto LAB_00477b65;
          }
LAB_00477bb4:
          if ((int)pfVar18 < 0x69) goto LAB_0047749c;
          ppfVar21[0x2d9] = (float *)0x3;
          ppfVar20 = (float **)FUN_006bec40(local_388,0);
          ppfVar21[0xcd] = *ppfVar20;
          ppfVar21[0xce] = ppfVar20[1];
          ppfVar21[0x104] = (float *)0x0;
LAB_004774ab:
          ppfVar21[0x62] = (float *)0x0;
          *(undefined *)((int)ppfVar21 + 0x171) = 0;
        }
LAB_004774bc:
        ppfVar21[0x104] = (float *)((int)ppfVar21[0x104] + 1);
        local_364 = (float)((int)local_364 + -1);
        pfVar18 = ppfVar21[0x104];
      } while (local_364 != 0.0);
      local_364 = 0.0;
      ppfVar20 = local_344;
    }
  }
  else if (ppfVar21 == ppfVar20) {
    pfVar18 = ppfVar21[0xb];
    pfVar17 = (float *)((int)ppfVar21[0x104] + 1);
    ppfVar21[0x62] = (float *)0x0;
    ppfVar21[0x57] = (float *)0x0;
    ppfVar21[0x104] = pfVar17;
    if (((pfVar17 == (float *)0xf) && ((pfVar18 == (float *)0x0 || (pfVar18 == (float *)0x2)))) ||
       ((pfVar17 == (float *)0x19 && (pfVar18 == (float *)0x1)))) {
      cVar6 = FUN_0040a5d0("HoleClose",1);
      if (cVar6 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(ppfVar21 + 0x23) = 1;
      }
      FUN_006c04b0(1);
    }
    if ((ppfVar21[0x1f] == (float *)0x0) || (*(char *)(ppfVar21 + 0x23) == '\0')) {
      *(undefined *)((int)ppfVar21 + 0x171) = 0;
    }
    ppfVar20 = local_344;
    if (ppfVar21[0xef] != (float *)0x0) {
      ppfVar21[0xe0] = (float *)ppfVar21[0xef][0xe0];
    }
  }
  else {
    if (*(char *)((int)ppfVar21 + 0x171) != '\0') {
      ppfVar21[0x57] = (float *)ppfVar21[0xcc][9];
    }
    if (local_358[0x2d9] == (float *)0x4) {
      pfVar18 = ppfVar21[0xb];
      pcVar14 = "";
      if (pfVar18 == (float *)0x0) {
        pcVar14 = "Body2Wiggle";
      }
      else if (pfVar18 == (float *)0x1) {
        switch(ppfVar23) {
        case (float **)0x1:
        case (float **)0x3:
        case (float **)0x4:
        case (float **)0x5:
        case (float **)0x6:
          goto switchD_00478fe8_caseD_1;
        case (float **)0x2:
        case (float **)0x7:
          goto switchD_00478fe8_caseD_2;
        case (float **)0x8:
          pcVar14 = "TailWiggle";
        }
      }
      else if (pfVar18 == (float *)0x2) {
        puVar1 = (undefined *)((int)ppfVar23 + -1);
        if (puVar1 < (undefined *)0x5) {
          if (*(short *)(ppfVar21 + 0x2f1) == 0) {
            switch(puVar1) {
            case (undefined *)0x0:
            case (undefined *)0x2:
switchD_00478fe8_caseD_1:
              pcVar14 = "Body2Wiggle";
              break;
            default:
switchD_00478fe8_caseD_2:
              pcVar14 = "Body3Wiggle";
            }
          }
          else {
            switch(puVar1) {
            default:
              pcVar14 = "Body1Wiggle";
              break;
            case (undefined *)0x1:
              goto switchD_00478fe8_caseD_1;
            case (undefined *)0x3:
              goto switchD_00478fe8_caseD_2;
            case (undefined *)0x4:
              pcVar14 = "TailWiggleUp";
            }
          }
        }
      }
      FUN_0040a380(pcVar14,0);
      if (ppfVar21[0xb] == (float *)0x1) {
        iVar9 = *(int *)(&UNK_00b1dc48 + (int)ppfVar23 * 4);
      }
      else {
        iVar9 = *(int *)(&UNK_00b1dc04 + (int)ppfVar23 * 4);
      }
      ppfVar20 = local_344;
      if (iVar9 < (int)local_358[0x305]) {
        uVar8 = (int)local_358[0x304] + iVar9 & 1;
        fVar22 = local_358[0x302]
                 [(int)local_358[0x303] - 1U & (uint)((int)local_358[0x304] + iVar9) >> 1];
        ppfVar21[0xcf] = *(float **)((int)fVar22 + uVar8 * 8);
        ppfVar21[0xd0] = *(float **)((int)fVar22 + 4 + uVar8 * 8);
        ppfVar21[0xd8] = DAT_00c7b640;
        ppfVar21[0xd9] = DAT_00c7b644;
        fVar24 = DAT_00baa85c;
        local_54 = local_358[0x309];
        uVar8 = (int)local_54 + iVar9 & 1;
        fVar22 = local_358[0x307][(int)local_358[0x308] - 1U & (uint)((int)local_54 + iVar9) >> 1];
        ppfVar21[0xd3] = *(float **)((int)fVar22 + uVar8 * 8);
        ppfVar21[0xd4] = *(float **)((int)fVar22 + 4 + uVar8 * 8);
        pfVar18 = ppfVar21[0xd4];
        if (fVar24 <= (float)pfVar18) {
          pfVar17 = (float *)0x0;
        }
        else {
          pfVar17 = (float *)0x4;
        }
        bVar5 = (float)pfVar18 < DAT_00baa89c;
        ppfVar21[0x62] = pfVar17;
        *(bool *)((int)ppfVar21 + 0x171) = fVar24 > (float)pfVar18 && bVar5;
        if ((((ppfVar21[0xb] == (float *)0x0) || (ppfVar21[0xb] == (float *)0x2)) &&
            (local_340 == (float **)&DAT_00000004)) &&
           ((cVar6 = FUN_00417430(0,0x10000000), cVar6 == '\0' ||
            (ppfVar20 = local_344,
            (*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)))) {
          if (0 < (int)ppfVar21[0x2e8]) {
            ppfVar21[0x2e8] = (float *)((int)ppfVar21[0x2e8] + -1);
          }
          uVar8 = FUN_006eef60();
          ppfVar20 = local_344;
          if ((((uVar8 & 1) == 0) &&
              ((float)ppfVar21[0xd4] <= DAT_00baadec && DAT_00baadec != (float)ppfVar21[0xd4])) &&
             ((int)ppfVar21[0x2e8] < 1)) {
            ppfVar21[0x2e8] = (float *)0x1e;
            AI_0043ef30();
            if (ppfVar21[0xb] == (float *)0x2) {
              if (*(short *)(ppfVar21 + 0x2f1) == 1) {
                local_e8 = local_e8 | 0x10000;
              }
LAB_00479201:
              local_378 = (float **)0x40a00000;
              local_374 = (float **)0x0;
              pppfVar15 = &local_378;
              uVar10 = 7;
            }
            else {
              if ((ppfVar21[0xb] != (float *)0x0) || (ppfVar21[0xc] != (float *)0x1))
              goto LAB_00479201;
              local_360 = (float **)0x41000000;
              local_35c = (float **)0x40c00000;
              pppfVar15 = &local_360;
              uVar10 = 9;
            }
            FUN_006cb2e0(ppfVar21 + 0xcf,pppfVar15,uVar10,local_140);
            FUN_009568e0(0x3a7,2,0,0x3f800000);
            ppfVar20 = local_344;
          }
        }
      }
    }
    else {
      *(undefined *)((int)ppfVar21 + 0x171) = 0;
      ppfVar21[0x62] = (float *)0x0;
    }
  }
LAB_00479299:
  pfVar18 = ppfVar21[0xb];
  if (pfVar18 == (float *)0x2) {
    if (*(char *)((int)ppfVar21 + 0x173) != '\0') {
      if (*(short *)(ppfVar21 + 0x2f1) == 0) {
        FUN_006d6ba0(0x1c,0x3f800000,2,0,0x3f800000);
        pfVar18 = ppfVar21[0xef];
        local_340 = ppfVar21;
        ppfVar20 = local_37c;
        while (pfVar18 != (float *)0x0) {
          iVar9 = __RTDynamicCast(pfVar18,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                  &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
          if (iVar9 == 0) {
            FUN_00a112c0(0x10,"m_Parent invalid downcast\n");
          }
          local_340 = (float **)*ppfVar20;
          ppfVar20 = local_340 + 0xef;
          ppfVar21 = local_380;
          pfVar18 = local_340[0xef];
        }
        do {
          ppfVar11 = local_340;
          ppfVar20 = (float **)((uint)local_340[0x5b] & 0x10000000);
          if (ppfVar20 == (float **)0x0) {
            pfVar18 = (float *)ppfVar21[0xcc][0x14];
            local_340[0xe1] = pfVar18;
          }
          else {
            pfVar18 = local_340[0xe1];
          }
          *(short *)(local_340 + 0x2f1) = *(short *)(local_340 + 0x2f1) + 1;
          local_340[0xe0] = pfVar18;
          *(undefined *)((int)local_340 + 0x173) = 0;
          local_33c = (float **)0x0;
          if (local_340[0x32] != (float *)0x0) {
            do {
              piVar13 = (int *)FUN_0040b220(local_33c);
              if (*piVar13 == 0) {
                iVar9 = -1;
              }
              else {
                iVar9 = *(int *)(*piVar13 + 4);
              }
              if (iVar9 == 0) {
                local_28 = 0xf;
                local_3c = (float *)0x0;
                local_2c = iVar9;
                FUN_0040ccd0("gfx/Bosses/Afterbirth/Boss_TheFrail2.png",0x28);
                local_14 = 2;
                cVar6 = FUN_00417430(0,0x10000000);
                if (cVar6 != '\0') {
                  FUN_00499580(4,6,"Bosses/AfterbirthPlus/DeliriumForms",0x23);
                }
                uVar10 = FUN_006ba840(&local_80,&local_3c);
                local_14 = CONCAT31(local_14._1_3_,3);
                FUN_0040bf30(local_33c,uVar10);
                FUN_0040d040();
                local_14 = -1;
                if (0xf < local_28) {
                  uVar8 = local_28 + 1;
                  pfVar18 = local_3c;
                  if (0xfff < uVar8) {
                    pfVar18 = (float *)local_3c[-1];
                    uVar8 = local_28 + 0x24;
                    if (0x1f < (uint)((int)local_3c + (-4 - (int)pfVar18))) {
LAB_004770e8:
                    /* WARNING: Subroutine does not return */
                      _invalid_parameter_noinfo_noreturn();
                    }
                  }
                  FUN_00aef15c(pfVar18,uVar8);
                }
              }
              ppfVar20 = ppfVar11 + 0x12;
              local_33c = (float **)((int)local_33c + 1);
            } while (local_33c < ppfVar11[0x32]);
          }
          FUN_0040c000(ppfVar20);
          if (*(char *)((int)ppfVar11 + 0x151) != '\0') {
            FUN_00409030();
            FUN_00409030();
          }
          ppfVar11[3] = ppfVar11[2];
          local_350 = ppfVar11 + 0x79;
          ppfVar11[5] = (float *)0x0;
          ppfVar11[6] = (float *)0x0;
          ppfVar11[7] = (float *)0x0;
          local_364 = 4.203895e-45;
          do {
            iVar9 = FUN_006eef60();
            local_348 = (float **)
                        ((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa75c + DAT_00baa630);
            uVar8 = FUN_006eef60();
            local_33c = *(float ***)(&DAT_00b1dc3c + (uVar8 % 3) * 4);
            if ((local_33c == (float **)0x3) && (ppfVar11 != local_358)) {
              uVar8 = FUN_006eef60();
              local_33c = *(float ***)(&DAT_00b1dc3c + (uVar8 & 1) * 4);
            }
            uVar10 = FUN_006eef60();
            iVar9 = FUN_006eef60();
            fVar22 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
            local_37c = (float **)(fVar22 + fVar22);
            fVar22 = (float)local_37c;
            FUN_0041d540();
            local_360 = (float **)(fVar22 * (float)local_348);
            fVar22 = (float)local_37c;
            FUN_0041d520();
            local_35c = (float **)(fVar22 * (float)DAT_00baa2d0 * (float)local_348);
            iVar9 = FUN_006eef60();
            fVar22 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
            local_37c = (float **)(fVar22 + fVar22);
            ppfVar20 = local_37c;
            FUN_0041d540();
            local_378 = (float **)
                        ((float)ppfVar20 * (float)DAT_00baa2d0 * (float)local_340[0xdc] +
                        (float)local_340[0xcf]);
            ppfVar20 = local_37c;
            FUN_0041d520();
            uVar28 = 0;
            pTVar27 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
            pTVar26 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
            uVar25 = 0;
            local_374 = (float **)
                        ((float)ppfVar20 * (float)DAT_00baa2d0 * (float)local_340[0xdc] +
                        (float)local_340[0xd0]);
            uVar10 = FUN_00428b20(1000,5,&local_378,&local_360,ppfVar21,local_33c,uVar10);
            iVar9 = __RTDynamicCast(uVar10,uVar25,pTVar26,pTVar27,uVar28);
            ppfVar20 = local_340;
            if ((float **)(iVar9 + 0x1e4) != local_350) {
              pfVar18 = local_350[1];
              pfVar17 = local_350[2];
              pfVar4 = local_350[3];
              *(float **)(iVar9 + 0x1e4) = *local_350;
              *(float **)(iVar9 + 0x1e8) = pfVar18;
              *(float **)(iVar9 + 0x1ec) = pfVar17;
              *(float **)(iVar9 + 0x1f0) = pfVar4;
              pfVar18 = local_340[0x7e];
              pfVar17 = local_340[0x7f];
              pfVar4 = local_340[0x80];
              *(float **)(iVar9 + 500) = local_340[0x7d];
              *(float **)(iVar9 + 0x1f8) = pfVar18;
              *(float **)(iVar9 + 0x1fc) = pfVar17;
              *(float **)(iVar9 + 0x200) = pfVar4;
              *(undefined8 *)(iVar9 + 0x204) = *(undefined8 *)(local_340 + 0x81);
              *(float **)(iVar9 + 0x20c) = local_340[0x83];
            }
            local_364 = (float)((int)local_364 + -1);
            ppfVar11 = local_340;
          } while (local_364 != 0.0);
          uVar10 = FUN_006eef60();
          uVar28 = 0;
          pTVar27 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
          pTVar26 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          uVar25 = 0;
          uVar10 = FUN_00428b20(1000,0x4d,ppfVar20 + 0xcf,&DAT_00c7b640,ppfVar21,0,uVar10);
          piVar13 = (int *)__RTDynamicCast(uVar10,uVar25,pTVar26,pTVar27,uVar28);
          (**(code **)(*piVar13 + 0x3c))(ppfVar21 + 0x79,0xffffffff,0xff,0,1);
          if ((ppfVar20[0xf0] != (float *)0x0) &&
             (iVar9 = __RTDynamicCast(ppfVar20[0xf0],0,
                                      &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                      &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0),
             iVar9 == 0)) {
            FUN_00a112c0(0x10,"m_Child invalid downcast\n");
          }
          local_340 = (float **)ppfVar20[0xf0];
        } while (local_340 != (float **)0x0);
        local_340 = (float **)0x0;
      }
      else {
        uVar8 = FUN_006eef60();
        local_364 = (float)((uVar8 & 3) + 3);
        if (local_364 != 0.0) {
          do {
            iVar9 = FUN_006eef60();
            fVar22 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
            local_348 = (float **)(fVar22 + fVar22);
            iVar9 = FUN_006eef60();
            local_33c = (float **)
                        ((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa784);
            ppfVar20 = local_348;
            FUN_0041d540();
            local_368 = (float **)((float)ppfVar20 * (float)local_33c);
            local_360 = local_368;
            ppfVar20 = local_348;
            FUN_0041d520();
            local_370 = (float **)((float)ppfVar20 * (float)local_33c);
            local_35c = local_370;
            uVar10 = FUN_006eef60();
            local_37c = (float **)ppfVar21[0xcf];
            local_350 = (float **)ppfVar21[0xd0];
            iVar9 = FUN_006eef60();
            fVar22 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
            local_348 = (float **)(fVar22 + fVar22);
            iVar9 = FUN_006eef60();
            local_33c = (float **)
                        ((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa87c);
            ppfVar20 = local_348;
            FUN_0041d540();
            local_378 = (float **)((float)ppfVar20 * (float)local_33c + (float)local_37c);
            ppfVar20 = local_348;
            FUN_0041d520();
            uVar28 = 0;
            pTVar27 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
            local_374 = (float **)((float)ppfVar20 * (float)local_33c + (float)local_350);
            pTVar26 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
            uVar25 = 0;
            uVar10 = FUN_00428b20(1000,0x3b,&local_378,&local_360,ppfVar21,0,uVar10);
            ppfVar20 = (float **)__RTDynamicCast(uVar10,uVar25,pTVar26,pTVar27,uVar28);
            local_348 = DAT_00baa454;
            if (((float)ppfVar20[0xd0] - (float)ppfVar21[0xd0]) *
                (float)((uint)local_368 ^ DAT_00bacb70) +
                ((float)ppfVar20[0xcf] - (float)ppfVar21[0xcf]) * (float)local_370 < 0.0) {
              local_348 = DAT_00baad50;
            }
            local_33c = ppfVar20;
            iVar9 = FUN_006eef60();
            ppfVar20[0x11d] =
                 (float *)(((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                            DAT_00ba9ff4 * DAT_00baa81c + DAT_00baa630) * (float)local_348);
            uVar8 = FUN_006eef60();
            pfVar18 = (float *)(uVar8 % 0xf + 0xf);
            ppfVar20[0x117] = pfVar18;
            ppfVar20[0x118] = pfVar18;
            pcVar3 = (code *)(*ppfVar20)[0xf];
            iVar9 = FUN_006eef60();
            local_37c = (float **)
                        ((float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                        DAT_00ba9ff4);
            FUN_00682ed0();
            local_44 = (float)local_37c * (float)DAT_00baa2d0 + DAT_00baa198;
            local_50 = 0x3f800000;
            local_4c = 0x3f800000;
            local_48 = 0x3f800000;
            local_30 = (float *)0x0;
            local_2c = 0;
            local_28 = 0;
            (*pcVar3)(&local_50,0xffffffff,0xff,0,1);
            (*(code *)(*local_33c)[3])();
            cVar6 = FUN_00417430(0,0x10000000);
            ppfVar20 = local_344;
            if (cVar6 != '\0') {
              do {
                local_90 = 0;
                local_8c = 0;
                local_88 = 0;
                local_84 = 0;
                local_80 = DAT_00c7b640;
                local_7c = DAT_00c7b644;
                local_78 = DAT_00c7b640;
                local_74 = DAT_00c7b644;
                local_70 = 0;
                local_6c = 0;
                (*(code *)(*ppfVar20)[9])(&local_90);
                ppfVar11 = ppfVar20 + 0xef;
                ppfVar20 = (float **)*ppfVar11;
              } while ((float **)*ppfVar11 != (float **)0x0);
            }
            local_364 = (float)((int)local_364 + -1);
          } while (local_364 != 0.0);
          local_364 = 0.0;
        }
      }
    }
  }
  else if (((pfVar18 == (float *)0x0) || (pfVar18 == (float *)0x1)) &&
          (*(char *)((int)ppfVar21 + 0x173) != '\0')) {
    ppfVar11 = (float **)((uint)ppfVar21[0x5b] & 0x10000000);
    while (ppfVar11 != (float **)0x0) {
      local_4c = 0;
      local_48 = 0;
      local_44 = 0.0;
      local_40 = 0;
      local_2c = 0;
      local_28 = 0;
      local_3c = DAT_00c7b640;
      local_38 = DAT_00c7b644;
      local_34 = DAT_00c7b640;
      local_30 = DAT_00c7b644;
      (*(code *)(*ppfVar20)[9])(&local_4c);
      ppfVar20 = (float **)ppfVar20[0xef];
      ppfVar11 = ppfVar20;
    }
  }
  if (ppfVar21[0x1f] != (float *)0x0) {
    cVar6 = FUN_0040add0(&DAT_00b1d33c);
    if (cVar6 != '\0') {
      local_348 = (float **)0x3a4;
      FUN_00956780();
      FUN_0092dc30(local_348,0x3f800000,2,0,0x3f800000,0);
    }
    if ((ppfVar21[0x1f] != (float *)0x0) && (cVar6 = FUN_0040add0("Popup"), cVar6 != '\0')) {
      local_348 = (float **)0x3a5;
      FUN_00956780();
      FUN_0092dc30(local_348,0x3f800000,2,0,0x3f800000,0);
    }
  }
LAB_00479cde:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

