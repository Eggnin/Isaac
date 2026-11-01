/* Local J460 decompiler output.
 * VA: 0x00973c60
 * Entry: 00973c60
 * Dispatcher: 0x006c2990
 * Types: 7
 * Identities: 7.*
 * Evidence: Geometry Update damage path
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=7; identities=7.*; Geometry Update damage path */

void __fastcall HELPER_Laser_DamageDispatch(int *param_1)

{
  float fVar1;
  code *pcVar2;
  float fVar3;
  float *pfVar4;
  int iVar5;
  undefined uVar6;
  char cVar7;
  int iVar8;
  float ***pppfVar9;
  float *pfVar10;
  uint *puVar11;
  float *pfVar12;
  uint uVar13;
  float ***pppfVar14;
  float **ppfVar15;
  float **ppfVar16;
  int *piVar17;
  int *piVar18;
  undefined4 *puVar19;
  int *extraout_ECX;
  int *extraout_ECX_00;
  int *extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 extraout_ECX_03;
  undefined4 extraout_ECX_04;
  undefined4 extraout_ECX_05;
  int extraout_EDX;
  float **ppfVar20;
  int **ppiVar21;
  int iVar22;
  int iVar23;
  uint uVar24;
  float10 fVar25;
  float fVar26;
  float fVar27;
  undefined4 uVar28;
  TypeDescriptor *pTVar29;
  TypeDescriptor *pTVar30;
  undefined4 uVar31;
  undefined4 uVar32;
  undefined local_278 [84];
  undefined4 local_224;
  undefined4 uStack_220;
  undefined4 uStack_21c;
  undefined4 uStack_218;
  undefined4 local_20c;
  undefined4 local_1f8;
  undefined4 uStack_1f4;
  undefined4 uStack_1f0;
  undefined4 uStack_1ec;
  undefined4 local_1e0;
  undefined4 local_1cc;
  undefined4 uStack_1c8;
  undefined4 uStack_1c4;
  undefined4 uStack_1c0;
  undefined4 local_1b4;
  undefined local_1a8 [16];
  undefined local_198 [16];
  float local_188;
  float local_184;
  undefined local_180 [8];
  float *local_178;
  float *local_174;
  undefined local_168 [8];
  int local_160;
  int iStack_15c;
  int iStack_158;
  float **ppfStack_154;
  float local_150;
  int *local_14c;
  undefined local_148 [8];
  float local_140;
  float local_13c;
  float **local_130;
  float **local_12c;
  float **local_120;
  float **local_11c;
  float **local_114;
  undefined4 local_110;
  float local_10c;
  float **local_108;
  undefined4 local_104;
  undefined4 local_100;
  undefined4 local_fc;
  float **local_f0;
  float **local_ec;
  char local_e2;
  char local_e1;
  undefined local_e0 [8];
  undefined local_d8 [4];
  float **local_d4 [2];
  float **local_cc;
  float **local_c8;
  char local_c1;
  undefined local_c0 [4];
  float **local_bc;
  char local_b5;
  float **local_b4;
  undefined local_b0 [44];
  undefined4 local_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 local_74;
  undefined4 uStack_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined8 local_64;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined local_48 [8];
  undefined4 uStack_40;
  undefined4 uStack_3c;
  float local_38;
  float local_34;
  float local_30;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00b0cae8;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_14c = param_1;
  FUN_00973a50(local_24);
  if ((*(char *)(param_1 + 0x117) != '\0') || (*(char *)((int)param_1 + 0x515) == '\0')) {
    param_1[0x10e] = param_1[0x10a];
    param_1[0x10f] = param_1[0x10b];
    param_1[0x110] = param_1[0x10c];
    param_1[0x111] = param_1[0x10d];
  }
  if ((((param_1[0xb] == 7) || (*(char *)((int)param_1 + 0x175) != '\0')) ||
      (*(char *)((int)param_1 + 0x173) != '\0')) ||
     ((*(char *)(param_1 + 0x117) == '\0' && (iVar8 = FUN_006ac760(), iVar8 == 0)))) {
    local_e1 = '\0';
  }
  else {
    local_e1 = '\x01';
    if ((param_1[0x14b] == 0) && (*(char *)((int)param_1 + 0x515) == '\0')) {
      param_1[0x149] = param_1[0x148];
    }
  }
  uVar24 = param_1[0xef];
  if ((uVar24 != 0) && (*(char *)(param_1 + 0x139) == '\0')) {
    fVar26 = *(float *)(uVar24 + 0x33c);
    fVar27 = *(float *)(uVar24 + 0x340);
    if (*(int *)(uVar24 + 0x28) == 1) {
      fVar26 = fVar26 + (float)param_1[0x104] + *(float *)(uVar24 + 0x164c);
      fVar27 = fVar27 + (float)param_1[0x105] + *(float *)(uVar24 + 0x1650);
    }
    else if (param_1[0xd] != 1) {
      fVar26 = fVar26 + (float)param_1[0x104];
      fVar27 = fVar27 + (float)param_1[0x105];
    }
    param_1[0xd0] = (int)fVar27;
    param_1[0xcf] = (int)fVar26;
  }
  local_fc = (float)(uVar24 & 0xffffff00);
  local_e2 = '\0';
  local_b5 = '\0';
  local_100 = (float **)((uint)local_100 & 0xffffff00);
  local_110 = (float **)((uint)local_110 & 0xffffff00);
  if ((*(char *)((int)param_1 + 0x175) == '\0') && (param_1[0x116] != 0)) {
    iVar8 = param_1[0xb];
    if ((iVar8 == 6) || (iVar8 == 0xf)) {
      uVar31 = 4;
    }
    else if (((iVar8 == 0xb) || (iVar8 == 0xe)) &&
            (*(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca] == 1)) {
      uVar31 = 10;
    }
    else {
      if (iVar8 != 0xd) goto LAB_00973e19;
      uVar31 = 10;
    }
    FUN_00703670(uVar31);
  }
LAB_00973e19:
  fVar26 = DAT_00baa9b4;
  if (*(char *)(param_1 + 0x130) != '\0') {
    if (param_1[0x131] == 0) {
      ppfVar16 = (float **)param_1[0x132];
      pppfVar14 = (float ***)(param_1 + 0x132);
      if (0.0 <= (float)ppfVar16) {
        if (0.0 < (float)ppfVar16) {
          local_bc = (float **)((float)param_1[0x133] * DAT_00baa2d0);
          pppfVar9 = &local_bc;
          if ((float)ppfVar16 < (float)(float **)((float)param_1[0x133] * DAT_00baa2d0)) {
            pppfVar9 = pppfVar14;
          }
          local_b4 = (float **)((float)ppfVar16 - (float)*pppfVar9);
          fVar27 = (float)*pppfVar9 + (float)param_1[0x107];
          param_1[0x107] = (int)fVar27;
          fVar27 = fVar27 - fVar26;
          *pppfVar14 = local_b4;
          FUN_00682740();
          param_1[0x3b] = (int)fVar27;
          ppfVar16 = local_b4;
        }
        if ((float)ppfVar16 <= 0.0) {
          *(undefined *)(param_1 + 0x130) = 0;
        }
      }
      else {
        if ((float)ppfVar16 < 0.0) {
          local_bc = (float **)((float)param_1[0x133] * DAT_00baa2d0);
          pppfVar9 = &local_bc;
          if ((float)(float **)((float)param_1[0x133] * DAT_00baa2d0) < (float)ppfVar16) {
            pppfVar9 = pppfVar14;
          }
          local_b4 = (float **)((float)ppfVar16 - (float)*pppfVar9);
          fVar27 = (float)*pppfVar9 + (float)param_1[0x107];
          param_1[0x107] = (int)fVar27;
          fVar27 = fVar27 - fVar26;
          *pppfVar14 = local_b4;
          FUN_00682740();
          param_1[0x3b] = (int)fVar27;
          ppfVar16 = local_b4;
        }
        if (0.0 <= (float)ppfVar16) {
          *(undefined *)(param_1 + 0x130) = 0;
        }
      }
    }
    else {
      param_1[0x131] = param_1[0x131] + -1;
    }
  }
  if (*(char *)((int)param_1 + 0x45d) == '\0') {
    *(undefined *)((int)param_1 + 0x516) = 0;
    cVar7 = FUN_0096ce30();
    if ((((cVar7 != '\0') || (iVar8 = param_1[0xb], iVar8 == 2)) ||
        ((iVar8 == 10 || ((iVar8 == 5 || (iVar8 == 7)))))) || (iVar8 == 8)) {
      FUN_00a10420(&local_120,param_1 + 0xd3);
      FUN_00a10350(&local_f0,param_1[0x107]);
      if (param_1[0x61] == 6) {
        local_d4[0] = (float **)0x40800000;
        uVar31 = FUN_004171d0(&local_f0);
        uVar31 = FUN_00a10480(&local_140,uVar31);
        piVar17 = (int *)FUN_007f0b40(&local_188,uVar31,&local_f0);
LAB_0097663d:
        local_b4 = (float **)(param_1 + 0x136);
      }
      else {
        local_b4 = (float **)(param_1 + 0x136);
        if (param_1[0x61] != 3) {
          local_d4[0] = (float **)0x447a0000;
          uVar31 = FUN_00a104e0(local_198,local_d4);
          piVar17 = (int *)FUN_00a10420(&local_140,uVar31);
          goto LAB_0097663d;
        }
        FUN_0096fc70(local_198,param_1 + 0xcf,&local_f0);
        piVar17 = (int *)FUN_00a10420(&local_140,param_1 + 0xd3);
      }
      param_1[0x136] = *piVar17;
      param_1[0x137] = piVar17[1];
      if (DAT_00ba9fe4 < (float)param_1[0x134]) {
        fVar25 = (float10)FUN_00a0ff90(&local_120);
        local_d4[0] = (float **)(float)fVar25;
        if ((float)param_1[0x134] * (float)param_1[0x134] < (float)local_d4[0]) {
          FUN_00a10480(&local_178,&local_120);
          uVar31 = FUN_00a10100(&local_cc,param_1[0x134]);
          piVar17 = (int *)FUN_00a10420(local_d8,uVar31);
          param_1[0x136] = *piVar17;
          param_1[0x137] = piVar17[1];
        }
      }
      iVar8 = param_1[0xb];
      if ((((iVar8 == 6) || (iVar8 == 0xf)) && (param_1[0xd] == 0x112)) || (iVar8 == 0xd)) {
        FUN_00a10480(local_c0,&local_120);
        uVar31 = FUN_00a10100(&local_114,0x42c80000);
        FUN_00a10450(uVar31);
      }
      if ((param_1[0xd] != 1) && (param_1[0xd] != 3)) {
        local_12c = (float **)0x0;
        local_ec = (float **)0x0;
        local_f0 = (float **)0x0;
        AI_0041af60(&local_160,1000,0xbc,0xffffffff,0,0);
        local_14 = 0;
        local_bc = (float **)0x0;
        if (ppfStack_154 == (float **)0x0) {
LAB_00976cc2:
          if ((int *)param_1[0x13a] != (int *)0x0) {
            (**(code **)(*(int *)param_1[0x13a] + 0x28))();
          }
        }
        else {
          do {
            ppfVar16 = (float **)FUN_004a2920();
            if (ppfVar16 != (float **)0x0) {
              FUN_00a10350(&local_cc,ppfVar16[0x11d]);
              pfVar10 = (float *)FUN_00a10480(local_198,&local_120);
              if ((float)local_c8 * pfVar10[1] + (float)local_cc * *pfVar10 < DAT_00ba9fe4) {
                local_178 = ppfVar16[0xcf];
                local_174 = ppfVar16[0xd0];
                local_d4[0] = (float **)0x41a00000;
                uVar31 = FUN_004171d0(&local_cc);
                FUN_00a10420(&local_140,uVar31);
                FUN_00a102e0(local_168,0x42b40000);
                local_d4[0] = (float **)ppfVar16[0xdc];
                FUN_00a104e0(&local_188,local_d4);
                cVar7 = FUN_0084d8b0(local_140 - local_188,local_13c - local_184,
                                     local_188 + local_140,local_184 + local_13c);
                if (cVar7 != '\0') {
                  param_1[0x136] = (int)local_110;
                  param_1[0x137] = (int)local_108;
                  local_f0 = local_cc;
                  local_ec = local_c8;
                  local_12c = ppfVar16;
                }
              }
            }
            local_bc = (float **)((int)local_bc + 1);
          } while (local_bc < ppfStack_154);
          if (local_12c == (float **)0x0) goto LAB_00976cc2;
          FUN_00a10480(&local_cc,&local_120);
          local_d4[0] = (float **)0x40000000;
          FUN_004171d0(&local_f0);
          local_d4[0] = (float **)
                        ((float)local_c8 * (float)local_ec + (float)local_cc * (float)local_f0);
          uVar31 = FUN_00a104e0(local_1a8,local_d4);
          FUN_00a10480(&local_140,uVar31);
          fVar25 = (float10)FUN_00a10390();
          local_bc = (float **)(float)fVar25;
          FUN_00407170();
          if ((param_1[0xb] != 5) && (param_1[0xb] != 10)) {
            uVar31 = FUN_00435b50(0x3f800000,0x40a00000,0x40a00000,0x40800000,0x3f800000,0,0,0);
            FUN_004071f0(uVar31);
          }
          local_d4[0] = (float **)FUN_00499da0();
          if (param_1[0x13a] == 0) {
            uVar31 = FUN_00a10480(local_168,param_1 + 0xd3);
            piVar17 = (int *)HELPER_0096f310_EntityAttackObjectCandidate
                                       (param_1[0xb],uVar31,local_bc,param_1[0x116],param_1 + 0xd3,
                                        local_d4[0],1);
            if (piVar17 == (int *)0x0) goto LAB_00976cb2;
            pcVar2 = *(code **)(*piVar17 + 0x3c);
            *(undefined *)(piVar17 + 0x139) = 1;
            *(undefined *)(piVar17 + 0x145) = 1;
            (*pcVar2)(local_b0,0xffffffff,0xff,0,1);
            (**(code **)(*piVar17 + 0x40))(0x40e00000);
            piVar17[0xd6] = (int)((float)param_1[0xd6] + DAT_00baa9d0);
            piVar17[0x116] = param_1[0x116];
            if ((*(char *)((int)param_1 + 0x45e) == '\0') &&
               (*(char *)((int)param_1 + 0x173) == '\0')) {
              uVar6 = 0;
            }
            else {
              uVar6 = 1;
            }
            *(undefined *)((int)piVar17 + 0x45e) = uVar6;
            (**(code **)(*piVar17 + 0xc))();
            FUN_006b5b50();
            local_b5 = '\x01';
            local_100 = (float **)CONCAT31(local_100._1_3_,1);
          }
          else {
            piVar17 = (int *)__RTDynamicCast(param_1[0x13a],0,
                                             &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                             &IsaacRepentancePlus::Entity_Laser::
                                              RTTI_Type_Descriptor,0);
            (**(code **)(*piVar17 + 0x3c))(local_b0,0xffffffff,0xff,0,1);
            (**(code **)(*piVar17 + 0x40))(0x40e00000);
            piVar17[0xd6] = (int)((float)param_1[0xd6] + DAT_00baa9d0);
            piVar17[0x116] = param_1[0x116];
            if ((*(char *)((int)param_1 + 0x45e) == '\0') &&
               (*(char *)((int)param_1 + 0x173) == '\0')) {
              uVar6 = 0;
            }
            else {
              uVar6 = 1;
            }
            *(undefined *)((int)piVar17 + 0x45e) = uVar6;
            FUN_0096ce90(local_bc);
            piVar18 = (int *)FUN_00a10480(local_168,param_1 + 0xd3);
            piVar17[0xcf] = *piVar18;
            piVar17[0xd0] = piVar18[1];
LAB_00976cb2:
            local_b5 = '\x01';
            local_100 = (float **)CONCAT31(local_100._1_3_,1);
          }
        }
        local_14 = 0xffffffff;
        FUN_004175b0();
      }
      FUN_00a10480(&local_140,&local_120);
      fVar25 = (float10)FUN_00a0fea0();
      param_1[0x118] = (int)(float)fVar25;
      FUN_0097fe60(local_100);
      local_fc = (float)CONCAT31(local_fc._1_3_,local_b5);
    }
  }
  else {
    if (((param_1[0x135] == 1) || (*(char *)((int)param_1 + 0x515) != '\0')) &&
       (*(char *)(param_1 + 0x117) == '\0')) {
      local_e2 = '\0';
    }
    else {
      fVar26 = (float)param_1[0x107];
      local_e2 = '\x01';
      *(undefined *)((int)param_1 + 0x516) = 0;
      if ((((NAN(fVar26) || NAN((float)param_1[0x108])) == (fVar26 == (float)param_1[0x108])) &&
          (cVar7 = FUN_0096ce30(), cVar7 == '\0')) && (param_1[0xb] != 5)) {
        param_1[300] = param_1[299];
        param_1[0x121] = param_1[0x120];
        param_1[0x127] = param_1[0x126];
        param_1[0x124] = param_1[0x123];
        fVar26 = (float)param_1[0x107];
      }
      ppfVar16 = (float **)(fVar26 * DAT_00baa088);
      local_b4 = ppfVar16;
      FUN_0041d520();
      local_bc = ppfVar16;
      local_f0 = local_b4;
      FUN_0041d540();
      local_ec = local_bc;
      local_108 = DAT_00c7b640;
      local_100 = DAT_00c7b644;
      if ((1 < (uint)param_1[0x32]) && (iVar8 = FUN_0040a220(0), iVar8 != 0)) {
        fVar26 = *(float *)(iVar8 + 0x14) + *(float *)(iVar8 + 0xc);
        local_100 = (float **)((float)local_bc * fVar26 * (float)param_1[0x3a]);
        local_108 = (float **)(fVar26 * (float)local_f0 * (float)param_1[0x3a]);
      }
      iVar8 = param_1[0xf2];
      local_12c = (float **)((float)local_108 + (float)param_1[0xcf]);
      local_c8 = (float **)((float)local_100 + (float)param_1[0xd0]);
      if ((iVar8 == 0) || (*(int *)(iVar8 + 0x28) != 1)) {
        iVar8 = 0;
      }
      local_cc = local_12c;
      local_b4 = local_c8;
      pfVar10 = (float *)FUN_0096fc70(&local_140,&local_cc,&local_f0);
      fVar26 = *pfVar10;
      param_1[0x136] = (int)fVar26;
      fVar27 = pfVar10[1];
      param_1[0x137] = (int)fVar27;
      fVar1 = (float)param_1[0x134];
      if ((0.0 < fVar1) &&
         (fVar1 * fVar1 <
          ((float)local_b4 - fVar27) * ((float)local_b4 - fVar27) +
          ((float)local_12c - fVar26) * ((float)local_12c - fVar26))) {
        local_cc = (float **)(fVar26 - (float)local_12c);
        local_c8 = (float **)(fVar27 - (float)local_b4);
        pfVar10 = (float *)FUN_00a10100(&local_140,fVar1);
        fVar26 = pfVar10[1];
        param_1[0x136] = (int)((float)local_12c + *pfVar10);
        param_1[0x137] = (int)((float)local_b4 + fVar26);
      }
      param_1[300] = param_1[299];
      if (((param_1[0xb] == 6) || (param_1[0xb] == 0xf)) && (param_1[0xd] == 1)) {
        if ((((float)param_1[0x137] - (float)local_b4) - (float)local_bc * DAT_00baa924) *
            (float)local_100 +
            (((float)param_1[0x136] - (float)local_12c) - (float)local_f0 * DAT_00baa924) *
            (float)local_108 < 0.0) {
          local_bc = (float **)((float)local_12c + (float)local_108);
          local_d4[0] = (float **)((float)local_b4 + (float)local_100);
          fVar27 = (float)local_100 * (float)local_100 + (float)local_108 * (float)local_108;
          FUN_00435a50();
          ppfVar16 = local_d4[0];
          if (fVar27 <= DAT_00ba9fe4) {
            fVar26 = (float)local_bc + (float)local_108;
            ppfVar20 = local_100;
          }
          else {
            fVar26 = (float)local_bc + (DAT_00baa120 / fVar27) * (float)local_108;
            ppfVar20 = (float **)((DAT_00baa120 / fVar27) * (float)local_100);
          }
LAB_009743d3:
          param_1[0x137] = (int)((float)ppfVar16 + (float)ppfVar20);
          param_1[0x136] = (int)fVar26;
        }
      }
      else if (((float)param_1[0x137] - (float)local_b4) * (float)local_100 +
               ((float)param_1[0x136] - (float)local_12c) * (float)local_108 < 0.0) {
        local_d4[0] = (float **)((float)local_12c + (float)local_108);
        local_bc = (float **)((float)local_b4 + (float)local_100);
        fVar26 = (float)local_100 * (float)local_100 + (float)local_108 * (float)local_108;
        FUN_00435a50();
        ppfVar16 = local_108;
        ppfVar20 = local_100;
        if (DAT_00ba9fe4 < fVar26) {
          ppfVar16 = (float **)((DAT_00baa120 / fVar26) * (float)local_108);
          ppfVar20 = (float **)((DAT_00baa120 / fVar26) * (float)local_100);
        }
        fVar26 = (float)local_d4[0] + (float)ppfVar16;
        ppfVar16 = local_bc;
        goto LAB_009743d3;
      }
      param_1[0x11a] = (int)local_12c;
      param_1[0x11b] = (int)local_b4;
      param_1[0x11c] = param_1[0x136];
      param_1[0x11d] = param_1[0x137];
      puVar11 = (uint *)FUN_00417170(&DAT_00c34b60);
      if (((*puVar11 | puVar11[1]) != 0) || ((puVar11[2] | puVar11[3]) != 0)) {
        FUN_0099fa60();
      }
      puVar11 = (uint *)FUN_00417170(&DAT_00c34860);
      uVar24 = *puVar11 | puVar11[1];
      if ((uVar24 != 0) || (uVar24 = puVar11[2] | puVar11[3], uVar24 != 0)) {
        FUN_0099fed0(uVar24);
        iVar22 = param_1[300];
        if (param_1[299] != iVar22) {
          param_1[0x136] = *(int *)(iVar22 + -0x18);
          param_1[0x137] = *(int *)(iVar22 + -0x14);
        }
      }
      puVar11 = (uint *)FUN_00417170(&DAT_00c34950);
      uVar24 = *puVar11 | puVar11[1];
      if ((uVar24 != 0) || (uVar24 = puVar11[2] | puVar11[3], uVar24 != 0)) {
        FUN_0099f2c0(uVar24);
        iVar22 = param_1[300];
        if (param_1[299] != iVar22) {
          param_1[0x136] = *(int *)(iVar22 + -0x18);
          param_1[0x137] = *(int *)(iVar22 + -0x14);
        }
      }
      puVar11 = (uint *)FUN_00417170(&DAT_00c34ba0);
      if (((*puVar11 | puVar11[1]) == 0) && ((puVar11[2] | puVar11[3]) == 0)) {
        if (param_1[0x135] == 1) {
          uVar31 = 4;
        }
        else {
          uVar31 = 0;
          if (param_1[0x135] == 2) {
            uVar31 = 5;
          }
        }
      }
      else {
        uVar31 = 1;
      }
      FUN_0099c790(uVar31,param_1[0xef]);
      FUN_0099e360();
      puVar11 = (uint *)FUN_00417170(&DAT_00c348c0);
      if (((((*puVar11 | puVar11[1]) != 0) || ((puVar11[2] | puVar11[3]) != 0)) &&
          (puVar11 = (uint *)FUN_00417170(&DAT_00c34b60), (*puVar11 | puVar11[1]) == 0)) &&
         ((puVar11[2] | puVar11[3]) == 0)) {
        local_d4[0] = (float **)
                      (float)((double)param_1[8] + (double)(&DAT_00bacb00)[-(param_1[8] >> 0x1f)]);
        if (iVar8 != 0) {
          FUN_007c2d50(0x1e);
        }
        FUN_009a0fa0();
      }
      puVar11 = (uint *)FUN_00417170(&DAT_00c34870);
      if (((*puVar11 | puVar11[1]) != 0) || ((puVar11[2] | puVar11[3]) != 0)) {
        local_d4[0] = (float **)
                      (float)((double)param_1[8] + (double)(&DAT_00bacb00)[-(param_1[8] >> 0x1f)]);
        if (iVar8 != 0) {
          FUN_007c2d50(10);
        }
        FUN_0099ec00();
      }
      puVar11 = (uint *)FUN_00417170(&DAT_00c348e0);
      if (((*puVar11 | puVar11[1]) == 0) && ((puVar11[2] | puVar11[3]) == 0)) {
        puVar11 = (uint *)FUN_00417170(&DAT_00c348a0);
        if (((*puVar11 | puVar11[1]) != 0) || ((puVar11[2] | puVar11[3]) != 0)) {
          local_d4[0] = (float **)
                        (float)((double)param_1[8] + (double)(&DAT_00bacb00)[-(param_1[8] >> 0x1f)])
          ;
          if (iVar8 != 0) {
            FUN_007c2d50(0x1a);
          }
          goto LAB_009747b1;
        }
      }
      else {
        local_d4[0] = (float **)
                      (float)((double)param_1[8] + (double)(&DAT_00bacb00)[-(param_1[8] >> 0x1f)]);
        if (iVar8 != 0) {
          FUN_007c2d50(0x2e);
        }
LAB_009747b1:
        FUN_0099efc0();
      }
      uVar31 = FUN_00435c20(&DAT_00c345c0);
      puVar11 = (uint *)FUN_00417170(uVar31);
      if (((*puVar11 | puVar11[1]) != 0) || ((puVar11[2] | puVar11[3]) != 0)) {
        local_fc = (float)FUN_009a1520();
        local_110 = (float **)CONCAT31(local_110._1_3_,SUB41(local_fc,0));
      }
      if (((param_1[0x61] != 0) &&
          (puVar11 = (uint *)FUN_00417170(&DAT_00c34bb0), (*puVar11 | puVar11[1]) == 0)) &&
         ((puVar11[2] | puVar11[3]) == 0)) {
        local_f0 = (float **)((float)param_1[0xd3] * DAT_00baa280);
        local_ec = (float **)((float)param_1[0xd4] * DAT_00baa280);
        cVar7 = FUN_009a0520(&local_f0,param_1[0x61]);
        local_fc = (float)((uint)local_fc & 0xff);
        *(char *)((int)param_1 + 0x516) = cVar7;
        if (cVar7 != '\0') {
          local_fc = 0.0;
        }
        local_110 = (float **)CONCAT31(local_110._1_3_,SUB41(local_fc,0));
        if (param_1[0x135] == 2) {
          FUN_009a0c50(param_1 + 0xd3);
        }
      }
      if ((*(int *)(DAT_00c71678 + 0x26584) == 0x1e) &&
         ((param_1[0xef] == 0 ||
          ((iVar8 = *(int *)(param_1[0xef] + 0x28), iVar8 != 1 && (iVar8 != 3)))))) {
        FUN_009a0740();
      }
      if (((param_1[0xd] == 1) || ((param_1[0xd] == 3 && (param_1[0xe] != 0x7b)))) &&
         (*(char *)(param_1 + 0x140) == '\0')) {
        local_11c = (float **)0x0;
        local_120 = (float **)0x0;
        ppfVar16 = (float **)(param_1 + 0x13e);
        local_c8 = (float **)0x0;
        local_cc = (float **)0x0;
        local_108 = ppfVar16;
        iVar8 = FUN_009a12b0(&local_120,&local_cc,3,0x65,0);
        if (iVar8 == 0) {
          local_bc = (float **)0x2;
          do {
            if (*ppfVar16 != (float *)0x0) {
              (**(code **)((int)**ppfVar16 + 0x28))();
            }
            ppfVar16 = ppfVar16 + 1;
            local_bc = (float **)((int)local_bc + -1);
          } while (local_bc != (float **)0x0);
          piVar17 = (int *)param_1[0xf0];
          if (piVar17 != (int *)0x0) {
            if ((((param_1[0x13a] == 0) || (piVar17[10] != 1000)) || (piVar17[0xb] != 0x32)) ||
               ((piVar17[0xc] == 4 || ((param_1[0xb] != 6 && (param_1[0xb] != 0xf))))))
            goto LAB_00974ed9;
            (**(code **)(*piVar17 + 0x28))();
            piVar17 = extraout_ECX;
          }
          FUN_0097f820(piVar17);
        }
        else {
          local_12c = (float **)((uint)local_cc ^ DAT_00bacb70);
          local_b4 = local_c8;
          if ((*ppfVar16 == (float *)0x0) || (param_1[0x13f] == 0)) {
            local_bc = (float **)0x2;
            local_100 = ppfVar16;
            ppfVar16 = local_c8;
            ppfVar20 = local_12c;
            ppfVar15 = local_c8;
            fVar26 = DAT_00baa784;
            do {
              if (*local_100 == (float *)0x0) {
                local_f0 = (float **)((float)local_120 + (float)ppfVar15 * fVar26);
                local_ec = (float **)((float)local_11c + (float)ppfVar20 * fVar26);
                FUN_00499d60();
                pfVar10 = (float *)HELPER_0096f310_EntityAttackObjectCandidate
                                             (param_1[0xb],&local_f0,(float)ppfVar16 * DAT_00baa948,
                                              param_1[0x116],param_1 + 0xd3,param_1[0xef],1);
                if (pfVar10 != (float *)0x0) {
                  *(undefined *)(pfVar10 + 0x139) = 1;
                  FUN_0096f070(param_1,1);
                  uVar31 = FUN_00592200(local_148);
                  local_160 = param_1[0x10a];
                  iStack_15c = param_1[0x10b];
                  iStack_158 = param_1[0x10c];
                  ppfStack_154 = (float **)param_1[0x10d];
                  pfVar12 = (float *)FUN_00417170(uVar31);
                  fVar26 = *pfVar12;
                  fVar27 = pfVar12[1];
                  fVar1 = pfVar12[2];
                  fVar3 = pfVar12[3];
                  *(undefined *)(pfVar10 + 0x140) = 1;
                  pfVar10[0x10a] = fVar26;
                  pfVar10[0x10b] = fVar27;
                  pfVar10[0x10c] = fVar1;
                  pfVar10[0x10d] = fVar3;
                  if (pfVar10[0xef] != 0.0) {
                    local_d4[0] = (float **)(pfVar10 + 0xef);
                    FUN_004cf210(local_d4);
                  }
                  pfVar10[0xef] = (float)param_1;
                  FUN_004cdcf0(pfVar10 + 0xef);
                  (**(code **)((int)*pfVar10 + 0xc))();
                  if (*local_100 != (float *)0x0) {
                    local_d4[0] = local_100;
                    FUN_004cf210(local_d4);
                  }
                  *local_100 = pfVar10;
                  FUN_004cdcf0(local_100);
                }
                local_b4 = (float **)((uint)local_b4 ^ DAT_00bacb70);
                local_12c = (float **)((uint)local_12c ^ DAT_00bacb70);
                ppfVar16 = local_c8;
                ppfVar20 = local_12c;
                ppfVar15 = local_b4;
                fVar26 = DAT_00baa784;
              }
              local_100 = local_100 + 1;
              local_bc = (float **)((int)local_bc + -1);
            } while (local_bc != (float **)0x0);
            param_1[0x158] = 0;
          }
          else {
            ppfVar20 = local_c8;
            FUN_00499d60();
            local_100 = (float **)0x2;
            local_d4[0] = (float **)((float)ppfVar20 * DAT_00baa948);
            local_fc = (float)local_d4[0] - DAT_00baa9b4;
            do {
              pfVar10 = *ppfVar16;
              if ((pfVar10 == (float *)0x0) || (pfVar10[10] != 9.809089e-45)) {
                pfVar10 = (float *)0x0;
              }
              local_bc = ppfVar16;
              FUN_0096f070(param_1,0);
              fVar27 = (float)local_12c * DAT_00baa784;
              pfVar10[0x108] = pfVar10[0x107];
              local_12c = (float **)((uint)local_12c ^ DAT_00bacb70);
              ppfVar16 = local_bc + 1;
              local_100 = (float **)((int)local_100 + -1);
              pfVar10[0x106] = (float)local_d4[0];
              pfVar10[0x107] = (float)local_d4[0];
              pfVar10[0x3b] = local_fc;
              fVar26 = (float)local_b4 * DAT_00baa784;
              local_b4 = (float **)((uint)local_b4 ^ DAT_00bacb70);
              pfVar10[0xcf] = (float)local_120 + fVar26;
              pfVar10[0xd0] = (float)local_11c + fVar27;
            } while (local_100 != (float **)0x0);
            local_100 = (float **)0x0;
          }
          ppfVar16 = (float **)(param_1 + 0x13e);
          local_bc = (float **)0x2;
          do {
            pfVar10 = *ppfVar16;
            if ((pfVar10 == (float *)0x0) || (pfVar10[10] != 9.809089e-45)) {
              pfVar10 = (float *)0x0;
            }
            if (pfVar10 != (float *)0x0) {
              uVar24 = *(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca] & 0x8000000f;
              if ((int)uVar24 < 0) {
                uVar24 = (uVar24 - 1 | 0xfffffff0) + 1;
              }
              local_58 = _DAT_00bac7b0;
              uStack_54 = _UNK_00bac7b4;
              uStack_50 = _UNK_00bac7b8;
              uStack_4c = _UNK_00bac7bc;
              uVar13 = 0x10 - uVar24;
              if ((int)uVar24 < 8) {
                uVar13 = uVar24;
              }
              fVar26 = (float)uVar13 * DAT_00baa13c;
              local_38 = fVar26 * DAT_00baa280 - DAT_00baa198;
              local_48._4_4_ = fVar26 + fVar26 + DAT_00baa1f8;
              local_48._0_4_ = local_48._4_4_;
              uStack_40 = local_48._4_4_;
              uStack_3c = 0x3f800000;
              local_34 = local_38;
              local_30 = local_38;
              (**(code **)((int)*pfVar10 + 0x3c))(&local_58,0xffffffff,0xff,0,1);
              if ((int *)pfVar10[0xf0] != (int *)0x0) {
                (**(code **)(*(int *)pfVar10[0xf0] + 0x3c))(&local_58,0xffffffff,0xff,0,1);
              }
              if ((int *)pfVar10[0x14f] != (int *)0x0) {
                (**(code **)(*(int *)pfVar10[0x14f] + 0x3c))(&local_58,0xffffffff,0xff,0,1);
              }
            }
            ppfVar16 = local_108 + 1;
            local_bc = (float **)((int)local_bc + -1);
            local_108 = ppfVar16;
          } while (local_bc != (float **)0x0);
          local_b5 = '\x01';
          local_fc = 0.0;
          local_110 = (float **)((uint)local_110 & 0xffffff00);
          local_bc = (float **)0x0;
        }
      }
LAB_00974ed9:
      local_c1 = '\0';
      if (((param_1[0xd] != 1) && (param_1[0xd] != 3)) || (1 < *(int *)(DAT_00c71678 + 0x26614))) {
        local_ec = (float **)0x0;
        local_f0 = (float **)0x0;
        local_c8 = (float **)0x0;
        local_cc = (float **)0x0;
        ppfVar16 = (float **)FUN_009a12b0(&local_f0,&local_cc,1000,0xbc,param_1);
        local_b4 = ppfVar16;
        if (ppfVar16 == (float **)0x0) {
          piVar17 = (int *)param_1[0x13a];
          if (((piVar17 != (int *)0x0) && (piVar17[0xef] != 0)) &&
             (*(int *)(piVar17[0xef] + 0x28) == 1)) {
            (**(code **)(*piVar17 + 0x28))();
          }
        }
        else {
          local_d4[0] = (float **)((float)ppfVar16[0x11d] * DAT_00baa088);
          ppfVar20 = local_d4[0];
          FUN_0041d520();
          local_bc = ppfVar20;
          ppfVar20 = local_d4[0];
          FUN_0041d540();
          fVar26 = (float)local_c8 -
                   ((float)ppfVar20 * (float)local_cc + (float)local_bc * (float)local_c8) *
                   ((float)local_bc + (float)local_bc);
          FUN_00499d60();
          local_d4[0] = (float **)(fVar26 * DAT_00baa948);
          ppfVar20 = local_d4[0];
          FUN_00407170();
          iVar8 = param_1[0xb];
          if ((iVar8 != 5) && (iVar8 != 10)) {
            local_58 = _DAT_00bac7b0;
            uStack_54 = _UNK_00bac7b4;
            uStack_50 = _UNK_00bac7b8;
            uStack_4c = _UNK_00bac7bc;
            _local_48 = _DAT_00bac9e0;
            local_38 = 0.0;
            local_34 = 0.0;
            local_30 = 0.0;
            FUN_004071f0(&local_58);
            iVar8 = extraout_EDX;
          }
          pfVar10 = ppfVar16[0xef];
          if ((pfVar10 == (float *)0x0) || (pfVar10[10] != 1.401298e-45)) {
            pfVar10 = (float *)0x0;
          }
          if (param_1[0x13a] == 0) {
            piVar17 = (int *)HELPER_0096f310_EntityAttackObjectCandidate
                                       (iVar8,&local_f0,ppfVar20,param_1[0x116],param_1 + 0xd3,
                                        pfVar10,1);
            if (piVar17 != (int *)0x0) {
              pcVar2 = *(code **)(*piVar17 + 0x3c);
              *(undefined *)(piVar17 + 0x139) = 1;
              *(undefined *)(piVar17 + 0x145) = 1;
              (*pcVar2)(local_b0,0xffffffff,0xff,0,1);
              (**(code **)(*piVar17 + 0x40))(0x40e00000);
              piVar17[0xd6] = (int)((float)param_1[0xd6] + DAT_00baa9d0);
              piVar17[0x116] = param_1[0x116];
              if ((*(char *)((int)param_1 + 0x45e) == '\0') &&
                 (*(char *)((int)param_1 + 0x173) == '\0')) {
                uVar6 = 0;
              }
              else {
                uVar6 = 1;
              }
              *(undefined *)((int)piVar17 + 0x45e) = uVar6;
              (**(code **)(*piVar17 + 0xc))();
              FUN_006b5b50();
            }
          }
          else {
            piVar17 = (int *)__RTDynamicCast(param_1[0x13a],0,
                                             &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                             &IsaacRepentancePlus::Entity_Laser::
                                              RTTI_Type_Descriptor,0);
            (**(code **)(*piVar17 + 0x3c))(local_b0,0xffffffff,0xff,0,1);
            (**(code **)(*piVar17 + 0x40))(0x40e00000);
            piVar17[0xd6] = (int)((float)param_1[0xd6] + DAT_00baa9d0);
            piVar17[0x116] = param_1[0x116];
            if ((*(char *)((int)param_1 + 0x45e) == '\0') &&
               (*(char *)((int)param_1 + 0x173) == '\0')) {
              uVar6 = 0;
            }
            else {
              uVar6 = 1;
            }
            *(undefined *)((int)piVar17 + 0x45e) = uVar6;
            iVar8 = piVar17[0x107];
            piVar17[0x106] = (int)local_d4[0];
            piVar17[0x107] = (int)local_d4[0];
            fVar26 = (float)local_d4[0] - DAT_00baa9b4;
            piVar17[0x108] = iVar8;
            piVar17[0x3b] = (int)fVar26;
            piVar17[0xcf] = (int)local_f0;
            piVar17[0xd0] = (int)local_ec;
          }
          pfVar10 = (float *)(*(int *)(DAT_00c71678 + 0x264f8) - (int)local_b4[0xca]);
          if ((int)pfVar10 < 0x96) {
            pfVar10 = local_b4[0x117];
            pfVar12 = (float *)0x1e;
            if (0x1e < (int)pfVar10) {
              pfVar12 = pfVar10;
            }
            local_b4[0x117] = pfVar12;
            local_b4[0x118] = pfVar12;
          }
          local_fc = (float)CONCAT31((int3)((uint)pfVar10 >> 8),1);
          local_b5 = '\x01';
          local_110 = (float **)CONCAT31(local_110._1_3_,1);
          local_c1 = '\x01';
        }
      }
      if (((param_1[0xd] == 1) || ((param_1[0xd] == 3 && (param_1[0xe] != 0x65)))) &&
         (*(char *)(param_1 + 0x145) == '\0')) {
        local_ec = (float **)0x0;
        local_f0 = (float **)0x0;
        local_c8 = (float **)0x0;
        local_cc = (float **)0x0;
        ppiVar21 = (int **)(param_1 + 0x141);
        iVar8 = FUN_009a12b0(&local_f0,&local_cc,3,0x7b,0);
        if (iVar8 == 0) {
          local_bc = (float **)&DAT_00000004;
          do {
            if (*ppiVar21 != (int *)0x0) {
              (**(code **)(**ppiVar21 + 0x28))();
            }
            ppiVar21 = ppiVar21 + 1;
            local_bc = (float **)((int)local_bc + -1);
          } while (local_bc != (float **)0x0);
          piVar17 = (int *)param_1[0xf0];
          if (piVar17 != (int *)0x0) {
            if (((((param_1[0x13a] == 0) || (piVar17[10] != 1000)) || (piVar17[0xb] != 0x32)) ||
                (piVar17[0xc] == 4)) || ((param_1[0xb] != 6 && (param_1[0xb] != 0xf))))
            goto LAB_00975711;
            (**(code **)(*piVar17 + 0x28))();
            piVar17 = extraout_ECX_00;
          }
          FUN_0097f820(piVar17);
        }
        else if (((*ppiVar21 == (int *)0x0) || (param_1[0x142] == 0)) ||
                ((param_1[0x143] == 0 || (param_1[0x144] == 0)))) {
          local_bc = (float **)0x0;
          do {
            ppfVar20 = local_bc;
            ppfVar16 = (float **)(param_1 + (int)local_bc + 0x141);
            local_b4 = ppfVar16;
            if (param_1[(int)local_bc + 0x141] == 0) {
              ppfVar16 = local_c8;
              FUN_00499d60();
              fVar26 = (float)ppfVar16 * DAT_00baa948;
              if (ppfVar20 == (float **)0x0) {
                fVar26 = fVar26 - DAT_00baa8d0;
              }
              else if (ppfVar20 == (float **)0x1) {
                fVar26 = fVar26 - DAT_00baa81c;
              }
              else if (ppfVar20 == (float **)0x2) {
                fVar26 = fVar26 + DAT_00baa81c;
              }
              else if (ppfVar20 == (float **)0x3) {
                fVar26 = fVar26 + DAT_00baa8d0;
              }
              ppfVar16 = (float **)
                         HELPER_0096f310_EntityAttackObjectCandidate
                                   (param_1[0xb],&local_f0,fVar26,param_1[0x116],param_1 + 0xd3,
                                    param_1[0xef],1);
              if (ppfVar16 != (float **)0x0) {
                *(undefined *)(ppfVar16 + 0x139) = 1;
                FUN_0096f070(param_1,1);
                *(undefined *)(ppfVar16 + 0x145) = 1;
                (*(code *)(*ppfVar16)[3])();
                if (*local_b4 != (float *)0x0) {
                  local_d4[0] = local_b4;
                  FUN_004cf210(local_d4);
                }
                *local_b4 = (float *)ppfVar16;
                ppfVar16 = (float **)FUN_004cdcf0(local_b4);
              }
            }
            local_bc = (float **)((int)local_bc + 1);
          } while ((int)local_bc < 4);
          local_fc = (float)((uint)ppfVar16 & 0xffffff00);
          param_1[0x158] = 0;
          local_b5 = '\x01';
          local_110 = (float **)((uint)local_110 & 0xffffff00);
        }
        else {
          ppfVar20 = (float **)0x0;
          local_bc = (float **)0x0;
          ppfVar16 = local_c8;
          FUN_00499d60();
          local_d4[0] = (float **)((float)ppfVar16 * DAT_00baa948);
          fVar26 = DAT_00baa8d0;
          do {
            ppfVar16 = local_d4[0];
            local_b4 = local_d4[0];
            FUN_00407170();
            if (ppfVar20 == (float **)0x0) {
              local_b4 = (float **)((float)ppfVar16 - fVar26);
            }
            else {
              if (ppfVar20 == (float **)0x1) {
                local_b4 = (float **)((float)ppfVar16 - DAT_00baa81c);
                FUN_00682ed0();
                local_84 = _DAT_00bac7d0;
                uStack_80 = _UNK_00bac7d4;
                uStack_7c = _UNK_00bac7d8;
                uStack_78 = _UNK_00bac7dc;
                local_1b4 = 0;
                local_5c = 0;
                local_74 = local_1cc;
                uStack_70 = uStack_1c8;
                uStack_6c = uStack_1c4;
                uStack_68 = uStack_1c0;
                uVar31 = DAT_00baa274;
                uVar28 = DAT_00baa394;
              }
              else if (ppfVar20 == (float **)0x2) {
                local_b4 = (float **)((float)ppfVar16 + DAT_00baa81c);
                FUN_00682ed0();
                local_1e0 = 0x3ec8c8ca;
                local_5c = 0x3ec8c8ca;
                local_84 = _DAT_00bac7d0;
                uStack_80 = _UNK_00bac7d4;
                uStack_7c = _UNK_00bac7d8;
                uStack_78 = _UNK_00bac7dc;
                uVar31 = DAT_00baad44;
                uVar28 = DAT_00baa394;
                local_74 = local_1f8;
                uStack_70 = uStack_1f4;
                uStack_6c = uStack_1f0;
                uStack_68 = uStack_1ec;
              }
              else {
                if (ppfVar20 != (float **)0x3) goto LAB_0097548c;
                local_b4 = (float **)((float)ppfVar16 + fVar26);
                FUN_00682ed0();
                local_20c = 0x3f48c8ca;
                local_5c = 0x3f48c8ca;
                local_84 = _DAT_00bac8f0;
                uStack_80 = _UNK_00bac8f4;
                uStack_7c = _UNK_00bac8f8;
                uStack_78 = _UNK_00bac8fc;
                uVar31 = DAT_00baad44;
                uVar28 = DAT_00baa274;
                local_74 = local_224;
                uStack_70 = uStack_220;
                uStack_6c = uStack_21c;
                uStack_68 = uStack_218;
              }
              local_64 = CONCAT44(uVar28,uVar31);
            }
LAB_0097548c:
            piVar17 = (int *)__RTDynamicCast(param_1[(int)ppfVar20 + 0x141],0,
                                             &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                             &IsaacRepentancePlus::Entity_Laser::
                                              RTTI_Type_Descriptor,0);
            FUN_0096f070(param_1,0);
            (**(code **)(*piVar17 + 0x3c))(&local_84,0xffffffff,0xff,0,1);
            fVar26 = DAT_00baa8d0;
            uVar24 = piVar17[0x107];
            piVar17[0x106] = (int)local_b4;
            piVar17[0x107] = (int)local_b4;
            fVar27 = (float)local_b4 - DAT_00baa9b4;
            piVar17[0x108] = uVar24;
            piVar17[0x3b] = (int)fVar27;
            piVar17[0xcf] = (int)local_f0;
            piVar17[0xd0] = (int)local_ec;
            ppfVar20 = (float **)((int)local_bc + 1);
            local_bc = ppfVar20;
          } while ((int)ppfVar20 < 4);
          local_fc = (float)(uVar24 & 0xffffff00);
          local_b5 = '\x01';
          local_110 = (float **)((uint)local_110 & 0xffffff00);
        }
      }
LAB_00975711:
      puVar11 = (uint *)FUN_00417170(&DAT_00c348d0);
      if (((((*puVar11 | puVar11[1]) == 0) && ((puVar11[2] | puVar11[3]) == 0)) ||
          (local_b5 != '\0')) || (*(char *)((int)param_1 + 0x516) != '\0')) {
        if ((int *)param_1[0x14e] != (int *)0x0) {
          (**(code **)(*(int *)param_1[0x14e] + 0x28))();
        }
      }
      else {
        pfVar10 = (float *)param_1[0x120];
        iVar8 = local_14c[300];
        iVar22 = local_14c[0x121] - (int)pfVar10 >> 3;
        local_cc = (float **)(*(float *)(iVar8 + -8) - *(float *)(iVar8 + -0x10));
        local_c8 = (float **)(*(float *)(iVar8 + -4) - *(float *)(iVar8 + -0xc));
        local_120 = (float **)pfVar10[iVar22 * 2 + -2];
        local_11c = (float **)pfVar10[iVar22 * 2 + -1];
        ppfVar16 = (float **)
                   ((pfVar10[1] - (float)local_11c) * (pfVar10[1] - (float)local_11c) +
                   (*pfVar10 - (float)local_120) * (*pfVar10 - (float)local_120));
        FUN_00435a50();
        local_bc = ppfVar16;
        local_d4[0] = (float **)(local_14c + 0xd3);
        local_f0 = (float **)(pfVar10[iVar22 * 2 + -2] + (float)*local_d4[0]);
        local_ec = (float **)(pfVar10[iVar22 * 2 + -1] + (float)local_14c[0xd4]);
        HELPER_RoomClampedPoint(&local_130,&local_f0,0xc3030000,0xc3030000,0xc3030000);
        uVar24 = 0;
        do {
          HELPER_RoomWrapPoint(&local_f0,&local_130,0xc3020000,0xc3020000,0xc3020000);
          cVar7 = FUN_00a10600(&local_130);
          if (cVar7 != '\0') break;
          local_130 = local_f0;
          uVar24 = uVar24 + 1;
          local_12c = local_ec;
        } while (uVar24 < 4);
        FUN_00a104b0(local_d4[0]);
        param_1 = local_14c;
        piVar17 = (int *)local_14c[0x14e];
        cVar7 = FUN_00a10630(&local_120);
        if (cVar7 == '\0') {
          if (piVar17 != (int *)0x0) {
            (**(code **)(*piVar17 + 0x28))();
          }
        }
        else if (piVar17 == (int *)0x0) {
          fVar25 = (float10)FUN_00a10390();
          local_d4[0] = (float **)(float)fVar25;
          uVar31 = HELPER_0096f310_EntityAttackObjectCandidate
                             (param_1[0xb],&local_130,local_d4[0],param_1[0x116],param_1 + 0xd3,
                              param_1[0xef],1);
          FUN_004cf1d0(uVar31);
          if (param_1[0x14e] != 0) {
            *(undefined *)(param_1[0x14e] + 0x518) = 1;
            *(undefined *)(param_1[0x14e] + 0x4e4) = 1;
            FUN_0096f070(param_1,1);
            FUN_0096d120(param_1);
            piVar17 = param_1;
            if (*(char *)((int)param_1 + 0x515) != '\0') {
              piVar17 = (int *)param_1[0xef];
            }
            FUN_006a92a0(piVar17);
            param_1[0x158] = 0;
            if (param_1[0x14e] != 0) goto LAB_009759d5;
          }
        }
        else {
LAB_009759d5:
          FUN_0096f070(param_1,0);
          uVar31 = FUN_00592200(&local_160);
          iVar8 = param_1[0x14e];
          puVar19 = (undefined4 *)FUN_00417170(uVar31);
          uVar31 = puVar19[1];
          uVar28 = puVar19[2];
          uVar32 = puVar19[3];
          *(undefined4 *)(iVar8 + 0x428) = *puVar19;
          *(undefined4 *)(iVar8 + 0x42c) = uVar31;
          *(undefined4 *)(iVar8 + 0x430) = uVar28;
          *(undefined4 *)(iVar8 + 0x434) = uVar32;
          iVar8 = param_1[0x14e];
          *(float ***)(iVar8 + 0x33c) = local_130;
          *(float ***)(iVar8 + 0x340) = local_12c;
          fVar25 = (float10)FUN_00a10390();
          local_d4[0] = (float **)(float)fVar25;
          FUN_0096ce90(local_d4[0]);
          pppfVar14 = (float ***)(param_1 + 0x14e);
          ppfVar16 = *pppfVar14;
          if ((float)param_1[0x134] <= 0.0) {
            ppfVar20 = (float **)0x0;
          }
          else {
            local_d4[0] = (float **)((float)param_1[0x134] - (float)local_bc);
            local_bc = (float **)0x41200000;
            pppfVar14 = local_d4;
            if ((float)local_d4[0] <= DAT_00baa81c) {
              pppfVar14 = &local_bc;
            }
            ppfVar20 = *pppfVar14;
          }
          ppfVar16[0x134] = (float *)ppfVar20;
          if (*(char *)((int)param_1 + 0x515) != '\0') {
            *(undefined4 *)(param_1[0x14e] + 0x540) = 2;
            pppfVar14 = (float ***)param_1[0x14e];
            *(undefined *)((int)pppfVar14 + 0x171) = 0;
          }
          if (*(char *)((int *)param_1[0x14e] + 0x117) != '\0') {
            pppfVar14 = (float ***)(**(code **)(*(int *)param_1[0x14e] + 0xc))();
          }
          local_fc = (float)((uint)pppfVar14 & 0xffffff00);
          local_b5 = '\x01';
          local_110 = (float **)((uint)local_110 & 0xffffff00);
        }
      }
      if (local_c1 == '\0') {
        FUN_00417170(&DAT_00c34b80);
        cVar7 = FUN_004171b0();
        if ((cVar7 == '\0') || (local_b5 != '\0')) {
          piVar17 = (int *)param_1[0x13a];
          if (piVar17 != (int *)0x0) {
            (**(code **)(*piVar17 + 0x28))();
            piVar17 = extraout_ECX_01;
          }
          FUN_0097f820(piVar17);
        }
        else {
          local_d4[0] = (float **)0x3ecccccd;
          FUN_00a104e0(&local_140,local_d4);
          local_bc = (float **)
                     __RTDynamicCast(param_1[0x13a],0,
                                     &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                     &IsaacRepentancePlus::Entity_Laser::RTTI_Type_Descriptor,0);
          iVar8 = param_1[0x120];
          iVar22 = param_1[0x121] - iVar8 >> 3;
          local_cc = *(float ***)(iVar8 + -8 + iVar22 * 8);
          local_c8 = *(float ***)(iVar8 + -4 + iVar22 * 8);
          fVar25 = (float10)FUN_00a0ff30(iVar8);
          iVar8 = 0;
          local_120 = DAT_00c7b640;
          local_b4 = (float **)(DAT_00c71678 + 0x18300);
          local_12c = (float **)(float)fVar25;
          local_11c = DAT_00c7b644;
          local_d4[0] = (float **)0x41a00000;
          do {
            FUN_00a10350(&local_188,(float)iVar8);
            FUN_00a104e0(&local_10c,local_d4);
            iVar22 = param_1[0x120];
            iVar23 = param_1[0x121] - iVar22 >> 3;
            local_f0 = *(float ***)(iVar22 + -8 + iVar23 * 8);
            local_ec = *(float ***)(iVar22 + -4 + iVar23 * 8);
            ppfVar16 = (float **)FUN_00436090(&local_178,&local_f0,0);
            local_f0 = (float **)*ppfVar16;
            local_ec = (float **)ppfVar16[1];
            FUN_00a10420(local_198,&local_10c);
            FUN_00a10420(&local_104,&local_140);
            local_b4 = (float **)(DAT_00c71678 + 0x18300);
            FUN_007f0780(local_104,local_100);
            cVar7 = FUN_0070be60();
            if (cVar7 != '\0') {
              FUN_00a10450(&local_10c);
            }
            iVar8 = iVar8 + 6;
          } while (iVar8 < 0x168);
          FUN_00a10480(&local_f0,param_1[0x120] + (param_1[0x121] - param_1[0x120] >> 3) * 8 + -0x10
                      );
          FUN_00a0ffc0();
          ppfVar16 = local_bc;
          iVar8 = param_1[0xef];
          local_b4 = (float **)0x40000000;
          if (((iVar8 != 0) && (*(int *)(iVar8 + 0x28) == 0x104)) && (*(int *)(iVar8 + 0x30) == 2))
          {
            fVar25 = (float10)FUN_00a0ff30(&local_cc);
            fVar27 = 0.0;
            local_d4[0] = (float **)(float)fVar25;
            fVar26 = DAT_00baaae0;
            FUN_0042f2a0();
            local_b4 = (float **)(DAT_00baa630 - (DAT_00baa454 - fVar27 / fVar26));
          }
          local_d4[0] = (float **)
                        ((float)local_f0 * (float)local_120 + (float)local_ec * (float)local_11c);
          FUN_00a104e0(local_198,local_d4);
          uVar31 = FUN_00a104e0(&local_188,&local_b4);
          FUN_00a10480(&local_140,uVar31);
          fVar25 = (float10)FUN_00a10390();
          local_b4 = (float **)(float)fVar25;
          if (ppfVar16 == (float **)0x0) {
            cVar7 = FUN_00a10630(&DAT_00c7b640);
            if ((cVar7 == '\0') ||
               (ppfVar16 = (float **)
                           HELPER_0096f310_EntityAttackObjectCandidate
                                     (param_1[0xb],&local_cc,local_b4,param_1[0x116],param_1 + 0xd3,
                                      param_1[0xef],1), local_bc = ppfVar16,
               ppfVar16 == (float **)0x0)) goto LAB_00976046;
            FUN_006b5b50();
            *(undefined *)(ppfVar16 + 0x139) = 1;
            *(undefined *)(ppfVar16 + 0x146) = 1;
            FUN_0096f070(param_1,1);
            FUN_0096d120(param_1);
            piVar17 = param_1;
            if (*(char *)((int)param_1 + 0x515) != '\0') {
              piVar17 = (int *)param_1[0xef];
            }
            FUN_006a92a0(piVar17);
            param_1[0x158] = 0;
          }
          FUN_0096f070(param_1,0);
          uVar31 = FUN_00592200(&local_160);
          ppfVar15 = (float **)FUN_00417170(uVar31);
          ppfVar20 = local_bc;
          pfVar10 = ppfVar15[1];
          pfVar12 = ppfVar15[2];
          pfVar4 = ppfVar15[3];
          ppfVar16[0x10a] = *ppfVar15;
          ppfVar16[0x10b] = pfVar10;
          ppfVar16[0x10c] = pfVar12;
          ppfVar16[0x10d] = pfVar4;
          local_bc[0xcf] = (float *)local_cc;
          local_bc[0xd0] = (float *)local_c8;
          FUN_0096ce90(local_b4);
          if ((float)param_1[0x134] <= 0.0) {
            ppfVar16 = (float **)0x0;
          }
          else {
            local_d4[0] = (float **)((float)param_1[0x134] - (float)local_12c);
            local_bc = (float **)0x41200000;
            pppfVar14 = local_d4;
            if ((float)local_d4[0] <= DAT_00baa81c) {
              pppfVar14 = &local_bc;
            }
            ppfVar16 = *pppfVar14;
          }
          ppfVar20[0x134] = (float *)ppfVar16;
          if (*(char *)((int)param_1 + 0x515) != '\0') {
            ppfVar20[0x150] = (float *)0x2;
            *(undefined *)((int)ppfVar20 + 0x171) = 0;
          }
          if (*(char *)(ppfVar20 + 0x117) != '\0') {
            (*(code *)(*ppfVar20)[3])();
          }
        }
      }
LAB_00976046:
      if (*(char *)((int)param_1 + 0x516) == '\0') {
        local_fc = (float)((uint)local_fc & 0xff);
        if (0 < param_1[0x158]) {
          local_fc = 1.401298e-45;
        }
        local_110 = (float **)CONCAT31(local_110._1_3_,SUB41(local_fc,0));
      }
      else {
        param_1[0x158] = 0;
      }
      FUN_0097fe60(local_110);
      iVar8 = param_1[0xf0];
      iVar22 = 0;
      if (iVar8 != 0) {
        local_ec = *(float ***)(iVar8 + 0x340);
        local_f0 = *(float ***)(iVar8 + 0x33c);
        ppfVar16 = (float **)FUN_00a10420(local_198,iVar8 + 0x34c);
        local_f0 = (float **)*ppfVar16;
        local_ec = (float **)ppfVar16[1];
        iVar22 = FUN_007f0780(local_f0,local_ec);
      }
      iVar8 = param_1[0xb];
      if ((((((iVar8 == 1) || (iVar8 == 6)) || (iVar8 == 9)) ||
           (((iVar8 == 0xb || (iVar8 == 0xc)) || ((iVar8 == 0xe || (iVar8 == 0xf)))))) &&
          ((DAT_00baa2d0 < (float)param_1[0x39] && (param_1[0xd] == 1)))) &&
         ((((NAN((float)param_1[0x134]) || NAN(DAT_00ba9fe4)) !=
            ((float)param_1[0x134] == DAT_00ba9fe4) || ((iVar22 != 0 && (iVar22 != 1)))) &&
          ((*(char *)((int)param_1 + 0x175) == '\0' && (cVar7 = FUN_00652a90(0x20), cVar7 == '\0')))
          ))) {
        uVar24 = param_1[0x121] - param_1[0x120] >> 3;
        if (1 < uVar24) {
          FUN_00a10480(&local_140,param_1[0x120] + -8 + uVar24 * 8);
          fVar25 = (float10)FUN_00a10390();
          local_d4[0] = (float **)(float)fVar25;
          iVar8 = FUN_006eef60();
          ppfVar16 = (float **)
                     (((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baaa78 + (float)local_d4[0]) - DAT_00baa9b4);
          FUN_00682740();
          local_d4[0] = ppfVar16;
          local_bc = (float **)FUN_006eef60();
          FUN_00a10350(&local_140,local_d4[0]);
          iVar8 = FUN_006eef60();
          local_d4[0] = (float **)
                        ((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa81c + DAT_00baa454);
          local_b4 = (float **)FUN_00a104e0(&local_188,local_d4);
          FUN_0067f070(&local_178);
          iVar8 = FUN_006eef60();
          local_d4[0] = (float **)
                        ((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa87c);
          uVar31 = FUN_00a104e0(&local_f0,local_d4);
          uVar31 = FUN_00a10420(&local_cc,uVar31);
          ppfVar16 = (float **)HELPER_Entity_SpawnRelay(1000,0x46,uVar31,local_b4,0,0,local_bc);
          param_1 = local_14c;
          local_d4[0] = ppfVar16;
          if (local_14c[0xf0] != 0) {
            FUN_00407690(local_14c[0xf0] + 0x48);
            FUN_00407e90();
            uVar31 = FUN_0067f010();
            FUN_0040a6e0("Droplets",uVar31);
          }
          ppfVar16[0xd3] = (float *)param_1[0xd3];
          ppfVar16[0xd4] = (float *)param_1[0xd4];
          (*(code *)(*ppfVar16)[0xf])(param_1 + 0x3c,0xffffffff,0xff,0,1);
          (*(code *)(*ppfVar16)[3])();
        }
      }
    }
    if (*(char *)((int)param_1 + 0x45d) != '\0') {
      FUN_00417170(&DAT_00c34ac0);
      cVar7 = FUN_004171b0();
      if ((cVar7 != '\0') && (cVar7 = FUN_006ac710(5,param_1[8]), cVar7 != '\0')) {
        local_cc = *(float ***)(param_1[0x121] + -8);
        local_c8 = *(float ***)(param_1[0x121] + -4);
        ppfVar16 = (float **)FUN_00436090(&local_140,&local_cc,0x41700000);
        local_cc = (float **)*ppfVar16;
        local_c8 = (float **)ppfVar16[1];
        uVar31 = FUN_006eef60();
        uVar32 = 0;
        pTVar30 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
        pTVar29 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uVar28 = 0;
        uVar31 = HELPER_Entity_SpawnRelay(1000,0x35,&local_cc,&DAT_00c7b640,param_1[0xf2],0,uVar31);
        piVar17 = (int *)__RTDynamicCast(uVar31,uVar28,pTVar29,pTVar30,uVar32);
        local_d4[0] = (float **)0x3ecccccd;
        piVar18 = (int *)FUN_00a104e0(&local_140,local_d4);
        piVar17[0x39] = *piVar18;
        piVar17[0x3a] = piVar18[1];
        (**(code **)(*piVar17 + 0xc))();
      }
    }
  }
  iVar8 = param_1[0xef];
  if ((((iVar8 != 0) && (*(char *)(iVar8 + 0x173) != '\0')) && (*(int *)(iVar8 + 0x28) != 1000)) &&
     ((*(undefined *)((int)param_1 + 0x173) = 1, *(int *)(iVar8 + 0x28) == param_1[10] &&
      (*(char *)(iVar8 + 0x172) == '\0')))) {
    (**(code **)(*param_1 + 0x28))();
  }
  if ((*(char *)((int)param_1 + 0x173) != '\0') || (*(char *)((int)param_1 + 0x45e) != '\0')) {
    iVar8 = param_1[0xb];
    if (iVar8 == 2) {
      cVar7 = FUN_004073b0();
      if (cVar7 != '\0') {
        FUN_00452bf0(local_48 + 4);
        local_14 = 1;
        SimpleString::operator=((SimpleString *)(local_48 + 4),"Fade");
        FUN_0040a360(local_48 + 4,0);
        if (param_1[0xf0] != 0) {
          HELPER_0040a380_AnimationActionA(&DAT_00b1c00c,0);
        }
        if ((param_1[0xfb] & 0x1000U) != 0) {
          FUN_0040a720(1);
        }
        local_14 = 0xffffffff;
        FUN_0040d040();
      }
      cVar7 = HELPER_0040a550_AnimationPredicateB(&DAT_00b1a4ec);
      if (cVar7 == '\0') goto LAB_00976e53;
    }
    else if ((iVar8 != 10) && (iVar8 != 4)) {
      fVar26 = (float)param_1[0x39] * _DAT_00baa3dc;
      param_1[0x116] = param_1[0x116] + -1;
      param_1[0x3a] = param_1[0x3a];
      param_1[0x39] = (int)fVar26;
      if (-0x13 < param_1[0x116]) goto LAB_00976e53;
    }
    (**(code **)(*param_1 + 0x28))();
  }
LAB_00976e53:
  if (local_e2 != '\0') {
    FUN_009a0de0();
  }
  if (local_e1 != '\0') {
    FUN_009737b0();
  }
  if ((*(char *)((int)param_1 + 0x45d) == '\0') || (*(char *)((int)param_1 + 0x172) == '\0'))
  goto LAB_00977beb;
  if (local_e2 != '\0') {
    local_d4[0] = (float **)param_1[0x151];
    cVar7 = FUN_007dd460();
    if (((cVar7 == '\0') && (*(char *)((int)param_1 + 0x516) == '\0')) &&
       ((SUB41(local_fc,0) != '\0' ||
        ((param_1[0xef] != 0 && (*(int *)(param_1[0xef] + 0x28) == 2)))))) {
      local_c1 = '\0';
    }
    else {
      local_c1 = '\x01';
    }
    if (local_e1 != '\0') {
      if (local_c1 != '\0') {
        FUN_0096d3f0(param_1 + 0x152,param_1 + 0x154);
      }
      cVar7 = FUN_007dd460();
      if (((cVar7 != '\0') || (*(char *)((int)param_1 + 0x516) != '\0')) || (param_1[0x158] == 0)) {
        uVar31 = FUN_00435c20(&DAT_00c345c0);
        FUN_00417170(uVar31);
        cVar7 = FUN_004171b0();
        if (((cVar7 != '\0') && (local_b5 == '\0')) && (*(char *)((int)param_1 + 0x516) == '\0')) {
          iVar22 = param_1[0x120];
          iVar23 = local_14c[0x121] - iVar22 >> 3;
          iVar8 = iVar23 + -1;
          local_140 = *(float *)(iVar22 + iVar8 * 8);
          local_13c = *(float *)(iVar22 + iVar8 * 8 + 4);
          FUN_00a10480(local_168,iVar22 + -0x10 + iVar23 * 8);
          FUN_00a10030(&local_f0);
          piVar17 = local_14c;
          local_d4[0] = (float **)0x41a00000;
          local_bc = (float **)local_14c[0x138];
          FUN_00a10540(local_d4);
          cVar7 = FUN_0096ce30();
          uVar31 = extraout_ECX_02;
          if (cVar7 != '\0') {
            iVar8 = FUN_006eef60();
            local_bc = (float **)
                       (((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa490 + DAT_00baa3e0) * (float)local_bc);
            iVar8 = FUN_006eef60();
            local_d4[0] = (float **)
                          ((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa1f8 + DAT_00baa3a4);
            FUN_00a10540(local_d4);
            uVar31 = extraout_ECX_03;
          }
          FUN_00435c20(&DAT_00c34850,uVar31,&DAT_00c34c50,uVar31,&DAT_00c348f0,uVar31,&DAT_00c345e0,
                       uVar31,&DAT_00c345d0);
          FUN_00435c20();
          FUN_00435c20();
          FUN_00435c20();
          FUN_00435c20();
          uVar31 = FUN_00592200(local_e0);
          FUN_00435c20(&DAT_00c34b50);
          FUN_00417170(uVar31);
          FUN_00417170(&DAT_00c345c0);
          local_e1 = FUN_004171b0();
          local_12c = (float **)FUN_006eef60();
          local_110 = (float **)piVar17[0xf2];
          local_d4[0] = (float **)0x3f333333;
          uVar31 = FUN_004171d0(&local_f0);
          FUN_00a10480(local_1a8,uVar31);
          FUN_0067f070(&local_188);
          iVar8 = FUN_006eef60();
          local_d4[0] = (float **)
                        ((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                        DAT_00ba9ff4);
          FUN_00a104e0(&local_178,local_d4);
          local_b4 = (float **)0x0;
          local_d4[0] = (float **)((float)local_14c[0xdc] - DAT_00baa7a4);
          pppfVar14 = local_d4;
          if ((float)local_d4[0] <= DAT_00ba9fe4) {
            pppfVar14 = &local_b4;
          }
          uVar31 = FUN_00a104e0(&local_120,pppfVar14);
          uVar31 = FUN_00a10420(&local_10c,uVar31);
          uVar28 = 0x24;
          if (local_e1 == '\0') {
            uVar28 = 0x21;
          }
          ppfVar16 = (float **)
                     HELPER_Entity_SpawnRelay(2,uVar28,uVar31,&local_f0,local_110,0,local_12c);
          local_b4 = ppfVar16;
          FUN_00676150(local_160,iStack_15c,iStack_158,ppfStack_154);
          param_1 = local_14c;
          pcVar2 = (code *)(*ppfVar16)[0xf];
          uVar31 = FUN_0096ee00(local_b0);
          (*pcVar2)(uVar31,0xffffffff,0xff,0,1);
          ppfVar16 = local_b4;
          (*(code *)(*local_b4)[0x10])(param_1[0xe2]);
          FUN_00676120(local_bc);
          ppfVar16[0x5a] = (float *)((uint)ppfVar16[0x5a] | 0x80000);
          ppfVar16[0x5b] = ppfVar16[0x5b];
          local_d4[0] = (float **)FUN_0096ce70();
          pfVar10 = *local_d4[0];
          if (pfVar10 != local_d4[0][1]) {
            do {
              FUN_00431570(*pfVar10);
              pfVar10 = pfVar10 + 1;
              param_1 = local_14c;
            } while (pfVar10 != local_d4[0][1]);
          }
        }
      }
    }
    if (local_c1 == '\0') {
LAB_0097777a:
      ppiVar21 = (int **)(param_1 + 0x14c);
      local_bc = (float **)0x2;
      do {
        if (*ppiVar21 != (int *)0x0) {
          (**(code **)(**ppiVar21 + 0x28))();
        }
        ppiVar21 = ppiVar21 + 1;
        local_bc = (float **)((int)local_bc + -1);
      } while (local_bc != (float **)0x0);
    }
    else {
      FUN_00417170(&DAT_00c34850);
      cVar7 = FUN_004171b0();
      if (cVar7 == '\0') goto LAB_0097777a;
      local_11c = (float **)0x0;
      local_120 = (float **)0x0;
      local_ec = (float **)0x0;
      local_f0 = (float **)0x0;
      cVar7 = FUN_007dd460();
      if (cVar7 == '\0') {
        param_1[0x156] = 0x7f800000;
        FUN_0096d160(&local_120,&local_f0);
        fVar25 = (float10)FUN_00a10390();
        local_b4 = (float **)(float)fVar25;
        ppfVar16 = local_b4;
LAB_00977554:
        param_1[0x157] = (int)ppfVar16;
        FUN_00a10350(local_168,ppfVar16);
        local_d4[0] = (float **)0x3e800000;
        FUN_00a104e0(local_1a8,local_d4);
        uVar31 = FUN_00a104e0(&local_188,param_1 + 0xdc);
        FUN_00a104b0(uVar31);
        local_bc = (float **)0x0;
        do {
          piVar17 = param_1 + (int)(local_bc + 0x53);
          if (param_1[(int)(local_bc + 0x53)] == 0) {
            uVar31 = HELPER_0096f310_EntityAttackObjectCandidate
                               (param_1[0xb],&local_120,0,param_1[0x116],param_1 + 0xd3,
                                param_1[0xef],1);
            FUN_004cf1d0(uVar31);
            ppfVar16 = local_bc;
            if (*piVar17 != 0) {
              *(undefined *)(*piVar17 + 0x518) = 1;
              *(undefined *)(*piVar17 + 0x4e4) = 1;
              FUN_0096f070(param_1,1);
              FUN_0096d120(param_1);
              piVar18 = param_1;
              if (*(char *)((int)param_1 + 0x515) != '\0') {
                piVar18 = (int *)param_1[0xef];
              }
              FUN_006a92a0(piVar18);
              *(float *)(*piVar17 + 0x4e0) = (float)param_1[0x138] * DAT_00baa3a4;
              FUN_0097fc10();
              ppfVar16 = local_bc;
              if (*piVar17 != 0) goto LAB_00977677;
            }
          }
          else {
LAB_00977677:
            FUN_0096f070(param_1,0);
            FUN_00435c20(&DAT_00c34b80);
            uVar31 = FUN_00592200(local_180);
            iVar8 = *piVar17;
            puVar19 = (undefined4 *)FUN_00417170(uVar31);
            ppfVar16 = local_bc;
            uVar31 = puVar19[1];
            uVar28 = puVar19[2];
            uVar32 = puVar19[3];
            *(undefined4 *)(iVar8 + 0x428) = *puVar19;
            *(undefined4 *)(iVar8 + 0x42c) = uVar31;
            *(undefined4 *)(iVar8 + 0x430) = uVar28;
            *(undefined4 *)(iVar8 + 0x434) = uVar32;
            iVar8 = param_1[(int)(local_bc + 0x53)];
            *(float ***)(iVar8 + 0x33c) = local_120;
            *(float ***)(iVar8 + 0x340) = local_11c;
            fVar26 = DAT_00baa9b4;
            if (local_bc == (float **)0x0) {
              fVar26 = DAT_00baae50;
            }
            FUN_0096ce90(fVar26 + (float)local_b4);
            if (*(char *)((int)param_1 + 0x515) != '\0') {
              *(undefined4 *)(param_1[(int)(ppfVar16 + 0x53)] + 0x540) = 2;
              *(undefined *)(param_1[(int)(ppfVar16 + 0x53)] + 0x171) = 0;
            }
            if (*(char *)((int *)param_1[(int)(ppfVar16 + 0x53)] + 0x117) != '\0') {
              (**(code **)(*(int *)param_1[(int)(ppfVar16 + 0x53)] + 0xc))();
            }
          }
          local_bc = (float **)((int)ppfVar16 + 1);
        } while (local_bc < (float **)0x2);
        goto LAB_009777b9;
      }
      cVar7 = FUN_007dd460();
      if (cVar7 == '\0') {
        fVar26 = (float)param_1[0x151];
      }
      else {
        fVar26 = (float)param_1[0x156];
        FUN_00a155c0();
      }
      fVar27 = DAT_00ba9fe4;
      local_c1 = cVar7 != '\0';
      param_1[0x156] = (int)fVar26;
      if (fVar27 < fVar26) {
        FUN_0096d160(&local_120,&local_f0);
        fVar25 = (float10)FUN_00a10390();
        local_b4 = (float **)(float)fVar25;
        ppfVar16 = local_b4;
        if (local_c1 != '\0') {
          FUN_006827a0();
          ppfVar16 = (float **)param_1[0x157];
          FUN_00682a50();
        }
        goto LAB_00977554;
      }
      ppiVar21 = (int **)(param_1 + 0x14c);
      local_bc = (float **)0x2;
      do {
        if (*ppiVar21 != (int *)0x0) {
          (**(code **)(**ppiVar21 + 0x28))();
        }
        ppiVar21 = ppiVar21 + 1;
        local_bc = (float **)((int)local_bc + -1);
      } while (local_bc != (float **)0x0);
      local_bc = (float **)0x0;
    }
    param_1[0x156] = 0x7f800000;
  }
LAB_009777b9:
  if ((1 < *(int *)(DAT_00c71678 + 0x264f8) - param_1[0xca]) && (0 < param_1[0x158])) {
    iVar8 = param_1[0x120];
    uVar24 = param_1[0x121] - iVar8 >> 3;
    if (1 < uVar24) {
      local_104 = *(undefined4 *)(iVar8 + -8 + uVar24 * 8);
      local_100 = *(float ***)(iVar8 + -4 + uVar24 * 8);
      FUN_00a10480(&local_140,param_1[0x120] + uVar24 * 8 + -0x10);
      FUN_00a10030(&local_10c);
      local_d4[0] = (float **)0x42200000;
      FUN_00a104e0(&local_140,local_d4);
      uVar31 = FUN_0067f070(&local_178);
      iVar8 = FUN_006eef60();
      local_d4[0] = (float **)
                    ((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa900);
      uVar31 = FUN_004171d0(uVar31);
      FUN_00a10420(&local_f0,uVar31);
      param_1 = local_14c;
      FUN_00417170(&DAT_00c34ba0);
      cVar7 = FUN_004171b0();
      if (cVar7 != '\0') {
        local_bc = DAT_00baacb4;
        local_12c = *(float ***)(DAT_00c71678 + 0x18300);
        local_114 = DAT_00c7b640;
        local_110 = DAT_00c7b644;
        local_b4 = (float **)0x0;
        if (local_12c[0x499] != (float *)0x0) {
          do {
            fVar26 = local_12c[0x497][(int)local_b4];
            cVar7 = HELPER_Entity_DamageFilter(0);
            if (((cVar7 != '\0') && (cVar7 = FUN_00417430(0x20000010,0), cVar7 == '\0')) &&
               (fVar26 != (float)param_1[0xef])) {
              local_140 = *(float *)((int)fVar26 + 0x33c);
              local_13c = *(float *)((int)fVar26 + 0x340);
              FUN_00a10480(&local_150,&local_104);
              if (DAT_00ba9fe4 < (float)local_108 * (float)local_14c + local_150 * local_10c) {
                fVar25 = (float10)FUN_00a0fea0();
                local_d4[0] = (float **)(float)fVar25;
                if ((float)local_d4[0] < (float)local_bc) {
                  local_110 = *(float ***)((int)fVar26 + 0x340);
                  local_114 = *(float ***)((int)fVar26 + 0x33c);
                  local_bc = local_d4[0];
                }
              }
            }
            local_b4 = (float **)((int)local_b4 + 1);
          } while (local_b4 < local_12c[0x499]);
        }
        cVar7 = FUN_00a10630(&DAT_00c7b640);
        if (cVar7 != '\0') {
          FUN_00a10420(&local_140,extraout_ECX_04);
          FUN_00a10480(&local_178,&local_104);
          fVar25 = (float10)FUN_00a0fea0();
          ppfVar16 = (float **)FUN_00a10100(local_d8,(float)fVar25);
          local_f0 = (float **)*ppfVar16;
          local_ec = (float **)ppfVar16[1];
        }
      }
      fVar25 = (float10)FUN_00a10390(3,param_1 + 0xd3,param_1[0xef],1);
      piVar17 = (int *)HELPER_0096f310_EntityAttackObjectCandidate
                                 (param_1[0xb],&local_104,(float)fVar25);
      if (piVar17 != (int *)0x0) {
        *(undefined *)(piVar17 + 0x139) = 1;
        FUN_0096f070(param_1,1);
        *(undefined *)(piVar17 + 0x146) = 1;
        FUN_00435c20(&DAT_00c34600,extraout_ECX_05,&DAT_00c34860);
        FUN_00435c20();
        uVar31 = FUN_00592200(local_278);
        piVar18 = (int *)FUN_00417170(uVar31);
        iVar8 = *piVar18;
        iVar22 = piVar18[1];
        iVar23 = piVar18[2];
        iVar5 = piVar18[3];
        piVar17[0x116] = 3;
        piVar17[0x10a] = iVar8;
        piVar17[0x10b] = iVar22;
        piVar17[0x10c] = iVar23;
        piVar17[0x10d] = iVar5;
        FUN_006a92a0(param_1[0xef]);
        fVar25 = (float10)FUN_00a0fea0();
        piVar17[0x134] = (int)(float)fVar25;
        piVar17[0x158] = param_1[0x158] + -1;
        (**(code **)(*piVar17 + 0xc))();
        FUN_009568e0(0x86,2,0,0x3f800000);
      }
    }
    param_1[0x158] = 0;
  }
LAB_00977beb:
  if (((0 < param_1[0x116]) && (*(char *)((int)param_1 + 0x175) == '\0')) &&
     (iVar8 = param_1[0x116] + -1, param_1[0x116] = iVar8, iVar8 < 1)) {
    if (((param_1[0xb] == 6) || (param_1[0xb] == 0xf)) &&
       ((*(char *)((int)param_1 + 0x45e) == '\0' && (*(char *)((int)param_1 + 0x173) == '\0')))) {
      FUN_009568e0(0x118,2,0,0x3f800000);
    }
    cVar7 = FUN_0096ce30();
    if (((cVar7 == '\0') || (iVar8 = param_1[0xb], iVar8 == 0xd)) ||
       (((iVar8 == 6 || (iVar8 == 0xf)) && (param_1[0xd] != 1)))) {
      *(undefined *)((int)param_1 + 0x173) = 1;
    }
    else {
      *(undefined *)((int)param_1 + 0x45e) = 1;
      param_1[0x116] = 0;
    }
  }
  param_1[0x108] = param_1[0x107];
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

