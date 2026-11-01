/* Local J460 decompiler output.
 * VA: 0x004ed840
 * Entry: 004ed840
 * Dispatcher: 0x006c2990
 * Types: 885
 * Identities: 885.0.0,885.1.0,885.10.0
 * Evidence: dispatcher=0x006c2990; end=0x004efb90; instructions=1855
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=885; identities=885.0.0,885.1.0,885.10.0;
   dispatcher=0x006c2990; end=0x004efb90; instructions=1855 */

void __fastcall AI_004ed840(int *param_1)

{
  byte bVar1;
  byte **ppbVar2;
  int **ppiVar3;
  bool bVar4;
  undefined *puVar5;
  char cVar6;
  uint uVar7;
  byte **ppbVar8;
  float *pfVar9;
  undefined4 uVar10;
  int *piVar11;
  byte *pbVar12;
  char *pcVar13;
  int extraout_ECX;
  int iVar14;
  int **ppiVar15;
  int iVar16;
  bool bVar17;
  int **ppiVar18;
  int **ppiVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  char local_144 [4];
  int local_140;
  float local_13c;
  int **local_138;
  float local_134;
  int *local_130;
  float local_12c;
  int **local_128;
  float local_124;
  int **local_120;
  int **local_11c;
  int **local_118;
  int **local_114;
  int **local_110;
  int **local_10c;
  char local_105;
  int **local_104;
  int **local_100;
  int **local_fc [43];
  undefined4 local_50;
  undefined4 uStack_4c;
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
  puStack_18 = &LAB_00af3e46;
  local_1c = ExceptionList;
  uVar7 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  ppiVar15 = *(int ***)(DAT_00c71678 + 0x18300);
  local_114 = (int **)((int)(float)param_1[0xe9] - (int)(float)param_1[0xe8]);
  local_105 = (param_1[0x5a] & 0x20000000U) != 0;
  local_104 = ppiVar15;
  local_24 = uVar7;
  if (param_1[0xb] != 10) {
    puVar5 = &stack0xfffffffc;
    switch(param_1[0x2d9]) {
    case 0:
      puStack_20 = &stack0xfffffffc;
      if (param_1[0xb] == 0) {
        puStack_20 = &stack0xfffffffc;
        FUN_004071f0(&DAT_00c34da4);
        iVar14 = FUN_0040b220(2);
        *(uint *)(iVar14 + 0x8c) = *(uint *)(iVar14 + 0x8c) | 1;
        iVar14 = FUN_0040b220(3);
        *(uint *)(iVar14 + 0x8c) = *(uint *)(iVar14 + 0x8c) | 1;
        iVar14 = FUN_0040b220(4);
        *(uint *)(iVar14 + 0x8c) = *(uint *)(iVar14 + 0x8c) | 1;
      }
      param_1[0x2d9] = 3;
      param_1[0xcd] = param_1[0xcf];
      param_1[0xce] = param_1[0xd0];
      uVar7 = FUN_006eef60();
      param_1[0x2e8] = uVar7 % 0x1e + 0x1e;
      param_1[0x2ec] = 0;
      iVar14 = FUN_006eef60();
      param_1[0x2ed] =
           (int)((float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) * DAT_00ba9ff4
                * DAT_00baab30);
      puVar5 = puStack_20;
      break;
    case 3:
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa380);
      local_fc[0] = (int **)param_1[0x1f];
      if (local_fc[0] == (int **)0x0) {
LAB_004ee10a:
        puStack_20 = &stack0xfffffffc;
        cVar6 = FUN_0040a5d0(&DAT_00b1bc54,1);
        if (cVar6 != '\0') {
          FUN_0040a1b0();
          *(undefined *)(param_1 + 0x23) = 1;
        }
      }
      else {
        ppiVar18 = local_fc[0];
        if (&DAT_0000000f < local_fc[0][5]) {
          ppiVar18 = (int **)*local_fc[0];
        }
        pbVar12 = &DAT_00b1bc54;
        do {
          bVar1 = *(byte *)ppiVar18;
          bVar17 = bVar1 < *pbVar12;
          if (bVar1 != *pbVar12) {
LAB_004ee0e4:
            uVar7 = -(uint)bVar17 | 1;
            goto LAB_004ee0e9;
          }
          if (bVar1 == 0) break;
          bVar1 = *(byte *)((int)ppiVar18 + 1);
          bVar17 = bVar1 < pbVar12[1];
          if (bVar1 != pbVar12[1]) goto LAB_004ee0e4;
          ppiVar18 = (int **)((int)ppiVar18 + 2);
          pbVar12 = pbVar12 + 2;
        } while (bVar1 != 0);
        uVar7 = 0;
LAB_004ee0e9:
        if ((uVar7 != 0) ||
           ((puStack_20 = &stack0xfffffffc, *(char *)(local_fc[0] + 0xd) != '\0' &&
            (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x23) == '\0')))) goto LAB_004ee10a;
      }
      cVar6 = FUN_00417430(0x1000a00,0);
      local_130 = (int *)0x0;
      if (cVar6 == '\0') {
        cVar6 = FUN_00a10630(&DAT_00c7b640);
        if (cVar6 != '\0') {
          param_1[0x2ec] = (int)((float)param_1[0x2ec] + (float)param_1[0xe7]);
          fVar23 = *(float *)(extraout_ECX + 4) - (float)param_1[0xd0];
          FUN_00499d60();
          local_fc[0] = (int **)(fVar23 * DAT_00baa948);
          FUN_006eef60();
          FUN_006eef60();
          fVar23 = (float)param_1[0x2ed];
          FUN_00682a50();
          param_1[0x2ed] = (int)fVar23;
          ppiVar18 = (int **)(fVar23 * DAT_00baa088);
          local_fc[0] = ppiVar18;
          FUN_0041d520();
          local_128 = ppiVar18;
          iVar14 = FUN_006eef60();
          local_120 = (int **)((float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)])
                               * DAT_00ba9ff4 * DAT_00baa580 + DAT_00baa354);
          ppiVar18 = local_fc[0];
          FUN_0041d540();
          fVar23 = DAT_00baa9d0;
          param_1[0xd8] =
               (int)((float)ppiVar18 * (float)local_120 * (float)param_1[0xe7] +
                    (float)param_1[0xd8]);
          param_1[0xd9] =
               (int)((float)local_128 * (float)local_120 * (float)param_1[0xe7] +
                    (float)param_1[0xd9]);
          if (param_1[0xb] == 1) {
            fVar23 = DAT_00baab90;
          }
          if (((float)param_1[0xce] - (float)param_1[0xd0]) *
              ((float)param_1[0xce] - (float)param_1[0xd0]) +
              ((float)param_1[0xcd] - (float)param_1[0xcf]) *
              ((float)param_1[0xcd] - (float)param_1[0xcf]) < fVar23) {
            if (param_1[0xb] == 1) {
              if (param_1[0x2f0] == 1) {
                local_100 = (int **)FUN_006be840();
                cVar6 = FUN_006d7d60(local_100);
                if (cVar6 != '\0') {
                  local_11c = (int **)param_1[0xcf];
                  local_118 = (int **)param_1[0xd0];
                  cVar6 = FUN_00944a40(&local_11c);
                  if (((cVar6 == '\0') ||
                      (DAT_00baa8d0 <=
                       (float)((uint)((float)local_100[0xd0] - (float)param_1[0xd0]) & DAT_00bacb40)
                      )) || (uVar7 = FUN_006eef60(), uVar7 % 3 != 0)) {
                    if (((float)param_1[0xd0] - (float)local_100[0xd0]) *
                        ((float)param_1[0xd0] - (float)local_100[0xd0]) +
                        ((float)param_1[0xcf] - (float)local_100[0xcf]) *
                        ((float)param_1[0xcf] - (float)local_100[0xcf]) < DAT_00baac34) {
                      FUN_0040a380("Respawn",0);
                      param_1[0x2d9] = 0xd;
                      param_1[0xcd] = param_1[0xcf];
                      param_1[0xce] = param_1[0xd0];
                      param_1[0x2ec] = 0;
                      param_1[0x2ee] = 0;
                    }
                  }
                  else {
                    FUN_0040a380("Attack",0);
                    param_1[0x2d9] = 8;
                    param_1[0xcd] = param_1[0xcf];
                    param_1[0xce] = param_1[0xd0];
                    param_1[0x2ec] = 0;
                    *(bool *)(param_1 + 0x52) =
                         (float)local_100[0xcf] <= (float)param_1[0xcf] &&
                         (float)param_1[0xcf] != (float)local_100[0xcf];
                    param_1[0x2ee] = 0;
                  }
                }
              }
            }
            else {
              uVar10 = FUN_006be840();
              if (param_1[0x2f0] == 2) {
                FUN_0040a380("Respawn",0);
                param_1[0x2d9] = 0xd;
              }
              else {
                if (((param_1[0x2f0] != 1) || (param_1[0xf0] != 0)) ||
                   (cVar6 = FUN_006d7d60(uVar10), cVar6 == '\0')) goto LAB_004ee536;
                FUN_0040a380("Attack",0);
                param_1[0x2d9] = 8;
              }
              param_1[0xcd] = param_1[0xcf];
              param_1[0xce] = param_1[0xd0];
              param_1[0x2ec] = 0;
            }
          }
LAB_004ee536:
          if ((param_1[0x2d9] == 3) &&
             ((DAT_00baa950 < (float)param_1[0x2ec] ||
              ((((param_1[0xb] == 0 && (param_1[0x2f0] == 1)) &&
                ((param_1[0xf0] != 0 && (uVar7 = FUN_006eef60(), uVar7 % 10 == 0)))) ||
               ((((param_1[0xb] == 1 && (param_1[0x2f0] == 1)) && (0 < param_1[0x2e8])) &&
                (uVar7 = FUN_006eef60(), uVar7 % 10 == 0)))))))) {
            param_1[0x2f0] = 0;
            param_1[0x2ec] = 0;
          }
        }
      }
      else {
        FUN_007e6300(0);
      }
      puVar5 = puStack_20;
      if ((param_1[0x2f0] == 0) &&
         (cVar6 = FUN_00417430(0x1000a00,0), puVar5 = puStack_20, cVar6 == '\0')) {
        local_fc[0] = DAT_00baacb4;
        if (param_1[0x2e8] < 1) {
          if (param_1[0xb] == 1) {
            iVar14 = FUN_006be840();
            local_11c = (int **)(*(float *)(iVar14 + 0x360) * DAT_00baa854 +
                                *(float *)(iVar14 + 0x33c));
            local_118 = (int **)(*(float *)(iVar14 + 0x364) * DAT_00baa854 +
                                *(float *)(iVar14 + 0x340));
            param_1[0x2f0] = 1;
            FUN_00812f50(&local_110,&local_11c,0x42700000,0x42700000,0x42700000);
            param_1[0xcd] = (int)local_110;
            param_1[0xce] = (int)local_10c;
          }
          else {
            uVar7 = FUN_006eef60();
            if (((uVar7 & 3) == 0) && (ppiVar15[0x1cc1] != (int *)0x0)) {
              local_128 = (int **)0x0;
              local_11c = (int **)0x0;
              local_100 = (int **)0x0;
              local_118 = (int **)0x0;
              local_120 = DAT_00baacb4;
              FUN_0042c7c0();
              local_14 = 4;
              piVar11 = (int *)*ppiVar15[0x1cc0];
              ppiVar15 = local_104;
              if (piVar11 != ppiVar15[0x1cc0]) {
                do {
                  if ((piVar11[4] != 0x375) || (*(short *)(piVar11 + 5) != 0)) {
                    ppiVar15 = (int **)piVar11[2];
                    ppiVar18 = (int **)piVar11[3];
                    ppiVar19 = (int **)(((float)param_1[0xd0] - (float)ppiVar18) *
                                        ((float)param_1[0xd0] - (float)ppiVar18) +
                                       ((float)param_1[0xcf] - (float)ppiVar15) *
                                       ((float)param_1[0xcf] - (float)ppiVar15));
                    if ((float)ppiVar19 < (float)local_120) {
                      local_128 = ppiVar15;
                      local_120 = ppiVar19;
                      local_11c = ppiVar15;
                      local_118 = ppiVar18;
                      local_100 = ppiVar18;
                    }
                    FUN_00429f90(piVar11 + 2);
                    ppiVar15 = local_104;
                  }
                  piVar11 = (int *)*piVar11;
                } while (piVar11 != ppiVar15[0x1cc0]);
              }
              ppiVar15 = local_100;
              if (((NAN((float)local_128) || NAN(DAT_00c7b640)) ==
                   ((float)local_128 == DAT_00c7b640)) ||
                 (ppiVar18 = local_128,
                 (NAN((float)local_100) || NAN(DAT_00c7b644)) == ((float)local_100 == DAT_00c7b644))
                 ) {
                piVar11 = (int *)0x0;
                local_120 = (int **)0x0;
                ppiVar18 = (int **)*local_110;
                ppiVar19 = local_110;
                if (ppiVar18 != local_110) {
                  do {
                    fVar21 = (float)local_128 - (float)ppiVar18[2];
                    ppiVar3 = (int **)*ppiVar18;
                    fVar23 = (float)ppiVar15 - (float)ppiVar18[3];
                    if (DAT_00baac4c < fVar23 * fVar23 + fVar21 * fVar21) {
                      *ppiVar18[1] = (int)ppiVar3;
                      (*ppiVar18)[1] = (int)ppiVar18[1];
                      local_10c = (int **)((int)local_10c + -1);
                      FUN_00aef15c(ppiVar18,0x10);
                      ppiVar19 = local_110;
                      ppiVar15 = local_100;
                    }
                    else {
                      local_120 = (int **)((float)local_120 + (float)ppiVar18[2]);
                      local_130 = (int *)((float)piVar11 + (float)ppiVar18[3]);
                    }
                    ppiVar18 = ppiVar3;
                    piVar11 = local_130;
                  } while (ppiVar3 != ppiVar19);
                }
                ppiVar18 = local_128;
                if (local_10c != (int **)0x0) {
                  local_11c = (int **)((float)local_120 /
                                      (float)((double)(int)local_10c +
                                             (double)(&DAT_00bacb00)[-((int)local_10c >> 0x1f)]));
                  ppiVar15 = (int **)((float)piVar11 /
                                     (float)((double)(int)local_10c +
                                            (double)(&DAT_00bacb00)[-((int)local_10c >> 0x1f)]));
                  local_118 = ppiVar15;
                  ppiVar18 = local_11c;
                }
              }
              if (((NAN((float)ppiVar18) || NAN(DAT_00c7b640)) == ((float)ppiVar18 == DAT_00c7b640))
                 || ((NAN((float)ppiVar15) || NAN(DAT_00c7b644)) ==
                     ((float)ppiVar15 == DAT_00c7b644))) {
                param_1[0x2f0] = 2;
                FUN_00812f50(&local_134,&local_11c,0x42700000,0x42700000,0x42700000);
                param_1[0xcd] = (int)local_134;
                param_1[0xce] = (int)local_130;
              }
              local_14 = 0xffffffff;
              FUN_0042c780();
            }
          }
        }
        if (param_1[0x2f0] == 0) {
          iVar14 = FUN_006be840();
          local_100 = (int **)0x0;
          local_120 = *(int ***)(iVar14 + 0x33c);
          local_128 = *(int ***)(iVar14 + 0x340);
          if (local_105 == '\0') {
            local_130 = local_104[0x499];
            if (local_130 != (int *)0x0) {
              ppiVar15 = (int **)local_104[0x497];
              do {
                ppiVar18 = (int **)*ppiVar15;
                if ((((1 < *(int *)(DAT_00c71678 + 0x26614)) && (ppiVar18[10] == (int *)0x1)) ||
                    ((int)ppiVar18[10] - 10U < 0x3de)) &&
                   (((((uint)ppiVar18[0x5a] & 0x20000000) == 0 && (ppiVar18[0x62] != (int *)0x0)) &&
                    (ppiVar19 = (int **)(((float)local_128 - (float)ppiVar18[0xd0]) *
                                         ((float)local_128 - (float)ppiVar18[0xd0]) +
                                        ((float)local_120 - (float)ppiVar18[0xcf]) *
                                        ((float)local_120 - (float)ppiVar18[0xcf])),
                    (float)ppiVar19 < (float)local_fc[0])))) {
                  local_100 = ppiVar18;
                  local_fc[0] = ppiVar19;
                }
                ppiVar15 = ppiVar15 + 1;
                local_130 = (int *)((int)local_130 + -1);
                ppiVar18 = local_100;
              } while (local_130 != (int *)0x0);
              goto LAB_004eeab9;
            }
LAB_004eebca:
            local_130 = (int *)((float)param_1[0xcf] - (float)local_120);
            local_100 = (int **)((float)param_1[0xd0] - (float)local_128);
            iVar14 = FUN_006eef60();
            local_10c = (int **)(((float)((double)iVar14 +
                                         (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) * DAT_00ba9ff4
                                  * DAT_00baaad4 - DAT_00baaa00) * DAT_00baa088);
            ppiVar15 = local_10c;
            FUN_0041d540();
            local_fc[0] = ppiVar15;
            ppiVar15 = local_10c;
            FUN_0041d520();
            local_11c = (int **)((float)local_fc[0] * (float)local_130 -
                                (float)ppiVar15 * (float)local_100);
            local_118 = (int **)((float)ppiVar15 * (float)local_130 +
                                (float)local_fc[0] * (float)local_100);
            iVar14 = FUN_006eef60();
            pfVar9 = (float *)FUN_00a10100(&local_13c,
                                           (float)((double)iVar14 +
                                                  (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                                           DAT_00ba9ff4 * DAT_00baa904 + DAT_00baa924);
            local_11c = (int **)((float)local_120 + *pfVar9);
            local_118 = (int **)((float)local_128 + pfVar9[1]);
          }
          else {
            ppiVar18 = (int **)FUN_00703950(param_1 + 0xcf);
LAB_004eeab9:
            if (ppiVar18 == (int **)0x0) goto LAB_004eebca;
            local_10c = (int **)ppiVar18[0xcf];
            local_11c = (int **)((float)local_10c - (float)local_120);
            local_118 = (int **)((float)ppiVar18[0xd0] - (float)local_128);
            local_120 = (int **)ppiVar18[0xd0];
            ppiVar15 = (int **)FUN_00a10100(&local_13c,0x42480000);
            local_fc[0] = (int **)*ppiVar15;
            local_130 = ppiVar15[1];
            pfVar9 = (float *)FUN_0067f070(&local_12c);
            iVar14 = FUN_006eef60();
            fVar23 = (float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                     DAT_00ba9ff4;
            local_11c = (int **)(fVar23 * *pfVar9 * DAT_00baa904 +
                                (float)local_10c + (float)local_fc[0]);
            local_118 = (int **)(fVar23 * pfVar9[1] * DAT_00baa904 +
                                (float)local_130 + (float)local_120);
          }
          FUN_00812f50(&local_110,&local_11c,0x42700000,0x42700000,0x42700000);
          param_1[0xcd] = (int)local_110;
          param_1[0xce] = (int)local_10c;
          if (param_1[0xb] == 1) {
            uVar7 = FUN_006eef60();
            param_1[0x2f0] = (uint)((uVar7 & 7) == 0);
            param_1[0x2ec] = 0;
            puVar5 = puStack_20;
            break;
          }
          param_1[0x2f0] = 1;
        }
        param_1[0x2ec] = 0;
        puVar5 = puStack_20;
      }
      break;
    case 8:
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa354);
      puStack_20 = &stack0xfffffffc;
      if ((param_1[0x1f] != 0) &&
         (puStack_20 = &stack0xfffffffc, cVar6 = FUN_0040add0("Shoot"), cVar6 != '\0')) {
        FUN_006d6ba0(0xd,0x3f800000,2,0,0x3f800000);
        param_1[0x2ec] = 0x3f800000;
        if (param_1[0xb] == 0) {
          uVar10 = FUN_006eef60();
          iVar14 = FUN_006eef60();
          local_10c = (int **)(((float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)])
                                * DAT_00ba9ff4 * DAT_00baa904 - DAT_00baa87c) * DAT_00baa088);
          local_fc[0] = local_10c;
          FUN_0041d540();
          ppiVar15 = local_10c;
          FUN_0041d520();
          local_118 = (int **)((float)ppiVar15 * 0.0 + (float)local_fc[0] * DAT_00baa7e8);
          local_11c = (int **)((float)local_fc[0] * 0.0 - (float)ppiVar15 * DAT_00baa7e8);
          local_134 = (float)param_1[0xcf] + 0.0;
          local_130 = (int *)((float)param_1[0xd0] + DAT_00baa784);
          piVar11 = (int *)FUN_00428b20(0x199,1,&local_134,&local_11c,param_1,0,uVar10);
          if (piVar11[0xef] != 0) {
            local_10c = (int **)(piVar11 + 0xef);
            FUN_004cf210(&local_10c);
          }
          piVar11[0xef] = (int)param_1;
          FUN_004cdcf0(piVar11 + 0xef);
          piVar11[0x5a] = piVar11[0x5a] & 0xfffffffb;
          piVar11[0x5b] = piVar11[0x5b];
          *(undefined *)(piVar11 + 0xec) = 1;
          piVar11[0x2ef] = 0x43520000;
          piVar11[0x61] = 3;
          piVar11[0x62] = 2;
          (**(code **)(*piVar11 + 0xc))();
          piVar11[0x2d9] = 4;
          if ((int *)param_1[0xf0] != (int *)0x0) {
            local_10c = (int **)(param_1 + 0xf0);
            FUN_004cf210(&local_10c);
          }
          param_1[0xf0] = (int)piVar11;
          FUN_004cdcf0(param_1 + 0xf0);
        }
        else {
          FUN_006d6ba0(0xd5,0x3f800000,2,0,0x3f800000);
          param_1[0x2ee] = 0x41a00000;
        }
      }
      iVar14 = param_1[0xb];
      iVar16 = iVar14;
      if (iVar14 == 1) {
        fVar23 = (float)param_1[0x2ee];
        iVar16 = 1;
        if ((0.0 < fVar23) && (0 < (int)local_114)) {
          local_fc[0] = local_114;
          do {
            local_100 = DAT_00baa454;
            if (*(char *)(param_1 + 0x52) != '\0') {
              local_100 = DAT_00baad50;
            }
            local_124 = (float)local_100 * fVar23 + (float)param_1[0xcf];
            local_120 = (int **)(fVar23 * 0.0 + (float)param_1[0xd0]);
            cVar6 = FUN_00813360(&local_124,0);
            if (cVar6 == '\0') {
              param_1[0x2ee] = 0;
              fVar23 = 0.0;
            }
            else {
              uVar10 = FUN_006eef60();
              piVar11 = (int *)FUN_00428b20(1000,0x16,&local_124,&DAT_00c7b640,param_1,0,uVar10);
              iVar14 = param_1[0x104];
              piVar11[0x117] = 0x1e;
              piVar11[0x118] = 0x1e;
              local_130 = (int *)((float)iVar14 * DAT_00baa0f4 + DAT_00baa3e0);
              piVar11[0x39] = (int)local_130;
              piVar11[0x3a] = (int)local_130;
              (**(code **)(*piVar11 + 0xc))();
              cVar6 = FUN_00813360(&local_124,0);
              if (cVar6 != '\0') {
                iVar14 = FUN_006eef60();
                local_30 = 0;
                local_2c = 0;
                local_28 = 0;
                fVar21 = (float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                         DAT_00ba9ff4;
                fVar23 = (float)local_100 * fVar21;
                fVar21 = fVar21 * 0.0;
                local_11c = (int **)(fVar23 + fVar23);
                local_118 = (int **)(fVar21 + fVar21);
                local_50 = _DAT_00bac7b0;
                uStack_4c = _UNK_00bac7b4;
                uStack_48 = _UNK_00bac7b8;
                uStack_44 = _UNK_00bac7bc;
                local_40 = ZEXT816(0);
                iVar14 = FUN_006eef60();
                local_10c = (int **)((float)((double)iVar14 +
                                            (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                                     DAT_00ba9ff4 * DAT_00baaddc);
                local_12c = local_124 - (float)local_100 * DAT_00baa784;
                local_128 = (int **)((float)local_120 - 0.0);
                uVar10 = FUN_006eef60();
                piVar11 = (int *)FUN_00428b20(1000,2,&local_12c,&local_11c,0,2,uVar10);
                (**(code **)(*piVar11 + 0x3c))(&local_50,0xffffffff,0xff,0,1);
                piVar11[0x37] = 0;
                piVar11[0x38] = (int)local_10c;
                piVar11[0xd6] = 0x41200000;
                iVar14 = FUN_006eef60();
                piVar11[0x3b] =
                     (int)((float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                           DAT_00ba9ff4 * DAT_00baab30);
                uVar10 = FUN_006eef60();
                piVar11 = (int *)FUN_00428b20(1000,7,&local_124,&DAT_00c7b640,0,0,uVar10);
                piVar11[0xdd] = (int)local_130;
                piVar11[0xde] = (int)local_130;
                (**(code **)(*piVar11 + 0xc))();
                uVar10 = AI_0043ef30();
                local_13c = (float)local_100 * DAT_00baa9d0 + (float)param_1[0xcf];
                local_138 = (int **)((float)param_1[0xd0] + 0.0);
                iVar14 = FUN_006ccdd0(1,&local_13c,0x40a00000,uVar10);
                iVar16 = FUN_006eef60();
                fVar23 = (float)((double)iVar16 + (double)(&DAT_00bacb00)[-(iVar16 >> 0x1f)]) *
                         DAT_00ba9ff4;
                *(float *)(iVar14 + 0x33c) = local_124 - (float)local_100 * DAT_00baa834 * fVar23;
                *(float *)(iVar14 + 0x340) = (float)local_120 - fVar23 * 0.0;
              }
              fVar23 = (float)param_1[0x2ee] + DAT_00baa904;
              param_1[0x2ee] = (int)fVar23;
            }
            local_fc[0] = (int **)((int)local_fc[0] + -1);
          } while (local_fc[0] != (int **)0x0);
          iVar14 = param_1[0xb];
          local_fc[0] = (int **)0x0;
          iVar16 = iVar14;
        }
      }
      fVar23 = (float)param_1[0x2ec];
      if (0.0 < fVar23) {
        if (iVar16 == 1) {
          fVar20 = DAT_00baada0;
          if (*(char *)(param_1 + 0x52) != '\0') {
            fVar20 = DAT_00baa784;
          }
          fVar21 = (float)param_1[0xe7] * 0.0 + (float)param_1[0xd9];
          param_1[0xd8] = (int)(fVar20 * fVar23 * (float)param_1[0xe7] + (float)param_1[0xd8]);
        }
        else {
          fVar23 = fVar23 * DAT_00baa784;
          param_1[0xd8] = (int)((float)param_1[0xe7] * 0.0 + (float)param_1[0xd8]);
          fVar21 = (float)param_1[0xd9] - fVar23 * (float)param_1[0xe7];
        }
        param_1[0xd9] = (int)fVar21;
        param_1[0x2ec] = (int)((float)param_1[0x2ec] - (float)param_1[0xe7] * DAT_00baa120);
        iVar14 = param_1[0xb];
      }
      puVar5 = puStack_20;
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x2d9] = 3;
        param_1[0x2f0] = 0;
        if (iVar14 == 1) {
LAB_004ef500:
          uVar7 = FUN_006eef60();
          param_1[0x2e8] = uVar7 % 0x3c + 0x3c;
          puVar5 = puStack_20;
        }
      }
      break;
    case 0xd:
      param_1[0xdb] = (int)((float)param_1[0xdb] * DAT_00baa354);
      param_1[0xd8] = (int)((float)param_1[0xcd] - (float)param_1[0xcf]);
      param_1[0xd9] = (int)((float)param_1[0xce] - (float)param_1[0xd0]);
      puVar5 = &stack0xfffffffc;
      if ((param_1[0x1f] != 0) &&
         (cVar6 = FUN_0040add0("Shoot"), puVar5 = puStack_20, cVar6 != '\0')) {
        local_fc[0] = (int **)0xd;
        FUN_00956780();
        FUN_0092dc30(local_fc[0],0x3f800000,2,0,0x3f800000,0);
        puVar5 = puStack_20;
        if (param_1[0xb] == 1) {
          param_1[0x2ee] = 0x40a00000;
        }
        else {
          bVar17 = false;
          local_100 = (int **)0x0;
          ppiVar15 = (int **)*local_104[0x1cc0];
          ppiVar18 = local_104;
          if (ppiVar15 != (int **)local_104[0x1cc0]) {
            do {
              if (((ppiVar15[4] == (int *)0x375) && (*(short *)(ppiVar15 + 5) == 0)) ||
                 (fVar23 = (float)param_1[0xcf] - (float)ppiVar15[2],
                 DAT_00baac24 <
                 ((float)param_1[0xd0] - (float)ppiVar15[3]) *
                 ((float)param_1[0xd0] - (float)ppiVar15[3]) + fVar23 * fVar23)) {
                ppiVar15 = (int **)*ppiVar15;
              }
              else {
                local_128 = (int **)FUN_00428b20(ppiVar15[4],*(undefined2 *)(ppiVar15 + 5),
                                                 ppiVar15 + 2,&DAT_00c7b640,0,
                                                 *(undefined2 *)((int)ppiVar15 + 0x16),ppiVar15[6]);
                if (local_105 != '\0') {
                  FUN_00431310(0);
                  FUN_006ad870(&uStack_4c,0xffffffff,0,0);
                }
                (*(code *)(*local_128)[3])();
                local_10c = (int **)*ppiVar15;
                local_100 = (int **)((float)local_100 + (float)local_128[0xe1]);
                *ppiVar15[1] = (int)local_10c;
                (*ppiVar15)[1] = (int)ppiVar15[1];
                local_104[0x1cc1] = (int *)((int)local_104[0x1cc1] + -1);
                FUN_00aef15c(ppiVar15,0x20);
                bVar17 = true;
                ppiVar18 = local_104;
                ppiVar15 = local_10c;
                if (DAT_00baa9d0 <= (float)local_100) goto LAB_004ef738;
              }
            } while (ppiVar15 != (int **)ppiVar18[0x1cc0]);
            puVar5 = puStack_20;
            if (bVar17) {
LAB_004ef738:
              FUN_009568e0(0x109,2,0,0x3f800000);
              puVar5 = puStack_20;
            }
          }
        }
      }
      puStack_20 = puVar5;
      if (((param_1[0xb] == 1) && (0.0 < (float)param_1[0x2ee])) &&
         (fVar23 = (float)param_1[0x2ee] - (float)param_1[0xe7], param_1[0x2ee] = (int)fVar23,
         fVar23 <= 0.0)) {
        local_120 = (int **)FUN_006be840(uVar7);
        local_130 = (int *)0x0;
        do {
          local_128 = (int **)local_120[0xd8];
          local_104 = (int **)local_120[0xd9];
          fVar23 = (float)local_128 * (float)local_128 + (float)local_104 * (float)local_104;
          FUN_00435a50();
          if (DAT_00baa020 <= fVar23) {
            if (DAT_00ba9fe4 < fVar23) {
              local_128 = (int **)(((float)DAT_00baa454 / fVar23) * (float)local_128);
              local_104 = (int **)((float)local_104 * ((float)DAT_00baa454 / fVar23));
            }
            iVar14 = FUN_006eef60();
            local_10c = (int **)(((float)((double)iVar14 +
                                         (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) * DAT_00ba9ff4
                                  * DAT_00baaa5c - DAT_00baa9a0) * DAT_00baa088);
            ppiVar15 = local_10c;
            FUN_0041d540();
            local_fc[0] = ppiVar15;
            FUN_0041d520();
            fVar23 = (float)local_104 * (float)local_fc[0];
            local_fc[0] = (int **)((float)local_128 * (float)local_fc[0] -
                                  (float)local_10c * (float)local_104);
            local_104 = (int **)(fVar23 + (float)local_10c * (float)local_128);
          }
          else {
            iVar14 = FUN_006eef60();
            fVar23 = (float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                     DAT_00ba9ff4 * DAT_00baa704;
            local_10c = (int **)(fVar23 + fVar23);
            ppiVar15 = local_10c;
            FUN_0041d540();
            local_fc[0] = ppiVar15;
            FUN_0041d520();
            local_104 = local_10c;
          }
          local_10c = (int **)local_120[0xcf];
          local_128 = (int **)local_120[0xd0];
          iVar14 = FUN_006eef60();
          fVar23 = (float)((double)iVar14 + (double)(&DAT_00bacb00)[-(iVar14 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa904 + DAT_00baa924;
          local_138 = (int **)(fVar23 * (float)local_104 + (float)local_128);
          local_13c = fVar23 * (float)local_fc[0] + (float)local_10c;
          FUN_00813520(&local_11c,&local_13c,0,1,0,0);
          if ((local_105 != '\0') ||
             (iVar14 = FUN_00703950(&local_11c),
             fVar23 = (float)local_118 - *(float *)(iVar14 + 0x340),
             fVar21 = (float)local_11c - *(float *)(iVar14 + 0x33c),
             DAT_00baabe0 < fVar23 * fVar23 + fVar21 * fVar21)) {
            uVar10 = FUN_006eef60();
            piVar11 = (int *)FUN_00428b20(0x375,10,&local_11c,&DAT_00c7b640,param_1,0,uVar10);
            FUN_006a92a0(param_1);
            (**(code **)(*piVar11 + 0xc))();
            break;
          }
          local_130 = (int *)((int)local_130 + 1);
        } while (local_130 < (int *)0xa);
        param_1[0x2ee] = 0x41000000;
      }
      puVar5 = puStack_20;
      if ((param_1[0x1f] == 0) || (*(char *)(param_1 + 0x23) == '\0')) {
        param_1[0x2d9] = 3;
        param_1[0x2f0] = 0;
        if (param_1[0xb] == 1) goto LAB_004ef500;
        param_1[0x2e8] = 0x5a;
      }
    }
    puStack_20 = puVar5;
    iVar14 = param_1[0x2e8];
    if (0 < iVar14) {
      iVar16 = iVar14 - (int)local_114;
      iVar14 = 0;
      if (0 < iVar16) {
        iVar14 = iVar16;
      }
      param_1[0x2e8] = iVar14;
    }
    if (param_1[0xb] == 1) {
      iVar16 = (int)((float)iVar14 - (float)param_1[5] * DAT_00baa784);
      iVar14 = 0;
      if (0 < iVar16) {
        iVar14 = iVar16;
      }
      param_1[0x2e8] = iVar14;
    }
    goto LAB_004efb25;
  }
  puStack_20 = &stack0xfffffffc;
  switch(param_1[0x2d9]) {
  case 0:
    puStack_20 = &stack0xfffffffc;
    FUN_006c04b0(1);
    cVar6 = FUN_0040a5d0("Appear",1);
    if (cVar6 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
    *(undefined *)(param_1 + 0xec) = 1;
    param_1[0x5b] = param_1[0x5b] | 8;
    param_1[0x5a] = param_1[0x5a] & 0xfffffffbU | 0x11;
    param_1[0xcd] = param_1[0xcf];
    param_1[0xce] = param_1[0xd0];
    param_1[0x104] = 0x5a;
    param_1[0x2d9] = 3;
    param_1[0x62] = 0;
    goto LAB_004efb25;
  case 3:
    puStack_20 = &stack0xfffffffc;
    FUN_0041a790(local_144,param_1 + 0xcf,0xffffffff);
    ppiVar15 = (int **)0x0;
    local_14 = 0;
    if (local_138 != (int **)0x0) {
      do {
        iVar14 = *(int *)(local_140 + (int)ppiVar15 * 4);
        iVar16 = *(int *)(iVar14 + 0x28);
        if (((iVar16 == 1) || (iVar16 - 10U < 0x3de)) &&
           (cVar6 = FUN_006d7d60(iVar14), cVar6 != '\0')) {
          param_1[0x2d9] = 8;
          ppbVar2 = (byte **)param_1[0x1f];
          if (ppbVar2 == (byte **)0x0) goto LAB_004eda40;
          ppbVar8 = ppbVar2;
          if (&DAT_0000000f < ppbVar2[5]) {
            ppbVar8 = (byte **)*ppbVar2;
          }
          pbVar12 = &DAT_00b60954;
          goto LAB_004eda02;
        }
        ppiVar15 = (int **)((int)ppiVar15 + 1);
      } while (ppiVar15 < local_138);
    }
    goto LAB_004eda5e;
  case 5:
    if ((param_1[0x1f] == 0) || (puStack_20 = &stack0xfffffffc, *(char *)(param_1 + 0x23) == '\0'))
    {
      puStack_20 = &stack0xfffffffc;
      (**(code **)(*param_1 + 0x28))();
    }
    break;
  case 8:
    puStack_20 = &stack0xfffffffc;
    if ((param_1[0x1f] != 0) &&
       (puStack_20 = &stack0xfffffffc, cVar6 = FUN_0040add0(&DAT_00b1d3b0), cVar6 != '\0')) {
      FUN_006d6ba0(500,0x3f800000,2,0,0x3f800000);
      local_128 = (int **)0x0;
      local_100 = DAT_00baacb4;
      FUN_0041a790(local_144,param_1 + 0xcf,0x28);
      local_14 = 2;
      local_120 = (int **)0x0;
      if (local_138 == (int **)0x0) {
        ppiVar15 = (int **)0x0;
      }
      else {
        do {
          ppiVar15 = *(int ***)(local_140 + (int)local_120 * 4);
          cVar6 = FUN_006d7d60(ppiVar15);
          if ((cVar6 != '\0') &&
             (ppiVar18 = (int **)(((float)param_1[0xd0] - (float)ppiVar15[0xd0]) *
                                  ((float)param_1[0xd0] - (float)ppiVar15[0xd0]) +
                                 ((float)param_1[0xcf] - (float)ppiVar15[0xcf]) *
                                 ((float)param_1[0xcf] - (float)ppiVar15[0xcf])),
             (float)ppiVar18 < (float)local_100)) {
            local_128 = ppiVar15;
            local_100 = ppiVar18;
          }
          ppiVar15 = local_128;
          local_120 = (int **)((int)local_120 + 1);
        } while (local_120 < local_138);
        if (local_128 != (int **)0x0) {
          if (param_1[0x2fb] != 0) {
            local_fc[0] = (int **)(param_1 + 0x2fb);
            FUN_004cf210(local_fc);
          }
          param_1[0x2fb] = (int)ppiVar15;
          FUN_004cdcf0(param_1 + 0x2fb);
        }
      }
      if (local_105 == '\0') {
        param_1[0x104] = 0x1e;
      }
      else {
        param_1[0x104] = 0x5a;
        if (ppiVar15 != (int **)0x0) {
          FUN_00431310(param_1);
          FUN_006ad3c0(&uStack_4c,0x5a,0);
        }
      }
      local_14 = 0xffffffff;
      if (local_144[0] == '\0') {
        local_14 = 3;
        goto LAB_004eda79;
      }
    }
  }
  goto switchD_004ed8e5_caseD_1;
  while( true ) {
    bVar1 = *(byte *)((int)ppbVar8 + 1);
    bVar17 = bVar1 < pbVar12[1];
    if (bVar1 != pbVar12[1]) goto LAB_004eda22;
    ppbVar8 = (byte **)((int)ppbVar8 + 2);
    pbVar12 = pbVar12 + 2;
    if (bVar1 == 0) break;
LAB_004eda02:
    bVar1 = *(byte *)ppbVar8;
    bVar17 = bVar1 < *pbVar12;
    if (bVar1 != *pbVar12) {
LAB_004eda22:
      uVar7 = -(uint)bVar17 | 1;
      goto LAB_004eda27;
    }
    if (bVar1 == 0) break;
  }
  uVar7 = 0;
LAB_004eda27:
  if ((uVar7 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0')))) {
LAB_004eda40:
    cVar6 = FUN_0040a5d0(&DAT_00b60954,1);
    if (cVar6 != '\0') {
      FUN_0040a1b0();
      *(undefined *)(param_1 + 0x23) = 1;
    }
  }
LAB_004eda5e:
  local_14 = 0xffffffff;
  if (local_144[0] == '\0') {
    local_14 = 1;
LAB_004eda79:
    FUN_00a648b0(0,0);
    local_14 = 0xffffffff;
  }
switchD_004ed8e5_caseD_1:
  if ((param_1[0x2d9] != 5) &&
     (param_1[0x104] = param_1[0x104] - (int)local_114, param_1[0x104] < 1)) {
    if (param_1[0x2fb] != 0) {
      local_fc[0] = (int **)(param_1 + 0x2fb);
      FUN_004cf210(local_fc);
    }
    param_1[0x2fb] = 0;
    ppbVar2 = (byte **)param_1[0x1f];
    if (ppbVar2 == (byte **)0x0) {
LAB_004edd0e:
      cVar6 = FUN_0040a5d0("Disappear",1);
      if (cVar6 != '\0') {
        FUN_0040a1b0();
        *(undefined *)(param_1 + 0x23) = 1;
      }
    }
    else {
      ppbVar8 = ppbVar2;
      if (&DAT_0000000f < ppbVar2[5]) {
        ppbVar8 = (byte **)*ppbVar2;
      }
      pcVar13 = "Disappear";
      do {
        bVar1 = *(byte *)ppbVar8;
        bVar17 = bVar1 < (byte)*pcVar13;
        if (bVar1 != *pcVar13) {
LAB_004edcf0:
          uVar7 = -(uint)bVar17 | 1;
          goto LAB_004edcf5;
        }
        if (bVar1 == 0) break;
        bVar1 = *(byte *)((int)ppbVar8 + 1);
        bVar17 = bVar1 < ((byte *)pcVar13)[1];
        if (bVar1 != ((byte *)pcVar13)[1]) goto LAB_004edcf0;
        ppbVar8 = (byte **)((int)ppbVar8 + 2);
        pcVar13 = (char *)((byte *)pcVar13 + 2);
      } while (bVar1 != 0);
      uVar7 = 0;
LAB_004edcf5:
      if ((uVar7 != 0) || ((*(byte *)(ppbVar2 + 0xd) != 0 && (*(char *)(param_1 + 0x23) == '\0'))))
      goto LAB_004edd0e;
    }
    param_1[0x2d9] = 5;
  }
  fVar21 = (float)param_1[0xdb] * DAT_00baa354;
  param_1[0xdb] = (int)fVar21;
  fVar23 = DAT_00baa904;
  param_1[0xd9] = (int)(((float)param_1[0xce] - (float)param_1[0xd0]) / fVar21);
  param_1[0xd8] = (int)(((float)param_1[0xcd] - (float)param_1[0xcf]) / fVar21);
  iVar16 = (int)(((float)param_1[0xcd] - fVar23) / fVar23 + DAT_00baa2d0);
  iVar14 = (int)(((float)param_1[0xce] - DAT_00baaa00) / fVar23 + DAT_00baa2d0);
  if ((((-1 < iVar16) && (iVar16 < (int)local_104[3])) && (-1 < iVar14)) &&
     ((iVar14 < (int)local_104[4] &&
      (local_130 = (int *)((int)local_104[3] * iVar14 + iVar16), local_130 < (int *)0x1c0)))) {
    local_fc[0] = (int **)0x3e8;
    iVar14 = (int)local_104[(int)local_130 + 0x1db] % 1000;
    if (iVar14 < 900) {
      local_104[(int)local_130 + 0x1db] =
           (int *)((int)local_104[(int)local_130 + 0x1db] + (900 - iVar14));
    }
  }
  iVar14 = param_1[0x2fb];
  if (iVar14 != 0) {
    fVar23 = (float)param_1[0xcf] - *(float *)(iVar14 + 0x33c);
    fVar21 = (float)param_1[0xd0] - *(float *)(iVar14 + 0x340);
    if (fVar21 * fVar21 + fVar23 * fVar23 <=
        (float)param_1[0xdc] * (float)param_1[0xdc] * DAT_00baa75c) {
      fVar20 = (float)param_1[0xe7];
      bVar17 = NAN((float)DAT_00baa454);
      bVar4 = fVar20 == (float)DAT_00baa454;
      param_1[0xd6] = 0x41a00000;
      fVar22 = DAT_00baa3a4;
      local_fc[0] = *(int ***)(iVar14 + 0x364);
      fVar24 = DAT_00baa3a4;
      if ((NAN(fVar20) || bVar17) == bVar4) {
        fVar24 = DAT_00baa3a4 / ((fVar20 + DAT_00baa3a4) - fVar20 * DAT_00baa3a4);
      }
      fVar23 = fVar23 * DAT_00baa198;
      fVar21 = fVar21 * DAT_00baa198;
      *(float *)(iVar14 + 0x360) = fVar23 * fVar20 + *(float *)(iVar14 + 0x360) * fVar24;
      *(float *)(iVar14 + 0x364) = fVar21 * fVar20 + (float)local_fc[0] * fVar24;
      fVar20 = (float)param_1[0xe7];
      if ((NAN(fVar20) || NAN((float)DAT_00baa454)) == (fVar20 == (float)DAT_00baa454)) {
        fVar22 = fVar22 / ((fVar20 + fVar22) - fVar20 * fVar22);
      }
      param_1[0xd8] = (int)(fVar22 * (float)param_1[0xd8] - fVar20 * fVar23);
      param_1[0xd9] = (int)(fVar22 * (float)param_1[0xd9] - fVar20 * fVar21);
    }
    else {
      local_fc[0] = (int **)(param_1 + 0x2fb);
      FUN_004cf210(local_fc);
      param_1[0x2fb] = 0;
    }
  }
LAB_004efb25:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

