/* Local J460 decompiler output.
 * VA: 0x00971810
 * Entry: 00971810
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Active laser damage dispatch; hit list consumption
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Active laser damage dispatch; hit
   list consumption */

void __fastcall HELPER_Laser_ApplyDamage(int param_1)

{
  float fVar1;
  char cVar2;
  uint *puVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  int extraout_ECX;
  float extraout_ECX_00;
  float extraout_ECX_01;
  uint uVar7;
  float *extraout_EDX;
  float *extraout_EDX_00;
  float *extraout_EDX_01;
  int extraout_EDX_02;
  float **ppfVar8;
  float **ppfVar9;
  bool bVar10;
  float fVar11;
  undefined in_XMM0 [16];
  float *in_XMM1_Da;
  int *piVar12;
  float *pfVar13;
  float *pfVar14;
  float fVar15;
  float *pfVar16;
  float *pfVar17;
  float fVar18;
  undefined4 uVar19;
  TypeDescriptor *pTVar20;
  TypeDescriptor *pTVar21;
  undefined4 uVar22;
  undefined local_270 [256];
  undefined4 local_170;
  undefined4 uStack_16c;
  undefined4 uStack_168;
  undefined4 uStack_164;
  float local_160;
  float local_15c;
  float local_158;
  float local_154;
  float local_150;
  float local_14c;
  float local_148;
  float local_144;
  float *local_140;
  undefined4 local_13c;
  float local_138;
  undefined4 uStack_134;
  undefined4 uStack_130;
  undefined4 uStack_12c;
  undefined4 local_128;
  undefined4 uStack_124;
  undefined4 uStack_120;
  undefined4 uStack_11c;
  undefined8 local_118;
  undefined4 local_110;
  float local_104;
  float local_100;
  float local_fc;
  float local_f8;
  float *local_f4;
  float *local_f0;
  float *local_ec;
  float *local_e8;
  float *local_e4;
  float local_e0;
  float local_dc;
  float local_d8;
  int *local_d4;
  float **local_d0;
  float **local_cc;
  float **local_c8;
  float **local_c4;
  int local_c0;
  float local_bc;
  float local_b8;
  char local_b1;
  float *local_b0;
  float *local_ac;
  float local_a8;
  float *local_a4;
  int *local_a0;
  float *local_9c;
  float *local_98;
  float *local_94;
  float *local_90;
  int local_8c;
  float *local_88;
  float local_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 local_74;
  undefined4 uStack_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined8 local_64;
  undefined4 local_5c;
  float local_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined8 local_38;
  undefined4 local_30;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00b0caa0;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_8c = param_1;
  if (*(char *)(param_1 + 0x45d) == '\0') {
    local_ac = (float *)(*(float *)(param_1 + 0x41c) * DAT_00baa088);
    local_9c = local_ac;
    FUN_0041d540(local_24);
    local_90 = local_ac;
    FUN_0041d520();
    local_a0 = (int *)0x0;
    local_a8 = *(float *)(DAT_00c71678 + 0x18300);
    if (*(int *)((int)local_a8 + 0x1264) != 0) {
      do {
        iVar4 = *(int *)(*(int *)((int)local_a8 + 0x125c) + (int)local_a0 * 4);
        cVar2 = HELPER_Laser_CanDamageEntity(iVar4);
        if (cVar2 != '\0') {
          fVar15 = *(float *)(iVar4 + 0x33c) - *(float *)(param_1 + 0x33c);
          fVar11 = *(float *)(iVar4 + 0x340) - *(float *)(param_1 + 0x340);
          fVar18 = *(float *)(iVar4 + 0x370) + *(float *)(param_1 + 0x370);
          local_88 = (float *)((float)local_90 * fVar11 + (float)local_9c * fVar15);
          local_ac = (float *)((uint)((float)local_90 * fVar15 - (float)local_9c * fVar11) &
                              DAT_00bacb40);
          if (*(int *)(param_1 + 0x2c) == 4) {
            fVar18 = fVar11 * fVar11 + fVar15 * fVar15;
            FUN_00435a50();
            fVar18 = fVar18 * DAT_00baa120;
          }
          if ((((float)local_ac < fVar18) && (0.0 < (float)local_88)) &&
             ((float)local_88 <
              (float)(*(uint *)(param_1 + 0x350) & DAT_00bacb40) + *(float *)(param_1 + 0x460))) {
            HELPER_Laser_DoDamage(iVar4);
            pfVar16 = local_90;
            pfVar14 = local_9c;
            if ((*(uint *)(iVar4 + 0x168) & 0x4000000) == 0) {
              iVar6 = *(int *)(iVar4 + 0x28);
              if ((iVar6 == 1) && (*(int *)(param_1 + 0x3c8) != 0)) {
                if ((*(uint *)(*(int *)(param_1 + 0x3c8) + 0x168) & 0x20000000) != 0)
                goto LAB_00973251;
                iVar6 = 1;
              }
LAB_009736b9:
              fVar18 = *(float *)(iVar4 + 0x37c);
              fVar11 = 0.0;
              pfVar17 = local_90;
              pfVar13 = local_9c;
              if (0.0 < fVar18) {
                pfVar13 = (float *)((float)local_9c / fVar18);
                pfVar17 = (float *)((float)local_90 / fVar18);
              }
              fVar18 = *(float *)(param_1 + 0x37c) * _DAT_00baa5b8;
              fVar15 = fVar18 * (float)pfVar17;
              fVar18 = fVar18 * (float)pfVar13;
              if ((iVar6 == 1) || (iVar6 == 3)) {
                fVar18 = fVar18 * DAT_00baa198;
                fVar15 = fVar15 * DAT_00baa198;
              }
              puVar3 = (uint *)FUN_00417170(&DAT_00c34ae0);
              if (((*puVar3 | puVar3[1]) != 0) || ((puVar3[2] | puVar3[3]) != 0)) {
                fVar18 = fVar18 + fVar18;
                fVar15 = fVar15 + fVar15;
              }
              fVar1 = *(float *)(iVar4 + 0x36c);
              if ((NAN(fVar1) || NAN(fVar11)) == (fVar1 == fVar11)) {
                *(float *)(iVar4 + 0x360) =
                     (fVar18 * *(float *)(iVar4 + 0x39c)) / fVar1 + *(float *)(iVar4 + 0x360);
                *(float *)(iVar4 + 0x364) =
                     (fVar15 * *(float *)(iVar4 + 0x39c)) / fVar1 + *(float *)(iVar4 + 0x364);
              }
            }
            else if (((*(int *)(iVar4 + 0x28) == 4) && (*(int *)(param_1 + 0x3c8) != 0)) &&
                    (iVar6 = 4, *(int *)(*(int *)(param_1 + 0x3c8) + 0x28) == 1)) goto LAB_009736b9;
LAB_00973251:
            cVar2 = HELPER_Laser_BrimstonePredicate();
            if (cVar2 != '\0') {
              fVar18 = (float)local_88 * (float)pfVar14;
              local_88 = (float *)((float)local_88 * (float)pfVar16 + *(float *)(param_1 + 0x340));
              local_e0 = (float)((uint)pfVar14 ^ DAT_00bacb70);
              local_d4 = (int *)(fVar18 + *(float *)(param_1 + 0x33c));
              fVar18 = *(float *)(param_1 + 0x370);
              local_bc = (*(float *)(iVar4 + 0x340) - (float)local_88) * (float)pfVar16 +
                         (*(float *)(iVar4 + 0x33c) - (float)local_d4) * (float)pfVar14;
              local_b8 = local_bc + *(float *)(iVar4 + 0x370);
              local_bc = local_bc - *(float *)(iVar4 + 0x370);
              if (local_bc <= (float)((uint)fVar18 ^ DAT_00bacb70)) {
                local_bc = (float)((uint)fVar18 ^ DAT_00bacb70);
              }
              if (fVar18 <= local_b8) {
                local_b8 = fVar18;
              }
              if (local_bc + DAT_00baa630 < local_b8) {
                iVar4 = FUN_0040a220(0);
                iVar6 = FUN_0040b220(0);
                local_138 = *(float *)(param_1 + 0xf0);
                uStack_134 = *(undefined4 *)(param_1 + 0xf4);
                uStack_130 = *(undefined4 *)(param_1 + 0xf8);
                uStack_12c = *(undefined4 *)(param_1 + 0xfc);
                local_110 = *(undefined4 *)(param_1 + 0x118);
                local_128 = *(undefined4 *)(param_1 + 0x100);
                uStack_124 = *(undefined4 *)(param_1 + 0x104);
                uStack_120 = *(undefined4 *)(param_1 + 0x108);
                uStack_11c = *(undefined4 *)(param_1 + 0x10c);
                local_118 = *(undefined8 *)(param_1 + 0x110);
                FUN_006831c0(iVar6 + 0x48);
                local_58 = local_138;
                uStack_54 = uStack_134;
                uStack_50 = uStack_130;
                uStack_4c = uStack_12c;
                local_30 = local_110;
                local_48 = local_128;
                uStack_44 = uStack_124;
                uStack_40 = uStack_120;
                uStack_3c = uStack_11c;
                local_38 = local_118;
                FUN_006831c0(iVar4 + 0x30);
                local_5c = local_30;
                local_84 = local_58;
                uStack_80 = uStack_54;
                uStack_7c = uStack_50;
                uStack_78 = uStack_4c;
                local_74 = local_48;
                uStack_70 = uStack_44;
                uStack_6c = uStack_40;
                uStack_68 = uStack_3c;
                local_64 = local_38;
                local_d8 = *(float *)(param_1 + 0x350);
                uVar7 = FUN_006eef60();
                pfVar16 = (float *)(uVar7 & 3);
                local_ac = pfVar16;
                if (pfVar16 != (float *)0x0) {
                  local_b8 = local_b8 - local_bc;
                  local_a4 = (float *)((float)local_9c * DAT_00baa6fc);
                  local_dc = (float)local_90 * DAT_00baa6fc;
                  do {
                    uVar5 = FUN_006eef60();
                    iVar4 = FUN_006eef60();
                    local_d0 = (float **)
                               ((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                                DAT_00ba9ff4 * DAT_00baa7a4 + DAT_00baa75c);
                    iVar4 = FUN_006eef60();
                    fVar18 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                             DAT_00ba9ff4 * DAT_00baa704;
                    local_ac = (float *)(fVar18 + fVar18);
                    fVar18 = (float)local_ac;
                    FUN_0041d540();
                    local_104 = fVar18 + (float)local_d0 * (float)local_9c;
                    fVar18 = (float)local_ac;
                    FUN_0041d520();
                    local_100 = fVar18 + (float)local_d0 * (float)local_90;
                    iVar4 = FUN_006eef60();
                    local_ac = (float *)(local_b8 *
                                         (float)((double)iVar4 +
                                                (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                                         DAT_00ba9ff4 + local_bc);
                    iVar4 = FUN_006eef60();
                    fVar18 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                             DAT_00ba9ff4;
                    local_fc = (float)local_ac * (float)local_90 + (float)local_d4 +
                               (float)local_a4 * fVar18;
                    local_f8 = (float)local_ac * local_e0 + (float)local_88 + local_dc * fVar18;
                    piVar12 = (int *)HELPER_Entity_SpawnRelay
                                               (1000,99,&local_fc,&local_104,0,1,uVar5);
                    piVar12[0x39] = (int)((float)piVar12[0x39] + (float)piVar12[0x39]);
                    piVar12[0x3a] = (int)((float)piVar12[0x3a] + (float)piVar12[0x3a]);
                    (**(code **)(*piVar12 + 0x3c))(&local_84,0xffffffff,0xff,0,1);
                    piVar12[0xd3] = 0;
                    piVar12[0xd4] = (int)local_d8;
                    (**(code **)(*piVar12 + 0xc))();
                    pfVar16 = (float *)((int)pfVar16 + -1);
                    param_1 = local_8c;
                  } while (pfVar16 != (float *)0x0);
                }
              }
            }
          }
        }
        local_a0 = (int *)((int)local_a0 + 1);
      } while (local_a0 < *(int **)((int)local_a8 + 0x1264));
    }
  }
  else {
    local_cc = (float **)0x0;
    local_c8 = (float **)0x0;
    local_c4 = (float **)0x0;
    local_14 = 0;
    local_e4 = in_XMM1_Da;
    puStack_20 = &stack0xfffffffc;
    FUN_0042c880(10);
    local_c0 = param_1 + 0x428;
    puVar3 = (uint *)FUN_00417170(&DAT_00c34c60);
    if (((*puVar3 | puVar3[1]) != 0) || (local_b1 = '\0', (puVar3[2] | puVar3[3]) != 0)) {
      local_b1 = '\x01';
    }
    local_b0 = (float *)0x0;
    local_a0 = *(int **)(DAT_00c71678 + 0x18300);
    ppfVar8 = local_c8;
    if (local_a0[0x499] != 0) {
      do {
        local_98 = *(float **)(local_a0[0x497] + (int)local_b0 * 4);
        local_90 = local_98;
        if (((local_98[10] == 1.401298e-42) &&
            ((((fVar18 = local_98[0xb], fVar18 == 2.942727e-44 || (fVar18 == 4.624285e-44)) ||
              (fVar18 == 8.82818e-44)) || ((fVar18 == 8.96831e-44 || (fVar18 == 2.228065e-43))))))
           || (cVar2 = HELPER_Laser_CanDamageEntity(local_98), cVar2 != '\0')) {
joined_r0x00971bfa:
          if (ppfVar8 == local_c4) {
LAB_0097195e:
            FUN_0042c920(ppfVar8,&local_90);
            local_98 = local_90;
            ppfVar8 = local_c8;
          }
          else {
            *ppfVar8 = local_98;
            ppfVar8 = ppfVar8 + 1;
            local_c8 = ppfVar8;
          }
        }
        else {
          fVar18 = local_98[10];
          if (fVar18 == 5.605194e-45) {
            iVar4 = *(int *)(param_1 + 0x3bc);
            if (iVar4 == 0) {
LAB_00971b64:
              if ((*(int *)(param_1 + 0x34) != 1) && (*(int *)(param_1 + 0x34) != 3)) {
                fVar18 = local_98[10];
                goto LAB_00971b90;
              }
            }
            else {
              iVar6 = *(int *)(iVar4 + 0x28);
              if (iVar6 == 2) {
                if (*(int *)(iVar4 + 0x34) == 1) goto LAB_00971b71;
                goto LAB_00971b64;
              }
              if (iVar6 == 1000) {
                if (*(int *)(iVar4 + 0x34) != 1) goto LAB_00971b64;
              }
              else if ((iVar6 != 1) && (iVar6 != 3)) goto LAB_00971b64;
            }
LAB_00971b71:
            if (ppfVar8 == local_c4) goto LAB_0097195e;
            *ppfVar8 = local_98;
            ppfVar8 = ppfVar8 + 1;
            local_c8 = ppfVar8;
          }
          else {
LAB_00971b90:
            if ((((local_b1 != '\0') && (fVar18 == 1.261169e-44)) &&
                (((uint)local_98[0x10e] & 0x80000000) == 0)) &&
               (((((iVar4 = *(int *)(param_1 + 0x30), iVar4 == 1 || (iVar4 == 2)) || (iVar4 == 3))
                 && (uVar7 = FUN_006eef60(), uVar7 % 0x32 == 0)) ||
                (uVar7 = FUN_006eef60(), uVar7 % 5 == 0)))) goto joined_r0x00971bfa;
          }
        }
        puVar3 = (uint *)FUN_00417170(&DAT_00c34b20);
        if (((((*puVar3 | puVar3[1]) != 0) || ((puVar3[2] | puVar3[3]) != 0)) &&
            ((cVar2 = HELPER_Entity_DamageFilter(0), cVar2 != '\0' || (local_98[10] == 7.006492e-45)
             ))) && (((pfVar16 = local_98, local_98 == (float *)0x0 ||
                      (local_98[10] != 7.006492e-45)) ||
                     ((local_98[0x14d] == 0.0 &&
                      ((cVar2 = FUN_006ee340(), pfVar16 = extraout_EDX, cVar2 == '\0' ||
                       (extraout_EDX[0xc] != 0.0)))))))) {
          local_bc = (float)((*(int *)(param_1 + 0x484) - *(int *)(param_1 + 0x480) >> 3) + -1);
          local_b8 = DAT_00baaca4;
          local_88 = DAT_00c7b640;
          local_94 = DAT_00c7b644;
          local_a8 = 0.0;
          if (local_bc != 0.0) {
            local_e8 = (float *)pfVar16[0xd0];
            local_ec = (float *)pfVar16[0xcf];
            local_9c = (float *)(*(int *)(param_1 + 0x480) + 8);
            do {
              fVar18 = in_XMM0._0_4_;
              FUN_0099c340(local_9c,&local_d0);
              in_XMM0 = ZEXT416((uint)DAT_00baac5c);
              if ((fVar18 < DAT_00baac5c) && (in_XMM0 = ZEXT416((uint)local_b8), fVar18 < local_b8))
              {
                local_88 = (float *)(((*local_9c - *extraout_EDX_00) * (float)local_d0 +
                                     *extraout_EDX_00) - local_98[0xcf]);
                local_94 = (float *)(((local_9c[1] - local_9c[-1]) * (float)local_d0 + local_9c[-1])
                                    - local_98[0xd0]);
                local_b8 = fVar18;
              }
              if (((NAN((float)local_88) || NAN((float)DAT_00c7b640)) ==
                   ((float)local_88 == (float)DAT_00c7b640)) ||
                 ((NAN((float)local_94) || NAN((float)DAT_00c7b644)) ==
                  ((float)local_94 == (float)DAT_00c7b644))) {
                fVar18 = (float)local_94 * (float)local_94 + (float)local_88 * (float)local_88;
                FUN_00435a50();
                pfVar16 = local_88;
                pfVar14 = local_94;
                if (0.0 < fVar18) {
                  pfVar16 = (float *)((float)local_88 * (DAT_00baa454 / fVar18));
                  pfVar14 = (float *)((float)local_94 * (DAT_00baa454 / fVar18));
                }
                in_XMM0._0_12_ = ZEXT812(0);
                in_XMM0._12_4_ = 0;
                if (((1 < *(int *)(DAT_00c71678 + 0x26614)) && (local_98[10] == 1.401298e-45)) ||
                   ((fVar11 = DAT_00baa81c, 9 < (int)local_98[10] && ((int)local_98[10] < 1000)))) {
                  fVar11 = DAT_00baa904;
                }
                if (DAT_00baa81c <= fVar18) {
                  fVar15 = ((float)pfVar16 * fVar11) / fVar18;
                  fVar18 = ((float)pfVar14 * fVar11) / fVar18;
                }
                else {
                  fVar15 = (float)pfVar16 * fVar11 * (fVar18 / DAT_00baa9d0);
                  fVar18 = (float)pfVar14 * fVar11 * (fVar18 / DAT_00baa9d0);
                }
                fVar11 = local_98[0xdb];
                if (NAN(fVar11) == (fVar11 == 0.0)) {
                  fVar1 = local_98[0xe7];
                  in_XMM0 = ZEXT416((uint)fVar1);
                  local_98[0xd9] = (fVar18 * fVar1) / fVar11 + local_98[0xd9];
                  local_98[0xd8] = (fVar15 * fVar1) / fVar11 + local_98[0xd8];
                }
                break;
              }
              local_9c = local_9c + 2;
              local_a8 = (float)((int)local_a8 + 1);
            } while ((uint)local_a8 < (uint)local_bc);
          }
        }
        local_b0 = (float *)((int)local_b0 + 1);
      } while (local_b0 < (float *)local_a0[0x499]);
    }
    local_d0 = local_cc;
    if (local_cc != ppfVar8) {
      fVar18 = 0.0;
      iVar4 = local_8c;
      ppfVar9 = local_cc;
      do {
        local_88 = *(float **)(iVar4 + 0x480);
        local_bc = (float)(*(int *)(iVar4 + 0x484) - (int)local_88 >> 3);
        local_9c = (float *)0x0;
        local_a4 = (float *)((int)local_bc + -1);
        local_a8 = fVar18;
        if (local_a4 != (float *)0x0) {
          local_94 = *ppfVar9;
          local_160 = local_94[0xcf];
          local_15c = local_94[0xd0];
          local_e0 = local_94[0xdc] + *(float *)(iVar4 + 0x370);
          local_d0 = ppfVar9;
LAB_00971e12:
          local_ec = (float *)local_88[(int)local_9c * 2 + 2];
          local_e8 = (float *)local_88[(int)local_9c * 2 + 3];
          local_98 = local_e8;
          local_90 = local_ec;
          pfVar16 = local_e8;
          cVar2 = FUN_00435f50();
          if ((((cVar2 == '\0') && (local_9c == (float *)((int)local_bc + -2))) &&
              (*(char *)(local_8c + 0x516) == '\0')) &&
             (pfVar16 = (float *)0x0, *(float *)(local_8c + 0x4d0) <= 0.0)) {
            local_a0 = (int *)((float)local_98 - (local_88 + (int)local_9c * 2)[1]);
            local_b0 = (float *)((float)local_90 - local_88[(int)local_9c * 2]);
            fVar18 = (float)local_a0 * (float)local_a0 + (float)local_b0 * (float)local_b0;
            FUN_00435a50();
            piVar12 = local_a0;
            local_ec = local_b0;
            if (DAT_00ba9fe4 < fVar18) {
              piVar12 = (int *)((DAT_00baa904 / fVar18) * (float)local_a0);
              local_ec = (float *)((DAT_00baa904 / fVar18) * (float)local_b0);
            }
            local_ec = (float *)((float)local_ec + (float)local_90);
            local_e8 = (float *)((float)piVar12 + (float)local_98);
            local_98 = local_e8;
            local_90 = local_ec;
            pfVar16 = local_e8;
          }
          FUN_0099c340(&local_ec,&local_b8);
          local_b0 = pfVar16;
          piVar12 = (int *)(((float)local_98 - extraout_EDX_01[1]) *
                            ((float)local_98 - extraout_EDX_01[1]) +
                           ((float)local_90 - *extraout_EDX_01) *
                           ((float)local_90 - *extraout_EDX_01));
          FUN_00435a50();
          local_a0 = piVar12;
          pfVar16 = local_b0;
          if ((local_9c == (float *)0x0) &&
             (cVar2 = HELPER_Laser_BrimstonePredicate(), pfVar16 = local_b0, cVar2 != '\0')) {
            local_d8 = *(float *)(extraout_ECX + 0x41c) * DAT_00baa088;
            fVar18 = local_d8;
            FUN_0041d540();
            local_dc = local_94[0xcf] - (*local_88 - fVar18 * DAT_00baa85c);
            fVar18 = local_d8;
            FUN_0041d520();
            fVar18 = local_94[0xd0] - (local_88[1] - fVar18 * DAT_00baa85c);
            pfVar14 = (float *)(fVar18 * fVar18 + local_dc * local_dc);
            pfVar16 = local_b0;
            if ((float)pfVar14 < (float)local_b0) {
              local_b8 = 0.0;
              pfVar16 = pfVar14;
            }
          }
          fVar18 = 0.0;
          if (local_e0 * local_e0 <= (float)pfVar16) goto code_r0x0097207c;
          if (local_94[10] == 1.261169e-44) {
            local_94[0x10e] = 0.0;
            local_94[0x10f] = 0.0;
            *(undefined *)((int)local_94 + 0x173) = 1;
            goto LAB_00973070;
          }
          if (local_94[10] == 1.401298e-42) {
            *(undefined *)((int)local_94 + 0x173) = 1;
            goto LAB_00973070;
          }
          local_a4 = (float *)(local_94[0xdc] * local_94[0xdc]);
          FUN_00435a50();
          fVar18 = (float)pfVar16 - *(float *)(local_8c + 0x370);
          fVar18 = fVar18 * fVar18;
          if ((float)local_a4 <= fVar18) {
            fVar18 = 0.0;
          }
          else {
            fVar18 = (float)local_a4 - fVar18;
            FUN_00435a50();
          }
          local_88 = local_88 + (int)local_9c * 2;
          piVar12 = (int *)((float)local_a0 * local_b8 + local_a8);
          fVar11 = (float)local_a0 * local_b8 - fVar18;
          local_90 = (float *)(((float)local_90 - *local_88) / (float)local_a0);
          fVar18 = (float)piVar12 - fVar18;
          local_98 = (float *)(((float)local_98 - local_88[1]) / (float)local_a0);
          pfVar16 = (float *)((float)local_90 * fVar11 + *local_88);
          pfVar14 = (float *)((float)local_98 * fVar11 + local_88[1]);
          if (fVar18 < *(float *)(local_8c + 0x544)) {
            *(float *)(local_8c + 0x544) = fVar18;
            *(float **)(local_8c + 0x548) = pfVar16;
            *(float **)(local_8c + 0x54c) = pfVar14;
            *(float **)(local_8c + 0x550) = local_90;
            *(float **)(local_8c + 0x554) = local_98;
          }
          local_a0 = piVar12;
          local_94 = pfVar14;
          local_88 = pfVar16;
          puVar3 = (uint *)FUN_00417170(&DAT_00c34ac0);
          if ((((*puVar3 | puVar3[1]) != 0) ||
              (fVar18 = (float)(puVar3[2] | puVar3[3]), fVar18 != 0.0)) &&
             ((*(char *)(local_8c + 0x45c) != '\0' ||
              (iVar4 = HELPER_Entity_TimeoutCrossed(), fVar18 = extraout_ECX_00, pfVar16 = local_88,
              pfVar14 = local_94, iVar4 != 0)))) {
            local_f4 = pfVar16;
            local_f0 = pfVar14;
            HELPER_RoomClampedPoint(&local_140,&local_f4,0x41700000,0x41700000,0x41700000);
            local_f4 = local_140;
            local_f0 = (float *)local_13c;
            uVar5 = FUN_006eef60();
            uVar22 = 0;
            pTVar21 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
            pTVar20 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
            uVar19 = 0;
            uVar5 = HELPER_Entity_SpawnRelay
                              (1000,0x35,&local_f4,&DAT_00c7b640,*(undefined4 *)(local_8c + 0x3c8),0
                               ,uVar5);
            piVar12 = (int *)__RTDynamicCast(uVar5,uVar19,pTVar20,pTVar21,uVar22);
            fVar18 = DAT_00c37940 * DAT_00baa280;
            piVar12[0x39] = (int)(DAT_00c3793c * DAT_00baa280);
            piVar12[0x3a] = (int)fVar18;
            (**(code **)(*piVar12 + 0xc))();
            fVar18 = extraout_ECX_01;
          }
          pfVar16 = *ppfVar9;
          if ((*(int *)(DAT_00c71678 + 0x26614) < 2) || (pfVar16[10] != 1.401298e-45)) {
            fVar18 = pfVar16[10];
            if (((int)fVar18 - 10U < 0x3de) &&
               (((fVar18 != 4.624285e-44 && (fVar18 != 2.382207e-44)) && (fVar18 != 4.091792e-43))))
            {
              if (fVar18 == 1.240149e-42) {
                bVar10 = pfVar16[0xb] == 1.401298e-44;
              }
              else {
                if ((fVar18 == 1.345247e-42) || (fVar18 == 1.352253e-42)) goto LAB_009726e0;
                bVar10 = fVar18 == 3.433181e-43;
              }
              if (!bVar10) goto LAB_009723bd;
            }
          }
          else {
LAB_009723bd:
            if (*(char *)((int)pfVar16 + 0x173) == '\0') {
              FUN_00435c20(&DAT_00c34a50,fVar18,&DAT_00c34630);
              uVar5 = FUN_00435c20();
              puVar3 = (uint *)FUN_00417170(uVar5);
              if ((((*puVar3 | puVar3[1]) != 0) || ((puVar3[2] | puVar3[3]) != 0)) &&
                 ((*(char *)(local_8c + 0x45c) != '\0' ||
                  (iVar4 = HELPER_Entity_TimeoutCrossed(), iVar4 != 0)))) {
                local_94 = (float *)((float)local_94 - (*ppfVar9)[0xd0]);
                local_88 = (float *)((float)local_88 - (*ppfVar9)[0xcf]);
                fVar18 = (float)local_94 * (float)local_94 + (float)local_88 * (float)local_88;
                FUN_00435a50();
                if (((*ppfVar9)[0xdc] < fVar18) && (DAT_00ba9fe4 < fVar18)) {
                  fVar18 = (*ppfVar9)[0xdc] / fVar18;
                  local_88 = (float *)((float)local_88 * fVar18);
                  local_94 = (float *)((float)local_94 * fVar18);
                }
                puVar3 = (uint *)FUN_00417170(&DAT_00c34a50);
                uVar7 = *puVar3 | puVar3[1];
                if ((uVar7 == 0) && (uVar7 = puVar3[2] | puVar3[3], uVar7 == 0)) {
                  puVar3 = (uint *)FUN_00417170(&DAT_00c34630);
                  uVar7 = *puVar3 | puVar3[1];
                  if ((uVar7 == 0) && (uVar7 = puVar3[2] | puVar3[3], uVar7 == 0)) {
                    local_a8 = 2.662467e-44;
                  }
                  else {
                    local_a8 = 6.726233e-44;
                  }
                }
                else {
                  local_a8 = 3.643376e-44;
                }
                FUN_00435c20(&DAT_00c34850,uVar7,&DAT_00c34c50,uVar7,&DAT_00c348f0,uVar7,
                             &DAT_00c345c0,uVar7,&DAT_00c345e0,uVar7,&DAT_00c345d0);
                FUN_00435c20();
                FUN_00435c20();
                FUN_00435c20();
                FUN_00435c20();
                FUN_00435c20();
                uVar5 = FUN_00592200(local_270);
                FUN_00417170(uVar5);
                uVar5 = FUN_006eef60();
                local_148 = (float)local_88 + (*ppfVar9)[0xcf];
                local_144 = (float)local_94 + (*ppfVar9)[0xd0];
                local_88 = (float *)HELPER_Entity_SpawnRelay
                                              (2,local_a8,&local_148,&DAT_00c7b640,
                                               *(undefined4 *)(local_8c + 0x3c8),0,uVar5);
                (**(code **)((int)*local_88 + 0xc))();
                FUN_00676150(local_170,uStack_16c,uStack_168,uStack_164);
                (**(code **)((int)*local_88 + 0x40))(*(undefined4 *)(local_8c + 0x388));
                fVar18 = *(float *)(local_8c + 0x4e0);
                if (*(float *)(local_8c + 0x4e0) <= DAT_00baa06c) {
                  fVar18 = DAT_00baa06c;
                }
                local_88[0x109] = fVar18;
                local_88[0x108] = fVar18;
                FUN_00677780();
                local_a4 = *ppfVar9;
                DAT_00c79c64 = DAT_00c79c64 + 1;
                (**(code **)((int)*local_88 + 0x5c))(local_a4,1);
                (**(code **)((int)*local_a4 + 0x5c))(local_88,0);
                DAT_00c79c64 = DAT_00c79c64 + -1;
              }
            }
          }
LAB_009726e0:
          local_a4 = local_e4;
          cVar2 = FUN_00435f50();
          if (cVar2 == '\0') {
            FUN_00417170(&DAT_00c34b30);
            FUN_00417170(&DAT_00c34c40);
          }
          HELPER_Laser_DoDamage(*ppfVar9);
          cVar2 = FUN_00435f50();
          if ((cVar2 == '\0') || (*(int *)(local_8c + 0x30) == 2)) {
            pfVar16 = *ppfVar9;
            if (((uint)pfVar16[0x5a] & 0x4000000) != 0) {
              if ((pfVar16[10] == 5.605194e-45) && (*(int *)(local_8c + 0x3c8) != 0)) {
                bVar10 = *(int *)(*(int *)(local_8c + 0x3c8) + 0x28) == 1;
                goto LAB_00972846;
              }
              goto LAB_009729ca;
            }
            if ((pfVar16[10] == 1.401298e-45) && (*(int *)(local_8c + 0x3c8) != 0)) {
              bVar10 = (*(uint *)(*(int *)(local_8c + 0x3c8) + 0x168) & 0x20000000) == 0;
LAB_00972846:
              if (!bVar10) goto LAB_009729ca;
            }
            local_88 = local_90;
            local_94 = local_98;
            pfVar16 = local_98;
            if (*(int *)(local_8c + 0x30) == 2) {
              local_88 = *(float **)(local_8c + 0x360);
              local_94 = *(float **)(local_8c + 0x364);
              pfVar16 = (float *)((float)local_88 * (float)local_88 +
                                 (float)local_94 * (float)local_94);
              FUN_00435a50();
              if (DAT_00ba9fe4 < (float)pfVar16) {
                local_88 = (float *)((float)local_88 * (DAT_00baa454 / (float)pfVar16));
                local_94 = (float *)((float)local_94 * (DAT_00baa454 / (float)pfVar16));
                pfVar16 = local_94;
              }
            }
            FUN_006b2210(local_8c);
            fVar18 = 0.0;
            pfVar13 = local_94;
            pfVar14 = local_88;
            if (0.0 < (float)pfVar16) {
              pfVar14 = (float *)((float)local_88 / (float)pfVar16);
              pfVar13 = (float *)((float)local_94 / (float)pfVar16);
            }
            fVar11 = *(float *)(local_8c + 0x37c) * _DAT_00baa5b8;
            fVar15 = fVar11 * (float)pfVar13;
            fVar11 = fVar11 * (float)pfVar14;
            if (((*ppfVar9)[10] == 1.401298e-45) || ((*ppfVar9)[10] == 4.203895e-45)) {
              fVar11 = fVar11 * DAT_00baa198;
              fVar15 = fVar15 * DAT_00baa198;
            }
            puVar3 = (uint *)FUN_00417170(&DAT_00c34ae0);
            if (((*puVar3 | puVar3[1]) != 0) || ((puVar3[2] | puVar3[3]) != 0)) {
              fVar11 = fVar11 + fVar11;
              fVar15 = fVar15 + fVar15;
            }
            pfVar16 = *ppfVar9;
            fVar1 = pfVar16[0xdb];
            if ((NAN(fVar1) || NAN(fVar18)) == (fVar1 == fVar18)) {
              pfVar16[0xd9] = (pfVar16[0xe7] * fVar15) / fVar1 + pfVar16[0xd9];
              pfVar16[0xd8] = (pfVar16[0xe7] * fVar11) / fVar1 + pfVar16[0xd8];
            }
          }
          else {
LAB_009729ca:
            fVar18 = 0.0;
          }
          cVar2 = HELPER_Laser_BrimstonePredicate();
          iVar4 = extraout_EDX_02;
          if (cVar2 != '\0') {
            iVar4 = *(int *)(extraout_EDX_02 + 0x480);
            pfVar14 = *ppfVar9;
            local_94 = (float *)((uint)local_90 ^ DAT_00bacb70);
            pfVar13 = (float *)((*(float *)(iVar4 + 0xc + (int)local_9c * 8) -
                                *(float *)(iVar4 + 4 + (int)local_9c * 8)) * local_b8 +
                               *(float *)(iVar4 + 4 + (int)local_9c * 8));
            local_88 = (float *)((*(float *)(iVar4 + 8 + (int)local_9c * 8) -
                                 *(float *)(iVar4 + (int)local_9c * 8)) * local_b8 +
                                *(float *)(iVar4 + (int)local_9c * 8));
            pfVar16 = *(float **)(local_8c + 0x370);
            fVar11 = (pfVar14[0xd0] - (float)pfVar13) * (float)local_94 +
                     (pfVar14[0xcf] - (float)local_88) * (float)local_98;
            local_a8 = fVar11 - pfVar14[0xdc];
            local_b0 = (float *)(pfVar14[0xdc] + fVar11);
            if (local_a8 <= (float)((uint)pfVar16 ^ DAT_00bacb70)) {
              local_a8 = (float)((uint)pfVar16 ^ DAT_00bacb70);
            }
            if ((float)pfVar16 <= (float)local_b0) {
              local_b0 = pfVar16;
            }
            iVar4 = local_8c;
            local_9c = pfVar13;
            if (local_a8 + DAT_00baa630 < (float)local_b0) {
              iVar4 = FUN_0040a220(0);
              local_a4 = (float *)(iVar4 + 0x30);
              iVar4 = FUN_0040b220(0);
              local_ac = (float *)(local_8c + 0xf0);
              local_58 = *local_ac;
              uStack_54 = *(undefined4 *)(local_8c + 0xf4);
              uStack_50 = *(undefined4 *)(local_8c + 0xf8);
              uStack_4c = *(undefined4 *)(local_8c + 0xfc);
              local_48 = *(undefined4 *)(local_8c + 0x100);
              uStack_44 = *(undefined4 *)(local_8c + 0x104);
              uStack_40 = *(undefined4 *)(local_8c + 0x108);
              uStack_3c = *(undefined4 *)(local_8c + 0x10c);
              local_38 = *(undefined8 *)(local_8c + 0x110);
              local_30 = *(undefined4 *)(local_8c + 0x118);
              FUN_006831c0(iVar4 + 0x48);
              local_138 = local_58;
              uStack_134 = uStack_54;
              uStack_130 = uStack_50;
              uStack_12c = uStack_4c;
              local_110 = local_30;
              local_128 = local_48;
              uStack_124 = uStack_44;
              uStack_120 = uStack_40;
              uStack_11c = uStack_3c;
              local_118 = local_38;
              FUN_006831c0(local_a4);
              local_5c = local_110;
              local_84 = local_138;
              uStack_80 = uStack_134;
              uStack_7c = uStack_130;
              uStack_78 = uStack_12c;
              local_74 = local_128;
              uStack_70 = uStack_124;
              uStack_6c = uStack_120;
              uStack_68 = uStack_11c;
              local_64 = local_118;
              local_bc = *(float *)(local_8c + 0x350);
              uVar7 = FUN_006eef60();
              pfVar16 = (float *)(uVar7 & 3);
              local_a4 = pfVar16;
              if (pfVar16 != (float *)0x0) {
                local_e0 = (float)local_b0 - local_a8;
                local_dc = (float)local_90 * DAT_00baa6fc;
                local_d8 = (float)local_98 * DAT_00baa6fc;
                do {
                  local_d4 = (int *)FUN_006eef60();
                  iVar4 = FUN_006eef60();
                  local_a0 = (int *)((float)((double)iVar4 +
                                            (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                                     DAT_00ba9ff4 * DAT_00baa7a4 + DAT_00baa75c);
                  iVar4 = FUN_006eef60();
                  fVar18 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa704;
                  local_a4 = (float *)(fVar18 + fVar18);
                  fVar18 = (float)local_a4;
                  FUN_0041d540();
                  local_150 = fVar18 + (float)local_a0 * (float)local_90;
                  fVar18 = (float)local_a4;
                  FUN_0041d520();
                  local_14c = fVar18 + (float)local_a0 * (float)local_98;
                  iVar4 = FUN_006eef60();
                  local_a4 = (float *)(local_e0 *
                                       (float)((double)iVar4 +
                                              (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                                       DAT_00ba9ff4 + local_a8);
                  iVar4 = FUN_006eef60();
                  fVar18 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                           DAT_00ba9ff4;
                  local_154 = (float)local_a4 * (float)local_94 + (float)local_9c +
                              fVar18 * local_d8;
                  local_158 = (float)local_a4 * (float)local_98 + (float)local_88 +
                              fVar18 * local_dc;
                  local_d4 = (int *)HELPER_Entity_SpawnRelay
                                              (1000,99,&local_158,&local_150,0,1,local_d4);
                  local_d4[0x39] = (int)((float)local_d4[0x39] + (float)local_d4[0x39]);
                  local_d4[0x3a] = (int)((float)local_d4[0x3a] + (float)local_d4[0x3a]);
                  (**(code **)(*local_d4 + 0x3c))(&local_84,0xffffffff,0xff,0,1);
                  local_d4[0xd3] = 0;
                  local_d4[0xd4] = (int)local_bc;
                  (**(code **)(*local_d4 + 0xc))();
                  pfVar16 = (float *)((int)pfVar16 + -1);
                  ppfVar9 = local_d0;
                } while (pfVar16 != (float *)0x0);
              }
              if (((uint)(*ppfVar9)[0x5b] & 0x1000000) != 0) {
                FUN_00682ed0();
                local_138 = _DAT_00bac7c0;
                uStack_134 = _UNK_00bac7c4;
                uStack_130 = _UNK_00bac7c8;
                uStack_12c = _UNK_00bac7cc;
                FUN_006831c0(local_ac);
                local_30 = local_110;
                local_58 = local_138;
                uStack_54 = uStack_134;
                uStack_50 = uStack_130;
                uStack_4c = uStack_12c;
                local_48 = local_128;
                uStack_44 = uStack_124;
                uStack_40 = uStack_120;
                uStack_3c = uStack_11c;
                local_38 = local_118;
                local_d4 = (int *)FUN_006eef60();
                iVar4 = FUN_006eef60();
                fVar18 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                         DAT_00ba9ff4;
                local_a0 = (int *)(fVar18 + fVar18 + DAT_00baa630);
                iVar4 = FUN_006eef60();
                fVar18 = (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa704;
                local_ac = (float *)(fVar18 + fVar18);
                pfVar16 = local_ac;
                FUN_0041d540();
                local_fc = (float)pfVar16 + (float)local_a0 * (float)local_90;
                pfVar16 = local_ac;
                FUN_0041d520();
                local_f8 = (float)pfVar16 + (float)local_a0 * (float)local_98;
                iVar4 = FUN_006eef60();
                fVar18 = ((float)local_b0 - local_a8) *
                         (float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                         DAT_00ba9ff4 + local_a8;
                local_100 = fVar18 * (float)local_94 + (float)local_9c;
                local_104 = fVar18 * (float)local_98 + (float)local_88;
                local_a0 = (int *)HELPER_Entity_SpawnRelay(1000,2,&local_104,&local_fc,0,2,local_d4)
                ;
                (**(code **)(*local_a0 + 0x3c))(&local_58,0xffffffff,0xff,0,1);
                local_a0[0xd3] = 0;
                local_a0[0xd4] = (int)local_bc;
                iVar4 = FUN_006eef60();
                local_a0[0x11d] =
                     (int)((float)((double)iVar4 + (double)(&DAT_00bacb00)[-(iVar4 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baab30);
                (**(code **)(*local_a0 + 0xc))();
              }
LAB_00973070:
              fVar18 = 0.0;
              iVar4 = local_8c;
            }
          }
        }
LAB_00973073:
        ppfVar9 = ppfVar9 + 1;
        local_d0 = ppfVar9;
      } while (ppfVar9 != ppfVar8);
    }
    if (local_cc != (float **)0x0) {
      deallocate(local_cc,(int)local_c4 - (int)local_cc >> 2);
    }
  }
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
code_r0x0097207c:
  local_a8 = (float)local_a0 + local_a8;
  local_9c = (float *)((int)local_9c + 1);
  iVar4 = local_8c;
  if (local_a4 <= local_9c) goto LAB_00973073;
  goto LAB_00971e12;
}

