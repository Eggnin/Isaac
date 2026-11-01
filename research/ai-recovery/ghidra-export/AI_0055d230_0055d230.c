/* Local J460 decompiler output.
 * VA: 0x0055d230
 * Entry: 0055d230
 * Dispatcher: 0x006c2990
 * Types: 816
 * Identities: 816.0.0,816.1.0
 * Evidence: dispatcher=0x006c2990; end=0x0055fb60; instructions=2600
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=816; identities=816.0.0,816.1.0; dispatcher=0x006c2990;
   end=0x0055fb60; instructions=2600 */

void __fastcall AI_0055d230(int *param_1)

{
  byte bVar1;
  ushort uVar2;
  code *pcVar3;
  int iVar4;
  char cVar5;
  byte **ppbVar6;
  int ***pppiVar7;
  byte **ppbVar8;
  uint uVar9;
  int *piVar10;
  undefined4 uVar11;
  int iVar12;
  float *pfVar13;
  uint uVar14;
  byte *pbVar15;
  int iVar16;
  char *pcVar17;
  int extraout_EDX;
  int extraout_EDX_00;
  int iVar18;
  bool bVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  int **ppiVar23;
  int *piVar24;
  int **ppiVar25;
  undefined auStack_f4 [4];
  int **local_f0;
  float local_ec;
  char *local_e8;
  int *local_e4;
  float local_e0;
  char local_d9;
  int *local_d8;
  int **local_d4;
  float local_d0;
  float fStack_cc;
  int local_c8;
  int **local_c4;
  float fStack_c0;
  int **local_bc;
  int **local_b8;
  float fStack_b4;
  int local_b0;
  float fStack_ac;
  float fStack_a8;
  int **local_a4;
  int **local_a0;
  int iStack_9c;
  float fStack_98;
  float fStack_94;
  int aiStack_90 [8];
  undefined4 uStack_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  int local_64;
  int iStack_60;
  int iStack_5c;
  int iStack_58;
  undefined auStack_54 [12];
  undefined4 uStack_48;
  uint uStack_44;
  int *piStack_40;
  undefined4 uStack_3c;
  uint local_c;
  
  local_c = DAT_00bf93b4 ^ (uint)auStack_f4;
  pcVar17 = *(char **)(DAT_00c71678 + 0x18300);
  piVar24 = (int *)param_1[0x2fb];
  local_d9 = (param_1[0x5a] & 0x20000000U) != 0;
  local_b0 = param_1[0xb];
  local_e0 = (float)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  if ((0.0 < (float)param_1[5]) && (pfVar13 = (float *)param_1[2], pfVar13 != (float *)param_1[3]))
  {
    do {
      if ((((uint)pfVar13[2] & 4) != 0) &&
         ((pfVar13[4] != 1.401298e-45 && (pfVar13[6] != 1.401298e-45)))) {
        fVar22 = (float)param_1[5] - *pfVar13;
        if ((float)param_1[5] - *pfVar13 <= 0.0) {
          fVar22 = 0.0;
        }
        param_1[5] = (int)fVar22;
        *pfVar13 = 0.0;
        pfVar13[2] = 0.0;
        pfVar13[3] = 0.0;
      }
      pfVar13 = pfVar13 + 0xe;
    } while (pfVar13 != (float *)param_1[3]);
  }
  local_e8 = pcVar17;
  local_e4 = piVar24;
  if ((local_b0 == 1) && (param_1[0x300] == 0)) {
    local_c4 = (int **)0x0;
    FUN_0044bcc0(1,&local_c4);
  }
  iVar4 = _UNK_00babaec;
  iVar18 = _UNK_00babae8;
  iVar16 = _UNK_00babae4;
  iVar12 = _DAT_00babae0;
  local_c8 = param_1[0x2d9];
  piVar10 = piVar24;
  switch(local_c8) {
  case 0:
    param_1[0x2d9] = 3;
    uStack_70 = 0x3f4ccccd;
    uStack_6c = 0x3f4ccccd;
    uStack_68 = 0x3f4ccccd;
    if (param_1 + 0x79 != aiStack_90) {
      *(undefined8 *)(param_1 + 0x81) = 0x3f4ccccd3f4ccccd;
      param_1[0x79] = iVar12;
      param_1[0x7a] = iVar16;
      param_1[0x7b] = iVar18;
      param_1[0x7c] = iVar4;
      param_1[0x83] = 0x3f4ccccd;
      *(undefined (*) [16])(param_1 + 0x7d) = ZEXT816(0);
    }
    param_1[0x104] = 0;
    param_1[0x2f0] = 0;
    if (param_1[0xf2] == 0) {
      if ((*pcVar17 == '\0') || (*(int *)(DAT_00c71678 + 0x264f8) != *(int *)(pcVar17 + 0x11f0)))
      goto LAB_0055fb02;
      if (local_b0 == 1) {
        param_1[0x5a] = param_1[0x5a] & 0xfffffffb;
        param_1[0x5b] = param_1[0x5b];
        param_1[0x2d9] = 2;
        *(undefined *)((int)param_1 + 0x171) = 0;
        uVar14 = FUN_006eef60();
        param_1[0x62] = 0;
        param_1[0x104] = uVar14 % 0x1e + 0x1e;
        FUN_0040a6e0("SpecialAppear",0);
        FUN_00aef12b();
        return;
      }
      iVar12 = FUN_00812c90(param_1 + 0xcf);
      iVar16 = iVar12 / *(int *)(pcVar17 + 0xc);
      iVar12 = iVar12 % *(int *)(pcVar17 + 0xc);
      if (iVar16 < *(int *)(local_e8 + 0x10) + -1) {
        uVar11 = FUN_00812e60(iVar12,iVar16 + 1);
        cVar5 = FUN_0055d180(uVar11);
        if (cVar5 != '\0') goto LAB_0055d567;
      }
      if (0 < iVar16) {
        uVar11 = FUN_00812e60(iVar12,iVar16 + -1);
        cVar5 = FUN_0055d180(uVar11);
        if (cVar5 != '\0') goto LAB_0055d567;
      }
      if (0 < iVar12) {
        uVar11 = FUN_00812e60(iVar12 + -1,iVar16);
        cVar5 = FUN_0055d180(uVar11);
        if (cVar5 != '\0') goto LAB_0055d567;
      }
      if (iVar12 < *(int *)(local_e8 + 0xc) + -1) {
        uVar11 = FUN_00812e60(iVar12 + 1,iVar16);
        cVar5 = FUN_0055d180(uVar11);
        if (cVar5 != '\0') goto LAB_0055d567;
      }
      iVar12 = *(int *)(local_e8 + 0x10);
      iVar18 = 0;
      iVar16 = *(int *)(local_e8 + 0xc);
      if (0 < iVar12 * iVar16) {
        while (cVar5 = FUN_0055d180(iVar18), cVar5 == '\0') {
          iVar18 = iVar18 + 1;
          if (iVar12 * iVar16 <= iVar18) {
            FUN_00aef12b();
            return;
          }
        }
LAB_0055d567:
        param_1[0x5a] = param_1[0x5a] & 0xfffffffb;
        param_1[0x5b] = param_1[0x5b];
        param_1[0x2d9] = 0x10;
        *(undefined *)((int)param_1 + 0x171) = 0;
        uVar14 = FUN_006eef60();
        param_1[0x62] = 0;
        param_1[0x104] = uVar14 % 0x1e + 0x1e;
        FUN_00aef12b();
        return;
      }
    }
    else if (*(int *)(param_1[0xf2] + 0x28) == 5) {
      param_1[0x5a] = param_1[0x5a] & 0xfffffffb;
      param_1[0x5b] = param_1[0x5b];
      param_1[0x2d9] = 8;
      FUN_00aef12b();
      return;
    }
    goto LAB_0055fb02;
  case 1:
  case 5:
  case 6:
  case 7:
  case 0xb:
  case 0xc:
  case 0xe:
  case 0xf:
    if (local_c8 != 0x10) goto LAB_0055f02d;
    goto LAB_0055f8e3;
  case 2:
    if ((param_1[0x3c7] != -1) &&
       ((pfVar13 = (float *)FUN_006d82d0(&local_f0),
        (NAN(*pfVar13) || NAN(DAT_00c7b640)) == (*pfVar13 == DAT_00c7b640) ||
        ((NAN(pfVar13[1]) || NAN(DAT_00c7b644)) == (pfVar13[1] == DAT_00c7b644))))) {
      param_1[0x104] = 0;
    }
    if (param_1[0x104] < 1) {
      iVar12 = FUN_00703950(param_1 + 0xcf);
      fVar22 = (float)param_1[0xd0] - *(float *)(iVar12 + 0x340);
      fVar21 = (float)param_1[0xcf] - *(float *)(iVar12 + 0x33c);
      if (DAT_00baa9a0 < fVar22 * fVar22 + fVar21 * fVar21) {
        if (*(char *)((int)param_1 + 0x171) == '\0') {
          *(undefined *)((int)param_1 + 0x171) = 1;
          cVar5 = FUN_0040a5d0("SpecialAppear",1);
          if (cVar5 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x23) = 1;
          }
        }
        cVar5 = FUN_0040b030("PickupThrow");
        if (cVar5 != '\0') {
          FUN_006d6ba0(0xa2,0x3f800000,2,0,0x3f800000);
        }
        iVar12 = FUN_0040b1d0("OverlayEffect");
        if ((iVar12 != 0) && (*(char *)(iVar12 + 0xc) != '\0')) {
          param_1[0x62] = 4;
        }
        if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
          param_1[0x62] = 4;
          param_1[0x2d9] = 3;
        }
      }
    }
    else {
      param_1[0x104] = param_1[0x104] - (int)local_e0;
    }
    goto LAB_0055f8e3;
  case 3:
    ppbVar8 = (byte **)param_1[0x1f];
    if (ppbVar8 == (byte **)0x0) {
LAB_0055d898:
      cVar5 = FUN_0040a5d0(&DAT_00b1bc54,1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar6 = ppbVar8;
      if (&DAT_0000000f < ppbVar8[5]) {
        ppbVar6 = (byte **)*ppbVar8;
      }
      pbVar15 = &DAT_00b1bc54;
      do {
        bVar1 = *(byte *)ppbVar6;
        bVar19 = bVar1 < *pbVar15;
        if (bVar1 != *pbVar15) {
LAB_0055d882:
          uVar14 = -(uint)bVar19 | 1;
          goto LAB_0055d887;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar6 + 1);
        bVar19 = bVar1 < pbVar15[1];
        if (bVar1 != pbVar15[1]) goto LAB_0055d882;
        ppbVar6 = (byte **)((int)ppbVar6 + 2);
        pbVar15 = pbVar15 + 2;
      } while (bVar1 != 0);
      uVar14 = 0;
LAB_0055d887:
      if ((uVar14 != 0) || ((*(byte *)(ppbVar8 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_0055d898;
    }
    pcVar17 = local_e8;
    iVar12 = param_1[0x2f1];
    if ((-1 < iVar12) && (cVar5 = FUN_00825730(iVar12), iVar12 = extraout_EDX, cVar5 == '\0')) {
      param_1[0x2f1] = -1;
      iVar12 = -1;
    }
    iVar16 = local_b0;
    if (param_1[0x3c7] == -1) {
      if (((iVar12 == -1) && (cVar5 = FUN_006ac710(10,0), cVar5 != '\0')) &&
         (cVar5 = FUN_00417430(0x1000800,0), cVar5 == '\0')) {
        fStack_98 = DAT_00baacc4;
        local_e0 = -NAN;
        iVar12 = FUN_006be840();
        fStack_ac = 0.0;
        fVar22 = *(float *)(iVar12 + 0x33c);
        ppiVar25 = *(int ***)(iVar12 + 0x340);
        local_f0 = (int **)(*(int *)(pcVar17 + 0x10) * *(int *)(pcVar17 + 0xc));
        local_a4 = ppiVar25;
        fStack_94 = fVar22;
        if (0 < (int)local_f0) {
          local_d8 = (int *)(pcVar17 + 0x24);
          local_c4 = (int **)(pcVar17 + 0xe6c);
          do {
            fVar21 = fStack_ac;
            if (((0x1bf < (uint)fStack_ac) || (*(short *)local_c4 == 0)) &&
               (cVar5 = FUN_00825730(fStack_ac), cVar5 != '\0')) {
              iVar12 = *(int *)(pcVar17 + 0xc);
              fStack_cc = (float)((int)fVar21 % iVar12) * DAT_00baa904 + DAT_00baa904;
              fStack_b4 = (float)((int)fVar21 / iVar12) * DAT_00baa904 + DAT_00baaa00;
              if ((uint)fVar21 < 0x1c0) {
                iStack_9c = *local_d8;
              }
              else {
                iStack_9c = 0;
              }
              if (local_b0 == 1) {
                fStack_cc = fStack_cc - fVar22;
                fStack_b4 = fStack_b4 - (float)ppiVar25;
                fStack_ac = fVar22 - (float)param_1[0xcf];
                fStack_a8 = (float)ppiVar25 - (float)param_1[0xd0];
                fVar20 = fStack_ac * fStack_ac + fStack_a8 * fStack_a8;
                FUN_00435a50();
                fVar22 = fStack_a8;
                if (0.0 < fVar20) {
                  fStack_ac = fStack_ac * (DAT_00baa454 / fVar20);
                  fVar22 = fStack_a8 * (DAT_00baa454 / fVar20);
                }
                fVar20 = fVar22 * fStack_b4 + fStack_ac * fStack_cc;
                pcVar17 = local_e8;
                ppiVar25 = DAT_00baabc4;
                if (fVar20 <= DAT_00baa120) {
                  fVar20 = DAT_00baa120;
                }
              }
              else {
                fVar21 = (float)param_1[0xd0] - fStack_b4;
                fVar22 = (float)param_1[0xcf] - fStack_cc;
                ppiVar25 = (int **)(fVar21 * fVar21 + fVar22 * fVar22);
                FUN_00435a50();
                local_d4 = ppiVar25;
                iVar18 = (int)(((fStack_b4 + 0.0) - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
                iVar16 = (int)(((fStack_cc - DAT_00baa904) - DAT_00baa904) / DAT_00baa904 +
                              DAT_00baa2d0);
                if (((iVar16 < 0) || (iVar12 <= iVar16)) ||
                   ((iVar18 < 0 || (*(int *)(local_e8 + 0x10) <= iVar18)))) {
                  iVar16 = -1;
                }
                else {
                  iVar16 = iVar18 * iVar12 + iVar16;
                }
                local_bc = (int **)FUN_007f0800(iVar16);
                iVar16 = (int)(((fStack_cc + DAT_00baa904) - DAT_00baa904) / DAT_00baa904 +
                              DAT_00baa2d0);
                if ((((iVar16 < 0) || (iVar12 <= iVar16)) || (iVar18 < 0)) ||
                   (*(int *)(local_e8 + 0x10) <= iVar18)) {
                  iVar16 = -1;
                }
                else {
                  iVar16 = iVar18 * iVar12 + iVar16;
                }
                fStack_a8 = (float)FUN_007f0800(iVar16);
                iVar18 = (int)(((fStack_cc + 0.0) - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
                iVar16 = (int)(((fStack_b4 - DAT_00baa904) - DAT_00baaa00) / DAT_00baa904 +
                              DAT_00baa2d0);
                if (((iVar18 < 0) || (iVar12 <= iVar18)) ||
                   ((iVar16 < 0 || (*(int *)(local_e8 + 0x10) <= iVar16)))) {
                  fStack_cc = (float)FUN_007f0800(0xffffffff);
                  fVar22 = ((fStack_b4 + DAT_00baa904) - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0
                  ;
                  if ((-1 < iVar18) && (iVar18 < iVar12)) goto LAB_0055dd01;
LAB_0055dd15:
                  iVar18 = -1;
                }
                else {
                  fStack_cc = (float)FUN_007f0800(iVar16 * iVar12 + iVar18);
                  fVar22 = ((fStack_b4 + DAT_00baa904) - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0
                  ;
LAB_0055dd01:
                  iVar16 = (int)fVar22;
                  if ((iVar16 < 0) || (*(int *)(local_e8 + 0x10) <= iVar16)) goto LAB_0055dd15;
                  iVar18 = iVar16 * iVar12 + iVar18;
                }
                pcVar17 = local_e8;
                iVar12 = FUN_007f0800(iVar18);
                fVar21 = fStack_ac;
                ppiVar25 = local_d4;
                fVar20 = (float)(iVar12 + (int)fStack_cc + (int)fStack_a8 + (int)local_bc) /
                         DAT_00baa834 + DAT_00baa454;
              }
              fVar20 = (float)ppiVar25 / fVar20;
              iVar12 = *(int *)(iStack_9c + 4);
              if ((iVar12 == 6) || (iVar12 == 0x1a)) {
                fVar20 = fVar20 * DAT_00baa198;
              }
              else if ((iVar12 == 5) || (iVar12 == 0xc)) {
                fVar20 = fVar20 * DAT_00baa280;
              }
              else if (iVar12 == 0xe) {
                fVar20 = fVar20 * DAT_00baa354;
              }
              else if ((iVar12 == 4) || (iVar12 == 0x16)) {
                fVar20 = fVar20 * DAT_00baa6fc;
              }
              fVar22 = fStack_94;
              ppiVar25 = local_a4;
              if (((int)local_e0 < 0) || (fVar20 < fStack_98)) {
                local_e0 = fVar21;
                fStack_98 = fVar20;
              }
            }
            fStack_ac = (float)((int)fVar21 + 1);
            local_c4 = (int **)((int)local_c4 + 2);
            local_d8 = local_d8 + 1;
          } while ((int)fStack_ac < (int)local_f0);
          if (-1 < (int)local_e0) {
            FUN_0055d070(local_e0);
          }
        }
        if ((param_1[0x2f1] < 0) && (local_d9 == '\0')) {
          param_1[0x2f0] = param_1[0x2f0] + 1;
          if (5 < param_1[0x2f0]) {
            param_1[0x2f1] = -2;
            param_1[0x61] = 0;
          }
        }
        else {
          param_1[0x2f0] = 0;
        }
      }
      if (((param_1[0x5a] & 0x1000a00U) != 0) && (uVar14 = FUN_006eef60(), uVar14 % 6 == 0)) {
        param_1[0x2f1] = -1;
      }
    }
    else {
      if (local_b0 == 1) {
        FUN_006d8b20(0);
      }
      cVar5 = FUN_006d8260(9);
      if (cVar5 != '\0') {
        if (iVar16 == 1) {
          pppiVar7 = (int ***)FUN_006d8d30(&local_f0);
        }
        else {
          local_f0 = (int **)param_1[0xcf];
          local_ec = (float)param_1[0xd0];
          pppiVar7 = &local_f0;
        }
        uVar11 = FUN_00812c90(pppiVar7);
        cVar5 = FUN_00825730(uVar11);
        if (cVar5 != '\0') {
          param_1[0x2f1] = extraout_EDX_00;
        }
      }
    }
    iVar12 = param_1[0x2f1];
    piVar10 = local_e4;
    if (-1 < iVar12) {
      if (local_b0 == 1) {
        uVar14 = FUN_006eef60();
        piVar10 = local_e4;
        if (uVar14 % 10 == 0) {
          local_ec = (float)param_1[0xd0];
          local_f0 = (int **)param_1[0xcf];
          cVar5 = FUN_00944a40(&local_f0);
          piVar10 = local_e4;
          if (cVar5 != '\0') {
            param_1[0x2d9] = 0xd;
            FUN_0040a380("TeleStart",0);
            param_1[0x104] = 0;
            piVar10 = local_e4;
          }
        }
      }
      else {
        if (param_1[0x3c7] == -1) {
          fVar22 = (float)param_1[0xd8] * (float)param_1[0xd8] +
                   (float)param_1[0xd9] * (float)param_1[0xd9];
          FUN_00435a50();
          piVar10 = local_e4;
          if ((DAT_00baa454 <= fVar22) ||
             (iVar16 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc),
             fVar22 = ((float)(iVar12 % iVar16) * DAT_00baa904 + DAT_00baa904) -
                      (float)param_1[0xcf],
             fVar21 = ((float)(iVar12 / iVar16) * DAT_00baa904 + DAT_00baaa00) -
                      (float)param_1[0xd0], DAT_00baa960 <= fVar21 * fVar21 + fVar22 * fVar22))
          break;
        }
        param_1[0x2d9] = 9;
        piVar10 = local_e4;
      }
    }
    break;
  case 4:
    ppbVar8 = (byte **)param_1[0x1f];
    if (ppbVar8 == (byte **)0x0) {
LAB_0055e010:
      cVar5 = FUN_0040a5d0("PickupIdle",1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      if (&DAT_0000000f < ppbVar8[5]) {
        ppbVar8 = (byte **)*ppbVar8;
      }
      pcVar17 = "PickupIdle";
      do {
        bVar1 = *(byte *)ppbVar8;
        bVar19 = bVar1 < (byte)*pcVar17;
        if (bVar1 != *pcVar17) {
LAB_0055dff8:
          uVar14 = -(uint)bVar19 | 1;
          goto LAB_0055dffd;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar8 + 1);
        bVar19 = bVar1 < ((byte *)pcVar17)[1];
        if (bVar1 != ((byte *)pcVar17)[1]) goto LAB_0055dff8;
        ppbVar8 = (byte **)((int)ppbVar8 + 2);
        pcVar17 = (char *)((byte *)pcVar17 + 2);
      } while (bVar1 != 0);
      uVar14 = 0;
LAB_0055dffd:
      if ((uVar14 != 0) ||
         ((*(char *)(param_1[0x1f] + 0x34) != '\0' && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_0055e010;
    }
    if (piVar24 == (int *)0x0) {
      param_1[0x2d9] = 3;
      ppbVar8 = (byte **)param_1[0x1f];
      if (ppbVar8 != (byte **)0x0) {
        ppbVar6 = ppbVar8;
        if (&DAT_0000000f < ppbVar8[5]) {
          ppbVar6 = (byte **)*ppbVar8;
        }
        pbVar15 = &DAT_00b1bc54;
        do {
          bVar1 = *(byte *)ppbVar6;
          bVar19 = bVar1 < *pbVar15;
          if (bVar1 != *pbVar15) {
LAB_0055e080:
            uVar14 = -(uint)bVar19 | 1;
            goto LAB_0055e085;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar6 + 1);
          bVar19 = bVar1 < pbVar15[1];
          if (bVar1 != pbVar15[1]) goto LAB_0055e080;
          ppbVar6 = (byte **)((int)ppbVar6 + 2);
          pbVar15 = pbVar15 + 2;
        } while (bVar1 != 0);
        uVar14 = 0;
LAB_0055e085:
        if ((uVar14 == 0) &&
           ((*(byte *)(ppbVar8 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
        goto LAB_0055e0b1;
      }
      cVar5 = FUN_0040a5d0(&DAT_00b1bc54,1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
      goto LAB_0055e0b1;
    }
    break;
  case 8:
    ppbVar8 = (byte **)param_1[0x1f];
    if (ppbVar8 != (byte **)0x0) {
      ppbVar6 = ppbVar8;
      if (&DAT_0000000f < ppbVar8[5]) {
        ppbVar6 = (byte **)*ppbVar8;
      }
      pcVar17 = "PickupFirst";
      do {
        bVar1 = *(byte *)ppbVar6;
        bVar19 = bVar1 < (byte)*pcVar17;
        if (bVar1 != *pcVar17) {
LAB_0055e110:
          uVar14 = -(uint)bVar19 | 1;
          goto LAB_0055e115;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar6 + 1);
        bVar19 = bVar1 < ((byte *)pcVar17)[1];
        if (bVar1 != ((byte *)pcVar17)[1]) goto LAB_0055e110;
        ppbVar6 = (byte **)((int)ppbVar6 + 2);
        pcVar17 = (char *)((byte *)pcVar17 + 2);
      } while (bVar1 != 0);
      uVar14 = 0;
LAB_0055e115:
      if ((uVar14 == 0) && ((*(byte *)(ppbVar8 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
      break;
    }
    pcVar17 = "PickupFirst";
    goto LAB_0055e135;
  case 9:
    ppbVar8 = (byte **)param_1[0x1f];
    if (ppbVar8 != (byte **)0x0) {
      ppbVar6 = ppbVar8;
      if (&DAT_0000000f < ppbVar8[5]) {
        ppbVar6 = (byte **)*ppbVar8;
      }
      pcVar17 = "Pickup";
      do {
        bVar1 = *(byte *)ppbVar6;
        bVar19 = bVar1 < (byte)*pcVar17;
        if (bVar1 != *pcVar17) {
LAB_0055e190:
          uVar14 = -(uint)bVar19 | 1;
          goto LAB_0055e195;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar6 + 1);
        bVar19 = bVar1 < ((byte *)pcVar17)[1];
        if (bVar1 != ((byte *)pcVar17)[1]) goto LAB_0055e190;
        ppbVar6 = (byte **)((int)ppbVar6 + 2);
        pcVar17 = (char *)((byte *)pcVar17 + 2);
      } while (bVar1 != 0);
      uVar14 = 0;
LAB_0055e195:
      if ((uVar14 == 0) && ((*(byte *)(ppbVar8 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
      break;
    }
    pcVar17 = "Pickup";
LAB_0055e135:
    cVar5 = FUN_0040a5d0(pcVar17,1);
    piVar10 = local_e4;
    if (cVar5 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
      piVar10 = piVar24;
    }
    break;
  case 10:
    ppbVar8 = (byte **)param_1[0x1f];
    if (ppbVar8 == (byte **)0x0) {
LAB_0055e20e:
      cVar5 = FUN_0040a5d0("Throw",1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar6 = ppbVar8;
      if (&DAT_0000000f < ppbVar8[5]) {
        ppbVar6 = (byte **)*ppbVar8;
      }
      pcVar17 = "Throw";
      do {
        bVar1 = *(byte *)ppbVar6;
        bVar19 = bVar1 < (byte)*pcVar17;
        if (bVar1 != *pcVar17) {
LAB_0055e1f0:
          uVar14 = -(uint)bVar19 | 1;
          goto LAB_0055e1f5;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar6 + 1);
        bVar19 = bVar1 < ((byte *)pcVar17)[1];
        if (bVar1 != ((byte *)pcVar17)[1]) goto LAB_0055e1f0;
        ppbVar6 = (byte **)((int)ppbVar6 + 2);
        pcVar17 = (char *)((byte *)pcVar17 + 2);
      } while (bVar1 != 0);
      uVar14 = 0;
LAB_0055e1f5:
      if ((uVar14 != 0) || ((*(byte *)(ppbVar8 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_0055e20e;
    }
    if (param_1[0x3c7] == -1) {
      param_1[0x3c8] = (int)DAT_00c7b640;
      fVar22 = DAT_00c7b644;
LAB_0055e291:
      param_1[0x3c9] = (int)fVar22;
    }
    else {
      FUN_006d85a0(&local_f0);
      if (((NAN((float)local_f0) || NAN(DAT_00c7b640)) == ((float)local_f0 == DAT_00c7b640)) ||
         ((NAN(local_ec) || NAN(DAT_00c7b644)) == (local_ec == DAT_00c7b644))) {
        param_1[0x3c8] = (int)local_f0;
        fVar22 = local_ec;
        goto LAB_0055e291;
      }
    }
    if (param_1[0x1f] != 0) {
      cVar5 = FUN_0040add0("PickupThrow");
      if ((cVar5 != '\0') && (piVar24 != (int *)0x0)) {
        iVar12 = FUN_006be840();
        local_f0 = (int **)((*(float *)(iVar12 + 0x360) * DAT_00baa75c + *(float *)(iVar12 + 0x33c)
                            + (float)param_1[0xd8] * DAT_00baa75c) - (float)param_1[0xcf]);
        local_ec = (*(float *)(iVar12 + 0x364) * DAT_00baa75c + *(float *)(iVar12 + 0x340) +
                   (float)param_1[0xd9] * DAT_00baa75c) - (float)param_1[0xd0];
        pfVar13 = (float *)FUN_00a10030(&local_d4);
        iVar12 = piVar24[10];
        fVar22 = (float)param_1[0xd8];
        if (iVar12 == 5) {
          fVar21 = (float)param_1[0xd9];
          fStack_c0 = fVar21 * DAT_00baa198;
          fVar20 = fVar22 * DAT_00baa198;
        }
        else {
          fVar21 = (float)param_1[0xd9];
          fStack_c0 = fVar21;
          fVar20 = fVar22;
        }
        local_c4 = (int **)(fVar20 + *pfVar13 * DAT_00baa81c);
        fStack_c0 = fStack_c0 + pfVar13[1] * DAT_00baa81c;
        if (param_1[0x3c7] != -1) {
          local_c4 = (int **)((float)param_1[0x3c8] * DAT_00baa81c + fVar22);
          fStack_c0 = (float)param_1[0x3c9] * DAT_00baa81c + fVar21;
        }
        if ((iVar12 == 1000) && (piVar24[0xb] == 0x88)) {
          FUN_006d9550(piVar24 + 0x12,piVar24 + 0x108,&local_c4,0);
          iVar16 = *piVar24;
LAB_0055e41c:
          (**(code **)(iVar16 + 0x28))();
        }
        else {
          iVar16 = *piVar24;
          if (iVar12 != 5) goto LAB_0055e41c;
          local_f0 = *(int ***)(iVar16 + 0x54);
          local_64 = param_1[10];
          iStack_60 = param_1[0xb];
          iStack_5c = param_1[0xd];
          iStack_58 = param_1[0xe];
          auStack_54._8_4_ = param_1[0xd8];
          auStack_54._0_8_ = *(undefined8 *)(param_1 + 0xcf);
          uStack_48 = param_1[0xd9];
          if ((param_1[0x5a] & 0x20000000U) == 0) {
            uVar14 = 0;
          }
          else {
            uVar14 = 2;
          }
          if ((param_1[0x5b] & 0x400000U) == 0) {
            uVar9 = 0;
          }
          else {
            uVar9 = 4;
          }
          uStack_44 = uVar9 | uVar14 | (uint)((param_1[0x5a] & 0x100U) != 0);
          piStack_40 = param_1;
          (*(code *)local_f0)(&local_64,&local_c4,0x41000000);
          if (piVar24[0xef] != 0) {
            local_f0 = (int **)(piVar24 + 0xef);
            FUN_004cf210(&local_f0);
          }
          ppiVar25 = (int **)(param_1 + 0x2fb);
          piVar24[0xef] = 0;
          if (*ppiVar25 != (int *)0x0) {
            local_f0 = ppiVar25;
            FUN_004cf210(&local_f0);
          }
          *ppiVar25 = (int *)0x0;
        }
        local_e4 = (int *)0x0;
      }
      if ((param_1[0x1f] != 0) && (piVar10 = local_e4, *(char *)(param_1 + 0x23) != '\0')) break;
    }
    param_1[0x2d9] = 3;
    ppbVar8 = (byte **)param_1[0x1f];
    if (ppbVar8 == (byte **)0x0) {
LAB_0055e5e7:
      cVar5 = FUN_0040a5d0(&DAT_00b1bc54,1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar6 = ppbVar8;
      if (&DAT_0000000f < ppbVar8[5]) {
        ppbVar6 = (byte **)*ppbVar8;
      }
      pbVar15 = &DAT_00b1bc54;
      do {
        bVar1 = *(byte *)ppbVar6;
        bVar19 = bVar1 < *pbVar15;
        if (bVar1 != *pbVar15) {
LAB_0055e5d1:
          uVar14 = -(uint)bVar19 | 1;
          goto LAB_0055e5d6;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar6 + 1);
        bVar19 = bVar1 < pbVar15[1];
        if (bVar1 != pbVar15[1]) goto LAB_0055e5d1;
        ppbVar6 = (byte **)((int)ppbVar6 + 2);
        pbVar15 = pbVar15 + 2;
      } while (bVar1 != 0);
      uVar14 = 0;
LAB_0055e5d6:
      if ((uVar14 != 0) || ((*(byte *)(ppbVar8 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_0055e5e7;
    }
    param_1[0x62] = 4;
    *(undefined *)((int)param_1 + 0x171) = 1;
    piVar10 = local_e4;
    break;
  case 0xd:
    iVar12 = param_1[0xf0];
    ppiVar25 = (int **)(param_1 + 0xf0);
    if (iVar12 == 0) {
LAB_0055e65d:
      iVar12 = param_1[0xf2];
      if ((iVar12 == 0) || (*(int *)(iVar12 + 0x28) != 5)) {
        uVar14 = param_1[0x2f1];
        if ((-1 < (int)uVar14) && (uVar14 < 0x1c0)) {
          iVar12 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x24 + uVar14 * 4);
          if ((iVar12 != 0) && (*(int *)(iVar12 + 0x3c) != 0)) {
            iVar16 = *(int *)(iVar12 + 4);
            if (((iVar16 == 2) ||
                ((((iVar16 == 4 || (iVar16 == 5)) || (iVar16 == 6)) ||
                 ((iVar16 == 0x1a || (iVar16 == 0x16)))))) || (iVar16 == 0x1b)) {
LAB_0055e7e9:
              if (param_1[0xb] == 1) goto LAB_0055e84f;
              iVar12 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc);
              fVar22 = (float)((int)uVar14 / iVar12) * DAT_00baa904 + DAT_00baaa00;
              param_1[0xcf] = (int)((float)((int)uVar14 % iVar12) * DAT_00baa904 + DAT_00baa904);
              param_1[0xd0] = (int)fVar22;
              goto LAB_0055e82f;
            }
            if (iVar16 == 0xc) {
              if (*(uint *)(iVar12 + 0xc) < 4) goto LAB_0055e7e9;
            }
            else if ((iVar16 == 0xe) && (*(int *)(iVar12 + 0xc) != 1000)) goto LAB_0055e7e9;
          }
        }
        uVar14 = param_1[0x2ff];
        if (*(int *)(*(int *)(param_1[0x2fd] + (uVar14 >> 2 & param_1[0x2fe] - 1U) * 4) +
                    (uVar14 & 3) * 4) != 0) {
          (**(code **)(**(int **)(*(int *)(param_1[0x2fd] + (uVar14 >> 2 & param_1[0x2fe] - 1U) * 4)
                                 + (uVar14 & 3) * 4) + 0x28))();
          uVar14 = param_1[0x2ff] & 3;
          iVar12 = *(int *)(param_1[0x2fd] + ((uint)param_1[0x2ff] >> 2 & param_1[0x2fe] - 1U) * 4);
          ppiVar25 = (int **)(iVar12 + uVar14 * 4);
          if (*(int *)(iVar12 + uVar14 * 4) != 0) {
            local_f0 = ppiVar25;
            FUN_004cf210(&local_f0);
          }
          *ppiVar25 = (int *)0x0;
        }
        param_1[0x2d9] = 3;
        FUN_0040a380(&DAT_00b1bc54,0);
        param_1[0x62] = 4;
        *(undefined *)((int)param_1 + 0x171) = 1;
        piVar10 = local_e4;
        break;
      }
      iVar16 = *(int *)(iVar12 + 0x340);
      param_1[0xcf] = *(int *)(iVar12 + 0x33c);
      param_1[0xd0] = iVar16;
LAB_0055e82f:
      param_1[0xd8] = (int)DAT_00c7b640;
      param_1[0xd9] = (int)DAT_00c7b644;
    }
    else if ((*(int *)(iVar12 + 0x28) != 9) || (*(int *)(iVar12 + 0x2c) != 8)) {
      local_f0 = ppiVar25;
      FUN_004cf210(&local_f0);
      *ppiVar25 = (int *)0x0;
      goto LAB_0055e65d;
    }
LAB_0055e84f:
    if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
      ppbVar8 = (byte **)param_1[0x1f];
      if (ppbVar8 != (byte **)0x0) {
        ppbVar6 = ppbVar8;
        if (&DAT_0000000f < ppbVar8[5]) {
          ppbVar6 = (byte **)*ppbVar8;
        }
        pcVar17 = "TeleLoop";
        do {
          bVar1 = *(byte *)ppbVar6;
          bVar19 = bVar1 < (byte)*pcVar17;
          if (bVar1 != *pcVar17) {
LAB_0055e894:
            uVar14 = -(uint)bVar19 | 1;
            goto LAB_0055e899;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar6 + 1);
          bVar19 = bVar1 < ((byte *)pcVar17)[1];
          if (bVar1 != ((byte *)pcVar17)[1]) goto LAB_0055e894;
          ppbVar6 = (byte **)((int)ppbVar6 + 2);
          pcVar17 = (char *)((byte *)pcVar17 + 2);
        } while (bVar1 != 0);
        uVar14 = 0;
LAB_0055e899:
        if ((uVar14 == 0) &&
           ((*(byte *)(ppbVar8 + 0xd) == 0 || (*(char *)(param_1 + 0x23) != '\0'))))
        goto LAB_0055e8d0;
      }
      cVar5 = FUN_0040a5d0("TeleLoop",1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
LAB_0055e8d0:
    if ((param_1[0x1f] == 0) || (cVar5 = FUN_0040add0("PickupThrow"), cVar5 == '\0')) {
      iVar12 = param_1[0x104];
      piVar10 = local_e4;
      if (iVar12 < 1) break;
    }
    else {
      param_1[0x104] = 1;
      iVar12 = 1;
    }
    piVar24 = *ppiVar25;
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa304);
    fVar21 = DAT_00baaa00;
    fVar22 = DAT_00baa904;
    if (piVar24 == (int *)0x0) {
      iVar16 = *(int *)(local_e8 + 0xc);
      param_1[0x104] = (int)local_e0 + iVar12;
      local_f0 = (int **)((float)(param_1[0x2f1] % iVar16) * fVar22 + fVar22);
      local_d4 = (int **)((float)(param_1[0x2f1] / iVar16) * fVar22 + fVar21);
      if (6 < (int)local_e0 + iVar12) {
        local_bc = (int **)((float)local_f0 - (float)param_1[0xcf]);
        local_b8 = (int **)((float)local_d4 - (float)param_1[0xd0]);
        FUN_00a10100(&local_c4,0x3f800000);
        piVar24 = (int *)FUN_00825c50(param_1[0x2f1]);
        local_bc = (int **)FUN_006d9550(piVar24 + 0x12,piVar24 + 0x108,&local_c4,piVar24[0x114]);
        local_bc[0xcf] = (int *)local_f0;
        local_bc[0xd0] = (int *)local_d4;
        local_bc[0x106] = (int *)0xbf666666;
        local_bc[0x105] = (int *)0x0;
        local_bc[0x104] = (int *)0xc1000000;
        (**(code **)(*piVar24 + 0x28))();
        ppiVar23 = local_bc;
        local_bc[0x10e] = (int *)((uint)local_bc[0x10e] | 0x2000);
        local_bc[0x10f] = local_bc[0x10f];
        if (*ppiVar25 != (int *)0x0) {
          local_f0 = ppiVar25;
          FUN_004cf210(&local_f0);
        }
        *ppiVar25 = (int *)ppiVar23;
        FUN_004cdcf0(ppiVar25);
        fVar22 = DAT_00baa904;
        fVar21 = DAT_00baaa00;
        if (*(int *)(*(int *)(param_1[0x2fd] + ((uint)param_1[0x2ff] >> 2 & param_1[0x2fe] - 1U) * 4
                             ) + (param_1[0x2ff] & 3U) * 4) != 0) {
          local_d4 = (int **)(*(int *)(*(int *)(param_1[0x2fd] +
                                               ((uint)param_1[0x2ff] >> 2 & param_1[0x2fe] - 1U) * 4
                                               ) + (param_1[0x2ff] & 3U) * 4) + 0x3c4);
          if (*local_d4 != (int *)0x0) {
            local_f0 = local_d4;
            FUN_004cf210(&local_f0);
          }
          *local_d4 = (int *)ppiVar23;
          FUN_004cdcf0(local_d4);
          fVar22 = DAT_00baa904;
          fVar21 = DAT_00baaa00;
        }
      }
    }
    else {
      local_f0 = (int **)((float)param_1[0xcf] - (float)piVar24[0xcf]);
      local_ec = (float)param_1[0xd0] - (float)piVar24[0xd0];
      fVar22 = (float)piVar24[0xd8] * (float)piVar24[0xd8] +
               (float)piVar24[0xd9] * (float)piVar24[0xd9];
      FUN_00435a50();
      fVar21 = fVar22 * DAT_00baa490 + DAT_00baa304;
      fVar22 = DAT_00baa884;
      if (fVar21 <= DAT_00baa884) {
        fVar22 = fVar21;
      }
      piVar10 = (int *)FUN_00a10100(&local_d4,fVar22);
      piVar24[0xd8] = *piVar10;
      piVar24[0xd9] = piVar10[1];
      piVar24 = *ppiVar25;
      if ((piVar24 != (int *)0x0) && (piVar24[10] == 9)) {
        piVar24[0x105] = (int)((DAT_00baadec - (float)piVar24[0x104]) * DAT_00baa198);
        piVar24 = *ppiVar25;
      }
      cVar5 = FUN_006ac710(4,0);
      if (cVar5 != '\0') {
        local_64 = _DAT_00bac640;
        iStack_60 = _UNK_00bac644;
        iStack_5c = _UNK_00bac648;
        iStack_58 = _UNK_00bac64c;
        uStack_44 = 0x3e4ccccd;
        _auStack_54 = ZEXT816(0);
        piStack_40 = (int *)0x0;
        uStack_3c = 0x3ecccccd;
        (**(code **)(*piVar24 + 0x3c))(&local_64,4,0xff,1,1);
        piVar24 = *ppiVar25;
      }
      fVar22 = DAT_00baa904;
      fVar21 = DAT_00baaa00;
      if (((float)param_1[0xd0] - (float)piVar24[0xd0]) *
          ((float)param_1[0xd0] - (float)piVar24[0xd0]) +
          ((float)param_1[0xcf] - (float)piVar24[0xcf]) *
          ((float)param_1[0xcf] - (float)piVar24[0xcf]) < DAT_00baac08) {
        uVar11 = FUN_00407170();
        FUN_004073d0(uVar11);
        uVar11 = FUN_006eef60();
        piVar10 = (int *)FUN_006fe410(1000,0x88,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar11,0);
        local_e4 = piVar10;
        FUN_00407690(*ppiVar25 + 0x12);
        FUN_00407e90();
        uVar2 = *(ushort *)((int)*ppiVar25 + 0x32);
        piVar10[0x108] = (uint)uVar2;
        piVar10[0x109] = (uint)*(ushort *)(*ppiVar25 + 0xc);
        piVar10[0x10c] = (*ppiVar25)[0xfb];
        piVar10[0x10a] = 0;
        if (uVar2 == 0xe) {
          piVar10[0x10a] = (int)(float)(*ppiVar25)[0xe0];
        }
        piVar10[0xcf] = param_1[0xcf];
        piVar10[0xd0] = param_1[0xd0];
        if ((int *)piVar10[0xef] != (int *)0x0) {
          local_f0 = (int **)(piVar10 + 0xef);
          FUN_004cf210(&local_f0);
        }
        piVar10[0xef] = (int)param_1;
        FUN_004cdcf0(piVar10 + 0xef);
        if (param_1[0x2fb] != 0) {
          local_f0 = (int **)(param_1 + 0x2fb);
          FUN_004cf210(&local_f0);
        }
        param_1[0x2fb] = (int)piVar10;
        FUN_004cdcf0(param_1 + 0x2fb);
        if (*(int *)(*(int *)(param_1[0x2fd] + (param_1[0x2fe] - 1U & (uint)param_1[0x2ff] >> 2) * 4
                             ) + (param_1[0x2ff] & 3U) * 4) != 0) {
          (**(code **)(**(int **)(*(int *)(param_1[0x2fd] +
                                          ((uint)param_1[0x2ff] >> 2 & param_1[0x2fe] - 1U) * 4) +
                                 (param_1[0x2ff] & 3U) * 4) + 0x28))();
          uVar14 = param_1[0x2ff] & 3;
          iVar12 = *(int *)(param_1[0x2fd] + ((uint)param_1[0x2ff] >> 2 & param_1[0x2fe] - 1U) * 4);
          local_d4 = (int **)(iVar12 + uVar14 * 4);
          if (*(int *)(iVar12 + uVar14 * 4) != 0) {
            local_f0 = local_d4;
            FUN_004cf210(&local_f0);
          }
          *local_d4 = (int *)0x0;
        }
        fVar22 = (float)(*ppiVar25)[0xd9] * DAT_00baa2d0;
        param_1[0xd8] =
             (int)((float)(*ppiVar25)[0xd8] * DAT_00baa2d0 * (float)param_1[0xe7] +
                  (float)param_1[0xd8]);
        param_1[0xd9] = (int)(fVar22 * (float)param_1[0xe7] + (float)param_1[0xd9]);
        (**(code **)(**ppiVar25 + 0x28))();
        if (*ppiVar25 != (int *)0x0) {
          local_f0 = ppiVar25;
          FUN_004cf210(&local_f0);
        }
        *ppiVar25 = (int *)0x0;
        FUN_0040a380("Pickup",0);
        param_1[0x2d9] = 9;
        break;
      }
    }
    piVar10 = local_e4;
    if (*(int *)(*(int *)(param_1[0x2fd] + ((uint)param_1[0x2ff] >> 2 & param_1[0x2fe] - 1U) * 4) +
                (param_1[0x2ff] & 3U) * 4) == 0) {
      piVar24 = *ppiVar25;
      if (piVar24 == (int *)0x0) {
        local_f0 = (int **)((float)(param_1[0x2f1] % *(int *)(local_e8 + 0xc)) * fVar22 + fVar22);
        local_ec = (float)(param_1[0x2f1] / *(int *)(local_e8 + 0xc)) * fVar22 + fVar21;
      }
      else {
        local_f0 = (int **)piVar24[0xcf];
        local_ec = (float)piVar24[0xd0];
      }
      local_c4 = local_f0;
      fStack_c0 = local_ec;
      uVar11 = FUN_006eef60();
      piVar24 = (int *)FUN_006fe410(1000,0xaf,&local_c4,&DAT_00c7b640,param_1,0,uVar11,0);
      if (piVar24 != (int *)0x0) {
        local_d4 = (int **)*ppiVar25;
        ppiVar25 = (int **)(piVar24 + 0xf1);
        if (*ppiVar25 != (int *)0x0) {
          local_f0 = ppiVar25;
          FUN_004cf210(&local_f0);
        }
        *ppiVar25 = (int *)local_d4;
        if (local_d4 != (int **)0x0) {
          FUN_004cdcf0(ppiVar25);
        }
      }
      ppiVar25 = (int **)(piVar24 + 0xef);
      if (piVar24[0xef] != 0) {
        local_f0 = ppiVar25;
        FUN_004cf210(&local_f0);
      }
      *ppiVar25 = param_1;
      FUN_004cdcf0(ppiVar25);
      (**(code **)(*piVar24 + 0xc))();
      uVar14 = param_1[0x2ff] & 3;
      iVar12 = *(int *)(param_1[0x2fd] + ((uint)param_1[0x2ff] >> 2 & param_1[0x2fe] - 1U) * 4);
      ppiVar25 = (int **)(iVar12 + uVar14 * 4);
      if (*(int *)(iVar12 + uVar14 * 4) != 0) {
        local_f0 = ppiVar25;
        FUN_004cf210(&local_f0);
      }
      *ppiVar25 = piVar24;
      FUN_004cdcf0(ppiVar25);
      piVar10 = local_e4;
    }
    break;
  case 0x10:
    cVar5 = FUN_0055d0b0();
    if (cVar5 == '\0') {
      param_1[0x2d9] = 3;
      ppbVar8 = (byte **)param_1[0x1f];
      if (ppbVar8 == (byte **)0x0) {
LAB_0055d786:
        cVar5 = FUN_0040a5d0(&DAT_00b1bc54,1);
        if (cVar5 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        ppbVar6 = ppbVar8;
        if (&DAT_0000000f < ppbVar8[5]) {
          ppbVar6 = (byte **)*ppbVar8;
        }
        pbVar15 = &DAT_00b1bc54;
        do {
          bVar1 = *(byte *)ppbVar6;
          bVar19 = bVar1 < *pbVar15;
          if (bVar1 != *pbVar15) {
LAB_0055d768:
            uVar14 = -(uint)bVar19 | 1;
            goto LAB_0055d76d;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar6 + 1);
          bVar19 = bVar1 < pbVar15[1];
          if (bVar1 != pbVar15[1]) goto LAB_0055d768;
          ppbVar6 = (byte **)((int)ppbVar6 + 2);
          pbVar15 = pbVar15 + 2;
        } while (bVar1 != 0);
        uVar14 = 0;
LAB_0055d76d:
        if ((uVar14 != 0) ||
           ((*(byte *)(ppbVar8 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
        goto LAB_0055d786;
      }
      param_1[0x62] = 4;
      *(undefined *)((int)param_1 + 0x171) = 1;
    }
    else {
      if (param_1[0x3c7] != -1) {
        FUN_006d82d0(&local_f0);
        cVar5 = FUN_00a10630(&DAT_00c7b640);
        if (cVar5 != '\0') {
          param_1[0x104] = 0;
        }
      }
      if (param_1[0x104] < 1) {
        *(undefined *)((int)param_1 + 0x171) = 1;
        FUN_0040a380("PotAppear",0);
        if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
          param_1[0x2d9] = 8;
          param_1[0x62] = 4;
        }
      }
      else {
        param_1[0x104] = param_1[0x104] - (int)local_e0;
      }
    }
    goto LAB_0055f8e3;
  default:
LAB_0055f02d:
    local_e4 = piVar24;
    if (local_c8 != 2) break;
    goto LAB_0055f8e3;
  }
  iVar12 = param_1[0x2f1];
  if (iVar12 == -2) {
    if (param_1[0x3c7] == -1) {
      FUN_006bec40(&local_f0,0);
      local_d8 = (int *)((float)param_1[0xd0] - local_ec);
      local_e0 = (float)param_1[0xcf] - (float)local_f0;
      fVar21 = (float)local_d8 * (float)local_d8 + local_e0 * local_e0;
      FUN_00435a50();
      fVar22 = local_e0;
      piVar24 = local_d8;
      if (DAT_00baa354 < fVar21) {
        if (0.0 < fVar21) {
          piVar24 = (int *)((float)local_d8 * (DAT_00baa454 / fVar21));
          fVar22 = local_e0 * (DAT_00baa454 / fVar21);
        }
        fVar22 = fVar22 * DAT_00baa354;
        piVar24 = (int *)((float)piVar24 * DAT_00baa354);
      }
      param_1[0xd9] = (int)((float)param_1[0xe7] * (float)piVar24 + (float)param_1[0xd9]);
      param_1[0xd8] = (int)((float)param_1[0xe7] * fVar22 + (float)param_1[0xd8]);
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa418);
      cVar5 = FUN_00813360(param_1 + 0xcf,0xc3c80000);
      iVar16 = local_c8;
      if (cVar5 == '\0') {
        if (piVar10 != (int *)0x0) {
          (**(code **)(*piVar10 + 0x28))();
          local_e4 = (int *)0x0;
        }
        (**(code **)(*param_1 + 0x28))();
        iVar16 = local_c8;
      }
    }
    else {
LAB_0055f50e:
      pfVar13 = (float *)FUN_006d82d0(&local_bc);
      iVar16 = local_c8;
      fVar22 = pfVar13[1] * DAT_00baa354;
      param_1[0xd8] = (int)(*pfVar13 * DAT_00baa354 * (float)param_1[0xe7] + (float)param_1[0xd8]);
      param_1[0xd9] = (int)(fVar22 * (float)param_1[0xe7] + (float)param_1[0xd9]);
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa418);
      if (((local_c8 != 10) && (piVar10 != (int *)0x0)) &&
         (cVar5 = FUN_006cae60(0,7), cVar5 != '\0')) {
        FUN_006d9050(1);
        param_1[0x2d9] = 10;
      }
    }
  }
  else if (iVar12 < 0) {
    if (param_1[0x3c7] != -1) goto LAB_0055f50e;
    FUN_006bec40(&local_d4,0);
    iVar16 = local_c8;
    local_d8 = (int *)((float)local_d4 - (float)param_1[0xcf]);
    local_e0 = local_d0 - (float)param_1[0xd0];
    if (((local_c8 != 10) && (piVar10 != (int *)0x0)) &&
       (uVar14 = FUN_006eef60(), (uVar14 & 3) == 0)) {
      fVar21 = (float)local_d4 - ((float)param_1[0xd8] * DAT_00baa75c + (float)param_1[0xcf]);
      fVar22 = local_d0 - ((float)param_1[0xd9] * DAT_00baa75c + (float)param_1[0xd0]);
      fVar22 = fVar22 * fVar22 + fVar21 * fVar21;
      FUN_00435a50();
      if (fVar22 <= DAT_00baaa44) {
        param_1[0x2d9] = 10;
      }
    }
    fVar21 = (float)local_d8 * (float)local_d8 + local_e0 * local_e0;
    FUN_00435a50();
    piVar24 = local_d8;
    fVar22 = local_e0;
    if (0.0 < fVar21) {
      piVar24 = (int *)((float)local_d8 * (DAT_00baa454 / fVar21));
      fVar22 = local_e0 * (DAT_00baa454 / fVar21);
    }
    local_f0 = (int **)(((float)local_d4 - (float)piVar24 * DAT_00baa9d0) - (float)param_1[0xcf]);
    local_d4 = (int **)((local_d0 - fVar22 * DAT_00baa9d0) - (float)param_1[0xd0]);
    fVar22 = (float)local_f0 * (float)local_f0 + (float)local_d4 * (float)local_d4;
    local_bc = local_f0;
    local_b8 = local_d4;
    FUN_00435a50();
    ppiVar23 = local_d4;
    ppiVar25 = local_f0;
    if (DAT_00baa354 < fVar22) {
      FUN_00a0ffc0();
      ppiVar23 = (int **)((float)local_b8 * DAT_00baa354);
      ppiVar25 = (int **)((float)local_bc * DAT_00baa354);
    }
    param_1[0xd8] = (int)((float)ppiVar25 * (float)param_1[0xe7] + (float)param_1[0xd8]);
    param_1[0xd9] = (int)((float)ppiVar23 * (float)param_1[0xe7] + (float)param_1[0xd9]);
LAB_0055f4e4:
    param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa418);
  }
  else {
    iVar16 = local_c8;
    if (param_1[0x2d9] != 0xd) {
      if (param_1[0x3c7] == -1) {
        if (local_b0 == 1) {
          iVar12 = FUN_006be840();
          FUN_00812f00(&local_f0,param_1[0x2f1]);
          local_d4 = (int **)(*(float *)(iVar12 + 0x33c) - (float)local_f0);
          local_d0 = *(float *)(iVar12 + 0x340) - local_ec;
          pfVar13 = (float *)FUN_00a10100(&local_bc,0x42f00000);
          local_f0 = (int **)(*(float *)(iVar12 + 0x33c) + *pfVar13);
          local_ec = *(float *)(iVar12 + 0x340) + pfVar13[1];
          pfVar13 = (float *)FUN_00436090(&local_d4,&local_f0,0);
        }
        else {
          pfVar13 = (float *)FUN_00812f00(&local_f0,iVar12);
        }
        local_d4 = (int **)(pfVar13[1] - (float)param_1[0xd0]);
        local_bc = (int **)(*pfVar13 - (float)param_1[0xcf]);
        local_a4 = local_bc;
        local_a0 = local_d4;
        ppiVar25 = (int **)((float)local_d4 * (float)local_d4 + (float)local_bc * (float)local_bc);
        FUN_00435a50();
        local_f0 = ppiVar25;
        ppiVar23 = local_bc;
        ppiVar25 = local_d4;
        if (DAT_00baa354 < (float)local_f0) {
          FUN_00a0ffc0();
          ppiVar23 = (int **)((float)local_a4 * DAT_00baa354);
          ppiVar25 = (int **)((float)local_a0 * DAT_00baa354);
        }
        fVar21 = DAT_00baa354;
        fVar22 = (float)param_1[0xe7];
        iVar16 = local_c8;
        if (DAT_00baa904 <= (float)local_f0) {
          param_1[0xd9] = (int)(fVar22 * (float)ppiVar25 + (float)param_1[0xd9]);
          param_1[0xd8] = (int)(fVar22 * (float)ppiVar23 + (float)param_1[0xd8]);
          goto LAB_0055f4e4;
        }
        param_1[0xd8] = (int)(((float)ppiVar23 + (float)ppiVar23) * fVar22 + (float)param_1[0xd8]);
        param_1[0xd9] = (int)(((float)ppiVar25 + (float)ppiVar25) * fVar22 + (float)param_1[0xd9]);
        param_1[0xdb] = (int)((float)param_1[0xdb] * fVar21);
      }
      else {
        pfVar13 = (float *)FUN_006d82d0(&local_bc);
        fVar22 = pfVar13[1] * DAT_00baa354;
        param_1[0xd8] = (int)(*pfVar13 * DAT_00baa354 * (float)param_1[0xe7] + (float)param_1[0xd8])
        ;
        param_1[0xd9] = (int)(fVar22 * (float)param_1[0xe7] + (float)param_1[0xd9]);
        param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa418);
        iVar16 = local_c8;
      }
    }
  }
  piVar24 = local_e4;
  *(bool *)(param_1 + 0x52) = 0.0 < (float)param_1[0xd8];
  if ((iVar16 == 8) || (iVar16 == 9)) {
    if ((local_e4 == (int *)0x0) && (cVar5 = FUN_0055d0b0(), cVar5 == '\0')) {
LAB_0055f7df:
      param_1[0x2d9] = 3;
      FUN_0040a380(&DAT_00b1bc54,0);
LAB_0055e0b1:
      param_1[0x62] = 4;
      *(undefined *)((int)param_1 + 0x171) = 1;
      FUN_00aef12b();
      return;
    }
    if (param_1[0x1f] != 0) {
      cVar5 = FUN_0040add0("PickupThrow");
      if (cVar5 != '\0') {
        iVar12 = param_1[0xf2];
        ppiVar25 = (int **)(param_1 + 0xf2);
        if ((iVar12 == 0) || (*(int *)(iVar12 + 0x28) != 5)) {
          if (piVar24 != (int *)0x0) {
            (**(code **)(*piVar24 + 0x28))();
          }
          piVar24 = (int *)FUN_00825c50(param_1[0x2f1]);
          if (piVar24 == (int *)0x0) {
            FUN_00a112c0(4,"polty lost target rock (failed to pick up)\n");
            goto LAB_0055f7df;
          }
          ppiVar25 = (int **)(piVar24 + 0xef);
          piVar24[0xcf] = param_1[0xcf];
          piVar24[0xd0] = param_1[0xd0];
          if (*ppiVar25 != (int *)0x0) {
            local_f0 = ppiVar25;
            FUN_004cf210(&local_f0);
          }
          *ppiVar25 = param_1;
          FUN_004cdcf0(ppiVar25);
          ppiVar25 = (int **)(param_1 + 0x2fb);
          if (param_1[0x2fb] != 0) {
            local_f0 = ppiVar25;
            FUN_004cf210(&local_f0);
          }
          *ppiVar25 = piVar24;
          FUN_004cdcf0(ppiVar25);
        }
        else {
          *(undefined4 *)(iVar12 + 0x188) = 0;
          piVar10 = *ppiVar25;
          piVar10[0xcf] = param_1[0xcf];
          piVar10[0xd0] = param_1[0xd0];
          FUN_006a92a0(param_1);
          *(undefined *)((int)*ppiVar25 + 0x171) = 0;
          local_d4 = (int **)*ppiVar25;
          if ((int *)param_1[0x2fb] != (int *)0x0) {
            local_f0 = (int **)(param_1 + 0x2fb);
            FUN_004cf210(&local_f0);
          }
          param_1[0x2fb] = (int)local_d4;
          if (local_d4 != (int **)0x0) {
            FUN_004cdcf0(param_1 + 0x2fb);
          }
          if (*ppiVar25 != (int *)0x0) {
            local_f0 = ppiVar25;
            FUN_004cf210(&local_f0);
          }
          *ppiVar25 = (int *)0x0;
        }
      }
      if ((param_1[0x1f] != 0) && (*(char *)(param_1 + 0x23) != '\0')) goto LAB_0055f8e3;
    }
    param_1[0x2d9] = 4;
    param_1[0x62] = 4;
    if (((piVar24 == (int *)0x0) || (piVar24[10] != 1000)) ||
       ((((piVar24[0x108] != 4 && (piVar24[0x108] != 0x16)) || (local_d9 != '\0')) ||
        (param_1[0x3c7] != -1)))) {
      param_1[0x2f1] = -1;
    }
    else {
      param_1[0x2f1] = -2;
      param_1[0x61] = 0;
    }
  }
LAB_0055f8e3:
  uVar14 = param_1[0x2f1];
  if ((-1 < (int)uVar14) && (uVar14 < 0x1c0)) {
    *(undefined2 *)(local_e8 + uVar14 * 2 + 0xe6c) = 2;
  }
  if (*(char *)((int)param_1 + 0x173) != '\0') {
    if (((param_1[0x2d9] == 8) || (param_1[0x2d9] == 0x10)) &&
       ((uVar14 = param_1[0x2f1], -1 < (int)uVar14 &&
        ((uVar14 < 0x1c0 &&
         (local_f0 = *(int ***)(*(int *)(DAT_00c71678 + 0x18300) + 0x24 + uVar14 * 4),
         local_f0 != (int **)0x0)))))) {
      pcVar3 = (code *)(*local_f0)[5];
      FUN_00431310(param_1);
      (*pcVar3)(0,&local_64);
    }
    if (piVar24 != (int *)0x0) {
      if (piVar24[10] == 5) {
        local_f0 = (int **)((float)param_1[0xd8] * DAT_00baa354);
        local_ec = (float)param_1[0xd9] * DAT_00baa354;
        pcVar3 = *(code **)(*piVar24 + 0x54);
        FUN_00431310(param_1);
        (*pcVar3)(&local_64,&local_f0,0x41000000);
        if (piVar24[0xef] != 0) {
          local_f0 = (int **)(piVar24 + 0xef);
          FUN_004cf210(&local_f0);
        }
        piVar24[0xef] = 0;
        ppiVar25 = (int **)(param_1 + 0x2fb);
        if (*ppiVar25 != (int *)0x0) {
          local_f0 = ppiVar25;
          FUN_004cf210(&local_f0);
        }
        *ppiVar25 = (int *)0x0;
      }
      else {
        if (piVar24[10] == 1000) {
          local_f0 = (int **)((float)param_1[0xd8] * DAT_00baa354);
          local_ec = (float)param_1[0xd9] * DAT_00baa354;
          FUN_006d9550(piVar24 + 0x12,piVar24 + 0x108,&local_f0,piVar24[0x114]);
        }
        (**(code **)(*piVar24 + 0x28))();
      }
    }
    if (local_b0 == 1) {
      uVar14 = param_1[0x2ff];
      if (*(int *)(*(int *)(param_1[0x2fd] + (param_1[0x2fe] - 1U & uVar14 >> 2) * 4) +
                  (uVar14 & 3) * 4) != 0) {
        (**(code **)(**(int **)(*(int *)(param_1[0x2fd] + (param_1[0x2fe] - 1U & uVar14 >> 2) * 4) +
                               (uVar14 & 3) * 4) + 0x28))();
      }
      iVar12 = param_1[0xf0];
      if ((iVar12 != 0) && (*(int *)(iVar12 + 0x28) == 9)) {
        *(uint *)(iVar12 + 0x438) = *(uint *)(iVar12 + 0x438) & 0xffffdfff;
        *(undefined4 *)(iVar12 + 0x418) = 0x3f4ccccd;
        *(undefined4 *)(iVar12 + 0x43c) = *(undefined4 *)(iVar12 + 0x43c);
      }
    }
  }
LAB_0055fb02:
  FUN_00aef12b();
  return;
}

