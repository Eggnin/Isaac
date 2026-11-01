/* Local J460 decompiler output.
 * VA: 0x00450da0
 * Entry: 00450da0
 * Dispatcher: 0x006c2990
 * Types: 901
 * Identities: 901.0.0
 * Evidence: dispatcher=0x006c2990; end=0x00452be0; instructions=1733
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=901; identities=901.0.0; dispatcher=0x006c2990;
   end=0x00452be0; instructions=1733 */

void __fastcall AI_00450da0(int *param_1)

{
  byte bVar1;
  code *pcVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined *puVar6;
  char cVar7;
  uint uVar8;
  float *pfVar9;
  byte **ppbVar10;
  int iVar11;
  undefined4 *puVar12;
  byte **ppbVar13;
  uint uVar14;
  int *piVar15;
  float *pfVar16;
  undefined4 uVar17;
  int *piVar18;
  undefined4 extraout_ECX;
  byte *pbVar19;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  float fVar20;
  int iVar21;
  bool bVar22;
  float fVar23;
  float fVar24;
  int **ppiVar25;
  undefined local_14c [40];
  float local_124;
  float local_120;
  float local_11c;
  float local_118;
  char local_114 [4];
  int local_110;
  float local_10c;
  int **local_108;
  float local_104;
  float local_100;
  int local_fc;
  float local_f8;
  float local_f4;
  float local_ec;
  float local_e8;
  int *local_e4;
  int **local_e0;
  char local_d9;
  float local_d8;
  float local_d4;
  undefined local_d0 [4];
  undefined4 local_cc;
  float local_c4;
  float local_bc;
  int local_3c;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af2420;
  local_1c = ExceptionList;
  uVar8 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  fVar20 = 0.0;
  local_ec = 0.0;
  local_d4 = 0.0;
  local_fc = *(int *)(DAT_00c71678 + 0x18300);
  local_d8 = 0.0;
  local_104 = DAT_00baad50;
  iVar21 = *(int *)(local_fc + 0x1264);
  piVar18 = param_1;
  if (iVar21 != 0) {
    piVar18 = *(int **)(local_fc + 0x125c);
    do {
      iVar11 = *piVar18;
      if ((*(int *)(iVar11 + 0x28) == 0x32a) && (*(int *)(iVar11 + 0x34) == 0x385)) {
        fVar20 = (float)((int)fVar20 + 1);
        if (*(int **)(iVar11 + 0x3bc) == param_1) {
          local_d8 = (float)((int)local_d8 + 1);
        }
        local_ec = fVar20;
        if ((*(int **)(iVar11 + 0x3bc) == (int *)0x0) && (*(int *)(iVar11 + 0x30) == 1)) {
          local_d4 = (float)((int)local_d4 + 1);
        }
      }
      piVar18 = piVar18 + 1;
      iVar21 = iVar21 + -1;
    } while (iVar21 != 0);
  }
  local_d9 = (float)param_1[0xe0] / (float)param_1[0xe1] < DAT_00baa1f8;
  local_24 = uVar8;
  puVar6 = &stack0xfffffffc;
  switch(param_1[0x2d9]) {
  case 0:
    param_1[0x2d9] = 3;
    param_1[0x61] = 3;
    param_1[0xcd] = (int)DAT_00c7b640;
    param_1[0xce] = (int)DAT_00c7b644;
    puStack_20 = &stack0xfffffffc;
    iVar21 = FUN_00738470(piVar18);
    piVar18 = (int *)&DAT_00c33c18;
    if (iVar21 != 0x1c) {
      piVar18 = (int *)&DAT_00c33924;
    }
    if (param_1 + 0x79 != piVar18) {
      iVar21 = piVar18[1];
      iVar11 = piVar18[2];
      iVar3 = piVar18[3];
      param_1[0x79] = *piVar18;
      param_1[0x7a] = iVar21;
      param_1[0x7b] = iVar11;
      param_1[0x7c] = iVar3;
      iVar21 = piVar18[5];
      iVar11 = piVar18[6];
      iVar3 = piVar18[7];
      param_1[0x7d] = piVar18[4];
      param_1[0x7e] = iVar21;
      param_1[0x7f] = iVar11;
      param_1[0x80] = iVar3;
      *(undefined8 *)(param_1 + 0x81) = *(undefined8 *)(piVar18 + 8);
      param_1[0x83] = piVar18[10];
    }
    param_1[0x2e9] = 0;
    goto LAB_004524d5;
  case 3:
    ppbVar10 = (byte **)param_1[0x1f];
    if (ppbVar10 == (byte **)0x0) {
LAB_00450f8e:
      puStack_20 = &stack0xfffffffc;
      cVar7 = FUN_0040a5d0(&DAT_00b1bc54,1);
      if (cVar7 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar13 = ppbVar10;
      if (&DAT_0000000f < ppbVar10[5]) {
        ppbVar13 = (byte **)*ppbVar10;
      }
      pbVar19 = &DAT_00b1bc54;
      do {
        bVar1 = *(byte *)ppbVar13;
        bVar22 = bVar1 < *pbVar19;
        if (bVar1 != *pbVar19) {
LAB_00450f70:
          uVar8 = -(uint)bVar22 | 1;
          goto LAB_00450f75;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar13 + 1);
        bVar22 = bVar1 < pbVar19[1];
        if (bVar1 != pbVar19[1]) goto LAB_00450f70;
        ppbVar13 = (byte **)((int)ppbVar13 + 2);
        pbVar19 = pbVar19 + 2;
      } while (bVar1 != 0);
      uVar8 = 0;
LAB_00450f75:
      if ((uVar8 != 0) ||
         ((puStack_20 = &stack0xfffffffc, *(byte *)(ppbVar10 + 0xd) != 0 &&
          (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x23) == '\0')))) goto LAB_00450f8e;
    }
    param_1[0x2e9] = 0;
    uVar8 = FUN_006eef60();
    if ((uVar8 % 0x28 == 0) && ((int)local_ec < 6)) {
      param_1[0x2d9] = 8;
      puVar6 = puStack_20;
    }
    else {
      uVar8 = FUN_006eef60();
      if (((uVar8 % 0x46 == 0) ||
          ((local_d9 != '\0' && (uVar8 = FUN_006eef60(), uVar8 % 0x28 == 0)))) &&
         ((int)local_d4 < 1)) {
        param_1[0x2d9] = 9;
        puVar6 = puStack_20;
      }
      else {
        uVar8 = FUN_006eef60();
        fVar20 = local_d8;
        if ((uVar8 % 0x2d == 0) && (2 < (int)local_d8)) {
          param_1[0x2d9] = 10;
          puVar6 = puStack_20;
        }
        else {
          uVar8 = FUN_006eef60();
          puVar6 = puStack_20;
          if (local_d9 == '\0') {
            if ((uVar8 % 0x6e == 0) && (2 < (int)fVar20)) {
LAB_00451083:
              param_1[0x2d9] = 0xb;
              param_1[0x2e9] = 1;
              if (local_d9 != '\0') {
                uVar8 = FUN_006eef60();
                param_1[0x2e9] = param_1[0x2e9] + uVar8 % 3 + 2;
                puVar6 = puStack_20;
              }
            }
          }
          else if (uVar8 % 10 == 0) goto LAB_00451083;
        }
      }
    }
    break;
  case 8:
    ppbVar10 = (byte **)param_1[0x1f];
    if (ppbVar10 == (byte **)0x0) {
LAB_00451114:
      puStack_20 = &stack0xfffffffc;
      cVar7 = FUN_0040a5d0(&DAT_00b1d53c,1);
      if (cVar7 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar13 = ppbVar10;
      if (&DAT_0000000f < ppbVar10[5]) {
        ppbVar13 = (byte **)*ppbVar10;
      }
      pbVar19 = &DAT_00b1d53c;
      do {
        bVar1 = *(byte *)ppbVar13;
        bVar22 = bVar1 < *pbVar19;
        if (bVar1 != *pbVar19) {
LAB_004510f6:
          uVar8 = -(uint)bVar22 | 1;
          goto LAB_004510fb;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar13 + 1);
        bVar22 = bVar1 < pbVar19[1];
        if (bVar1 != pbVar19[1]) goto LAB_004510f6;
        ppbVar13 = (byte **)((int)ppbVar13 + 2);
        pbVar19 = pbVar19 + 2;
      } while (bVar1 != 0);
      uVar8 = 0;
LAB_004510fb:
      if ((uVar8 != 0) ||
         ((puStack_20 = &stack0xfffffffc, *(byte *)(ppbVar10 + 0xd) != 0 &&
          (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x23) == '\0')))) goto LAB_00451114;
    }
    if (param_1[0x1f] != 0) {
      cVar7 = FUN_0040add0("Shoot");
      if (cVar7 == '\0') goto LAB_00451540;
      uVar8 = FUN_006eef60();
      for (local_d4 = (float)(uVar8 % 3 + 1); local_d4 != 0.0;
          local_d4 = (float)((int)local_d4 + -1)) {
        local_e0 = (int **)param_1[0xcf];
        local_ec = (float)param_1[0xd0];
        iVar21 = FUN_006eef60();
        local_d8 = (float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa704;
        local_d8 = local_d8 + local_d8;
        fVar20 = local_d8;
        FUN_0041d540();
        local_e8 = fVar20 * DAT_00baa8d0 + (float)local_e0 + 0.0;
        fVar20 = local_d8;
        FUN_0041d520();
        local_e4 = (int *)(fVar20 * DAT_00baa8d0 + local_ec + DAT_00baa8d0);
        pfVar9 = (float *)FUN_00812f50(&local_f8,&local_e8,0x40a00000,0x40a00000,0x40a00000);
        local_e8 = *pfVar9;
        local_e4 = (int *)pfVar9[1];
        iVar21 = FUN_0055c4c0(&local_e8,0);
        ppiVar25 = (int **)(iVar21 + 0x3bc);
        fVar20 = *(float *)(iVar21 + 900) + *(float *)(iVar21 + 900);
        *(int *)(iVar21 + 0x34) = param_1[10];
        *(int *)(iVar21 + 0x38) = param_1[0xb];
        *(float *)(iVar21 + 900) = fVar20;
        *(float *)(iVar21 + 0x380) = fVar20;
        if (*ppiVar25 != (int *)0x0) {
          local_e0 = ppiVar25;
          FUN_004cf210(&local_e0);
        }
        *ppiVar25 = param_1;
        FUN_004cdcf0(ppiVar25);
      }
      uVar17 = FUN_006eef60();
      local_e8 = (float)param_1[0xd8] + 0.0;
      local_e4 = (int *)((float)param_1[0xd9] + DAT_00baa784);
      iVar21 = FUN_00428b20(1000,2,param_1 + 0xcf,&local_e8,0,1,uVar17);
      local_d4 = (float)iVar21;
      iVar11 = FUN_006eef60();
      local_e0 = (int **)(iVar21 + 0x48);
      *(float *)(iVar21 + 0xec) =
           (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
           DAT_00baab30;
      ppbVar10 = *(byte ***)(iVar21 + 0x7c);
      if (ppbVar10 == (byte **)0x0) {
LAB_004513f1:
        cVar7 = FUN_0040a5d0(&DAT_00b1d534,1);
        ppiVar25 = local_e0;
        if (cVar7 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(ppiVar25 + 0x11) = 1;
          iVar21 = (int)local_d4;
        }
      }
      else {
        if (&DAT_0000000f < ppbVar10[5]) {
          ppbVar10 = (byte **)*ppbVar10;
        }
        pbVar19 = &DAT_00b1d534;
        do {
          bVar1 = *(byte *)ppbVar10;
          bVar22 = bVar1 < *pbVar19;
          if (bVar1 != *pbVar19) {
LAB_004513d1:
            uVar8 = -(uint)bVar22 | 1;
            goto LAB_004513d6;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppbVar10 + 1);
          bVar22 = bVar1 < pbVar19[1];
          if (bVar1 != pbVar19[1]) goto LAB_004513d1;
          ppbVar10 = (byte **)((int)ppbVar10 + 2);
          pbVar19 = pbVar19 + 2;
        } while (bVar1 != 0);
        uVar8 = 0;
LAB_004513d6:
        if ((uVar8 != 0) ||
           ((*(char *)(*(int *)(iVar21 + 0x7c) + 0x34) != '\0' && (*(char *)(iVar21 + 0x8c) == '\0')
            ))) goto LAB_004513f1;
      }
      *(undefined4 *)(iVar21 + 0x34c) = 0;
      *(undefined4 *)(iVar21 + 0x350) = 0xc2200000;
      *(undefined4 *)(iVar21 + 0x354) = 500;
      if (*(int *)(DAT_00c71678 + 0x26584) == 0x2c) {
        FUN_0074f690(*(undefined4 *)(DAT_00c71678 + 0x18304));
LAB_0045146a:
        iVar21 = FUN_0082d030(0xffffffff);
      }
      else {
        if (*(int *)(DAT_00c71678 + 0x1830c) != 2) goto LAB_0045146a;
        iVar21 = 0x23;
      }
      puVar12 = (undefined4 *)&DAT_00c33c18;
      if (iVar21 != 0x1c) {
        puVar12 = (undefined4 *)&DAT_00c33924;
      }
      if ((undefined4 *)((int)local_d4 + 0xf0) != puVar12) {
        uVar17 = puVar12[1];
        uVar4 = puVar12[2];
        uVar5 = puVar12[3];
        *(undefined4 *)((int)local_d4 + 0xf0) = *puVar12;
        *(undefined4 *)((int)local_d4 + 0xf4) = uVar17;
        *(undefined4 *)((int)local_d4 + 0xf8) = uVar4;
        *(undefined4 *)((int)local_d4 + 0xfc) = uVar5;
        uVar17 = puVar12[5];
        uVar4 = puVar12[6];
        uVar5 = puVar12[7];
        *(undefined4 *)((int)local_d4 + 0x100) = puVar12[4];
        *(undefined4 *)((int)local_d4 + 0x104) = uVar17;
        *(undefined4 *)((int)local_d4 + 0x108) = uVar4;
        *(undefined4 *)((int)local_d4 + 0x10c) = uVar5;
        *(undefined8 *)((int)local_d4 + 0x110) = *(undefined8 *)(puVar12 + 8);
        *(undefined4 *)((int)local_d4 + 0x118) = puVar12[10];
      }
      local_d4 = DAT_00baa454;
      fVar20 = DAT_00baa528;
      if ((param_1[0x319] == 0x12) || (fVar20 = DAT_00baa2d0, param_1[0x319] == 0x13)) {
        local_d4 = fVar20;
      }
      local_d8 = 1.513402e-43;
      FUN_00956780();
      FUN_0092dc30(local_d8,0x3f800000,2,0,local_d4,0);
LAB_00451540:
      if ((param_1[0x1f] != 0) && (puVar6 = puStack_20, *(char *)(param_1 + 0x23) != '\0')) break;
    }
    goto LAB_00451553;
  case 9:
    ppbVar10 = (byte **)param_1[0x1f];
    if (ppbVar10 == (byte **)0x0) {
LAB_004515b6:
      puStack_20 = &stack0xfffffffc;
      cVar7 = FUN_0040a5d0(&DAT_00b1d554,1);
      if (cVar7 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar13 = ppbVar10;
      if (&DAT_0000000f < ppbVar10[5]) {
        ppbVar13 = (byte **)*ppbVar10;
      }
      pbVar19 = &DAT_00b1d554;
      do {
        bVar1 = *(byte *)ppbVar13;
        bVar22 = bVar1 < *pbVar19;
        if (bVar1 != *pbVar19) {
LAB_00451598:
          uVar8 = -(uint)bVar22 | 1;
          goto LAB_0045159d;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar13 + 1);
        bVar22 = bVar1 < pbVar19[1];
        if (bVar1 != pbVar19[1]) goto LAB_00451598;
        ppbVar13 = (byte **)((int)ppbVar13 + 2);
        pbVar19 = pbVar19 + 2;
      } while (bVar1 != 0);
      uVar8 = 0;
LAB_0045159d:
      if ((uVar8 != 0) ||
         ((puStack_20 = &stack0xfffffffc, *(byte *)(ppbVar10 + 0xd) != 0 &&
          (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x23) == '\0')))) goto LAB_004515b6;
    }
    if (param_1[0x1f] != 0) {
      cVar7 = FUN_0040add0("Shoot");
      if (cVar7 != '\0') {
        iVar21 = FUN_006be840();
        pfVar9 = (float *)(param_1 + 0xcf);
        local_d8 = *(float *)(iVar21 + 0x340) - (float)param_1[0xd0];
        local_d4 = *(float *)(iVar21 + 0x33c) - *pfVar9;
        fVar23 = local_d8 * local_d8 + local_d4 * local_d4;
        FUN_00435a50();
        fVar20 = local_d8;
        local_e8 = local_d4;
        if (DAT_00baa9b4 < fVar23) {
          if (fVar23 <= 0.0) {
            fVar20 = local_d8 * DAT_00baa9b4;
            local_e8 = local_d4 * DAT_00baa9b4;
          }
          else {
            fVar20 = (DAT_00baa454 / fVar23) * local_d8 * DAT_00baa9b4;
            local_e8 = (DAT_00baa454 / fVar23) * local_d4 * DAT_00baa9b4;
          }
        }
        local_e8 = local_e8 + *pfVar9;
        local_e4 = (int *)(fVar20 + (float)param_1[0xd0]);
        FUN_00812f50(&local_f8,&local_e8,0x40a00000,0x40a00000,0x40a00000);
        iVar21 = FUN_0055c4c0(&local_f8,1);
        *(int *)(iVar21 + 0x34) = param_1[10];
        *(int *)(iVar21 + 0x38) = param_1[0xb];
        uVar17 = FUN_006eef60();
        local_e8 = (float)param_1[0xd8] + 0.0;
        local_e4 = (int *)((float)param_1[0xd9] + DAT_00baa784);
        iVar21 = FUN_00428b20(1000,2,pfVar9,&local_e8,0,1,uVar17);
        iVar11 = FUN_006eef60();
        *(float *)(iVar21 + 0xec) =
             (float)((double)iVar11 + (double)(&DAT_00bacb00)[-(iVar11 >> 0x1f)]) * DAT_00ba9ff4 *
             DAT_00baab30;
        FUN_0040a380(&DAT_00b1d534,0);
        *(undefined4 *)(iVar21 + 0x34c) = 0;
        *(undefined4 *)(iVar21 + 0x350) = 0xc2200000;
        *(undefined4 *)(iVar21 + 0x354) = 500;
        iVar11 = FUN_00738470(extraout_ECX);
        puVar12 = (undefined4 *)&DAT_00c33c18;
        if (iVar11 != 0x1c) {
          puVar12 = (undefined4 *)&DAT_00c33924;
        }
        if ((undefined4 *)(iVar21 + 0xf0) != puVar12) {
          uVar17 = puVar12[1];
          uVar4 = puVar12[2];
          uVar5 = puVar12[3];
          *(undefined4 *)(iVar21 + 0xf0) = *puVar12;
          *(undefined4 *)(iVar21 + 0xf4) = uVar17;
          *(undefined4 *)(iVar21 + 0xf8) = uVar4;
          *(undefined4 *)(iVar21 + 0xfc) = uVar5;
          uVar17 = puVar12[5];
          uVar4 = puVar12[6];
          uVar5 = puVar12[7];
          *(undefined4 *)(iVar21 + 0x100) = puVar12[4];
          *(undefined4 *)(iVar21 + 0x104) = uVar17;
          *(undefined4 *)(iVar21 + 0x108) = uVar4;
          *(undefined4 *)(iVar21 + 0x10c) = uVar5;
          *(undefined8 *)(iVar21 + 0x110) = *(undefined8 *)(puVar12 + 8);
          *(undefined4 *)(iVar21 + 0x118) = puVar12[10];
        }
        FUN_006d6ba0(0x6a,0x3f800000,2,0,0x3f800000);
      }
      goto LAB_00451540;
    }
    goto LAB_00451553;
  case 10:
    ppbVar10 = (byte **)param_1[0x1f];
    if (ppbVar10 == (byte **)0x0) {
LAB_00451896:
      puStack_20 = &stack0xfffffffc;
      cVar7 = FUN_0040a5d0(&DAT_00b1d548,1);
      if (cVar7 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar13 = ppbVar10;
      if (&DAT_0000000f < ppbVar10[5]) {
        ppbVar13 = (byte **)*ppbVar10;
      }
      pbVar19 = &DAT_00b1d548;
      do {
        bVar1 = *(byte *)ppbVar13;
        bVar22 = bVar1 < *pbVar19;
        if (bVar1 != *pbVar19) {
LAB_00451878:
          uVar8 = -(uint)bVar22 | 1;
          goto LAB_0045187d;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar13 + 1);
        bVar22 = bVar1 < pbVar19[1];
        if (bVar1 != pbVar19[1]) goto LAB_00451878;
        ppbVar13 = (byte **)((int)ppbVar13 + 2);
        pbVar19 = pbVar19 + 2;
      } while (bVar1 != 0);
      uVar8 = 0;
LAB_0045187d:
      if ((uVar8 != 0) ||
         ((puStack_20 = &stack0xfffffffc, *(byte *)(ppbVar10 + 0xd) != 0 &&
          (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x23) == '\0')))) goto LAB_00451896;
    }
    if (param_1[0x1f] != 0) {
      cVar7 = FUN_0040add0("Shoot");
      if (cVar7 != '\0') {
        FUN_006d6ba0(0x70,0x3f800000,2,0,0x3f800000);
        local_104 = DAT_00baa7e8;
        iVar21 = FUN_006eef60();
        param_1[0x2ec] =
             (int)((float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baab30);
      }
      if (param_1[0x1f] != 0) {
        cVar7 = FUN_0040ae70("Shoot");
        if (cVar7 != '\0') {
          uVar8 = param_1[0x2e9];
          if (((uVar8 & 1) == 0) && ((int)uVar8 < 0xc)) {
            local_e0 = (int **)0x0;
            do {
              local_d4 = ((float)(int)local_e0 * DAT_00baa950 + (float)param_1[0x2ec]) *
                         DAT_00baa088;
              fVar20 = local_d4;
              FUN_0041d540();
              local_d8 = fVar20;
              fVar20 = local_d4;
              FUN_0041d520();
              local_100 = fVar20;
              iVar21 = FUN_006eef60();
              local_d4 = ((float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) *
                          DAT_00ba9ff4 * DAT_00baa834 - DAT_00baa7a4) * DAT_00baa088;
              fVar20 = local_d4;
              FUN_0041d540();
              local_ec = fVar20;
              FUN_0041d520();
              fVar20 = local_d4 * local_d8;
              local_d4 = local_ec * local_d8 - local_d4 * local_100;
              local_ec = local_ec * local_100 + fVar20;
              iVar21 = FUN_006eef60();
              local_100 = (float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) *
                          DAT_00ba9ff4;
              AI_0043ef30();
              if (*(int *)(DAT_00c71678 + 0x26584) == 0x2c) {
                FUN_0074f690(*(undefined4 *)(DAT_00c71678 + 0x18304));
LAB_00451ad7:
                iVar21 = FUN_0082d030(0xffffffff);
              }
              else {
                if (*(int *)(DAT_00c71678 + 0x1830c) != 2) goto LAB_00451ad7;
                iVar21 = 0x23;
              }
              local_cc = 0xc1200000;
              local_3c = (iVar21 != 0x1c) + 3;
              local_c4 = local_100 * _DAT_00baa0cc - DAT_00baa108;
              local_bc = local_100 * DAT_00baa304 + DAT_00baa3e0;
              local_118 = local_100 * DAT_00baa194 + DAT_00baa3a4;
              local_11c = local_d4 * DAT_00baa81c * local_118;
              local_118 = local_ec * DAT_00baa81c * local_118;
              local_100 = (float)param_1[0xcf];
              local_e4 = (int *)param_1[0xd0];
              iVar21 = FUN_006eef60();
              local_d8 = (float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) *
                         DAT_00ba9ff4 * DAT_00baa704;
              local_d8 = local_d8 + local_d8;
              fVar20 = local_d8;
              FUN_0041d540();
              local_124 = fVar20 * DAT_00baa6fc + local_d4 * DAT_00baa8d0 + local_100;
              fVar20 = local_d8;
              FUN_0041d520();
              local_120 = fVar20 * DAT_00baa6fc + local_ec * DAT_00baa8d0 + (float)local_e4;
              FUN_006cb2e0(&local_124,&local_11c,0,local_d0);
              uVar8 = param_1[0x2e9] & 0x80000003;
              bVar22 = uVar8 == 0;
              if ((int)uVar8 < 0) {
                bVar22 = (uVar8 - 1 | 0xfffffffc) == 0xffffffff;
              }
              if (bVar22) {
                uVar17 = FUN_006eef60();
                local_10c = local_d4 * DAT_00baa7b8;
                local_f8 = local_d4 * DAT_00baa904 + (float)param_1[0xcf];
                local_108 = (int **)(local_ec * DAT_00baa7b8);
                local_f4 = local_ec * DAT_00baa904 + (float)param_1[0xd0];
                fVar20 = (float)FUN_00428b20(1000,2,&local_f8,&local_10c,0,1,uVar17);
                local_d8 = fVar20;
                iVar21 = FUN_006eef60();
                *(float *)((int)fVar20 + 0xec) =
                     (float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baab30;
                local_d4 = (float)((int)fVar20 + 0x48);
                ppbVar10 = *(byte ***)((int)fVar20 + 0x7c);
                if (ppbVar10 == (byte **)0x0) {
LAB_00451db1:
                  cVar7 = FUN_0040a5d0(&DAT_00b1d534,1);
                  if (cVar7 != '\0') {
                    FUN_0040a1b0();
                    *(undefined *)((int)fVar20 + 0x8c) = 1;
                  }
                }
                else {
                  ppbVar13 = ppbVar10;
                  if (&DAT_0000000f < ppbVar10[5]) {
                    ppbVar13 = (byte **)*ppbVar10;
                  }
                  pbVar19 = &DAT_00b1d534;
                  do {
                    bVar1 = *(byte *)ppbVar13;
                    bVar22 = bVar1 < *pbVar19;
                    if (bVar1 != *pbVar19) {
LAB_00451d90:
                      uVar8 = -(uint)bVar22 | 1;
                      goto LAB_00451d95;
                    }
                    if (bVar1 == 0) break;
                    bVar1 = *(byte *)((int)ppbVar13 + 1);
                    bVar22 = bVar1 < pbVar19[1];
                    if (bVar1 != pbVar19[1]) goto LAB_00451d90;
                    ppbVar13 = (byte **)((int)ppbVar13 + 2);
                    pbVar19 = pbVar19 + 2;
                  } while (bVar1 != 0);
                  uVar8 = 0;
LAB_00451d95:
                  if ((uVar8 != 0) ||
                     ((*(byte *)(ppbVar10 + 0xd) != 0 && (*(char *)((int)fVar20 + 0x8c) == '\0'))))
                  goto LAB_00451db1;
                }
                iVar21 = DAT_00c71678;
                *(undefined4 *)((int)local_d8 + 0x34c) = 0;
                *(undefined4 *)((int)local_d8 + 0x350) = 0xc1e00000;
                *(undefined4 *)((int)local_d8 + 0x354) = 500;
                if (*(int *)(iVar21 + 0x26584) == 0x2c) {
                  FUN_0074f690(*(undefined4 *)(iVar21 + 0x18304));
LAB_00451e31:
                  iVar21 = FUN_0082d030(0xffffffff);
                }
                else {
                  if (*(int *)(DAT_00c71678 + 0x1830c) != 2) goto LAB_00451e31;
                  iVar21 = 0x23;
                }
                puVar12 = (undefined4 *)&DAT_00c33c18;
                if (iVar21 != 0x1c) {
                  puVar12 = (undefined4 *)&DAT_00c33924;
                }
                if ((undefined4 *)((int)local_d8 + 0xf0U) != puVar12) {
                  uVar17 = puVar12[1];
                  uVar4 = puVar12[2];
                  uVar5 = puVar12[3];
                  *(undefined4 *)((int)local_d8 + 0xf0U) = *puVar12;
                  *(undefined4 *)((int)local_d8 + 0xf4) = uVar17;
                  *(undefined4 *)((int)local_d8 + 0xf8) = uVar4;
                  *(undefined4 *)((int)local_d8 + 0xfc) = uVar5;
                  uVar17 = puVar12[5];
                  uVar4 = puVar12[6];
                  uVar5 = puVar12[7];
                  *(undefined4 *)((int)local_d8 + 0x100) = puVar12[4];
                  *(undefined4 *)((int)local_d8 + 0x104) = uVar17;
                  *(undefined4 *)((int)local_d8 + 0x108) = uVar4;
                  *(undefined4 *)((int)local_d8 + 0x10c) = uVar5;
                  *(undefined8 *)((int)local_d8 + 0x110) = *(undefined8 *)(puVar12 + 8);
                  *(undefined4 *)((int)local_d8 + 0x118) = puVar12[10];
                }
              }
              local_e0 = (int **)((int)local_e0 + 1);
            } while ((int)local_e0 < 6);
            uVar8 = param_1[0x2e9];
          }
          param_1[0x2e9] = uVar8 + 1;
        }
        goto LAB_00451540;
      }
    }
LAB_00451553:
    param_1[0x2d9] = 3;
    puVar6 = puStack_20;
    break;
  case 0xb:
    ppbVar10 = (byte **)param_1[0x1f];
    if (ppbVar10 == (byte **)0x0) {
LAB_00451efe:
      cVar7 = FUN_0040a5d0(&DAT_00b1d568,1);
      puVar6 = puStack_20;
      if (cVar7 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
        puVar6 = puStack_20;
      }
    }
    else {
      ppbVar13 = ppbVar10;
      if (&DAT_0000000f < ppbVar10[5]) {
        ppbVar13 = (byte **)*ppbVar10;
      }
      pbVar19 = &DAT_00b1d568;
      do {
        bVar1 = *(byte *)ppbVar13;
        bVar22 = bVar1 < *pbVar19;
        if (bVar1 != *pbVar19) {
LAB_00451ee0:
          uVar14 = -(uint)bVar22 | 1;
          goto LAB_00451ee5;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar13 + 1);
        bVar22 = bVar1 < pbVar19[1];
        if (bVar1 != pbVar19[1]) goto LAB_00451ee0;
        ppbVar13 = (byte **)((int)ppbVar13 + 2);
        pbVar19 = pbVar19 + 2;
      } while (bVar1 != 0);
      uVar14 = 0;
LAB_00451ee5:
      if ((uVar14 != 0) ||
         ((puVar6 = &stack0xfffffffc, *(byte *)(ppbVar10 + 0xd) != 0 &&
          (puVar6 = &stack0xfffffffc, *(char *)(param_1 + 0x23) == '\0')))) goto LAB_00451efe;
    }
    puStack_20 = puVar6;
    if (param_1[0x1f] != 0) {
      cVar7 = FUN_0040add0(&DAT_00b1d560);
      if (cVar7 != '\0') {
        FUN_006d6ba0(0x12f,0x3f800000,2,0,0x3f800000);
        FUN_006d6ba0(0x1da,0x3f800000,2,0,0x3f800000);
        uVar17 = FUN_006eef60();
        piVar18 = (int *)FUN_00428b20(1000,0x84,param_1 + 0xcf,&DAT_00c7b640,0,0,uVar17);
        (**(code **)(*piVar18 + 0xc))();
        iVar21 = FUN_006be840();
        local_e4 = (int *)(*(float *)(iVar21 + 0x360) * DAT_00baa0bc);
        fVar20 = (float)param_1[0xd0] - *(float *)(iVar21 + 0x340);
        local_100 = *(float *)(iVar21 + 0x364) * DAT_00baa0bc;
        fVar23 = (float)param_1[0xcf] - *(float *)(iVar21 + 0x33c);
        fVar20 = fVar20 * fVar20 + fVar23 * fVar23;
        FUN_00435a50();
        local_f8 = *(float *)(iVar21 + 0x33c) + (float)local_e4 * fVar20;
        local_f4 = *(float *)(iVar21 + 0x340) + local_100 * fVar20;
        FUN_00812f50(&local_10c,&local_f8,0x41a00000,0,0);
        pfVar9 = (float *)(param_1 + 0xcf);
        local_d4 = (float)local_108 - (float)param_1[0xd0];
        local_e0 = (int **)(local_10c - *pfVar9);
        fVar23 = local_d4 * local_d4 + (float)local_e0 * (float)local_e0;
        FUN_00435a50();
        fVar20 = DAT_00baaad4;
        if (local_d9 != '\0') {
          fVar20 = DAT_00baaa5c;
        }
        ppiVar25 = local_e0;
        fVar24 = local_d4;
        if ((fVar20 < fVar23) && (0.0 < fVar23)) {
          fVar24 = (fVar20 / fVar23) * local_d4;
          ppiVar25 = (int **)((fVar20 / fVar23) * (float)local_e0);
        }
        local_104 = DAT_00baa454;
        param_1[0xcd] = (int)((float)ppiVar25 + *pfVar9);
        param_1[0xce] = (int)(fVar24 + (float)param_1[0xd0]);
        fVar20 = ((fVar24 + (float)param_1[0xd0]) - (float)param_1[0xd0]) * DAT_00baa0e4;
        param_1[0x2ee] = (int)((((float)ppiVar25 + *pfVar9) - *pfVar9) * DAT_00baa0e4);
        param_1[0x2ef] = (int)fVar20;
        param_1[0x62] = 0;
      }
      if ((param_1[0x1f] != 0) && (cVar7 = FUN_0040add0(&DAT_00b1d574), cVar7 != '\0')) {
        FUN_006d6ba0(0x12f,0x3f800000,2,0,0x3f800000);
        FUN_006d6ba0(0x30,0x3f800000,2,0,0x3f800000);
        uVar17 = FUN_006eef60();
        piVar18 = param_1 + 0xcf;
        piVar15 = (int *)FUN_00428b20(1000,0x84,piVar18,&DAT_00c7b640,0,0,uVar17);
        (**(code **)(*piVar15 + 0xc))();
        param_1[0xcd] = (int)DAT_00c7b640;
        param_1[0xce] = (int)DAT_00c7b644;
        param_1[0x62] = 4;
        if (local_d9 == '\0') {
          param_1[0x104] = 8;
        }
        else {
          AI_0043ef30();
          iVar21 = FUN_00738470(extraout_ECX_00);
          local_f8 = 10.0;
          local_f4 = 0.0;
          local_3c = (iVar21 != 0x1c) + 3;
          FUN_006cb2e0(piVar18,&local_f8,6,local_d0);
          local_f8 = 4.0;
          local_f4 = 0.0;
          FUN_006cb2e0(piVar18,&local_f8,7,local_d0);
        }
        FUN_0041a790(local_114,piVar18,8);
        local_14 = 0;
        local_e0 = (int **)0x0;
        if (local_108 != (int **)0x0) {
          do {
            piVar18 = *(int **)(local_110 + (int)local_e0 * 4);
            local_e4 = piVar18;
            cVar7 = FUN_006ac560(0);
            if (cVar7 != '\0') {
              pcVar2 = *(code **)(*piVar18 + 0x20);
              FUN_00431310(param_1);
              (*pcVar2)(0x420c0000,4,0,local_14c,0x1e);
            }
            local_e0 = (int **)((int)local_e0 + 1);
          } while (local_e0 < local_108);
        }
        FUN_00703670(8);
        param_1[0x2e9] = param_1[0x2e9] + -1;
        local_14 = 0xffffffff;
        if (local_114[0] == '\0') {
          local_14 = 1;
          FUN_00a648b0(0,0);
          local_14 = 0xffffffff;
        }
      }
    }
    if (((NAN((float)param_1[0xcd]) || NAN(DAT_00c7b640)) == ((float)param_1[0xcd] == DAT_00c7b640))
       || ((NAN((float)param_1[0xce]) || NAN(DAT_00c7b644)) ==
           ((float)param_1[0xce] == DAT_00c7b644))) {
      fVar20 = (float)param_1[0xdb] * DAT_00baa3e0;
      param_1[0xdb] = (int)fVar20;
      param_1[0xd8] = (int)((float)param_1[0x2ee] / fVar20);
      param_1[0xd9] = (int)((float)param_1[0x2ef] / fVar20);
    }
    else {
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa198);
    }
    if (0 < param_1[0x104]) {
      param_1[0x104] = param_1[0x104] + -1;
      AI_0043ef30(uVar8);
      iVar21 = FUN_00738470(extraout_ECX_01);
      local_3c = (iVar21 != 0x1c) + 3;
      uVar8 = FUN_006eef60();
      FUN_006ccdd0((uVar8 & 1) + 1,&DAT_00c7b640,0,local_d0);
    }
    if (param_1[0x2e9] < 1) {
LAB_004524bc:
      if ((param_1[0x1f] != 0) && (puVar6 = puStack_20, *(char *)(param_1 + 0x23) != '\0')) break;
    }
    else if (param_1[0x1f] != 0) {
      cVar7 = FUN_0040add0("Shoot");
      if (cVar7 != '\0') {
        if (param_1[0x1f] == 0) goto LAB_004524cb;
        FUN_00408e00();
      }
      goto LAB_004524bc;
    }
LAB_004524cb:
    param_1[0x2d9] = 3;
LAB_004524d5:
    param_1[0x104] = 0;
    puVar6 = puStack_20;
  }
  puStack_20 = puVar6;
  pfVar9 = (float *)(param_1 + 0xcf);
  pfVar16 = (float *)FUN_00812f50(&local_f8,pfVar9,0x42200000,0,0);
  iVar11 = DAT_00c71678;
  fVar20 = *pfVar16;
  *pfVar9 = fVar20;
  param_1[0xd0] = (int)pfVar16[1];
  iVar21 = *(int *)(iVar11 + 0x18300);
  if ((NAN(fVar20) || NAN(*(float *)(iVar21 + 0x1c))) != (fVar20 == *(float *)(iVar21 + 0x1c))) {
    param_1[0xd8] = (int)&DAT_bf800000;
    iVar21 = *(int *)(iVar11 + 0x18300);
  }
  if ((NAN(fVar20) || NAN(*(float *)(iVar21 + 0x14))) != (fVar20 == *(float *)(iVar21 + 0x14))) {
    param_1[0xd8] = 0x3f800000;
    iVar21 = *(int *)(iVar11 + 0x18300);
  }
  fVar20 = (float)param_1[0xd0];
  if ((NAN(fVar20) || NAN(*(float *)(iVar21 + 0x20))) != (fVar20 == *(float *)(iVar21 + 0x20))) {
    param_1[0xd9] = (int)&DAT_bf800000;
    iVar21 = *(int *)(iVar11 + 0x18300);
  }
  fVar23 = *(float *)(iVar21 + 0x18) + DAT_00baa904;
  if ((NAN(fVar20) || NAN(fVar23)) != (fVar20 == fVar23)) {
    param_1[0xd9] = 0x3f800000;
  }
  local_f4 = (float)param_1[0x5b];
  if (((param_1[0x5a] & 0x200U) == 0) || ((param_1[0x5a] & 0x100U) != 0)) {
    fVar20 = DAT_00baad50;
    if (DAT_00baa120 <= (float)param_1[0xd9]) {
      fVar20 = DAT_00baa454;
    }
    fVar23 = DAT_00baad50;
    if (0.0 < (float)param_1[0xd8]) {
      fVar23 = DAT_00baa454;
    }
    fVar24 = (float)param_1[0xdb] * DAT_00baa3a4;
    fVar23 = fVar23 * DAT_00baa2d0;
    fVar20 = fVar20 * DAT_00baa2d0;
    param_1[0xdb] = (int)fVar24;
    if (NAN(fVar24) == (fVar24 == 0.0)) {
      param_1[0xd8] = (int)((fVar23 * (float)param_1[0xe7]) / fVar24 + (float)param_1[0xd8]);
      param_1[0xd9] = (int)((fVar20 * (float)param_1[0xe7]) / fVar24 + (float)param_1[0xd9]);
    }
    if ((param_1[0xb] == 0) && (param_1[0xc] == 2)) {
      param_1[0xdb] = (int)(fVar24 * DAT_00baa3e0);
    }
    if ((param_1[0x5a] & 0x1000800U) != 0) {
      iVar21 = FUN_006be840();
      local_d4 = (float)((uint)(*(float *)(iVar21 + 0x340) - (float)param_1[0xd0]) ^ DAT_00bacb70);
      local_e0 = (int **)((uint)(*(float *)(iVar21 + 0x33c) - *pfVar9) ^ DAT_00bacb70);
      fVar23 = local_d4 * local_d4 + (float)local_e0 * (float)local_e0;
      FUN_00435a50();
      ppiVar25 = local_e0;
      fVar20 = local_d4;
      if (0.0 < fVar23) {
        fVar20 = (DAT_00baaa78 - fVar23) * DAT_00baa08c;
        if (fVar20 <= 0.0) {
          fVar20 = 0.0;
        }
        if (DAT_00baa454 <= fVar20) {
          fVar20 = DAT_00baa454;
        }
        ppiVar25 = (int **)((fVar20 / fVar23) * (float)local_e0);
        fVar20 = (fVar20 / fVar23) * local_d4;
      }
      fVar23 = (float)param_1[0xdb];
      if (NAN(fVar23) == (fVar23 == 0.0)) {
        param_1[0xd8] =
             (int)(((float)ppiVar25 * (float)param_1[0xe7]) / fVar23 + (float)param_1[0xd8]);
        param_1[0xd9] = (int)((fVar20 * (float)param_1[0xe7]) / fVar23 + (float)param_1[0xd9]);
      }
    }
  }
  else {
    fVar20 = (float)param_1[0xdb] * DAT_00baa3a4;
    param_1[0xdb] = (int)fVar20;
    if ((param_1[0xb] == 0) && (param_1[0xc] == 2)) {
      param_1[0xdb] = (int)(fVar20 * DAT_00baa3e0);
    }
    FUN_007e6300(0);
  }
  if (*(char *)((int)param_1 + 0x173) == '\0') {
    if (local_104 <= 0.0) goto LAB_00452b86;
  }
  else {
    uVar17 = FUN_006eef60();
    piVar18 = (int *)FUN_00428b20(1000,0x84,pfVar9,&DAT_00c7b640,0,0,uVar17);
    fVar20 = DAT_00c37940 * DAT_00baa528;
    piVar18[0x39] = (int)(DAT_00c3793c * DAT_00baa528);
    piVar18[0x3a] = (int)fVar20;
    (**(code **)(*piVar18 + 0xc))();
    local_104 = DAT_00baa75c;
    piVar18 = (int *)FUN_0060af00(0xf,0);
    piVar18[0xcf] = (int)*pfVar9;
    piVar18[0xd0] = param_1[0xd0];
    (**(code **)(*piVar18 + 0xc))();
    uVar8 = FUN_006eef60();
    for (local_d8 = (float)(uVar8 % 3 + 2); local_d8 != 0.0; local_d8 = (float)((int)local_d8 + -1))
    {
      iVar21 = FUN_006eef60();
      fVar20 = (float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) * DAT_00ba9ff4 *
               DAT_00baa704;
      local_e0 = (int **)(fVar20 + fVar20);
      iVar21 = FUN_006eef60();
      local_d4 = (float)((double)iVar21 + (double)(&DAT_00bacb00)[-(iVar21 >> 0x1f)]) * DAT_00ba9ff4
      ;
      ppiVar25 = local_e0;
      FUN_0041d540();
      local_e8 = (float)ppiVar25 * local_d4 * DAT_00baa950 + *pfVar9;
      ppiVar25 = local_e0;
      FUN_0041d520();
      local_e4 = (int *)((float)ppiVar25 * local_d4 * DAT_00baa950 + (float)param_1[0xd0]);
      pfVar16 = (float *)FUN_00812f50(&local_f8,&local_e8,0x40a00000,0x40a00000,0x40a00000);
      local_e8 = *pfVar16;
      local_e4 = (int *)pfVar16[1];
      FUN_0055c4c0(&local_e8,0);
    }
  }
  local_d8 = 0.0;
  if (*(int *)(local_fc + 0x1264) != 0) {
    do {
      iVar21 = *(int *)(*(int *)(local_fc + 0x125c) + (int)local_d8 * 4);
      if (*(int *)(iVar21 + 0x28) == 0x32a) {
        if (*(int **)(iVar21 + 0x3bc) == param_1) {
          if (*(int **)(iVar21 + 0x3bc) != (int *)0x0) {
            local_e4 = (int *)(iVar21 + 0x3bc);
            FUN_004cf210(&local_e4);
          }
          *(undefined4 *)(iVar21 + 0x3bc) = 0;
          local_e0 = (int **)(*(float *)(iVar21 + 0x33c) - (float)param_1[0xcf]);
          local_d4 = *(float *)(iVar21 + 0x340) - (float)param_1[0xd0];
          fVar23 = (float)local_e0 * (float)local_e0 + local_d4 * local_d4;
          FUN_00435a50();
          ppiVar25 = local_e0;
          fVar20 = local_d4;
          if (0.0 < fVar23) {
            ppiVar25 = (int **)((float)local_e0 * (DAT_00baa454 / fVar23));
            fVar20 = local_d4 * (DAT_00baa454 / fVar23);
          }
          fVar23 = *(float *)(iVar21 + 0x36c);
          if (NAN(fVar23) == (fVar23 == 0.0)) {
            *(float *)(iVar21 + 0x360) =
                 ((float)ppiVar25 * local_104 * *(float *)(iVar21 + 0x39c)) / fVar23 +
                 *(float *)(iVar21 + 0x360);
            *(float *)(iVar21 + 0x364) =
                 (fVar20 * local_104 * *(float *)(iVar21 + 0x39c)) / fVar23 +
                 *(float *)(iVar21 + 0x364);
          }
          fVar20 = *(float *)(iVar21 + 900) * DAT_00baa2d0;
          *(undefined4 *)(iVar21 + 0xbb0) = 0;
          if (*(float *)(iVar21 + 0x380) <= fVar20) {
            fVar20 = *(float *)(iVar21 + 0x380);
          }
          *(float *)(iVar21 + 0x380) = fVar20;
        }
      }
      local_d8 = (float)((int)local_d8 + 1);
    } while ((uint)local_d8 < (uint)*(float *)(local_fc + 0x1264));
  }
LAB_00452b86:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

