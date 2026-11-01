/* Local J460 decompiler output.
 * VA: 0x00538b70
 * Entry: 00538b70
 * Dispatcher: 0x006c2990
 * Types: 226,227,277
 * Identities: 226.0.0,226.1.0,226.2.0,227.0.0,227.1.0,277.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00539b90; instructions=967
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=226,227,277;
   identities=226.0.0,226.1.0,226.2.0,227.0.0,227.1.0,277.0.0; dispatcher=0x006c2990;
   end=0x00539b90; instructions=967 */

void __fastcall AI_00538b70(int param_1)

{
  int iVar1;
  undefined auVar2 [16];
  undefined *puVar3;
  char cVar4;
  uint uVar5;
  uint uVar6;
  undefined4 uVar7;
  int iVar8;
  char *pcVar9;
  float *pfVar10;
  undefined4 *puVar11;
  float **ppfVar12;
  float *pfVar13;
  uint uVar14;
  float fVar15;
  float fVar16;
  undefined4 uVar17;
  TypeDescriptor *pTVar18;
  TypeDescriptor *pTVar19;
  undefined4 uVar20;
  undefined4 uVar21;
  float local_134;
  float local_130;
  float *local_12c;
  float *local_128;
  float *local_124;
  float *local_120;
  float local_11c;
  float *local_118;
  undefined local_111;
  undefined local_110 [8];
  float local_108;
  undefined4 local_104;
  undefined4 local_e4;
  undefined4 uStack_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  undefined4 local_b8;
  undefined4 local_b4;
  undefined4 local_7c;
  undefined4 local_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined local_58 [5];
  undefined uStack_53;
  undefined2 uStack_52;
  undefined4 uStack_50;
  undefined uStack_4c;
  undefined3 uStack_4b;
  undefined4 local_48;
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
  puStack_18 = &LAB_00af47cd;
  local_1c = ExceptionList;
  uVar5 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar8 = *(int *)(param_1 + 0x28);
  local_24 = uVar5;
  if ((iVar8 == 0xe2) && (*(int *)(param_1 + 0x2c) == 2)) {
    puStack_20 = &stack0xfffffffc;
    FUN_0054a350();
    goto LAB_00539b71;
  }
  iVar1 = *(int *)(param_1 + 0xb64);
  if (iVar1 == 0) {
    *(undefined4 *)(param_1 + 0xb64) = 4;
    puStack_20 = &stack0xfffffffc;
    if (iVar8 == 0xe2) {
      puStack_20 = &stack0xfffffffc;
      FUN_0040a940(&DAT_00b5fed4,0);
      iVar8 = *(int *)(param_1 + 0x28);
    }
    if ((iVar8 == 0xe3) || (iVar8 == 0x115)) {
      *(uint *)(param_1 + 0x168) = *(uint *)(param_1 + 0x168) | 0x10000;
      *(undefined4 *)(param_1 + 0x16c) = *(undefined4 *)(param_1 + 0x16c);
      if (iVar8 == 0x115) {
        _local_58 = ZEXT816(0);
        local_48 = 0;
        local_44 = 0;
        local_40 = 0;
        local_68 = _DAT_00bac340;
        uStack_64 = _UNK_00bac344;
        uStack_60 = _UNK_00bac348;
        uStack_5c = _UNK_00bac34c;
        FUN_004071f0(&local_68);
        iVar8 = *(int *)(param_1 + 0x28);
      }
      if ((iVar8 == 0xe3) && (*(int *)(param_1 + 0x2c) == 1)) {
        *(undefined *)(param_1 + 0xb8) = 1;
        cVar4 = FUN_0040aaf0(&DAT_00b611b0,1);
        if (cVar4 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0xac) = 1;
        }
      }
    }
    goto LAB_00539b71;
  }
  if (iVar1 == 4) {
    if (iVar8 == 0xe2) {
      puStack_20 = &stack0xfffffffc;
      cVar4 = FUN_006ac710(0x14,*(undefined4 *)(param_1 + 0x20));
      if ((cVar4 != '\0') && (uVar6 = FUN_006eef60(), uVar6 % 3 == 0)) {
        uVar7 = FUN_006be840();
        cVar4 = FUN_006d7d60(uVar7);
        if (cVar4 != '\0') {
          FUN_006d6ba0((uint)(*(int *)(param_1 + 0x2c) == 0) * 2 + 0xa5,0x3f4ccccd,0x78,0,0x3f800000
                      );
        }
      }
      cVar4 = FUN_00417430(0x1000800,0);
      if ((cVar4 == '\0') || (*(int *)(param_1 + 0xf1c) != -1)) {
        uVar20 = 1;
        uVar21 = 900;
        uVar17 = 0x3f000000;
        uVar7 = FUN_006bec40(&local_11c,0);
        FUN_007e33c0(uVar7,uVar17,uVar21,uVar20);
      }
      else {
        iVar8 = FUN_006be840();
        local_11c = *(float *)(iVar8 + 0x33c);
        local_118 = *(float **)(iVar8 + 0x340);
        FUN_007e4940(&local_11c,0);
        if (0 < *(int *)(param_1 + 0xb50)) {
          *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
        }
      }
      auVar2 = _local_58;
      local_40 = 0xf;
      local_44 = 8;
      local_58[4] = s_WalkVert_00b1dd18[0];
      uStack_53 = s_WalkVert_00b1dd18[1];
      uStack_52._0_1_ = s_WalkVert_00b1dd18[2];
      uStack_52._1_1_ = s_WalkVert_00b1dd18[3];
      uStack_50._0_1_ = s_WalkVert_00b1dd18[4];
      uStack_50._1_1_ = s_WalkVert_00b1dd18[5];
      uStack_50._2_1_ = s_WalkVert_00b1dd18[6];
      uStack_50._3_1_ = s_WalkVert_00b1dd18[7];
      uStack_4b = auVar2._13_3_;
      uStack_4c = 0;
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
      FUN_006c1330(&local_3c,local_58 + 4,0x3dcccccd);
      local_14 = (uint)local_14._1_3_ << 8;
      if (0xf < local_28) {
        uVar14 = local_28 + 1;
        uVar6 = local_3c;
        if (0xfff < uVar14) {
          uVar6 = *(uint *)(local_3c - 4);
          uVar14 = local_28 + 0x24;
          if (0x1f < (local_3c - uVar6) - 4) goto LAB_00538eab;
        }
        FUN_00aef15c(uVar6,uVar14);
      }
      local_14 = -1;
      local_2c = 0;
      local_28 = 0xf;
      local_3c = local_3c & 0xffffff00;
      if (0xf < local_40) {
        uVar6 = local_40 + 1;
        iVar8 = stack0xffffffac;
        if (0xfff < uVar6) {
          iVar8 = *(int *)(stack0xffffffac + -4);
          uVar6 = local_40 + 0x24;
          if (0x1f < (stack0xffffffac - iVar8) - 4U) {
LAB_00538eab:
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
        }
        FUN_00aef15c(iVar8,uVar6);
      }
      cVar4 = FUN_006ac710(7,*(undefined4 *)(param_1 + 0x20));
      puVar3 = puStack_20;
      if ((cVar4 != '\0') && (cVar4 = FUN_00417430(0x1000000,0), puVar3 = puStack_20, cVar4 == '\0')
         ) {
        uVar7 = FUN_006eef60();
        uVar21 = 0;
        pTVar19 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
        pTVar18 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uVar17 = 0;
        uVar7 = FUN_00428b20(1000,0x16,param_1 + 0x33c,&DAT_00c7b640,param_1,0,uVar7);
        iVar8 = __RTDynamicCast(uVar7,uVar17,pTVar18,pTVar19,uVar21);
        fVar15 = DAT_00c37940;
        fVar16 = DAT_00c3793c * DAT_00baa120;
        *(undefined4 *)(iVar8 + 0x478) = 0x3f000000;
        fVar15 = fVar15 * DAT_00baa120;
        *(undefined4 *)(iVar8 + 0x45c) = 0x1e;
        *(float *)(iVar8 + 0xe4) = fVar16;
        *(undefined4 *)(iVar8 + 0x460) = 0x1e;
        *(float *)(iVar8 + 0xe8) = fVar15;
        puVar3 = puStack_20;
      }
    }
    else if ((iVar8 == 0xe3) || (puVar3 = &stack0xfffffffc, iVar8 == 0x115)) {
      puStack_20 = &stack0xfffffffc;
      cVar4 = FUN_006ac710(0x1e,*(undefined4 *)(param_1 + 0x20));
      if ((cVar4 != '\0') && (uVar6 = FUN_006eef60(), uVar6 % 3 == 0)) {
        FUN_006d6ba0(0x74,0x3f4ccccd,0x78,0,0x3f800000);
      }
      local_118 = (float *)(param_1 + 0x33c);
      uVar7 = FUN_00812c90(local_118);
      FUN_004565e0(uVar7,900);
      FUN_007e6ff0();
      FUN_007e5340(0x3fa00000,0);
      fVar15 = *(float *)(param_1 + 0x360);
      if (DAT_00baa454 <=
          fVar15 * fVar15 + *(float *)(param_1 + 0x364) * *(float *)(param_1 + 0x364)) {
        if ((float)((uint)fVar15 & DAT_00bacb40) <=
            (float)((uint)*(float *)(param_1 + 0x364) & DAT_00bacb40)) {
          if (*(float *)(param_1 + 0x364) <= 0.0) {
            pcVar9 = (char *)&DAT_00b1e020;
          }
          else {
            pcVar9 = "WalkDown";
          }
          FUN_0040a380(pcVar9,0);
        }
        else if ((*(int *)(param_1 + 0x28) == 0xe3) && (*(int *)(param_1 + 0x2c) == 1)) {
          pcVar9 = "WalkLeft";
          if (0.0 <= fVar15) {
            pcVar9 = "WalkRight";
          }
          FUN_0040a380(pcVar9,0);
          *(undefined *)(param_1 + 0x148) = 0;
        }
        else {
          FUN_0040a380("WalkHori",0);
          *(bool *)(param_1 + 0x148) =
               *(float *)(param_1 + 0x360) <= 0.0 && *(float *)(param_1 + 0x360) != 0.0;
        }
      }
      else {
        FUN_0040a6e0("WalkDown",0);
      }
      if (*(int *)(param_1 + 0xf1c) == -1) {
        cVar4 = FUN_006ac710(3,*(undefined4 *)(param_1 + 0x20));
        puVar3 = puStack_20;
        if ((((cVar4 != '\0') && (*(int *)(param_1 + 0x34) != 0x38a)) &&
            (cVar4 = FUN_00417430(0x1000a00,0), puVar3 = puStack_20, cVar4 == '\0')) &&
           ((cVar4 = FUN_00417430(0x20000000,0), cVar4 == '\0' ||
            (iVar8 = FUN_006be840(), puVar3 = puStack_20, *(int *)(iVar8 + 0x28) != 1)))) {
          iVar8 = FUN_006be840();
          local_130 = *(float *)(iVar8 + 0x33c);
          local_120 = *(float **)(iVar8 + 0x340);
          iVar8 = FUN_006be840();
          fVar15 = *(float *)(iVar8 + 0x360);
          local_128 = *(float **)(iVar8 + 0x364);
          iVar8 = FUN_006eef60();
          fVar16 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa85c;
          local_134 = fVar15 * fVar16 + local_130;
          local_130 = (float)local_128 * fVar16 + (float)local_120;
          FUN_00812f50(&local_124,&local_134,0x41a00000,0x41a00000,0x41a00000);
          iVar8 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc);
          local_12c = (float *)((float)(*(int *)(param_1 + 0x434) % iVar8) * DAT_00baa904 +
                               DAT_00baa904);
          local_128 = (float *)((float)(*(int *)(param_1 + 0x434) / iVar8) * DAT_00baa904 +
                               DAT_00baaa00);
          fVar16 = (float)local_12c - (float)local_124;
          fVar15 = (float)local_128 - (float)local_120;
          if (((float)((uint)fVar16 & DAT_00bacb40) < DAT_00baa87c) ||
             (puVar3 = puStack_20, (float)((uint)fVar15 & DAT_00bacb40) < DAT_00baa87c)) {
            fVar15 = fVar15 * fVar15 + fVar16 * fVar16;
            FUN_00435a50();
            puVar3 = puStack_20;
            if ((fVar15 < DAT_00baaa94) &&
               (cVar4 = FUN_007f0df0(&local_12c,&local_124,3,999,0,0,0), puVar3 = puStack_20,
               cVar4 != '\0')) {
              *(undefined4 *)(param_1 + 0xb64) = 8;
              *(undefined4 *)(param_1 + 0x410) = 0;
              fVar15 = (float)local_124 - *local_118;
              pfVar13 = (float *)((float)local_120 - local_118[1]);
              if ((float)((uint)fVar15 & DAT_00bacb40) <= (float)((uint)pfVar13 & DAT_00bacb40))
              goto LAB_00539275;
              if ((*(int *)(param_1 + 0x28) == 0xe3) && (*(int *)(param_1 + 0x2c) == 1)) {
                local_111 = false;
                pcVar9 = "AttackLeft";
                if (0.0 <= fVar15) {
                  pcVar9 = "AttackRight";
                }
              }
              else {
                pcVar9 = "AttackHori";
                local_111 = fVar15 < 0.0;
              }
              FUN_0040a380(pcVar9,0);
              *(undefined *)(param_1 + 0x148) = local_111;
              puVar3 = puStack_20;
            }
          }
        }
      }
      else {
        cVar4 = FUN_00417430(0x1000a00,0);
        puVar3 = puStack_20;
        if (cVar4 == '\0') {
          cVar4 = FUN_006cae60(0,7);
          if (cVar4 == '\0') {
            cVar4 = FUN_006d8260(9);
            puVar3 = puStack_20;
            if (cVar4 != '\0') {
              FUN_006d8d30(&local_11c);
              cVar4 = FUN_00a10630(param_1 + 0x33c);
              puVar3 = puStack_20;
              if (cVar4 != '\0') goto LAB_00539162;
            }
          }
          else {
LAB_00539162:
            FUN_006d8b20(0);
            *(undefined4 *)(param_1 + 0xb64) = 8;
            *(undefined4 *)(param_1 + 0x410) = 0;
            FUN_006d9050(1);
            FUN_006d8d30(&local_124);
            cVar4 = FUN_00a10630((float *)(param_1 + 0x33c));
            if (cVar4 == '\0') {
              local_11c = *(float *)(param_1 + 0xf20);
              local_118 = *(float **)(param_1 + 0xf24);
            }
            else {
              pfVar13 = (float *)FUN_006d8d30(&local_12c);
              local_11c = *pfVar13 - *(float *)(param_1 + 0x33c);
              local_118 = (float *)(pfVar13[1] - *(float *)(param_1 + 0x340));
            }
            pfVar13 = local_118;
            if ((float)((uint)local_11c & DAT_00bacb40) <= (float)((uint)local_118 & DAT_00bacb40))
            {
LAB_00539275:
              if ((float)pfVar13 <= DAT_00ba9fe4) {
                FUN_0040a380("AttackUp",0);
                puVar3 = puStack_20;
              }
              else {
                FUN_0040a380("AttackDown",0);
                puVar3 = puStack_20;
              }
            }
            else {
              if ((*(int *)(param_1 + 0x28) == 0xe3) && (*(int *)(param_1 + 0x2c) == 1)) {
                local_111 = false;
                pcVar9 = "AttackLeft";
                if (0.0 <= local_11c) {
                  pcVar9 = "AttackRight";
                }
              }
              else {
                pcVar9 = "AttackHori";
                local_111 = local_11c < 0.0;
              }
              FUN_0040a380(pcVar9,0);
              *(undefined *)(param_1 + 0x148) = local_111;
              puVar3 = puStack_20;
            }
          }
        }
      }
    }
  }
  else {
    puVar3 = &stack0xfffffffc;
    if (iVar1 == 8) {
      FUN_006d8b20(0);
      pfVar10 = (float *)FUN_006d8d30(&local_11c);
      pfVar13 = (float *)(param_1 + 0x33c);
      local_11c = *pfVar10 - *pfVar13;
      local_118 = (float *)(pfVar10[1] - *(float *)(param_1 + 0x340));
      if (((NAN(local_11c) || NAN(DAT_00c7b640)) == (local_11c == DAT_00c7b640)) ||
         ((NAN((float)local_118) || NAN(DAT_00c7b644)) == ((float)local_118 == DAT_00c7b644))) {
        puVar11 = (undefined4 *)FUN_00a10030(&local_124);
        *(undefined4 *)(param_1 + 0xf20) = *puVar11;
        *(undefined4 *)(param_1 + 0xf24) = puVar11[1];
      }
      if (*(int *)(param_1 + 0x7c) == 0) {
LAB_005398a3:
        if ((*(int *)(param_1 + 0x28) == 0x115) && (*(int *)(param_1 + 0x410) < 2)) {
          puVar11 = (undefined4 *)FUN_00452bf0(local_58 + 4);
          local_14 = 2;
          if (0xf < (uint)puVar11[5]) {
            puVar11 = (undefined4 *)*puVar11;
          }
          cVar4 = FUN_0040a5d0(puVar11,1);
          if (cVar4 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x8c) = 1;
          }
          local_14 = -1;
          if (0xf < local_40) {
            uVar6 = local_40 + 1;
            iVar8 = stack0xffffffac;
            if (0xfff < uVar6) {
              iVar8 = *(int *)(stack0xffffffac + -4);
              uVar6 = local_40 + 0x24;
              if (0x1f < (stack0xffffffac - iVar8) - 4U) {
                    /* WARNING: Subroutine does not return */
                _invalid_parameter_noinfo_noreturn();
              }
            }
            FUN_00aef15c(iVar8,uVar6);
          }
          *(int *)(param_1 + 0x410) = *(int *)(param_1 + 0x410) + 1;
        }
        else {
          *(undefined4 *)(param_1 + 0xb64) = 4;
        }
      }
      else {
        cVar4 = FUN_0040add0("Shoot");
        if (cVar4 != '\0') {
          if ((*(int *)(param_1 + 0xf1c) == -1) ||
             (cVar4 = FUN_00a10630(&DAT_00c7b640), cVar4 == '\0')) {
            iVar8 = FUN_006be840();
            ppfVar12 = &local_12c;
            local_11c = *(float *)(iVar8 + 0x33c) - *pfVar13;
            local_118 = (float *)(*(float *)(iVar8 + 0x340) - *(float *)(param_1 + 0x340));
          }
          else {
            ppfVar12 = &local_124;
          }
          pfVar10 = (float *)FUN_00a10100(ppfVar12,0x41200000);
          local_134 = *pfVar10;
          local_130 = pfVar10[1];
          AI_0043ef30();
          local_7c = 1;
          if (*(int *)(param_1 + 0x28) == 0x115) {
            local_e4 = _DAT_00bac3e0;
            uStack_e0 = _UNK_00bac3e4;
            uStack_dc = _UNK_00bac3e8;
            uStack_d8 = _UNK_00bac3ec;
          }
          else if ((*(int *)(param_1 + 0x28) == 0xe3) && (*(int *)(param_1 + 0x2c) == 1)) {
            iVar8 = FUN_006be840();
            fVar15 = *(float *)(param_1 + 0x340) - *(float *)(iVar8 + 0x340);
            fVar16 = *pfVar13 - *(float *)(iVar8 + 0x33c);
            fVar15 = fVar15 * fVar15 + fVar16 * fVar16;
            FUN_00435a50();
            FUN_006d8d30(&local_11c);
            cVar4 = FUN_00a10630(pfVar13);
            if (cVar4 != '\0') {
              pfVar10 = (float *)FUN_006d8d30(&local_11c);
              fVar15 = *(float *)(param_1 + 0x340) - pfVar10[1];
              fVar15 = fVar15 * fVar15 + (*pfVar13 - *pfVar10) * (*pfVar13 - *pfVar10);
              FUN_00435a50();
              if (fVar15 <= DAT_00baa87c) {
                fVar15 = DAT_00baa87c;
              }
              if (DAT_00baaad4 <= fVar15) {
                fVar15 = DAT_00baaad4;
              }
            }
            local_128 = (float *)(fVar15 / DAT_00baa81c);
            local_b8 = 0;
            local_b4 = 0x2000;
            fVar15 = DAT_00baa3e0;
            FUN_004e4690();
            local_120 = (float *)0x3c23d70a;
            local_118 = (float *)((fVar15 - DAT_00baa454) * _DAT_00baadbc);
            ppfVar12 = &local_118;
            if ((float)local_118 <= DAT_00baa06c) {
              ppfVar12 = &local_120;
            }
            iVar8 = FUN_006eef60();
            local_104 = 0x3f800000;
            local_108 = ((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa280 + DAT_00baa3a4) *
                        ((DAT_00baa868 - ((float)local_128 - (float)*ppfVar12) * DAT_00baa82c) /
                        (float)*ppfVar12);
          }
          FUN_006d6ba0(0xf9,0x3f800000,2,0,0x3f800000);
          FUN_006cb2e0(param_1 + 0x33c,&local_134,0,local_110);
        }
        if ((*(int *)(param_1 + 0x7c) == 0) || (*(char *)(param_1 + 0x8c) == '\0'))
        goto LAB_005398a3;
      }
      *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa1f8;
      puVar3 = puStack_20;
    }
  }
  puStack_20 = puVar3;
  if (*(char *)(param_1 + 0x173) != '\0') {
    if (*(int *)(param_1 + 0x28) == 0xe2) {
      if (*(int *)(param_1 + 0x2c) == 1) {
        uVar5 = FUN_006eef60(uVar5);
        if ((uVar5 & 1) == 0) {
          FUN_006d6ba0(0x73,0x3f800000,2,0,0x3f800000);
          FUN_006c0f30(0xe3,0,0,0xffffffff);
          *(undefined4 *)(param_1 + 0x380) = *(undefined4 *)(param_1 + 900);
          *(undefined *)(param_1 + 0x173) = 0;
        }
        else if (*(short *)(param_1 + 0xc76) == 0) {
          pfVar13 = (float *)FUN_0067f070(&local_124);
          local_12c = (float *)(*pfVar13 + *pfVar13);
          local_128 = (float *)(pfVar13[1] + pfVar13[1]);
          local_120 = local_128;
          local_118 = local_12c;
          uVar7 = FUN_006eef60();
          iVar8 = FUN_00428b20(0x12,0,param_1 + 0x33c,&local_12c,param_1,0,uVar7);
          *(uint *)(iVar8 + 0x168) = *(uint *)(iVar8 + 0x168) & 0xfffffffb;
          *(undefined4 *)(iVar8 + 0x16c) = *(undefined4 *)(iVar8 + 0x16c);
          uVar5 = FUN_006eef60();
          if ((uVar5 & 1) == 0) {
            uVar7 = FUN_006eef60();
            local_11c = (float)((uint)local_118 ^ DAT_00bacb70);
            local_118 = (float *)((uint)local_120 ^ DAT_00bacb70);
            iVar8 = FUN_00428b20(0x12,0,param_1 + 0x33c,&local_11c,param_1,0,uVar7);
            *(uint *)(iVar8 + 0x168) = *(uint *)(iVar8 + 0x168) & 0xfffffffb;
            *(undefined4 *)(iVar8 + 0x16c) = *(undefined4 *)(iVar8 + 0x16c);
          }
        }
      }
    }
    else if ((*(int *)(param_1 + 0x28) == 0x115) &&
            (cVar4 = FUN_00417430(0x1000000,0), cVar4 == '\0')) {
      iVar8 = param_1 + 0x33c;
      FUN_006ff2a0(iVar8,0x42200000,0x42700000,1,param_1,DAT_00c79100,DAT_00c79104,DAT_00c79108,
                   DAT_00c7910c,4,0,0);
      FUN_00703190(iVar8,0);
      uVar7 = FUN_006eef60();
      FUN_00428b20(1000,1,iVar8,&DAT_00c7b640,0,0,uVar7);
    }
  }
  *(float *)(param_1 + 0x36c) = *(float *)(param_1 + 0x36c) * DAT_00baa3a4;
LAB_00539b71:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

