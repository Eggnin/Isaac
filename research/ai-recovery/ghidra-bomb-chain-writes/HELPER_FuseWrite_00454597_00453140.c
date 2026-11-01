/* Local J460 decompiler output.
 * VA: 0x00454597
 * Entry: 00453140
 * Dispatcher: 0x006c2990
 * Types: 4
 * Identities: 4.*
 * Evidence: Candidate immediate-zero +0x410 write, entity type not yet classified
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=4; identities=4.*; Candidate immediate-zero +0x410
   write, entity type not yet classified */

void __fastcall HELPER_FuseWrite_00454597(float **param_1)

{
  byte bVar1;
  char cVar2;
  undefined4 uVar3;
  float fVar4;
  float **ppfVar5;
  float **ppfVar6;
  int *piVar7;
  int iVar8;
  int iVar9;
  undefined4 uVar10;
  undefined4 extraout_ECX;
  undefined4 *puVar11;
  undefined4 extraout_ECX_00;
  char *pcVar12;
  uint uVar13;
  uint uVar14;
  float fVar15;
  float *pfVar16;
  float *pfVar17;
  code *pcVar18;
  bool bVar19;
  float fVar20;
  undefined8 uVar21;
  undefined4 uVar22;
  float *local_d8;
  float *local_d4;
  undefined local_d0 [4];
  float **local_cc;
  undefined4 local_c8;
  float **local_c4;
  float local_c0;
  float **local_bc;
  float **local_b8;
  char local_b1;
  float *local_b0;
  float *local_ac;
  float *local_a8;
  char local_a1;
  float local_a0;
  float **local_9c;
  float **local_98;
  undefined4 local_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined local_84 [2];
  undefined2 uStack_82;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 local_6c;
  undefined4 *local_68 [2];
  undefined8 local_60;
  undefined8 uStack_58;
  undefined local_4c [16];
  float *local_3c;
  undefined4 uStack_38;
  float *pfStack_34;
  undefined4 uStack_30;
  float local_2c;
  float local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af249d;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_9c = (float **)param_1[0xb];
  fVar15 = (float)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  local_cc = param_1;
  local_a0 = fVar15;
  local_a1 = FUN_009be990(local_24);
  if (param_1[0x2d9] == (float *)0x0) {
    local_98 = (float **)0x0;
    FUN_0044bcc0(1,&local_98);
  }
  uVar13 = (uint)param_1[0x2ff] & 3;
  local_b8 = (float **)
             ((int)param_1[0x2fd][(int)param_1[0x2fe] - 1U & (uint)param_1[0x2ff] >> 2] + uVar13 * 4
             );
  if ((*(int *)((int)param_1[0x2fd][(int)param_1[0x2fe] - 1U & (uint)param_1[0x2ff] >> 2] +
               uVar13 * 4) == 0) &&
     (local_98 = (float **)FUN_0040b430(&DAT_00b1d57c), local_98 != (float **)0x0)) {
    uVar3 = FUN_006eef60();
    local_a8 = (float *)HELPER_Entity_SpawnRelay
                                  (1000,0x7a,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar3);
    local_bc = (float **)(local_a8 + 0xef);
    if (local_a8[0xef] != 0.0) {
      local_c4 = local_bc;
      FUN_004cf210(&local_c4);
    }
    *local_bc = (float *)param_1;
    FUN_004cdcf0(local_bc);
    if (*local_98 == (float *)0x0) {
      fVar4 = -NAN;
    }
    else {
      fVar4 = **local_98;
    }
    local_a8[0x114] = fVar4;
    if (*local_b8 != (float *)0x0) {
      local_bc = local_b8;
      FUN_004cf210(&local_bc);
    }
    *local_b8 = local_a8;
    FUN_004cdcf0(local_b8);
    *(undefined *)(local_98 + 0x1d) = 0;
  }
  if (local_9c == (float **)0x0) {
    if (param_1[0x2d9] == (float *)0x0) {
      HELPER_0040a380_AnimationActionA("Appear",0);
      param_1[0x2d9] = (float *)0x3;
      goto LAB_00456101;
    }
    switch(param_1[0x2d9]) {
    case (float *)0x3:
      param_1[0xd6] = (float *)0x0;
      if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
        pfVar16 = param_1[0x104];
        bVar19 = pfVar16 == (float *)0x0;
        if (bVar19) {
          if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
            HELPER_0040a380_AnimationActionA(&DAT_00b1bc54,0);
            param_1[0x62] = (float *)&DAT_00000004;
            param_1[0x104] = (float *)((int)param_1[0x104] + (int)fVar15);
            *(undefined *)(param_1 + 0xec) = 0;
          }
          break;
        }
      }
      else {
        pfVar16 = param_1[0x104];
        bVar19 = pfVar16 == (float *)0x0;
      }
      if (!bVar19 && -1 < (int)pfVar16) {
        local_9c = (float **)((int)pfVar16 + (int)fVar15);
        param_1[0x104] = (float *)local_9c;
        cVar2 = FUN_00417430(0,0x10000000);
        if (((cVar2 == '\0') ||
            ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) &&
           (0xf < (int)local_9c)) {
          cVar2 = FUN_0040a4d0("PopDown");
          if (cVar2 == '\0') {
            HELPER_0040a380_AnimationActionA("PopDown",0);
          }
          else {
            cVar2 = HELPER_0040b030_AnimationEventPredicateD(&DAT_00b1d5b0);
            if (cVar2 != '\0') {
              local_98 = (float **)0x372;
              FUN_00956780();
              FUN_0092dc30(local_98,0x3f800000,2,0,0x3f800000,0);
            }
          }
          if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
            local_98 = (float **)0x36a;
            FUN_00956780();
            FUN_0092dc30(local_98,0x3f800000,2,0,0x3f800000,0);
            HELPER_0040a380_AnimationActionA("BigHoleClose",0);
            param_1[0x2d9] = (float *)&DAT_00000004;
            param_1[0x104] = (float *)0x0;
          }
        }
        else {
          cVar2 = FUN_00417430(0,0x10000000);
          if (((cVar2 != '\0') &&
              ((param_1[0x1f] == (float *)0x0 || (*(char *)(param_1 + 0x23) == '\0')))) &&
             (cVar2 = HELPER_0040a5d0_AnimationPredicateC(&DAT_00b1bc54,1), cVar2 != '\0')) {
            HELPER_AnimationState_Loop();
            *(undefined *)(param_1 + 0x23) = 1;
          }
        }
      }
      break;
    case (float *)0x4:
      if (param_1[0x104] == (float *)0x0) {
        if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          param_1[0x62] = (float *)0x0;
          param_1[0xd6] = (float *)0xc2c80000;
          param_1[0x104] = (float *)0x1;
          uVar13 = FUN_006eef60();
          iVar9 = FUN_0042a270();
          local_a0 = 0.0;
          local_bc = (float **)((uint)(7 < iVar9) * 2 + 2 + (uVar13 & 1));
          if (local_bc != (float **)0x0) {
LAB_004535e0:
            local_98 = *(float ***)(DAT_00c71678 + 0x18300);
            FUN_006eef60();
            local_a8 = (float *)0x0;
LAB_00453604:
            local_a8 = (float *)((int)local_a8 + 1);
            FUN_0081e9d0(&uStack_58,0);
            fVar15 = (float)param_1[0xdc] * DAT_00baa380;
            local_9c = (float **)(DAT_00c71678 + 0x18300);
            HELPER_RoomClampedPoint(&local_b0,&uStack_58,fVar15,fVar15,fVar15);
            pfVar16 = (float *)0x0;
            if (local_98[0x499] != (float *)0x0) {
              pfVar17 = local_98[0x497];
              do {
                fVar15 = *pfVar17;
                if ((*(int *)(DAT_00c71678 + 0x26614) < 2) || (*(int *)((int)fVar15 + 0x28) != 1)) {
                  iVar9 = *(int *)((int)fVar15 + 0x28);
                  if (((9 < iVar9) && (((iVar9 < 1000 && (iVar9 != 0x21)) && (iVar9 != 0x11)))) &&
                     (iVar9 != 0x124)) {
                    if (iVar9 == 0x375) {
                      bVar19 = *(int *)((int)fVar15 + 0x2c) == 10;
                    }
                    else {
                      if ((iVar9 == 0x3c0) || (iVar9 == 0x3c5)) goto LAB_0045374a;
                      bVar19 = iVar9 == 0xf5;
                    }
                    if (!bVar19) goto LAB_004536fb;
                  }
                }
                else {
                  iVar9 = 1;
LAB_004536fb:
                  if (((*(char *)((int)fVar15 + 0x173) == '\0') && (iVar9 == 0x19b)) &&
                     ((*(int *)((int)fVar15 + 0x2c) == 1 &&
                      (fVar4 = *(float *)((int)fVar15 + 0x33c) - (float)local_b0,
                      fVar20 = *(float *)((int)fVar15 + 0x340) - (float)local_ac,
                      fVar15 = (float)param_1[0xdc] + (float)param_1[0xdc],
                      fVar20 * fVar20 + fVar4 * fVar4 < fVar15 * fVar15)))) goto LAB_0045378b;
                }
LAB_0045374a:
                pfVar16 = (float *)((int)pfVar16 + 1);
                pfVar17 = pfVar17 + 1;
                if (local_98[0x499] <= pfVar16) break;
              } while( true );
            }
            iVar9 = 0;
            if ((uint)local_a0 < 2) {
              uVar13 = FUN_006eef60();
              uVar14 = (uint)((ulonglong)uVar13 % 100);
              if (uVar14 < 0x32) {
                iVar9 = 1;
              }
              else {
                iVar9 = (-(uint)(uVar14 < 0x5a) & 0xfffffffe) + 5;
              }
              if ((local_a0 == 0.0) && (uVar14 + (int)(((ulonglong)uVar13 % 100) / 10) * -10 == 0))
              {
                local_d8 = (float *)((float)local_b0 + DAT_00ba9fe4);
                local_d4 = (float *)((float)local_ac + DAT_00baa9a0);
                cVar2 = FUN_00813360(&local_d8,0);
                if (cVar2 != '\0') {
                  AI_0041af60(&pfStack_34,0x194,1,0xffffffff,0,0);
                  local_a1 = (uint)local_28 < 2;
                  if ((char)pfStack_34 == '\0') {
                    local_14 = 0;
                    FUN_00a648b0(0,0);
                    local_14 = 0xffffffff;
                  }
                  if (local_a1 != '\0') {
                    iVar9 = 7;
                  }
                }
              }
              iVar9 = iVar9 + (int)local_a0;
            }
            uVar3 = FUN_006eef60();
            local_c8 = 0;
            local_c4 = (float **)0x0;
            iVar9 = HELPER_Entity_SpawnRelay(0x19b,1,&local_b0,&local_c8,param_1,iVar9,uVar3);
            *(uint *)(iVar9 + 0x168) = *(uint *)(iVar9 + 0x168) & 0xfffffffb;
            *(undefined4 *)(iVar9 + 0x16c) = *(undefined4 *)(iVar9 + 0x16c);
            *(float **)(iVar9 + 900) = param_1[0xe1];
            *(float **)(iVar9 + 0x380) = param_1[0xe0];
            if (*(float **)(iVar9 + 0x3bc) != (float *)0x0) {
              local_9c = (float **)(iVar9 + 0x3bc);
              FUN_004cf210(&local_9c);
            }
            *(undefined4 *)(iVar9 + 0x3bc) = param_1;
            FUN_004cdcf0((undefined4 *)(iVar9 + 0x3bc));
            *(undefined4 *)(iVar9 + 0x188) = 0;
            pfVar16 = local_a8;
            goto LAB_00453941;
          }
        }
        else {
          param_1[0x62] = (float *)0x0;
          if (0.0 < (float)param_1[5]) {
            pfVar17 = param_1[3];
            for (pfVar16 = param_1[2]; pfVar16 != pfVar17; pfVar16 = pfVar16 + 0xe) {
              if (((uint)pfVar16[2] & 0x2000) == 0) {
                *pfVar16 = *pfVar16 * 0.0;
              }
            }
          }
        }
      }
      else {
        pfVar16 = (float *)((int)param_1[0x104] + (int)fVar15);
        param_1[0x104] = pfVar16;
        if ((int)pfVar16 < 0x6a) {
LAB_00453d8f:
          if ((param_1[0x1f] != (float *)0x0) && (*(char *)(param_1 + 0x23) == '\0')) {
            ppfVar6 = (float **)param_1[0x1f];
            if (&DAT_0000000f < ppfVar6[5]) {
              ppfVar6 = (float **)*ppfVar6;
            }
            pcVar12 = "BigHoleOpen";
            do {
              bVar1 = *(byte *)ppfVar6;
              bVar19 = bVar1 < (byte)*pcVar12;
              if (bVar1 != *pcVar12) {
LAB_00453dd6:
                uVar13 = -(uint)bVar19 | 1;
                goto LAB_00453ddb;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppfVar6 + 1);
              bVar19 = bVar1 < ((byte *)pcVar12)[1];
              if (bVar1 != ((byte *)pcVar12)[1]) goto LAB_00453dd6;
              ppfVar6 = (float **)((int)ppfVar6 + 2);
              pcVar12 = (char *)((byte *)pcVar12 + 2);
            } while (bVar1 != 0);
            uVar13 = 0;
LAB_00453ddb:
            if ((uVar13 == 0) && (local_a1 == '\0')) {
              pfVar16 = param_1[0xf0];
              param_1[0x62] = (float *)&DAT_00000004;
              if (pfVar16 == (float *)0x0) {
                *(undefined *)(param_1 + 0xec) = 0;
                if ((int)param_1[0x2f0] < 1) {
                  param_1[0x2d9] = (float *)0xd;
                  HELPER_0040a380_AnimationActionA("PopUp",0);
                  FUN_006d6ba0(0xe,0x3f800000,2,0,0x3f800000);
                  FUN_006d6ba0(0x369,0x3f800000,2,0,0x3f800000);
                }
                else {
                  param_1[0x2d9] = (float *)0x10;
                  HELPER_0040a380_AnimationActionA("PopUpDizzy",0);
                  param_1[0x2f1] = (float *)0x96;
                  param_1[0x2f0] = (float *)0x0;
                }
                param_1[0x104] = (float *)0x0;
                param_1[0xd6] = (float *)0x0;
              }
              else {
                *(undefined *)(param_1 + 0xec) = 0;
                iVar9 = HELPER_Entity_TimeoutCrossed();
                if (iVar9 != 0) {
                  local_bc = (float **)pfVar16[0xf0];
                  local_9c = param_1 + 0xf0;
                  FUN_004cf210(&local_9c);
                  param_1[0xf0] = (float *)local_bc;
                  if (local_bc != (float **)0x0) {
                    FUN_004cdcf0(param_1 + 0xf0);
                  }
                  pfVar16[0xcf] = (float)param_1[0xcf];
                  pfVar16[0xd0] = (float)param_1[0xd0];
                  pfVar16[0x104] = 0.0;
                  pfVar16[0x105] = 0.0;
                  (**(code **)((int)*pfVar16 + 0xc))();
                  (**(code **)((int)*pfVar16 + 0x28))();
                }
                HELPER_004530e0_BigHornAttackHelperD();
              }
            }
          }
        }
        else {
          ppfVar6 = (float **)param_1[0x1f];
          if (ppfVar6 == (float **)0x0) goto LAB_00453b59;
          if (*(char *)(param_1 + 0x23) == '\0') {
            ppfVar5 = ppfVar6;
            if (&DAT_0000000f < ppfVar6[5]) {
              ppfVar5 = (float **)*ppfVar6;
            }
            pcVar12 = "BigHoleOpen";
            do {
              bVar1 = *(byte *)ppfVar5;
              bVar19 = bVar1 < (byte)*pcVar12;
              if (bVar1 != *pcVar12) {
LAB_00453a20:
                uVar13 = -(uint)bVar19 | 1;
                goto LAB_00453a25;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppfVar5 + 1);
              bVar19 = bVar1 < ((byte *)pcVar12)[1];
              if (bVar1 != ((byte *)pcVar12)[1]) goto LAB_00453a20;
              ppfVar5 = (float **)((int)ppfVar5 + 2);
              pcVar12 = (char *)((byte *)pcVar12 + 2);
            } while (bVar1 != 0);
            uVar13 = 0;
LAB_00453a25:
            if (uVar13 == 0) goto LAB_00453d8f;
          }
          if ((ppfVar6 == (float **)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
LAB_00453b59:
            local_a8 = (float *)0x0;
            pfVar16 = param_1[0xdc];
LAB_00453b70:
            local_a8 = (float *)((int)local_a8 + 1);
            local_9c = (float **)((float)pfVar16 * DAT_00baa2b8);
            local_bc = (float **)((float)pfVar16 * DAT_00baa4a0);
            uVar3 = FUN_0081e9d0(&uStack_58,0);
            HELPER_RoomClampedPoint(&local_b0,uVar3,local_9c,local_bc,local_9c);
            local_c4 = (float **)(DAT_00c71678 + 0x18300);
            local_98 = (float **)0x0;
            local_9c = *(float ***)(*(int *)(DAT_00c71678 + 0x18300) + 0x1264);
            if (local_9c != (float **)0x0) {
              local_bc = *(float ***)(DAT_00c71678 + 0x26614);
              puVar11 = *(undefined4 **)(*(int *)(DAT_00c71678 + 0x18300) + 0x125c);
              do {
                ppfVar6 = (float **)*puVar11;
                if ((1 < (int)local_bc) && (ppfVar6[10] == (float *)0x1)) {
                  pfVar16 = (float *)0x1;
                  goto LAB_00453c9f;
                }
                pfVar16 = ppfVar6[10];
                if (((((undefined *)((int)pfVar16 + -10) < (undefined *)0x3de) &&
                     (pfVar16 != (float *)0x21)) && (pfVar16 != (float *)&DAT_00000011)) &&
                   (pfVar16 != (float *)0x124)) {
                  if (pfVar16 != (float *)0x375) {
                    if (((pfVar16 != (float *)0x3c0) && (pfVar16 != (float *)0x3c5)) &&
                       (pfVar16 != (float *)0xf5)) goto LAB_00453c9f;
                    goto LAB_00453cbc;
                  }
                  if (ppfVar6[0xb] != (float *)0xa) {
LAB_00453c9f:
                    if (((*(char *)((int)ppfVar6 + 0x173) != '\0') || (ppfVar6 == param_1)) ||
                       ((pfVar16 != (float *)0x19b && (pfVar16 != (float *)0x194))))
                    goto LAB_00453cbc;
                    goto LAB_00453cc1;
                  }
                }
                else {
LAB_00453cbc:
                  if (pfVar16 == (float *)&DAT_00000004) {
LAB_00453cc1:
                    pfVar16 = param_1[0xdc];
                    if (((float)ppfVar6[0xd0] - (float)local_ac) *
                        ((float)ppfVar6[0xd0] - (float)local_ac) +
                        ((float)ppfVar6[0xcf] - (float)local_b0) *
                        ((float)ppfVar6[0xcf] - (float)local_b0) <
                        ((float)pfVar16 + (float)ppfVar6[0xdc]) *
                        ((float)pfVar16 + (float)ppfVar6[0xdc])) goto LAB_00453d24;
                  }
                }
                puVar11 = puVar11 + 1;
                local_98 = (float **)((int)local_98 + 1);
                if (local_9c <= local_98) break;
              } while( true );
            }
            HELPER_0040a380_AnimationActionA("BigHoleOpen",0);
            param_1[0xcf] = local_b0;
            param_1[0xd0] = local_ac;
            pfVar16 = local_a8;
            goto LAB_00453d72;
          }
          ppfVar6 = (float **)param_1[0x1f];
          if (&DAT_0000000f < ppfVar6[5]) {
            ppfVar6 = (float **)*ppfVar6;
          }
          pcVar12 = "BigHoleOpen";
          do {
            bVar1 = *(byte *)ppfVar6;
            bVar19 = bVar1 < (byte)*pcVar12;
            if (bVar1 != *pcVar12) {
LAB_00453a72:
              uVar13 = -(uint)bVar19 | 1;
              goto LAB_00453a77;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppfVar6 + 1);
            bVar19 = bVar1 < ((byte *)pcVar12)[1];
            if (bVar1 != ((byte *)pcVar12)[1]) goto LAB_00453a72;
            ppfVar6 = (float **)((int)ppfVar6 + 2);
            pcVar12 = (char *)((byte *)pcVar12 + 2);
          } while (bVar1 != 0);
          uVar13 = 0;
LAB_00453a77:
          if (uVar13 != 0) goto LAB_00453b59;
          cVar2 = HELPER_0040b030_AnimationEventPredicateD("Crack");
          if (cVar2 != '\0') {
            local_98 = (float **)0x36b;
            FUN_00956780();
            FUN_0092dc30(local_98,0x3f800000,2,0,0x3f800000,0);
          }
          cVar2 = HELPER_0040b030_AnimationEventPredicateD(&DAT_00b1d644);
          if (cVar2 != '\0') {
            local_98 = (float **)0x36c;
            FUN_00956780();
            FUN_0092dc30(local_98,0x3f800000,2,0,0x3f800000,0);
          }
          cVar2 = HELPER_0040b030_AnimationEventPredicateD("Shake");
          if (cVar2 == '\0') break;
          local_98 = (float **)0x36d;
LAB_004547fb:
          FUN_00956780();
          FUN_0092dc30(local_98,0x3f800000,2,0,0x3f800000,0);
        }
      }
      break;
    case (float *)0xd:
      param_1[0xd6] = (float *)0x0;
      if (param_1[0x104] == (float *)0x0) {
        if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          fVar15 = *(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x20) - (float)param_1[0xd0];
          if (fVar15 < (float)param_1[0xdc] || fVar15 == (float)param_1[0xdc]) {
            param_1[0x2d9] = (float *)0x3;
          }
          else {
            uVar13 = FUN_006eef60();
            if (uVar13 % 100 < 0x23) {
              pcVar12 = "Charge2";
            }
            else {
              pcVar12 = "Charge3";
              if (0x27 < uVar13 % 100) {
                pcVar12 = "Charge";
              }
            }
            HELPER_0040a380_AnimationActionA(pcVar12,0);
            param_1[0x104] = (float *)((int)param_1[0x104] + 1);
            local_98 = (float **)0x374;
            FUN_00956780();
            FUN_0092dc30(local_98,0x3f800000,2,0,0x3f800000,0);
          }
          *(undefined *)(param_1 + 0xec) = 0;
          param_1[0x62] = (float *)&DAT_00000004;
        }
      }
      else {
        param_1[0x104] = (float *)((int)param_1[0x104] + (int)fVar15);
        cVar2 = HELPER_0040b030_AnimationEventPredicateD("Shoot");
        if (cVar2 != '\0') {
          fVar15 = 1.401298e-45;
          local_a0 = 1.401298e-45;
          local_3c = _DAT_00baca80;
          uStack_38 = _UNK_00baca84;
          pfStack_34 = _UNK_00baca88;
          uStack_30 = _UNK_00baca8c;
          local_2c = -15.0;
          local_28 = 7.0;
          if (param_1[0x1f] != (float *)0x0) {
            if (*(char *)(param_1 + 0x23) != '\0') {
              ppfVar6 = (float **)param_1[0x1f];
              if (&DAT_0000000f < ppfVar6[5]) {
                ppfVar6 = (float **)*ppfVar6;
              }
              pcVar12 = "Charge";
              do {
                bVar1 = *(byte *)ppfVar6;
                bVar19 = bVar1 < (byte)*pcVar12;
                if (bVar1 != *pcVar12) {
LAB_004540d0:
                  uVar13 = -(uint)bVar19 | 1;
                  goto LAB_004540d5;
                }
                if (bVar1 == 0) break;
                bVar1 = *(byte *)((int)ppfVar6 + 1);
                bVar19 = bVar1 < ((byte *)pcVar12)[1];
                if (bVar1 != ((byte *)pcVar12)[1]) goto LAB_004540d0;
                ppfVar6 = (float **)((int)ppfVar6 + 2);
                pcVar12 = (char *)((byte *)pcVar12 + 2);
              } while (bVar1 != 0);
              uVar13 = 0;
LAB_004540d5:
              if ((uVar13 == 0) &&
                 (iVar9 = FUN_00703850(param_1 + 0xcf,0x4b18967f), pfVar16 = param_1[0xcf],
                 *(float *)(iVar9 + 0x33c) <= (float)pfVar16 &&
                 (float)pfVar16 != *(float *)(iVar9 + 0x33c))) {
                local_3c = (float *)0xc0a00000;
              }
            }
            fVar15 = 1.401298e-45;
            if ((param_1[0x1f] != (float *)0x0) && (*(char *)(param_1 + 0x23) != '\0')) {
              ppfVar6 = (float **)param_1[0x1f];
              if (&DAT_0000000f < ppfVar6[5]) {
                ppfVar6 = (float **)*ppfVar6;
              }
              pcVar12 = "Charge2";
              do {
                bVar1 = *(byte *)ppfVar6;
                bVar19 = bVar1 < (byte)*pcVar12;
                if (bVar1 != *pcVar12) {
LAB_00454153:
                  uVar13 = -(uint)bVar19 | 1;
                  goto LAB_00454158;
                }
                if (bVar1 == 0) break;
                bVar1 = *(byte *)((int)ppfVar6 + 1);
                bVar19 = bVar1 < ((byte *)pcVar12)[1];
                if (bVar1 != ((byte *)pcVar12)[1]) goto LAB_00454153;
                ppfVar6 = (float **)((int)ppfVar6 + 2);
                pcVar12 = (char *)((byte *)pcVar12 + 2);
              } while (bVar1 != 0);
              uVar13 = 0;
LAB_00454158:
              if (uVar13 == 0) {
                fVar15 = 2.802597e-45;
                local_a0 = fVar15;
              }
              else {
                ppfVar6 = (float **)param_1[0x1f];
                if (&DAT_0000000f < ppfVar6[5]) {
                  ppfVar6 = (float **)*ppfVar6;
                }
                pcVar12 = "Charge3";
                do {
                  bVar1 = *(byte *)ppfVar6;
                  bVar19 = bVar1 < (byte)*pcVar12;
                  if (bVar1 != *pcVar12) {
LAB_00454191:
                    uVar13 = -(uint)bVar19 | 1;
                    goto LAB_00454196;
                  }
                  if (bVar1 == 0) break;
                  bVar1 = *(byte *)((int)ppfVar6 + 1);
                  bVar19 = bVar1 < ((byte *)pcVar12)[1];
                  if (bVar1 != ((byte *)pcVar12)[1]) goto LAB_00454191;
                  ppfVar6 = (float **)((int)ppfVar6 + 2);
                  pcVar12 = (char *)((byte *)pcVar12 + 2);
                } while (bVar1 != 0);
                uVar13 = 0;
LAB_00454196:
                local_a0 = fVar15;
                if (uVar13 == 0) {
                  fVar15 = 4.203895e-45;
                  local_a0 = fVar15;
                }
              }
            }
          }
          _local_84 = ZEXT816(0);
          local_74 = 0x3e19999a;
          local_9c = param_1 + 0xcf;
          local_70 = 0x3e19999a;
          local_6c = 0x3e19999a;
          local_94 = _DAT_00babe10;
          uStack_90 = _UNK_00babe14;
          uStack_8c = _UNK_00babe18;
          uStack_88 = _UNK_00babe1c;
          iVar9 = FUN_006b6830(local_9c,&local_94);
          *(undefined4 *)(iVar9 + 0x34c) = 0;
          *(undefined **)(iVar9 + 0x350) = &DAT_c1c80000;
          cVar2 = FUN_00417430(0,0x10000000);
          if (cVar2 != '\0') {
            AI_0041af60(&local_60,0x194,1,0xffffffff,0,0);
            fVar15 = (float)(2 - (int)uStack_58._4_4_);
            local_a0 = fVar15;
            FUN_004175b0();
          }
          local_a8 = (float *)0x0;
          if (0 < (int)fVar15) {
            local_b8 = &local_3c;
            if (fVar15 == 2.802597e-45) {
              local_b8 = &pfStack_34;
            }
            do {
              local_98 = (float **)0x0;
              if ((fVar15 == 2.802597e-45) || (1 < (int)local_a8)) {
                local_98 = (float **)0x1;
              }
              local_d8 = *local_b8;
              local_d4 = local_b8[1];
              uVar3 = FUN_006eef60();
              local_c0 = (float)*local_b8 * DAT_00baa630 + (float)*local_9c;
              local_bc = (float **)((float)local_b8[1] * DAT_00baa630 + (float)local_9c[1]);
              iVar9 = HELPER_Entity_SpawnRelay(0x194,1,&local_c0,&local_d8,param_1,local_98,uVar3);
              if (((uint)param_1[0x5b] & 0x10000000) != 0) {
                *(undefined4 *)(iVar9 + 0x380) = 0x40a00000;
                *(undefined4 *)(iVar9 + 900) = 0x40a00000;
              }
              *(uint *)(iVar9 + 0x168) = *(uint *)(iVar9 + 0x168) & 0xfffffffb;
              *(undefined4 *)(iVar9 + 0x16c) = *(undefined4 *)(iVar9 + 0x16c);
              local_68[0] = (undefined4 *)FUN_0040cf00();
              uVar22 = s_gfx_effects_Effect_088_DarkSmoke_00b1d670._12_4_;
              uVar10 = s_gfx_effects_Effect_088_DarkSmoke_00b1d670._8_4_;
              uVar3 = s_gfx_effects_Effect_088_DarkSmoke_00b1d670._4_4_;
              uStack_58 = 0x2f00000028;
              *local_68[0] = s_gfx_effects_Effect_088_DarkSmoke_00b1d670._0_4_;
              local_68[0][1] = uVar3;
              local_68[0][2] = uVar10;
              local_68[0][3] = uVar22;
              uVar22 = s_gfx_effects_Effect_088_DarkSmoke_00b1d670._28_4_;
              uVar10 = s_gfx_effects_Effect_088_DarkSmoke_00b1d670._24_4_;
              uVar3 = s_gfx_effects_Effect_088_DarkSmoke_00b1d670._20_4_;
              local_68[0][4] = s_gfx_effects_Effect_088_DarkSmoke_00b1d670._16_4_;
              local_68[0][5] = uVar3;
              local_68[0][6] = uVar10;
              local_68[0][7] = uVar22;
              *(undefined8 *)(local_68[0] + 8) = s_gfx_effects_Effect_088_DarkSmoke_00b1d670._32_8_;
              *(undefined *)(local_68[0] + 10) = 0;
              local_14 = 1;
              FUN_0040bf30(0,local_68);
              local_14 = 0xffffffff;
              uVar3 = extraout_ECX;
              if (0xf < uStack_58._4_4_) {
                uVar13 = (int)uStack_58._4_4_ + 1;
                puVar11 = local_68[0];
                if (0xfff < uVar13) {
                  puVar11 = (undefined4 *)local_68[0][-1];
                  uVar13 = (int)uStack_58._4_4_ + 0x24;
                  if (0x1f < (uint)((int)local_68[0] + (-4 - (int)puVar11))) goto LAB_00454c84;
                }
                FUN_00aef15c(puVar11,uVar13);
                uVar3 = extraout_ECX_00;
              }
              FUN_0040c000(uVar3);
              local_ac = (float *)(DAT_00c37940 ^ DAT_00bacb70);
              local_b0 = (float *)(DAT_00c3793c ^ DAT_00bacb70);
              FUN_006ac2a0(*(float *)(iVar9 + 0x370) * DAT_00baa528,local_b0,local_ac,0xffffffff);
              local_a8 = (float *)((int)local_a8 + 1);
              local_b8 = local_b8 + 2;
              fVar15 = local_a0;
            } while ((int)local_a8 < (int)local_a0);
          }
          FUN_006d6ba0(0x379,0x3f800000,2,0,0x3f800000);
        }
        cVar2 = HELPER_0040b090_AnimationEventPredicateE("Shoot");
        if (cVar2 != '\0') {
          HELPER_00452eb0_BigHornAttackHelperC();
        }
        HELPER_004530e0_BigHornAttackHelperD();
        if ((param_1[0xf0] != (float *)0x0) &&
           (cVar2 = HELPER_0040b090_AnimationEventPredicateE("BombExplode"), cVar2 != '\0')) {
          local_98 = (float **)0x373;
          FUN_00956780();
          FUN_0092dc30(local_98,0x3f800000,2,0,0x3f800000,0);
          pfVar16 = param_1[0xf0];
          if (((pfVar16 != (float *)0x0) && (pfVar16[10] == 5.605194e-45)) ||
             (pfVar17 = (float *)0x0, bVar19 = pfVar16 != (float *)0x0, pfVar16 = pfVar17, bVar19))
          {
            local_9c = param_1 + 0xf0;
            FUN_004cf210(&local_9c);
            pfVar17 = pfVar16;
          }
          param_1[0xf0] = (float *)0x0;
          if (pfVar17 != (float *)0x0) {
            fVar4 = (float)param_1[0xcf] + DAT_00ba9fe4;
            fVar15 = (float)param_1[0xd0] + DAT_00baa630;
            pfVar17[0x104] = 0.0;
            pfVar17[0x105] = 0.0;
            pfVar17[0xcf] = fVar4;
            pfVar17[0xd0] = fVar15;
            (**(code **)((int)*pfVar17 + 0xc))();
          }
        }
        if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          pfVar16 = param_1[0xf0];
          if (pfVar16 == (float *)0x0) {
            if ((int)param_1[0x2f0] < 1) {
              param_1[0x2d9] = (float *)0x3;
            }
            else {
              param_1[0x104] = (float *)0x1;
              param_1[0x2d9] = (float *)0x10;
              HELPER_0040a380_AnimationActionA("DizzyLoop",0);
              param_1[0x2f1] = (float *)0x96;
              param_1[0x2f0] = (float *)0x0;
            }
          }
          else {
            *(undefined *)(param_1 + 0xec) = 0;
            local_9c = param_1 + 0xf0;
            FUN_004cf210(&local_9c);
            param_1[0xf0] = (float *)0x0;
            pfVar16[0xcf] = (float)param_1[0xcf];
            pfVar16[0xd0] = (float)param_1[0xd0];
            pfVar16[0x104] = 0.0;
            pfVar16[0x105] = 0.0;
            (**(code **)((int)*pfVar16 + 0xc))();
            (**(code **)((int)*pfVar16 + 0x28))();
          }
        }
      }
      break;
    case (float *)0x10:
      param_1[0x62] = (float *)&DAT_00000004;
      param_1[0xd6] = (float *)0x0;
      fVar4 = DAT_00baa4b0;
      if (param_1[0x104] == (float *)0x0) {
        if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          param_1[0x104] = (float *)0x1;
          HELPER_0040a380_AnimationActionA("DizzyLoop",0);
        }
      }
      else {
        if (0.0 < (float)param_1[5]) {
          pfVar17 = param_1[3];
          for (pfVar16 = param_1[2]; pfVar16 != pfVar17; pfVar16 = pfVar16 + 0xe) {
            *pfVar16 = *pfVar16 * fVar4;
          }
        }
        param_1[0x2f1] = (float *)((int)param_1[0x2f1] - (int)fVar15);
        if ((int)param_1[0x2f1] < 1) {
          ppfVar6 = (float **)param_1[0x1f];
          if ((ppfVar6 != (float **)0x0) && (*(char *)(param_1 + 0x23) == '\0')) {
            ppfVar5 = ppfVar6;
            if (&DAT_0000000f < ppfVar6[5]) {
              ppfVar5 = (float **)*ppfVar6;
            }
            pcVar12 = "DizzyEnd";
            do {
              bVar1 = *(byte *)ppfVar5;
              bVar19 = bVar1 < (byte)*pcVar12;
              if (bVar1 != *pcVar12) {
LAB_00454768:
                uVar13 = -(uint)bVar19 | 1;
                goto LAB_0045476d;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppfVar5 + 1);
              bVar19 = bVar1 < ((byte *)pcVar12)[1];
              if (bVar1 != ((byte *)pcVar12)[1]) goto LAB_00454768;
              ppfVar5 = (float **)((int)ppfVar5 + 2);
              pcVar12 = (char *)((byte *)pcVar12 + 2);
            } while (bVar1 != 0);
            uVar13 = 0;
LAB_0045476d:
            if (uVar13 == 0) {
              param_1[0x2d9] = (float *)0x3;
              param_1[0x104] = (float *)0x0;
              param_1[0x2f1] = (float *)0x0;
              break;
            }
          }
          if ((ppfVar6 != (float **)0x0) && (*(char *)(param_1 + 0x23) != '\0')) {
            ppfVar6 = (float **)param_1[0x1f];
            if (ppfVar6 == (float **)0x0) {
              ppfVar6 = (float **)&DAT_00b1a4ec;
            }
            else if (&DAT_0000000f < ppfVar6[5]) {
              ppfVar6 = (float **)*ppfVar6;
            }
            pcVar12 = "DizzyEnd";
            do {
              bVar1 = *(byte *)ppfVar6;
              bVar19 = bVar1 < (byte)*pcVar12;
              if (bVar1 != *pcVar12) {
LAB_004547d7:
                uVar13 = -(uint)bVar19 | 1;
                goto LAB_004547dc;
              }
              if (bVar1 == 0) break;
              bVar1 = *(byte *)((int)ppfVar6 + 1);
              bVar19 = bVar1 < ((byte *)pcVar12)[1];
              if (bVar1 != ((byte *)pcVar12)[1]) goto LAB_004547d7;
              ppfVar6 = (float **)((int)ppfVar6 + 2);
              pcVar12 = (char *)((byte *)pcVar12 + 2);
            } while (bVar1 != 0);
            uVar13 = 0;
LAB_004547dc:
            if (uVar13 == 0) break;
          }
          HELPER_0040a380_AnimationActionA("DizzyEnd",0);
          local_98 = (float **)0x36f;
          goto LAB_004547fb;
        }
      }
    }
switchD_0045334c_caseD_5:
    if (*(char *)((int)param_1 + 0x173) != '\0') {
      local_98 = (float **)0x36e;
      FUN_00956780();
      FUN_0092dc30(local_98,0x3f800000,2,0,0x3f800000,0);
      ppfVar6 = param_1 + 0xf0;
      pfVar16 = param_1[0xf0];
      while (pfVar16 != (float *)0x0) {
        local_bc = (float **)pfVar16[0xf0];
        local_9c = ppfVar6;
        FUN_004cf210(&local_9c);
        *ppfVar6 = (float *)local_bc;
        if (local_bc != (float **)0x0) {
          FUN_004cdcf0(ppfVar6);
        }
        (**(code **)((int)*pfVar16 + 0x28))();
        param_1 = local_cc;
        pfVar16 = *ppfVar6;
      }
      AI_0041af60(&local_60,param_1[10],0xffffffff,0xffffffff,0,0);
      local_14 = 2;
      local_98 = (float **)0x0;
      if (uStack_58._4_4_ != (float **)0x0) {
        iVar9 = local_60._4_4_;
        do {
          local_cc = *(float ***)(iVar9 + (int)local_98 * 4);
          if ((((local_cc != param_1) && (local_cc[0xb] != (float *)0x0)) &&
              ((float **)local_cc[0xef] == param_1)) && (*(char *)((int)local_cc + 0x173) == '\0'))
          {
            pcVar18 = (code *)(*local_cc)[9];
            FUN_00431310(param_1);
            (*pcVar18)(local_4c);
            iVar9 = local_60._4_4_;
          }
          local_98 = (float **)((int)local_98 + 1);
        } while (local_98 < uStack_58._4_4_);
      }
      local_14 = 0xffffffff;
      if ((char)local_60 == '\0') {
        local_14 = 3;
        FUN_00a648b0(0,0);
      }
    }
    goto LAB_004560df;
  }
  if (local_9c == (float **)0x1) {
    if (param_1[0x2d9] == (float *)0x0) {
      *(undefined *)(param_1 + 0x30f) = 0;
      *(undefined *)(param_1 + 0xec) = 1;
      cVar2 = HELPER_0040a5d0_AnimationPredicateC("SmallHoleOpen",1);
      if (cVar2 != '\0') {
        HELPER_AnimationState_Loop();
        *(undefined *)(param_1 + 0x23) = 1;
      }
      pfVar16 = param_1[0xc];
      param_1[0x62] = (float *)0x0;
      if (((uint)pfVar16 & 1) != 0) {
        *(undefined *)(param_1 + 0x52) = 1;
      }
      if (pfVar16 == (float *)0x0) {
LAB_00454a56:
        param_1[0x2d9] = (float *)0x3;
      }
      else if (pfVar16 < (float *)0x3) {
        param_1[0x2d9] = (float *)&DAT_00000008;
      }
      else if (&DAT_00000004 < pfVar16) {
        if (pfVar16 < (float *)0x7) {
          param_1[0x2d9] = (float *)0xa;
        }
        else {
          if (&DAT_00000008 < pfVar16) goto LAB_00454a56;
          param_1[0x2d9] = (float *)0xb;
        }
      }
      else {
        param_1[0x2d9] = (float *)0x9;
      }
      uVar13 = FUN_006eef60();
      if ((uVar13 & 1) != 0) {
        param_1[0x2f1] = (float *)0x1e;
      }
LAB_00454a73:
      param_1[0x5a] = (float *)((uint)param_1[0x5a] | 0x10000);
      param_1[0x5b] = param_1[0x5b];
      goto LAB_00456101;
    }
    pfVar16 = param_1[0xef];
    if (pfVar16 == (float *)0x0) {
LAB_00454a98:
      (*(code *)(*param_1)[10])();
      goto LAB_00456101;
    }
    if ((float)(float *)pfVar16[0xe0] <= (float)param_1[0xe0]) {
      param_1[0xe0] = (float *)pfVar16[0xe0];
    }
    else {
      pfVar16[0xe0] = (float)param_1[0xe0];
    }
    if (*(char *)((int)param_1 + 0x173) != '\0') {
      uVar21 = FUN_00435c70();
      (*(code *)((ulonglong)uVar21 >> 0x20))((int)uVar21);
      fVar15 = local_a0;
      if ((((int)param_1[0xc] - 7U < 2) &&
          (cVar2 = HELPER_0040b090_AnimationEventPredicateE("BombExplode"), fVar15 = local_a0,
          cVar2 == '\0')) && (param_1[0x2f2] == (float *)0x0)) {
        uVar3 = FUN_006eef60();
        local_b0 = (float *)0x0;
        local_ac = (float *)0x0;
        piVar7 = (int *)HELPER_Entity_SpawnRelay
                                  (0x194,0,param_1 + 0xcf,&local_b0,param_1[0xef],0,uVar3);
        fVar15 = (float)piVar7[0xe1] * DAT_00baa198;
        piVar7[0x5a] = piVar7[0x5a] & 0xfffffffb;
        piVar7[0x5b] = piVar7[0x5b];
        piVar7[0xe1] = (int)fVar15;
        piVar7[0xe0] = (int)fVar15;
        piVar7[0x104] = 0;
        piVar7[0x2d9] = 3;
        piVar7[0x61] = 3;
        piVar7[0x2f0] = 0x2d;
        (**(code **)(*piVar7 + 0xc))();
        fVar15 = local_a0;
      }
    }
    switch(param_1[0x2d9]) {
    case (float *)0x3:
      param_1[0xd6] = (float *)0xc2c80000;
      if (param_1[0x104] == (float *)0x0) {
        if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          param_1[0xe2] = (float *)0x3f800000;
          param_1[0x104] = (float *)0x1;
          param_1[0x62] = (float *)0x3;
        }
      }
      else {
        FUN_00452bf0(local_68);
        local_b1 = FUN_0040cae0("SmallHoleOpen",0xd);
        if (0xf < uStack_58._4_4_) {
          uVar13 = (int)uStack_58._4_4_ + 1;
          puVar11 = local_68[0];
          if (0xfff < uVar13) {
            puVar11 = (undefined4 *)local_68[0][-1];
            uVar13 = (int)uStack_58._4_4_ + 0x24;
            if (0x1f < (uint)((int)local_68[0] + (-4 - (int)puVar11))) {
LAB_00454c84:
                    /* WARNING: Subroutine does not return */
              _invalid_parameter_noinfo_noreturn();
            }
          }
          FUN_00aef15c(puVar11,uVar13);
        }
        uStack_58 = 0xf00000000;
        local_68[0] = (undefined4 *)((uint)local_68[0] & 0xffffff00);
        if (local_b1 == '\0') {
          param_1[0x62] = (float *)0x0;
          goto LAB_00455d86;
        }
        uVar13 = 0;
        if (*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 != 0) {
          do {
            FUN_00417870(uVar13);
            HELPER_00452c60_BigHornAttackHelperA();
            uVar13 = uVar13 + 1;
          } while (uVar13 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) -
                                   *(int *)(DAT_00c71678 + 0x1baa8) >> 2));
        }
        iVar9 = HELPER_00452d40_BigHornAttackHelperB();
        pfVar17 = (float *)((int)param_1[0x2f0] + iVar9);
        param_1[0x2f0] = pfVar17;
        pfVar16 = param_1[0x104];
        param_1[0x104] = (float *)((int)pfVar16 + (int)local_a0);
        if ((0x1e < (int)(float *)((int)pfVar16 + (int)local_a0)) && (local_a1 == '\0')) {
          if (pfVar17 == (float *)0x1) {
            param_1[0x2d9] = (float *)0x9;
          }
          else if ((int)pfVar17 < 2) {
            HELPER_0040a380_AnimationActionA("SmallHoleClose",0);
          }
          else {
            param_1[0x2d9] = (float *)0xa;
          }
          param_1[0x104] = (float *)0x0;
          param_1[0x2f0] = (float *)0x0;
          local_98 = (float **)0x375;
          FUN_00956780();
          FUN_0092dc30(local_98,0x3f800000,2,0,0x3f800000,0);
        }
      }
      break;
    case (float *)0x5:
      param_1[0xd8] = (float *)((float)param_1[0xd8] * 0.0);
      param_1[0xd9] = (float *)((float)param_1[0xd9] * 0.0);
LAB_00455d86:
      if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
        (*(code *)(*param_1)[10])();
      }
      break;
    case (float *)0x8:
      pfVar16 = param_1[0x104];
      param_1[0xd6] = (float *)0x0;
      if (pfVar16 == (float *)0x0) {
        if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          ppfVar6 = param_1 + 0x2f1;
          *ppfVar6 = (float *)((int)*ppfVar6 - (int)fVar15);
          if ((int)*ppfVar6 < 0) {
            *(undefined *)(param_1 + 0xec) = 0;
            param_1[0x62] = (float *)&DAT_00000004;
            param_1[0xe2] = (float *)0x3f800000;
            HELPER_0040a380_AnimationActionA("HandSlap",0);
            local_98 = (float **)0x370;
            FUN_00956780();
            FUN_0092dc30(local_98,0x3f800000,2,0,0x3f800000,0);
            local_9c = (float **)FUN_00703850(param_1 + 0xcf,0x4b18967f);
            ppfVar6 = param_1 + 0xf1;
            if (param_1[0xf1] != (float *)0x0) {
              local_cc = ppfVar6;
              FUN_004cf210(&local_cc);
            }
            *ppfVar6 = (float *)local_9c;
            if (local_9c != (float **)0x0) {
              FUN_004cdcf0(ppfVar6);
            }
            param_1[0x104] = (float *)0x1;
          }
        }
      }
      else if (0 < (int)pfVar16) {
        if (pfVar16 == (float *)0x2) {
          pfVar16 = param_1[0xf1];
          if (pfVar16 != (float *)0x0) {
            fVar15 = pfVar16[0xd0];
            param_1[0xd8] = (float *)(pfVar16[0xcf] - (float)param_1[0xcf]);
            param_1[0xd9] = (float *)(fVar15 - (float)param_1[0xd0]);
          }
          pfVar16 = (float *)FUN_00a10030(&uStack_58);
          pfVar17 = (float *)(pfVar16[1] * DAT_00baa6fc);
          param_1[0xd8] = (float *)(*pfVar16 * DAT_00baa6fc);
          param_1[0xd9] = pfVar17;
        }
        else {
          param_1[0xd8] = (float *)((float)param_1[0xd8] * 0.0);
          param_1[0xd9] = (float *)((float)param_1[0xd9] * 0.0);
        }
        cVar2 = HELPER_0040b030_AnimationEventPredicateD(&DAT_00b1d6fc);
        if (cVar2 == '\0') {
          cVar2 = HELPER_0040b030_AnimationEventPredicateD(&DAT_00b1d6f4);
          if (cVar2 != '\0') {
            param_1[0x104] = (float *)0x1;
          }
        }
        else {
          param_1[0x104] = (float *)0x2;
        }
        cVar2 = HELPER_0040b030_AnimationEventPredicateD(&DAT_00b1d710);
        if (cVar2 != '\0') {
          FUN_006b6c20(local_4c,&DAT_00b1d710);
          if (DAT_00ba9fe4 < local_2c) {
            if ((*(uint *)(DAT_00c71678 + 0x26544) >> 5 & 1) != 0) {
              iVar9 = FUN_006b5f10(1);
              *(undefined4 *)(iVar9 + 4) = 1;
              FUN_0042eef0(local_4c);
            }
            FUN_0041a790(&local_60,local_4c,0xffffffff);
            local_14 = 4;
            local_a0 = 0.0;
            if (uStack_58._4_4_ != (float **)0x0) {
              do {
                ppfVar6 = *(float ***)(local_60._4_4_ + (int)local_a0 * 4);
                local_b8 = ppfVar6;
                if (((ppfVar6[0x62] != (float *)0x0) && (ppfVar6[0x61] != (float *)&DAT_00000004))
                   && (ppfVar6 != param_1)) {
                  FUN_006a9ba0(&uStack_90,&DAT_00c7b640);
                  local_ac = (float *)0x0;
                  local_b0 = (float *)0x0;
                  cVar2 = FUN_00945470(&local_b0);
                  if (cVar2 != '\0') {
                    local_a8 = (float *)((float)ppfVar6[0xd0] - (float)param_1[0xd0]);
                    local_98 = (float **)((float)ppfVar6[0xcf] - (float)param_1[0xcf]);
                    fVar15 = (float)local_a8 * (float)local_a8 + (float)local_98 * (float)local_98;
                    FUN_00435a50();
                    pfVar16 = local_a8;
                    ppfVar5 = local_98;
                    if (DAT_00ba9fe4 < fVar15) {
                      pfVar16 = (float *)((DAT_00baa454 / fVar15) * (float)local_a8);
                      ppfVar5 = (float **)((DAT_00baa454 / fVar15) * (float)local_98);
                    }
                    fVar15 = (float)pfVar16 * DAT_00baa784;
                    ppfVar6[0xd8] = (float *)((float)ppfVar5 * DAT_00baa784 + (float)ppfVar6[0xd8]);
                    ppfVar6[0xd9] = (float *)(fVar15 + (float)ppfVar6[0xd9]);
                    if ((ppfVar6[10] == (float *)0x1) || (ppfVar6[10] == (float *)0x3)) {
                      pcVar18 = (code *)(*ppfVar6)[8];
                      FUN_00431310(param_1);
                      uVar3 = 0x3f800000;
                    }
                    else {
                      pcVar18 = (code *)(*ppfVar6)[8];
                      FUN_00431310(param_1);
                      uVar3 = 0x41c80000;
                    }
                    (*pcVar18)(uVar3,0,0,&uStack_90,0x1e);
                  }
                }
                local_a0 = (float)((int)local_a0 + 1);
              } while ((uint)local_a0 < uStack_58._4_4_);
            }
            local_14 = 0xffffffff;
            FUN_004175b0();
          }
          local_94 = _DAT_00babd20;
          uStack_90 = _UNK_00babd24;
          uStack_8c = _UNK_00babd28;
          uStack_88 = _UNK_00babd2c;
          local_74 = 0;
          uStack_80._0_1_ = s_333_333_333__00bac5b0[4];
          uStack_80._1_1_ = s_333_333_333__00bac5b0[5];
          uStack_80._2_1_ = s_333_333_333__00bac5b0[6];
          uStack_80._3_1_ = s_333_333_333__00bac5b0[7];
          local_84[0] = s_333_333_333__00bac5b0[0];
          local_84[1] = s_333_333_333__00bac5b0[1];
          uStack_82._0_1_ = s_333_333_333__00bac5b0[2];
          uStack_82._1_1_ = s_333_333_333__00bac5b0[3];
          uStack_7c._0_1_ = s_333_333_333__00bac5b0[8];
          uStack_7c._1_1_ = s_333_333_333__00bac5b0[9];
          uStack_7c._2_1_ = s_333_333_333__00bac5b0[10];
          uStack_7c._3_1_ = s_333_333_333__00bac5b0[0xb];
          uStack_78 = ram0x00bac5bc;
          local_70 = 0;
          local_6c = 0;
          FUN_006b6550(local_4c,&local_94);
          local_b0 = (float *)0x42700000;
          local_ac = (float *)0x42200000;
          FUN_006b68c0(local_4c,&local_b0);
          FUN_00703670(6);
          FUN_006d6ba0(0x30,0x3f800000,2,0,0x3f800000);
        }
        if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          HELPER_0040a380_AnimationActionA("SmallHoleClose",0);
          param_1[0x2d9] = (float *)&DAT_00000005;
          FUN_009568e0(0x375,2,0,0x3f800000);
        }
      }
      break;
    case (float *)0x9:
      param_1[0xd6] = (float *)0x0;
      if (param_1[0x104] == (float *)0x0) {
        if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          param_1[0xe2] = (float *)0x3f800000;
          *(undefined *)(param_1 + 0xec) = 0;
          param_1[0x62] = (float *)&DAT_00000004;
          HELPER_0040a380_AnimationActionA("HandThrow",0);
          FUN_009568e0(0x370,2,0,0x3f800000);
          param_1[0x104] = (float *)((int)param_1[0x104] + 1);
          uVar3 = 3;
          local_60 = 0;
          local_a0 = 4.203895e-45;
          uStack_58 = 0;
          uVar13 = FUN_006eef60();
          if (uVar13 % 100 < 10) {
            uVar3 = 4;
            local_a0 = 5.605194e-45;
LAB_004553bc:
          }
          else {
            if (0x1d < uVar13 % 100) goto LAB_004553bc;
            if (*(float *)(*(int *)(DAT_00c71678 + 0x18300) + 0x7240) <= DAT_00ba9fe4) {
              uVar3 = 8;
              local_a0 = 1.121039e-44;
              local_60._0_4_ = DAT_00c34c00;
              local_60._4_4_ = DAT_00c34c04;
              uStack_58._0_4_ = DAT_00c34c08;
              uStack_58._4_4_ = (float **)DAT_00c34c0c;
            }
            else {
              uVar3 = 0x10;
              local_a0 = 2.242078e-44;
              local_60._0_4_ = DAT_00c34b90;
              local_60._4_4_ = DAT_00c34b94;
              uStack_58._0_4_ = DAT_00c34b98;
              uStack_58._4_4_ = (float **)DAT_00c34b9c;
            }
          }
          uVar10 = FUN_006eef60();
          iVar9 = HELPER_Entity_SpawnRelay(4,uVar3,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar10);
          *(undefined *)(iVar9 + 0x171) = 0;
          *(undefined4 *)(iVar9 + 0x188) = 0;
          *(undefined4 *)(iVar9 + 0x184) = 0;
          FUN_006a92a0(param_1);
          *(uint *)(iVar9 + 0x168) = *(uint *)(iVar9 + 0x168) | 0x20;
          *(undefined4 *)(iVar9 + 0x16c) = *(undefined4 *)(iVar9 + 0x16c);
          *(undefined *)(iVar9 + 0x463) = 1;
          *(undefined4 *)(iVar9 + 0x438) = (undefined4)local_60;
          *(int *)(iVar9 + 0x43c) = local_60._4_4_;
          *(undefined4 *)(iVar9 + 0x440) = (undefined4)uStack_58;
          *(float ***)(iVar9 + 0x444) = uStack_58._4_4_;
          if ((local_a0 == 4.203895e-45) || (local_a0 == 5.605194e-45)) {
            uVar13 = FUN_006eef60();
            iVar8 = uVar13 % 10 + 0x23;
            *(int *)(iVar9 + 0x410) = iVar8;
            *(int *)(iVar9 + 0x414) = iVar8;
          }
          FUN_006d0c20(iVar9);
        }
      }
      else if (param_1[0x104] == (float *)0x1) {
        cVar2 = HELPER_0040b030_AnimationEventPredicateD("Shoot");
        if (cVar2 != '\0') {
          local_cc = (float **)param_1[0x2fb];
          if ((local_cc != (float **)0x0) && (local_cc[10] == (float *)&DAT_00000004)) {
            ppfVar6 = param_1 + 0xcf;
            iVar9 = FUN_00703950(ppfVar6);
            local_b0 = (float *)(*(float *)(iVar9 + 0x33c) - (float)*ppfVar6);
            local_ac = (float *)(*(float *)(iVar9 + 0x340) - (float)param_1[0xd0]);
            pfVar16 = (float *)FUN_00a10030(&uStack_58);
            ppfVar5 = local_cc;
            local_c4 = (float **)(*pfVar16 * DAT_00baa854);
            local_98 = (float **)(pfVar16[1] * DAT_00baa854);
            local_9c = (float **)((float)local_c4 * DAT_00baa6fc + (float)*ppfVar6);
            local_bc = (float **)((float)local_98 + (float)param_1[0xd0]);
            FUN_006a92a0(param_1);
            ppfVar5[0x5a] = (float *)((uint)ppfVar5[0x5a] & 0xffffffdf);
            ppfVar5[0xcf] = (float *)local_9c;
            ppfVar5[0xd0] = (float *)local_bc;
            ppfVar5[0x5b] = ppfVar5[0x5b];
            ppfVar5[0xd8] = (float *)local_c4;
            ppfVar5[0x62] = (float *)&DAT_00000004;
            *(undefined *)((int)ppfVar5 + 0x171) = 1;
            ppfVar5[0x107] = (float *)0xc0800000;
            ppfVar5[0xd3] = (float *)0x0;
            ppfVar5[0xd4] = (float *)0xc1c00000;
            ppfVar5[0xd9] = (float *)local_98;
            (*(code *)(*ppfVar5)[3])();
            FUN_006d0c20(0);
          }
          FUN_006d6ba0(0xfc,0x3f800000,2,0,0x3f800000);
        }
        if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          HELPER_0040a380_AnimationActionA("SmallHoleClose",0);
          FUN_009568e0(0x375,2,0,0x3f800000);
          param_1[0x2d9] = (float *)&DAT_00000005;
        }
      }
      break;
    case (float *)0xa:
      param_1[0xd6] = (float *)0x0;
      if (param_1[0x104] == (float *)0x0) {
        if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          pcVar12 = "HandBombs";
LAB_004556d6:
          param_1[0xe2] = (float *)0x3f800000;
          param_1[0x62] = (float *)&DAT_00000004;
          *(undefined *)(param_1 + 0xec) = 0;
          HELPER_0040a380_AnimationActionA(pcVar12,0);
          FUN_009568e0(0x370,2,0,0x3f800000);
          param_1[0x104] = (float *)((int)param_1[0x104] + 1);
        }
      }
      else if (param_1[0x104] == (float *)0x1) {
        cVar2 = HELPER_0040b030_AnimationEventPredicateD("Shoot");
        if (cVar2 != '\0') {
          ppfVar6 = param_1 + 0xcf;
          iVar9 = FUN_00703950(ppfVar6);
          local_b0 = (float *)(*(float *)(iVar9 + 0x33c) - (float)*ppfVar6);
          local_ac = (float *)(*(float *)(iVar9 + 0x340) - (float)param_1[0xd0]);
          pfVar16 = (float *)FUN_00a10030(&uStack_58);
          local_98 = (float **)0x3;
          local_cc = (float **)(*pfVar16 * DAT_00baa834);
          local_bc = (float **)(pfVar16[1] * DAT_00baa834);
          local_c4 = (float **)((float)local_cc * DAT_00baa6bc);
          local_d4 = (float *)((float)local_cc * DAT_00baa6fc + (float)*ppfVar6);
          local_ac = (float *)((float)local_bc + (float)param_1[0xd0]);
          local_a8 = (float *)((float)local_bc * DAT_00baa6bc);
          local_a0 = DAT_00baae4c;
          do {
            uVar3 = FUN_006eef60();
            local_b8 = (float **)(local_a0 * DAT_00baa088);
            ppfVar6 = local_b8;
            FUN_0041d540();
            local_9c = ppfVar6;
            ppfVar6 = local_b8;
            FUN_0041d520();
            local_2c = (float)local_cc * (float)local_9c - (float)local_bc * (float)ppfVar6;
            local_28 = (float)local_cc * (float)ppfVar6 + (float)local_bc * (float)local_9c;
            ppfVar6 = local_b8;
            FUN_0041d540();
            local_9c = ppfVar6;
            ppfVar6 = local_b8;
            FUN_0041d520();
            uStack_58 = CONCAT44((float)local_a8 * (float)local_9c +
                                 (float)local_c4 * (float)ppfVar6 + (float)local_ac,
                                 ((float)local_c4 * (float)local_9c -
                                 (float)local_a8 * (float)ppfVar6) + (float)local_d4);
            iVar9 = HELPER_Entity_SpawnRelay(4,3,&uStack_58,&local_2c,param_1,0,uVar3);
            local_a0 = local_a0 + DAT_00baa9a0;
            *(uint *)(iVar9 + 0x168) = *(uint *)(iVar9 + 0x168) & 0xfffffffb;
            *(undefined4 *)(iVar9 + 0x16c) = *(undefined4 *)(iVar9 + 0x16c);
            *(undefined4 *)(iVar9 + 0x438) = 0;
            *(undefined4 *)(iVar9 + 0x43c) = 0;
            *(undefined4 *)(iVar9 + 0x440) = 0;
            *(undefined4 *)(iVar9 + 0x444) = 0;
            *(undefined *)(iVar9 + 0x463) = 1;
            if (*(float **)(iVar9 + 0x3bc) != (float *)0x0) {
              local_9c = (float **)(iVar9 + 0x3bc);
              FUN_004cf210(&local_9c);
            }
            *(undefined4 *)(iVar9 + 0x3bc) = param_1;
            FUN_004cdcf0((undefined4 *)(iVar9 + 0x3bc));
            iVar8 = FUN_006eef60();
            *(undefined4 *)(iVar9 + 0x34c) = 0;
            *(undefined4 *)(iVar9 + 0x350) = 0xc1c00000;
            fVar15 = (float)((double)iVar8 + (double)(&DAT_00bacb00)[-(iVar8 >> 0x1f)]) *
                     DAT_00ba9ff4;
            *(float *)(iVar9 + 0x41c) = DAT_00baad84 - (fVar15 + fVar15);
            uVar13 = FUN_006eef60();
            iVar8 = uVar13 % 10 + 0x23;
            *(int *)(iVar9 + 0x410) = iVar8;
            *(int *)(iVar9 + 0x414) = iVar8;
            if (*(int *)(iVar9 + 0x7c) != 0) {
              HELPER_AnimationState_AdvancePosition(*(int *)(*(int *)(iVar9 + 0x7c) + 0x30) + -1);
            }
            local_98 = (float **)((int)local_98 + -1);
          } while (local_98 != (float **)0x0);
          FUN_006d6ba0(0xfc,0x3f800000,2,0,0x3f800000);
        }
        if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          HELPER_0040a380_AnimationActionA("SmallHoleClose",0);
          FUN_009568e0(0x375,2,0,0x3f800000);
          param_1[0x2d9] = (float *)&DAT_00000005;
        }
      }
      break;
    case (float *)0xb:
      param_1[0xd6] = (float *)0x0;
      if (param_1[0x104] == (float *)0x0) {
        if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          pcVar12 = "HandLittleHorn";
          goto LAB_004556d6;
        }
      }
      else if (0 < (int)param_1[0x104]) {
        cVar2 = HELPER_0040b030_AnimationEventPredicateD(&DAT_00b1d6fc);
        if (cVar2 != '\0') {
          FUN_006d6ba0(0x19f,0x3f800000,2,0,0x3f800000);
        }
        cVar2 = HELPER_0040b030_AnimationEventPredicateD("Shoot");
        if (cVar2 != '\0') {
          iVar9 = FUN_006eef60();
          FUN_006d6ba0(0x19e,0x3f800000,2,0,
                       (float)((int)param_1[0x104] + -1) * DAT_00baa120 + DAT_00baa444 +
                       (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) *
                       DAT_00ba9ff4 * DAT_00baa0d0);
          cVar2 = FUN_00417430(0,0x10000000);
          if (cVar2 != '\0') {
            AI_0041af60(&local_60,0x194,1,0xffffffff,0,0);
            FUN_004175b0();
          }
          uVar3 = FUN_006eef60();
          iVar9 = HELPER_Entity_SpawnRelay(0x194,1,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar3);
          cVar2 = FUN_00417430(0,0x10000000);
          if (cVar2 != '\0') {
            *(undefined4 *)(iVar9 + 0x380) = 0x40a00000;
            *(undefined4 *)(iVar9 + 900) = 0x40a00000;
          }
          local_ac = (float *)((DAT_00baa9b4 - (float)((int)param_1[0x104] + -2) * DAT_00baa8d0) *
                              DAT_00baa088);
          pfVar16 = local_ac;
          FUN_0041d540();
          local_d4 = (float *)((float)pfVar16 * DAT_00baa81c);
          pfVar16 = local_ac;
          FUN_0041d520();
          fVar15 = (float)pfVar16 * DAT_00baa81c;
          *(float **)(iVar9 + 0x360) = local_d4;
          *(float *)(iVar9 + 0x364) = fVar15;
          pfVar16 = param_1[0xcf];
          pfVar17 = param_1[0xd0];
          *(uint *)(iVar9 + 0x168) = *(uint *)(iVar9 + 0x168) & 0xfffffffb;
          *(undefined4 *)(iVar9 + 0x16c) = *(undefined4 *)(iVar9 + 0x16c);
          *(float *)(iVar9 + 0x33c) = (float)local_d4 + (float)pfVar16;
          *(float *)(iVar9 + 0x340) = fVar15 + (float)pfVar17;
          param_1[0x104] = (float *)((int)param_1[0x104] + 1);
        }
        cVar2 = HELPER_0040b030_AnimationEventPredicateD(&DAT_00b1d6f4);
        if (cVar2 != '\0') {
          *(undefined *)(param_1 + 0xec) = 1;
          param_1[0x62] = (float *)0x0;
        }
        if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          HELPER_0040a380_AnimationActionA("SmallHoleClose",0);
          FUN_009568e0(0x375,2,0,0x3f800000);
          param_1[0x2d9] = (float *)&DAT_00000005;
        }
      }
    }
    cVar2 = HELPER_0040b030_AnimationEventPredicateD(&DAT_00b1d5b0);
    if (cVar2 != '\0') {
      FUN_009568e0(0x371,2,0,0x3f800000);
    }
    cVar2 = HELPER_0040b030_AnimationEventPredicateD("Crack");
    if (cVar2 != '\0') {
      FUN_009568e0(0x376,2,0,0x3f800000);
    }
    cVar2 = HELPER_0040b030_AnimationEventPredicateD(&DAT_00b1d644);
    if (cVar2 != '\0') {
      FUN_009568e0(0x377,2,0,0x3f800000);
    }
    cVar2 = HELPER_0040b030_AnimationEventPredicateD("Shake");
    if (cVar2 != '\0') {
      FUN_009568e0(0x378,2,0,0x3f800000);
    }
  }
  else {
    if (local_9c != (float **)0x2) goto LAB_004560df;
    if (param_1[0x2d9] == (float *)0x0) {
      HELPER_0040a380_AnimationActionA("BigHoleOpen",1);
      param_1[0x2d9] = (float *)0x3;
      *(undefined *)(param_1 + 0x30f) = 0;
      *(undefined *)(param_1 + 0xec) = 1;
      param_1[0xe2] = (float *)0x0;
      param_1[0x62] = (float *)0x3;
      param_1[0xd6] = (float *)0xc2c80000;
      goto LAB_00454a73;
    }
    pfVar16 = param_1[0xef];
    param_1[0xd6] = (float *)0xc2c80000;
    if (pfVar16 == (float *)0x0) goto LAB_00454a98;
    if ((float)(float *)pfVar16[0xe0] <= (float)param_1[0xe0]) {
      param_1[0xe0] = (float *)pfVar16[0xe0];
    }
    else {
      pfVar16[0xe0] = (float)param_1[0xe0];
    }
    if (*(char *)((int)param_1 + 0x173) != '\0') {
      uVar21 = FUN_00435c70();
      (*(code *)((ulonglong)uVar21 >> 0x20))((int)uVar21);
    }
    if (param_1[0x2d9] == (float *)0x3) {
      if (param_1[0x104] == (float *)0x0) {
        if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
          param_1[0x104] = (float *)0x1;
        }
      }
      else {
        FUN_00452bf0(local_68);
        local_b1 = FUN_004561b0();
        FUN_0040d040();
        if (local_b1 == '\0') {
          if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
            (*(code *)(*param_1)[10])();
            if ((int)param_1[0x2f0] < 2) {
              if (param_1[0x2f0] == (float *)0x1) {
                uVar3 = FUN_006eef60();
                uStack_58 = 0;
                uVar10 = FUN_0081e9d0(local_d0,0);
                uVar22 = 2;
                goto LAB_004560aa;
              }
            }
            else {
              uVar3 = FUN_006eef60();
              uStack_58 = 0;
              uVar10 = FUN_0081e9d0(&local_2c,0);
              uVar22 = 3;
LAB_004560aa:
              iVar9 = HELPER_Entity_SpawnRelay(0x19b,1,uVar10,&uStack_58,param_1,uVar22,uVar3);
              *(undefined4 *)(iVar9 + 0x16c) = *(undefined4 *)(iVar9 + 0x16c);
              *(uint *)(iVar9 + 0x168) = *(uint *)(iVar9 + 0x168) & 0xfffffffb;
            }
            param_1[0x2f0] = (float *)0x0;
          }
        }
        else {
          uVar13 = 0;
          if (*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 != 0) {
            do {
              FUN_00417870(uVar13);
              HELPER_00452c60_BigHornAttackHelperA();
              uVar13 = uVar13 + 1;
            } while (uVar13 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) -
                                     *(int *)(DAT_00c71678 + 0x1baa8) >> 2));
          }
          iVar9 = HELPER_00452d40_BigHornAttackHelperB();
          param_1[0x2f0] = (float *)((int)param_1[0x2f0] + iVar9);
          pfVar16 = param_1[0x104];
          param_1[0x104] = (float *)((int)pfVar16 + 1);
          if ((0x3c < (int)pfVar16) && (local_a1 == '\0')) {
            HELPER_0040a380_AnimationActionA("BigHoleClose",0);
          }
        }
      }
    }
  }
LAB_004560df:
  if (((param_1[0xb] != (float *)0x1) || (param_1[0x2d9] != (float *)&DAT_00000008)) ||
     ((int)param_1[0x104] < 1)) {
    param_1[0xdb] = (float *)0x0;
  }
LAB_00456101:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
LAB_00453d24:
  if (0x31 < (int)local_a8) goto LAB_00453d3a;
  goto LAB_00453b70;
LAB_00453d3a:
  pfVar16 = (float *)((int)local_a8 + 1);
LAB_00453d72:
  if (0x31 < (int)pfVar16) {
    FUN_00a112c0(4,"Failed to find safe for big horn to move to\n");
  }
  goto switchD_0045334c_caseD_5;
LAB_0045378b:
  if (0x31 < (int)local_a8) goto code_r0x004537a0;
  goto LAB_00453604;
code_r0x004537a0:
  pfVar16 = (float *)((int)local_a8 + 1);
LAB_00453941:
  if (0x31 < (int)pfVar16) {
    FUN_00a112c0(4,"Failed to find safe spawn location for Big Horn\'s Small Hole\n");
  }
  local_a0 = (float)((int)local_a0 + 1);
  if ((int)local_bc <= (int)local_a0) goto switchD_0045334c_caseD_5;
  goto LAB_004535e0;
}

