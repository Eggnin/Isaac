/* Local J460 decompiler output.
 * VA: 0x00461fc0
 * Entry: 00461fc0
 * Dispatcher: 0x006c2990
 * Types: 97
 * Identities: 97.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00463100; instructions=998
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=97; identities=97.0.0; dispatcher=0x006c2990;
   end=0x00463100; instructions=998 */

void __fastcall AI_00461fc0(int **param_1)

{
  char *pcVar1;
  bool bVar2;
  bool bVar3;
  undefined *puVar4;
  char cVar5;
  uint uVar6;
  undefined4 uVar7;
  uint uVar8;
  int iVar9;
  undefined4 *****pppppuVar10;
  int **ppiVar11;
  float *pfVar12;
  undefined **ppuVar13;
  char *pcVar14;
  int iVar15;
  int iVar16;
  int *piVar17;
  int **ppiVar18;
  int iVar19;
  float fVar20;
  int *piVar21;
  undefined auVar22 [16];
  float fVar23;
  float fVar24;
  undefined8 uVar25;
  undefined4 uVar26;
  TypeDescriptor *pTVar27;
  TypeDescriptor *pTVar28;
  undefined4 uVar29;
  undefined local_a8 [4];
  int local_a4;
  char local_a0 [4];
  int local_9c;
  int *local_98;
  int *local_94;
  float local_90;
  undefined local_8c [4];
  int **local_88;
  float local_84;
  int **local_80;
  float local_7c;
  float local_78;
  char local_71;
  float local_70;
  int **local_6c;
  int **local_68;
  undefined4 *****local_64 [4];
  undefined4 local_54;
  uint local_50;
  float local_44 [8];
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af26f8;
  local_1c = ExceptionList;
  uVar6 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  ppiVar18 = (int **)0x0;
  if (param_1[0x3c7] != (int *)0xffffffff) {
    ppiVar18 = param_1;
  }
  local_68 = ppiVar18;
  if ((ppiVar18 == (int **)0x0) &&
     ((((local_68 = (int **)param_1[0xef], local_68 == (int **)0x0 ||
        (((*(int *)(DAT_00c71678 + 0x26614) < 2 || (local_68[10] != (int *)0x1)) &&
         (0x3dd < (int)local_68[10] - 10U)))) || (local_68[0x3c7] == (int *)0xffffffff)) &&
      ((ppiVar11 = (int **)param_1[0x2fb], local_68 = ppiVar18, ppiVar11 != (int **)0x0 &&
       ((((1 < *(int *)(DAT_00c71678 + 0x26614) && (ppiVar11[10] == (int *)0x1)) ||
         ((int)ppiVar11[10] - 10U < 0x3de)) && (ppiVar11[0x3c7] != (int *)0xffffffff)))))))) {
    local_68 = ppiVar11;
  }
  local_88 = param_1;
  local_24 = uVar6;
  if (param_1[0x2d9] != (int *)0x0) {
    puVar4 = &stack0xfffffffc;
    if (param_1[0xb] == (int *)0x1) {
      ppiVar18 = param_1 + 0x2fb;
      puVar4 = &stack0xfffffffc;
      if (param_1[0x2fb] == (int *)0x0) {
LAB_00462435:
        puStack_20 = puVar4;
        param_1[0x5a] = (int *)((uint)param_1[0x5a] & 0xfffffffe);
        param_1[0x5b] = param_1[0x5b];
        param_1[0x2d9] = (int *)0x9;
        puVar4 = puStack_20;
        goto LAB_00462452;
      }
      puVar4 = &stack0xfffffffc;
      if (param_1[0xef] == (int *)0x0) {
        param_1[0xef] = param_1[0x2fb];
        FUN_004cdcf0(param_1 + 0xef);
        local_80 = (int **)((int)*ppiVar18 + 0x3c0);
        if (*local_80 != (int *)0x0) {
          local_6c = local_80;
          FUN_004cf210(&local_6c);
        }
        *local_80 = (int *)param_1;
        FUN_004cdcf0(local_80);
        if (*ppiVar18 != (int *)0x0) {
          local_6c = ppiVar18;
          FUN_004cf210(&local_6c);
        }
        *ppiVar18 = (int *)0x0;
        puVar4 = puStack_20;
        goto LAB_00462435;
      }
    }
    else {
LAB_00462452:
      puStack_20 = puVar4;
      puVar4 = puStack_20;
      if (param_1[0xef] == (int *)0x0) {
        if (param_1[10] == (int *)0x61) {
          if (*(char *)(param_1 + 0xec) != '\0') {
            param_1[0x5a] = (int *)((uint)param_1[0x5a] & 0xfffffffe);
            *(undefined *)(param_1 + 0xec) = 0;
            param_1[0x5b] = param_1[0x5b];
            local_7c = 1.336839e-42;
            FUN_00956780();
            FUN_0092dc30(local_7c,0x3f800000,2,0,0x3f800000,0);
          }
          param_1[0x2d9] = (int *)0x9;
          puVar4 = puStack_20;
        }
        else {
          uVar25 = FUN_00435c70(uVar6);
          (*(code *)((ulonglong)uVar25 >> 0x20))((int)uVar25);
          puVar4 = puStack_20;
        }
      }
    }
    puStack_20 = puVar4;
    uVar6 = DAT_00bacb40;
    if (((param_1[10] == (int *)0x61) && (param_1[0x2d9] != (int *)0x9)) &&
       ((param_1[0xef] != (int *)0x0 &&
        (piVar17 = (int *)param_1[0xef][0xe0],
        (NAN((float)param_1[0x2ee]) || NAN((float)piVar17)) ==
        ((float)param_1[0x2ee] == (float)piVar17))))) {
      param_1[0x2ee] = piVar17;
      uVar8 = FUN_006eef60();
      iVar9 = DAT_00c71678;
      uVar6 = DAT_00bacb40;
      if (((uVar8 & 1) == 0) && (local_68 == (int **)0x0)) {
        param_1[0xcd] = DAT_00c7b640;
        param_1[0xce] = DAT_00c7b644;
        iVar9 = *(int *)(iVar9 + 0x18300);
        iVar15 = FUN_00812de0(param_1 + 0xcf);
        iVar9 = *(int *)(iVar9 + 0xc);
        local_70 = (float)(iVar15 % iVar9) * DAT_00baa904 + DAT_00baa904;
        local_78 = (float)(iVar15 / iVar9) * DAT_00baa904 + DAT_00baaa00;
        iVar9 = FUN_006be840();
        local_7c = *(float *)(iVar9 + 0x33c);
        local_90 = *(float *)(iVar9 + 0x340);
        iVar9 = FUN_006be840();
        local_6c = *(int ***)(iVar9 + 0x360);
        local_80 = *(int ***)(iVar9 + 0x364);
        iVar9 = FUN_006eef60();
        uVar6 = DAT_00bacb40;
        fVar20 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa85c;
        fVar23 = local_78 - (fVar20 * (float)local_80 + local_90);
        fVar20 = local_70 - (fVar20 * (float)local_6c + local_7c);
        if ((float)((uint)fVar20 & DAT_00bacb40) <= (float)((uint)fVar23 & DAT_00bacb40)) {
          if (0.0 <= fVar23) {
            param_1[0xce] = (int *)&DAT_bf800000;
          }
          else {
            param_1[0xce] = (int *)0x3f800000;
          }
        }
        else if (0.0 <= fVar20) {
          param_1[0xcd] = DAT_00baad50;
        }
        else {
          param_1[0xcd] = DAT_00baa454;
        }
        param_1[0xcd] = (int *)((float)param_1[0xcd] * DAT_00baa554);
        param_1[0xce] = (int *)((float)param_1[0xce] * DAT_00baa554);
        param_1[0x2f0] = (int *)0x2;
      }
    }
    local_54 = 0;
    local_50 = 0xf;
    local_64[0] = (undefined4 *****)0x0;
    local_14 = 2;
    ppuVar13 = &PTR_DAT_00c5c2d0;
    if (param_1[10] == (int *)0x61) {
      ppuVar13 = &PTR_s_AngryMaskLeft_00c5c2c0;
      if (param_1[0x2d9] != (int *)0x9) {
        ppuVar13 = &PTR_s_SadMaskLeft_00c5c2b0;
      }
    }
    else if ((param_1[0xb] == (int *)0x1) &&
            (ppuVar13 = &PTR_s_AngryMaskLeft_00c5c2c0, param_1[0x2d9] != (int *)0x9)) {
      ppuVar13 = &PTR_DAT_00c5c2d0;
    }
    if ((float)((uint)param_1[0x2ec] & uVar6) <= (float)((uint)param_1[0x2ed] & uVar6)) {
      iVar9 = (uint)(0.0 <= (float)param_1[0x2ed]) * 8 + 4;
    }
    else {
      iVar9 = 8;
      if ((float)param_1[0x2ec] < 0.0) {
        iVar9 = 0;
      }
    }
    pcVar1 = *(char **)(iVar9 + (int)ppuVar13);
    pcVar14 = pcVar1;
    do {
      cVar5 = *pcVar14;
      pcVar14 = pcVar14 + 1;
    } while (cVar5 != '\0');
    FUN_0040ccd0(pcVar1,(int)pcVar14 - (int)(pcVar1 + 1));
    pppppuVar10 = local_64;
    if (0xf < local_50) {
      pppppuVar10 = local_64[0];
    }
    cVar5 = FUN_0040a5d0(pppppuVar10,1);
    if (((cVar5 != '\0') && (param_1[0x1f] != (int *)0x0)) &&
       (FUN_00408e00(), param_1[0x1f] != (int *)0x0)) {
      *(undefined *)(param_1 + 0x23) = 0;
    }
    ppiVar18 = local_88;
    iVar9 = DAT_00c71678;
    piVar17 = param_1[0x2ec];
    param_1[0x2ec] = (int *)((float)piVar17 + (float)param_1[0xd8]);
    piVar21 = (int *)(((float)param_1[0xd9] + (float)param_1[0x2ed]) * DAT_00baa244);
    param_1[0x2ec] = (int *)((float)(int *)((float)piVar17 + (float)param_1[0xd8]) * DAT_00baa244);
    param_1[0x2ed] = piVar21;
    local_70 = *(float *)(iVar9 + 0x18300);
    local_6c = *(int ***)((int)local_70 + 0xc);
    iVar15 = (int)(((float)param_1[0xcf] - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
    iVar9 = 0;
    if (0 < iVar15) {
      iVar9 = iVar15;
    }
    iVar15 = *(int *)((int)local_70 + 0x10) + -1;
    iVar16 = (int)(((float)param_1[0xd0] - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
    iVar19 = 0;
    if (0 < iVar16) {
      iVar19 = iVar16;
    }
    if (iVar19 < iVar15) {
      iVar15 = iVar19;
    }
    iVar19 = (int)local_6c + -1;
    if (iVar9 < (int)local_6c + -1) {
      iVar19 = iVar9;
    }
    iVar19 = iVar15 * (int)local_6c + iVar19;
    local_90 = (float)(iVar19 % (int)local_6c) * DAT_00baa904 + DAT_00baa904;
    local_7c = (float)(iVar19 / (int)local_6c) * DAT_00baa904 + DAT_00baaa00;
    if (((local_88[0x2f0] == (int *)0x0) || (local_88[0x2f0] == (int *)0x2)) &&
       (((uint)local_88[0x5a] & 0x1000a00) == 0)) {
      if ((((uint)local_88[0x5b] & 0x10000000) == 0) ||
         (local_71 = '\0', (*(byte *)(*(int *)((int)local_70 + 4) + 0x44) & 1) == 0)) {
        local_71 = '\x01';
      }
      if (local_68 == (int **)0x0) {
        cVar5 = FUN_006ac710(4,local_88[8]);
        if ((cVar5 != '\0') && (local_71 != '\0')) {
          iVar9 = FUN_006be840();
          local_80 = *(int ***)(iVar9 + 0x33c);
          local_78 = *(float *)(iVar9 + 0x340);
          iVar9 = FUN_006be840();
          local_6c = *(int ***)(iVar9 + 0x360);
          local_70 = *(float *)(iVar9 + 0x364);
          iVar9 = FUN_006eef60();
          fVar20 = (float)((double)iVar9 + (double)(&DAT_00bacb00)[-(iVar9 >> 0x1f)]) * DAT_00ba9ff4
                   * DAT_00baa85c;
          local_70 = local_7c - (fVar20 * local_70 + local_78);
          local_84 = local_90 - (fVar20 * (float)local_6c + (float)local_80);
          if (((float)((uint)local_84 & DAT_00bacb40) < DAT_00baa87c) ||
             ((float)((uint)local_70 & DAT_00bacb40) < DAT_00baa87c)) {
            local_94 = (int *)(local_70 * local_70 + local_84 * local_84);
            FUN_00435a50();
            if ((float)local_94 < DAT_00baaa94) {
              auVar22 = ZEXT416(DAT_00baa454);
              if (0.0 < (float)local_94) {
                fVar24 = 0.0;
                local_a4 = *(int *)(DAT_00c71678 + 0x18300);
                local_78 = *(float *)(local_a4 + 0xc);
                local_6c = *(int ***)(local_a4 + 0x10);
                local_84 = (local_84 / (float)local_94) * DAT_00baa81c;
                local_70 = (local_70 / (float)local_94) * DAT_00baa81c;
                fVar20 = local_90;
                fVar23 = local_7c;
                do {
                  fVar20 = fVar20 - local_84;
                  uVar6 = 0;
                  local_80 = (int **)((int)local_78 + -1);
                  local_44[0] = _DAT_00baca70;
                  local_44[1] = (float)_UNK_00baca74;
                  local_44[2] = (float)_UNK_00baca78;
                  local_44[3] = (float)_UNK_00baca7c;
                  fVar23 = fVar23 - local_70;
                  local_44[4] = (float)_DAT_00bacbd0;
                  local_44[5] = (float)_UNK_00bacbd4;
                  local_44[6] = (float)_UNK_00bacbd8;
                  local_44[7] = (float)_UNK_00bacbdc;
                  do {
                    ppiVar11 = (int **)(int)(((fVar20 + local_44[uVar6 * 2]) - DAT_00baa904) /
                                             DAT_00baa904 + DAT_00baa2d0);
                    ppiVar18 = (int **)0x0;
                    if (0 < (int)ppiVar11) {
                      ppiVar18 = ppiVar11;
                    }
                    ppiVar11 = local_80;
                    if ((int)ppiVar18 < (int)local_80) {
                      ppiVar11 = ppiVar18;
                    }
                    iVar15 = (int)(((fVar23 + local_44[uVar6 * 2 + 1]) - DAT_00baaa00) /
                                   DAT_00baa904 + DAT_00baa2d0);
                    iVar9 = 0;
                    if (0 < iVar15) {
                      iVar9 = iVar15;
                    }
                    iVar15 = (int)local_6c + -1;
                    if (iVar9 < (int)local_6c + -1) {
                      iVar15 = iVar9;
                    }
                    ppiVar11 = (int **)(iVar15 * (int)local_78 + (int)ppiVar11);
                    if ((ppiVar11 < (int **)0x1c0) &&
                       (iVar9 = *(int *)(local_a4 + 0x76c + (int)ppiVar11 * 4), iVar9 != 0x3de)) {
                      if (iVar9 < 1000) {
                        if (0 < iVar9) {
                          auVar22._0_4_ = auVar22._0_4_ - DAT_00baa1f8;
                        }
                      }
                      else {
                        auVar22 = ZEXT416(DAT_00baad50);
                      }
                    }
                    uVar6 = uVar6 + 1;
                  } while (uVar6 < 4);
                  fVar24 = fVar24 + DAT_00baa81c;
                } while (fVar24 < (float)local_94);
                ppiVar18 = local_88;
                if (auVar22._0_4_ <= DAT_00ba9fe4) goto LAB_00462f23;
              }
              cVar5 = FUN_00417430(0x1000a00,0);
              if (cVar5 == '\0') {
                fVar20 = (float)((uint)local_84 & DAT_00bacb40);
                ppiVar18[0xcd] = DAT_00c7b640;
                ppiVar18[0xce] = DAT_00c7b644;
                if (fVar20 <= (float)((uint)local_70 & DAT_00bacb40)) {
                  if (0.0 <= local_70) {
                    ppiVar18[0xce] = (int *)&DAT_bf800000;
                  }
                  else {
                    ppiVar18[0xce] = (int *)0x3f800000;
                  }
                }
                else if (0.0 <= local_84) {
                  ppiVar18[0xcd] = DAT_00baad50;
                }
                else {
                  ppiVar18[0xcd] = DAT_00baa454;
                }
                local_88 = (int **)0x3bb;
                ppiVar18[0xcd] = (int *)((float)ppiVar18[0xcd] + (float)ppiVar18[0xcd]);
                ppiVar18[0xce] = (int *)((float)ppiVar18[0xce] + (float)ppiVar18[0xce]);
                ppiVar18[0x2f0] = (int *)0x1;
                FUN_00956780();
                FUN_0092dc30(local_88,0x3f800000,2,0,0x3f800000,0);
              }
            }
          }
        }
        goto LAB_00462f23;
      }
      local_88[0xcd] = DAT_00c7b640;
      local_88[0xce] = DAT_00c7b644;
      if ((local_68[0x3c7] == (int *)0xffffffff) ||
         (cVar5 = FUN_00956110(9,local_68[0x3c7],local_68,local_68), cVar5 == '\0'))
      goto LAB_00462f23;
      if (local_68 == ppiVar18) {
        ppiVar11 = (int **)FUN_006d82d0(local_a8);
      }
      else {
        ppiVar11 = (int **)FUN_006d85a0(local_8c);
      }
      local_98 = *ppiVar11;
      local_94 = ppiVar11[1];
      if (((NAN((float)local_98) || NAN((float)DAT_00c7b640)) !=
           ((float)local_98 == (float)DAT_00c7b640)) &&
         ((NAN((float)local_94) || NAN((float)DAT_00c7b644)) !=
          ((float)local_94 == (float)DAT_00c7b644))) {
        local_98 = ppiVar18[0xd8];
        local_94 = ppiVar18[0xd9];
      }
      if (((NAN((float)local_98) || NAN((float)DAT_00c7b640)) !=
           ((float)local_98 == (float)DAT_00c7b640)) &&
         ((NAN((float)local_94) || NAN((float)DAT_00c7b644)) !=
          ((float)local_94 == (float)DAT_00c7b644))) goto LAB_00462f23;
      pfVar12 = (float *)FUN_0067f170();
      fVar20 = pfVar12[1];
      ppiVar18[0xcd] = (int *)(*pfVar12 + *pfVar12);
      ppiVar18[0xce] = (int *)(fVar20 + fVar20);
      ppiVar18[0x2f0] = (int *)0x1;
LAB_00462a51:
      if ((*(char *)(ppiVar18 + 100) == '\0') && (((uint)ppiVar18[0x5a] & 0x1000a00) == 0)) {
        piVar17 = (int *)((float)ppiVar18[0xdb] * _DAT_00baa3b8);
        bVar2 = NAN(DAT_00ba9fe4);
        bVar3 = (float)piVar17 == DAT_00ba9fe4;
        ppiVar18[0xdb] = piVar17;
        if ((NAN((float)piVar17) || bVar2) == bVar3) {
          ppiVar18[0xd8] =
               (int *)(((float)ppiVar18[0xe7] * (float)ppiVar18[0xcd]) / (float)piVar17 +
                      (float)ppiVar18[0xd8]);
          ppiVar18[0xd9] =
               (int *)(((float)ppiVar18[0xe7] * (float)ppiVar18[0xce]) / (float)piVar17 +
                      (float)ppiVar18[0xd9]);
        }
        fVar20 = (float)ppiVar18[0xcd] * DAT_00baa6fc;
        ppiVar18[0x2ed] = (int *)((float)ppiVar18[0xce] * DAT_00baa6fc + (float)ppiVar18[0x2ed]);
        ppiVar18[0x2ec] = (int *)(fVar20 + (float)ppiVar18[0x2ec]);
        if ((float)((uint)local_90 & DAT_00bacb40) <= (float)((uint)local_7c & DAT_00bacb40)) {
          ppiVar18[0xcf] = (int *)(local_90 * DAT_00baa120 + (float)ppiVar18[0xcf] * DAT_00baa3e0);
        }
        else {
          ppiVar18[0xd0] = (int *)(local_7c * DAT_00baa120 + (float)ppiVar18[0xd0] * DAT_00baa3e0);
        }
      }
      else {
        ppiVar18[0x2f0] = (int *)0x0;
        ppiVar18[0x106] = DAT_00c7b640;
        ppiVar18[0x107] = DAT_00c7b644;
        ppiVar18[0x108] = DAT_00c7b640;
        ppiVar18[0x109] = DAT_00c7b644;
        ppiVar18[0xcd] = DAT_00c7b640;
        ppiVar18[0xce] = DAT_00c7b644;
      }
    }
    else {
LAB_00462f23:
      if (ppiVar18[0x2f0] != (int *)0x0) goto LAB_00462a51;
      piVar17 = ppiVar18[0x3c7];
      if (local_68 != (int **)0x0) {
        ppiVar18[0x3c7] = local_68[0x3c7];
        *(bool *)(ppiVar18 + 0x3cb) = local_68 != ppiVar18;
      }
      fVar20 = DAT_00baa3c4;
      if (ppiVar18[0x2d9] == (int *)0x9) {
        fVar20 = DAT_00baa528;
      }
      FUN_007e5340(fVar20,0);
      if (local_68 != (int **)0x0) {
        ppiVar18[0x3c7] = piVar17;
        *(undefined *)(ppiVar18 + 0x3cb) = 0;
      }
      fVar20 = DAT_00baa390;
      piVar17 = ppiVar18[0xe7];
      fVar23 = DAT_00baa3c4;
      if ((NAN((float)piVar17) || NAN((float)DAT_00baa454)) ==
          ((float)piVar17 == (float)DAT_00baa454)) {
        fVar23 = DAT_00baa3c4 / (((float)piVar17 + DAT_00baa3c4) - (float)piVar17 * DAT_00baa3c4);
      }
      bVar2 = NAN((float)DAT_00baa454);
      bVar3 = (float)piVar17 == (float)DAT_00baa454;
      ppiVar18[0xd8] = (int *)(fVar23 * (float)ppiVar18[0xd8]);
      if ((NAN((float)piVar17) || bVar2) == bVar3) {
        fVar20 = fVar20 / (((float)piVar17 + fVar20) - (float)piVar17 * fVar20);
      }
      ppiVar18[0xd9] = (int *)(fVar20 * (float)ppiVar18[0xd9]);
    }
    if (0xf < local_50) {
      uVar6 = local_50 + 1;
      pppppuVar10 = local_64[0];
      if (0xfff < uVar6) {
        pppppuVar10 = (undefined4 *****)local_64[0][-1];
        uVar6 = local_50 + 0x24;
        if (0x1f < (uint)((int)local_64[0] + (-4 - (int)pppppuVar10))) {
                    /* WARNING: Subroutine does not return */
          _invalid_parameter_noinfo_noreturn();
        }
      }
      FUN_00aef15c(pppppuVar10,uVar6);
    }
    goto LAB_004630d8;
  }
  puStack_20 = &stack0xfffffffc;
  if (((uint)param_1[0x5b] & 0x10000000) == 0) {
    puStack_20 = &stack0xfffffffc;
    AI_0041af60(local_a0,0x62,0xffffffff,0xffffffff,0,0);
    piVar17 = (int *)0x0;
    local_14 = 0;
    if (local_94 != (int *)0x0) {
      do {
        local_6c = (int **)__RTDynamicCast(*(undefined4 *)(local_9c + (int)piVar17 * 4),0,
                                           &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor,
                                           &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor,0)
        ;
        if ((local_6c != (int **)0x0) && (local_6c[0xf0] == (int *)0x0)) {
          local_6c[0xf0] = (int *)param_1;
          FUN_004cdcf0(local_6c + 0xf0);
          if (param_1[0xef] != (int *)0x0) {
            local_88 = param_1 + 0xef;
            FUN_004cf210(&local_88);
          }
          ppiVar18 = local_6c;
          param_1[0xef] = (int *)local_6c;
          FUN_004cdcf0(param_1 + 0xef);
          goto LAB_0046211e;
        }
        piVar17 = (int *)((int)piVar17 + 1);
      } while (piVar17 < local_94);
    }
    ppiVar18 = (int **)0x0;
LAB_0046211e:
    if (local_a0[0] == '\0') {
      local_14 = 1;
      FUN_00a648b0(0,0);
    }
    local_14 = 0xffffffff;
    if (ppiVar18 == (int **)0x0) goto LAB_0046215e;
  }
  else {
LAB_0046215e:
    local_14 = 0xffffffff;
    FUN_00813520(&local_98,param_1 + 0xcf,0x42200000,0,0,0);
    iVar9 = *(int *)(DAT_00c71678 + 0x18300);
    iVar19 = (int)(((float)local_98 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
    iVar15 = (int)(((float)local_94 - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
    if (((((-1 < iVar19) && (iVar19 < *(int *)(iVar9 + 0xc))) && (-1 < iVar15)) &&
        ((iVar15 < *(int *)(iVar9 + 0x10) &&
         (uVar6 = *(int *)(iVar9 + 0xc) * iVar15 + iVar19, uVar6 < 0x1c0)))) &&
       (*(int *)(iVar9 + 0x76c + uVar6 * 4) < 0x3b7)) {
      *(undefined4 *)(iVar9 + 0x76c + uVar6 * 4) = 900;
    }
    uVar7 = FUN_006eef60();
    uVar29 = 0;
    pTVar28 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
    pTVar27 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
    uVar26 = 0;
    uVar7 = FUN_00428b20(0x62,0,&local_98,&DAT_00c7b640,param_1,0,uVar7);
    ppiVar18 = (int **)__RTDynamicCast(uVar7,uVar26,pTVar27,pTVar28,uVar29);
    if (ppiVar18[0xf0] != (int *)0x0) {
      local_88 = ppiVar18 + 0xf0;
      FUN_004cf210(&local_88);
    }
    ppiVar18[0xf0] = (int *)param_1;
    FUN_004cdcf0(ppiVar18 + 0xf0);
    if (param_1[0xef] != (int *)0x0) {
      local_88 = param_1 + 0xef;
      FUN_004cf210(&local_88);
    }
    param_1[0xef] = (int *)ppiVar18;
    FUN_004cdcf0(param_1 + 0xef);
    if (((uint)param_1[0x5b] & 0x10000000) != 0) {
      ppiVar18[0xe0] = (int *)0x42480000;
      ppiVar18[0xe1] = (int *)0x42480000;
    }
  }
  param_1[0x2ee] = ppiVar18[0xe0];
  param_1[0x2f0] = (int *)0x0;
  param_1[0x106] = DAT_00c7b640;
  param_1[0x107] = DAT_00c7b644;
  param_1[0x108] = DAT_00c7b640;
  param_1[0x109] = DAT_00c7b644;
  param_1[0x5a] = (int *)((uint)param_1[0x5a] | 1);
  param_1[0x2d9] = (int *)&DAT_00000004;
  *(undefined *)(param_1 + 0xec) = 1;
  param_1[0x5b] = param_1[0x5b];
  param_1[0x2ec] = param_1[0xd8];
  param_1[0x2ed] = param_1[0xd9];
LAB_004630d8:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

