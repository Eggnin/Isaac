/* Local J460 decompiler output.
 * VA: 0x004c59d0
 * Entry: 004c59d0
 * Dispatcher: 0x006c2990
 * Types: 413
 * Identities: reference_duplicate
 * Evidence: Duplicate seed for focused helper export
 */

/* J460 NPC AI; dispatcher=0x006c2990; types=413; identities=reference_duplicate; Duplicate seed for
   focused helper export */

void __fastcall REFERENCE_Matriarch_AI(int **param_1)

{
  byte bVar1;
  byte **ppbVar2;
  int **ppiVar3;
  void **ppvVar4;
  char cVar5;
  int iVar6;
  int iVar7;
  undefined4 uVar8;
  byte **ppbVar9;
  uint uVar10;
  uint uVar11;
  int ***pppiVar12;
  float *pfVar13;
  byte *pbVar14;
  char *pcVar15;
  int **ppiVar16;
  int **ppiVar17;
  bool bVar18;
  float fVar19;
  int *piVar20;
  int *piVar21;
  float fVar22;
  int *piVar23;
  undefined8 uVar24;
  undefined4 uVar25;
  TypeDescriptor *pTVar26;
  TypeDescriptor *pTVar27;
  undefined4 uVar28;
  float local_14c;
  float local_148;
  int iStack_144;
  float local_140;
  int **local_13c;
  char local_138 [4];
  int local_134;
  float fStack_130;
  float local_12c;
  float fStack_128;
  int **local_124;
  float local_120;
  int **local_11c;
  float local_118;
  float local_114;
  int **local_110;
  int **local_10c;
  int **local_108;
  int **ppiStack_104;
  int **local_100;
  int **local_fc;
  float fStack_f8;
  int **local_f4;
  int **local_f0;
  undefined auStack_ec [20];
  undefined4 uStack_d8;
  uint uStack_94;
  uint local_14;
  void *local_10;
  undefined *puStack_c;
  undefined4 local_8;
  
  local_8 = 0xffffffff;
  puStack_c = &LAB_00af3696;
  local_10 = ExceptionList;
  local_14 = DAT_00bf93b4 ^ (uint)&stack0xfffffffc;
  piVar21 = param_1[0x2f2];
  local_124 = *(int ***)(DAT_00c71678 + 0x18300);
  ppvVar4 = &local_10;
  local_13c = param_1;
  if (((piVar21 == (int *)0x0) && (DAT_00ba9fe4 < (float)param_1[5])) &&
     (param_1[0x2d9] != (int *)0xd)) {
    piVar20 = param_1[0x2f1];
    local_f0 = (int **)((float)param_1[0xe0] - (float)param_1[5]);
    uVar11 = local_14;
    while (((ExceptionList = ppvVar4, ppvVar4 = (void **)ExceptionList, -1 < (int)piVar20 &&
            (piVar20 < &DAT_00000004)) &&
           ((float)local_f0 < *(float *)(&DAT_00b60170 + (int)piVar20 * 4) * (float)param_1[0xe1])))
    {
      local_fc = (int **)0x1c;
      FUN_00956780(uVar11);
      FUN_0092dc30(local_fc,0x3f4ccccd,2,0,0x3f800000,0);
      iVar6 = FUN_006be840();
      local_140 = (float)param_1[0xcf] - *(float *)(iVar6 + 0x33c);
      local_fc = (int **)((float)param_1[0xd0] - *(float *)(iVar6 + 0x340));
      fVar19 = local_140 * local_140 + (float)local_fc * (float)local_fc;
      FUN_00435a50();
      if (DAT_00ba9fe4 < fVar19) {
        local_140 = local_140 * (DAT_00baa454 / fVar19);
        local_fc = (int **)((float)local_fc * (DAT_00baa454 / fVar19));
      }
      iVar6 = (1 < (int)param_1[0x2f1]) + 1;
      do {
        iVar7 = FUN_006eef60();
        local_f4 = (int **)(((float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) *
                             DAT_00ba9ff4 * DAT_00baa9b4 - DAT_00baa910) * DAT_00baa088);
        ppiVar16 = local_f4;
        FUN_0041d540();
        local_100 = ppiVar16;
        FUN_0041d520();
        fVar19 = (float)local_100 * (float)local_fc;
        local_100 = (int **)((float)local_100 * local_140 - (float)local_f4 * (float)local_fc);
        local_f4 = (int **)((float)local_f4 * local_140 + fVar19);
        local_120 = (float)local_100 * DAT_00baa904 + (float)param_1[0xcf];
        local_11c = (int **)((float)local_f4 * DAT_00baa904 + (float)param_1[0xd0]);
        uVar8 = FUN_006eef60();
        iVar7 = FUN_006eef60();
        fVar19 = (float)((double)iVar7 + (double)(&DAT_00bacb00)[-(iVar7 >> 0x1f)]) * DAT_00ba9ff4;
        local_14c = fVar19 + fVar19 + DAT_00baa630;
        local_148 = local_14c * (float)local_f4;
        local_14c = local_14c * (float)local_100;
        iVar7 = HELPER_Entity_SpawnRelay(0x49,0,&local_120,&local_14c,param_1,1000,uVar8);
        local_118 = (float)local_100 * DAT_00baa2d0;
        local_114 = (float)local_f4 * DAT_00baa2d0;
        *(uint *)(iVar7 + 0x168) = *(uint *)(iVar7 + 0x168) & 0xfffffffb | 0x80000000;
        *(undefined4 *)(iVar7 + 0x16c) = *(undefined4 *)(iVar7 + 0x16c);
        uVar8 = FUN_006eef60();
        iVar7 = HELPER_Entity_SpawnRelay(1000,2,&local_120,&local_118,0,4,uVar8);
        *(undefined4 *)(iVar7 + 0x34c) = 0;
        *(undefined4 *)(iVar7 + 0x350) = 0xc1800000;
        iVar6 = iVar6 + -1;
      } while (iVar6 != 0);
      if (((param_1[0x2d9] == (int *)0x6) && (param_1[0x1f] != (int *)0x0)) &&
         ((cVar5 = FUN_0040ae70(&DAT_00b1d560), cVar5 != '\0' &&
          ((param_1[0x1f] == (int *)0x0 || (cVar5 = FUN_0040ae70(&DAT_00b1d574), cVar5 == '\0'))))))
      {
        ppbVar2 = (byte **)param_1[0x1f];
        if (ppbVar2 == (byte **)0x0) {
LAB_004c5e06:
          cVar5 = HELPER_0040a5d0_AnimationPredicateC("AirFlinch",1);
          if (cVar5 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x23) = 1;
          }
        }
        else {
          ppbVar9 = ppbVar2;
          if (&DAT_0000000f < ppbVar2[5]) {
            ppbVar9 = (byte **)*ppbVar2;
          }
          pbVar14 = (byte *)0xb60180;
          do {
            bVar1 = *(byte *)ppbVar9;
            bVar18 = bVar1 < *pbVar14;
            if (bVar1 != *pbVar14) {
LAB_004c5df0:
              uVar10 = -(uint)bVar18 | 1;
              goto LAB_004c5df5;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar9 + 1);
            bVar18 = bVar1 < pbVar14[1];
            if (bVar1 != pbVar14[1]) goto LAB_004c5df0;
            ppbVar9 = (byte **)((int)ppbVar9 + 2);
            pbVar14 = pbVar14 + 2;
          } while (bVar1 != 0);
          uVar10 = 0;
LAB_004c5df5:
          if ((uVar10 != 0) ||
             ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
          goto LAB_004c5e06;
        }
        piVar23 = (int *)(local_140 * DAT_00baa7a4);
        param_1[0x2d9] = (int *)0x7;
        piVar20 = (int *)((float)local_fc * DAT_00baa7a4);
LAB_004c5f07:
        param_1[0xd9] = piVar20;
        param_1[0xd8] = piVar23;
      }
      else if ((param_1[0x2d9] != (int *)&DAT_00000005) && (param_1[0x2d9] != (int *)0x7)) {
        ppbVar2 = (byte **)param_1[0x1f];
        if (ppbVar2 == (byte **)0x0) {
LAB_004c5ebb:
          cVar5 = HELPER_0040a5d0_AnimationPredicateC("Flinch",1);
          if (cVar5 != '\0') {
            FUN_0040a1b0();
            *(undefined *)(param_1 + 0x23) = 1;
          }
        }
        else {
          ppbVar9 = ppbVar2;
          if (&DAT_0000000f < ppbVar2[5]) {
            ppbVar9 = (byte **)*ppbVar2;
          }
          pcVar15 = "Flinch";
          do {
            bVar1 = *(byte *)ppbVar9;
            bVar18 = bVar1 < (byte)*pcVar15;
            if (bVar1 != *pcVar15) {
LAB_004c5ea5:
              uVar10 = -(uint)bVar18 | 1;
              goto LAB_004c5eaa;
            }
            if (bVar1 == 0) break;
            bVar1 = *(byte *)((int)ppbVar9 + 1);
            bVar18 = bVar1 < ((byte *)pcVar15)[1];
            if (bVar1 != ((byte *)pcVar15)[1]) goto LAB_004c5ea5;
            ppbVar9 = (byte **)((int)ppbVar9 + 2);
            pcVar15 = (char *)((byte *)pcVar15 + 2);
          } while (bVar1 != 0);
          uVar10 = 0;
LAB_004c5eaa:
          if ((uVar10 != 0) ||
             ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
          goto LAB_004c5ebb;
        }
        piVar23 = (int *)(local_140 * DAT_00baa87c);
        param_1[0x2d9] = (int *)&DAT_00000005;
        piVar20 = (int *)((float)local_fc * DAT_00baa87c);
        goto LAB_004c5f07;
      }
      piVar20 = (int *)((int)param_1[0x2f1] + 1);
      param_1[0x2f1] = piVar20;
      param_1[0x2f0] = (int *)((int)param_1[0x2f0] + 0x5a);
      ppvVar4 = (void **)ExceptionList;
    }
  }
  ExceptionList = ppvVar4;
  switch(param_1[0x2d9]) {
  case (int *)0x0:
    param_1[0x2d9] = (int *)0x3;
    param_1[0x2f0] = (int *)0x0;
    param_1[0x2f1] = (int *)0x0;
    break;
  case (int *)0x3:
    ppbVar2 = (byte **)param_1[0x1f];
    if (ppbVar2 == (byte **)0x0) {
LAB_004c6196:
      cVar5 = HELPER_0040a5d0_AnimationPredicateC(&DAT_00b1bc54,1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar9 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar9 = (byte **)*ppbVar2;
      }
      pbVar14 = &DAT_00b1bc54;
      do {
        bVar1 = *(byte *)ppbVar9;
        bVar18 = bVar1 < *pbVar14;
        if (bVar1 != *pbVar14) {
LAB_004c6180:
          uVar11 = -(uint)bVar18 | 1;
          goto LAB_004c6185;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar9 + 1);
        bVar18 = bVar1 < pbVar14[1];
        if (bVar1 != pbVar14[1]) goto LAB_004c6180;
        ppbVar9 = (byte **)((int)ppbVar9 + 2);
        pbVar14 = pbVar14 + 2;
      } while (bVar1 != 0);
      uVar11 = 0;
LAB_004c6185:
      if ((uVar11 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_004c6196;
    }
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa2d0);
    if ((((int)param_1[0x2f0] < 0x12d) || ((int)param_1[0x2f1] < 3)) ||
       (uVar11 = FUN_006eef60(), uVar11 % 5 != 0)) {
      uVar11 = FUN_006eef60();
      if (uVar11 % 0xc == 0) {
        FUN_006d0c60(local_138,0x134,0xffffffff);
        local_8 = 0;
        uVar11 = 0;
        fVar19 = 0.0;
        uVar10 = uVar11;
        if (local_12c != 0.0) {
          do {
            uVar11 = uVar10 + 1;
            if (*(int ***)(*(int *)(local_134 + (int)fVar19 * 4) + 0x3bc) != param_1) {
              uVar11 = uVar10;
            }
            fVar19 = (float)((int)fVar19 + 1);
            uVar10 = uVar11;
          } while ((uint)fVar19 < (uint)local_12c);
        }
        local_f4 = (int **)(DAT_00c7169c + 0x2a670);
        local_f0 = (int **)0x13400000;
        uVar10 = 100;
        _Find_lower_bound<>(&local_110,&local_f0);
        if (((*(char *)((int)local_108 + 0xd) == '\0') && (local_108[4] < (int *)0x13400001)) &&
           (local_108 != (int **)*local_f4)) {
          ppiVar16 = local_108 + 0x1a;
        }
        else {
          ppiVar16 = (int **)&DAT_00000050;
        }
        if ((3 < uVar11) ||
           ((float)param_1[0xe0] - (float)*ppiVar16 <
            *(float *)(&DAT_00b60170 + (int)param_1[0x2f1] * 4) * (float)param_1[0xe1])) {
          uVar10 = 0;
        }
        else if ((0x96 < (int)param_1[0x2f0]) || (uVar11 == 0)) {
          uVar10 = 300;
        }
        iVar6 = 100;
        if ((int)param_1[0x2e8] < 1) {
          iVar6 = 200;
        }
        uVar11 = FUN_006eef60();
        uVar11 = uVar11 % (iVar6 + uVar10);
        if (uVar11 < uVar10) {
          FUN_006d6ba0(0x74,0x3f800000,2,0,0x3f800000);
          param_1[0x2d9] = (int *)&DAT_00000008;
        }
        else {
          param_1[0x2d9] = (int *)(10 - (uint)(uVar11 < uVar10 + 100));
        }
        local_8 = 0xffffffff;
        if (local_138[0] == '\0') {
          local_8 = 1;
          FUN_00a648b0(0,0);
          local_8 = 0xffffffff;
        }
      }
      else {
        uVar11 = FUN_006eef60();
        if (uVar11 % 10 == 0) {
          param_1[0x2d9] = (int *)0x6;
          uVar11 = FUN_006eef60();
          pcVar15 = "Jump";
          if ((uVar11 & 1) == 0) {
            pcVar15 = "Jump2";
          }
          HELPER_0040a380_AnimationActionA(pcVar15,0);
        }
      }
    }
    else {
      HELPER_0040a380_AnimationActionA("RageBegin",0);
      param_1[0x2d9] = (int *)0xd;
      param_1[0x104] = (int *)0x0;
      param_1[0x2f0] = (int *)0x190;
    }
    break;
  case (int *)0x5:
    goto LAB_004c780c;
  case (int *)0x6:
    if (param_1[0x1f] != (int *)0x0) {
      cVar5 = FUN_0040add0(&DAT_00b1d560);
      if (cVar5 != '\0') {
        piVar20 = param_1[0xf0];
        if (piVar20 == (int *)0x0) {
          HELPER_Entity_NPC_ProjectileHelper(&local_118,0);
          ppiStack_104 = (int **)(local_118 - (float)param_1[0xcf]);
          local_100 = (int **)(local_114 - (float)param_1[0xd0]);
          ppiVar16 = (int **)((float)ppiStack_104 * (float)ppiStack_104 +
                             (float)local_100 * (float)local_100);
          FUN_00435a50();
          local_f0 = ppiVar16;
          FUN_00a0ffc0();
          if ((float)local_f0 <= DAT_00baa9d0) goto LAB_004c6473;
          uVar11 = FUN_006eef60();
          fVar19 = DAT_00baa910;
          if ((uVar11 & 1) != 0) {
            fVar19 = DAT_00baae2c;
          }
          ppiVar16 = (int **)(fVar19 * DAT_00baa088);
          local_f0 = ppiVar16;
          FUN_0041d540();
          local_f4 = ppiVar16;
          FUN_0041d520();
          fVar19 = (float)ppiStack_104 * (float)local_f0;
          local_f0 = (int **)((float)ppiStack_104 * (float)local_f4 -
                             (float)local_100 * (float)local_f0);
          local_f4 = (int **)((float)local_100 * (float)local_f4 + fVar19);
          local_118 = (float)local_f0 * DAT_00baaa14 + (float)param_1[0xcf];
          local_114 = (float)local_f4 * DAT_00baaa14 + (float)param_1[0xd0];
          cVar5 = FUN_00813360(&local_118,0);
          ppiVar17 = local_f4;
          ppiVar16 = local_f0;
          if (cVar5 == '\0') goto LAB_004c6473;
        }
        else {
          ppiStack_104 = (int **)((float)piVar20[0xcf] - (float)param_1[0xcf]);
          local_100 = (int **)((float)piVar20[0xd0] - (float)param_1[0xd0]);
          FUN_00a0ffc0();
LAB_004c6473:
          ppiVar17 = local_100;
          ppiVar16 = ppiStack_104;
        }
        piVar20 = (int *)((float)ppiVar16 * DAT_00baa7a4);
        piVar23 = (int *)((float)ppiVar17 * DAT_00baa7a4);
        param_1[0xcd] = piVar20;
        param_1[0xd8] = piVar20;
        param_1[0xce] = piVar23;
        param_1[0xd9] = piVar23;
      }
      if ((param_1[0x1f] != (int *)0x0) && (cVar5 = FUN_0040add0(&DAT_00b1d574), cVar5 != '\0')) {
        local_f4 = (int **)0x30;
        FUN_00956780();
        FUN_0092dc30(local_f4,0x3f333333,2,0,0x3f800000,0);
      }
    }
    if (((param_1[0x1f] != (int *)0x0) && (cVar5 = FUN_0040ae70(&DAT_00b1d560), cVar5 != '\0')) &&
       ((param_1[0x1f] == (int *)0x0 || (cVar5 = FUN_0040ae70(&DAT_00b1d574), cVar5 == '\0')))) {
      *(bool *)(param_1 + 0x52) = DAT_00ba9fe4 < (float)param_1[0xcd];
      goto LAB_004c7884;
    }
LAB_004c786c:
    piVar20 = (int *)((float)param_1[0xdb] * DAT_00baa2d0);
    goto LAB_004c787c;
  case (int *)0x7:
    cVar5 = HELPER_0040b030_AnimationEventPredicateD(&DAT_00b1d574);
    if (cVar5 != '\0') {
      FUN_009568e0(0x30,2,0,0x3f800000);
    }
    cVar5 = HELPER_0040b090_AnimationEventPredicateE(&DAT_00b1d560);
    if ((cVar5 == '\0') ||
       (cVar5 = HELPER_0040b090_AnimationEventPredicateE(&DAT_00b1d574), cVar5 != '\0'))
    goto LAB_004c786c;
    goto LAB_004c7884;
  case (int *)0x8:
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa2d0);
    ppbVar2 = (byte **)param_1[0x1f];
    if (ppbVar2 == (byte **)0x0) {
LAB_004c6756:
      cVar5 = HELPER_0040a5d0_AnimationPredicateC(&DAT_00b1d2cc,1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar9 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar9 = (byte **)*ppbVar2;
      }
      pbVar14 = &DAT_00b1d2cc;
      do {
        bVar1 = *(byte *)ppbVar9;
        bVar18 = bVar1 < *pbVar14;
        if (bVar1 != *pbVar14) {
LAB_004c6740:
          uVar11 = -(uint)bVar18 | 1;
          goto LAB_004c6745;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar9 + 1);
        bVar18 = bVar1 < pbVar14[1];
        if (bVar1 != pbVar14[1]) goto LAB_004c6740;
        ppbVar9 = (byte **)((int)ppbVar9 + 2);
        pbVar14 = pbVar14 + 2;
      } while (bVar1 != 0);
      uVar11 = 0;
LAB_004c6745:
      if ((uVar11 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_004c6756;
    }
    if (param_1[0x1f] != (int *)0x0) {
      cVar5 = FUN_0040add0("Shoot");
      if (cVar5 != '\0') {
        local_f4 = (int **)0x109;
        FUN_00956780();
        FUN_0092dc30(local_f4,0x3f800000,2,0,0x3f800000,0);
        local_114 = -4.0;
        fStack_f8 = DAT_00baa87c;
        if (*(char *)(param_1 + 0x52) != '\0') {
          fStack_f8 = DAT_00baadec;
        }
        fStack_f8 = fStack_f8 + (float)param_1[0xcf];
        local_f4 = (int **)((float)param_1[0xd0] - DAT_00baa75c);
        uVar8 = FUN_006eef60();
        local_118 = DAT_00baadc0;
        if (*(char *)(param_1 + 0x52) != '\0') {
          local_118 = DAT_00baa81c;
        }
        iVar6 = HELPER_Entity_SpawnRelay(0x134,0,&fStack_f8,&local_118,param_1,0,uVar8);
        ppiVar16 = (int **)(iVar6 + 0x3bc);
        if (*(int *)(iVar6 + 0x3bc) != 0) {
          local_f0 = ppiVar16;
          FUN_004cf210(&local_f0);
        }
        *ppiVar16 = (int *)param_1;
        FUN_004cdcf0(ppiVar16);
        *(uint *)(iVar6 + 0x168) = *(uint *)(iVar6 + 0x168) & 0xfffffffb;
        *(undefined4 *)(iVar6 + 0x16c) = *(undefined4 *)(iVar6 + 0x16c);
        FUN_00547040();
        uVar8 = FUN_006eef60();
        HELPER_Entity_SpawnRelay(1000,0xf,&fStack_f8,&DAT_00c7b640,0,0,uVar8);
        local_118 = *(float *)(iVar6 + 0x360) * DAT_00baa1f8;
        local_114 = *(float *)(iVar6 + 0x364) * DAT_00baa1f8;
        uVar8 = FUN_006eef60();
        iVar7 = HELPER_Entity_SpawnRelay(1000,2,&fStack_f8,&local_118,0,3,uVar8);
        iVar6 = DAT_00c7169c;
        local_f0 = (int **)0x13400000;
        *(undefined4 *)(iVar7 + 0x34c) = 0;
        *(undefined4 *)(iVar7 + 0x350) = 0xc1800000;
        _Find_lower_bound<>(&local_110,&local_f0);
        if (((*(char *)((int)local_108 + 0xd) != '\0') || ((int *)0x13400000 < local_108[4])) ||
           (ppiVar16 = local_108 + 0x1a, local_108 == *(int ***)(iVar6 + 0x2a670))) {
          ppiVar16 = (int **)&DAT_00000050;
        }
        piVar20 = param_1[0xe0];
        local_f4 = (int **)((float)piVar20 - (float)*ppiVar16);
        local_f0 = (int **)(*(float *)(&DAT_00b60170 + (int)param_1[0x2f1] * 4) *
                            (float)param_1[0xe1] + DAT_00baa454);
        pppiVar12 = &local_f0;
        if ((float)local_f0 <= (float)(int **)((float)piVar20 - (float)*ppiVar16)) {
          pppiVar12 = &local_f4;
        }
        ppiVar16 = *pppiVar12;
        if ((float)ppiVar16 < (float)piVar20) {
          uVar24 = FUN_00435c70();
          (*(code *)((ulonglong)uVar24 >> 0x20))
                    ((float)piVar20 - (float)ppiVar16,0,0,(int)uVar24,0x1e);
        }
      }
      goto LAB_004c7884;
    }
    goto LAB_004c7897;
  case (int *)0x9:
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa2d0);
    ppbVar2 = (byte **)param_1[0x1f];
    if (ppbVar2 == (byte **)0x0) {
LAB_004c6a96:
      cVar5 = HELPER_0040a5d0_AnimationPredicateC(&DAT_00b1d2ec,1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar9 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar9 = (byte **)*ppbVar2;
      }
      pbVar14 = &DAT_00b1d2ec;
      do {
        bVar1 = *(byte *)ppbVar9;
        bVar18 = bVar1 < *pbVar14;
        if (bVar1 != *pbVar14) {
LAB_004c6a80:
          uVar11 = -(uint)bVar18 | 1;
          goto LAB_004c6a85;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar9 + 1);
        bVar18 = bVar1 < pbVar14[1];
        if (bVar1 != pbVar14[1]) goto LAB_004c6a80;
        ppbVar9 = (byte **)((int)ppbVar9 + 2);
        pbVar14 = pbVar14 + 2;
      } while (bVar1 != 0);
      uVar11 = 0;
LAB_004c6a85:
      if ((uVar11 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_004c6a96;
    }
    if (param_1[0x1f] == (int *)0x0) goto LAB_004c7897;
    cVar5 = FUN_0040add0("Shoot");
    if (cVar5 != '\0') {
      local_f4 = (int **)0xd5;
      FUN_00956780();
      FUN_0092dc30(local_f4,0x3f4ccccd,2,0,0x3f800000,0);
      local_f4 = (int **)0x0;
      do {
        local_f0 = (int **)((float)((double)(int)local_f4 +
                                   (double)(&DAT_00bacb00)[-((int)local_f4 >> 0x1f)]) * DAT_00baa910
                           * DAT_00baa088);
        ppiVar16 = local_f0;
        FUN_0041d520();
        local_fc = ppiVar16;
        ppiVar16 = local_f0;
        FUN_0041d540();
        local_11c = (int **)((float)local_fc * DAT_00baa85c);
        local_120 = (float)ppiVar16 * DAT_00baa85c * DAT_00baa500;
        local_fc = local_11c;
        uVar8 = FUN_006eef60();
        local_118 = local_120 + (float)param_1[0xcf];
        local_114 = (float)local_fc + (float)param_1[0xd0];
        uVar28 = 0;
        pTVar27 = &IsaacRepentancePlus::Entity_NPC::RTTI_Type_Descriptor;
        pTVar26 = &IsaacRepentancePlus::Entity::RTTI_Type_Descriptor;
        uVar25 = 0;
        uVar8 = HELPER_Entity_SpawnRelay(0x27,0x16,&local_118,&local_120,param_1,2,uVar8);
        piVar20 = (int *)__RTDynamicCast(uVar8,uVar25,pTVar26,pTVar27,uVar28);
        ppiVar16 = (int **)(piVar20 + 0xef);
        piVar20[0x2d9] = 0;
        if (piVar20[0xef] != 0) {
          local_f0 = ppiVar16;
          FUN_004cf210(&local_f0);
        }
        *ppiVar16 = (int *)param_1;
        FUN_004cdcf0(ppiVar16);
        (**(code **)(*piVar20 + 0xc))();
        local_14c = (float)piVar20[0xd8] * DAT_00baa1f8;
        ppiStack_104 = (int **)piVar20[0xcf];
        local_148 = (float)piVar20[0xd9] * DAT_00baa1f8;
        local_100 = (int **)piVar20[0xd0];
        uVar8 = FUN_006eef60();
        iVar6 = HELPER_Entity_SpawnRelay(1000,2,&ppiStack_104,&local_14c,0,3,uVar8);
        *(undefined4 *)(iVar6 + 0x34c) = 0;
        *(undefined4 *)(iVar6 + 0x350) = 0xc1800000;
        fStack_128 = (float)piVar20[0xd8] * DAT_00baa2d0;
        iStack_144 = piVar20[0xcf];
        local_124 = (int **)((float)piVar20[0xd9] * DAT_00baa2d0);
        local_140 = (float)piVar20[0xd0];
        uVar8 = FUN_006eef60();
        iVar6 = HELPER_Entity_SpawnRelay(1000,2,&iStack_144,&fStack_128,0,2,uVar8);
        *(undefined4 *)(iVar6 + 0x34c) = 0;
        *(undefined4 *)(iVar6 + 0x350) = 0xc1800000;
        fStack_130 = (float)piVar20[0xd8] * DAT_00baa304;
        local_10c = (int **)piVar20[0xcf];
        local_12c = (float)piVar20[0xd9] * DAT_00baa304;
        local_108 = (int **)piVar20[0xd0];
        uVar8 = FUN_006eef60();
        iVar6 = HELPER_Entity_SpawnRelay(1000,2,&local_10c,&fStack_130,0,1,uVar8);
        *(undefined4 *)(iVar6 + 0x34c) = 0;
        *(undefined4 *)(iVar6 + 0x350) = 0xc1800000;
        local_f4 = (int **)((int)local_f4 + 1);
      } while (local_f4 < &DAT_00000008);
    }
    goto LAB_004c7884;
  case (int *)0xa:
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa2d0);
    ppbVar2 = (byte **)param_1[0x1f];
    if (ppbVar2 == (byte **)0x0) {
LAB_004c6e76:
      cVar5 = HELPER_0040a5d0_AnimationPredicateC(&DAT_00b1d2e4,1);
      if (cVar5 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar9 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar9 = (byte **)*ppbVar2;
      }
      pbVar14 = &DAT_00b1d2e4;
      do {
        bVar1 = *(byte *)ppbVar9;
        bVar18 = bVar1 < *pbVar14;
        if (bVar1 != *pbVar14) {
LAB_004c6e60:
          uVar11 = -(uint)bVar18 | 1;
          goto LAB_004c6e65;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar9 + 1);
        bVar18 = bVar1 < pbVar14[1];
        if (bVar1 != pbVar14[1]) goto LAB_004c6e60;
        ppbVar9 = (byte **)((int)ppbVar9 + 2);
        pbVar14 = pbVar14 + 2;
      } while (bVar1 != 0);
      uVar11 = 0;
LAB_004c6e65:
      if ((uVar11 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_004c6e76;
    }
    iVar6 = FUN_0040a780();
    if (iVar6 == 0) {
      iVar6 = FUN_006be840();
      local_f0 = (int **)(*(float *)(iVar6 + 0x360) * DAT_00baa120);
      local_f4 = (int **)(*(float *)(iVar6 + 0x364) * DAT_00baa120);
      fVar22 = (float)param_1[0xcf] - *(float *)(iVar6 + 0x33c);
      fVar19 = (float)param_1[0xd0] - *(float *)(iVar6 + 0x340);
      fVar19 = fVar19 * fVar19 + fVar22 * fVar22;
      FUN_00435a50();
      local_10c = (int **)((float)local_f0 * fVar19 + *(float *)(iVar6 + 0x33c));
      local_108 = (int **)(fVar19 * (float)local_f4 + *(float *)(iVar6 + 0x340));
      FUN_00812f50(&fStack_130,&local_10c,0x40800000,0x40800000,0x40800000);
      *(bool *)(param_1 + 0x52) =
           (float)param_1[0xcf] <= fStack_130 && fStack_130 != (float)param_1[0xcf];
    }
    if (param_1[0x1f] == (int *)0x0) goto LAB_004c7897;
    cVar5 = FUN_0040add0("Shoot");
    if (cVar5 != '\0') {
      local_f4 = (int **)0x13e;
      FUN_00956780();
      FUN_0092dc30(local_f4,0x3f800000,2,0,0x3f4ccccd,0);
      local_f4 = (int **)0xd4;
      FUN_00956780();
      FUN_0092dc30(local_f4,0x3f4ccccd,2,0,0x3f800000,0);
      fVar19 = DAT_00baae28;
      if (*(char *)(param_1 + 0x52) != '\0') {
        fVar19 = DAT_00baa904;
      }
      ppiStack_104 = (int **)(fVar19 + (float)param_1[0xcf]);
      local_100 = (int **)((float)param_1[0xd0] + DAT_00baa6fc);
      iVar6 = FUN_006be840();
      local_f4 = (int **)(*(float *)(iVar6 + 0x364) * DAT_00baa120);
      local_f0 = (int **)(*(float *)(iVar6 + 0x360) * DAT_00baa120);
      fVar22 = (float)param_1[0xcf] - *(float *)(iVar6 + 0x33c);
      fVar19 = (float)param_1[0xd0] - *(float *)(iVar6 + 0x340);
      fVar19 = fVar19 * fVar19 + fVar22 * fVar22;
      FUN_00435a50();
      local_10c = (int **)((float)local_f0 * fVar19 + *(float *)(iVar6 + 0x33c));
      local_108 = (int **)((float)local_f4 * fVar19 + *(float *)(iVar6 + 0x340));
      FUN_00812f50(&fStack_130,&local_10c,0x40800000,0x40800000,0x40800000);
      local_fc = (int **)DAT_00baaa78;
      if (*(char *)(param_1 + 0x52) != '\0') {
        local_fc = (int **)0x0;
      }
      fVar19 = local_12c - (float)local_100;
      FUN_00499d60();
      fVar19 = fVar19 * DAT_00baa948 - (float)local_fc;
      FUN_00682740();
      if (fVar19 <= DAT_00baae2c) {
        fVar19 = DAT_00baae2c;
      }
      if (DAT_00baa910 <= fVar19) {
        fVar19 = DAT_00baa910;
      }
      local_fc = (int **)(((float)local_fc + fVar19) * DAT_00baa088);
      ppiVar16 = local_fc;
      FUN_0041d520();
      local_f0 = ppiVar16;
      ppiVar16 = local_fc;
      FUN_0041d540();
      local_120 = (float)ppiVar16 * DAT_00baa81c;
      local_11c = (int **)((float)local_f0 * DAT_00baa81c);
      AI_0043ef30();
      uStack_94 = uStack_94 | 0x500;
      uStack_d8 = 0x40000000;
      HELPER_Entity_NPC_FireProjectiles(&ppiStack_104,&local_120,0,auStack_ec);
      local_10c = (int **)0x0;
      local_108 = (int **)0xc1200000;
      HELPER_004c5980_MatriarchProjectileTailCandidate(&local_10c,&local_120);
      uVar11 = FUN_006eef60();
      param_1[0x2e8] = (int *)(uVar11 % 0x3c + 0x5a);
    }
    goto LAB_004c7884;
  case (int *)0xd:
    piVar20 = param_1[0x104];
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa2d0);
    if (piVar20 == (int *)0x0) {
      cVar5 = HELPER_0040b030_AnimationEventPredicateD("Shoot");
      if (cVar5 != '\0') {
        FUN_006d6ba0(0x74,0x3f800000,2,0,0x3f800000);
        param_1[0x104] = (int *)0x1;
        pfVar13 = (float *)HELPER_Entity_NPC_ProjectileHelper(&local_10c,0);
        *(bool *)(param_1 + 0x52) =
             (float)param_1[0xcf] <= *pfVar13 && *pfVar13 != (float)param_1[0xcf];
        if (param_1[0xf0] != (int *)0x0) {
          FUN_006a92a0(0);
          *(undefined *)(param_1[0xf0] + 0x5d) = 1;
          piVar20 = param_1[0xf0];
          piVar20[0x5b] = piVar20[0x5b] | 0x2000;
          piVar20[0x5a] = piVar20[0x5a];
          uVar8 = FUN_0042cfd0(0x3ecccccd,0x3da3d70a,0x3d4ccccd);
          FUN_0040b220(0);
          FUN_004071f0(uVar8);
          uVar24 = FUN_0042cfd0(0x3f4ccccd,0x3e99999a,0x3e4ccccd);
          (*(code *)((ulonglong)uVar24 >> 0x20))((int)uVar24,0xf,0xff,1,1);
          FUN_006a92e0(0);
        }
      }
    }
    else if ((int)piVar20 < 1) {
      if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x2d9] = (int *)0x3;
      }
    }
    else {
      if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
        HELPER_0040a380_AnimationActionA("RageLoop",0);
        piVar20 = param_1[0x104];
      }
      uVar11 = (uint)piVar20 & 0x80000007;
      bVar18 = uVar11 == 0;
      if ((int)uVar11 < 0) {
        bVar18 = (uVar11 - 1 | 0xfffffff8) == 0xffffffff;
      }
      if ((bVar18) && (uVar11 = FUN_006eef60(), (uVar11 & 1) == 0)) {
        FUN_009568e0(0x109,2,0,0x3f800000);
        pfVar13 = (float *)HELPER_Entity_NPC_ProjectileHelper(&fStack_130,0);
        local_10c = (int **)(*pfVar13 - (float)param_1[0xcf]);
        local_108 = (int **)(pfVar13[1] - (float)param_1[0xd0]);
        pfVar13 = (float *)FUN_00a10030(&local_118);
        iVar6 = FUN_006eef60();
        local_f0 = (int **)(((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                             DAT_00ba9ff4 * DAT_00baaa78 - DAT_00baa9b4) * DAT_00baa088);
        ppiVar16 = local_f0;
        FUN_0041d540();
        local_124 = ppiVar16;
        FUN_0041d520();
        fVar19 = (float)local_f0 * *pfVar13;
        local_f0 = (int **)((float)local_124 * *pfVar13 - (float)local_f0 * pfVar13[1]);
        local_124 = (int **)((float)local_124 * pfVar13[1] + fVar19);
        fStack_f8 = (float)local_f0 * DAT_00baa87c + (float)param_1[0xcf];
        local_f4 = (int **)((float)local_124 * DAT_00baa87c + (float)param_1[0xd0]);
        uVar8 = FUN_006eef60();
        iVar6 = FUN_006eef60();
        fVar19 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa784 + DAT_00baa784;
        local_10c = (int **)((float)local_f0 * fVar19);
        local_108 = (int **)((float)local_124 * fVar19);
        iVar6 = HELPER_Entity_SpawnRelay(0x134,0,&fStack_f8,&local_10c,param_1,0,uVar8);
        fVar19 = *(float *)(iVar6 + 900) * DAT_00baa2d0;
        *(uint *)(iVar6 + 0x168) = *(uint *)(iVar6 + 0x168) & 0xfffffffb;
        *(uint *)(iVar6 + 0x16c) = *(uint *)(iVar6 + 0x16c) | 0x2000;
        *(undefined *)(iVar6 + 0x174) = 1;
        *(float *)(iVar6 + 900) = fVar19;
        *(float *)(iVar6 + 0x380) = fVar19;
        uVar8 = FUN_0042cfd0(0x3ecccccd,0x3da3d70a,0x3d4ccccd);
        FUN_0040b220(0);
        FUN_004071f0(uVar8);
        uVar24 = FUN_0042cfd0(0x3f4ccccd,0x3e99999a,0x3e4ccccd);
        (*(code *)((ulonglong)uVar24 >> 0x20))((int)uVar24,0xf,0xff,1,1);
        uVar8 = FUN_006eef60();
        HELPER_Entity_SpawnRelay(1000,0xf,&fStack_f8,&DAT_00c7b640,0,0,uVar8);
        local_10c = (int **)(*(float *)(iVar6 + 0x360) * DAT_00baa1f8);
        local_108 = (int **)(*(float *)(iVar6 + 0x364) * DAT_00baa1f8);
        fStack_130 = 0.0;
        local_12c = -16.0;
        HELPER_004c5980_MatriarchProjectileTailCandidate(&fStack_130,&local_10c);
      }
      param_1[0x104] = (int *)((int)param_1[0x104] + 1);
      param_1[0x2f0] = (int *)((int)param_1[0x2f0] + -2);
      if ((int)param_1[0x2f0] < 1) {
        param_1[0x2f0] = (int *)0x0;
        param_1[0x104] = (int *)0xffffffff;
        HELPER_0040a380_AnimationActionA("RageEnd",0);
      }
    }
    goto LAB_004c780c;
  case (int *)0x10:
    param_1[0xdb] = (int *)((float)param_1[0xdb] * DAT_00baa2d0);
    HELPER_0040a380_AnimationActionA("Death",0);
    if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
      FUN_009568e0(0x8d,2,0,0x3f800000);
      uVar8 = FUN_006eef60();
      HELPER_Entity_SpawnRelay(1000,0x4d,param_1 + 0xcf,&DAT_00c7b640,param_1,0,uVar8);
      uVar11 = 0;
      do {
        iVar6 = FUN_006eef60();
        fVar19 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4 *
                 DAT_00baa704;
        local_f0 = (int **)(fVar19 + fVar19);
        ppiVar16 = local_f0;
        FUN_0041d540();
        local_124 = ppiVar16;
        ppiVar16 = local_f0;
        FUN_0041d520();
        local_120 = (float)local_124 * DAT_00baa904 + (float)param_1[0xcf];
        local_11c = (int **)((float)ppiVar16 * DAT_00baa904 + (float)param_1[0xd0]);
        local_f4 = ppiVar16;
        uVar8 = FUN_006eef60();
        iVar6 = FUN_006eef60();
        fVar19 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) * DAT_00ba9ff4;
        fVar19 = fVar19 + fVar19 + DAT_00baa630;
        local_108 = (int **)(fVar19 * (float)local_f4);
        local_10c = (int **)(fVar19 * (float)local_124);
        iVar6 = HELPER_Entity_SpawnRelay
                          ((uVar11 != 0) + 'H',0,&local_120,&local_10c,param_1,1000,uVar8);
        fStack_130 = (float)local_124 * DAT_00baa2d0;
        local_12c = (float)local_f4 * DAT_00baa2d0;
        *(uint *)(iVar6 + 0x168) = *(uint *)(iVar6 + 0x168) & 0xfffffffb | 0x80000000;
        *(undefined4 *)(iVar6 + 0x16c) = *(undefined4 *)(iVar6 + 0x16c);
        uVar8 = FUN_006eef60();
        iVar6 = HELPER_Entity_SpawnRelay(1000,2,&local_120,&fStack_130,0,4,uVar8);
        uVar11 = uVar11 + 1;
        *(undefined4 *)(iVar6 + 0x34c) = 0;
        *(undefined4 *)(iVar6 + 0x350) = 0xc1800000;
      } while (uVar11 < 3);
      piVar21 = param_1[0xf0];
      ppiVar16 = param_1 + 0xf0;
      if (piVar21 != (int *)0x0) {
        if (piVar21[0xef] != 0) {
          local_f0 = (int **)(piVar21 + 0xef);
          FUN_004cf210(&local_f0);
        }
        piVar21[0xef] = 0;
        if (*ppiVar16 != (int *)0x0) {
          local_f0 = ppiVar16;
          FUN_004cf210(&local_f0);
        }
        *ppiVar16 = (int *)0x0;
      }
      uVar8 = FUN_006eef60();
      ppiVar16 = param_1 + 0xcf;
      iVar6 = HELPER_Entity_SpawnRelay(0x134,0,ppiVar16,&DAT_00c7b640,param_1,0,uVar8);
      if (*(int *)(iVar6 + 0x3bc) != 0) {
        local_f0 = (int **)(iVar6 + 0x3bc);
        FUN_004cf210(&local_f0);
      }
      *(undefined4 *)(iVar6 + 0x3bc) = param_1;
      FUN_004cdcf0((undefined4 *)(iVar6 + 0x3bc));
      *(uint *)(iVar6 + 0x168) = *(uint *)(iVar6 + 0x168) & 0xfffffffb;
      *(undefined4 *)(iVar6 + 0x16c) = *(undefined4 *)(iVar6 + 0x16c);
      FUN_00547040();
      local_f0 = (int **)param_1[0xe1];
      FUN_006ae630();
      FUN_006c0f30(0x1c,0,1000,0xffffffff);
      param_1[0xe1] = (int *)local_f0;
      piVar21 = (int *)((float)local_f0 * DAT_00baa198);
      param_1[0xd] = (int *)0x19d;
      param_1[0x62] = (int *)&DAT_00000004;
      param_1[0xe0] = piVar21;
      uVar8 = FUN_006eef60();
      piVar21 = (int *)HELPER_Entity_SpawnRelay
                                 (param_1[10],param_1[0xb],ppiVar16,&DAT_00c7b640,param_1,
                                  param_1[0xc],uVar8);
      uVar8 = FUN_006eef60();
      iVar6 = HELPER_Entity_SpawnRelay
                        (param_1[10],param_1[0xb],ppiVar16,&DAT_00c7b640,param_1,param_1[0xc],uVar8)
      ;
      piVar21[0x5a] = piVar21[0x5a] & 0xfffffffb;
      piVar21[0x5b] = piVar21[0x5b];
      *(uint *)(iVar6 + 0x168) = *(uint *)(iVar6 + 0x168) & 0xfffffffb;
      *(undefined4 *)(iVar6 + 0x16c) = *(undefined4 *)(iVar6 + 0x16c);
      if (param_1[0xf0] != (int *)0x0) {
        local_f0 = param_1 + 0xf0;
        FUN_004cf210(&local_f0);
      }
      param_1[0xf0] = piVar21;
      FUN_004cdcf0(param_1 + 0xf0);
      if (piVar21[0xef] != 0) {
        local_f0 = (int **)(piVar21 + 0xef);
        FUN_004cf210(&local_f0);
      }
      piVar21[0xef] = (int)param_1;
      FUN_004cdcf0(piVar21 + 0xef);
      if (piVar21[0xf0] != 0) {
        local_f0 = (int **)(piVar21 + 0xf0);
        FUN_004cf210(&local_f0);
      }
      piVar21[0xf0] = iVar6;
      FUN_004cdcf0(piVar21 + 0xf0);
      if (*(int *)(iVar6 + 0x3bc) != 0) {
        local_f0 = (int **)(iVar6 + 0x3bc);
        FUN_004cf210(&local_f0);
      }
      *(int **)(iVar6 + 0x3bc) = piVar21;
      FUN_004cdcf0((int **)(iVar6 + 0x3bc));
      param_1[0x5a] = (int *)((uint)param_1[0x5a] & 0xfffbffff);
      param_1[0x2f0] = (int *)0x0;
      param_1[0xd5] = (int *)0x5dc;
      param_1[0x5b] = param_1[0x5b];
      piVar21[0xd5] = 500;
      piVar21[0x57] = 0x3eae147b;
      piVar21[0x2f0] = 1;
      piVar20 = param_1[0xe1];
      piVar21[0x5a] = piVar21[0x5a] | 0x80000000;
      piVar21[0xe1] = (int)piVar20;
      piVar21[0xe0] = (int)piVar20;
      piVar21[0x5b] = piVar21[0x5b];
      *(undefined4 *)(iVar6 + 0x354) = 0xfffffe0c;
      *(undefined4 *)(iVar6 + 0x15c) = 0x3e851eb8;
      *(undefined4 *)(iVar6 + 0xbc0) = 2;
      piVar21 = param_1[0xe1];
      *(uint *)(iVar6 + 0x168) = *(uint *)(iVar6 + 0x168) | 0x80000000;
      *(int **)(iVar6 + 900) = piVar21;
      *(int **)(iVar6 + 0x380) = piVar21;
      *(undefined4 *)(iVar6 + 0x16c) = *(undefined4 *)(iVar6 + 0x16c);
      iVar6 = FUN_006be840();
      local_10c = (int **)(*(float *)(iVar6 + 0x33c) - (float)param_1[0xcf]);
      local_108 = (int **)(*(float *)(iVar6 + 0x340) - (float)param_1[0xd0]);
      FUN_006d6ba0(0x73,0x3f800000,2,0,0x3f800000);
      ppiVar16 = (int **)FUN_0067f170();
      param_1[0x2ec] = *ppiVar16;
      param_1[0x2ed] = ppiVar16[1];
      param_1[0x2d9] = (int *)&DAT_00000008;
      param_1[0x104] = (int *)0x0;
      param_1[0x106] = DAT_00c7b640;
      param_1[0x107] = DAT_00c7b644;
      param_1[0x108] = DAT_00c7b640;
      param_1[0x109] = DAT_00c7b644;
      goto LAB_004c802f;
    }
  }
LAB_004c5f79:
  if (0 < (int)param_1[0x2e8]) {
    param_1[0x2e8] = (int *)((int)param_1[0x2e8] + -1);
  }
  if (param_1[0x2d9] != (int *)0xd) {
    if (DAT_00ba9fe4 < (float)param_1[5]) {
      param_1[0x2f0] =
           (int *)((int)param_1[0x2f0] +
                  (int)(((float)(int)param_1[0x2f1] * DAT_00baa304 + DAT_00baa454) *
                       (float)param_1[5]));
    }
    if (0 < (int)param_1[0x2f0]) {
      param_1[0x2f0] = (int *)((int)param_1[0x2f0] + -1);
    }
    cVar5 = FUN_006ac710(0xf,0);
    if (((cVar5 != '\0') && (param_1[0xf0] == (int *)0x0)) &&
       (uVar11 = FUN_006eef60(), (uVar11 & 1) == 0)) {
      ppiVar16 = (int **)0x0;
      uVar11 = 0;
      local_fc = (int **)0x0;
      iVar6 = *(int *)(DAT_00c71678 + 0x18300);
      if (*(int *)(iVar6 + 0x1264) != 0) {
        do {
          piVar23 = *(int **)(*(int *)(iVar6 + 0x125c) + uVar11 * 4);
          piVar20 = piVar23 + 10;
          if (((((1 < *(int *)(DAT_00c71678 + 0x26614)) && (*piVar20 == 1)) ||
               (*piVar20 - 10U < 0x3de)) &&
              ((cVar5 = (**(code **)(*piVar23 + 0x48))(), ppiVar16 = local_fc, cVar5 != '\0' &&
               (*piVar20 != 0x19d)))) && (*piVar20 != 0x134)) {
            ppiVar16 = (int **)((int)local_fc + 1);
            local_fc = ppiVar16;
          }
          param_1 = local_13c;
          uVar11 = uVar11 + 1;
        } while (uVar11 < *(uint *)(iVar6 + 0x1264));
        if (((int **)0x1 < ppiVar16) && (uVar11 = FUN_006eef60(), uVar11 % 100 != 0))
        goto LAB_004c7fd1;
      }
      AI_0041af60(local_138,0x134,0xffffffff,0xffffffff,0,0);
      ppiVar16 = (int **)0x0;
      ppiVar17 = (int **)0x0;
      local_110 = (int **)0x0;
      local_10c = (int **)0x0;
      local_100 = (int **)0x0;
      local_108 = (int **)0x0;
      fVar19 = 0.0;
      local_8 = 3;
      if (local_12c != 0.0) {
        do {
          local_13c = *(int ***)(local_134 + (int)fVar19 * 4);
          if ((int **)local_13c[0xef] == param_1) {
            if (ppiVar17 == ppiVar16) {
              FUN_0042c920(ppiVar17,&local_13c);
              ppiVar16 = local_108;
              ppiVar17 = local_10c;
            }
            else {
              *ppiVar17 = (int *)local_13c;
              local_10c = ppiVar17 + 1;
              ppiVar17 = local_10c;
            }
          }
          ppiVar3 = local_110;
          fVar19 = (float)((int)fVar19 + 1);
        } while ((uint)fVar19 < (uint)local_12c);
        local_100 = ppiVar16;
        if (local_110 != ppiVar17) {
          uVar11 = (int)ppiVar17 - (int)local_110 >> 2;
          if (uVar11 == 0) {
            uVar10 = 0;
          }
          else {
            uVar10 = FUN_006eef60();
            uVar10 = uVar10 % uVar11;
          }
          ppiVar16 = param_1 + 0xf0;
          local_f4 = (int **)ppiVar3[uVar10];
          if (param_1[0xf0] != (int *)0x0) {
            local_13c = ppiVar16;
            FUN_004cf210(&local_13c);
          }
          *ppiVar16 = (int *)local_f4;
          if (local_f4 != (int **)0x0) {
            FUN_004cdcf0(ppiVar16);
          }
          FUN_00547040();
        }
        if (ppiVar3 != (int **)0x0) {
          deallocate(ppiVar3,(int)local_100 - (int)ppiVar3 >> 2);
        }
      }
      local_8 = 0xffffffff;
      if (local_138[0] == '\0') {
        local_8 = 4;
        FUN_00a648b0(0,0);
      }
    }
  }
LAB_004c7fd1:
  if ((piVar21 == (int *)0x0) &&
     ((*(char *)((int)param_1 + 0x173) != '\0' ||
      ((float)param_1[0xe0] <= (float)param_1[0xe1] * DAT_00baa198)))) {
    piVar21 = (int *)((float)param_1[0xe1] * DAT_00baa198);
    *(undefined *)((int)param_1 + 0x173) = 0;
    param_1[0x62] = (int *)0x0;
    param_1[0x2d9] = (int *)0x10;
    param_1[0xe0] = piVar21;
  }
LAB_004c802f:
  ExceptionList = local_10;
  FUN_00aef12b();
  return;
LAB_004c780c:
  piVar20 = (int *)((float)param_1[0xdb] * DAT_00baa3a4);
LAB_004c787c:
  param_1[0xdb] = piVar20;
LAB_004c7884:
  if ((param_1[0x1f] == (int *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) {
LAB_004c7897:
    param_1[0x2d9] = (int *)0x3;
  }
  goto LAB_004c5f79;
}

