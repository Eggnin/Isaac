/* Local J460 decompiler output.
 * VA: 0x00459d20
 * Entry: 00459d20
 * Dispatcher: 0x006c2990
 * Types: 66
 * Identities: 66.0.0,66.10.0,66.20.0,66.30.0
 * Evidence: dispatcher=0x006c2990; end=0x0045b830; instructions=1671
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=66; identities=66.0.0,66.10.0,66.20.0,66.30.0;
   dispatcher=0x006c2990; end=0x0045b830; instructions=1671 */

void __fastcall AI_00459d20(int *param_1)

{
  byte bVar1;
  undefined uVar2;
  int iVar3;
  char cVar4;
  int iVar5;
  float *pfVar6;
  uint uVar7;
  byte **ppbVar8;
  float *pfVar9;
  int iVar10;
  float *pfVar11;
  byte *pbVar12;
  char *pcVar13;
  int iVar14;
  int iVar15;
  bool bVar16;
  bool bVar17;
  int *piVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  int local_b0 [8];
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined4 local_88;
  float local_84;
  float *local_80;
  float local_7c;
  int *local_78;
  float local_74;
  float local_70;
  float *local_6c;
  char local_65;
  uint local_64;
  undefined local_60;
  undefined4 local_5c;
  undefined4 local_58;
  float local_54;
  float local_50;
  undefined local_4c [8];
  float local_44;
  uint local_40;
  int local_3c;
  uint local_38;
  float local_34;
  undefined4 local_30;
  float local_2c;
  uint local_28;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = -1;
  puStack_18 = &LAB_00af25d5;
  local_1c = ExceptionList;
  local_24 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  local_78 = param_1;
  iVar5 = FUN_006be840();
  iVar3 = _UNK_00babf5c;
  iVar15 = _UNK_00babf58;
  iVar14 = _UNK_00babf54;
  iVar10 = _DAT_00babf50;
  pfVar9 = (float *)(param_1 + 0xcf);
  local_84 = *(float *)(iVar5 + 0x33c) - *pfVar9;
  local_80 = (float *)(*(float *)(iVar5 + 0x340) - (float)param_1[0xd0]);
  if (param_1[0x2d9] == 0) {
    param_1[0x61] = 3;
    local_90 = 0x3dcccccd;
    uStack_8c = 0x3dcccccd;
    local_88 = 0x3dcccccd;
    if (param_1 + 0x79 != local_b0) {
      *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
      *(undefined8 *)(param_1 + 0x81) = 0x3dcccccd3dcccccd;
      param_1[0x79] = iVar10;
      param_1[0x7a] = iVar14;
      param_1[0x7b] = iVar15;
      param_1[0x7c] = iVar3;
      param_1[0x83] = 0x3dcccccd;
    }
  }
  iVar10 = param_1[0xb];
  local_74 = local_84;
  local_6c = local_80;
  if (iVar10 == 0) {
    fVar20 = (float)param_1[0x2d9];
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    if (fVar20 == 0.0) {
      param_1[0x2d9] = 4;
      goto LAB_0045b812;
    }
    if ((float)DAT_00baa2d0 <= (float)param_1[0xe0] / (float)param_1[0xe1]) {
      if (fVar20 == 5.605194e-45) {
        local_28 = 0xf;
        local_3c = 0x6b6c6157;
        local_38 = local_38 & 0xffffff00;
        local_50 = 2.101948e-44;
        local_64 = 0x6b6c6157;
        local_60 = 0;
        local_14._0_1_ = 1;
        local_14._1_3_ = 0;
        local_54 = fVar20;
        local_2c = fVar20;
        FUN_006c1330();
        local_14 = (uint)local_14._1_3_ << 8;
        if (0xf < (uint)local_50) {
          if ((0xfff < (int)local_50 + 1U) && (0x1f < (local_64 - *(int *)(local_64 - 4)) - 4))
          goto LAB_00459f91;
          FUN_00aef15c();
        }
        local_14 = -1;
        local_54 = 0.0;
        local_50 = 2.101948e-44;
        local_64 = local_64 & 0xffffff00;
        if (0xf < local_28) {
          if ((0xfff < local_28 + 1) && (0x1f < (local_3c - *(int *)(local_3c + -4)) - 4U)) {
LAB_00459f91:
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
          FUN_00aef15c();
        }
        FUN_007e6650();
        uVar7 = FUN_006eef60();
        if (uVar7 % 0x5a == 0) {
          iVar10 = *(int *)(DAT_00c71678 + 0x18300);
          iVar14 = *(int *)(iVar10 + 0x12c4) + *(int *)(iVar10 + 0x12c0);
          iVar15 = *(int *)(iVar10 + 0x12cc) + *(int *)(iVar10 + 0x12c8);
          uVar7 = FUN_006eef60();
          iVar10 = 0;
          if (0 < iVar14) {
            iVar10 = iVar14;
          }
          iVar14 = 0;
          if (0 < iVar15) {
            iVar14 = iVar15;
          }
          param_1 = local_78;
          if (iVar10 - iVar14 < (int)((uVar7 & 1) + 1)) {
            local_78[0x2d9] = 0xd;
            local_78[0x104] = 0;
            goto LAB_0045ab9f;
          }
        }
        uVar7 = FUN_006eef60();
        if (((uVar7 % 0xb4 == 0) && (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x722c) < 1)) &&
           (param_1[0xc] == 0)) {
          param_1[0x2d9] = 8;
          param_1[0x104] = 0;
        }
        else {
          uVar7 = FUN_006eef60();
          if (uVar7 % 100 == 0) {
            iVar10 = *(int *)(DAT_00c71678 + 0x18300);
            iVar14 = *(int *)(iVar10 + 0x12c8) + *(int *)(iVar10 + 0x12cc);
            iVar15 = *(int *)(iVar10 + 0x12c4) + *(int *)(iVar10 + 0x12c0);
            iVar10 = 0;
            if (0 < iVar14) {
              iVar10 = iVar14;
            }
            iVar14 = 0;
            if (0 < iVar15) {
              iVar14 = iVar15;
            }
            if (iVar14 - iVar10 < 4) {
              param_1[0x2d9] = 0xe;
              param_1[0x104] = 0;
            }
          }
        }
      }
      else {
        if (fVar20 == 1.821688e-44) {
          cVar4 = FUN_0040a4d0();
          if (cVar4 == '\0') {
            if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) == '\0')) {
              ppbVar8 = (byte **)param_1[0x1f];
              if (&DAT_0000000f < ppbVar8[5]) {
                ppbVar8 = (byte **)*ppbVar8;
              }
              pbVar12 = &DAT_00b1d53c;
              do {
                bVar1 = *(byte *)ppbVar8;
                bVar16 = bVar1 < *pbVar12;
                if (bVar1 != *pbVar12) {
LAB_0045a120:
                  uVar7 = -(uint)bVar16 | 1;
                  goto LAB_0045a125;
                }
                if (bVar1 == 0) break;
                bVar1 = *(byte *)((int)ppbVar8 + 1);
                bVar16 = bVar1 < pbVar12[1];
                if (bVar1 != pbVar12[1]) goto LAB_0045a120;
                ppbVar8 = (byte **)((int)ppbVar8 + 2);
                pbVar12 = pbVar12 + 2;
              } while (bVar1 != 0);
              uVar7 = 0;
LAB_0045a125:
              if (uVar7 == 0) goto LAB_0045a17f;
            }
            FUN_0040a380();
            local_78 = (int *)0x3a1;
            FUN_00956780();
            FUN_0092dc30();
          }
LAB_0045a17f:
          iVar10 = param_1[0x104] + 1;
          param_1[0x104] = iVar10;
          if (iVar10 == 0x14) {
            FUN_006d6ba0();
            FUN_006d6ba0();
            if (param_1[0xc] != 1) {
              local_78 = (int *)0x0;
              local_74 = 0.0;
              do {
                if (0x13 < (int)local_74) break;
                FUN_006eef60();
                FUN_00813520();
                iVar10 = FUN_006be840();
                fVar20 = *(float *)(iVar10 + 0x340) - (float)local_80;
                fVar19 = *(float *)(iVar10 + 0x33c) - local_84;
                fVar20 = fVar20 * fVar20 + fVar19 * fVar19;
                FUN_00435a50();
                if (DAT_00baaa44 < fVar20) {
                  FUN_006eef60();
                  FUN_00428b20();
                  iVar10 = __RTDynamicCast();
                  if (*(int *)(iVar10 + 0x3bc) != 0) {
                    local_6c = (float *)(iVar10 + 0x3bc);
                    FUN_004cf210();
                  }
                  *(int **)(iVar10 + 0x3bc) = param_1;
                  FUN_004cdcf0();
                  FUN_006d0300();
                  if ((param_1[0x5b] & 0x10000000U) != 0) {
                    *(uint *)(iVar10 + 0x16c) = *(uint *)(iVar10 + 0x16c) & 0xffffffdf;
                    *(undefined4 *)(iVar10 + 0x168) = *(undefined4 *)(iVar10 + 0x168);
                  }
                  local_78 = (int *)((int)local_78 + 1);
                }
                local_74 = (float)((int)local_74 + 1);
              } while ((int)local_78 < 2);
              goto LAB_0045ab9f;
            }
            pfVar9 = (float *)FUN_0067f070();
            local_78 = (int *)0x2;
            local_74 = *pfVar9 * DAT_00baa924;
            local_80 = (float *)(pfVar9[1] * DAT_00baa924);
            cVar4 = FUN_00417430();
            if (cVar4 == '\0') {
LAB_0045a240:
              FUN_006eef60();
              local_54 = local_74 + (float)param_1[0xcf];
              local_50 = (float)local_80 + (float)param_1[0xd0];
              FUN_00428b20();
            }
            else {
              iVar10 = FUN_006ac7e0();
              local_78 = (int *)(3 - iVar10);
              if (0 < (int)local_78) goto LAB_0045a240;
            }
            if (1 < (int)local_78) {
              FUN_006eef60();
              local_7c = (float)param_1[0xcf] - local_74;
              local_78 = (int *)((float)param_1[0xd0] - (float)local_80);
              FUN_00428b20();
            }
            goto LAB_0045ab9f;
          }
LAB_0045a729:
          bVar17 = SBORROW4(iVar10,0x30);
          iVar14 = iVar10 + -0x30;
          bVar16 = iVar10 == 0x30;
        }
        else {
          if (fVar20 == 1.961818e-44) {
            cVar4 = FUN_0040a4d0();
            if (cVar4 == '\0') {
              if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) == '\0')) {
                ppbVar8 = (byte **)param_1[0x1f];
                if (&DAT_0000000f < ppbVar8[5]) {
                  ppbVar8 = (byte **)*ppbVar8;
                }
                pbVar12 = &DAT_00b1d568;
                do {
                  bVar1 = *(byte *)ppbVar8;
                  bVar16 = bVar1 < *pbVar12;
                  if (bVar1 != *pbVar12) {
LAB_0045a4a0:
                    uVar7 = -(uint)bVar16 | 1;
                    goto LAB_0045a4a5;
                  }
                  if (bVar1 == 0) break;
                  bVar1 = *(byte *)((int)ppbVar8 + 1);
                  bVar16 = bVar1 < pbVar12[1];
                  if (bVar1 != pbVar12[1]) goto LAB_0045a4a0;
                  ppbVar8 = (byte **)((int)ppbVar8 + 2);
                  pbVar12 = pbVar12 + 2;
                } while (bVar1 != 0);
                uVar7 = 0;
LAB_0045a4a5:
                if (uVar7 == 0) goto LAB_0045a4ff;
              }
              FUN_0040a380();
              local_78 = (int *)0x3a1;
              FUN_00956780();
              FUN_0092dc30();
            }
LAB_0045a4ff:
            iVar10 = param_1[0x104] + 1;
            param_1[0x104] = iVar10;
            if (iVar10 == 0x12) {
              FUN_006d6ba0();
              FUN_006d6ba0();
              local_6c = (float *)0x4;
              iVar10 = *(int *)(DAT_00c71678 + 0x18300);
              local_44 = *(float *)(iVar10 + 0x14);
              local_30 = *(undefined4 *)(iVar10 + 0x18);
              local_3c = *(int *)(iVar10 + 0x1c);
              local_28 = *(uint *)(iVar10 + 0x20);
              local_40 = param_1[0xd0];
              local_34 = (float)param_1[0xcf];
              pfVar9 = &local_44;
              local_38 = local_40;
              local_2c = local_34;
              do {
                local_80 = pfVar9;
                iVar10 = FUN_006be840();
                fVar20 = *(float *)(iVar10 + 0x340) - pfVar9[1];
                fVar19 = *(float *)(iVar10 + 0x33c) - *pfVar9;
                fVar20 = fVar20 * fVar20 + fVar19 * fVar19;
                FUN_00435a50();
                if (DAT_00baa9a0 < fVar20) {
                  local_78 = DAT_00baa454;
                  piVar18 = DAT_00baa528;
                  if ((param_1[0x319] == 0x12) || (piVar18 = DAT_00baa2d0, param_1[0x319] == 0x13))
                  {
                    local_78 = piVar18;
                  }
                  local_74 = 1.45735e-43;
                  FUN_00956780();
                  FUN_0092dc30();
                  FUN_006eef60();
                  FUN_00428b20();
                  iVar10 = __RTDynamicCast();
                  *(undefined4 *)(iVar10 + 0xbc0) = 1;
                  if (*(int *)(iVar10 + 0x3bc) != 0) {
                    local_78 = (int *)(iVar10 + 0x3bc);
                    FUN_004cf210();
                  }
                  *(int **)(iVar10 + 0x3bc) = param_1;
                  FUN_004cdcf0();
                  FUN_006d0300();
                  pfVar9 = local_80;
                  if ((param_1[0x5b] & 0x10000000U) != 0) {
                    *(uint *)(iVar10 + 0x16c) = *(uint *)(iVar10 + 0x16c) & 0xffffffdf;
                    *(undefined4 *)(iVar10 + 0x168) = *(undefined4 *)(iVar10 + 0x168);
                  }
                }
                pfVar9 = pfVar9 + 2;
                local_6c = (float *)((int)local_6c + -1);
              } while (local_6c != (float *)0x0);
              local_6c = (float *)0x0;
              local_80 = pfVar9;
              goto LAB_0045ab9f;
            }
            goto LAB_0045a729;
          }
          if (fVar20 != 1.121039e-44) {
            if (fVar20 != 8.407791e-45) goto LAB_0045ab9f;
            goto LAB_0045a994;
          }
          cVar4 = FUN_0040a4d0();
          if (cVar4 == '\0') {
            if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) == '\0')) {
              ppbVar8 = (byte **)param_1[0x1f];
              if (&DAT_0000000f < ppbVar8[5]) {
                ppbVar8 = (byte **)*ppbVar8;
              }
              pbVar12 = &DAT_00b1d554;
              do {
                bVar1 = *(byte *)ppbVar8;
                bVar16 = bVar1 < *pbVar12;
                if (bVar1 != *pbVar12) {
LAB_0045a790:
                  uVar7 = -(uint)bVar16 | 1;
                  goto LAB_0045a795;
                }
                if (bVar1 == 0) break;
                bVar1 = *(byte *)((int)ppbVar8 + 1);
                bVar16 = bVar1 < pbVar12[1];
                if (bVar1 != pbVar12[1]) goto LAB_0045a790;
                ppbVar8 = (byte **)((int)ppbVar8 + 2);
                pbVar12 = pbVar12 + 2;
              } while (bVar1 != 0);
              uVar7 = 0;
LAB_0045a795:
              if (uVar7 == 0) goto LAB_0045a7e9;
            }
            FUN_0040a380();
            local_6c = (float *)0x39f;
            FUN_00956780();
            FUN_0092dc30();
          }
LAB_0045a7e9:
          iVar14 = param_1[0x104];
          iVar10 = iVar14 + 1;
          param_1[0x104] = iVar10;
          if (iVar10 == 0x16) {
            cVar4 = FUN_00417430();
            if (cVar4 == '\0') {
              local_6c = (float *)0x0;
              if (*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8) >> 2 != 0) {
                do {
                  FUN_00417870();
                  FUN_00431310();
                  FUN_006ad750(local_4c,0xa0,0x3f666666);
                  local_6c = (float *)((int)local_6c + 1);
                } while (local_6c <
                         (uint)(*(int *)(DAT_00c71678 + 0x1baac) - *(int *)(DAT_00c71678 + 0x1baa8)
                               >> 2));
              }
              FUN_009ad210();
              local_6c = (float *)0x39d;
              iVar10 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x722c);
              if (iVar10 < 0xa0) {
                iVar10 = 0xa0;
              }
              *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x722c) = iVar10;
              goto LAB_0045ab65;
            }
            if ((int)(*(int *)(DAT_00c7169c + 0x2a408) - *(int *)(DAT_00c7169c + 0x2a404) &
                     0xfffffffcU) < 0x109) {
              local_5c = 0;
            }
            else {
              local_5c = *(undefined4 *)(*(int *)(DAT_00c7169c + 0x2a404) + 0x108);
            }
            local_58 = 0;
            local_50 = 0.0;
            local_54 = 2.242078e-43;
            FUN_00930220();
            goto LAB_0045ab9f;
          }
          bVar17 = SBORROW4(iVar10,0x34);
          iVar14 = iVar14 + -0x33;
          bVar16 = iVar10 == 0x34;
        }
        if (!bVar16 && bVar17 == iVar14 < 0) {
          param_1[0x2d9] = 4;
        }
      }
    }
    else {
      iVar10 = *(int *)(DAT_00c71678 + 0x18300);
      local_7c = *(float *)(iVar10 + 0x1c);
      local_6c = *(float **)(iVar10 + 0x18);
      local_78 = *(int **)(iVar10 + 0x20);
      local_70 = *(float *)(iVar10 + 0x14);
      pfVar11 = &local_70;
      if (*(float *)(iVar10 + 0x14) < *pfVar9) {
        pfVar11 = pfVar9;
      }
      pfVar6 = &local_7c;
      if (*pfVar11 <= local_7c && local_7c != *pfVar11) {
        pfVar6 = pfVar11;
      }
      *pfVar9 = *pfVar6;
      *(bool *)(param_1 + 0x52) = local_84 < 0.0;
      param_1[0x2d9] = 6;
LAB_0045a994:
      FUN_0040a380();
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        FUN_006d6ba0();
        FUN_006d6ba0();
        FUN_006c0f30();
        param_1[0x2d9] = 0;
        FUN_0040a380();
        local_6c = (float *)DAT_00baa854;
        if (*(char *)(param_1 + 0x52) != '\0') {
          local_6c = (float *)DAT_00baadd8;
        }
        FUN_006eef60();
        local_54 = (float)local_6c + *pfVar9;
        local_50 = (float)param_1[0xd0] - DAT_00baa7e8;
        FUN_00428b20();
        iVar10 = __RTDynamicCast();
        fVar20 = (float)param_1[0x30e];
        *(float *)(iVar10 + 0xc38) = fVar20;
        fVar20 = fVar20 * *(float *)(iVar10 + 0x3b4);
        fVar19 = fVar20 * DAT_00c3793c;
        *(float *)(iVar10 + 0xe8) = fVar20 * DAT_00c37940;
        *(float *)(iVar10 + 0xe4) = fVar19;
        if (*(int *)(iVar10 + 0x3bc) != 0) {
          local_6c = (float *)(int *)(iVar10 + 0x3bc);
          FUN_004cf210();
        }
        *(int **)(iVar10 + 0x3bc) = param_1;
        FUN_004cdcf0();
        FUN_006d0300();
        uVar2 = *(undefined *)(param_1 + 0x52);
        *(uint *)(iVar10 + 0x168) = *(uint *)(iVar10 + 0x168) & 0xfffffffb;
        *(undefined *)(iVar10 + 0x148) = uVar2;
        *(undefined4 *)(iVar10 + 0x16c) = *(undefined4 *)(iVar10 + 0x16c);
        cVar4 = FUN_00417430();
        if (cVar4 != '\0') {
          *(undefined4 *)(iVar10 + 0x380) = 0x41f00000;
          *(undefined4 *)(iVar10 + 900) = 0x41f00000;
        }
        *(undefined4 *)(iVar10 + 0x188) = 0;
        local_6c = (float *)0x3a2;
LAB_0045ab65:
        FUN_00956780();
        FUN_0092dc30();
      }
    }
LAB_0045ab9f:
    if (param_1[0x1f] != 0) {
      cVar4 = FUN_0040add0();
LAB_0045b780:
      if (cVar4 != '\0') {
        local_6c = (float *)0x3a0;
        FUN_00956780();
        FUN_0092dc30();
      }
    }
  }
  else {
    if (iVar10 == 10) {
      if (param_1[0xef] == 0) {
        FUN_00435c70();
        (**(code **)(*param_1 + 0x24))();
      }
      param_1[0xdb] = (int)((float)param_1[0xdb] * _DAT_00baa43c);
      if (param_1[0x2d9] == 0) {
        *(bool *)(param_1 + 0x52) = local_74 < 0.0;
        fVar20 = (float)local_6c * (float)local_6c + local_74 * local_74;
        param_1[0x2d9] = 3;
        FUN_00435a50();
        fVar20 = fVar20 * DAT_00baa120;
        param_1[0xe0] = 0x41700000;
        param_1[0x62] = 2;
        param_1[0x61] = 0;
        param_1[0x104] = 0x50 - (int)fVar20;
        goto LAB_0045b812;
      }
      if (param_1[0x2d9] == 3) {
        if (param_1[0x2f0] == 1) {
          param_1[0xd8] = DAT_00c7b640;
          param_1[0xd9] = DAT_00c7b644;
          FUN_0040a6e0();
          iVar10 = param_1[0x104];
          param_1[0x104] = iVar10 + -1;
          if (0 < iVar10 + -1) goto LAB_0045ad21;
        }
        else {
          param_1[0x104] = 0;
        }
        local_6c = (float *)0x39e;
        param_1[0x2d9] = 4;
        FUN_00956780();
        FUN_0092dc30();
      }
LAB_0045ad21:
      if (param_1[0x2d9] == 4) {
        param_1[0x104] = param_1[0x104] + 1;
        FUN_0040a380();
        if (param_1[0x2f0] == 1) {
          if (0xb4 < param_1[0x104]) {
            (**(code **)(*param_1 + 0x28))();
          }
          cVar4 = FUN_00a10600();
          if (cVar4 != '\0') {
            pfVar9 = (float *)FUN_00a10030();
            fVar20 = pfVar9[1] * DAT_00baa380;
            param_1[0x2ec] = (int)(*pfVar9 * DAT_00baa380);
            param_1[0x2ed] = (int)fVar20;
          }
        }
        else {
          pfVar9 = (float *)FUN_00a10030();
          fVar20 = pfVar9[1] * (float)DAT_00baa2d0;
          param_1[0x2ec] = (int)(*pfVar9 * (float)DAT_00baa2d0);
          param_1[0x2ed] = (int)fVar20;
        }
        cVar4 = FUN_00417430();
        if (cVar4 == '\0') {
          cVar4 = FUN_00417430();
          pfVar9 = (float *)(param_1 + 0x2ec);
          if (cVar4 != '\0') {
            uVar7 = param_1[0x2ed] ^ DAT_00bacb70;
            *pfVar9 = (float)((uint)*pfVar9 ^ DAT_00bacb70);
            param_1[0x2ed] = uVar7;
          }
          fVar20 = (float)param_1[0xdb];
          if (NAN(fVar20) == (fVar20 == 0.0)) {
            param_1[0xd8] = (int)(((float)param_1[0xe7] * *pfVar9) / fVar20 + (float)param_1[0xd8]);
            param_1[0xd9] =
                 (int)(((float)param_1[0x2ed] * (float)param_1[0xe7]) / fVar20 +
                      (float)param_1[0xd9]);
          }
        }
        else {
          FUN_007e6300();
        }
        FUN_00812f50();
        fVar20 = ((float)param_1[0xd0] - local_50) * ((float)param_1[0xd0] - local_50) +
                 ((float)param_1[0xcf] - local_54) * ((float)param_1[0xcf] - local_54);
        FUN_00435a50();
        if (DAT_00baaae0 < fVar20) {
          (**(code **)(*param_1 + 0x28))();
        }
      }
      goto LAB_0045b7cd;
    }
    if (iVar10 != 0x14) {
      if (iVar10 != 0x1e) goto LAB_0045b7cd;
      iVar10 = param_1[0x2d9];
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
      if (iVar10 == 0) {
        param_1[0x2d9] = 7;
        param_1[0x104] = 0;
        goto LAB_0045b812;
      }
      if (iVar10 == 7) {
        if (param_1[0x104] == 0) {
          FUN_0040a380();
          param_1[0x104] = param_1[0x104] + 1;
          iVar10 = param_1[0x2d9];
        }
        if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) goto LAB_0045b35a;
        param_1[0x2d9] = 4;
LAB_0045b363:
        local_28 = 0xf;
        local_2c = 5.605194e-45;
        local_3c = 0x6b6c6157;
        local_38 = local_38 & 0xffffff00;
        local_50 = 2.101948e-44;
        local_54 = 5.605194e-45;
        local_64 = 0x6b6c6157;
        local_60 = 0;
        local_14._0_1_ = 3;
        local_14._1_3_ = 0;
        FUN_006c1330();
        local_14 = CONCAT31(local_14._1_3_,2);
        if (0xf < (uint)local_50) {
          if ((0xfff < (int)local_50 + 1U) && (0x1f < (local_64 - *(int *)(local_64 - 4)) - 4))
          goto LAB_0045b42a;
          FUN_00aef15c();
        }
        local_14 = -1;
        local_54 = 0.0;
        local_50 = 2.101948e-44;
        local_64 = local_64 & 0xffffff00;
        if (0xf < local_28) {
          if ((0xfff < local_28 + 1) && (0x1f < (local_3c - *(int *)(local_3c + -4)) - 4U)) {
LAB_0045b42a:
                    /* WARNING: Subroutine does not return */
            _invalid_parameter_noinfo_noreturn();
          }
          FUN_00aef15c();
        }
        FUN_007e6650();
        uVar7 = FUN_006eef60();
        if (uVar7 % 0x5a == 0) {
          iVar10 = *(int *)(DAT_00c71678 + 0x18300);
          iVar14 = *(int *)(iVar10 + 0x12c8) + *(int *)(iVar10 + 0x12cc);
          iVar15 = *(int *)(iVar10 + 0x12c4) + *(int *)(iVar10 + 0x12c0);
          iVar10 = 0;
          if (0 < iVar14) {
            iVar10 = iVar14;
          }
          iVar14 = 0;
          if (0 < iVar15) {
            iVar14 = iVar15;
          }
          if (iVar14 - iVar10 < 2) {
            param_1[0x2d9] = 0xd;
            param_1[0x104] = 0;
          }
        }
      }
      else {
LAB_0045b35a:
        if (iVar10 == 4) goto LAB_0045b363;
        if (iVar10 == 0xd) {
          cVar4 = FUN_0040a4d0();
          if (cVar4 == '\0') {
            if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) == '\0')) {
              ppbVar8 = (byte **)param_1[0x1f];
              if (&DAT_0000000f < ppbVar8[5]) {
                ppbVar8 = (byte **)*ppbVar8;
              }
              pcVar13 = "Attack";
              do {
                bVar1 = *(byte *)ppbVar8;
                bVar16 = bVar1 < (byte)*pcVar13;
                if (bVar1 != *pcVar13) {
LAB_0045b510:
                  uVar7 = -(uint)bVar16 | 1;
                  goto LAB_0045b515;
                }
                if (bVar1 == 0) break;
                bVar1 = *(byte *)((int)ppbVar8 + 1);
                bVar16 = bVar1 < ((byte *)pcVar13)[1];
                if (bVar1 != ((byte *)pcVar13)[1]) goto LAB_0045b510;
                ppbVar8 = (byte **)((int)ppbVar8 + 2);
                pcVar13 = (char *)((byte *)pcVar13 + 2);
              } while (bVar1 != 0);
              uVar7 = 0;
LAB_0045b515:
              if (uVar7 == 0) goto LAB_0045b56f;
            }
            FUN_0040a380();
            local_6c = (float *)0x3a1;
            FUN_00956780();
            FUN_0092dc30();
          }
LAB_0045b56f:
          pfVar9 = (float *)(param_1 + 0xcf);
          iVar10 = param_1[0x104] + 1;
          param_1[0x104] = iVar10;
          if (iVar10 == 0x10) {
            FUN_006d6ba0();
            FUN_006d6ba0();
            pfVar11 = (float *)FUN_0067f070();
            local_80 = (float *)0x2;
            local_74 = *pfVar11 * DAT_00baa81c;
            local_78 = (int *)(pfVar11[1] * DAT_00baa81c);
            cVar4 = FUN_00417430();
            if (cVar4 == '\0') {
              pfVar11 = (float *)0x2;
            }
            else {
              iVar10 = FUN_006ac7e0();
              local_80 = (float *)(2 - iVar10);
              iVar10 = FUN_006ac7e0();
              pfVar11 = (float *)((int)local_80 - iVar10);
              local_80 = pfVar11;
            }
            if (param_1[0xc] == 1) {
              if (0 < (int)pfVar11) {
                FUN_006eef60();
                local_54 = local_74 + *pfVar9;
                local_50 = (float)local_78 + (float)param_1[0xd0];
                FUN_00428b20();
                pfVar11 = local_80;
              }
              if (1 < (int)pfVar11) {
                FUN_006eef60();
                local_54 = *pfVar9 - local_74;
                local_50 = (float)param_1[0xd0] - (float)local_78;
                FUN_00428b20();
              }
            }
            else {
              if (0 < (int)pfVar11) {
                FUN_006eef60();
                local_54 = local_74 + *pfVar9;
                local_50 = (float)local_78 + (float)param_1[0xd0];
                FUN_00428b20();
                pfVar11 = local_80;
              }
              if (1 < (int)pfVar11) {
                FUN_006eef60();
                local_54 = *pfVar9 - local_74;
                local_50 = (float)param_1[0xd0] - (float)local_78;
                FUN_00428b20();
              }
            }
          }
          else if (0x29 < iVar10) {
            param_1[0x2d9] = 4;
          }
        }
      }
      cVar4 = FUN_0040b030();
      goto LAB_0045b780;
    }
    if (((param_1[0x5b] & 0x10000000U) == 0) && (param_1[0xef] != 0)) {
      iVar10 = FUN_00447770();
      fVar20 = (float)param_1[0xe0] + DAT_00baa904;
      if (*(float *)(iVar10 + 0x380) <= fVar20 && fVar20 != *(float *)(iVar10 + 0x380)) {
        param_1[0xe0] = (int)((float)param_1[0xe0] - (float)DAT_00baa454);
      }
    }
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa3a4);
    iVar10 = DAT_00c71678;
    fVar20 = DAT_00baa868;
    if (*(char *)(param_1 + 0x52) != '\0') {
      fVar20 = DAT_00baade4;
    }
    param_1[0xd8] = (int)fVar20;
    if ((*(int *)(iVar10 + 0x269c8) == 1) || (*(int *)(iVar10 + 0x269c8) == 3)) {
      param_1[0xd8] = (int)(fVar20 * DAT_00baa4c0);
    }
    if (param_1[0x2d9] == 0) {
      param_1[0x62] = 4;
      param_1[0x61] = 2;
      param_1[0x2d9] = 4;
      FUN_0040a380();
      param_1[0x2f1] = 0;
      goto LAB_0045b812;
    }
    cVar4 = FUN_00417430();
    if (cVar4 != '\0') {
      FUN_007e6300();
    }
    cVar4 = FUN_00417430();
    fVar20 = DAT_00baaa94;
    if (cVar4 != '\0') {
      iVar10 = FUN_006be840();
      local_50 = (float)((uint)(*(float *)(iVar10 + 0x340) - (float)param_1[0xd0]) ^ DAT_00bacb70);
      local_54 = (float)((uint)(*(float *)(iVar10 + 0x33c) - *pfVar9) ^ DAT_00bacb70);
      FUN_00435a50();
      pfVar11 = (float *)FUN_00a10100();
      fVar20 = DAT_00baaa94;
      fVar19 = (float)param_1[0xdb];
      if (NAN(fVar19) == (fVar19 == 0.0)) {
        fVar21 = pfVar11[1];
        param_1[0xd8] = (int)(((float)param_1[0xe7] * *pfVar11) / fVar19 + (float)param_1[0xd8]);
        param_1[0xd9] = (int)((fVar21 * (float)param_1[0xe7]) / fVar19 + (float)param_1[0xd9]);
      }
    }
    iVar10 = *(int *)(DAT_00c71678 + 0x18300);
    local_74 = *(float *)(iVar10 + 0x18);
    fVar19 = *(float *)(iVar10 + 0x14);
    local_78 = *(int **)(iVar10 + 0x20);
    if (param_1[0x2d9] != 4) goto LAB_0045b7cd;
    fVar21 = *(float *)(iVar10 + 0x1c) + fVar20;
    local_65 = '\0';
    if ((float)param_1[0xd8] <= 0.0) {
      fVar22 = (float)param_1[0xcf];
LAB_0045b17e:
      if (((float)param_1[0xd8] < 0.0) && (fVar22 < fVar19 - fVar20)) {
        *pfVar9 = fVar21;
        fVar22 = fVar21;
        goto LAB_0045b19c;
      }
    }
    else {
      fVar22 = *pfVar9;
      if (fVar22 <= fVar21) goto LAB_0045b17e;
      *pfVar9 = fVar19 - fVar20;
      fVar22 = fVar19 - fVar20;
LAB_0045b19c:
      local_65 = '\x01';
    }
    if (fVar22 <= fVar21) {
      if (fVar22 < fVar19 - fVar20) {
        *pfVar9 = fVar21;
        goto LAB_0045b1bc;
      }
    }
    else {
      param_1[0xcf] = (int)(fVar19 - fVar20);
LAB_0045b1bc:
      local_65 = '\x01';
    }
    iVar10 = FUN_009b9380();
    if (((iVar10 != 0) &&
        ((float)((uint)(*pfVar9 - *(float *)(iVar10 + 0x33c)) & DAT_00bacb40) < DAT_00baaa44)) &&
       (param_1[0x2f1] != 1)) {
      param_1[0x2f1] = 1;
      local_6c = (float *)0x3a3;
      FUN_00956780();
      FUN_0092dc30();
    }
    fVar20 = local_74;
    if (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1bb0) == 0x37) {
      fVar20 = DAT_00baab14;
    }
    fVar20 = ((float)local_78 - fVar20) * DAT_00baa1f8;
    if (local_65 != '\0') {
      fVar21 = (float)local_78 - DAT_00baa904;
      param_1[0x2f1] = 0;
      fVar19 = fVar20 + (float)param_1[0xd0];
      param_1[0xd0] = (int)fVar19;
      if (fVar21 < fVar19) {
        param_1[0xd0] = (int)(fVar19 - fVar20 * DAT_00baa6fc);
      }
    }
  }
LAB_0045b7cd:
  if ((*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x1bb0) == 0x37) &&
     ((float)param_1[0xd0] < DAT_00baab14)) {
    param_1[0xd9] =
         (int)(((DAT_00baab14 - (float)param_1[0xd0]) - (float)param_1[0xd9]) * (float)DAT_00baa2d0
              + (float)param_1[0xd9]);
  }
LAB_0045b812:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

