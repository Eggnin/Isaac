/* Local J460 decompiler output.
 * VA: 0x007069a0
 * Entry: 007069a0
 * Dispatcher: 0x006c2990
 * Types: 9
 * Identities: 9.*
 * Evidence: SMART branch calls
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=9; identities=9.*; SMART branch calls */

int * __fastcall
HELPER_HostileProjectileHoming
          (float *param_1_00,int *param_2_00,byte param_1,byte param_2,code *param_3)

{
  uint uVar1;
  float *pfVar2;
  char cVar3;
  int iVar4;
  int **ppiVar5;
  uint *puVar6;
  int **ppiVar7;
  uint uVar8;
  float fVar9;
  int iVar10;
  bool bVar11;
  float10 fVar12;
  float fVar13;
  float in_XMM1_Da;
  int *piVar14;
  float fVar15;
  float fVar16;
  int *piVar17;
  undefined local_9c [40];
  char local_74 [4];
  int local_70;
  uint local_68;
  int *local_64;
  char local_60 [4];
  int local_5c;
  int *local_54;
  float local_4c;
  uint local_48;
  char local_44 [4];
  int local_40;
  int *local_3c;
  float local_38;
  float *local_34;
  uint local_30;
  int *local_28;
  int *local_24;
  int *local_20;
  int *local_1c;
  int *local_18 [2];
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00afc49d;
  local_10 = ExceptionList;
  ExceptionList = &local_10;
  local_20 = (int *)(in_XMM1_Da * in_XMM1_Da);
  local_28 = (int *)0x0;
  local_54 = param_2_00;
  local_34 = param_1_00;
  if ((param_1 == 0) && (param_2 != 0)) {
    if (param_2_00 == (int *)0x0) goto LAB_00706a2d;
    cVar3 = FUN_006ac530(DAT_00bf93b4 ^ (uint)&stack0xfffffffc);
    if ((cVar3 != '\0') && ((int *)param_2_00[0x3ce] != (int *)0x0)) {
      ExceptionList = local_10;
      return (int *)param_2_00[0x3ce];
    }
LAB_00706a19:
    if ((param_2_00[10] != 0x3d) || (param_2_00[0xb] != 5)) goto LAB_00706a2d;
    bVar11 = true;
  }
  else {
    if (param_2_00 != (int *)0x0) goto LAB_00706a19;
LAB_00706a2d:
    bVar11 = false;
  }
  local_48 = 1;
  if (!bVar11) {
    local_48 = (uint)param_1;
  }
  local_38 = 0.0;
  if (!bVar11) {
    local_38 = (float)(uint)param_2;
  }
  ppiVar7 = (int **)(DAT_00c71678 + 0x1baa8);
  local_30 = 0;
  local_4c = DAT_00baa454;
  if (*(int *)(DAT_00c71678 + 0x1baac) - (int)*ppiVar7 >> 2 != 0) {
    do {
      piVar14 = ppiVar7[1];
      ppiVar5 = (int **)*ppiVar7;
      if ((int)piVar14 - (int)ppiVar5 >> 2 == 0) {
        FUN_00a112c0(0x10,"PlayerManager::GetPlayer() : There are no players! \n");
        piVar14 = ppiVar7[1];
        ppiVar5 = (int **)*ppiVar7;
      }
      if (local_30 < (uint)((int)piVar14 - (int)ppiVar5 >> 2)) {
        ppiVar5 = ppiVar5 + local_30;
      }
      piVar14 = *ppiVar5;
      if ((*(char *)((int)piVar14 + 0x20a9) == '\0') &&
         (((*(char *)((int)piVar14 + 0x172) == '\0' ||
           (((piVar14[0x4f0] != 0x1d && (piVar14[0x4f0] != 0x26)) ||
            (piVar17 = (int *)piVar14[0x79a], piVar17 == (int *)0x0)))) ||
          (((piVar17[0x587] == -1 || (piVar14[0x587] <= piVar17[0x587])) || (piVar17 == piVar14)))))
         ) {
        if ((param_2_00 != (int *)0x0) && ((param_2_00[0x5a] & 0x20000000U) != 0)) {
          FUN_00431310(piVar14);
          cVar3 = FUN_006acd10(local_9c);
          if (cVar3 != '\0') goto LAB_00706e2d;
        }
        piVar17 = piVar14;
        if ((char)local_48 == '\0') {
          local_24 = (int *)piVar14[0x514];
          if ((local_24 == (int *)0x0) && (local_24 = (int *)piVar14[0x513], local_24 == (int *)0x0)
             ) {
            if (piVar14[0x803] != 0) {
              piVar17 = (int *)FUN_006a8990();
            }
            goto LAB_00706b84;
          }
LAB_00706b88:
          piVar17 = local_24;
          if (local_24[10] != 1) goto LAB_00706b92;
        }
        else {
LAB_00706b84:
          local_24 = piVar17;
          if (local_24 != (int *)0x0) goto LAB_00706b88;
LAB_00706b92:
          piVar17 = (int *)0x0;
        }
        if ((((param_2_00 == (int *)0x0) || (param_2_00[10] != 0x362)) ||
            (iVar10 = piVar14[0x4f0], iVar10 == 0x13)) || ((iVar10 == 0x25 || (iVar10 == 0x27)))) {
          if ((local_24[10] == 3) && (local_24[0xb] == 0x3e)) {
            piVar17 = (int *)local_24[0x104];
          }
          if ((piVar17 == (int *)0x0) || (cVar3 = FUN_007c32c0(), cVar3 == '\0')) {
            pfVar2 = local_34;
            if (param_3 == (code *)0x0) {
              local_1c = (int *)(((float)local_24[0xd0] - local_34[1]) *
                                 ((float)local_24[0xd0] - local_34[1]) +
                                ((float)local_24[0xcf] - *local_34) *
                                ((float)local_24[0xcf] - *local_34));
            }
            else {
              fVar12 = (float10)(*param_3)(local_34,param_2_00,local_24);
              local_1c = (int *)(float)fVar12;
              local_18[0] = local_1c;
            }
            piVar14 = local_1c;
            if (piVar17 != (int *)0x0) {
              cVar3 = FUN_007c3100(0,0,0);
              if (cVar3 == '\0') {
                if ((((*(char *)(piVar17 + 0x104) == '\0') || (0 < piVar17[0x105])) &&
                    (param_2_00 != (int *)0x0)) && (param_2_00[10] == 0x322)) {
                  local_1c = (int *)((float)local_1c + DAT_00baabb0);
                }
                else {
                  iVar10 = piVar17[0x79a];
                  if (iVar10 != 0) {
                    fVar9 = *(float *)(iVar10 + 0x33c) - (float)piVar17[0xcf];
                    fVar16 = *(float *)(iVar10 + 0x340) - (float)piVar17[0xd0];
                    if ((((float)piVar17[0xd9] + *(float *)(iVar10 + 0x364)) * fVar16 +
                         ((float)piVar17[0xd8] + *(float *)(iVar10 + 0x360)) * fVar9 < 0.0) &&
                       (fVar16 * fVar16 + fVar9 * fVar9 < DAT_00baac34)) {
                      if (param_3 == (code *)0x0) {
                        fVar9 = *(float *)(iVar10 + 0x33c) - *pfVar2;
                        fVar16 = *(float *)(iVar10 + 0x340) - pfVar2[1];
                        local_1c = (int *)(fVar16 * fVar16 + fVar9 * fVar9 + DAT_00baa454);
                      }
                      else {
                        fVar12 = (float10)(*param_3)(pfVar2,param_2_00,iVar10);
                        local_18[0] = (int *)(float)fVar12;
                        local_1c = (int *)((float)local_18[0] + DAT_00baa454);
                      }
                    }
                  }
                }
              }
              else {
                local_1c = (int *)((float)local_1c + DAT_00baab54);
              }
              piVar14 = local_1c;
              if (bVar11) {
                local_18[0] = piVar17 + 0x562;
                iVar10 = 0;
                uVar8 = 0;
                do {
                  iVar4 = FUN_0072fd10(local_18[0][-2]);
                  if ((iVar4 != 0) && (iVar4 = FUN_00791320(uVar8), 0 < iVar4)) {
                    iVar4 = FUN_00791530(uVar8);
                    if (iVar4 == 1) {
                      iVar10 = iVar10 + 1;
                    }
                    else {
                      iVar10 = iVar10 + *local_18[0];
                    }
                  }
                  uVar8 = uVar8 + 1;
                  local_18[0] = local_18[0] + 8;
                } while (uVar8 < 4);
                local_64 = (int *)0x0;
                local_18[0] = (int *)(DAT_00baac34 - (float)iVar10 * DAT_00baabe8);
                ppiVar7 = local_18;
                if ((float)local_18[0] <= DAT_00ba9fe4) {
                  ppiVar7 = &local_64;
                }
                piVar14 = (int *)((float)local_1c * DAT_00baa020 + (float)*ppiVar7);
                param_2_00 = local_54;
              }
            }
            if ((float)piVar14 < (float)local_20) {
              local_28 = local_24;
              local_20 = piVar14;
            }
          }
        }
      }
LAB_00706e2d:
      ppiVar7 = (int **)(DAT_00c71678 + 0x1baa8);
      local_30 = local_30 + 1;
      param_1_00 = local_34;
    } while (local_30 < (uint)(*(int *)(DAT_00c71678 + 0x1baac) - (int)*ppiVar7 >> 2));
  }
  if ((char)local_48 == '\0') {
    if (SUB41(local_38,0) != '\0') {
      AI_0041af60(local_44,3,0x43,0xffffffff,1,0);
      local_8 = 0;
      fVar9 = 0.0;
      fVar16 = local_38;
      if (local_38 != 0.0) {
        do {
          if (param_3 == (code *)0x0) {
            iVar10 = *(int *)(local_40 + (int)fVar9 * 4);
            fVar15 = *(float *)(iVar10 + 0x340) - param_1_00[1];
            fVar13 = *(float *)(iVar10 + 0x33c) - *param_1_00;
            piVar14 = (int *)(fVar15 * fVar15 + fVar13 * fVar13);
          }
          else {
            fVar12 = (float10)(*param_3)(param_1_00,param_2_00,
                                         *(undefined4 *)(local_40 + (int)fVar9 * 4));
            piVar14 = (int *)(float)fVar12;
            fVar16 = local_38;
          }
          if ((float)piVar14 < (float)local_20) {
            local_28 = *(int **)(local_40 + (int)fVar9 * 4);
            local_20 = piVar14;
          }
          fVar9 = (float)((int)fVar9 + 1);
        } while ((uint)fVar9 < (uint)fVar16);
      }
      local_8 = 0xffffffff;
      if (local_44[0] == '\0') {
        if (DAT_00c7de78 == 0) {
          puVar6 = &DAT_00c7f618;
        }
        else {
          puVar6 = (uint *)(DAT_00c7de78 + 0x30);
        }
        if (local_40 != 0) {
          uVar1 = *(uint *)(local_40 + -4);
          uVar8 = *puVar6;
          *puVar6 = *puVar6 - uVar1;
          puVar6[1] = puVar6[1] - (uint)(uVar8 < uVar1);
          free((void *)(local_40 + -4));
        }
        local_8 = 0xffffffff;
      }
    }
    if ((*(byte *)(*(int *)(DAT_00c71678 + 0x18300) + 0x12d8) & 1) != 0) {
      FUN_0041a790(local_60,param_1_00,8);
      local_8 = 2;
      _param_1 = (int *)0x0;
      if (local_54 != (int *)0x0) {
        do {
          piVar14 = *(int **)(local_5c + (int)_param_1 * 4);
          if ((piVar14[10] == 1) && (cVar3 = FUN_00417430(0x20000000,0), cVar3 != '\0')) {
            FUN_00431310(piVar14);
            cVar3 = FUN_006acd10(local_9c);
            if (cVar3 == '\0') goto LAB_00706ff8;
          }
          else {
LAB_00706ff8:
            if ((((*(char *)((int)piVar14 + 0x173) == '\0') && ((piVar14[0x5b] & 0x100000U) != 0))
                && (param_2_00 != (int *)0x0)) &&
               (cVar3 = (**(code **)(*param_2_00 + 0x50))(piVar14), cVar3 != '\0')) {
              if (param_3 == (code *)0x0) {
                fVar16 = ((float)piVar14[0xd0] - param_1_00[1]) *
                         ((float)piVar14[0xd0] - param_1_00[1]) +
                         ((float)piVar14[0xcf] - *param_1_00) * ((float)piVar14[0xcf] - *param_1_00)
                ;
              }
              else {
                fVar12 = (float10)(*param_3)(param_1_00,param_2_00,piVar14);
                fVar16 = (float)fVar12;
                local_38 = fVar16;
              }
              if ((float)(int *)(fVar16 * DAT_00baa008) < (float)local_20) {
                local_28 = piVar14;
                local_20 = (int *)(fVar16 * DAT_00baa008);
              }
            }
          }
          _param_1 = (int *)((int)_param_1 + 1);
        } while (_param_1 < local_54);
      }
      if (local_60[0] != '\0') {
        ExceptionList = local_10;
        return local_28;
      }
      if (DAT_00c7de78 == 0) {
        puVar6 = &DAT_00c7f618;
      }
      else {
        puVar6 = (uint *)(DAT_00c7de78 + 0x30);
      }
      if (local_5c == 0) {
        ExceptionList = local_10;
        return local_28;
      }
      uVar1 = *(uint *)(local_5c + -4);
      uVar8 = *puVar6;
      *puVar6 = *puVar6 - uVar1;
      puVar6[1] = puVar6[1] - (uint)(uVar8 < uVar1);
      goto LAB_00707347;
    }
  }
  if (param_2_00 == (int *)0x0) {
    ExceptionList = local_10;
    return local_28;
  }
  if (param_2_00[10] != 0x322) {
    ExceptionList = local_10;
    return local_28;
  }
  if (param_2_00[0xb] == 0) {
    local_4c = DAT_00baa2d0;
  }
  FUN_0041a790(local_74,param_1_00,8);
  local_8 = 4;
  _param_1 = (int *)0x0;
  if (local_68 != 0) {
    do {
      piVar14 = *(int **)(local_70 + (int)_param_1 * 4);
      if ((piVar14[10] == 1) && (cVar3 = FUN_00417430(0x20000000,0), cVar3 != '\0')) {
        FUN_00431310(piVar14);
        cVar3 = FUN_006acd10(local_9c);
        if (cVar3 == '\0') goto LAB_00707193;
      }
      else {
LAB_00707193:
        if ((((*(char *)((int)piVar14 + 0x173) == '\0') && (piVar14 != param_2_00)) &&
            (1 < *(int *)(DAT_00c71678 + 0x264f8) - piVar14[0xca])) &&
           (cVar3 = HELPER_Entity_DamageFilter(0), cVar3 != '\0')) {
          if ((*(int *)(DAT_00c71678 + 0x26614) < 2) || (piVar14[10] != 1)) {
            iVar10 = piVar14[10];
            if (((iVar10 - 10U < 0x3de) && ((iVar10 != 0x21 && (iVar10 != 0x11)))) &&
               (iVar10 != 0x124)) {
              if (iVar10 == 0x375) {
                bVar11 = piVar14[0xb] == 10;
              }
              else {
                if ((iVar10 == 0x3c0) || (iVar10 == 0x3c5)) goto LAB_0070730d;
                bVar11 = iVar10 == 0xf5;
              }
              if (!bVar11) goto LAB_0070724f;
            }
          }
          else {
            iVar10 = 1;
LAB_0070724f:
            if ((*(char *)((int)piVar14 + 0x173) == '\0') &&
               (uVar8 = piVar14[0x5a], (uVar8 & 0x10) == 0)) {
              if (param_3 == (code *)0x0) {
                piVar17 = (int *)(((float)piVar14[0xd0] - param_1_00[1]) *
                                  ((float)piVar14[0xd0] - param_1_00[1]) +
                                 ((float)piVar14[0xcf] - *param_1_00) *
                                 ((float)piVar14[0xcf] - *param_1_00));
              }
              else {
                fVar12 = (float10)(*param_3)(param_1_00,param_2_00,piVar14);
                iVar10 = piVar14[10];
                uVar8 = piVar14[0x5a];
                piVar17 = (int *)(float)fVar12;
                local_3c = piVar17;
              }
              if (iVar10 == 0x325) {
                if ((uVar8 & 0x20000000) == 0) {
                  piVar17 = (int *)((float)piVar17 * DAT_00baa06c);
LAB_007072ee:
                  piVar17 = (int *)((float)piVar17 * local_4c);
                }
              }
              else {
                if (iVar10 == 0x322) {
                  piVar17 = (int *)((float)piVar17 + _DAT_00baac94);
                }
                if ((uVar8 & 0x20000000) == 0) goto LAB_007072ee;
              }
              if ((float)piVar17 < (float)local_20) {
                local_28 = piVar14;
                local_20 = piVar17;
              }
            }
          }
        }
      }
LAB_0070730d:
      _param_1 = (int *)((int)_param_1 + 1);
    } while (_param_1 < local_68);
  }
  if (local_74[0] != '\0') {
    ExceptionList = local_10;
    return local_28;
  }
  if (DAT_00c7de78 == 0) {
    puVar6 = &DAT_00c7f618;
  }
  else {
    puVar6 = (uint *)(DAT_00c7de78 + 0x30);
  }
  if (local_70 == 0) {
    ExceptionList = local_10;
    return local_28;
  }
  uVar1 = *(uint *)(local_70 + -4);
  uVar8 = *puVar6;
  *puVar6 = *puVar6 - uVar1;
  puVar6[1] = puVar6[1] - (uint)(uVar8 < uVar1);
  local_5c = local_70;
LAB_00707347:
  free((void *)(local_5c + -4));
  ExceptionList = local_10;
  return local_28;
}

