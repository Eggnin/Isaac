/* Local J460 decompiler output.
 * VA: 0x00495610
 * Entry: 00495610
 * Dispatcher: 0x006c2990
 * Types: 409
 * Identities: 409.0.0,409.1.0,409.2.0
 * Evidence: dispatcher=0x006c2990; end=0x00496fb0; instructions=1457
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=409; identities=409.0.0,409.1.0,409.2.0;
   dispatcher=0x006c2990; end=0x00496fb0; instructions=1457 */

void __fastcall AI_00495610(int *param_1)

{
  byte bVar1;
  int iVar2;
  code *pcVar3;
  int iVar4;
  undefined *puVar5;
  char cVar6;
  float *pfVar7;
  int iVar8;
  byte **ppbVar9;
  float *pfVar10;
  undefined4 uVar11;
  int iVar12;
  byte **ppbVar13;
  uint uVar14;
  byte *pbVar15;
  char *pcVar16;
  bool bVar17;
  float fVar18;
  float fVar19;
  int *piVar20;
  int *piVar21;
  int *piVar22;
  undefined4 uVar23;
  TypeDescriptor *pTVar24;
  undefined1 *puVar25;
  TypeDescriptor *pTVar26;
  undefined4 uVar27;
  int local_15c [8];
  undefined4 local_13c;
  undefined4 uStack_138;
  undefined4 local_134;
  undefined4 local_130 [8];
  undefined4 local_110;
  undefined4 uStack_10c;
  undefined4 local_108;
  int local_104 [8];
  undefined4 local_e4;
  undefined4 uStack_e0;
  undefined4 local_dc;
  char local_d8 [4];
  int local_d4;
  float local_d0;
  int *local_cc;
  char local_c8 [4];
  int local_c4;
  float local_c0;
  int *local_bc;
  char local_b5;
  int *local_b4;
  int *local_b0;
  int *local_ac;
  undefined local_a8 [88];
  undefined local_50 [8];
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined local_40 [16];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af2eab;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  iVar8 = param_1[0xb];
  local_ac = param_1;
  if (iVar8 != 0) {
    if (iVar8 == 1) {
      iVar8 = param_1[0x2d9];
      local_110 = 0x3e4ccccd;
      uStack_10c = 0;
      local_108 = 0x3e4ccccd;
      if (iVar8 == 0) {
        puStack_20 = &stack0xfffffffc;
        iVar8 = FUN_0040b220(0);
        uVar27 = _UNK_00bac87c;
        uVar23 = _UNK_00bac878;
        uVar11 = _UNK_00bac874;
        if ((undefined4 *)(iVar8 + 0x48) != local_130) {
          *(undefined4 *)(iVar8 + 0x48) = _DAT_00bac870;
          *(undefined4 *)(iVar8 + 0x4c) = uVar11;
          *(undefined4 *)(iVar8 + 0x50) = uVar23;
          *(undefined4 *)(iVar8 + 0x54) = uVar27;
          *(undefined (*) [16])(iVar8 + 0x58) = ZEXT816(0);
          *(ulonglong *)(iVar8 + 0x68) = CONCAT44(uStack_10c,local_110);
          *(undefined4 *)(iVar8 + 0x70) = local_108;
        }
        iVar4 = _UNK_00baca2c;
        iVar2 = _UNK_00baca28;
        iVar12 = _UNK_00baca24;
        iVar8 = _DAT_00baca20;
        local_13c = 0x3f000000;
        uStack_138 = 0;
        local_134 = 0x3f000000;
        if (param_1 + 0x79 != local_15c) {
          *(undefined8 *)(param_1 + 0x81) = 0x3f000000;
          param_1[0x79] = iVar8;
          param_1[0x7a] = iVar12;
          param_1[0x7b] = iVar2;
          param_1[0x7c] = iVar4;
          param_1[0x83] = 0x3f000000;
          *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
        }
        param_1[0xd4] = -0x3de00000;
        param_1[0x2d9] = 3;
        param_1[0x2f1] = 3;
        puVar5 = puStack_20;
        goto switchD_0049599b_caseD_1;
      }
      if (iVar8 == 4) {
        param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
        puStack_20 = &stack0xfffffffc;
        pfVar10 = (float *)FUN_006bec40(&local_c0,0);
        fVar19 = (float)param_1[0xe7];
        local_c0 = *pfVar10 - (float)param_1[0xcf];
        local_bc = (int *)(pfVar10[1] - (float)param_1[0xd0]);
        fVar18 = DAT_00baa4a4;
        if ((NAN(fVar19) || NAN((float)DAT_00baa454)) == (fVar19 == (float)DAT_00baa454)) {
          fVar18 = DAT_00baa4a4 / ((fVar19 + DAT_00baa4a4) - fVar19 * DAT_00baa4a4);
        }
        local_b4 = (int *)(fVar18 * (float)param_1[0xd8]);
        param_1[0xd8] = (int)local_b4;
        param_1[0xd9] = (int)(fVar18 * (float)param_1[0xd9]);
        pfVar10 = (float *)FUN_00a10030(&local_d0);
        fVar19 = (float)param_1[0xdb];
        fVar18 = *pfVar10 * DAT_00baa2d0;
        if (NAN(fVar19) == (fVar19 == 0.0)) {
          param_1[0xd9] =
               (int)((pfVar10[1] * DAT_00baa2d0 * (float)param_1[0xe7]) / fVar19 +
                    (float)param_1[0xd9]);
          param_1[0xd8] = (int)((float)local_b4 + (fVar18 * (float)param_1[0xe7]) / fVar19);
        }
        param_1[0xdf] = 0x41000000;
        if (0.0 < (float)param_1[0x2ef]) {
          fVar19 = (float)param_1[0x2ef] - (float)param_1[0xe7];
          local_50._4_4_ = _UNK_00bac874;
          local_50._0_4_ = _DAT_00bac870;
          uStack_48 = _UNK_00bac878;
          uStack_44 = _UNK_00bac87c;
          local_30 = 0x3e4ccccd;
          local_40 = ZEXT816(0);
          local_2c = 0;
          param_1[0x2ef] = (int)fVar19;
          piVar20 = (int *)(fVar19 / DAT_00baa8d0);
          local_28 = 0x3e4ccccd;
          if ((float)piVar20 <= 0.0) {
            piVar20 = (int *)0x0;
          }
          if ((float)DAT_00baa454 <= (float)piVar20) {
            piVar20 = DAT_00baa454;
          }
          local_b4 = piVar20;
          uVar11 = FUN_00407170();
          uVar11 = FUN_006832e0(local_a8,uVar11,local_50,piVar20);
          FUN_0040b220(0);
          FUN_004071f0(uVar11);
          if ((float)local_b4 < DAT_00baa2d0) {
            local_40 = ZEXT816(0);
            local_30 = 0;
            local_2c = 0;
            _local_50 = _DAT_00babe10;
            local_28 = 0;
            FUN_004071f0(local_50);
            *(undefined *)(param_1 + 0xec) = 0;
          }
        }
        AI_0041af60(local_c8,param_1[10],param_1[0xb],0xffffffff,1,0);
        piVar20 = (int *)0x0;
        if (local_bc != (int *)0x0) {
          do {
            piVar21 = *(int **)(local_c4 + (int)piVar20 * 4);
            if (piVar21 != param_1) {
              local_b0 = (int *)param_1[0xcf];
              local_ac = (int *)param_1[0xd0];
              fVar19 = ((float)piVar21[0xd0] - (float)local_ac) *
                       ((float)piVar21[0xd0] - (float)local_ac) +
                       ((float)piVar21[0xcf] - (float)local_b0) *
                       ((float)piVar21[0xcf] - (float)local_b0);
              FUN_00435a50();
              if (fVar19 < DAT_00baa9d0) {
                iVar8 = *(int *)(local_c4 + (int)piVar20 * 4);
                local_b0 = (int *)((float)local_b0 - *(float *)(iVar8 + 0x33c));
                local_ac = (int *)((float)local_ac - *(float *)(iVar8 + 0x340));
                fVar19 = (float)local_b0 * (float)local_b0 + (float)local_ac * (float)local_ac;
                FUN_00435a50();
                piVar21 = local_b0;
                piVar22 = local_ac;
                if (0.0 < fVar19) {
                  fVar19 = (DAT_00baa9d0 - fVar19) / fVar19;
                  piVar22 = (int *)((float)local_ac * fVar19);
                  piVar21 = (int *)((float)local_b0 * fVar19);
                }
                fVar19 = (float)param_1[0xdb];
                fVar18 = (float)piVar22 * _DAT_00baa040;
                if (NAN(fVar19) == (fVar19 == 0.0)) {
                  param_1[0xd8] =
                       (int)(((float)piVar21 * _DAT_00baa040 * (float)param_1[0xe7]) / fVar19 +
                            (float)param_1[0xd8]);
                  param_1[0xd9] =
                       (int)((fVar18 * (float)param_1[0xe7]) / fVar19 + (float)param_1[0xd9]);
                }
              }
            }
            piVar20 = (int *)((int)piVar20 + 1);
          } while (piVar20 < local_bc);
        }
        if (local_c8[0] == '\0') {
          local_14 = 2;
          FUN_00a648b0(0,0);
          local_14 = 0xffffffff;
        }
      }
      else {
        puStack_20 = &stack0xfffffffc;
        if (iVar8 == 3) {
          puStack_20 = &stack0xfffffffc;
          if (param_1[0xef] != 0) {
            puStack_20 = &stack0xfffffffc;
            iVar12 = FUN_00447770(local_24);
            param_1 = local_ac;
            iVar8 = 1;
            if (1 < *(int *)(iVar12 + 0xbc0)) {
              iVar8 = *(int *)(iVar12 + 0xbc0);
            }
            local_b4 = (int *)(*(float *)(local_ac[0xef] + 0x380) / *(float *)(local_ac[0xef] + 900)
                              );
            iVar12 = FUN_00447770();
            local_b0 = *(int **)(iVar12 + 0xbc0);
            if (DAT_00baa1d4 <= (float)local_b4) {
              if (DAT_00baa2d0 <= (float)local_b4) {
                if (((float)local_b4 < DAT_00baa380) && (param_1[0x2f0] == 2)) goto LAB_004968d5;
              }
              else if (0 < param_1[0x2f0]) {
LAB_004968d5:
                param_1[0x2d9] = 4;
                iVar12 = FUN_00447770();
                *(int *)(iVar12 + 0xbc0) = *(int *)(iVar12 + 0xbc0) + -1;
                goto LAB_004968ec;
              }
            }
            else {
              param_1[0x2d9] = 4;
LAB_004968ec:
              FUN_006d6ba0(0x3d5,0x3f800000,2,0,0x3f800000);
            }
            piVar20 = DAT_00baa454;
            if (param_1[0x2d9] == 4) {
              local_c0 = (float)param_1[0xcf] - *(float *)(param_1[0xef] + 0x33c);
              local_bc = (int *)((float)param_1[0xd0] - *(float *)(param_1[0xef] + 0x340));
              pfVar10 = (float *)FUN_00a10100(&local_d0,0x41200000);
              fVar19 = (float)param_1[0xdb];
              if (NAN(fVar19) == (fVar19 == 0.0)) {
                fVar18 = pfVar10[1];
                param_1[0xd8] =
                     (int)(((float)param_1[0xe7] * *pfVar10) / fVar19 + (float)param_1[0xd8]);
                param_1[0xd9] =
                     (int)(((float)param_1[0xe7] * fVar18) / fVar19 + (float)param_1[0xd9]);
              }
            }
            else {
              if ((int *)param_1[0x2f1] == local_b0) {
                iVar12 = param_1[0x104];
              }
              else {
                param_1[0x104] = 0x19;
                iVar12 = 0x19;
                param_1[0x2f1] = (int)local_b0;
              }
              iVar2 = param_1[0xef];
              fVar19 = (float)(*(int *)(DAT_00c71678 + 0x264f8) - local_ac[0xca]);
              local_b4 = (int *)((((float)local_ac[0x2f0] / (float)iVar8) * DAT_00baab30 +
                                 fVar19 + fVar19) * DAT_00baa088);
              local_b0 = (int *)((float)piVar20 - (float)iVar12 / DAT_00baa8d0);
              piVar20 = local_b4;
              FUN_0041d540();
              param_1 = local_ac;
              local_ac = (int *)((((float)piVar20 * DAT_00baa924 + *(float *)(iVar2 + 0x33c)) -
                                 (float)local_ac[0xcf]) * (float)local_b0);
              piVar20 = local_b4;
              FUN_0041d520();
              fVar18 = (float)piVar20 * DAT_00baa924;
              fVar19 = *(float *)(iVar2 + 0x340);
              param_1[0xd8] = (int)local_ac;
              param_1[0xd9] = (int)(((fVar18 + fVar19) - (float)param_1[0xd0]) * (float)local_b0);
            }
          }
          if (0 < param_1[0x104]) {
            param_1[0x104] = param_1[0x104] + -1;
          }
        }
      }
      if (param_1[0xef] == 0) {
        uVar11 = FUN_00435c70();
        (**(code **)(*param_1 + 0x24))(uVar11);
      }
      local_bc = param_1 + 0x12;
      uVar11 = FUN_006eef60();
      local_ac = (int *)FUN_00428b20(1000,0x58,param_1 + 0xcf,&DAT_00c7b640,param_1,2,uVar11);
      pcVar3 = *(code **)(*local_ac + 0x3c);
      iVar8 = FUN_0040b220(0);
      (*pcVar3)(iVar8 + 0x48,0xffffffff,0xff,0,1);
      piVar21 = local_ac;
      fVar19 = (float)param_1[0xd9] * DAT_00baad2c;
      local_ac[0xd8] = (int)((float)param_1[0xd8] * DAT_00baad2c);
      local_ac[0xd9] = (int)fVar19;
      iVar8 = FUN_006eef60();
      fVar19 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa704;
      local_ac = (int *)(fVar19 + fVar19);
      iVar8 = FUN_006eef60();
      local_b0 = (int *)((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                        DAT_00ba9ff4);
      piVar20 = (int *)((float)param_1[0xd8] * (float)param_1[0xd8] +
                       (float)param_1[0xd9] * (float)param_1[0xd9]);
      FUN_00435a50();
      local_b4 = piVar20;
      piVar20 = local_ac;
      FUN_0041d540();
      local_cc = (int *)((float)piVar20 * (float)local_b0 * (float)local_b4 * DAT_00baa280);
      piVar22 = local_ac;
      FUN_0041d520();
      piVar20 = local_bc;
      fVar19 = (float)piVar21[0xdb];
      fVar18 = (float)piVar22 * (float)local_b0 * (float)local_b4 * DAT_00baa280;
      if (NAN(fVar19) == (fVar19 == 0.0)) {
        piVar21[0xd8] =
             (int)(((float)local_cc * (float)piVar21[0xe7]) / fVar19 + (float)piVar21[0xd8]);
        piVar21[0xd9] = (int)(((float)piVar21[0xe7] * fVar18) / fVar19 + (float)piVar21[0xd9]);
      }
      piVar21[0xd3] = 0;
      piVar21[0xd4] = -0x3de00000;
      ppbVar9 = (byte **)local_bc[0xd];
      if (ppbVar9 != (byte **)0x0) {
        ppbVar13 = ppbVar9;
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar13 = (byte **)*ppbVar9;
        }
        pbVar15 = &DAT_00b1bc54;
        do {
          bVar1 = *(byte *)ppbVar13;
          bVar17 = bVar1 < *pbVar15;
          if (bVar1 != *pbVar15) {
LAB_00496d30:
            uVar14 = -(uint)bVar17 | 1;
            goto LAB_00496d35;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar13 + 1);
          bVar17 = bVar1 < pbVar15[1];
          if (bVar1 != pbVar15[1]) goto LAB_00496d30;
          ppbVar13 = (byte **)((int)ppbVar13 + 2);
          pbVar15 = pbVar15 + 2;
        } while (bVar1 != 0);
        uVar14 = 0;
LAB_00496d35:
        if ((uVar14 == 0) &&
           ((puVar5 = puStack_20, *(byte *)(ppbVar9 + 0xd) == 0 ||
            (*(char *)(local_bc + 0x11) != '\0')))) goto switchD_0049599b_caseD_1;
      }
      cVar6 = FUN_0040a5d0(&DAT_00b1bc54,1);
      puVar5 = puStack_20;
      if (cVar6 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(piVar20 + 0x11) = 1;
        puVar5 = puStack_20;
      }
      goto switchD_0049599b_caseD_1;
    }
    puVar5 = &stack0xfffffffc;
    if (iVar8 != 2) goto switchD_0049599b_caseD_1;
    param_1[0x2d9] = 3;
    AI_0041af60(local_d8,0xf6,1,0xffffffff,0,0);
    local_14 = 3;
    local_ac = (int *)0x0;
    if (local_cc != (int *)0x0) {
      do {
        iVar8 = *(int *)(local_d4 + (int)local_ac * 4);
        fVar19 = *(float *)(iVar8 + 0x340) - (float)param_1[0xd0];
        fVar18 = *(float *)(iVar8 + 0x33c) - (float)param_1[0xcf];
        piVar20 = (int *)(fVar19 * fVar19 + fVar18 * fVar18);
        FUN_00435a50();
        local_bc = piVar20;
        iVar8 = __RTDynamicCast(iVar8,0,&IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0);
        if ((float)local_bc < DAT_00baa904) {
          if (*(int *)(iVar8 + 0xb64) == 0x10) {
            *(undefined4 *)(*(int *)(local_d4 + (int)local_ac * 4) + 0xb64) = 2;
          }
          else {
            fVar19 = *(float *)(iVar8 + 900);
            fVar18 = fVar19 * DAT_00baa1d4 + *(float *)(iVar8 + 0x380);
            *(float *)(iVar8 + 0x380) = fVar18;
            if (fVar19 < fVar18) {
              *(float *)(iVar8 + 0x380) = fVar19;
            }
          }
        }
        local_ac = (int *)((int)local_ac + 1);
      } while (local_ac < local_cc);
    }
    if (*(char *)(param_1 + 100) != '\0') {
      (**(code **)(*param_1 + 0x28))();
    }
    ppbVar9 = (byte **)param_1[0x1f];
    if (ppbVar9 == (byte **)0x0) {
LAB_00496f05:
      cVar6 = FUN_0040a5d0("Rebirth Pillar",1);
      if (cVar6 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar13 = ppbVar9;
      if (&DAT_0000000f < ppbVar9[5]) {
        ppbVar13 = (byte **)*ppbVar9;
      }
      pcVar16 = "Rebirth Pillar";
      do {
        bVar1 = *(byte *)ppbVar13;
        bVar17 = bVar1 < (byte)*pcVar16;
        if (bVar1 != *pcVar16) {
LAB_00496ee7:
          uVar14 = -(uint)bVar17 | 1;
          goto LAB_00496eec;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar13 + 1);
        bVar17 = bVar1 < ((byte *)pcVar16)[1];
        if (bVar1 != ((byte *)pcVar16)[1]) goto LAB_00496ee7;
        ppbVar13 = (byte **)((int)ppbVar13 + 2);
        pcVar16 = (char *)((byte *)pcVar16 + 2);
      } while (bVar1 != 0);
      uVar14 = 0;
LAB_00496eec:
      if ((uVar14 != 0) || ((*(byte *)(ppbVar9 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_00496f05;
    }
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      (**(code **)(*param_1 + 0x28))();
    }
    local_14 = 0xffffffff;
    puVar5 = puStack_20;
    if (local_d8[0] != '\0') goto switchD_0049599b_caseD_1;
    local_14 = 4;
LAB_00496f56:
    FUN_00a648b0(0,0);
    puVar5 = puStack_20;
    goto switchD_0049599b_caseD_1;
  }
  pfVar10 = (float *)(param_1 + 0xcf);
  param_1[0x61] = 3;
  puStack_20 = &stack0xfffffffc;
  pfVar7 = (float *)FUN_00812f50(&local_c0,pfVar10,0x42200000,0,0);
  iVar12 = DAT_00c71678;
  piVar20 = DAT_00baad50;
  fVar19 = *pfVar7;
  *pfVar10 = fVar19;
  param_1[0xd0] = (int)pfVar7[1];
  iVar8 = *(int *)(iVar12 + 0x18300);
  if ((NAN(fVar19) || NAN(*(float *)(iVar8 + 0x1c))) != (fVar19 == *(float *)(iVar8 + 0x1c))) {
    param_1[0xd8] = (int)&DAT_bf800000;
    iVar8 = *(int *)(iVar12 + 0x18300);
  }
  piVar21 = DAT_00baa454;
  if ((NAN(fVar19) || NAN(*(float *)(iVar8 + 0x14))) != (fVar19 == *(float *)(iVar8 + 0x14))) {
    param_1[0xd8] = 0x3f800000;
    iVar8 = *(int *)(iVar12 + 0x18300);
  }
  fVar19 = (float)param_1[0xd0];
  if ((NAN(fVar19) || NAN(*(float *)(iVar8 + 0x20))) != (fVar19 == *(float *)(iVar8 + 0x20))) {
    param_1[0xd9] = (int)&DAT_bf800000;
    iVar8 = *(int *)(iVar12 + 0x18300);
  }
  fVar18 = *(float *)(iVar8 + 0x18) + DAT_00baa904;
  if ((NAN(fVar19) || NAN(fVar18)) != (fVar19 == fVar18)) {
    param_1[0xd9] = 0x3f800000;
  }
  fVar19 = DAT_00baa280;
  if (((param_1[0xb] == 1) && (fVar19 = DAT_00baa490, param_1[0xc] != 2)) &&
     (fVar19 = DAT_00baa3a4, param_1[0xc] == 1)) {
    fVar19 = DAT_00baa2d0;
  }
  local_cc = (int *)param_1[0x5b];
  if (((param_1[0x5a] & 0x200U) == 0) || ((param_1[0x5a] & 0x100U) != 0)) {
    piVar22 = piVar20;
    if (DAT_00baa120 <= (float)param_1[0xd9]) {
      piVar22 = piVar21;
    }
    if (0.0 < (float)param_1[0xd8]) {
      piVar20 = piVar21;
    }
    fVar18 = (float)param_1[0xdb] * DAT_00baa3a4;
    param_1[0xdb] = (int)fVar18;
    if (NAN(fVar18) == (fVar18 == 0.0)) {
      param_1[0xd9] =
           (int)(((float)param_1[0xe7] * (float)piVar22 * fVar19) / fVar18 + (float)param_1[0xd9]);
      param_1[0xd8] =
           (int)(((float)param_1[0xe7] * (float)piVar20 * fVar19) / fVar18 + (float)param_1[0xd8]);
    }
    if ((param_1[0xb] == 0) && (param_1[0xc] == 2)) {
      param_1[0xdb] = (int)(fVar18 * DAT_00baa3e0);
    }
    if ((param_1[0x5a] & 0x1000800U) != 0) {
      iVar8 = FUN_006be840();
      local_ac = (int *)((uint)(*(float *)(iVar8 + 0x33c) - *pfVar10) ^ DAT_00bacb70);
      local_b0 = (int *)((uint)(*(float *)(iVar8 + 0x340) - (float)param_1[0xd0]) ^ DAT_00bacb70);
      fVar19 = (float)local_ac * (float)local_ac + (float)local_b0 * (float)local_b0;
      FUN_00435a50();
      piVar20 = (int *)((DAT_00baaa78 - fVar19) * DAT_00baa08c);
      if ((float)piVar20 <= 0.0) {
        piVar20 = (int *)0x0;
      }
      if ((float)DAT_00baa454 <= (float)piVar20) {
        piVar20 = DAT_00baa454;
      }
      piVar21 = local_ac;
      piVar22 = local_b0;
      if (0.0 < fVar19) {
        piVar21 = (int *)((float)local_ac * ((float)piVar20 / fVar19));
        piVar22 = (int *)((float)local_b0 * ((float)piVar20 / fVar19));
      }
      fVar19 = (float)param_1[0xdb];
      if (NAN(fVar19) == (fVar19 == 0.0)) {
        param_1[0xd9] =
             (int)(((float)param_1[0xe7] * (float)piVar22) / fVar19 + (float)param_1[0xd9]);
        param_1[0xd8] =
             (int)(((float)param_1[0xe7] * (float)piVar21) / fVar19 + (float)param_1[0xd8]);
      }
    }
  }
  else {
    fVar19 = (float)param_1[0xdb] * DAT_00baa3a4;
    param_1[0xdb] = (int)fVar19;
    if ((param_1[0xb] == 0) && (param_1[0xc] == 2)) {
      param_1[0xdb] = (int)(fVar19 * DAT_00baa3e0);
    }
    FUN_007e6300(0);
  }
  puVar5 = puStack_20;
  switch(param_1[0x2d9]) {
  case 0:
    local_b0 = (int *)0x0;
    do {
      uVar11 = FUN_006eef60();
      piVar20 = (int *)(((float)(int)local_b0 / DAT_00baa6fc) * DAT_00baab30 * DAT_00baa088);
      local_b4 = piVar20;
      FUN_0041d540();
      local_c0 = (float)piVar20 * DAT_00baa924 + (float)param_1[0xcf];
      piVar20 = local_b4;
      FUN_0041d520();
      uVar27 = 0;
      pTVar26 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
      local_bc = (int *)((float)piVar20 * DAT_00baa924 + (float)param_1[0xd0]);
      pTVar24 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
      uVar23 = 0;
      uVar11 = FUN_00428b20(0x199,1,&local_c0,&DAT_00c7b640,param_1,0,uVar11);
      piVar20 = (int *)__RTDynamicCast(uVar11,uVar23,pTVar24,pTVar26,uVar27);
      if (piVar20[0xef] != 0) {
        local_b4 = piVar20 + 0xef;
        FUN_004cf210(&local_b4);
      }
      piVar20[0xef] = (int)param_1;
      FUN_004cdcf0(piVar20 + 0xef);
      piVar20[0x5a] = piVar20[0x5a] & 0xfffffffb;
      piVar20[0x2f0] = (int)local_b0;
      piVar20[0x5b] = piVar20[0x5b];
      *(undefined *)(piVar20 + 0xec) = 1;
      piVar20[0x61] = 0;
      piVar20[0x62] = 2;
      (**(code **)(*piVar20 + 0xc))();
      iVar4 = _UNK_00babf2c;
      iVar2 = _UNK_00babf28;
      iVar12 = _UNK_00babf24;
      iVar8 = _DAT_00babf20;
      local_b0 = (int *)((int)local_b0 + 1);
    } while ((int)local_b0 < 3);
    param_1[0x2f0] = 3;
    param_1[0x2d9] = 4;
    local_e4 = 0x3eb33333;
    uStack_e0 = 0x3de147ae;
    local_dc = 0x3eb851ec;
    puVar5 = puStack_20;
    if (param_1 + 0x79 != local_104) {
      *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
      *(undefined8 *)(param_1 + 0x81) = 0x3de147ae3eb33333;
      param_1[0x79] = iVar8;
      param_1[0x7a] = iVar12;
      param_1[0x7b] = iVar2;
      param_1[0x7c] = iVar4;
      param_1[0x83] = 0x3eb851ec;
    }
  default:
    goto switchD_0049599b_caseD_1;
  case 4:
    local_b5 = '\0';
    AI_0041af60(local_c8,0xf6,1,0xffffffff,0,0);
    piVar20 = local_bc;
    local_14 = 0;
    piVar21 = (int *)0x0;
    if (local_bc != (int *)0x0) {
      do {
        if (*(int *)(*(int *)(local_c4 + (int)piVar21 * 4) + 0xb64) == 0x10) {
          local_b5 = '\x01';
          break;
        }
        piVar21 = (int *)((int)piVar21 + 1);
      } while (piVar21 < local_bc);
    }
    if (((param_1[0x5b] & 0x10000000U) == 0) ||
       ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) {
      local_b4 = (int *)((int)local_bc * 100);
      if (((local_b4 == (int *)0x0) || (uVar14 = FUN_006eef60(), uVar14 % (uint)local_b4 == 0)) &&
         (piVar20 < (int *)0x3)) {
        param_1[0x2d9] = 0xd;
        cVar6 = FUN_0040a5d0(&DAT_00b1d53c,1);
        if (cVar6 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
        FUN_006d6ba0(0x3d7,0x3f800000,2,0,0x3f800000);
      }
      else {
        uVar14 = FUN_006eef60();
        if (((int)((ulonglong)uVar14 % 0x46) == 0) && (local_b5 != (char)((ulonglong)uVar14 % 0x46))
           ) {
          param_1[0x2d9] = 0xe;
          puVar25 = &DAT_00b1d554;
        }
        else {
          uVar14 = FUN_006eef60();
          if (uVar14 % 0x2d == 0) {
            param_1[0x2d9] = 8;
            cVar6 = FUN_0040a5d0("Cover",1);
            if (cVar6 != '\0') {
              FUN_0040a1b0();
              *(undefined *)(param_1 + 0x23) = 1;
            }
            FUN_006d6ba0(0x3d9,0x3f800000,2,0,0x3f800000);
            goto LAB_00495df4;
          }
          ppbVar9 = (byte **)param_1[0x1f];
          if (ppbVar9 != (byte **)0x0) {
            if (&DAT_0000000f < ppbVar9[5]) {
              ppbVar9 = (byte **)*ppbVar9;
            }
            pbVar15 = &DAT_00b1dce4;
            do {
              bVar1 = *(byte *)ppbVar9;
              bVar17 = bVar1 < *pbVar15;
              if (bVar1 != *pbVar15) {
LAB_00495db7:
                uVar14 = -(uint)bVar17 | 1;
                goto LAB_00495dbc;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppbVar9 + 1);
              bVar17 = bVar1 < pbVar15[1];
              if (bVar1 != pbVar15[1]) goto LAB_00495db7;
              ppbVar9 = (byte **)((int)ppbVar9 + 2);
              pbVar15 = pbVar15 + 2;
            } while (bVar1 != 0);
            uVar14 = 0;
LAB_00495dbc:
            if ((uVar14 == 0) &&
               ((*(char *)(param_1[0x1f] + 0x34) == '\0' || (*(char *)(param_1 + 0x23) != '\0'))))
            goto LAB_00495df4;
          }
          puVar25 = &DAT_00b1dce4;
        }
        cVar6 = FUN_0040a5d0(puVar25,1);
        if (cVar6 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
    }
    else {
      ppbVar9 = (byte **)param_1[0x1f];
      if (ppbVar9 != (byte **)0x0) {
        ppbVar13 = ppbVar9;
        if (&DAT_0000000f < ppbVar9[5]) {
          ppbVar13 = (byte **)*ppbVar9;
        }
        pbVar15 = &DAT_00b1dce4;
        do {
          bVar1 = *(byte *)ppbVar13;
          bVar17 = bVar1 < *pbVar15;
          if (bVar1 != *pbVar15) {
LAB_00495c30:
            uVar14 = -(uint)bVar17 | 1;
            goto LAB_00495c35;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar13 + 1);
          bVar17 = bVar1 < pbVar15[1];
          if (bVar1 != pbVar15[1]) goto LAB_00495c30;
          ppbVar13 = (byte **)((int)ppbVar13 + 2);
          pbVar15 = pbVar15 + 2;
        } while (bVar1 != 0);
        uVar14 = 0;
LAB_00495c35:
        if ((uVar14 == 0) &&
           ((*(byte *)(ppbVar9 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
        goto LAB_00495df4;
      }
      cVar6 = FUN_0040a5d0(&DAT_00b1dce4,1);
      if (cVar6 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
LAB_00495df4:
    local_14 = 0xffffffff;
    param_1[0x104] = 0;
    puVar5 = puStack_20;
    if (local_c8[0] != '\0') goto switchD_0049599b_caseD_1;
    local_14 = 1;
    goto LAB_00496f56;
  case 8:
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) != '\0')) {
LAB_004962c7:
      iVar8 = param_1[0x104];
    }
    else {
      ppbVar9 = (byte **)param_1[0x1f];
      if (&DAT_0000000f < ppbVar9[5]) {
        ppbVar9 = (byte **)*ppbVar9;
      }
      pcVar16 = "Cover";
      do {
        bVar1 = *(byte *)ppbVar9;
        bVar17 = bVar1 < (byte)*pcVar16;
        if (bVar1 != *pcVar16) {
LAB_00496290:
          uVar14 = -(uint)bVar17 | 1;
          goto LAB_00496295;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar9 + 1);
        bVar17 = bVar1 < ((byte *)pcVar16)[1];
        if (bVar1 != ((byte *)pcVar16)[1]) goto LAB_00496290;
        ppbVar9 = (byte **)((int)ppbVar9 + 2);
        pcVar16 = (char *)((byte *)pcVar16 + 2);
      } while (bVar1 != 0);
      uVar14 = 0;
LAB_00496295:
      if (uVar14 != 0) goto LAB_004962c7;
      FUN_0040a380("Covered",0);
      uVar14 = FUN_006eef60();
      *(undefined *)(param_1 + 0xec) = 1;
      iVar8 = uVar14 % 0x1e + 0x3c;
      param_1[0x104] = iVar8;
    }
    if (0 < iVar8) {
      param_1[0x104] = iVar8 + -1;
      puVar5 = puStack_20;
      if (iVar8 + -1 == 0) {
        FUN_0040a380("Uncover",0);
        FUN_006d6ba0(0x3da,0x3f800000,2,0,0x3f800000);
        puVar5 = puStack_20;
      }
      goto switchD_0049599b_caseD_1;
    }
    iVar8 = FUN_0040a780();
    if (0x14 < iVar8) {
      *(undefined *)(param_1 + 0xec) = 0;
    }
    break;
  case 0xd:
    if (param_1[0x104] == 0x14) {
      FUN_006d6ba0(0x3d8,0x3f800000,2,0,0x3f800000);
      local_ac = (int *)0x0;
      do {
        uVar11 = FUN_006eef60();
        uVar27 = 0;
        pTVar26 = &IsaacRepentancePlus::Entity_Effect::RTTI_Type_Descriptor;
        pTVar24 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uVar23 = 0;
        uVar11 = FUN_00428b20(1000,1,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar11);
        piVar20 = (int *)__RTDynamicCast(uVar11,uVar23,pTVar24,pTVar26,uVar27);
        iVar8 = DAT_00baae50;
        if (local_ac == (int *)0x0) {
          iVar8 = DAT_00baa9b4;
        }
        piVar20[0x11d] = iVar8;
        local_40 = ZEXT816(0);
        local_50._4_4_ = _UNK_00babbb4;
        local_50._0_4_ = _DAT_00babbb0;
        uStack_48 = _UNK_00babbb8;
        uStack_44 = _UNK_00babbbc;
        local_30 = 0;
        local_2c = 0;
        local_28 = 0;
        (**(code **)(*piVar20 + 0x3c))(local_50,0xffffffff,0xff,0,1);
        piVar20[0xd3] = 0;
        piVar20[0xd4] = -0x3de00000;
        (**(code **)(*piVar20 + 0xc))();
        local_ac = (int *)((int)local_ac + 1);
      } while ((int)local_ac < 2);
      uVar11 = FUN_006eef60();
      local_d0 = (float)param_1[0xcf] + DAT_00ba9fe4;
      local_cc = (int *)((float)param_1[0xd0] + DAT_00baa81c);
      local_c0 = 0.0;
      local_bc = (int *)0x41200000;
      iVar8 = FUN_00428b20(0xf6,1,&local_d0,&local_c0,param_1,0,uVar11);
      if (*(int *)(iVar8 + 0x3bc) != 0) {
        local_b4 = (int *)(iVar8 + 0x3bc);
        FUN_004cf210(&local_b4);
      }
      *(int **)(iVar8 + 0x3bc) = param_1;
      FUN_004cdcf0((int **)(iVar8 + 0x3bc));
      *(uint *)(iVar8 + 0x168) = *(uint *)(iVar8 + 0x168) & 0xfffffffb;
      *(undefined4 *)(iVar8 + 0x16c) = *(undefined4 *)(iVar8 + 0x16c);
      if ((param_1[0x5b] & 0x10000000U) != 0) {
        *(undefined4 *)(iVar8 + 0x380) = 0x41700000;
        *(undefined4 *)(iVar8 + 900) = 0x41700000;
      }
    }
    param_1[0x104] = param_1[0x104] + 1;
    break;
  case 0xe:
    iVar8 = param_1[0x104];
    if (iVar8 == 0x14) {
      iVar8 = FUN_006eef60();
      local_ac = (int *)0x0;
      local_b4 = (int *)((float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baab30);
      do {
        uVar11 = FUN_006eef60();
        piVar20 = (int *)((((float)(int)local_ac / DAT_00baa6fc) * DAT_00baab30 + (float)local_b4) *
                         DAT_00baa088);
        local_b0 = piVar20;
        FUN_0041d540();
        local_c0 = (float)piVar20 * DAT_00baa81c;
        piVar20 = local_b0;
        FUN_0041d520();
        local_bc = (int *)((float)piVar20 * DAT_00baa81c);
        uVar27 = 0;
        pTVar26 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
        pTVar24 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uVar23 = 0;
        uVar11 = FUN_00428b20(0x199,2,param_1 + 0xcf,&local_c0,param_1,0,uVar11);
        piVar20 = (int *)__RTDynamicCast(uVar11,uVar23,pTVar24,pTVar26,uVar27);
        if (piVar20[0xef] != 0) {
          local_b0 = piVar20 + 0xef;
          FUN_004cf210(&local_b0);
        }
        piVar20[0xef] = (int)param_1;
        FUN_004cdcf0(piVar20 + 0xef);
        piVar20[0x5a] = piVar20[0x5a] & 0xfffffffb;
        piVar20[0x5b] = piVar20[0x5b];
        piVar20[0x62] = 0;
        piVar20[0x61] = 3;
        piVar20[0x57] = 0;
        (**(code **)(*piVar20 + 0xc))();
        local_ac = (int *)((int)local_ac + 1);
      } while ((int)local_ac < 3);
      FUN_006d6ba0(0x3d6,0x3f800000,2,0,0x3f800000);
      iVar8 = param_1[0x104];
    }
    param_1[0x104] = iVar8 + 1;
    ppbVar9 = (byte **)param_1[0x1f];
    if (ppbVar9 != (byte **)0x0) {
      ppbVar13 = ppbVar9;
      if (&DAT_0000000f < ppbVar9[5]) {
        ppbVar13 = (byte **)*ppbVar9;
      }
      pcVar16 = "Rebirth";
      do {
        bVar1 = *(byte *)ppbVar13;
        bVar17 = bVar1 < (byte)*pcVar16;
        if (bVar1 != *pcVar16) {
LAB_00496202:
          uVar14 = -(uint)bVar17 | 1;
          goto LAB_00496207;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar13 + 1);
        bVar17 = bVar1 < ((byte *)pcVar16)[1];
        if (bVar1 != ((byte *)pcVar16)[1]) goto LAB_00496202;
        ppbVar13 = (byte **)((int)ppbVar13 + 2);
        pcVar16 = (char *)((byte *)pcVar16 + 2);
      } while (bVar1 != 0);
      uVar14 = 0;
LAB_00496207:
      if ((uVar14 == 0) && ((*(byte *)(ppbVar9 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
      break;
    }
    cVar6 = FUN_0040a5d0("Rebirth",1);
    if (cVar6 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
  }
  puVar5 = puStack_20;
  if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
    param_1[0x2d9] = 4;
  }
switchD_0049599b_caseD_1:
  puStack_20 = puVar5;
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

