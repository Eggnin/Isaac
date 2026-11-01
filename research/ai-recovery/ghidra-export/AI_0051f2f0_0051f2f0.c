/* Local J460 decompiler output.
 * VA: 0x0051f2f0
 * Entry: 0051f2f0
 * Dispatcher: 0x006c2990
 * Types: 92
 * Identities: 92.0.0,92.1.0,92.1.1
 * Evidence: dispatcher=0x006c2990; end=0x00520c60; instructions=1382
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* J460 NPC AI; dispatcher=0x006c2990; types=92; identities=92.0.0,92.1.0,92.1.1;
   dispatcher=0x006c2990; end=0x00520c60; instructions=1382 */

void __fastcall AI_0051f2f0(float **param_1)

{
  code *pcVar1;
  float *pfVar2;
  char cVar3;
  uint uVar4;
  char *pcVar5;
  int iVar6;
  float *pfVar7;
  int *piVar8;
  undefined *puVar9;
  float **extraout_ECX;
  float **extraout_ECX_00;
  int iVar10;
  int iVar11;
  float **ppfVar12;
  bool bVar13;
  float fVar14;
  float fVar15;
  float **ppfVar16;
  undefined4 uVar17;
  undefined local_17c [40];
  undefined local_154 [8];
  float **local_14c;
  float local_148;
  float local_144;
  float local_140;
  char local_13c [4];
  int local_138 [2];
  float *local_130;
  float **local_12c;
  undefined4 local_128;
  float **local_124;
  float **local_120;
  float *local_11c;
  float **local_118;
  float **local_114;
  float **local_110;
  float local_10c;
  char local_105;
  float **local_104;
  float **local_100;
  float local_fc;
  float local_f8;
  float **local_f4;
  char local_ed;
  float *local_ec;
  float **local_e8;
  float **local_e4;
  float **local_e0;
  float **local_dc;
  float *local_d8;
  float **local_d4;
  undefined local_d0 [12];
  undefined4 local_c4;
  undefined4 local_bc;
  uint local_78;
  undefined4 local_74;
  uint local_24;
  undefined *puStack_20;
  void *local_1c;
  undefined *puStack_18;
  undefined4 local_14;
  
  puStack_20 = &stack0xfffffffc;
  local_14 = 0xffffffff;
  puStack_18 = &LAB_00af45b0;
  local_1c = ExceptionList;
  uVar4 = DAT_00bf93b4 ^ (uint)&stack0xfffffff0;
  ExceptionList = &local_1c;
  pfVar7 = param_1[0x2d9];
  local_14c = param_1;
  local_24 = uVar4;
  if (pfVar7 == (float *)0x0) {
    puStack_20 = &stack0xfffffffc;
    if (((param_1[10] == (float *)0x5c) &&
        (puStack_20 = &stack0xfffffffc, param_1[0xb] == (float *)0x1)) &&
       (puStack_20 = &stack0xfffffffc, param_1[0x2fb] == (float *)0x0)) {
      local_d4 = (float **)(1 - (int)param_1[0xc]);
      local_dc = DAT_00baaec8;
      local_d8 = pfVar7;
      puStack_20 = &stack0xfffffffc;
      FUN_006d0c60(local_13c,0x5c,1);
      local_14 = 0;
      local_ec = (float *)0x0;
      iVar6 = local_138[0];
      if (local_130 != (float *)0x0) {
        do {
          pfVar7 = *(float **)(iVar6 + (int)local_ec * 4);
          ppfVar16 = local_dc;
          pfVar2 = local_d8;
          if ((pfVar7 != (float *)0x0) &&
             (((((1 < *(int *)(DAT_00c71678 + 0x26614) && (pfVar7[10] == 1.401298e-45)) ||
                ((int)pfVar7[10] - 10U < 0x3de)) &&
               ((iVar6 = local_138[0], (float **)pfVar7[0xc] == local_d4 && (pfVar7[0xf0] == 0.0))))
              && (pfVar7[0x2fb] == 0.0)))) {
            fVar14 = ((float)param_1[0xd0] - pfVar7[0xd0]) * ((float)param_1[0xd0] - pfVar7[0xd0]) +
                     ((float)param_1[0xcf] - pfVar7[0xcf]) * ((float)param_1[0xcf] - pfVar7[0xcf]);
            FUN_00435a50(uVar4);
            ppfVar16 = (float **)(DAT_00baabc4 - fVar14);
            iVar6 = local_138[0];
            pfVar2 = pfVar7;
            if ((local_d8 != (float *)0x0) && ((float)ppfVar16 <= (float)local_dc)) {
              ppfVar16 = local_dc;
              pfVar2 = local_d8;
            }
          }
          local_d8 = pfVar2;
          local_dc = ppfVar16;
          pfVar7 = local_d8;
          local_ec = (float *)((int)local_ec + 1);
        } while (local_ec < local_130);
        if (local_d8 != (float *)0x0) {
          if (local_d8[0x2fb] != 0.0) {
            local_d4 = (float **)(local_d8 + 0x2fb);
            FUN_004cf210(&local_d4);
          }
          pfVar7[0x2fb] = (float)param_1;
          FUN_004cdcf0(pfVar7 + 0x2fb);
          if (param_1[0x2fb] != (float *)0x0) {
            local_d4 = param_1 + 0x2fb;
            FUN_004cf210(&local_d4);
          }
          param_1[0x2fb] = pfVar7;
          FUN_004cdcf0(param_1 + 0x2fb);
          if (pfVar7[0xf0] != 0.0) {
            local_d4 = (float **)(pfVar7 + 0xf0);
            FUN_004cf210(&local_d4);
          }
          pfVar7[0xf0] = (float)param_1;
          FUN_004cdcf0(pfVar7 + 0xf0);
          if (param_1[0xef] != (float *)0x0) {
            local_d4 = param_1 + 0xef;
            FUN_004cf210(&local_d4);
          }
          param_1[0xef] = pfVar7;
          FUN_004cdcf0(param_1 + 0xef);
          if ((param_1[0xf0] != (float *)0x0) && (cVar3 = FUN_006ac530(), cVar3 != '\0')) {
            local_f4 = (float **)(param_1[0xf0] + 0x2fb);
            if (*local_f4 != (float *)0x0) {
              local_d4 = local_f4;
              FUN_004cf210(&local_d4);
            }
            *local_f4 = pfVar7;
            FUN_004cdcf0(local_f4);
          }
        }
      }
      local_14 = 0xffffffff;
      if (local_13c[0] == '\0') {
        local_14 = 1;
        FUN_00a648b0(0,0);
      }
    }
    param_1[0x2d9] = (float *)&DAT_00000004;
    goto LAB_00520c3c;
  }
  if (pfVar7 == (float *)&DAT_00000004) {
    pcVar5 = "HeartBeat";
    if (param_1[10] == (float *)0x5c) {
      pcVar5 = "Heart";
    }
    puStack_20 = &stack0xfffffffc;
    FUN_0040a380(pcVar5,0);
    iVar6 = FUN_006be840();
    local_fc = *(float *)(iVar6 + 0x33c);
    local_f8 = *(float *)(iVar6 + 0x340);
    if ((param_1[10] == (float *)0x5c) && (param_1[0xb] == (float *)0x1)) {
      pfVar7 = param_1[0x2fb];
      local_11c = pfVar7;
      if ((pfVar7 == (float *)0x0) || (cVar3 = FUN_006ac530(), cVar3 == '\0')) {
        FUN_007e33c0(&local_fc,0x3f800000,900,1);
      }
      else {
        if (param_1[0x3c7] == (float *)0xffffffff) {
          if (pfVar7[0x3c7] == -NAN) {
            local_ed = FUN_00417430(0x100,0);
            local_110 = param_1 + 0xcf;
            local_e8 = (float **)
                       ((local_fc - (float)param_1[0xcf]) * (local_fc - (float)param_1[0xcf]) +
                       (local_f8 - (float)param_1[0xd0]) * (local_f8 - (float)param_1[0xd0]));
            FUN_00435a50();
            if (((int)param_1[0x2d4] < 1) ||
               (cVar3 = FUN_00a10630(&DAT_00c7b640), ppfVar16 = extraout_ECX, cVar3 == '\0')) {
              ppfVar16 = param_1 + 0xcf;
            }
            local_118 = (float **)*ppfVar16;
            local_114 = (float **)ppfVar16[1];
            local_f4 = local_114;
            local_d4 = local_118;
            if (((int)pfVar7[0x2d4] < 1) || (cVar3 = FUN_00a10630(&DAT_00c7b640), cVar3 == '\0')) {
              local_12c = (float **)pfVar7[0xcf];
              local_100 = (float **)pfVar7[0xd0];
            }
            else {
              local_12c = (float **)*extraout_ECX_00;
              local_100 = (float **)extraout_ECX_00[1];
            }
            pfVar7 = DAT_00baa87c;
            if ((float)param_1[0x2d6] <= (float)DAT_00baa87c) {
              pfVar7 = param_1[0x2d6];
            }
            local_128 = 0;
            param_1[0x2d6] = pfVar7;
            local_104 = local_12c;
            local_e4 = local_12c;
            local_e0 = local_100;
            local_dc = local_100;
            cVar3 = FUN_00417430(0x100,0);
            if ((cVar3 != '\0') || (param_1[0x3ce] != (float *)0x0)) {
              local_128 = 900;
            }
            cVar3 = FUN_006ac710(0xe,param_1[8]);
            if (cVar3 != '\0') {
              FUN_007f0df0(param_1 + 0xcf,&local_fc,1,local_128,0,0,0);
              if (local_ed == '\0') {
                bVar13 = DAT_00baaa68 < (float)local_e8;
                fVar14 = DAT_00baaa68;
              }
              else {
                bVar13 = (float)local_e8 < _DAT_00baab24;
                fVar14 = _DAT_00baab24;
              }
              if (bVar13 || (float)local_e8 == fVar14) {
                fVar14 = ((float)local_100 - (float)local_f4) * ((float)local_100 - (float)local_f4)
                         + ((float)local_104 - (float)local_d4) *
                           ((float)local_104 - (float)local_d4);
                FUN_00435a50();
                if ((DAT_00baa950 <= fVar14) &&
                   (((fVar14 <= DAT_00baaa78 || (uVar4 = FUN_006eef60(), (uVar4 & 3) != 0)) &&
                    (cVar3 = FUN_007f0df0(&local_118,&local_e4,3,999,0,0,0), cVar3 != '\0')))) {
                  fVar14 = DAT_00baa454;
                  if (param_1[0xc] == (float *)0x1) {
                    fVar14 = DAT_00baad50;
                  }
                  if (((float)param_1[0xcf] - local_11c[0xcf]) * fVar14 <= DAT_00baa75c) {
                    param_1[0x2d4] =
                         (float *)((int)param_1[0x2d4] +
                                  ((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]));
                    goto LAB_0051fa05;
                  }
                }
              }
              if ((int)param_1[0x2d4] < 1) {
                param_1[0x106] = (float *)DAT_00c7b640;
                param_1[0x107] = (float *)DAT_00c7b644;
              }
              param_1[0x2d4] = (float *)0x3;
            }
LAB_0051fa05:
            cVar3 = FUN_006ac710(0x1e,param_1[8]);
            if (cVar3 != '\0') {
              FUN_004cf350();
            }
            if ((int)param_1[0x2d4] < 1) {
              pfVar7 = (float *)((float)param_1[0x2d6] * DAT_00baa3e0);
              param_1[0x2d5] = (float *)0x0;
              param_1[0x2d6] = pfVar7;
              FUN_007e6300(1);
              param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa3e0);
              pfVar7 = local_11c;
            }
            else {
              cVar3 = FUN_00a10600(&DAT_00c7b640);
              if ((cVar3 != '\0') || ((float)DAT_00baa87c < (float)param_1[0x2d6])) {
                pfVar7 = param_1[0x2fb];
                local_f4 = (float **)pfVar7[0xd0];
                ppfVar16 = (float **)
                           (((float)local_f4 - (float)local_110[1]) *
                            ((float)local_f4 - (float)local_110[1]) +
                           (pfVar7[0xcf] - (float)*local_110) * (pfVar7[0xcf] - (float)*local_110));
                FUN_00435a50();
                local_d4 = ppfVar16;
                fVar15 = (local_f8 - (float)param_1[0xd0]) * (local_f8 - (float)param_1[0xd0]) +
                         (local_fc - (float)param_1[0xcf]) * (local_fc - (float)param_1[0xcf]);
                FUN_00435a50();
                fVar14 = DAT_00baa454;
                if (param_1[0xc] == (float *)0x1) {
                  fVar14 = DAT_00baad50;
                }
                local_10c = 0.0;
                ppfVar16 = (float **)((float)param_1[0xcf] - pfVar7[0xcf]);
                if (fVar14 * (float)ppfVar16 <= 0.0) {
                  if (((float)local_d4 <= fVar15) || (DAT_00baaae0 <= fVar15)) {
                    local_100 = (float **)((float)param_1[0xd0] - (float)local_f4);
                    local_104 = ppfVar16;
                  }
                  else {
                    local_100 = (float **)((float)param_1[0xd0] - local_f8);
                    local_104 = (float **)((float)param_1[0xcf] - local_fc);
                  }
                  pfVar7 = (float *)FUN_00a10030(&local_118);
                  local_d8 = (float *)*pfVar7;
                  local_10c = pfVar7[1];
                }
                else if (param_1[0xc] == (float *)0x1) {
                  local_d8 = (float *)DAT_00baa454;
                }
                else {
                  local_d8 = (float *)DAT_00baad50;
                }
                if ((float)((uint)((float)((uint)local_d8 & DAT_00bacb40) -
                                  (float)((uint)local_10c & DAT_00bacb40)) & DAT_00bacb40) <
                    DAT_00baa1d4) {
                  uVar4 = FUN_006eef60();
                  if ((uVar4 & 1) == 0) {
                    local_d8 = (float *)((float)local_d8 * DAT_00baa2d0);
                  }
                  else {
                    local_10c = local_10c * DAT_00baa2d0;
                  }
                }
                pfVar7 = param_1[0xdb];
                fVar14 = local_10c * DAT_00baa528;
                if (NAN((float)pfVar7) == ((float)pfVar7 == 0.0)) {
                  param_1[0xd8] =
                       (float *)(((float)local_d8 * DAT_00baa528 * (float)param_1[0xe7]) /
                                 (float)pfVar7 + (float)param_1[0xd8]);
                  param_1[0xd9] =
                       (float *)((fVar14 * (float)param_1[0xe7]) / (float)pfVar7 +
                                (float)param_1[0xd9]);
                }
                local_d8 = (float *)((float)local_d8 * DAT_00baa8d0 + (float)param_1[0xcf]);
                local_f4 = DAT_00baaec8;
                local_10c = local_10c * DAT_00baa8d0 + (float)param_1[0xd0];
                local_120 = DAT_00c7b640;
                local_124 = DAT_00c7b644;
                local_ec = (float *)0x0;
                if (0.0 < DAT_00baa7b8 - (float)param_1[0x2d6] * DAT_00baa1f8) {
                  do {
                    iVar6 = FUN_006eef60();
                    local_e8 = (float **)
                               ((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                                DAT_00ba9ff4 * DAT_00baab70 + DAT_00baa8d0);
                    iVar6 = FUN_006eef60();
                    fVar14 = (float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                             DAT_00ba9ff4 * DAT_00baa704;
                    local_d4 = (float **)(fVar14 + fVar14);
                    ppfVar16 = local_d4;
                    FUN_0041d540();
                    local_110 = (float **)((float)ppfVar16 * (float)local_e8 + (float)local_d8);
                    local_104 = local_110;
                    ppfVar16 = local_d4;
                    FUN_0041d520();
                    local_100 = (float **)
                                ((float)ppfVar16 * DAT_00baa2d0 * (float)local_e8 + local_10c);
                    iVar10 = (int)(((float)local_110 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0);
                    iVar6 = (int)(((float)local_100 - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0);
                    if ((((iVar10 < 0) ||
                         (iVar11 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc),
                         iVar11 <= iVar10)) || (iVar6 < 0)) ||
                       (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x10) <= iVar6)) {
                      ppfVar16 = (float **)0xffffffff;
                    }
                    else {
                      ppfVar16 = (float **)(iVar11 * iVar6 + iVar10);
                    }
                    local_e8 = ppfVar16;
                    FUN_004288a0(local_138,&local_e8);
                    if (((*(char *)((int)local_130 + 0xd) == '\0') &&
                        ((int)local_130[4] <= (int)ppfVar16)) && (local_130 != param_1[0x2d7])) {
                      local_ec = (float *)((float)local_ec - DAT_00baa354);
                    }
                    else {
                      FUN_004e45c0(local_154,&local_e8);
                      iVar6 = *(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0xc);
                      local_104 = (float **)
                                  ((float)((int)local_e8 % iVar6) * DAT_00baa904 + DAT_00baa904);
                      local_100 = (float **)
                                  ((float)((int)local_e8 / iVar6) * DAT_00baa904 + DAT_00baaa00);
                      iVar11 = (int)(((float)local_104 - DAT_00baa904) / DAT_00baa904 + DAT_00baa2d0
                                    );
                      iVar10 = (int)(((float)local_100 - DAT_00baaa00) / DAT_00baa904 + DAT_00baa2d0
                                    );
                      if (((iVar11 < 0) || (iVar6 <= iVar11)) ||
                         ((iVar10 < 0 ||
                          (*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 0x10) <= iVar10)))) {
                        iVar11 = -1;
                      }
                      else {
                        iVar11 = iVar6 * iVar10 + iVar11;
                      }
                      local_e8 = local_104;
                      local_d4 = local_100;
                      iVar6 = FUN_007f0800(iVar11);
                      if (iVar6 == 0) {
                        cVar3 = FUN_007f0df0(param_1 + 0xcf,&local_104,1,local_128,
                                             *(undefined *)(param_1 + 0x2d3),0,0);
                        if (cVar3 != '\0') {
                          fVar14 = DAT_00baa454;
                          if (param_1[0xc] == (float *)0x1) {
                            fVar14 = DAT_00baad50;
                          }
                          if (((float)local_e8 - (float)local_12c) * fVar14 <= DAT_00baa75c) {
                            local_105 = FUN_007f0df0(&local_fc,&local_104,3,999,0,0,0);
                            cVar3 = FUN_007f0df0(&local_e4,&local_104,3,999,0,0,0);
                            fVar14 = DAT_00baa454;
                            if (local_ed != '\0') {
                              fVar14 = DAT_00baad50;
                            }
                            if (cVar3 == '\0') {
                              local_140 = DAT_00baac78;
                            }
                            else {
                              local_140 = 0.0;
                            }
                            local_110 = (float **)0x0;
                            if ((local_ed == '\0') && (local_105 == '\0')) {
                              local_110 = DAT_00baac5c;
                            }
                            local_148 = (float)local_d4 - local_f8;
                            local_114 = (float **)((float)local_e8 - local_fc);
                            local_12c = local_e4;
                            local_dc = local_e0;
                            fVar15 = ((float)local_d4 - (float)local_e0) *
                                     ((float)local_d4 - (float)local_e0) +
                                     ((float)local_e8 - (float)local_e4) *
                                     ((float)local_e8 - (float)local_e4);
                            local_144 = (local_148 * local_148 + (float)local_114 * (float)local_114
                                        ) * fVar14 * DAT_00baa1d4;
                            FUN_00435a50();
                            fVar15 = fVar15 - DAT_00baaa68;
                            FUN_004e4690();
                            ppfVar16 = (float **)
                                       ((((local_144 - fVar15) -
                                         (((float)local_dc - local_f8) * local_148 +
                                         ((float)local_12c - local_fc) * (float)local_114)) -
                                        local_140) + (float)local_110);
                            if ((float)local_f4 < (float)ppfVar16) {
                              local_120 = local_e8;
                              local_124 = local_d4;
                              local_f4 = ppfVar16;
                            }
                          }
                        }
                        if (((NAN((float)local_120) || NAN((float)DAT_00c7b640)) ==
                             ((float)local_120 == (float)DAT_00c7b640)) ||
                           ((NAN((float)local_124) || NAN((float)DAT_00c7b644)) ==
                            ((float)local_124 == (float)DAT_00c7b644))) {
                          param_1[0x107] = (float *)local_124;
                          pfVar7 = DAT_00baa87c;
                          param_1[0x106] = (float *)local_120;
                          if ((float)param_1[0x2d6] < (float)pfVar7) {
                            param_1[0x2d6] = (float *)((float)param_1[0x2d6] * DAT_00baa2d0);
                          }
                        }
                      }
                    }
                    local_ec = (float *)((float)local_ec + DAT_00baa454);
                  } while ((float)local_ec < DAT_00baa7b8 - (float)param_1[0x2d6] * DAT_00baa1f8);
                }
              }
              ppfVar16 = param_1 + 0x106;
              cVar3 = FUN_00a10630(&DAT_00c7b640);
              pfVar7 = local_11c;
              if (cVar3 != '\0') {
                cVar3 = FUN_006ac710(10,param_1[8]);
                if (cVar3 != '\0') {
                  cVar3 = FUN_007f0df0(&local_fc,ppfVar16,1,local_128,
                                       *(undefined *)(param_1 + 0x2d3),0,0);
                  if ((cVar3 == '\0') ||
                     ((float)DAT_00baa87c < (float)param_1[0x2d6] ||
                      (float)DAT_00baa87c == (float)param_1[0x2d6])) {
                    pfVar7 = *ppfVar16;
                    fVar14 = local_f8 - (float)param_1[0x107];
                    if (((float)DAT_00baac5c <=
                         fVar14 * fVar14 + (local_fc - (float)pfVar7) * (local_fc - (float)pfVar7))
                       && (fVar14 = (float)local_dc - (float)param_1[0x107],
                          DAT_00baac08 <=
                          fVar14 * fVar14 +
                          ((float)local_12c - (float)pfVar7) * ((float)local_12c - (float)pfVar7)))
                    {
                      fVar14 = DAT_00baa454;
                      if (param_1[0xc] == (float *)0x1) {
                        fVar14 = DAT_00baad50;
                      }
                      if (((float)pfVar7 - (float)local_12c) * fVar14 <= DAT_00ba9fe4)
                      goto LAB_0052037e;
                    }
                  }
                  *ppfVar16 = (float *)DAT_00c7b640;
                  param_1[0x107] = (float *)DAT_00c7b644;
                }
LAB_0052037e:
                cVar3 = FUN_00a10630(&DAT_00c7b640);
                pfVar7 = local_11c;
                if (cVar3 != '\0') {
                  FUN_007e33c0(ppfVar16,0x3f8a1cac,0,1);
                  pfVar7 = local_11c;
                }
              }
            }
          }
          else {
            cVar3 = FUN_006d8260(0xb);
            if (cVar3 == '\0') {
              param_1[0x3c7] = (float *)pfVar7[0x3c7];
              FUN_007e4940(&local_fc,0);
              param_1[0x3c7] = (float *)0xffffffff;
            }
            else {
              param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa2d0);
            }
          }
        }
        else {
          FUN_007e4940(&local_fc,0);
        }
        iVar6 = FUN_006ac760();
        if (iVar6 != 0) {
          AI_0043ef30();
          local_e4 = (float **)(pfVar7[0xcf] - (float)param_1[0xcf]);
          local_e0 = (float **)(pfVar7[0xd0] - (float)param_1[0xd0]);
          local_78 = 0;
          local_74 = 0x200;
          local_bc = 0x3f19999a;
          local_c4 = 0xbdb851ec;
          FUN_00a10030(&local_104);
          local_e4 = (float **)((float)local_104 * DAT_00baa7b8);
          local_e0 = (float **)((float)local_100 * DAT_00baa7b8);
          FUN_006cb2e0(param_1 + 0xcf,&local_e4,0,local_d0);
        }
      }
    }
    else {
      FUN_007e4940(&local_fc,0);
    }
    param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa3a4);
    if (0 < (int)param_1[0x2e8]) {
      param_1[0x2e8] =
           (float *)(((int)(float)param_1[0xe8] - (int)(float)param_1[0xe9]) + (int)param_1[0x2e8]);
    }
    if ((((uint)param_1[0x5b] & 0x10000000) == 0) ||
       ((*(byte *)(*(int *)(*(int *)(DAT_00c71678 + 0x18300) + 4) + 0x44) & 1) == 0)) {
      if (param_1[0x3c7] == (float *)0xffffffff) {
        cVar3 = FUN_006ac710(3,0);
      }
      else {
        cVar3 = FUN_00956110(8,param_1[0x3c7],param_1,(uint)param_1[0x5b] & 0x10000000);
      }
      if ((cVar3 != '\0') && (((uint)param_1[0x5a] & 0x1000a00) == 0)) {
        if ((param_1[10] == (float *)0x5c) && (param_1[0xb] == (float *)0x1)) {
          if (param_1[0x2fb] == (float *)0x0) {
            if (0 < (int)param_1[0x2e8]) goto LAB_005205e8;
            param_1[0x2d9] = (float *)&DAT_00000008;
            param_1[0x104] = (float *)0x0;
            param_1[0x2e8] = (float *)0xa;
          }
        }
        else {
LAB_005205e8:
          if ((param_1[0x3c7] != (float *)0xffffffff) ||
             ((local_f8 - (float)param_1[0xd0]) * (local_f8 - (float)param_1[0xd0]) +
              (local_fc - (float)param_1[0xcf]) * (local_fc - (float)param_1[0xcf]) < DAT_00baac34))
          {
            param_1[0x2d9] = (float *)&DAT_00000008;
            param_1[0x104] = (float *)0x0;
          }
        }
      }
    }
  }
  else {
    param_1[0xdb] = (float *)((float)param_1[0xdb] * DAT_00baa354);
    FUN_0040a380("HeartAttack",0);
    if (param_1[0x3c7] != (float *)0xffffffff) {
      FUN_007e33c0(&DAT_00c7b640,0x3e4ccccd,0,1);
    }
    if (param_1[0x1f] == (float *)0x0) {
LAB_005209b3:
      param_1[0x2d9] = (float *)&DAT_00000004;
    }
    else {
      cVar3 = FUN_0040add0("Shoot");
      if (cVar3 != '\0') {
        if (param_1[10] == (float *)0x62) {
          FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
          if (param_1[0xc] == (float *)0x1) {
            AI_0043ef30();
            local_78 = local_78 | 1;
            local_e4 = (float **)0x0;
            local_e0 = (float **)0xc1a00000;
            piVar8 = (int *)FUN_006d7cf0(&local_e4,param_1 + 0x79,&DAT_00c7b640);
            (**(code **)(*piVar8 + 0x3c))(&DAT_00c34da4,0xffffffff,0xff,0,1);
            puVar9 = local_d0;
            local_e4 = (float **)0x41000000;
            uVar17 = 6;
          }
          else {
            local_e4 = (float **)0x0;
            local_e0 = (float **)0xc1a00000;
            FUN_006d7cf0(&local_e4,param_1 + 0x79,&DAT_00c7b640);
            puVar9 = (undefined *)AI_0043ef30();
            local_e4 = (float **)0x41400000;
            uVar17 = 8;
          }
          local_e0 = (float **)0x0;
          FUN_006cb2e0(param_1 + 0xcf,&local_e4,uVar17,puVar9);
          iVar6 = FUN_006eef60();
          FUN_006b64d0((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                       DAT_00ba9ff4 + DAT_00baa304);
          iVar6 = FUN_006eef60();
          iVar6 = FUN_006b64d0((float)((double)iVar6 + (double)(&DAT_00bacb00)[-(iVar6 >> 0x1f)]) *
                               DAT_00ba9ff4 * DAT_00baa2d0 + DAT_00baa304);
          iVar10 = FUN_006eef60();
          local_dc = (float **)
                     ((float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                     DAT_00ba9ff4);
          iVar10 = FUN_006eef60();
          local_dc = (float **)((float)local_dc * DAT_00baa708);
          fVar14 = (float)((double)iVar10 + (double)(&DAT_00bacb00)[-(iVar10 >> 0x1f)]) *
                   DAT_00ba9ff4 * DAT_00baa708;
          fVar14 = fVar14 + fVar14;
          FUN_0041d540();
          local_114 = (float **)(fVar14 * DAT_00baa81c + (float)param_1[0xcf]);
          fVar14 = (float)local_dc + (float)local_dc;
          FUN_0041d520();
          fVar14 = fVar14 * DAT_00baa81c + DAT_00baa834;
          pfVar7 = param_1[0xd0];
          *(float ***)(iVar6 + 0x33c) = local_114;
          *(float *)(iVar6 + 0x340) = fVar14 + (float)pfVar7;
        }
        else {
          local_e4 = (float **)0x0;
          local_e0 = (float **)0xc1a00000;
          FUN_006d7cf0(&local_e4,param_1 + 0x79,&DAT_00c7b640);
          FUN_006d6ba0(0xb2,0x3f800000,2,0,0x3f800000);
          uVar17 = AI_0043ef30();
          local_e4 = (float **)0x41400000;
          local_e0 = (float **)0x0;
          FUN_006cb2e0(param_1 + 0xcf,&local_e4,7 - (uint)(param_1[0xb] != (float *)0x1),uVar17);
        }
      }
      if ((param_1[0x1f] == (float *)0x0) || (*(char *)(param_1 + 0x23) == '\0')) goto LAB_005209b3;
    }
    param_1[0x104] = (float *)((int)param_1[0x104] + 1);
  }
  if (*(char *)((int)param_1 + 0x173) == '\0') goto LAB_00520c3c;
  if (param_1[0x3c7] != (float *)0xffffffff) {
    local_dc = (float **)param_1[0x2fb];
    if ((((local_dc == (float **)0x0) || (cVar3 = FUN_006ac530(), cVar3 == '\0')) ||
        (*(char *)((int)local_dc + 0x173) != '\0')) || (local_dc[0x3c7] != (float *)0xffffffff)) {
      ppfVar16 = (float **)param_1[0xf0];
      local_d4 = ppfVar16;
      if (((ppfVar16 != (float **)0x0) && (ppfVar16[10] == (float *)0x61)) &&
         ((*(char *)((int)ppfVar16 + 0x173) == '\0' &&
          ((ppfVar16[0x3c7] == (float *)0xffffffff && (ppfVar16 != param_1)))))) {
        local_f4 = (float **)0x0;
        iVar6 = *(int *)(DAT_00c71678 + 0x1bb78);
        if (*(int *)(DAT_00c71678 + 0x1bb7c) - iVar6 >> 2 != 0) {
          do {
            iVar6 = *(int *)(iVar6 + (int)local_f4 * 4);
            if (*(float **)(iVar6 + 0x1618) == param_1[0x3c7]) {
              ppfVar12 = (float **)(iVar6 + 0x3c4);
              if (*(float ***)(iVar6 + 0x3c4) == param_1) {
                if (*(float ***)(iVar6 + 0x3c4) != (float **)0x0) {
                  local_114 = ppfVar12;
                  FUN_004cf210(&local_114);
                  ppfVar16 = local_d4;
                }
                *ppfVar12 = (float *)ppfVar16;
                FUN_004cdcf0(ppfVar12);
                ppfVar16 = local_d4;
              }
            }
            local_f4 = (float **)((int)local_f4 + 1);
            iVar6 = *(int *)(DAT_00c71678 + 0x1bb78);
          } while (local_f4 < (float **)(*(int *)(DAT_00c71678 + 0x1bb7c) - iVar6 >> 2));
        }
        goto LAB_00520bbc;
      }
    }
    else if (local_dc != param_1) {
      local_d4 = (float **)0x0;
      iVar6 = *(int *)(DAT_00c71678 + 0x1bb78);
      ppfVar16 = local_dc;
      if (*(int *)(DAT_00c71678 + 0x1bb7c) - iVar6 >> 2 != 0) {
        do {
          iVar6 = *(int *)(iVar6 + (int)local_d4 * 4);
          if (*(float **)(iVar6 + 0x1618) == param_1[0x3c7]) {
            ppfVar12 = (float **)(iVar6 + 0x3c4);
            if (*(float ***)(iVar6 + 0x3c4) == param_1) {
              if (*(float ***)(iVar6 + 0x3c4) != (float **)0x0) {
                local_114 = ppfVar12;
                FUN_004cf210(&local_114);
                ppfVar16 = local_dc;
              }
              *ppfVar12 = (float *)ppfVar16;
              FUN_004cdcf0(ppfVar12);
              ppfVar16 = local_dc;
            }
          }
          local_d4 = (float **)((int)local_d4 + 1);
          iVar6 = *(int *)(DAT_00c71678 + 0x1bb78);
        } while (local_d4 < (float **)(*(int *)(DAT_00c71678 + 0x1bb7c) - iVar6 >> 2));
      }
LAB_00520bbc:
      ppfVar16[0x3c7] = param_1[0x3c7];
      param_1[0x3c7] = (float *)0xffffffff;
    }
  }
  if (((*(char *)((int)param_1 + 0x173) != '\0') && (param_1[0xd] == (float *)&DAT_0000001c)) &&
     (param_1[0xef] != (float *)0x0)) {
    FUN_006d6ba0(0x75,0x3f000000,2,0,0x3f800000);
    pcVar1 = *(code **)((int)*param_1[0xef] + 0x20);
    FUN_00431310(local_14c);
    (*pcVar1)(0x42200000,0,0,local_17c,0x1e);
  }
LAB_00520c3c:
  ExceptionList = local_1c;
  FUN_00aef12b();
  return;
}

