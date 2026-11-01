/* Local J460 decompiler output.
 * VA: 0x00541ce0
 * Entry: 00541ce0
 * Dispatcher: 0x006c2990
 * Types: 290
 * Identities: 290.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00542682; instructions=573
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=290; identities=290.0.0; dispatcher=0x006c2990;
   end=0x00542682; instructions=573 */

void __fastcall AI_00541ce0(float *param_1)

{
  code *pcVar1;
  longlong lVar2;
  longlong lVar3;
  float *pfVar4;
  char cVar5;
  float *pfVar6;
  uint uVar7;
  float fVar8;
  float *pfVar9;
  int *piVar10;
  float fVar11;
  undefined4 uVar12;
  int iVar13;
  undefined4 extraout_ECX;
  uint uVar14;
  uint uVar15;
  uint uVar16;
  int unaff_EDI;
  bool bVar17;
  ulonglong uVar18;
  float **ppfVar19;
  undefined *puVar20;
  int *piVar21;
  float *pfStack_1d0;
  float *pfStack_1cc;
  float *local_1c8;
  undefined4 *puStack_1c4;
  char *local_1c0;
  char *local_1bc;
  float local_1ac;
  float local_1a8;
  float local_1a0;
  float local_19c;
  int iStack_198;
  undefined4 *local_194;
  float *local_190;
  float *pfStack_18c;
  uint uStack_188;
  float local_184;
  float local_180;
  int iStack_17c;
  float *pfStack_174;
  undefined4 uStack_170;
  float fStack_168;
  float *local_14c;
  float *local_148;
  char local_144 [4];
  undefined8 uStack_140;
  undefined4 uStack_138;
  float fStack_134;
  float fStack_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
  undefined8 uStack_120;
  undefined4 uStack_118;
  float fStack_e4;
  undefined4 uStack_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  undefined auStack_d4 [16];
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)&local_1ac;
  local_14c = param_1;
  if (param_1[0x2d9] == 0.0) {
    param_1[0x2d9] = 5.605194e-45;
    FUN_00aef12b();
    return;
  }
  local_1c0 = (char *)((int)&uStack_140 + 4);
  local_1bc = (char *)0x0;
  puStack_1c4 = (undefined4 *)0x541d40;
  pfVar6 = (float *)FUN_006bec40();
  pfVar9 = param_1 + 0xcf;
  local_1bc = (char *)0x1;
  local_1ac = pfVar6[1] - param_1[0xd0];
  local_1a8 = *pfVar6 - *pfVar9;
  local_1c0 = (char *)0x541d93;
  local_184 = local_1a8;
  local_180 = local_1ac;
  local_148 = pfVar9;
  FUN_006d8e40();
  fVar8 = param_1[0x2d9];
  if (fVar8 != 5.605194e-45) {
    if (fVar8 == 2.242078e-44) {
      local_1bc = (char *)0x0;
      local_1c0 = "j";
      FUN_006d8b20();
      local_1bc = (char *)0x0;
      local_1c0 = "Charge";
      puStack_1c4 = (undefined4 *)0x541fb5;
      FUN_0040a380();
      if ((param_1[0x1f] == 0.0) || (*(char *)(param_1 + 0x23) == '\0')) {
        local_1bc = (char *)0x541fcd;
        uVar7 = FUN_006eef60();
        param_1[0x104] = 0.0;
        param_1[0x2d9] = (float)(uVar7 & 1 | 8);
        fVar8 = local_1a8;
        fVar11 = local_1ac;
        if (param_1[0x3c7] != -NAN) {
          local_1bc = (char *)((int)&uStack_140 + 4);
          local_1c0 = (char *)0x541ff8;
          pfVar6 = (float *)FUN_006d8d30();
          local_184 = *pfVar6 - *pfVar9;
          local_180 = pfVar6[1] - param_1[0xd0];
          fVar8 = local_184;
          fVar11 = local_180;
          if (DAT_00baa9d0 <= local_180 * local_180 + local_184 * local_184) {
            param_1[0x2d9] = 1.261169e-44;
          }
          else {
            param_1[0x2d9] = 1.121039e-44;
          }
        }
        if (((NAN(fVar8) || NAN(DAT_00c7b640)) == (fVar8 == DAT_00c7b640)) ||
           ((NAN(fVar11) || NAN(DAT_00c7b644)) == (fVar11 == DAT_00c7b644))) {
          *(bool *)(param_1 + 0x52) = fVar8 < 0.0;
        }
        local_1bc = (char *)((int)&uStack_140 + 4);
        local_1c0 = (char *)0x542090;
        pfVar9 = (float *)FUN_00a10030();
        param_1[0xcd] = *pfVar9;
        param_1[0xce] = pfVar9[1];
        local_1bc = (char *)0x3f800000;
        local_1c0 = (char *)0x0;
        puStack_1c4 = (undefined4 *)0x2;
        local_1c8 = (float *)0x3f800000;
        pfStack_1cc = (float *)((param_1[0x2d9] != 1.121039e-44) + 0xb);
        pfStack_1d0 = (float *)0x5420cc;
        FUN_006d6ba0();
      }
    }
    else if (fVar8 == 1.121039e-44) {
      local_1bc = (char *)0x0;
      local_1c0 = "Shoot1";
      puStack_1c4 = (undefined4 *)0x5420e9;
      FUN_0040a380();
      if ((param_1[0x1f] == 0.0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x2d9] = 5.605194e-45;
      }
      local_1bc = (char *)0x542114;
      iVar13 = FUN_006ac760();
      if (iVar13 != 0) {
        local_1bc = "Shoot";
        local_1c0 = (char *)0x542129;
        cVar5 = FUN_0040b090();
        if (cVar5 != '\0') {
          local_1bc = "Stop";
          local_1c0 = (char *)0x54213e;
          cVar5 = FUN_0040b090();
          if (cVar5 == '\0') {
            local_1bc = (char *)0x542152;
            local_1bc = (char *)AI_0043ef30();
            local_1c0 = (char *)0x41200000;
            puStack_1c4 = &DAT_00c7b640;
            local_1c8 = (float *)0x1;
            pfStack_1cc = (float *)0x542169;
            FUN_006ccdd0();
          }
        }
      }
    }
    else if (fVar8 == 1.261169e-44) {
      local_1bc = (char *)0x0;
      local_1c0 = "Shoot2";
      puStack_1c4 = (undefined4 *)0x542186;
      FUN_0040a380();
      if ((param_1[0x1f] == 0.0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x2d9] = 5.605194e-45;
      }
      local_1bc = "Shoot";
      local_1c0 = (char *)0x5421ac;
      cVar5 = FUN_0040b090();
      if (cVar5 != '\0') {
        local_1bc = "Stop";
        local_1c0 = (char *)0x5421c1;
        cVar5 = FUN_0040b090();
        if ((cVar5 == '\0') &&
           (pfVar6 = (float *)((int)param_1[0xe9] - (int)param_1[0xe8]), local_190 = pfVar6,
           0 < (int)pfVar6)) {
          fVar8 = param_1[0x104];
          do {
            local_19c = (float)(int)fVar8 * DAT_00baa8a0 * param_1[0xce] + pfVar9[1];
            local_1a0 = (float)(int)fVar8 * DAT_00baa8a0 * param_1[0xcd] + *pfVar9;
            local_1bc = (char *)0x54222c;
            local_190 = pfVar6;
            local_1c0 = (char *)FUN_006eef60();
            local_1bc = (char *)0x0;
            puStack_1c4 = (undefined4 *)0x0;
            pfStack_1cc = &DAT_00c7b640;
            pfStack_1d0 = &local_1a0;
            local_1c8 = param_1;
            piVar10 = (int *)FUN_006fe410(1000,0x16);
            piVar10[0x39] = 0x3f800000;
            piVar10[0x3a] = 0x3f800000;
            local_1bc = (char *)0x542269;
            (**(code **)(*piVar10 + 0xc))();
            iVar13 = *(int *)(DAT_00c71678 + 0x18300);
            if (*(int *)(*(int *)(*(int *)(iVar13 + 4) + 0x10) + 0x48) - 9U < 4) {
              local_1c8 = &local_1a0;
              local_1bc = (char *)0x0;
              local_1c0 = (char *)0x0;
              puStack_1c4 = (undefined4 *)0x0;
              pfStack_1cc = &fStack_134;
              pfStack_1d0 = (float *)0x5422b8;
              FUN_00812f50();
              if (((NAN(fStack_134) || NAN(local_1a0)) == (fStack_134 == local_1a0)) ||
                 ((NAN(fStack_130) || NAN(local_19c)) == (fStack_130 == local_19c)))
              goto LAB_005422e4;
LAB_005425f7:
              bVar17 = true;
            }
            else {
              if ((((*(float *)(iVar13 + 0x14) + 0.0 <= local_1a0) &&
                   (local_1a0 <= *(float *)(iVar13 + 0x1c) - 0.0)) &&
                  (*(float *)(iVar13 + 0x18) + 0.0 <= local_19c)) &&
                 (local_19c <= *(float *)(iVar13 + 0x20) - 0.0)) goto LAB_005425f7;
LAB_005422e4:
              bVar17 = false;
            }
            if (bVar17) {
              local_1bc = (char *)0x5422f3;
              iVar13 = FUN_006eef60();
              uStack_c4 = 0;
              uStack_c0 = 0;
              uStack_bc = 0;
              fStack_12c = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                           DAT_00ba9ff4;
              fStack_128 = fStack_12c * param_1[0xce];
              fStack_12c = fStack_12c * param_1[0xcd];
              fStack_128 = fStack_128 + fStack_128;
              fStack_12c = fStack_12c + fStack_12c;
              fStack_e4 = _DAT_00bac7b0;
              uStack_e0 = _UNK_00bac7b4;
              uStack_dc = _UNK_00bac7b8;
              uStack_d8 = _UNK_00bac7bc;
              auStack_d4 = ZEXT816(0);
              local_1bc = (char *)0x542380;
              iVar13 = FUN_006eef60();
              fStack_168 = (float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baaddc;
              fStack_124 = local_1a0 - param_1[0xcd] * DAT_00baa784;
              uStack_120 = CONCAT44(uStack_120._4_4_,local_19c - param_1[0xce] * DAT_00baa784);
              local_1bc = (char *)0x5423f9;
              local_1bc = (char *)FUN_006eef60();
              local_1c0 = (char *)0x2;
              puStack_1c4 = (undefined4 *)0x0;
              local_1c8 = &fStack_12c;
              pfStack_1cc = &fStack_124;
              pfStack_1d0 = (float *)0x2;
              piVar10 = (int *)FUN_00428b20(1000);
              local_1bc = (char *)0x1;
              pfStack_1cc = &fStack_e4;
              local_1c0 = (char *)0x0;
              puStack_1c4 = (undefined4 *)0xff;
              local_1c8 = (float *)0xffffffff;
              pfStack_1d0 = (float *)0x54243c;
              (**(code **)(*piVar10 + 0x3c))();
              piVar10[0x37] = 0;
              piVar10[0x38] = iStack_17c;
              piVar10[0xd6] = 0x41200000;
              pfStack_1d0 = (float *)0x542463;
              iVar13 = FUN_006eef60();
              piVar10[0x3b] =
                   (int)((float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baab30);
              pfStack_1d0 = (float *)0x542498;
              local_180 = (float)FUN_006eef60();
              iStack_17c = DAT_00c71678;
              local_1c0 = (char *)0x0;
              local_190 = (float *)0x7;
              pfStack_1d0 = &local_180;
              local_19c = 1.401298e-42;
              pfVar6 = &DAT_00c7b640;
              puVar20 = &stack0xfffffe4c;
              ppfVar19 = &local_190;
              FUN_008646e0(&local_19c,ppfVar19,puVar20,&DAT_00c7b640,0,&local_1c0);
              fVar8 = local_1ac;
              pfVar9 = pfVar6;
              if (1 < *(int *)(DAT_00c71678 + 0x26614)) {
                piVar10 = *(int **)(DAT_00c71678 + 0x26620);
                piVar21 = piVar10;
                fVar11 = (float)FUN_006eef60();
                uStack_140 = DAT_00b1f66c;
                local_1c8 = (float *)DAT_00b1f674;
                uStack_138 = DAT_00b1f674;
                pfVar9 = pfVar6;
                if (unaff_EDI == 5) {
                  if ((uint)fVar8 < 0x12d) {
                    if (fVar8 == 4.203895e-43) {
                      while ((pfVar6 == (float *)0x0 ||
                             (pfVar9 = pfVar6, cVar5 = (**(code **)(*piVar10 + 0x24))(pfVar6),
                             cVar5 != '\0'))) {
                        if (fVar11 == 0.0) {
                          FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                          pcVar1 = (code *)swi(3);
                          (*pcVar1)(ppfVar19,puVar20,pfVar6);
                          return;
                        }
                        uVar7 = (uint)fVar11 >> ((byte)uStack_140 & 0x1f) ^ (uint)fVar11;
                        uVar7 = uVar7 << ((byte)((ulonglong)uStack_140 >> 0x20) & 0x1f) ^ uVar7;
                        fVar11 = (float)(uVar7 >> ((byte)local_1c8 & 0x1f) ^ uVar7);
                        uVar12 = FUN_00734180(fVar11,0x19,10,10,1);
                        uStack_120 = DAT_00b1f66c;
                        uStack_118 = DAT_00b1f674;
                        fStack_124 = fVar11;
                        pfVar6 = (float *)FUN_00865340(&fStack_124,uVar12,1,1,0);
                      }
                    }
                    else {
                      if (fVar8 == 9.809089e-44) {
                        local_1a8 = (float)((uint)pfVar6 >> 0xb);
                        do {
                          if (pfVar6 != (float *)0x0) {
                            pcVar1 = *(code **)(*piVar10 + 0x28);
                            pfVar9 = pfVar6;
                            uVar12 = FUN_00734a80(pfVar6,0);
                            piVar10 = piVar21;
                            cVar5 = (*pcVar1)(uVar12);
                            piVar21 = piVar10;
                            if (cVar5 == '\0') goto LAB_005427b6;
                          }
                          if (fVar11 == 0.0) {
                            FUN_00a112c0(0x10,"RNG Seed is zero!\n");
                            pcVar1 = (code *)swi(3);
                            (*pcVar1)(ppfVar19,puVar20,pfVar6);
                            return;
                          }
                          uVar7 = (uint)fVar11 >> ((byte)uStack_140 & 0x1f) ^ (uint)fVar11;
                          uVar7 = uVar7 << ((byte)((ulonglong)uStack_140 >> 0x20) & 0x1f) ^ uVar7;
                          fVar11 = (float)(uVar7 >> ((byte)local_1c8 & 0x1f) ^ uVar7);
                          uVar7 = FUN_00734900(fVar11);
                          pfVar6 = (float *)(uVar7 | ((uint)local_1a8 & 1) << 0xb);
                        } while( true );
                      }
                      if (fVar8 == 1.401298e-43) {
                        if ((pfVar6 == (float *)0x19) ||
                           (((local_190 = pfVar6, FUN_004288a0(&fStack_130,&local_190),
                             *(char *)((int)fStack_128 + 0xd) == '\0' &&
                             (*(int *)((int)fStack_128 + 0x10) <= (int)pfVar6)) &&
                            (fStack_128 != (float)piVar10[8])))) {
                          bVar17 = false;
                        }
                        else {
                          bVar17 = true;
                        }
                        if ((pfVar6 == (float *)0x0) || (bVar17)) {
                          pfVar9 = (float *)(**(code **)(*piVar10 + 0x84))(0);
                        }
                      }
                    }
                  }
                  else if (fVar8 == 4.904545e-43) {
                    while ((pfVar6 == (float *)0x0 ||
                           (cVar5 = (**(code **)(*piVar10 + 0x2c))(pfVar6), pfVar9 = pfVar6,
                           cVar5 != '\0'))) {
                      pfVar6 = (float *)FUN_00733ca0(0);
                    }
                  }
                }
              }
LAB_005427b6:
              local_1c8 = (float *)FUN_006f0090(unaff_EDI,0);
              if (local_1c8 != (float *)0x0) {
                uVar18 = FUN_00a68490();
                pfVar4 = local_1c8;
                local_1a8 = (float)(uVar18 >> 0x20);
                lVar2 = (uVar18 & 0xffffffff) * 0x431bde82;
                local_1bc = (char *)((ulonglong)lVar2 >> 0x20);
                lVar3 = (ulonglong)(uint)local_1a8 * 0xd7b634db +
                        ((uVar18 & 0xffffffff) * 0xd7b634db >> 0x20);
                uVar15 = (uint)((ulonglong)lVar3 >> 0x20);
                uVar7 = (int)local_1bc + (uint)CARRY4((uint)lVar2,(uint)lVar3);
                lVar2 = (ulonglong)(uint)local_1a8 * 0x431bde82 +
                        (ulonglong)CONCAT14(CARRY4(uVar15,uVar7),uVar15 + uVar7);
                uStack_188 = (uint)((ulonglong)lVar2 >> 0x20);
                pfVar6 = local_1c8 + 0xf2;
                uVar7 = (uint)lVar2 >> 0x12 | uStack_188 * 0x4000;
                uStack_188 = uStack_188 >> 0x12;
                local_1c8[0xd] = 0.0;
                local_1c8[0xe] = 0.0;
                if (*pfVar6 != 0.0) {
                  pfStack_18c = pfVar6;
                  FUN_004cf210(&pfStack_18c);
                }
                fVar8 = *pfVar4;
                *pfVar6 = 0.0;
                pfVar4[0xcf] = (float)pfStack_1d0;
                pfVar4[0xd0] = (float)pfStack_1cc;
                pfVar4[0xd8] = DAT_00c7b640;
                pfVar4[0xd9] = DAT_00c7b644;
                (**(code **)((int)fVar8 + 4))(unaff_EDI,local_1ac,pfVar9,local_19c);
                iVar13 = iStack_198;
                fVar8 = *(float *)(*(int *)(iStack_198 + 0x18300) + 0x1214);
                *(int *)(*(int *)(iStack_198 + 0x18300) + 0x1214) = (int)fVar8 + 1;
                pfVar4[8] = fVar8;
                FUN_00418500(pfVar4);
                cVar5 = FUN_007078f0(pfVar4);
                if (cVar5 != '\0') {
                  FUN_007079c0(pfVar4,extraout_ECX);
                }
                if ((*(char *)((int)pfVar4 + 0x172) != '\0') &&
                   (*(int *)(iVar13 + 0x67758) != *(int *)(iVar13 + 0x6775c))) {
                  local_148 = (float *)pfVar4[0xb];
                  pfVar9 = (float *)pfVar4[10];
                  local_14c = pfVar9;
                  FUN_009e24a0(&puStack_1c4,&local_14c);
                  if (puStack_1c4 == *(undefined4 **)(iVar13 + 0x67780)) {
                    uStack_170 = 0xffffffff;
                    pfStack_174 = pfVar9;
                    puStack_1c4 = (undefined4 *)FUN_009e24a0(&fStack_134,&pfStack_174);
                    puStack_1c4 = (undefined4 *)*puStack_1c4;
                    if (puStack_1c4 == *(undefined4 **)(iVar13 + 0x67780)) goto LAB_00542a21;
                  }
                  uVar15 = 0;
                  piVar10 = (int *)(DAT_00c71678 + 0x1baa8);
                  if (*(int *)(DAT_00c71678 + 0x1baac) - *piVar10 >> 2 != 0) {
                    do {
                      if (piVar10[1] - *piVar10 >> 2 == 0) {
                        FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
                      }
                      FUN_009e0680(6,pfVar4,&pfStack_1d0,&DAT_00c7b640);
                      uVar15 = uVar15 + 1;
                      piVar10 = (int *)(DAT_00c71678 + 0x1baa8);
                    } while (uVar15 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) - *piVar10 >> 2));
                  }
                }
LAB_00542a21:
                uVar18 = FUN_00a68490();
                uVar15 = (uint)(uVar18 >> 0x20);
                lVar2 = (uVar18 & 0xffffffff) * 0x431bde82;
                local_1a8 = (float)((ulonglong)lVar2 >> 0x20);
                lVar3 = (ulonglong)uVar15 * 0x431bde82;
                local_1bc = (char *)lVar3;
                uVar18 = (ulonglong)uVar15 * 0xd7b634db +
                         ((uVar18 & 0xffffffff) * 0xd7b634db >> 0x20);
                uVar16 = (uint)(uVar18 >> 0x20);
                lVar2 = lVar2 + (uVar18 & 0xffffffff);
                iStack_198 = (int)lVar2;
                uVar15 = (uint)((ulonglong)lVar2 >> 0x20);
                lVar3 = lVar3 + (ulonglong)CONCAT14(CARRY4(uVar16,uVar15),uVar16 + uVar15);
                uVar14 = (uint)((ulonglong)lVar3 >> 0x20);
                uVar15 = (uint)lVar3 >> 0x12 | uVar14 * 0x4000;
                uVar16 = uVar15 - uVar7;
                bVar17 = CARRY4(DAT_00c7b630,uVar16);
                DAT_00c7b630 = DAT_00c7b630 + uVar16;
                DAT_00c7b634 = DAT_00c7b634 +
                               (((uVar14 >> 0x12) - uStack_188) - (uint)(uVar15 < uVar7)) +
                               (uint)bVar17;
              }
              (**(code **)((int)*local_1c8 + 0xc))();
              param_1 = local_14c;
              pfVar6 = local_190;
              pfVar9 = local_148;
            }
            param_1[0x104] = (float)((int)param_1[0x104] + 1);
            pfVar6 = (float *)((int)pfVar6 + -1);
            fVar8 = param_1[0x104];
            local_190 = pfVar6;
          } while (pfVar6 != (float *)0x0);
        }
      }
    }
    goto LAB_00542acf;
  }
  if (0 < (int)param_1[0x2e8]) {
    param_1[0x2e8] = (float)(((int)param_1[0xe8] - (int)param_1[0xe9]) + (int)param_1[0x2e8]);
  }
  local_1bc = (char *)0x0;
  local_1c0 = "j";
  FUN_007e6300();
  local_1bc = (char *)0x0;
  local_1c0 = "Idle";
  puStack_1c4 = (undefined4 *)0x541de2;
  FUN_0040a380();
  if (param_1[0x3c7] != -NAN) {
    local_1bc = (char *)((int)&uStack_140 + 4);
    local_1c0 = (char *)0x541dfa;
    pfVar6 = (float *)FUN_006d82d0();
    local_1a8 = *pfVar6;
    local_1ac = pfVar6[1];
    if (((NAN(local_1a8) || NAN(DAT_00c7b640)) == (local_1a8 == DAT_00c7b640)) ||
       ((NAN(local_1ac) || NAN(DAT_00c7b644)) == (local_1ac == DAT_00c7b644))) {
      *(bool *)(param_1 + 0x52) = local_1a8 < 0.0;
    }
  }
  if (param_1[0x3c7] == -NAN) {
    if (DAT_00baac78 <= local_1ac * local_1ac + local_1a8 * local_1a8) goto LAB_00542acf;
    local_1bc = "j";
    iVar13 = FUN_006be840();
    local_1bc = (char *)0x0;
    local_1c0 = (char *)0x0;
    puStack_1c4 = (undefined4 *)0x0;
    local_184 = *(float *)(iVar13 + 0x33c);
    local_180 = *(float *)(iVar13 + 0x340);
    local_1c8 = (float *)0x3e7;
    pfStack_1d0 = &local_184;
    pfStack_1cc = (float *)0x3;
    cVar5 = FUN_007f0df0(pfVar9);
    if (cVar5 == '\0') goto LAB_00542acf;
    local_1bc = (char *)0x541ef0;
    uVar7 = FUN_006eef60();
    if (uVar7 % 0x14 != 0) goto LAB_00542acf;
  }
  else {
    local_1bc = (char *)0x7;
    local_1c0 = (char *)0x0;
    puStack_1c4 = (undefined4 *)0x541e62;
    cVar5 = FUN_006cae60();
    if (cVar5 == '\0') {
      local_1bc = (char *)0x9;
      local_1c0 = (char *)0x541e73;
      cVar5 = FUN_006d8260();
      if (cVar5 == '\0') goto LAB_00542acf;
    }
  }
  if ((int)param_1[0x2e8] < 1) {
    fVar8 = 1.261169e-43;
    param_1[0x2d9] = 2.242078e-44;
    if (param_1[0x3c7] != -NAN) {
      fVar8 = 8.407791e-44;
    }
    param_1[0x2e8] = fVar8;
    fVar11 = local_1a8;
    fVar8 = local_1ac;
    if (param_1[0x3c7] != -NAN) {
      local_1bc = local_144;
      local_1c0 = (char *)0x541f43;
      pfVar9 = (float *)FUN_006d85a0();
      fVar11 = *pfVar9;
      fVar8 = pfVar9[1];
    }
    if (((NAN(fVar11) || NAN(DAT_00c7b640)) == (fVar11 == DAT_00c7b640)) ||
       ((NAN(fVar8) || NAN(DAT_00c7b644)) == (fVar8 == DAT_00c7b644))) {
      *(bool *)(param_1 + 0x52) = fVar11 < 0.0;
    }
  }
LAB_00542acf:
  iVar13 = DAT_00c71678;
  if (((uint)param_1[0x5a] & 0x4000) == 0) {
    local_1bc = (char *)0x542aec;
    cVar5 = FUN_006fd350();
    if ((cVar5 == '\0') && (*(int *)(iVar13 + 0x264f8) % 7 == 0)) {
      local_1bc = (char *)0x542b07;
      iVar13 = FUN_006eef60();
      local_1bc = (char *)((float)((double)iVar13 + (double)(&DAT_00bacb00)[-(iVar13 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baa2d0 + DAT_00baa280);
      local_1c0 = (char *)0x542b44;
      FUN_006b64d0();
    }
  }
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    local_190 = (float *)0x1b;
    local_194 = (undefined4 *)0x0;
    local_1bc = (char *)0x542b6a;
    FUN_006c07e0();
    if (local_190 != (float *)0x0) {
      local_1bc = (char *)0xffffffff;
      local_1c0 = (char *)0x0;
      puStack_1c4 = local_194;
      local_1c8 = local_190;
      pfStack_1cc = (float *)0x542b82;
      FUN_006c0f30();
      *(undefined *)((int)param_1 + 0x173) = 0;
      param_1[0xe0] = param_1[0xe1];
      param_1[0x104] = 0.0;
      param_1[0x2e8] = 0.0;
      param_1[0x2d9] = 4.203895e-45;
    }
  }
  param_1[0xdb] = param_1[0xdb] * DAT_00baa3a4;
  FUN_00aef12b();
  return;
}

