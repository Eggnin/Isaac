/* Local J460 decompiler output.
 * VA: 0x007009a0
 * Entry: 007009a0
 * Dispatcher: 0x006c2990
 * Types: 4
 * Identities: 4.17.0
 * Evidence: Explosion flags dispatch
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=4; identities=4.17.0; Explosion flags dispatch */

void __thiscall
HELPER_ExplosionEffects
          (float param_1_00,int **param_1,float param_2,uint param_3,uint param_4,uint param_5,
          uint param_6,float **param_7,float param_8)

{
  code *pcVar1;
  undefined auVar2 [16];
  undefined auVar3 [16];
  undefined auVar4 [16];
  float **ppfVar5;
  int **ppiVar6;
  undefined *puVar7;
  byte bVar8;
  char cVar9;
  uint uVar10;
  float **ppfVar11;
  uint uVar12;
  undefined4 uVar13;
  int *piVar14;
  int *piVar15;
  uint uVar16;
  int iVar17;
  undefined4 extraout_ECX;
  int extraout_ECX_00;
  int iVar18;
  float *pfVar19;
  int iVar20;
  bool bVar21;
  float fVar22;
  float **ppfVar23;
  float fVar24;
  undefined4 uVar25;
  TypeDescriptor *pTVar26;
  TypeDescriptor *pTVar27;
  undefined4 uVar28;
  undefined4 uVar29;
  float local_f0;
  float local_ec;
  float local_e8;
  float local_e4;
  int local_e0;
  float local_dc;
  float local_d8;
  float local_d4;
  float **local_d0;
  float **local_cc;
  float **local_c8;
  undefined *local_c4;
  int local_c0;
  float local_bc;
  float local_b8;
  float local_b4;
  code *local_b0;
  float **local_ac;
  float **local_a8;
  float **local_a4;
  float **local_a0;
  float local_9c;
  int **local_98;
  float *local_94;
  float **local_90;
  float **local_8c;
  float *local_88;
  float *local_84;
  float **local_80;
  float *local_7c;
  float *pfStack_78;
  float *pfStack_74;
  float *pfStack_70;
  undefined local_6c [16];
  undefined8 local_5c;
  float *local_54;
  undefined4 local_50;
  float *pfStack_4c;
  float *pfStack_48;
  float *pfStack_44;
  undefined local_40 [8];
  undefined4 uStack_38;
  undefined4 uStack_34;
  float *local_30;
  uint local_2c;
  float **local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 uStack_14;
  
  puStack_20 = &stack0xfffffffc;
  uStack_14 = 0xffffffff;
  puStack_18 = &LAB_00afc2e0;
  local_1c = ExceptionList;
  uVar10 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_98 = param_1;
  local_a8 = param_7;
  local_9c = param_1_00;
  local_24 = uVar10;
  if (((param_3 & DAT_00c34560 | param_4 & DAT_00c34564) != 0) ||
     (puVar7 = &stack0xfffffffc, (param_5 & DAT_00c34568 | param_6 & DAT_00c3456c) != 0)) {
    ppfVar23 = *(float ***)(DAT_00c71678 + 0x18300);
    local_ac = ppfVar23;
    ppfVar11 = (float **)
               __RTDynamicCast(param_7,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                               &IsaacRepentancePlus::Entity_Bomb::RTTI_Type_Descriptor,0,uVar10);
    local_84 = (float *)0x0;
    local_8c = ppfVar11;
    if (ppfVar23[0x499] != (float *)0x0) {
      do {
        piVar14 = (int *)ppfVar23[0x497][(int)local_84];
        local_80 = (float **)piVar14[10];
        if ((local_80 == (float **)0x192) || (local_80 == (float **)0x105)) {
LAB_00700aa5:
          if (((((param_7 != (float **)0x0) && (param_7[10] == (float *)0x3e8)) &&
               (param_7[0xb] == (float *)&DAT_0000001f)) ||
              ((ppfVar11 != (float **)0x0 && (*(char *)(ppfVar11 + 0x112) != '\0')))) ||
             (*(int *)(DAT_00c71678 + 0x26584) == 0xd)) goto LAB_00700aff;
          fVar24 = (float)piVar14[0xe1];
          fVar22 = fVar24 * DAT_00baa1d4 + (float)piVar14[0xe0];
          if (fVar22 <= fVar24) {
            fVar24 = fVar22;
          }
          piVar14[0xe0] = (int)fVar24;
        }
        else {
          if (local_80 == (float **)0xed) {
            bVar21 = piVar14[0xb] == 2;
          }
          else {
            bVar21 = local_80 == (float **)0x392;
          }
          if (bVar21) goto LAB_00700aa5;
LAB_00700aff:
          if ((((((1 < *(int *)(DAT_00c71678 + 0x26614)) && (local_80 == (float **)0x1)) ||
                ((9 < (int)local_80 && ((int)local_80 < 1000)))) &&
               ((((piVar14[0x62] != 1 && (piVar14[0x62] != 0)) &&
                 (*(char *)(piVar14 + 0xec) == '\0')) && (*(char *)((int)piVar14 + 0x173) == '\0')))
               ) && (((cVar9 = FUN_00417430(0x10,0), cVar9 == '\0' || (local_80 == (float **)0x322))
                     || (ppfVar11 = local_8c, local_80 == (float **)0x362)))) &&
             ((param_7 == (float **)0x0 ||
              (cVar9 = FUN_006a8fa0(piVar14), ppfVar11 = local_8c, cVar9 == '\0')))) {
            local_90 = *(float ***)(*piVar14 + 0x20);
            if (param_7 == (float **)0x0) {
              pfStack_4c = (float *)0x0;
              pfStack_48 = (float *)0x0;
              pfStack_44 = (float *)0x0;
              auVar2._4_4_ = DAT_00c7b644;
              auVar2._0_4_ = DAT_00c7b640;
              auVar2._8_4_ = DAT_00c7b640;
              auVar2._12_4_ = 0;
              _local_40 = auVar2 << 0x20;
              local_30 = DAT_00c7b644;
LAB_00700c46:
              local_80 = (float **)0x0;
              if (param_7 != (float **)0x0) goto LAB_00700c51;
              local_80 = (float **)0x0;
LAB_00700c6f:
              uVar16 = 0;
              if (param_7 != (float **)0x0) goto LAB_00700c75;
LAB_00700c8e:
              local_2c = 0;
            }
            else {
              pfStack_4c = param_7[10];
              pfStack_48 = param_7[0xb];
              pfStack_44 = param_7[0xd];
              local_40._4_4_ = param_7[0xcf];
              local_40._0_4_ = param_7[0xe];
              uStack_38 = param_7[0xd0];
              local_30 = param_7[0xd9];
              uStack_34 = param_7[0xd8];
              if (((uint)param_7[0x5a] & 0x100) == 0) goto LAB_00700c46;
              local_80 = (float **)0x1;
LAB_00700c51:
              if (((uint)param_7[0x5a] & 0x20000000) == 0) goto LAB_00700c6f;
              uVar16 = 2;
LAB_00700c75:
              if (((uint)param_7[0x5b] & 0x400000) == 0) goto LAB_00700c8e;
              local_2c = 4;
            }
            local_2c = uVar16 | (uint)local_80 | local_2c;
            local_28 = param_7;
            (*(code *)local_90)(param_8 * DAT_00baa81c,0,0,&pfStack_4c,0x1e);
            if (param_7 == (float **)0x0) {
              pfStack_4c = (float *)0x0;
              pfStack_48 = (float *)0x0;
              pfStack_44 = (float *)0x0;
              auVar3._4_4_ = DAT_00c7b644;
              auVar3._0_4_ = DAT_00c7b640;
              auVar3._8_4_ = DAT_00c7b640;
              auVar3._12_4_ = 0;
              _local_40 = auVar3 << 0x20;
              local_30 = DAT_00c7b644;
LAB_00700d64:
              uVar16 = 0;
              if (param_7 != (float **)0x0) goto LAB_00700d6a;
              uVar16 = 0;
LAB_00700d85:
              local_80 = (float **)0x0;
              if (param_7 != (float **)0x0) goto LAB_00700d90;
LAB_00700da9:
              uVar12 = 0;
            }
            else {
              pfStack_4c = param_7[10];
              pfStack_48 = param_7[0xb];
              pfStack_44 = param_7[0xd];
              local_40._4_4_ = param_7[0xcf];
              local_40._0_4_ = param_7[0xe];
              uStack_38 = param_7[0xd0];
              local_30 = param_7[0xd9];
              uStack_34 = param_7[0xd8];
              if (((uint)param_7[0x5a] & 0x100) == 0) goto LAB_00700d64;
              uVar16 = 1;
LAB_00700d6a:
              if (((uint)param_7[0x5a] & 0x20000000) == 0) goto LAB_00700d85;
              local_80 = (float **)0x2;
LAB_00700d90:
              if (((uint)param_7[0x5b] & 0x400000) == 0) goto LAB_00700da9;
              uVar12 = 4;
            }
            local_28 = param_7;
            local_2c = uVar12 | uVar16 | (uint)local_80;
            FUN_006add70(&pfStack_4c,0x3c,0);
            ppfVar11 = local_8c;
          }
        }
        local_84 = (float *)((int)local_84 + 1);
        ppfVar23 = local_ac;
      } while (local_84 < local_ac[0x499]);
    }
    local_50 = _DAT_00bac7b0;
    pfStack_4c = _UNK_00bac7b4;
    pfStack_48 = _UNK_00bac7b8;
    pfStack_44 = _UNK_00bac7bc;
    local_30 = (float *)0x0;
    _local_40 = ZEXT816(0);
    local_2c = 0;
    local_28 = (float **)0x0;
    FUN_009960b0(&local_50);
    puVar7 = puStack_20;
  }
  puStack_20 = puVar7;
  if (((param_3 & DAT_00c34b90 | param_4 & DAT_00c34b94) != 0) ||
     ((param_5 & DAT_00c34b98 | param_6 & DAT_00c34b9c) != 0)) {
    __RTDynamicCast(param_7,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                    &IsaacRepentancePlus::Entity_Bomb::RTTI_Type_Descriptor,0,uVar10);
    if (param_7 == (float **)0x0) {
LAB_00701398:
      ppfVar23 = (float **)0x0;
      local_94 = DAT_00baa454;
      local_80 = (float **)0x0;
      iVar20 = FUN_006eef60();
      local_84 = (float *)((float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baab30);
    }
    else {
      ppfVar11 = (float **)param_7[0xf2];
      ppfVar23 = param_7;
      if ((int)param_7[0xd] - 10U < 0x3de) {
        iVar20 = 0;
        local_ac = (float **)param_7[0xf2];
        do {
          uVar13 = FUN_006eef60();
          ppfVar23 = (float **)((float)iVar20 * DAT_00baab30 * DAT_00baa13c * DAT_00baa088);
          local_90 = ppfVar23;
          FUN_0041d540();
          local_b8 = (float)ppfVar23 * DAT_00baa81c;
          ppfVar23 = local_90;
          FUN_0041d520();
          local_b4 = (float)ppfVar23 * DAT_00baa81c;
          HELPER_Entity_SpawnRelay(9,0,local_98,&local_b8,local_ac,0,uVar13);
          iVar20 = iVar20 + 1;
          param_7 = local_a8;
        } while (iVar20 < 8);
        goto LAB_007015ea;
      }
      while (ppfVar5 = ppfVar11, ppfVar5 != (float **)0x0) {
        ppfVar23 = ppfVar5;
        ppfVar11 = (float **)ppfVar5[0xf2];
      }
      local_8c = ppfVar23;
      if (ppfVar23[10] != (float *)0x1) goto LAB_00701398;
      local_94 = ppfVar23[0x519];
      iVar20 = FUN_006eef60();
      local_84 = (float *)((float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baab30);
      local_80 = ppfVar23;
      if (ppfVar23 != (float **)0x0) {
        cVar9 = FUN_007706e0(0x76,0);
        if ((cVar9 == '\0') && (*(char *)((int)ppfVar23 + 0x13f2) == '\0')) {
          cVar9 = FUN_007706e0(0x72,0);
          if ((cVar9 == '\0') && (*(char *)(ppfVar23 + 0x4fd) == '\0')) {
            cVar9 = FUN_007706e0(0x44,0);
            if ((((cVar9 == '\0') && (*(char *)((int)ppfVar23 + 0x13f3) == '\0')) &&
                (cVar9 = FUN_007706e0(0x18b,0), cVar9 == '\0')) &&
               (local_80 = ppfVar23, *(char *)((int)ppfVar23 + 0x13f9) == '\0')) goto LAB_00701402;
            local_80 = (float **)0x0;
            do {
              ppfVar23 = (float **)
                         ((((float)(int)local_80 * DAT_00baab30) / DAT_00baa81c + (float)local_84) *
                         DAT_00baa088);
              local_90 = ppfVar23;
              FUN_0041d540();
              local_a4 = ppfVar23;
              ppfVar23 = local_90;
              FUN_0041d520();
              local_a0 = ppfVar23;
              piVar14 = (int *)FUN_007aab70(local_98,0xffffffff,&local_a4,1,1,0,0x3f800000);
              fVar24 = (float)piVar14[0xe2] + DAT_00baa8a0;
              piVar14[0xcf] = (int)*local_98;
              piVar14[0xd0] = (int)local_98[1];
              piVar14[0xd3] = 0;
              piVar14[0xd4] = -0x3f000000;
              *(undefined *)(piVar14 + 0x139) = 1;
              (**(code **)(*piVar14 + 0x40))(fVar24 * param_8);
              (**(code **)(*piVar14 + 0xc))();
              local_80 = (float **)((int)local_80 + 1);
              param_7 = local_a8;
            } while ((int)local_80 < 10);
          }
          else {
            iVar20 = 0;
            do {
              local_94 = (float *)FUN_007aded0(ppfVar23,0,0,0,1);
              fVar24 = DAT_00baab30;
              local_94[0xcf] = (float)*local_98;
              local_94[0xd0] = (float)local_98[1];
              fVar22 = (float)iVar20 * DAT_00baa8f0 + (float)local_84;
              if (fVar24 < (float)((uint)fVar22 & DAT_00bacb40)) {
                FUN_00499d20();
                fVar24 = DAT_00baab30;
              }
              if (fVar22 <= DAT_00baaa78) {
                if (fVar22 < DAT_00baae7c) {
                  fVar22 = fVar22 + fVar24;
                }
              }
              else {
                fVar22 = fVar22 - fVar24;
              }
              local_94[0x10e] = fVar22;
              (**(code **)((int)*local_94 + 0x40))((local_94[0xe2] + DAT_00baa8a0) * param_8);
              local_ac = (float **)(local_94 + 0xef);
              if (*local_ac != (float *)0x0) {
                local_90 = local_ac;
                FUN_004cf210(&local_90);
              }
              *local_ac = (float *)ppfVar23;
              FUN_004cdcf0(local_ac);
              local_90 = (float **)(local_94[0x10e] * DAT_00baa088);
              ppfVar11 = local_90;
              FUN_0041d540();
              local_a4 = ppfVar11;
              ppfVar11 = local_90;
              FUN_0041d520();
              local_a0 = ppfVar11;
              FUN_00961320(local_a4,local_a0,ppfVar23);
              (**(code **)((int)*local_94 + 0xc))();
              iVar20 = iVar20 + 1;
              param_7 = local_a8;
            } while (iVar20 < 10);
          }
        }
        else {
          iVar20 = 0;
          do {
            ppfVar23 = (float **)
                       (((float)iVar20 / DAT_00baa81c + (float)local_84) * DAT_00baab30 *
                       DAT_00baa088);
            local_90 = ppfVar23;
            FUN_0041d540();
            local_a4 = ppfVar23;
            ppfVar23 = local_90;
            FUN_0041d520();
            local_a0 = ppfVar23;
            piVar14 = (int *)FUN_009f5f40(&local_a4,extraout_ECX,0);
            local_7c = local_8c[0x531];
            pfStack_78 = local_8c[0x532];
            pfStack_74 = local_8c[0x533];
            pfStack_70 = local_8c[0x534];
            local_6c = *(undefined (*) [16])(local_8c + 0x535);
            local_5c = *(undefined8 *)(local_8c + 0x539);
            local_54 = local_8c[0x53b];
            (**(code **)(*piVar14 + 0x3c))(&local_7c,0xffffffff,0xff,0,1);
            (**(code **)(*piVar14 + 0x40))(param_8 * (float)piVar14[0xe2]);
            piVar14[0xcf] = (int)*local_98;
            piVar14[0xd0] = (int)local_98[1];
            *(undefined *)(piVar14 + 0x139) = 1;
            (**(code **)(*piVar14 + 0xc))();
            iVar20 = iVar20 + 1;
            param_7 = local_a8;
          } while (iVar20 < 10);
        }
        goto LAB_007015ea;
      }
    }
LAB_00701402:
    local_94 = (float *)((float)local_94 * DAT_00baa81c);
    local_88 = (float *)0x0;
    fVar24 = DAT_00baa81c;
    fVar22 = DAT_00baab30;
    do {
      local_8c = (float **)(((float)(int)local_88 * fVar22) / fVar24 + (float)local_84);
      if (ppfVar23 == (float **)0x0) {
        uVar13 = FUN_006eef60();
        local_8c = (float **)((float)local_8c * DAT_00baa088);
        ppfVar23 = local_8c;
        FUN_0041d540();
        local_b8 = (float)ppfVar23 * (float)local_94;
        ppfVar23 = local_8c;
        FUN_0041d520();
        local_b4 = (float)ppfVar23 * (float)local_94;
        piVar14 = (int *)HELPER_Entity_SpawnRelay(2,0,local_98,&local_b8,param_7,0,uVar13);
      }
      else {
        ppfVar23 = (float **)((float)local_8c * DAT_00baa088);
        local_8c = ppfVar23;
        FUN_0041d540();
        local_a4 = (float **)((float)ppfVar23 * (float)local_94);
        ppfVar23 = local_8c;
        FUN_0041d520();
        local_a0 = (float **)((float)ppfVar23 * (float)local_94);
        piVar14 = (int *)FUN_00790af0(local_98,local_a4,local_a0,7,0,0x3f800000);
      }
      local_90 = (float **)(param_6 & DAT_00c3461c);
      if ((((param_3 & DAT_00c34610 | param_4 & DAT_00c34614) != 0) ||
          ((param_5 & DAT_00c34618 | (uint)local_90) != 0)) &&
         (iVar20 = FUN_0067d9b0(), extraout_ECX_00 != iVar20)) {
        FUN_0067a400(iVar20);
      }
      fVar24 = (float)piVar14[0x108] * _DAT_00baa4f4 * param_8;
      if (fVar24 <= DAT_00baa06c) {
        fVar24 = DAT_00baa06c;
      }
      piVar14[0x109] = (int)fVar24;
      piVar14[0x108] = (int)fVar24;
      FUN_00677780();
      (**(code **)(*piVar14 + 0x40))(((float)piVar14[0xe2] + DAT_00baa8a0) * param_8);
      fVar24 = DAT_00baa81c;
      piVar15 = *local_98;
      local_88 = (float *)((int)local_88 + 1);
      piVar14[0xce] = (int)local_98[1];
      fVar22 = DAT_00baab30;
      piVar14[0xcd] = (int)piVar15;
      ppfVar23 = local_80;
    } while ((int)local_88 < 10);
  }
LAB_007015ea:
  if (((param_3 & _DAT_00c34ac0 | param_4 & _DAT_00c34ac4) != 0) ||
     ((param_5 & _DAT_00c34ac8 | param_6 & _DAT_00c34acc) != 0)) {
    FUN_00812f50(&local_dc,local_98,0x41700000,0x41700000,0x41700000);
    uVar13 = FUN_006eef60();
    if (param_7 == (float **)0x0) {
      pfVar19 = (float *)0x0;
    }
    else {
      pfVar19 = param_7[0xf2];
    }
    uVar28 = 0;
    pTVar27 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
    pTVar26 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar25 = 0;
    uVar13 = HELPER_Entity_SpawnRelay(1000,0x35,&local_dc,&DAT_00c7b640,pfVar19,0,uVar13);
    piVar14 = (int *)__RTDynamicCast(uVar13,uVar25,pTVar26,pTVar27,uVar28);
    fVar24 = param_2 * DAT_00c37940 * DAT_00baa0d0;
    piVar14[0x39] = (int)(param_2 * DAT_00c3793c * DAT_00baa0d0);
    piVar14[0x3a] = (int)fVar24;
    (**(code **)(*piVar14 + 0xc))();
  }
  if (((param_3 & DAT_00c34c00 | DAT_00c34c04 & param_4) != 0) ||
     ((param_5 & DAT_00c34c08 | DAT_00c34c0c & param_6) != 0)) {
    if ((param_7 == (float **)0x0) ||
       ((((param_7[10] == (float *)0x1 || (param_7[0xd] == (float *)0x1)) ||
         (param_7[10] == (float *)0x3)) || (param_7[0xd] == (float *)0x3)))) {
      uVar13 = FUN_006eef60();
      uVar28 = 0;
      pTVar27 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
      pTVar26 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
      uVar25 = 0;
      uVar13 = HELPER_Entity_SpawnRelay(1000,0x34,local_98,&DAT_00c7b640,param_7,0,uVar13);
      piVar14 = (int *)__RTDynamicCast(uVar13,uVar25,pTVar26,pTVar27,uVar28);
      piVar14[0x11e] = (int)param_8;
      uVar13 = DAT_00baa88c;
      if (1 < *(int *)(DAT_00c71678 + 0x26614)) {
        uVar13 = DAT_00baa868;
      }
      (**(code **)(*piVar14 + 0x40))(uVar13);
      uVar10 = FUN_006eef60();
      iVar20 = uVar10 % 0x78 + 300;
      piVar14[0x117] = iVar20;
      piVar14[0x118] = iVar20;
    }
    else {
      uVar13 = FUN_006eef60();
      ppiVar6 = local_98;
      piVar15 = (int *)HELPER_Entity_SpawnRelay(0x21,10,local_98,&DAT_00c7b640,param_7,0,uVar13);
      piVar14 = ppiVar6[1];
      piVar15[0xcd] = (int)*ppiVar6;
      piVar15[0xce] = (int)piVar14;
      (**(code **)(*piVar15 + 0xc))();
    }
  }
  if (((param_3 & DAT_00c34990 | DAT_00c34994 & param_4) != 0) ||
     ((param_5 & DAT_00c34998 | DAT_00c3499c & param_6) != 0)) {
    uVar10 = FUN_006eef60();
    if (*(int *)(DAT_00c71678 + 0x18390) + 0x24 < (int)(uVar10 % 100)) {
      if (param_7 == (float **)0x0) {
        pfVar19 = (float *)FUN_006eef60();
      }
      else {
        pfVar19 = param_7[0xf7];
        if (pfVar19 == (float *)0x0) {
          FUN_00a112c0(0x10,"RNG Seed is zero!\n");
          pfVar19 = param_7[0xf7];
          if (pfVar19 == (float *)0x0) {
            pcVar1 = (code *)swi(3);
            (*pcVar1)();
            return;
          }
        }
        uVar10 = (uint)pfVar19 >> ((byte)param_7[0xf8] & 0x1f) ^ (uint)pfVar19;
        uVar10 = uVar10 << ((byte)param_7[0xf9] & 0x1f) ^ uVar10;
        pfVar19 = (float *)(uVar10 >> ((byte)param_7[0xfa] & 0x1f) ^ uVar10);
        param_7[0xf7] = pfVar19;
      }
      if ((*(int *)(DAT_00c71678 + 0x269c8) == 2) ||
         (local_88 = (float *)0x1, *(int *)(DAT_00c71678 + 0x269c8) == 3)) {
        local_88 = (float *)0x3;
      }
      iVar20 = FUN_006eef60();
      fVar24 = (float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa704;
      local_90 = (float **)(fVar24 + fVar24);
      ppfVar23 = local_90;
      FUN_0041d540();
      local_a4 = (float **)((float)ppfVar23 * DAT_00baa6fc);
      ppfVar23 = local_90;
      FUN_0041d520();
      local_a0 = (float **)((float)ppfVar23 * DAT_00baa6fc);
      HELPER_Entity_SpawnRelay(5,0,local_98,&local_a4,param_7,local_88,pfVar19);
      *(int *)(DAT_00c71678 + 0x18390) = *(int *)(DAT_00c71678 + 0x18390) + 1;
    }
    uVar10 = FUN_006eef60();
    if (uVar10 % 100 < 0xf) {
      local_84 = (float *)0x0;
      local_80 = (float **)0x0;
      if (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1264) != 0) {
        do {
          pfVar19 = *(float **)
                     (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x125c) + (int)local_80 * 4);
          if ((((1 < *(int *)(DAT_00c71678 + 0x26614)) &&
               (fVar24 = pfVar19[10], fVar24 == 1.401298e-45)) ||
              (fVar24 = pfVar19[10], (int)fVar24 - 10U < 0x3de)) &&
             (((pfVar19[0x62] != 1.401298e-45 && (pfVar19[0x62] != 0.0)) &&
              ((*(char *)(pfVar19 + 0xec) == '\0' && (*(char *)((int)pfVar19 + 0x173) == '\0'))))))
          {
            local_ec = pfVar19[0x5b];
            if ((((((uint)pfVar19[0x5a] & 0x10) == 0) || (fVar24 == 1.123841e-42)) ||
                (fVar24 == 1.213524e-42)) &&
               (local_84 = pfVar19, ((uint)pfVar19[0x5a] & 0x100) == 0)) break;
          }
          local_80 = (float **)((int)local_80 + 1);
        } while (local_80 < *(float ***)(*(int *)(DAT_00c71678 + 0x18300) + 0x1264));
        param_7 = local_a8;
        if (local_84 != (float *)0x0) {
          uVar29 = 0;
          uVar28 = 0;
          uVar25 = 0x96;
          uVar13 = FUN_00435c70(0x96,0,0);
          FUN_006ad870(uVar13,uVar25,uVar28,uVar29);
        }
      }
    }
  }
  ppiVar6 = local_98;
  if (((param_3 & DAT_00c34a40 | DAT_00c34a44 & param_4) != 0) ||
     ((param_5 & DAT_00c34a48 | DAT_00c34a4c & param_6) != 0)) {
    local_8c = (float **)0x0;
    do {
      local_a4 = (float **)*ppiVar6;
      local_a0 = (float **)ppiVar6[1];
      pfVar19 = DAT_00baa454;
      if (local_8c != (float **)0x0) {
        iVar20 = FUN_006eef60();
        fVar24 = (float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa704;
        local_88 = (float *)(fVar24 + fVar24);
        iVar20 = FUN_006eef60();
        local_80 = (float **)
                   ((float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa97c + DAT_00baa904);
        pfVar19 = local_88;
        FUN_0041d540();
        local_a4 = (float **)((float)pfVar19 * (float)local_80 * param_8 + (float)local_a4);
        pfVar19 = local_88;
        FUN_0041d520();
        local_a0 = (float **)((float)pfVar19 * (float)local_80 * param_8 + (float)local_a0);
        iVar20 = FUN_006eef60();
        pfVar19 = (float *)((float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) *
                            DAT_00ba9ff4 * DAT_00baa2d0 + DAT_00baa198);
      }
      local_90 = (float **)((float)pfVar19 * param_8);
      local_80 = local_90;
      uVar13 = FUN_006eef60();
      piVar14 = (int *)HELPER_Entity_SpawnRelay(1000,0x2c,&local_a4,&DAT_00c7b640,0,0,uVar13);
      fVar22 = (float)local_80 * DAT_00baa6fc * DAT_00c37940;
      fVar24 = (float)local_80 * DAT_00baa6fc * DAT_00c3793c;
      piVar14[0x117] = 0x1c2;
      piVar14[0x3a] = (int)fVar22;
      piVar14[0x118] = 0x1c2;
      piVar14[0x39] = (int)fVar24;
      (**(code **)(*piVar14 + 0xc))();
      if ((float)local_80 < DAT_00baa304) {
        local_80 = (float **)((float)local_80 + (float)local_80);
      }
      uVar13 = FUN_006eef60();
      piVar14 = (int *)HELPER_Entity_SpawnRelay
                                 (1000,2,&local_a4,&DAT_00c7b640,0,
                                  (DAT_00baa304 <= (float)local_90) * '\x02' + '\x02',uVar13);
      iVar20 = FUN_006eef60();
      local_5c = 0x3f8000003f800000;
      local_54 = (float *)0x3f800000;
      piVar14[0x11d] =
           (int)((float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) * DAT_00ba9ff4
                * DAT_00baab30);
      fVar24 = (float)local_80 * DAT_00c37940;
      piVar14[0x39] = (int)((float)local_80 * DAT_00c3793c);
      pfStack_70 = _UNK_00babf2c;
      pfStack_74 = _UNK_00babf28;
      pfStack_78 = _UNK_00babf24;
      local_7c = _DAT_00babf20;
      piVar14[0x3a] = (int)fVar24;
      local_6c = ZEXT816(0);
      (**(code **)(*piVar14 + 0x3c))(&local_7c,0xffffffff,0xff,0,1);
      (**(code **)(*piVar14 + 0xc))();
      local_8c = (float **)((int)local_8c + 1);
      param_7 = local_a8;
    } while ((int)local_8c < 6);
  }
  if ((((param_3 & DAT_00c34bd0 | DAT_00c34bd4 & param_4) != 0) ||
      ((param_5 & DAT_00c34bd8 | DAT_00c34bdc & param_6) != 0)) && (param_7 != (float **)0x0)) {
    pfVar19 = param_7[10];
    if (pfVar19 == (float *)0x3e8) {
      if (param_7[0xb] == (float *)&DAT_0000001f) {
LAB_00701def:
        ppfVar11 = (float **)param_7[0xf2];
        ppfVar23 = param_7;
        while (ppfVar5 = ppfVar11, ppfVar5 != (float **)0x0) {
          ppfVar23 = ppfVar5;
          ppfVar11 = (float **)ppfVar5[0xf2];
        }
        uVar13 = FUN_006eef60();
        piVar14 = (int *)HELPER_Entity_SpawnRelay
                                   (1000,0x8d,local_98,&DAT_00c7b640,ppfVar23,0,uVar13);
        fVar22 = param_2 * DAT_00c37940;
        param_2 = param_2 * DAT_00c3793c;
        piVar14[0x117] = 0x96;
        piVar14[0x118] = 0x96;
        fVar24 = (param_2 * param_8) / DAT_00baa950;
        piVar14[0x3a] = (int)((fVar22 * param_8) / DAT_00baa950);
        piVar14[0x39] = (int)fVar24;
        (**(code **)(*piVar14 + 0x40))(0x40a00000);
        (**(code **)(*piVar14 + 0xc))();
      }
    }
    else if ((pfVar19 == (float *)&DAT_00000004) ||
            ((pfVar19 == (float *)0x2 && (param_7[0xb] == (float *)&DAT_00000004))))
    goto LAB_00701def;
  }
  ppiVar6 = local_98;
  if (((param_3 & DAT_00c34610 | param_4 & DAT_00c34614) != 0) ||
     ((param_5 & DAT_00c34618 | param_6 & DAT_00c3461c) != 0)) {
    local_8c = (float **)0x0;
    if (1 < *(int *)(DAT_00c71678 + 0x26614)) {
      while ((local_8c = param_7, local_8c != (float **)0x0 && (local_8c[10] != (float *)0x1))) {
        param_7 = (float **)local_8c[0xf2];
      }
    }
    local_84 = (float *)0x0;
    do {
      ppfVar23 = local_8c;
      local_a4 = (float **)*ppiVar6;
      local_a0 = (float **)ppiVar6[1];
      pfVar19 = DAT_00baa454;
      if (local_84 != (float *)0x0) {
        iVar20 = FUN_006eef60();
        fVar24 = (float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) * DAT_00ba9ff4
                 * DAT_00baa704;
        local_88 = (float *)(fVar24 + fVar24);
        iVar20 = FUN_006eef60();
        local_80 = (float **)
                   ((float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) *
                    DAT_00ba9ff4 * DAT_00baa97c + DAT_00baa904);
        pfVar19 = local_88;
        FUN_0041d540();
        local_a4 = (float **)((float)pfVar19 * (float)local_80 * param_8 + (float)local_a4);
        pfVar19 = local_88;
        FUN_0041d520();
        local_a0 = (float **)((float)pfVar19 * (float)local_80 * param_8 + (float)local_a0);
        iVar20 = FUN_006eef60();
        pfVar19 = (float *)((float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) *
                            DAT_00ba9ff4 * DAT_00baa2d0 + DAT_00baa198);
      }
      local_90 = (float **)((float)pfVar19 * param_8);
      local_80 = local_90;
      uVar13 = FUN_006eef60();
      piVar14 = (int *)HELPER_Entity_SpawnRelay(1000,0x2e,&local_a4,&DAT_00c7b640,ppfVar23,0,uVar13)
      ;
      fVar22 = (float)local_80 * DAT_00baa6fc * DAT_00c37940;
      fVar24 = (float)local_80 * DAT_00baa6fc * DAT_00c3793c;
      piVar14[0x117] = 0x1c2;
      piVar14[0x3a] = (int)fVar22;
      piVar14[0x118] = 0x1c2;
      piVar14[0x39] = (int)fVar24;
      (**(code **)(*piVar14 + 0xc))();
      if ((float)local_80 < DAT_00baa304) {
        local_80 = (float **)((float)local_80 + (float)local_80);
      }
      uVar13 = FUN_006eef60();
      piVar14 = (int *)HELPER_Entity_SpawnRelay
                                 (1000,2,&local_a4,&DAT_00c7b640,0,
                                  (DAT_00baa304 <= (float)local_90) * '\x02' + '\x02',uVar13);
      iVar20 = FUN_006eef60();
      piVar14[0x11d] =
           (int)((float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) * DAT_00ba9ff4
                * DAT_00baab30);
      fVar24 = (float)local_80 * DAT_00c37940;
      piVar14[0x39] = (int)((float)local_80 * DAT_00c3793c);
      piVar14[0x3a] = (int)fVar24;
      (**(code **)(*piVar14 + 0xc))();
      local_84 = (float *)((int)local_84 + 1);
      param_7 = local_a8;
    } while ((int)local_84 < 6);
  }
  if (((param_7 == (float **)0x0) || (param_7[10] != (float *)&DAT_00000004)) ||
     (param_7[0xb] != (float *)&DAT_0000000f)) {
    if (((param_3 & DAT_00c34620 | DAT_00c34624 & param_4) == 0) &&
       ((param_5 & DAT_00c34628 | DAT_00c3462c & param_6) == 0)) goto LAB_007023cf;
    if (param_7 != (float **)0x0) goto LAB_007021c5;
    local_84 = (float *)0x0;
    local_80 = (float **)0x0;
    local_8c = (float **)0x0;
  }
  else {
LAB_007021c5:
    ppfVar23 = (float **)param_7[0xf2];
    local_80 = param_7;
    while (ppfVar11 = ppfVar23, ppfVar11 != (float **)0x0) {
      local_80 = ppfVar11;
      param_7 = local_a8;
      ppfVar23 = (float **)ppfVar11[0xf2];
    }
    local_8c = (float **)local_80[0xd];
    local_84 = local_80[0xe];
    if (local_80[10] == (float *)0x1) {
      local_84 = local_80[0xb];
      local_8c = (float **)0x1;
    }
  }
  if ((param_7[10] == (float *)&DAT_00000004) && (param_7[0xb] == (float *)&DAT_0000000f)) {
    FUN_00703670(0xc);
  }
  uVar13 = FUN_006eef60();
  ppfVar23 = (float **)HELPER_Entity_SpawnRelay(1000,1,local_98,&DAT_00c7b640,param_7,0,uVar13);
  local_7c = _DAT_00babfb0;
  pfStack_78 = _UNK_00babfb4;
  pfStack_74 = _UNK_00babfb8;
  pfStack_70 = _UNK_00babfbc;
  local_6c = ZEXT816(0);
  local_5c = 0;
  local_54 = (float *)0x0;
  local_ac = ppfVar23;
  (*(code *)(*ppfVar23)[0xf])(&local_7c,0xffffffff,0xff,0,1);
  piVar14 = (int *)0x0;
  ppfVar23[0x117] = (float *)0x28;
  ppfVar23[0x118] = (float *)0x28;
  local_88 = (float *)0x0;
  do {
    piVar15 = (int *)HELPER_0096f310_EntityAttackObjectCandidate
                               (1,local_98,(float)(int)local_88 * DAT_00baa9b4,0x1e,&DAT_00c7b640,
                                ppfVar23,0);
    if (piVar15[0xf2] != 0) {
      local_90 = (float **)(piVar15 + 0xf2);
      FUN_004cf210(&local_90);
    }
    piVar15[0xf2] = (int)local_80;
    if (local_80 != (float **)0x0) {
      FUN_004cdcf0(piVar15 + 0xf2);
    }
    piVar15[0xd] = (int)local_8c;
    piVar15[0xe] = (int)local_84;
    piVar15[0x138] = (int)param_8;
    FUN_0097fc10();
    if ((int *)piVar15[0x14b] != piVar14) {
      if ((int *)piVar15[0x14b] != (int *)0x0) {
        local_90 = (float **)(piVar15 + 0x14b);
        FUN_004cf210(&local_90);
      }
      piVar15[0x14b] = (int)piVar14;
      if (piVar14 != (int *)0x0) {
        FUN_004cdcf0(piVar15 + 0x14b);
      }
    }
    if ((local_80 == (float **)0x0) || (local_80[10] != (float *)0x1)) {
      fVar24 = 8.0;
    }
    else {
      fVar24 = param_8 * DAT_00baa7e8;
    }
    (**(code **)(*piVar15 + 0x40))(fVar24);
    (**(code **)(*piVar15 + 0xc))();
    if (piVar14 == (int *)0x0) {
      piVar14 = piVar15;
    }
    local_88 = (float *)((int)local_88 + 1);
    ppfVar23 = local_ac;
    param_7 = local_a8;
  } while ((int)local_88 < 4);
LAB_007023cf:
  fVar24 = local_9c;
  if (((param_3 & DAT_00c347d0 | DAT_00c347d4 & param_4) != 0) ||
     ((param_5 & DAT_00c347d8 | DAT_00c347dc & param_6) != 0)) {
    FUN_00703670(0x14);
    *(undefined4 *)((int)fVar24 + 0x2652c) = 6;
    *(undefined4 *)((int)fVar24 + 0x26528) = 6;
    *(undefined4 *)((int)fVar24 + 0x26530) = 0x3f800000;
    FUN_00704360(local_98,0x43480000,param_7,0,0);
    uVar10 = 0;
    do {
      iVar20 = FUN_006eef60();
      local_88 = (float *)((((((float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)])
                               * DAT_00ba9ff4 +
                              (float)((double)uVar10 +
                                     (double)(&DAT_00bacb00)[-((int)uVar10 >> 0x1f)])) -
                             DAT_00baa2d0) * DAT_00baab30) / DAT_00baa854) * DAT_00baa088);
      iVar20 = FUN_006eef60();
      local_80 = (float **)
                 ((float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) *
                  DAT_00ba9ff4 * DAT_00baa784 + DAT_00baa854);
      fVar24 = (float)local_88;
      FUN_0041d540();
      local_a4 = (float **)(fVar24 * (float)local_80);
      fVar24 = (float)local_88;
      FUN_0041d520();
      local_a0 = (float **)(fVar24 * (float)local_80 * DAT_00baa3c4);
      uVar13 = FUN_006eef60();
      piVar14 = (int *)HELPER_Entity_SpawnRelay(1000,0x3b,local_98,&local_a4,0,0,uVar13);
      uVar16 = FUN_006eef60();
      local_88 = DAT_00baad50;
      if ((uVar16 & 1) != 0) {
        local_88 = DAT_00baa454;
      }
      iVar20 = FUN_006eef60();
      piVar14[0x11d] =
           (int)(((float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) *
                  DAT_00ba9ff4 * DAT_00baa81c + DAT_00baa630) * (float)local_88);
      iVar20 = FUN_006eef60();
      fVar22 = (float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa304 + (float)DAT_00baa454;
      fVar24 = fVar22 * DAT_00c3793c;
      piVar14[0x3a] = (int)(fVar22 * DAT_00c37940);
      piVar14[0x39] = (int)fVar24;
      uVar16 = FUN_006eef60();
      iVar20 = uVar16 % 0x28 + 0x28;
      piVar14[0x117] = iVar20;
      piVar14[0x118] = iVar20;
      FUN_00682ed0();
      local_7c = _DAT_00babde0;
      pfStack_78 = _UNK_00babde4;
      pfStack_74 = _UNK_00babde8;
      pfStack_70 = _UNK_00babdec;
      (**(code **)(*piVar14 + 0x3c))(&local_7c,0xffffffff,0xff,0,1);
      uVar10 = uVar10 + 1;
    } while (uVar10 < 0xf);
    uVar13 = FUN_006eef60();
    ppfVar23 = local_a8;
    piVar14 = (int *)HELPER_Entity_SpawnRelay(1000,0x10,local_98,&DAT_00c7b640,local_a8,1,uVar13);
    fVar24 = DAT_00c37940 * DAT_00baa630;
    piVar14[0x39] = (int)(DAT_00c3793c * DAT_00baa630);
    piVar14[0x3a] = (int)fVar24;
    bVar8 = FUN_006eef60();
    *(byte *)(piVar14 + 0x52) = ~bVar8 & 1;
    (**(code **)(*piVar14 + 0xc))();
    pfVar19 = *(float **)((int)local_9c + 0x18300);
    iVar18 = (int)(((float)*local_98 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
    iVar20 = (int)(((float)local_98[1] - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
    if ((((iVar18 < 0) || ((int)pfVar19[3] <= iVar18)) || (iVar20 < 0)) ||
       ((int)pfVar19[4] <= iVar20)) {
      local_84 = (float *)0xffffffff;
    }
    else {
      local_84 = (float *)((int)pfVar19[3] * iVar20 + iVar18);
    }
    local_94 = pfVar19;
    cVar9 = FUN_00822820(local_84,0);
    if ((cVar9 != '\0') &&
       (((local_90 = (float **)FUN_006eef60(), -1 < (int)local_84 && ((int)local_84 < 0x1c0)) ||
        ((FUN_00a112c0(0x10,"SpawnGridEntity: Grid index invalid\n"), -1 < (int)local_84 &&
         ((int)local_84 < 0x1c0)))))) {
      if (((int)pfVar19[(int)local_84 + 0x1db] < 0x385) &&
         (local_88 = (float *)FUN_0070b2e0(), local_88 != (float *)0x0)) {
        if ((undefined4 *)pfVar19[(int)local_84 + 9] != (undefined4 *)0x0) {
          (***(code ***)(undefined4 *)pfVar19[(int)local_84 + 9])(1);
        }
        pfVar19[(int)local_84 + 9] = (float)local_88;
        local_88[5] = (float)local_90;
        local_88[2] = 0.0;
        local_88[6] = 0.0;
        local_88[0xf] = 0.0;
        (**(code **)((int)*local_88 + 0x20))();
        iVar20 = DAT_00c71678;
        local_88[4] = (float)((int)local_88[4] + 1);
        *(undefined *)(local_88 + 7) = 1;
        local_88[10] = *(float *)(iVar20 + 0x264f8);
      }
      piVar14 = (int *)pfVar19[(int)local_84 + 9];
      if ((piVar14 != (int *)0x0) && (piVar14[1] == 7)) {
        (**(code **)(*piVar14 + 4))();
      }
    }
    local_b4 = (float)((int)local_84 / (int)pfVar19[3]);
    local_e0 = (int)local_84 % (int)pfVar19[3];
    local_8c = (float **)0x1;
    do {
      local_90 = (float **)&DAT_00000004;
      local_ac = (float **)0xffffffff;
      local_cc = (float **)0x0;
      do {
        local_c0 = (int)local_ac * (int)local_8c + local_e0;
        local_c4 = (undefined *)((int)local_cc * (int)local_8c + (int)local_b4);
        local_c8 = local_8c;
        local_a0 = local_cc;
        do {
          if ((((local_c0 < 0) || ((int)local_94[3] <= local_c0)) || ((int)local_c4 < 0)) ||
             ((int)local_94[4] <= (int)local_c4)) {
            uVar10 = 0xffffffff;
          }
          else {
            uVar10 = (int)local_94[3] * (int)local_c4 + local_c0;
          }
          cVar9 = FUN_00822820(uVar10,0);
          if (cVar9 != '\0') {
            if (((uVar10 < 0x1c0) && (piVar14 = (int *)local_94[uVar10 + 9], piVar14 != (int *)0x0))
               && (piVar14[0xf] != 0)) {
              local_b0 = *(code **)(*piVar14 + 0x14);
              if (ppfVar23 == (float **)0x0) {
                pfStack_4c = (float *)0x0;
                pfStack_48 = (float *)0x0;
                pfStack_44 = (float *)0x0;
                auVar4._4_4_ = DAT_00c7b644;
                auVar4._0_4_ = DAT_00c7b640;
                auVar4._8_4_ = DAT_00c7b640;
                auVar4._12_4_ = 0;
                _local_40 = auVar4 << 0x20;
                local_30 = DAT_00c7b644;
LAB_00702995:
                local_9c = 0.0;
                if (ppfVar23 != (float **)0x0) goto LAB_007029a3;
                local_9c = 0.0;
LAB_007029c6:
                local_88 = (float *)0x0;
                if (ppfVar23 != (float **)0x0) goto LAB_007029d1;
LAB_007029ea:
                uVar16 = 0;
              }
              else {
                pfStack_4c = ppfVar23[10];
                pfStack_48 = ppfVar23[0xb];
                pfStack_44 = ppfVar23[0xd];
                local_40._4_4_ = ppfVar23[0xcf];
                local_40._0_4_ = ppfVar23[0xe];
                uStack_38 = ppfVar23[0xd0];
                local_30 = ppfVar23[0xd9];
                uStack_34 = ppfVar23[0xd8];
                if (((uint)ppfVar23[0x5a] & 0x100) == 0) goto LAB_00702995;
                local_9c = 1.401298e-45;
LAB_007029a3:
                if (((uint)ppfVar23[0x5a] & 0x20000000) == 0) goto LAB_007029c6;
                local_88 = (float *)0x2;
LAB_007029d1:
                if (((uint)ppfVar23[0x5b] & 0x400000) == 0) goto LAB_007029ea;
                uVar16 = 4;
              }
              local_2c = uVar16 | (uint)local_88 | (uint)local_9c;
              local_28 = ppfVar23;
              (*local_b0)(1,&pfStack_4c);
            }
            local_b0 = (code *)FUN_006eef60();
            if (((-1 < (int)uVar10) && ((int)uVar10 < 0x1c0)) ||
               ((FUN_00a112c0(0x10,"SpawnGridEntity: Grid index invalid\n"), -1 < (int)uVar10 &&
                ((int)uVar10 < 0x1c0)))) {
              if (((int)local_94[uVar10 + 0x1db] < 0x385) &&
                 (local_88 = (float *)FUN_0070b2e0(), local_88 != (float *)0x0)) {
                if ((undefined4 *)local_94[uVar10 + 9] != (undefined4 *)0x0) {
                  (***(code ***)(undefined4 *)local_94[uVar10 + 9])(1);
                }
                local_94[uVar10 + 9] = (float)local_88;
                local_88[5] = (float)local_b0;
                local_88[2] = 0.0;
                local_88[6] = 0.0;
                local_88[0xf] = 0.0;
                (**(code **)((int)*local_88 + 0x20))();
                iVar20 = DAT_00c71678;
                local_88[4] = (float)((int)local_88[4] + 1);
                *(undefined *)(local_88 + 7) = 1;
                local_88[10] = *(float *)(iVar20 + 0x264f8);
              }
              piVar14 = (int *)local_94[uVar10 + 9];
              if ((piVar14 != (int *)0x0) && (piVar14[1] == 7)) {
                (**(code **)(*piVar14 + 4))();
                local_bc = (float)((int)uVar10 % (int)local_94[3]) * DAT_00baa904 + DAT_00baa904;
                local_b0 = (code *)((float)((int)uVar10 / (int)local_94[3]) * DAT_00baa904 +
                                   DAT_00baaa00);
                local_9c = local_bc - (float)*local_98;
                local_80 = (float **)((float)local_b0 - (float)local_98[1]);
                fVar24 = local_9c * local_9c + (float)local_80 * (float)local_80;
                FUN_00435a50();
                if (0.0 < fVar24) {
                  local_9c = local_9c * ((float)DAT_00baa454 / fVar24);
                  local_80 = (float **)((float)local_80 * ((float)DAT_00baa454 / fVar24));
                }
                iVar20 = 5;
                do {
                  uVar13 = FUN_006eef60();
                  iVar18 = FUN_006eef60();
                  local_88 = (float *)(((float)((double)iVar18 +
                                               (double)(&DAT_00bacb00)[-(iVar18 >> 0x1f)]) *
                                        DAT_00ba9ff4 * DAT_00baa950 - DAT_00baa8d0) * DAT_00baa088);
                  fVar24 = (float)local_88;
                  FUN_0041d540();
                  local_84 = (float *)fVar24;
                  FUN_0041d520();
                  iVar18 = FUN_006eef60();
                  local_ec = (float)((double)iVar18 + (double)(&DAT_00bacb00)[-(iVar18 >> 0x1f)]) *
                             DAT_00ba9ff4 * DAT_00baa7a4 + DAT_00baa7a4;
                  local_f0 = ((float)local_84 * local_9c - (float)local_88 * (float)local_80) *
                             local_ec;
                  local_ec = ((float)local_88 * local_9c + (float)local_84 * (float)local_80) *
                             local_ec;
                  iVar18 = FUN_006eef60();
                  fVar24 = (float)((double)iVar18 + (double)(&DAT_00bacb00)[-(iVar18 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa704;
                  local_88 = (float *)(fVar24 + fVar24);
                  iVar18 = FUN_006eef60();
                  local_84 = (float *)((float)((double)iVar18 +
                                              (double)(&DAT_00bacb00)[-(iVar18 >> 0x1f)]) *
                                       DAT_00ba9ff4 * DAT_00baa87c);
                  pfVar19 = local_88;
                  FUN_0041d540();
                  local_dc = (float)pfVar19 * (float)local_84 + local_bc;
                  pfVar19 = local_88;
                  FUN_0041d520();
                  local_d8 = (float)pfVar19 * (float)local_84 + (float)local_b0;
                  iVar18 = HELPER_Entity_SpawnRelay(1000,4,&local_dc,&local_f0,0,0x20000,uVar13);
                  iVar17 = FUN_006eef60();
                  ppfVar23 = local_a8;
                  *(float *)(iVar18 + 0x414) =
                       DAT_00baada0 -
                       (float)((double)iVar17 + (double)(&DAT_00bacb00)[-(iVar17 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa87c;
                  iVar20 = iVar20 + -1;
                } while (iVar20 != 0);
                local_84 = (float *)0x2;
                do {
                  iVar20 = FUN_006eef60();
                  fVar24 = (float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa704;
                  local_88 = (float *)(fVar24 + fVar24);
                  iVar20 = FUN_006eef60();
                  local_80 = (float **)
                             ((float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) *
                             DAT_00ba9ff4);
                  fVar24 = (float)local_88;
                  FUN_0041d540();
                  local_e8 = fVar24 * (float)local_80 * DAT_00baa8a0 + local_bc;
                  local_9c = local_e8;
                  fVar24 = (float)local_88;
                  FUN_0041d520();
                  local_9c = local_9c - (float)*local_98;
                  local_e4 = fVar24 * (float)local_80 * DAT_00baa8a0 + (float)local_b0;
                  local_80 = (float **)(local_e4 - (float)local_98[1]);
                  iVar20 = FUN_006eef60();
                  local_88 = (float *)((float)((double)iVar20 +
                                              (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) *
                                       DAT_00ba9ff4 * DAT_00baa6fc + DAT_00baa834);
                  fVar24 = local_9c * local_9c + (float)local_80 * (float)local_80;
                  FUN_00435a50();
                  if (fVar24 <= 0.0) {
                    local_d4 = local_9c;
                    local_d0 = local_80;
                  }
                  else {
                    local_d4 = local_9c * ((float)local_88 / fVar24);
                    local_d0 = (float **)((float)local_80 * ((float)local_88 / fVar24));
                  }
                  if ((ppfVar23 == (float **)0x0) ||
                     ((ppfVar23[10] != (float *)0x1 && (ppfVar23[0xd] != (float *)0x1)))) {
                    uVar13 = FUN_006eef60();
                    piVar14 = (int *)HELPER_Entity_SpawnRelay
                                               (9,9,&local_e8,&local_d4,ppfVar23[0xf2],0,uVar13);
                    iVar20 = FUN_006eef60();
                    piVar14[0x108] =
                         (int)((float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)])
                               * DAT_00ba9ff4 * DAT_00baa120 + DAT_00baa354);
                  }
                  else {
                    uVar13 = FUN_006eef60();
                    piVar14 = (int *)HELPER_Entity_SpawnRelay
                                               (2,0x2a,&local_e8,&local_d4,ppfVar23[0xf2],0,uVar13);
                    iVar20 = FUN_006eef60();
                    fVar24 = (float)((double)iVar20 + (double)(&DAT_00bacb00)[-(iVar20 >> 0x1f)]) *
                             DAT_00ba9ff4 * DAT_00baa120 + DAT_00baa354;
                    if (fVar24 <= DAT_00baa06c) {
                      fVar24 = DAT_00baa06c;
                    }
                    piVar14[0x109] = (int)fVar24;
                    piVar14[0x108] = (int)fVar24;
                    FUN_00677780();
                    (**(code **)(*piVar14 + 0x40))(0x41700000);
                  }
                  (**(code **)(*piVar14 + 0xc))();
                  local_84 = (float *)((int)local_84 + -1);
                } while (local_84 != (float *)0x0);
              }
            }
          }
          ppfVar11 = local_ac;
          local_c0 = local_c0 - (int)((int)local_cc + (int)local_ac);
          local_c4 = (undefined *)((int)local_ac + ((int)local_c4 - (int)local_cc));
          local_c8 = (float **)((int)local_c8 + -1);
        } while (local_c8 != (float **)0x0);
        local_cc = local_ac;
        local_ac = (float **)-(int)local_a0;
        local_90 = (float **)((int)local_90 + -1);
      } while (local_90 != (float **)0x0);
      local_8c = (float **)((int)local_8c + 1);
    } while ((int)local_8c < 3);
    uVar13 = FUN_006eef60();
    iVar20 = HELPER_Entity_SpawnRelay(1000,0x77,&DAT_00c7b640,&DAT_00c7b640,0,0,uVar13);
    *(code **)(iVar20 + 0x420) = FUN_00703140;
    *(undefined4 *)(iVar20 + 0x424) = 0x1e;
    *(undefined4 *)(iVar20 + 0x428) = 0;
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

