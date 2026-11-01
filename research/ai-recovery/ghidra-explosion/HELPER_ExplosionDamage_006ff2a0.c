/* Local J460 decompiler output.
 * VA: 0x006ff2a0
 * Entry: 006ff2a0
 * Dispatcher: 0x006c2990
 * Types: 4
 * Identities: 4.17.0
 * Evidence: Explosion calls flags dispatch
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=4; identities=4.17.0; Explosion calls flags dispatch */

void HELPER_ExplosionDamage
               (float *param_1,int *param_2,float param_3,char param_4,int *param_5,uint param_6,
               uint param_7,uint param_8,uint param_9,uint param_10,undefined4 param_11,
               char param_12)

{
  int iVar1;
  undefined4 *puVar2;
  code *pcVar3;
  uint uVar4;
  undefined *puVar5;
  char cVar6;
  int iVar7;
  uint *puVar8;
  float *pfVar9;
  int iVar10;
  float fVar11;
  undefined4 *puVar12;
  undefined (*pauVar13) [16];
  int iVar14;
  int **ppiVar15;
  byte bVar16;
  byte bVar17;
  int *piVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  int *piVar22;
  double dVar23;
  undefined local_164 [4];
  undefined auStack_160 [4];
  undefined8 uStack_15c;
  undefined4 local_b8;
  undefined4 uStack_b4;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  undefined4 local_a8;
  undefined4 uStack_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined local_88 [4];
  int local_84;
  uint local_7c;
  int *local_60;
  undefined local_58 [4];
  undefined4 *local_54;
  float local_50;
  float local_4c;
  int local_48;
  float local_44;
  uint local_40;
  int *local_3c;
  float local_38;
  float local_34;
  float local_30;
  char local_29;
  int *local_28;
  float local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00afc2b9;
  local_1c = ExceptionList;
  ExceptionList = &local_1c;
  puVar5 = &stack0xfffffffc;
  if ((param_5 == (int *)0x0) ||
     ((puVar5 = &stack0xfffffffc, param_5[10] != 1 &&
      (iVar7 = FUN_006a9140(), puVar5 = puStack_20, iVar7 == 0)))) {
    puStack_20 = puVar5;
    iVar7 = FUN_009bea80();
    puVar5 = puStack_20;
    if (iVar7 == 2) {
      param_3 = param_3 * DAT_00baa380;
    }
    else if (2 < iVar7) {
      param_3 = param_3 * DAT_00baa2d0;
    }
  }
  puStack_20 = puVar5;
  local_44 = param_3;
  if ((_DAT_00baaa64 <= (float)param_2) ||
     (((piVar18 = param_2, puVar8 = (uint *)FUN_00417170(), (*puVar8 | puVar8[1]) != 0 ||
       ((puVar8[2] | puVar8[3]) != 0)) && (_DAT_00baaa08 <= (float)piVar18)))) {
    FUN_006eef60();
    FUN_00703670();
  }
  if (((param_5 == (int *)0x0) || (param_5[10] != 1)) || (local_29 = '\x01', param_12 != '\0')) {
    local_29 = '\0';
  }
  uStack_15c._0_4_ = 0x6ff3c5;
  uStack_15c._4_4_ = local_88;
  FUN_0041a790();
  local_14 = 0;
  local_40 = 0;
  if (local_7c != 0) {
    do {
      piVar18 = *(int **)(local_84 + local_40 * 4);
      local_28 = piVar18;
      if ((((piVar18 != param_5) || (param_12 != '\0')) &&
          (((*(char *)((int)piVar18 + 0x173) == '\0' &&
            (((piVar18[0x62] != 0 && (piVar18[0x61] != 4)) &&
             (NAN((float)piVar18[0xdf]) == ((float)piVar18[0xdf] == 0.0))))) &&
           ((iVar7 = piVar18[10], iVar7 != 2 && (iVar7 != 9)))))) &&
         ((param_5 == (int *)0x0 ||
          (((iVar7 != 0x112 || (param_5[10] != 0x112)) || (*(int *)(DAT_00c71678 + 0x26584) == 0x17)
           ))))) {
        local_38 = local_44 + (float)piVar18[0xdc];
        local_30 = (float)piVar18[0xcf] - *param_1;
        local_24 = (float)piVar18[0xd0] - param_1[1];
        piVar22 = (int *)(local_30 * local_30 + local_24 * local_24);
        FUN_00435a50();
        local_3c = piVar22;
        if (param_4 != '\0') {
          local_4c = (float)piVar18[0xd0];
          local_50 = (float)piVar18[0xcf];
          uStack_15c._0_4_ = 0;
          uStack_15c._4_4_ = 1;
          _local_164 = 0x200000000;
          local_164 = (undefined  [4])&local_50;
          cVar6 = FUN_007f0df0(param_1);
          if (cVar6 == '\0') goto LAB_006ffd46;
        }
        if ((param_5 != (int *)0x0) && (param_5[10] == 4)) {
          uStack_15c._0_4_ = 0;
          uStack_15c._4_4_ = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          auStack_160 = (undefined  [4])param_5;
          local_164 = (undefined  [4])0x6ff51d;
          iVar7 = __RTDynamicCast();
          param_6 = param_6 | *(uint *)(iVar7 + 0x438);
          param_7 = param_7 | *(uint *)(iVar7 + 0x43c);
          param_8 = param_8 | *(uint *)(iVar7 + 0x440);
          param_9 = param_9 | *(uint *)(iVar7 + 0x444);
        }
        if ((0.0 < (float)local_3c) && (piVar18[10] != 1000)) {
          uStack_15c._0_4_ = 0;
          uStack_15c._4_4_ = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
          auStack_160 = (undefined  [4])piVar18;
          local_164 = (undefined  [4])0x6ff58a;
          iVar7 = __RTDynamicCast();
          if (((piVar18[0x5a] & 0x4000000U) == 0) &&
             ((piVar18[10] != 1 ||
              ((((iVar7 == 0 ||
                 ((NAN(*(float *)(iVar7 + 0x37c)) || NAN(DAT_00baabc4)) ==
                  (*(float *)(iVar7 + 0x37c) == DAT_00baabc4))) &&
                ((param_5 == (int *)0x0 || ((param_5[0x5a] & 0x20000000U) == 0)))) &&
               (local_29 == '\0')))))) {
            fVar11 = (float)piVar18[0xdf];
            local_38 = local_38 - (float)local_3c;
            local_34 = 15.0;
            pfVar9 = &local_34;
            if (local_38 <= DAT_00baa854) {
              pfVar9 = &local_38;
            }
            fVar19 = *pfVar9;
            if (fVar11 <= DAT_00baa87c) {
              if (fVar11 <= DAT_00baa8d0) {
                if (fVar11 <= DAT_00baa924) {
                  if (DAT_00baaa44 < fVar11) {
                    fVar19 = fVar19 * DAT_00baa054;
                  }
                }
                else {
                  fVar19 = fVar19 * DAT_00baa078;
                }
              }
              else {
                fVar19 = fVar19 * DAT_00baa198;
              }
            }
            else {
              fVar19 = fVar19 * DAT_00baa2d0;
            }
            piVar22 = local_3c;
            fVar11 = DAT_00baa2d0;
            puVar8 = (uint *)FUN_00417170();
            if (((*puVar8 | puVar8[1]) == 0) && ((puVar8[2] | puVar8[3]) == 0)) {
              iVar7 = piVar18[10];
LAB_006ff827:
              fVar20 = (float)piVar18[0xd8];
              fVar21 = (local_30 / (float)piVar22) * fVar19;
              fVar19 = (local_24 / (float)piVar22) * fVar19;
              if (iVar7 != 1) goto LAB_006ff6ce;
              local_34 = 10.0;
              local_30 = fVar21 + fVar20 * fVar11;
              local_24 = fVar19 + (float)piVar18[0xd9] * fVar11;
              fVar20 = local_30 * local_30 + local_24 * local_24;
              FUN_00435a50();
              local_38 = fVar20;
              pfVar9 = &local_34;
              if (fVar20 <= DAT_00baa81c) {
                pfVar9 = &local_38;
              }
              fVar19 = local_24;
              fVar11 = local_30;
              if (fVar20 != 0.0) {
                fVar19 = local_24 * (*pfVar9 / fVar20);
                fVar11 = local_30 * (*pfVar9 / fVar20);
              }
            }
            else {
              iVar7 = piVar18[10];
              if (iVar7 == 1) goto LAB_006ff827;
              fVar20 = (float)piVar18[0xd8];
              fVar21 = (local_30 / (float)piVar22) * (fVar19 + fVar19);
              fVar19 = (local_24 / (float)piVar22) * (fVar19 + fVar19);
LAB_006ff6ce:
              fVar19 = fVar19 + (float)piVar18[0xd9] * fVar11;
              fVar11 = fVar21 + fVar20 * fVar11;
            }
            piVar18[0xd9] = (int)fVar19;
            piVar18[0xd8] = (int)fVar11;
          }
        }
        iVar7 = piVar18[10];
        if ((iVar7 == 1) || (iVar7 == 3)) {
          if (0.0 < (float)param_2) {
            piVar22 = param_2;
            FUN_00431310();
            if ((float)piVar22 < DAT_00baa9a8) {
              local_24 = DAT_00baa454;
            }
            else {
              local_24 = DAT_00baa630;
            }
            if ((param_10 & 0x10000000) != 0) {
              local_24 = DAT_00baa454;
            }
            if (1 < *(int *)(DAT_00c71678 + 0x26614)) {
              local_24 = (float)piVar22 * DAT_00baa198;
            }
            if (piVar18[10] == 1) {
              uStack_15c._0_4_ = 0;
              uStack_15c._4_4_ = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
              local_164 = (undefined  [4])0x6ffcf0;
              auStack_160 = (undefined  [4])piVar18;
              __RTDynamicCast();
              auStack_160 = (undefined  [4])uStack_a4;
              local_164 = (undefined  [4])local_a8;
              uStack_15c._0_4_ = uStack_a0;
              uStack_15c._4_4_ = uStack_9c;
              cVar6 = FUN_007dba30(local_b8,uStack_b4,uStack_b0,uStack_ac);
              if (cVar6 != '\0') goto LAB_006ffd46;
            }
            uStack_15c._0_4_ = param_10;
            uStack_15c._4_4_ = param_11;
            auStack_160 = (undefined  [4])local_24;
            local_164 = (undefined  [4])0x6ffd43;
            (**(code **)(*piVar18 + 0x20))();
          }
        }
        else if (iVar7 == 1000) {
          iVar7 = piVar18[0xb];
          if (((((iVar7 == 0x15) || (iVar7 == 0x21)) || (iVar7 == 0x3f)) ||
              ((iVar7 == 0x40 || (iVar7 == 0x9f)))) || (iVar7 == 0x9e)) {
            *(undefined *)((int)piVar18 + 0x173) = 1;
            goto LAB_006ffd46;
          }
          if (iVar7 != 0x4a) goto LAB_006ffac3;
          if (piVar18[0xc] != 0) goto LAB_006ffd46;
          local_30 = *(float *)(DAT_00c71678 + 0x18300);
          if (*(int *)((int)local_30 + 8) == 0x12) {
            local_34 = (float)FUN_006eef60();
            iVar7 = *(int *)(DAT_00c71678 + 0x18300);
            pfVar9 = (float *)FUN_00812d00();
            iVar14 = (int)((*pfVar9 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
            iVar10 = (int)((pfVar9[1] - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
            if ((((iVar14 < 0) || (iVar1 = *(int *)(iVar7 + 0xc), iVar1 <= iVar14)) || (iVar10 < 0))
               || (*(int *)(iVar7 + 0x10) <= iVar10)) {
              local_24 = -NAN;
LAB_006ff8e1:
              fVar11 = local_24;
              uStack_15c._4_4_ = 0x6ff8ed;
              FUN_00a112c0();
            }
            else {
              fVar11 = (float)(iVar10 * iVar1 + iVar14);
              local_24 = fVar11;
              if (((int)fVar11 < 0) || (0x1bf < (int)fVar11)) goto LAB_006ff8e1;
            }
            if (((uint)fVar11 < 0x1c0) && (iVar7 = FUN_007f0800(), iVar7 < 1)) {
              puVar12 = (undefined4 *)FUN_00a0f4c0();
              local_14._0_1_ = 0x12;
              if (puVar12 == (undefined4 *)0x0) {
                puVar12 = (undefined4 *)0x0;
              }
              else {
                FUN_00709c40();
                *puVar12 = IsaacRepentancePlus::GridEntity_Stairs::vftable;
              }
              local_14 = (uint)local_14._1_3_ << 8;
              if (puVar12 != (undefined4 *)0x0) {
                puVar12[1] = 0x12;
LAB_006ffa6f:
                puVar12[9] = local_24;
                puVar2 = *(undefined4 **)((int)local_30 + 0x24 + (int)local_24 * 4);
                if (puVar2 != (undefined4 *)0x0) {
                  (**(code **)*puVar2)();
                }
                *(undefined4 **)((int)local_30 + 0x24 + (int)local_24 * 4) = puVar12;
                puVar12[2] = 0;
                puVar12[6] = 0;
                FUN_00709db0();
              }
            }
          }
          else {
            cVar6 = FUN_0074b5d0();
            if (cVar6 != '\0') {
              local_30 = *(float *)(DAT_00c71678 + 0x18300);
              local_34 = (float)FUN_006eef60();
              iVar7 = *(int *)(DAT_00c71678 + 0x18300);
              pfVar9 = (float *)FUN_00812d00();
              iVar14 = (int)((*pfVar9 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
              iVar10 = (int)((pfVar9[1] - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
              if (((iVar14 < 0) || (iVar1 = *(int *)(iVar7 + 0xc), iVar1 <= iVar14)) ||
                 ((iVar10 < 0 || (*(int *)(iVar7 + 0x10) <= iVar10)))) {
                local_24 = -NAN;
LAB_006ff9ff:
                fVar11 = local_24;
                uStack_15c._4_4_ = 0x6ffa0b;
                FUN_00a112c0();
              }
              else {
                fVar11 = (float)(iVar10 * iVar1 + iVar14);
                local_24 = fVar11;
                if (((int)fVar11 < 0) || (0x1bf < (int)fVar11)) goto LAB_006ff9ff;
              }
              if (((uint)fVar11 < 0x1c0) && (iVar7 = FUN_007f0800(), iVar7 < 1)) {
                puVar12 = (undefined4 *)FUN_00a0f4c0();
                local_14._0_1_ = 0x28;
                local_54 = puVar12;
                if (puVar12 == (undefined4 *)0x0) {
                  puVar12 = (undefined4 *)0x0;
                }
                else {
                  FUN_00709c40();
                  *puVar12 = IsaacRepentancePlus::GridEntity_TrapDoor::vftable;
                  puVar12[0x55] = 0;
                }
                local_14 = (uint)local_14._1_3_ << 8;
                if (puVar12 == (undefined4 *)0x0) goto LAB_006ffaab;
                puVar12[1] = 0x11;
                goto LAB_006ffa6f;
              }
            }
          }
LAB_006ffaab:
          piVar18[0xc] = 1000;
        }
        else {
LAB_006ffac3:
          local_3c = param_2;
          piVar22 = param_2;
          puVar8 = (uint *)FUN_00417170();
          if (((*puVar8 | puVar8[1]) != 0) || ((puVar8[2] | puVar8[3]) != 0)) {
            bVar17 = 0;
            local_38 = (float)((piVar18[3] - piVar18[2]) / 0x38);
            if (local_38 != 0.0) {
              ppiVar15 = (int **)(piVar18[2] + 0x34);
              fVar11 = local_38;
              bVar16 = bVar17;
              do {
                piVar18 = *ppiVar15;
                ppiVar15 = ppiVar15 + 0xe;
                bVar17 = bVar16 + 1;
                if (piVar18 != param_5) {
                  bVar17 = bVar16;
                }
                fVar11 = (float)((int)fVar11 + -1);
                piVar18 = local_28;
                bVar16 = bVar17;
              } while (fVar11 != 0.0);
            }
            iVar7 = 1 << (bVar17 & 0x1f);
            local_3c = (int *)((float)piVar22 /
                              (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]));
          }
          FUN_00592200();
          pauVar13 = (undefined (*) [16])FUN_00417170();
          _local_164 = *pauVar13;
          FUN_0067d1f0(local_164);
          pcVar3 = *(code **)(*piVar18 + 0x20);
          FUN_00431310();
          uStack_15c._0_4_ = param_10;
          uStack_15c._4_4_ = param_11;
          auStack_160 = (undefined  [4])local_3c;
          local_164 = (undefined  [4])0x6ffbce;
          (*pcVar3)();
          if (((((param_6 | param_7) != 0) || ((param_8 | param_9) != 0)) && (param_5 != (int *)0x0)
              ) && (((param_5[0xd] < 10 || (999 < param_5[0xd])) &&
                    (cVar6 = HELPER_Entity_DamageFilter(), cVar6 != '\0')))) {
            FUN_00592200();
            pauVar13 = (undefined (*) [16])FUN_00417170();
            _local_164 = *pauVar13;
            FUN_0067af60();
          }
        }
      }
LAB_006ffd46:
      local_40 = local_40 + 1;
    } while (local_40 < local_7c);
  }
  FUN_005cbe20();
  local_14 = CONCAT31(local_14._1_3_,0x2f);
  local_28 = (int *)((local_44 * DAT_00baa7e8) / DAT_00baa904);
  uStack_15c._4_4_ = 0x6ffd8a;
  dVar23 = ceil((double)(float)local_28);
  local_28 = (int *)(float)dVar23;
  iVar7 = (int)dVar23;
  local_38 = DAT_00baa7a8 / (float)iVar7;
  local_24 = 0.0;
  local_40 = iVar7;
  local_28 = (int *)FUN_00812c90();
  if (-1 < (int)local_28) {
    uStack_15c._4_4_ = 0x6ffde9;
    FUN_004e45c0();
  }
  if (0 < iVar7) {
    do {
      fVar11 = local_24;
      FUN_0041d540();
      local_50 = fVar11;
      fVar11 = local_24;
      FUN_0041d520();
      local_4c = fVar11;
      fVar11 = 0.0;
      if (0.0 < local_44) {
        do {
          local_34 = fVar11 + DAT_00baa87c;
          if (local_44 <= fVar11 + DAT_00baa87c) {
            local_34 = local_44;
          }
          uStack_15c._4_4_ = 0x6ffe56;
          local_28 = (int *)local_34;
          FUN_00a104e0();
          uStack_15c._4_4_ = 0x6ffe62;
          FUN_00a10420();
          iVar10 = FUN_00456620();
          if (iVar10 != 0) {
            local_28 = *(int **)(iVar10 + 0x24);
            uStack_15c._4_4_ = 0x6ffe93;
            FUN_004e45c0();
            iVar7 = local_40;
            if (*(int *)(iVar10 + 4) == 3) break;
          }
          iVar7 = local_40;
          fVar11 = local_34;
        } while (local_34 < local_44);
      }
      iVar7 = iVar7 + -1;
      local_24 = local_24 + local_38;
      local_40 = iVar7;
    } while (iVar7 != 0);
  }
  local_3c = (int *)*local_60;
  if (local_3c != local_60) {
    do {
      piVar18 = local_3c;
      uStack_15c._4_4_ = 0x6ffef8;
      FUN_00812f00();
      auStack_160 = (undefined  [4])0x2;
      local_164 = (undefined  [4])local_58;
      uStack_15c = 0;
      cVar6 = FUN_007f0df0(param_1);
      if (cVar6 != '\0') {
        uVar4 = piVar18[4];
        local_28 = (int *)FUN_007f0800();
        if (uVar4 < 0x1c0) {
          local_40 = *(int *)(*(int *)(local_48 + 0x18300) + 0x24 + uVar4 * 4);
          if (((local_40 == 0) || (*(int *)(local_40 + 4) != 0xb)) ||
             (cVar6 = FUN_00711fd0(), cVar6 == '\0')) goto LAB_006fff72;
        }
        else {
          local_40 = 0;
LAB_006fff72:
          FUN_00431310();
          auStack_160 = (undefined  [4])0x6fff9e;
          uStack_15c._0_4_ = piVar18[4];
          uStack_15c._4_4_ = 0;
          cVar6 = FUN_00813bf0();
          if (cVar6 == '\0') goto LAB_0070001a;
        }
        if (local_28 == (int *)0x3) {
          uStack_15c._4_4_ = 0x6fffba;
          FUN_00a10480();
          FUN_0067f170();
          local_28 = (int *)0x42200000;
          uStack_15c._4_4_ = 0x6fffd8;
          FUN_00a104e0();
          uStack_15c._4_4_ = 0x6fffe5;
          FUN_00a10420();
          iVar7 = FUN_00812c90();
          if (-1 < iVar7) {
            uStack_15c._4_4_ = 0x70001a;
            FUN_0081e6e0();
          }
        }
      }
LAB_0070001a:
      std::
      _Tree_unchecked_const_iterator<class_std::_Tree_val<struct_std::_Tree_simple_types<unsigned_int>_>,struct_std::_Iterator_base0>
      ::operator++((_Tree_unchecked_const_iterator<class_std::_Tree_val<struct_std::_Tree_simple_types<unsigned_int>_>,struct_std::_Iterator_base0>
                    *)&local_3c);
    } while (local_3c != local_60);
  }
  FUN_00424420();
  FUN_004175b0();
  ExceptionList = local_1c;
  return;
}

