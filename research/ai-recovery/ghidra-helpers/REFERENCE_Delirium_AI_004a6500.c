/* Local J460 decompiler output.
 * VA: 0x004a6500
 * Entry: 004a6500
 * Dispatcher: 0x006c2990
 * Types: 412
 * Identities: reference_duplicate
 * Evidence: Duplicate seed for focused helper export
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=412; identities=reference_duplicate; Duplicate seed for
   focused helper export */

void __fastcall REFERENCE_Delirium_AI(int *param_1)

{
  byte bVar1;
  code *pcVar2;
  undefined auVar3 [16];
  undefined auVar4 [16];
  char cVar5;
  int iVar6;
  undefined4 uVar7;
  byte **ppbVar8;
  undefined4 *puVar9;
  byte **ppbVar10;
  uint uVar11;
  int iVar12;
  uint uVar13;
  undefined4 uVar14;
  int iVar15;
  float *pfVar16;
  int *piVar17;
  char *pcVar18;
  byte *pbVar19;
  int *piVar20;
  int *piVar21;
  uint uVar22;
  int **ppiVar23;
  uint uVar24;
  bool bVar25;
  float fVar26;
  float fVar27;
  double dVar28;
  undefined4 uVar29;
  TypeDescriptor *pTVar30;
  undefined8 uVar31;
  undefined4 local_c4;
  undefined4 local_c0;
  undefined4 local_bc;
  undefined4 local_b8;
  int *local_b4;
  int *local_b0;
  int *local_ac;
  float local_a8;
  byte *local_a4;
  int *local_a0;
  int *local_9c;
  int *local_98;
  int *local_94;
  char local_90 [4];
  int local_8c;
  int *local_84;
  int *local_80;
  int *local_7c;
  int *local_78;
  float local_74;
  float local_70;
  float local_6c;
  int *local_68;
  float local_64;
  float local_60;
  float local_58;
  int *local_54;
  int *local_50;
  int *local_4c;
  int *local_48;
  char local_41;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined local_30 [5];
  undefined auStack_2b [11];
  float local_20;
  undefined4 local_1c;
  uint local_18;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8._0_1_ = 0xff;
  local_8._1_3_ = 0xffffff;
  puStack_c = &LAB_00af312f;
  local_10 = ExceptionList;
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  ExceptionList = &local_10;
  local_68 = (int *)param_1[0xe1];
  local_4c = (int *)param_1[0xe0];
  local_54 = param_1;
  if (NAN((float)local_68) != ((float)local_68 == 0.0)) {
    FUN_00a112c0(0x10,"Start and End parameters cannot be the same!",local_14);
  }
  fVar27 = DAT_00baa454;
  fVar26 = ((float)local_4c - 0.0) / ((float)local_68 - 0.0);
  if (fVar26 <= 0.0) {
    fVar26 = 0.0;
  }
  local_58 = DAT_00baa454;
  if (DAT_00baa454 <= fVar26) {
    fVar26 = DAT_00baa454;
  }
  iVar6 = (int)(fVar26 * DAT_00baa784 + 0.0);
  local_68 = *(int **)(&DAT_00c5c630 + iVar6 * 8);
  local_94 = *(int **)(&DAT_00c5c634 + iVar6 * 8);
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    FUN_004a6240(param_1,param_1[0x2fa]);
    uVar24 = 0;
    iVar6 = DAT_00c71678[0x60c0];
    if (*(int *)(iVar6 + 0x1264) != 0) {
      do {
        piVar21 = *(int **)(*(int *)(iVar6 + 0x125c) + uVar24 * 4);
        if (((((DAT_00c71678[0x9985] < 2) || (piVar21[10] != 1)) && (0x3dd < piVar21[10] - 10U)) ||
            ((cVar5 = (**(code **)(*piVar21 + 0x48))(), cVar5 == '\0' || (piVar21[10] == 0x362))))
           || ((piVar21[0x5a] & 0x20000000U) != 0)) {
          bVar25 = false;
        }
        else {
          bVar25 = true;
        }
        if (bVar25) {
          uStack_3c = 0;
          uStack_38 = 0;
          uStack_34 = 0;
          auVar3._4_4_ = DAT_00c7b644;
          auVar3._0_4_ = DAT_00c7b640;
          auVar3._8_4_ = DAT_00c7b640;
          auVar3._12_4_ = 0;
          _local_30 = auVar3 << 0x20;
          local_20 = DAT_00c7b644;
          local_1c = 0;
          local_18 = 0;
          (**(code **)(*piVar21 + 0x24))();
        }
        if (piVar21[10] == 9) {
          *(undefined *)((int)piVar21 + 0x173) = 1;
        }
        uVar24 = uVar24 + 1;
        param_1 = local_54;
      } while (uVar24 < *(uint *)(iVar6 + 0x1264));
    }
    iVar6 = param_1[0xdc];
    *(undefined *)((int)param_1 + 0x173) = 0;
    FUN_00812f50(&local_64,param_1 + 0xcf,iVar6,iVar6,iVar6);
    (**(code **)(*param_1 + 0x44))();
    pcVar2 = *(code **)(*param_1 + 4);
    uVar7 = FUN_006eef60();
    (*pcVar2)(0x19c,0,0,uVar7);
    param_1[0xcf] = (int)local_64;
    param_1[0xd0] = (int)local_60;
    cVar5 = HELPER_0040a5d0_AnimationPredicateC(&DAT_00b1bc54,1);
    if (cVar5 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
    *(undefined *)((int)param_1 + 0xbd3) = 0x11;
    *(undefined2 *)(param_1 + 0x2f4) = 5;
    param_1[0xd8] = (int)DAT_00c7b640;
    param_1[0xd9] = (int)DAT_00c7b644;
    param_1[0xe0] = 0x3f800000;
    *(undefined *)(param_1 + 0xec) = 1;
    param_1[0x62] = 0;
    goto LAB_004a831b;
  }
  cVar5 = *(char *)((int)param_1 + 0xbd3);
  if (cVar5 == '\x11') {
    if (*(char *)((int)param_1 + 0x151) != '\0') {
      FUN_00409030();
      FUN_00409030();
    }
    if (DAT_00c71678[0x994e] < 1) {
      uVar7 = 0x3f;
      if (*(ushort *)(param_1 + 0x2f4) == 1) {
        uVar7 = 0x11;
      }
      FUN_007059f0((int)((float)(uint)*(ushort *)(param_1 + 0x2f4) * DAT_00baa280 * DAT_00baa8d0),
                   uVar7);
      piVar21 = param_1 + 0x2f4;
      *(short *)piVar21 = *(short *)piVar21 + -1;
      if (*(short *)piVar21 == 0) {
        *(undefined *)((int)param_1 + 0xbd3) = 0x12;
        *(undefined2 *)(param_1 + 0x2f4) = 10;
        local_58 = 2.340168e-43;
        FUN_00956780();
        FUN_0092dc30(local_58,0x40a00000,2,0,0x3dcccccd,0);
LAB_004a68a0:
        cVar5 = HELPER_0040a5d0_AnimationPredicateC("IdleNoLoop",1);
        if (cVar5 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
    }
  }
  else {
    if (cVar5 != '\x12') {
      if (cVar5 != '\0') {
        if (cVar5 == '\b') {
          piVar21 = param_1 + 0x2f4;
          *(short *)piVar21 = *(short *)piVar21 + -1;
          if ((*(short *)piVar21 == 0) || (cVar5 = '\b', *(char *)((int)param_1 + 0xbd2) == '\0')) {
            *(undefined *)((int)param_1 + 0xbd3) = 0x10;
            cVar5 = '\x10';
            param_1[0x104] = 0;
          }
        }
        local_48 = (int *)param_1[0xe0];
        local_9c = (int *)param_1[0xe1];
        iVar6 = param_1[0x2f2];
        param_1[0x310] = (int)((fVar27 - (float)local_48 / (float)local_9c) * DAT_00baa9a0);
        if (iVar6 == 0x19c) {
          param_1[0x310] = 0;
        }
        if (cVar5 != '\x10') {
          if (cVar5 != '\b') goto LAB_004a831b;
          local_7c = (int *)param_1[10];
          local_60 = (float)param_1[0xb];
          param_1[10] = iVar6;
          param_1[0xb] = param_1[0x2f3];
          if (iVar6 == 0x19c) {
            if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) == '\0')) {
              ppbVar10 = (byte **)param_1[0x1f];
              if (&DAT_0000000f < ppbVar10[5]) {
                ppbVar10 = (byte **)*ppbVar10;
              }
              pcVar18 = "Blink";
              do {
                bVar1 = *(byte *)ppbVar10;
                bVar25 = bVar1 < (byte)*pcVar18;
                if (bVar1 != *pcVar18) {
LAB_004a7bc0:
                  uVar24 = -(uint)bVar25 | 1;
                  goto LAB_004a7bc5;
                }
                if (bVar1 == 0) break;
                bVar1 = *(byte *)((int)ppbVar10 + 1);
                bVar25 = bVar1 < ((byte *)pcVar18)[1];
                if (bVar1 != ((byte *)pcVar18)[1]) goto LAB_004a7bc0;
                ppbVar10 = (byte **)((int)ppbVar10 + 2);
                pcVar18 = (char *)((byte *)pcVar18 + 2);
              } while (bVar1 != 0);
              uVar24 = 0;
LAB_004a7bc5:
              if (uVar24 == 0) {
                HELPER_0040a380_AnimationActionA(&DAT_00b1bc54,0);
              }
            }
            param_1[0xd8] = (int)DAT_00c7b640;
            param_1[0xd9] = (int)DAT_00c7b644;
            local_74 = (float)param_1[0xcf] - DAT_00baa9d0;
            local_70 = (float)param_1[0xd0] - DAT_00baa9d0;
            cVar5 = FUN_00944a40();
            if (cVar5 == '\0') {
              local_74 = (float)param_1[0xcf] + DAT_00baa9d0;
              local_70 = (float)param_1[0xd0] - DAT_00baa9d0;
              cVar5 = FUN_00944a40();
              if (cVar5 == '\0') {
                local_74 = (float)param_1[0xcf] - DAT_00baa9d0;
                local_70 = (float)param_1[0xd0] + DAT_00baa9d0;
                cVar5 = FUN_00944a40();
                if (cVar5 == '\0') {
                  local_74 = (float)param_1[0xcf] + DAT_00baa9d0;
                  local_70 = (float)param_1[0xd0] + DAT_00baa9d0;
                  cVar5 = FUN_00944a40();
                  if (cVar5 == '\0') {
                    uVar24 = param_1[0x2f8];
                    uVar13 = uVar24 >> 0xf & 0x3ff;
                    if (0x1e < uVar13) {
                      uVar13 = 0x1e;
                    }
                    local_54[0x2f9] = 0;
                    local_54[0x2f8] =
                         (((uVar24 >> 0x19) << 10 | uVar13) << 8 | uVar24 >> 7 & 0xff) << 7 |
                         uVar24 & 0x7f;
                    param_1 = local_54;
                  }
                }
              }
            }
          }
          else {
            local_41 = '\0';
            if (iVar6 == 0x19b) {
              if (((param_1[0x2d9] == 4) && (param_1[0x104] == 0)) &&
                 ((param_1[0x1f] == 0 || (*(char *)(param_1 + 0x23) == '\0')))) {
                local_41 = '\x01';
              }
              else {
                local_41 = '\0';
              }
            }
            local_70 = (float)param_1[0x2f0];
            ppiVar23 = (int **)(param_1 + 2);
            local_78 = (int *)param_1[3];
            local_50 = (int *)0x0;
            local_b4 = (int *)0x0;
            local_4c = (int *)0x0;
            local_ac = (int *)0x0;
            local_68 = *ppiVar23;
            local_b0 = (int *)0x0;
            if (local_68 != local_78) {
              uVar24 = ((int)local_78 - (int)local_68) / 0x38;
              if (0x4924924 < uVar24) {
                    /* WARNING: Subroutine does not return */
                FUN_0040cee0();
              }
              local_b4 = (int *)FUN_0040cf00();
              local_ac = local_b4 + uVar24 * 0xe;
              local_b0 = local_b4;
              local_b0 = (int *)FUN_004aaaf0(local_68,local_78,local_b4);
              local_4c = local_ac;
              local_50 = local_b4;
            }
            fVar27 = (float)local_b0;
            local_a8 = (float)param_1[5];
            local_a4 = (byte *)param_1[6];
            local_a0 = (int *)param_1[7];
            local_8 = 4;
            param_1[3] = (int)*ppiVar23;
            param_1[5] = 0;
            param_1[6] = 0;
            param_1[7] = 0;
            local_b4 = local_50;
            local_ac = local_4c;
            local_94 = local_a0;
            local_78 = (int *)local_a8;
            local_68 = (int *)local_a4;
            HELPER_Delirium_CycleAndAttackDispatchB();
            param_1[0xe0] = (int)local_48;
            param_1[0xe1] = (int)local_9c;
            if (ppiVar23 != &local_b4) {
              FUN_004aab30(local_50,fVar27,local_60);
            }
            cVar5 = local_41;
            param_1[6] = (int)local_68;
            param_1[5] = (int)local_78;
            param_1[7] = (int)local_94;
            local_48 = (int *)param_1[10];
            if (local_48 == (int *)0x19b) {
              uVar24 = 0;
              iVar6 = DAT_00c71678[0x60c0];
              local_48 = (int *)0x19b;
              if (*(int *)(iVar6 + 0x1264) != 0) {
                do {
                  iVar15 = *(int *)(*(int *)(iVar6 + 0x125c) + uVar24 * 4);
                  if (((cVar5 != '\0') && (*(int *)(iVar15 + 0x28) == 0x19b)) &&
                     (*(int *)(iVar15 + 0x2c) == 1)) {
                    HELPER_Delirium_ApplyFormAndState(1,0);
                  }
                  uVar24 = uVar24 + 1;
                } while (uVar24 < *(uint *)(iVar6 + 0x1264));
                local_48 = (int *)local_54[10];
                param_1 = local_54;
              }
            }
            uVar24 = param_1[0x2f8];
            uVar22 = uVar24 >> 0xf & 0x3ff;
            uVar11 = FUN_00aefca0();
            param_1 = local_54;
            uVar13 = 0;
            if (uVar11 <= uVar22) {
              uVar13 = uVar22 - uVar11;
            }
            local_54[0x2f9] = 0;
            local_54[0x2f8] =
                 ((uVar13 & 0x3ff | (uVar24 >> 0x19) << 10) << 8 | (uint)local_54[0x2f8] >> 7 & 0xff
                 ) << 7 | local_54[0x2f8] & 0x7fU;
            if (((int *)local_54[0x2f2] != local_48) ||
               (piVar21 = local_48, local_54[0x2f3] != local_54[0xb])) {
              local_54[0x2f2] = (int)local_48;
              local_54[0x2f3] = local_54[0xb];
              HELPER_Delirium_ApplyFormAndState(local_54[0xb],0);
              piVar21 = (int *)param_1[10];
            }
            if ((int)local_70 < param_1[0x2f0]) {
              AI_0041af60(local_90,piVar21,param_1[0xb] + 10,0xffffffff,0,0);
              piVar21 = (int *)0x0;
              local_8._0_1_ = 5;
              if (local_84 != (int *)0x0) {
                do {
                  HELPER_Delirium_ApplyFormAndState(param_1[0xb],0);
                  HELPER_Delirium_ApplyFormAndState(param_1[0xb] + 10,1);
                  piVar21 = (int *)((int)piVar21 + 1);
                } while (piVar21 < local_84);
              }
              local_8 = CONCAT31(local_8._1_3_,4);
              FUN_004175b0();
              piVar21 = (int *)param_1[10];
            }
            if (piVar21 == (int *)0x41) {
              if (((param_1[0xb] == 1) && (cVar5 = FUN_006ac710(8,0), cVar5 != '\0')) &&
                 ((param_1[0x2d9] == 9 &&
                  (((param_1[0x104] < 3 && (1 < param_1[0x104])) && (param_1[0xd] != 0x41)))))) {
                AI_0041af60(local_90,0x41,1,0xffffffff,0,0);
                piVar21 = local_84;
                local_8._0_1_ = 6;
                piVar20 = (int *)0x0;
                if (local_84 != (int *)0x0) {
                  do {
                    HELPER_Delirium_ApplyFormAndState(param_1[0xb],1);
                    piVar20 = (int *)((int)piVar20 + 1);
                  } while (piVar20 < piVar21);
                }
                local_8 = CONCAT31(local_8._1_3_,4);
                FUN_004175b0();
                piVar21 = (int *)param_1[10];
                goto LAB_004a7933;
              }
            }
            else {
LAB_004a7933:
              if (piVar21 == (int *)0x65) {
                AI_0041af60(local_90,0x65,param_1[0xb],0xffffffff,0,0);
                local_8._0_1_ = 7;
                local_94 = (int *)0x0;
                if (local_84 != (int *)0x0) {
                  do {
                    local_9c = *(int **)(local_8c + (int)local_94 * 4);
                    if (local_9c != param_1) {
                      iVar6 = local_9c[0x1f];
                      local_48 = local_9c + 0x12;
                      if (iVar6 == 0) {
                        iVar15 = -1;
                      }
                      else {
                        local_70 = (float)local_9c[0x22];
                        dVar28 = floor((double)local_70);
                        local_70 = (float)dVar28;
                        iVar15 = (int)dVar28;
                      }
                      if (iVar15 == 0) {
                        if (iVar6 == 0) {
                          uVar24 = local_30._0_4_;
                          auVar4._8_8_ = 0;
                          auVar4._0_8_ = auStack_2b._3_8_;
                          _local_30 = auVar4 << 0x40;
                          local_18 = 0xf;
                          local_1c = 0;
                          local_30[4] = 0;
                          local_30 = (undefined  [5])CONCAT14(local_30[4],uVar24);
                        }
                        else {
                          FUN_0040cf50();
                        }
                        local_8 = CONCAT31(local_8._1_3_,8);
                        HELPER_Delirium_ApplyFormAndState(param_1[0xb],1);
                        piVar21 = local_48;
                        local_68 = (int *)(local_30 + 4);
                        if (0xf < local_18) {
                          local_68 = (int *)stack0xffffffd4;
                        }
                        ppbVar10 = (byte **)local_48[0xd];
                        if (ppbVar10 == (byte **)0x0) {
LAB_004a7a7b:
                          cVar5 = HELPER_0040a5d0_AnimationPredicateC(local_68,1);
                          if (cVar5 != '\0') {
                            FUN_0040a1b0();
                            *(undefined *)(piVar21 + 0x11) = 1;
                          }
                        }
                        else {
                          pbVar19 = (byte *)local_68;
                          if (&DAT_0000000f < ppbVar10[5]) {
                            ppbVar10 = (byte **)*ppbVar10;
                          }
                          do {
                            bVar1 = *(byte *)ppbVar10;
                            bVar25 = bVar1 < *pbVar19;
                            if (bVar1 != *pbVar19) {
LAB_004a7a60:
                              uVar24 = -(uint)bVar25 | 1;
                              goto LAB_004a7a65;
                            }
                            if (bVar1 == 0) break;
                            bVar1 = *(byte *)((int)ppbVar10 + 1);
                            bVar25 = bVar1 < pbVar19[1];
                            if (bVar1 != pbVar19[1]) goto LAB_004a7a60;
                            ppbVar10 = (byte **)((int)ppbVar10 + 2);
                            pbVar19 = pbVar19 + 2;
                          } while (bVar1 != 0);
                          uVar24 = 0;
LAB_004a7a65:
                          if ((uVar24 != 0) ||
                             ((*(char *)(local_48[0xd] + 0x34) != '\0' &&
                              (*(char *)(local_48 + 0x11) == '\0')))) goto LAB_004a7a7b;
                        }
                        local_8._0_1_ = 7;
                        *(undefined *)(local_9c + 0xec) = 1;
                        if (0xf < local_18) {
                          if ((0xfff < local_18 + 1) &&
                             ((byte *)0x1f <
                              register0x00000018 + (-4 - *(int *)(register0x00000018 + -4))))
                          goto LAB_004a7b68;
                          FUN_00aef15c();
                        }
                      }
                    }
                    local_94 = (int *)((int)local_94 + 1);
                  } while (local_94 < local_84);
                }
                if (local_90[0] == '\0') {
                  local_8 = CONCAT31(local_8._1_3_,9);
                  FUN_00a648b0(0,0);
                }
              }
            }
            local_8._0_1_ = 0xff;
            local_8._1_3_ = 0xffffff;
            if (local_50 != (int *)0x0) {
              uVar24 = (((int)local_4c - (int)local_50) / 0x38) * 0x38;
              piVar21 = local_50;
              if (0xfff < uVar24) {
                piVar21 = (int *)local_50[-1];
                uVar24 = uVar24 + 0x23;
                if (0x1f < (uint)((int)local_50 + (-4 - (int)piVar21))) {
LAB_004a7b68:
                    /* WARNING: Subroutine does not return */
                  _invalid_parameter_noinfo_noreturn();
                }
              }
              FUN_00aef15c(piVar21,uVar24);
            }
          }
          HELPER_Delirium_AttackIDDispatchA();
          _local_30 = ZEXT816(0);
          param_1[10] = (int)local_7c;
          param_1[0xb] = (int)local_60;
          local_78 = (int *)param_1[0x2f8];
          local_20 = 0.0;
          local_1c = 0;
          local_9c = (int *)((uint)local_78 >> 7 & 0xff);
          iVar6 = ((uint)local_78 >> 0x19 | (param_1[0x2f9] & 7U) << 7) + 1;
          uVar24 = (uint)local_78 >> 0xf & 0x3ff;
          local_18 = 0;
          local_40 = _DAT_00bac7b0;
          uStack_3c = _UNK_00bac7b4;
          uStack_38 = _UNK_00bac7b8;
          uStack_34 = _UNK_00bac7bc;
          if (local_9c != (int *)0x0) {
            local_40 = _DAT_00bac5c0;
            uStack_3c = _UNK_00bac5c4;
            uStack_38 = _UNK_00bac5c8;
            uStack_34 = _UNK_00bac5cc;
          }
          local_70 = (float)iVar6;
          (**(code **)(*param_1 + 0x3c))(&local_40,0xffffffff,0xff,0,1);
          uVar13 = param_1[0x2f2];
          if (uVar13 < 0x107) {
            if (uVar13 != 0x106) {
              switch(uVar13) {
              case 0x24:
              case 0x2d:
              case 0x4e:
              case 0x66:
                break;
              default:
                goto LAB_004a7e61;
              }
            }
          }
          else {
            switch(uVar13) {
            case 0x107:
            case 0x10a:
            case 0x10e:
            case 0x111:
            case 0x19d:
              break;
            default:
LAB_004a7e61:
              bVar25 = uVar24 == 0;
              uVar24 = uVar24 - 1;
              if (bVar25) {
                iVar6 = FUN_006eef60();
                local_4c = (int *)((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]
                                          ) * DAT_00ba9ff4 * DAT_00baaa5c + DAT_00baaa5c);
                iVar6 = FUN_006be840();
                if (((NAN(*(float *)(iVar6 + 0x360)) || NAN((float)DAT_00c7b640)) ==
                     (*(float *)(iVar6 + 0x360) == (float)DAT_00c7b640)) ||
                   ((NAN(*(float *)(iVar6 + 0x364)) || NAN(DAT_00c7b644)) ==
                    (*(float *)(iVar6 + 0x364) == DAT_00c7b644))) {
                  iVar6 = FUN_006be840();
                  local_60 = *(float *)(iVar6 + 0x33c);
                  local_7c = *(int **)(iVar6 + 0x340);
                  iVar6 = FUN_006be840();
                  local_6c = *(float *)(iVar6 + 0x360);
                  local_68 = *(int **)(iVar6 + 0x364);
                  pfVar16 = (float *)FUN_00a10030();
                }
                else {
                  iVar6 = FUN_006be840();
                  local_60 = *(float *)(iVar6 + 0x33c);
                  local_7c = *(int **)(iVar6 + 0x340);
                  pfVar16 = (float *)FUN_0067f070();
                }
                local_64 = (float)local_4c * *pfVar16 + local_60;
                local_60 = (float)local_4c * pfVar16[1] + (float)local_7c;
                FUN_00812f50(&local_80,&local_64,0x43200000,0x43200000,0x43200000);
                local_54 = local_80;
                local_50 = local_7c;
                local_48 = (int *)0x0;
                iVar6 = FUN_006eef60();
                piVar21 = (int *)0x0;
                local_60 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baab30;
                do {
                  uVar24 = 0;
                  ppiVar23 = (int **)(DAT_00c71678 + 0x6eaa);
                  piVar20 = DAT_00c71678;
                  if (DAT_00c71678[0x6eab] - (int)*ppiVar23 >> 2 == 0) {
LAB_004a8344:
                    FUN_00a112c0(1,"??? teleport: %d tries\n",(int)piVar21 + 1);
                    param_1[0xcf] = (int)local_54;
                    param_1[0xd0] = (int)local_50;
                    fVar27 = DAT_00baa528;
                    if ((param_1[0x319] == 0x12) || (fVar27 = DAT_00baa2d0, param_1[0x319] == 0x13))
                    {
                      local_58 = fVar27;
                    }
                    local_4c = (int *)0xd6;
                    FUN_00956780();
                    FUN_0092dc30(local_4c,0x3f800000,2,0,local_58,0);
                    param_1[0x2f6] = param_1[0x2f6] & 0xffffff;
                    param_1[0x2f7] = 0;
                    iVar6 = 0;
                    goto LAB_004a81ce;
                  }
                  while( true ) {
                    piVar21 = ppiVar23[1];
                    if ((int)piVar21 - (int)*ppiVar23 >> 2 == 0) {
                      FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
                      piVar21 = ppiVar23[1];
                      piVar20 = DAT_00c71678;
                    }
                    piVar17 = *ppiVar23;
                    if (uVar24 < (uint)((int)piVar21 - (int)piVar17 >> 2)) {
                      piVar17 = piVar17 + uVar24;
                    }
                    fVar27 = *(float *)(*piVar17 + 0x33c) - (float)local_54;
                    fVar26 = *(float *)(*piVar17 + 0x340) - (float)local_50;
                    if (fVar26 * fVar26 + fVar27 * fVar27 < DAT_00baac4c) break;
                    ppiVar23 = (int **)(piVar20 + 0x6eaa);
                    uVar24 = uVar24 + 1;
                    piVar21 = local_48;
                    if ((uint)(piVar20[0x6eab] - (int)*ppiVar23 >> 2) <= uVar24) goto LAB_004a8344;
                  }
                  local_4c = (int *)((float)(int)local_48 * DAT_00baaa5c * DAT_00baa1d4 +
                                    DAT_00baab14);
                  iVar6 = FUN_006be840();
                  uVar24 = (uint)local_48 & 0x80000003;
                  if ((int)uVar24 < 0) {
                    uVar24 = (uVar24 - 1 | 0xfffffffc) + 1;
                  }
                  piVar21 = (int *)(((float)uVar24 * DAT_00baa9b4 + local_60) * DAT_00baa088);
                  local_7c = piVar21;
                  FUN_0041d540();
                  local_6c = (float)piVar21 * (float)local_4c + *(float *)(iVar6 + 0x33c);
                  piVar21 = local_7c;
                  FUN_0041d520();
                  local_68 = (int *)((float)piVar21 * (float)local_4c + *(float *)(iVar6 + 0x340));
                  FUN_00812f50(&local_98,&local_6c,0x43200000,0x43200000,0x43200000);
                  local_50 = local_94;
                  piVar21 = (int *)((int)local_48 + 1);
                  local_54 = local_98;
                  local_48 = piVar21;
                } while ((int)piVar21 < 0x14);
                FUN_00a112c0(1,"??? teleport: %d tries\n",piVar21);
                iVar6 = (int)local_70;
LAB_004a81ce:
                uVar24 = FUN_006eef60();
                uVar24 = uVar24 % 600 + 300;
              }
            }
          }
          param_1[0x2f9] = 0;
          param_1[0x2f8] =
               ((uVar24 & 0x3ff | iVar6 << 10) << 8 | (uint)local_9c & 0xff) << 7 |
               (uint)local_78 & 0x7f;
          if ((param_1[0x104] == 1) &&
             ((((((iVar6 = param_1[0x2d9], iVar6 == 6 || (iVar6 == 7)) || (iVar6 == 0x10)) ||
                ((iVar6 == 8 || (iVar6 == 9)))) ||
               ((iVar6 == 10 || ((iVar6 == 0xb || (iVar6 == 0xd)))))) ||
              ((iVar6 == 0xe || (iVar6 == 0xf)))))) {
            *(char *)((int)param_1 + 0xbd2) = *(char *)((int)param_1 + 0xbd2) + -1;
          }
          iVar6 = param_1[0x2fa];
          if ((iVar6 != 0) && (*(char *)(iVar6 + 0x173) == '\0')) {
            local_c4 = 0;
            local_c0 = 0;
            local_bc = 0;
            local_b8 = 0;
            local_b4 = DAT_00c7b640;
            local_b0 = (int *)DAT_00c7b644;
            local_ac = DAT_00c7b640;
            local_a8 = DAT_00c7b644;
            local_a4 = (byte *)0x0;
            local_a0 = (int *)0x0;
            (**(code **)(*param_1 + 0x20))
                      (*(undefined4 *)(iVar6 + 0x14),*(undefined4 *)(iVar6 + 0x18),
                       *(undefined4 *)(iVar6 + 0x1c),&local_c4,0x1e);
            HELPER_Delirium_CycleAndAttackDispatchB();
            HELPER_Delirium_AttackIDDispatchA();
          }
          goto LAB_004a831b;
        }
        FUN_004a6240(param_1,param_1[0x2fa]);
        if (((param_1[0x2f2] == 0x111) && (param_1[0x2f3] == 10)) &&
           ((int *)param_1[0xf0] != (int *)0x0)) {
          (**(code **)(*(int *)param_1[0xf0] + 0x28))();
        }
        uVar24 = FUN_006eef60();
        local_48 = (int *)(uVar24 % 100);
        local_58 = 1.401298e-43;
        iVar6 = 0;
        local_50 = (int *)0x19c;
        do {
          iVar15 = (int)local_50;
          local_58 = (float)((int)local_58 + -1);
          if ((local_48 < 10) ||
             ((((local_50 != (int *)0x19c && (local_50 != (int *)0x38a)) &&
               ((local_50 != (int *)0x38b &&
                (iVar12 = FUN_00694fb0(local_50,iVar6,0), (*(uint *)(iVar12 + 0xd8) & 0x200) == 0)))
               ) && ((iVar15 != param_1[0x2f2] || (iVar6 != param_1[0x2f3])))))) break;
          iVar6 = 0;
          local_4c = DAT_00c71678;
          local_50 = (int *)0x0;
          uVar24 = DAT_00c71678[0x9a76] - DAT_00c71678[0x9a75] >> 3;
          if (uVar24 != 0) {
            uVar13 = FUN_006eef60();
            uVar13 = uVar13 % uVar24;
            local_50 = *(int **)(local_4c[0x9a75] + uVar13 * 8);
            iVar6 = *(int *)(local_4c[0x9a75] + 4 + uVar13 * 8);
          }
        } while (local_58 != 0.0);
        param_1[0x2f2] = (int)local_50;
        param_1[0x2f3] = iVar6;
        if (local_50 == (int *)0x0) {
          FUN_00a112c0(0x10,"No form for Delirium");
        }
        uVar24 = param_1[0x2f8];
        local_58 = (float)(uVar24 >> 0x19 | (param_1[0x2f9] & 7U) << 7);
        uVar13 = param_1[0x2f8] & 0x7f;
        if ((param_1[0x2f2] == 0x2d) || ((param_1[0x2f2] == 0x54 && (param_1[0x2f3] == 10)))) {
LAB_004a6dd0:
          uVar11 = 0;
        }
        else {
          uVar11 = FUN_006eef60();
          if (uVar13 <= uVar11 % 100) {
            uVar13 = uVar13 + 10;
            goto LAB_004a6dd0;
          }
          uVar11 = 0x78;
          uVar13 = 0;
        }
        param_1[0x2f9] = 0;
        iVar6 = param_1[0x2f2];
        param_1[0x2f8] =
             ((uVar24 >> 0xf & 0x3ff | (int)local_58 << 10) << 8 | uVar11) << 7 | uVar13 & 0x7f;
        if (iVar6 == 0x10a) {
          param_1[0x2f3] = 0;
        }
        else if ((iVar6 == 0x2d) ||
                ((iVar6 == 0x54 && (uVar24 = FUN_006eef60(), (uVar24 & 1) == 0)))) {
          param_1[0x2f3] = 10;
        }
        local_50 = (int *)param_1[10];
        iVar6 = param_1[0xdc];
        local_58 = (float)param_1[0xe0];
        local_78 = (int *)param_1[0xb];
        param_1[10] = param_1[0x2f2];
        param_1[0xb] = param_1[0x2f3];
        local_48 = (int *)param_1[0xe1];
        FUN_00812f50(&local_64,param_1 + 0xcf,iVar6,iVar6,iVar6);
        (**(code **)(*param_1 + 0x44))();
        FUN_00a112c0(1,"Changed Delirium form to %d:%u.\n",param_1[0x2f2],param_1[0x2f3]);
        pcVar2 = *(code **)(*param_1 + 4);
        uVar7 = FUN_006eef60();
        (*pcVar2)(param_1[10],param_1[0xb],0,uVar7);
        param_1[0xcf] = (int)local_64;
        param_1[0xd0] = (int)local_60;
        param_1[0x2f2] = param_1[10];
        param_1[0x2d9] = 0;
        param_1[0x2f3] = param_1[0xb];
        uVar24 = FUN_006eef60();
        *(short *)(param_1 + 0x2f4) =
             (short)(int)((float)((double)(uVar24 % 0xffffffff) +
                                 (double)(&DAT_00bacb00)[-((int)(uVar24 % 0xffffffff) >> 0x1f)]) /
                          (DAT_00baacc0 / ((float)local_94 - (float)local_68)) + (float)local_68) *
             0x1e;
        uVar24 = FUN_006eef60();
        piVar21 = param_1 + 0x12;
        *(char *)((int)param_1 + 0xbd2) = (char)((ulonglong)uVar24 % 3) + '\x02';
        HELPER_Delirium_ApplyFormAndState(param_1[0xb],1);
        HELPER_Delirium_StateSetupB();
        HELPER_Delirium_StateSetupA();
        *(undefined *)((int)param_1 + 0xbd3) = 8;
        param_1[0x104] = 0;
        if (param_1[10] == 0x54) {
          if (param_1[0x2f3] == 10) {
            param_1[0x62] = 0;
          }
          else {
            param_1[0x2f0] = 2;
            param_1[0x2d9] = 4;
          }
        }
        iVar6 = FUN_006be840();
        local_4c = *(int **)(iVar6 + 0x33c);
        local_68 = *(int **)(iVar6 + 0x340);
        if ((param_1[10] == 0x24) || (param_1[10] == 0x4e)) {
          HELPER_Entity_NPC_Update_dispatcher();
        }
        iVar6 = FUN_006be840();
        *(int **)(iVar6 + 0x33c) = local_4c;
        *(int **)(iVar6 + 0x340) = local_68;
        iVar6 = param_1[10];
        if (iVar6 == 0x2d) {
          FUN_006d6ba0(0x65,0x3f800000,0x2d,0,0x3f800000);
          param_1[0x5a] = param_1[0x5a] | 0x40000;
          param_1[0x5b] = param_1[0x5b];
          param_1[0xcd] = param_1[0xcf];
          param_1[0xce] = param_1[0xd0];
          iVar6 = param_1[10];
          param_1[0x2d9] = 3;
          param_1[0xc] = 2;
          param_1[0x2e8] = 0x1e;
          param_1[0x62] = 0;
        }
        if (iVar6 == 0x4f) {
          HELPER_Entity_NPC_Update_dispatcher();
          AI_0041af60(local_90,param_1[10],0x14,0xffffffff,0,0);
          piVar21 = local_84;
          iVar6 = local_8c;
          local_8 = 0;
          piVar20 = (int *)0x0;
          if (local_84 != (int *)0x0) {
            do {
              HELPER_Delirium_ApplyFormAndState
                        (*(undefined4 *)(*(int *)(iVar6 + (int)piVar20 * 4) + 0x2c),1);
              piVar20 = (int *)((int)piVar20 + 1);
              param_1 = local_54;
            } while (piVar20 < piVar21);
          }
          if (param_1[0xf0] != 0) {
            HELPER_Delirium_ApplyFormAndState(*(undefined4 *)(param_1[0xf0] + 0x2c),1);
          }
          if (local_90[0] == '\0') {
            local_8 = 1;
            FUN_00a648b0(0,0);
          }
          local_8._0_1_ = 0xff;
          local_8._1_3_ = 0xffffff;
          piVar21 = param_1 + 0x12;
        }
        if (param_1[10] == 0x197) {
          HELPER_Entity_NPC_Update_dispatcher();
          param_1[0x2d9] = 3;
          ppbVar10 = (byte **)piVar21[0xd];
          if (ppbVar10 != (byte **)0x0) {
            ppbVar8 = ppbVar10;
            if (&DAT_0000000f < ppbVar10[5]) {
              ppbVar8 = (byte **)*ppbVar10;
            }
            pbVar19 = &DAT_00b1bc54;
            do {
              bVar1 = *(byte *)ppbVar8;
              bVar25 = bVar1 < *pbVar19;
              if (bVar1 != *pbVar19) {
LAB_004a71c3:
                uVar24 = -(uint)bVar25 | 1;
                goto LAB_004a71c8;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppbVar8 + 1);
              bVar25 = bVar1 < pbVar19[1];
              if (bVar1 != pbVar19[1]) goto LAB_004a71c3;
              ppbVar8 = (byte **)((int)ppbVar8 + 2);
              pbVar19 = pbVar19 + 2;
            } while (bVar1 != 0);
            uVar24 = 0;
LAB_004a71c8:
            if ((uVar24 == 0) &&
               ((*(byte *)(ppbVar10 + 0xd) == 0 || (*(char *)(piVar21 + 0x11) != '\0'))))
            goto LAB_004a71f4;
          }
          cVar5 = HELPER_0040a5d0_AnimationPredicateC(&DAT_00b1bc54,1);
          if (cVar5 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(piVar21 + 0x11) = 1;
          }
        }
LAB_004a71f4:
        if (param_1[10] == 0x45) {
          if (param_1[0xb] == 1) {
LAB_004a7212:
            HELPER_Entity_NPC_Update_dispatcher();
            AI_0041af60(local_90,param_1[10],param_1[0xb],0xffffffff,0,0);
            local_8 = 2;
            piVar21 = (int *)0x0;
            if (local_84 != (int *)0x0) {
              do {
                HELPER_Delirium_ApplyFormAndState
                          (*(undefined4 *)(*(int *)(local_8c + (int)piVar21 * 4) + 0x2c),1);
                piVar21 = (int *)((int)piVar21 + 1);
              } while (piVar21 < local_84);
            }
            local_8._0_1_ = 0xff;
            local_8._1_3_ = 0xffffff;
            if (local_90[0] == '\0') {
              local_8 = 3;
              FUN_00a648b0(0,0);
              local_8._0_1_ = 0xff;
              local_8._1_3_ = 0xffffff;
            }
          }
        }
        else if (param_1[10] == 0x19a) goto LAB_004a7212;
        if (param_1[10] == 0x19a) {
          iVar6 = param_1[0xf0];
          if (param_1[0x2fa] != 0) {
            local_4c = param_1 + 0x2fa;
            FUN_004cf210();
          }
          param_1[0x2fa] = iVar6;
          if (iVar6 != 0) {
            FUN_004cdcf0();
          }
        }
        iVar6 = param_1[10];
        if (iVar6 == 0x107) {
          HELPER_Entity_NPC_Update_dispatcher();
          iVar6 = param_1[10];
        }
        if (iVar6 == 0x61) {
          HELPER_Entity_NPC_Update_dispatcher();
          iVar6 = param_1[0xf0];
          uVar24 = 0;
          do {
            while (iVar6 != 0) {
              HELPER_Delirium_ApplyFormAndState(*(undefined4 *)(iVar6 + 0x2c),1);
              if (uVar24 == 0) {
                iVar6 = *(int *)(iVar6 + 0x3c0);
              }
              else {
                iVar6 = *(int *)(iVar6 + 0x3bc);
              }
            }
            iVar6 = param_1[0xef];
            uVar24 = uVar24 + 1;
          } while (uVar24 < 2);
          iVar6 = param_1[10];
        }
        if (iVar6 == 0x111) {
          if (param_1[0xb] == 10) {
            HELPER_Entity_NPC_Update_dispatcher();
            iVar6 = param_1[10];
            goto LAB_004a736b;
          }
        }
        else {
LAB_004a736b:
          if (((iVar6 == 0x1c) || (iVar6 == 0x3e)) || (iVar6 == 0x4e)) {
            HELPER_Entity_NPC_Update_dispatcher();
            iVar6 = param_1[0xf0];
            uVar24 = 0;
            do {
              while (iVar6 != 0) {
                HELPER_Delirium_ApplyFormAndState(*(undefined4 *)(iVar6 + 0x2c),1);
                *(uint *)(iVar6 + 0x168) = *(uint *)(iVar6 + 0x168) | 0x80040000;
                *(int **)(iVar6 + 0x380) = local_48;
                *(int **)(iVar6 + 900) = local_48;
                *(undefined *)(iVar6 + 0x3b0) = 1;
                *(undefined4 *)(iVar6 + 0x16c) = *(undefined4 *)(iVar6 + 0x16c);
                if (uVar24 == 0) {
                  iVar6 = *(int *)(iVar6 + 0x3c0);
                }
                else {
                  iVar6 = *(int *)(iVar6 + 0x3bc);
                }
              }
              iVar6 = param_1[0xef];
              uVar24 = uVar24 + 1;
            } while (uVar24 < 2);
            iVar6 = param_1[10];
          }
          if (iVar6 == 0x1c) {
            param_1[0x2d9] = 1;
          }
        }
        uVar7 = 2;
        param_1[0x2f8] = param_1[0x2f8] & 0x1ffffff;
        param_1[0xe0] = (int)local_58;
        param_1[0xe1] = (int)local_48;
        fVar27 = DAT_00baa83c;
        param_1[10] = (int)local_50;
        param_1[0xb] = (int)local_78;
        local_60 = (float)param_1[0x2f9];
        param_1[0x2f9] = 0;
        if ((float)param_1[0xdc] < fVar27) {
          uVar7 = 1;
        }
        if ((DAT_00baa868 <= (float)param_1[0xdc]) || (DAT_00baa8d0 < (float)param_1[0x57])) {
          uVar7 = 3;
        }
        uVar14 = FUN_006eef60();
        uVar31 = 0xc5d5ac;
        pTVar30 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uVar29 = 0;
        uVar7 = HELPER_Entity_SpawnRelay(1000,0xf,param_1 + 0xcf,&DAT_00c7b640,param_1,uVar7,uVar14)
        ;
        iVar6 = __RTDynamicCast(uVar7,uVar29,pTVar30,uVar31);
        *(int *)(iVar6 + 0x34c) = param_1[0xd3];
        *(int *)(iVar6 + 0x350) = param_1[0xd4];
        *(float *)(iVar6 + 0x358) = (float)param_1[0xd4] + DAT_00baa454;
        goto LAB_004a831b;
      }
      *(undefined *)(param_1 + 0xec) = 1;
      ppbVar10 = (byte **)param_1[0x1f];
      if (ppbVar10 == (byte **)0x0) {
LAB_004a6a7c:
        cVar5 = HELPER_0040a5d0_AnimationPredicateC(&DAT_00b1bc54,1);
        if (cVar5 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        ppbVar8 = ppbVar10;
        if (&DAT_0000000f < ppbVar10[5]) {
          ppbVar8 = (byte **)*ppbVar10;
        }
        pbVar19 = &DAT_00b1bc54;
        do {
          bVar1 = *(byte *)ppbVar8;
          bVar25 = bVar1 < *pbVar19;
          if (bVar1 != *pbVar19) {
LAB_004a6a66:
            uVar24 = -(uint)bVar25 | 1;
            goto LAB_004a6a6b;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar8 + 1);
          bVar25 = bVar1 < pbVar19[1];
          if (bVar1 != pbVar19[1]) goto LAB_004a6a66;
          ppbVar8 = (byte **)((int)ppbVar8 + 2);
          pbVar19 = pbVar19 + 2;
        } while (bVar1 != 0);
        uVar24 = 0;
LAB_004a6a6b:
        if ((uVar24 != 0) ||
           ((*(byte *)(ppbVar10 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
        goto LAB_004a6a7c;
      }
      *(undefined *)((int)param_1 + 0xbd3) = 0x10;
      param_1[0x2f2] = 0;
      param_1[0x2f3] = 0;
      uVar24 = FUN_006eef60();
      *(short *)(param_1 + 0x2f4) =
           (short)(int)((float)((double)(uVar24 % 0xffffffff) +
                               (double)(&DAT_00bacb00)[-((int)(uVar24 % 0xffffffff) >> 0x1f)]) /
                        (DAT_00baacc0 / ((float)local_94 - (float)local_68)) + (float)local_68) *
           0x1e;
      uVar24 = FUN_006eef60();
      param_1[0x2f6] = 0xff;
      param_1[0x2f7] = 0;
      param_1[0x2d9] = 8;
      *(char *)((int)param_1 + 0xbd2) = (char)((ulonglong)uVar24 % 3) + '\x02';
      param_1[0x311] = 0x78;
      uVar24 = param_1[0x2f8];
      uVar13 = local_54[0x2f8];
      uVar11 = FUN_006eef60();
      local_54[0x2f8] =
           (uVar11 % 600 + 300 & 0x3ff) << 0xf |
           (uVar13 >> 7 & 0xff | (uVar13 >> 0x19) << 0x12) << 7 | uVar24 & 0x7f;
      local_54[0x2f9] = 0;
      goto LAB_004a831b;
    }
    ppbVar10 = (byte **)param_1[0x1f];
    if (ppbVar10 != (byte **)0x0) {
      if (*(char *)(param_1 + 0x23) != '\0') {
        ppbVar8 = ppbVar10;
        if (&DAT_0000000f < ppbVar10[5]) {
          ppbVar8 = (byte **)*ppbVar10;
        }
        pcVar18 = "IdleNoLoop";
        do {
          bVar1 = *(byte *)ppbVar8;
          bVar25 = bVar1 < (byte)*pcVar18;
          if (bVar1 != *pcVar18) {
LAB_004a6930:
            uVar24 = -(uint)bVar25 | 1;
            goto LAB_004a6935;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar8 + 1);
          bVar25 = bVar1 < ((byte *)pcVar18)[1];
          if (bVar1 != ((byte *)pcVar18)[1]) goto LAB_004a6930;
          ppbVar8 = (byte **)((int)ppbVar8 + 2);
          pcVar18 = (char *)((byte *)pcVar18 + 2);
        } while (bVar1 != 0);
        uVar24 = 0;
LAB_004a6935:
        if (uVar24 == 0) {
          FUN_00409100();
          FUN_00409100();
          ppbVar10 = (byte **)param_1[0x1f];
        }
      }
      if ((ppbVar10 != (byte **)0x0) && (*(char *)(param_1 + 0x23) == '\0')) {
        puVar9 = (undefined4 *)param_1[0x1f];
        if (puVar9 == (undefined4 *)0x0) {
          puVar9 = (undefined4 *)&DAT_00b1a4ec;
        }
        else if (&DAT_0000000f < (undefined *)puVar9[5]) {
          puVar9 = (undefined4 *)*puVar9;
        }
        pcVar18 = "IdleNoLoop";
        do {
          bVar1 = *(byte *)puVar9;
          bVar25 = bVar1 < (byte)*pcVar18;
          if (bVar1 != *pcVar18) {
LAB_004a6994:
            uVar24 = -(uint)bVar25 | 1;
            goto LAB_004a6999;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)puVar9 + 1);
          bVar25 = bVar1 < ((byte *)pcVar18)[1];
          if (bVar1 != ((byte *)pcVar18)[1]) goto LAB_004a6994;
          puVar9 = (undefined4 *)((int)puVar9 + 2);
          pcVar18 = (char *)((byte *)pcVar18 + 2);
        } while (bVar1 != 0);
        uVar24 = 0;
LAB_004a6999:
        if (uVar24 == 0) {
          piVar21 = param_1 + 0x2f4;
          *(short *)piVar21 = *(short *)piVar21 + -1;
          if (*(short *)piVar21 != 0) goto LAB_004a68a0;
          HELPER_0040a380_AnimationActionA("Scream",0);
          goto LAB_004a68bf;
        }
      }
    }
    ppbVar10 = (byte **)param_1[0x1f];
    if ((ppbVar10 != (byte **)0x0) && (*(char *)(param_1 + 0x23) == '\0')) {
      if (&DAT_0000000f < ppbVar10[5]) {
        ppbVar10 = (byte **)*ppbVar10;
      }
      pcVar18 = "Scream";
      do {
        bVar1 = *(byte *)ppbVar10;
        bVar25 = bVar1 < (byte)*pcVar18;
        if (bVar1 != *pcVar18) {
LAB_004a6a08:
          uVar24 = -(uint)bVar25 | 1;
          goto LAB_004a6a0d;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar10 + 1);
        bVar25 = bVar1 < ((byte *)pcVar18)[1];
        if (bVar1 != ((byte *)pcVar18)[1]) goto LAB_004a6a08;
        ppbVar10 = (byte **)((int)ppbVar10 + 2);
        pcVar18 = (char *)((byte *)pcVar18 + 2);
      } while (bVar1 != 0);
      uVar24 = 0;
LAB_004a6a0d:
      if (uVar24 == 0) {
        *(undefined *)((int)param_1 + 0x173) = 1;
      }
    }
  }
LAB_004a68bf:
  param_1[0xd8] = (int)DAT_00c7b640;
  param_1[0xd9] = (int)DAT_00c7b644;
LAB_004a831b:
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
}

